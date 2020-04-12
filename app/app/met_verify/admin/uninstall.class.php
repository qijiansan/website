<?php
# MetInfo Enterprise Content Management System 
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved. 
defined('IN_MET') or exit('No permission');
load::sys_func('file');
class uninstall extends admin{
    public function __construct()
    {
        global $_M;
    }

    /**
     * 卸载应用
     */
    public function dodel() {
        global $_M;
        $no = 10092;
        $query = "DELETE FROM {$_M['table']['app_plugin']} WHERE no='{$no}'";
        DB::query($query);
        $query = "DELETE FROM {$_M['table']['applist']} WHERE no='{$no}'";
        DB::query($query);
        $query = "DELETE FROM {$_M['table']['language']} WHERE app='{$no}'";
        DB::query($query);
        $query = "DELETE FROM {$_M['table']['ifmember_left']} WHERE no='{$no}'";
        DB::query($query);
        $query = "DELETE FROM {$_M['table']['column']} WHERE module='{$no}'";
        DB::query($query);
        /*
         *删除表
         */
        $query = "DROP TABLE {$_M['table']['verify_user']}";
        DB::query($query);

        /*
		 *删除、注销表名
		 */
        del_table('verify_user');

        //删除应用配置文件
        $this->app_config_del($no);

        deldir(PATH_WEB.'met_verify');
        deldir(PATH_WEB.'app/app/met_verify');
    }

    public function app_config_del($no){
        global $_M;
        $query = "DELETE FROM {$_M['table']['app_config']} WHERE appno='{$no}'";
        DB::query($query);
    }
}
?>