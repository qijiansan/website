<?php
defined('IN_MET') or exit ('No permission');
load::sys_class('admin');
class install  {
    public function dosql() {
		global $_M;
        //安装数据库代码
		load::sys_func('file');
        deldir(PATH_WEB.'/admin/app/robots');
		DB::get_one("DELETE FROM {$_M['table']['applist']} where no='10007'");
		$query = "select * from {$_M['table']['applist']} where no='10007'";
		$stall = DB::get_one($query);
		if(!$stall){
			$time = time();
			$query="INSERT INTO {$_M['table']['applist']} set no='10007',ver='1.1',m_name='robots',m_class='robots',m_action='doindex',appname='robots在线修改器',info='网站通过robots协议告诉搜索引擎哪些页面可以抓取，哪些页面不能抓取。此工具用来在线修改robots。',updatetime='{$time}'";
			DB::query($query);
		
		}
		return 'complete';
    }
}
?>