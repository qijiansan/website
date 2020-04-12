<?php
defined('IN_MET') or exit ('No permission');

load::sys_class('admin');
class install  {

	private $m_name = 'editorswith';
	private $ver = '2.0';
	private $no = 10067;

	public function __construct() {

	}
	public function dosql() {
		global $_M;
		$query = "SELECT m_name = 'editorswith' FROM {$_M['table']['applist']} WHERE no = '{$this->no}'";
		$stall = DB::get_one($query);
		if(!$stall){
            $query = "INSERT INTO {$_M['table']['applist']} SET no='{$this->no}',ver='{$this->ver}',m_name='{$this->m_name}',m_class='index',m_action='doindex',appname='markdown编辑器',info='用于切换到不同的编辑器'";
            DB::query($query);

            $query = "INSERT INTO {$_M['table']['applist']} SET no='1',ver='3.0',m_name='editormd',m_class='index',m_action='doindex',appname='markdown编辑器',info='editor',display='0'";
            DB::query($query);

            $query = "UPDATE {$_M['table']['applist']} SET info= 'editor' WHERE m_name='ueditor'";
            DB::query($query);

  	     	movefile(PATH_ALL_APP.'editorswith/sea.js',PATH_WEB.'app/system/include/public/js/sea.js', $overWrite =true);
		}else{
            $query = "UPDATE {$_M['table']['applist']} SET ver='{$this->ver}' WHERE no = '{$this->no}'";
            DB::query($query);
        }
	}
}
?>