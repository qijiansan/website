<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

load::sys_class('admin');

class temtool extends admin {
	public function __construct() {
		global $_M;
		parent::__construct();
		nav::set_nav(1, '模板管理', $_M['url']['own_form'].'&a=dotemlist');
		nav::set_nav(2, '模板制作教程', 'https://help.metinfo.cn/mb/','target');
	}

	public function dotemlist() {
		global $_M;
		nav::select_nav(1);
		require $this->template('own/temlist');
	}
	public function dotable_temlist_json() {
		global $_M;
		$table = load::sys_class('tabledata', 'new'); //加载表格数据获取类
		$where = "";
		$order = ""; //排序方式
		$array = $table->getdata($_M['table']['skin_table'], '*', $where, $order);
		foreach($array as $key => $val) {
			if(!strstr($val['skin_file'], 'm1156ui') && !strstr($val['skin_file'], 'mui') && !strstr($val['skin_file'], 'uitest')){
				$val['use']=$_M['config']['met_skin_user']==$val['skin_file']?'已启用':"未启用 <a href=\"{$_M['url']['adminurl']}n=met_template&c=index&a=doenable&skin_name={$val['skin_file']}\" data-ajax='1' data-confirm=\"您确定要启用该模板吗？\">启用</a>";
				$list = array();
				$list[] = "<img src='{$_M[url][site]}templates/{$val['skin_file']}/view.jpg' width='150' style='padding:5px; background:#fff; border:1px solid #ddd;' />";
				$list[] = $val['skin_file'];
				$list[] = "
							<a href=\"{$_M['url']['own_name']}c=temset&a=doset&no={$val[skin_file]}\">自定义标签</a>
							<span class=\"line\">|</span>
							<a href=\"{$_M['url']['own_name']}c=temtool&a=dode&id={$val[id]}&no={$val[skin_file]}\" data-confirm=\"您确定要删除该信息吗？删除之后无法再恢复。\">删除</a>
							<span class=\"line\">|</span>
							{$val['use']}
				";
				$rarray[] = $list;
			}
		}
		$table->rarray['draw']=0;
		$table->rdata($rarray);
	}

	public function dotemin() {
		global $_M;
		require $this->template('own/temin');
	}

	public function doin(){
		global $_M;
		if($_M['form']['temname']&&$_M['form']['temname']!=''){
			if(strstr($val['skin_file'], 'mui') || strstr($val['skin_file'], 'uitest')){
				turnover("{$_M[url][own_name]}c=temtool&a=dotemlist",'模板名称不能以mui或uitest开头');
				die();
			}
			$query = "INSERT INTO {$_M['table']['skin_table']} SET skin_name='{$_M['form']['temname']}',skin_file='{$_M['form']['temname']}',skin_info='',devices='0'";
			DB::query($query);
		}else{
			turnover("{$_M[url][own_name]}c=temtool&a=dotemlist",'操作失败！请填写模板文件夹名称！');
			die();
		}

		$template_json = PATH_WEB."templates/{$_M['form']['temname']}/install/template.json";
		if(file_exists($template_json)){

			// 标签模板6.0导入
			$configs = json_decode(file_get_contents($template_json),true);
			$query = "DELETE FROM {$_M['table']['templates']} WHERE no = '{$_M['form']['temname']}'";
			DB::query($query);
				foreach ($configs as $k => $v) {
					$cid = $v['id'];
					$sub = $v['sub'];
					$v['lang'] = $_M['lang'];
					unset($v['id'],$v['sub']);
					$v['no'] = $_M['form']['temname'];
					$area_sql  = $this->get_sql($v);
					$query = "INSERT INTO {$_M['table']['templates']} SET {$area_sql}";
					DB::query($query);
					$area_id = DB::insert_id();
					foreach ($sub as $m => $s) {
						unset($s['id']);
						$s['lang'] = $_M['lang'];
						$s['bigclass'] = $area_id;
						$s['no'] = $_M['form']['temname'];
						$sub_sql = $this->get_sql($s);
						$sub_query = "INSERT INTO {$_M['table']['templates']} SET {$sub_sql}";
						DB::query($sub_query);
					}
			}
		}elseif(file_exists(PATH_WEB."templates/{$_M['form']['temname']}/install/install.class.php")){
			copy(PATH_WEB."templates/{$_M['form']['temname']}/install/install.class.php", PATH_OWN_FILE.'tmp/install.class.php');
			$ini = load::own_class('admin/tmp/install', 'new');
			$file = $_M['form']['temname'];
			$re = $ini->dosql();
			$query = "DELETE FROM {$_M['table']['templates']} WHERE no='{$file}'";
			DB::query($query);
			foreach ($_M['langlist']['web'] as $key=>$val) {
				foreach ($re['sql'] as $ksql=>$vsql) {
					$query = "INSERT INTO {$_M['table']['templates']} SET no='{$file}',lang='{$key}',{$vsql}";
					DB::query($query);
				}
			}
		}else if(file_exists(PATH_WEB."templates/{$_M['form']['temname']}/lang/language_cn.ini")){
			$ini = load::own_class('admin/class/inc', 'new');
			$ini->ini($_M['form']['temname']);
		}
		turnover("{$_M[url][own_name]}c=temtool&a=dotemlist");
	}
	public function dode(){
		global $_M;

		$query = "DELETE FROM {$_M['table']['skin_table']} WHERE id='{$_M['form']['id']}'";
		DB::query($query);
		$query = "DELETE FROM {$_M['table']['templates']} WHERE no='{$_M['form']['no']}'";
		DB::query($query);
		turnover("{$_M[url][own_name]}c=temtool&a=dotemlist");
	}

	public function get_sql($data) {
        global $_M;

        $sql = "";
        foreach ($data as $key => $value) {
            $sql .= " {$key} = '{$value}',";
        }
        return trim($sql,',');
    }
}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
?>