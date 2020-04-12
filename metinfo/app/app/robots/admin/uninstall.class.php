<?php
defined('IN_MET') or exit ('No permission');
load::sys_class('admin');
class uninstall extends admin {
    public function dodel() {
        //删除代码
		global $_M;
		    //删除代码
	$delApp = "DELETE FROM {$_M['table']['applist']} WHERE no = '10007'";		
	$delApp1 = "DELETE FROM {$_M['table']['app']} WHERE no = '10007'";
    DB::query($delApp);
	DB::query($delApp1);
	load::sys_func('file');
    deldir(PATH_WEB.'/app/app/robots');
      turnover("{$_M['url']['own_form']}a=doindex","卸载成功");//提示信息	
    }
}
?>