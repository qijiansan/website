<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit ('No permission');
load::sys_class('admin');

class install extends admin
{

    public $appno;
    public $appname;
    public $appver;
    public $m_name;
    public $m_class;
    public $m_action;
    public $target;
    public $mlangok;
    public $info;
    public $app_dir;

    public function __construct() {
        global $_M;
        parent::__construct();

        $this->appname = '单页部署';
        $this->appno = 10097;
        $this->appver = "1.0.0";
        $this->m_name = 'met_page';
        $this->m_class = 'index';
        $this->m_action = 'doindex';
        $this->target = 0;
        $this->mlangok = 0;
        $this->info = "管理用户名下的米拓单页，可将单页快速部署在当前网站上";
        $this->app_dir = PATH_WEB . "app/app/" . $this->m_name;
    }

    /**
     * 注册应用
     * @return [type]
     */
    public function dosql() {
        global $_M;
        $app = DB::get_one("SELECT * FROM {$_M['table']['applist']} WHERE no = '{$this->appno}'");

        if(!$app) {
            //插入应用列表
            $this->insertAppInfo();
        } else {
            if (version_compare($this->appver, $app['ver'], '>')) {
                $this->update();
            }
        }
        buffer::clearConfig();
    }

    /**
     * 插入应用信息
     */
    public function insertAppInfo()
    {
        global $_M;
        $query = "INSERT INTO  {$_M['table']['applist']} SET no = '{$this->appno}',ver = '{$this->appver}',m_name = '{$this->m_name}',m_class = '{$this->m_class}',m_action = '{$this->m_action}',appname = '{$this->appname}',target='{$this->target}',info  = '{$this->info}',mlangok = '{$this->mlangok}'";
        DB::query($query);
    }

    /**
     * 写入配置数据
     * @param $name
     * @param $value
     * @param string $lang
     * @param $appno
     */
    public function app_config_insert($name, $value, $lang = '')
    {
        global $_M;
        $query = "SELECT * FROM {$_M['table']['app_config']} WHERE name='{$name}' AND lang='{$lang}' AND appno='{$this->appno}'";
        $conf = DB::get_one($query);
        if (!$conf) {
            $query = "INSERT INTO {$_M['table']['app_config']} SET name='{$name}',value='{$value}',appno='{$this->appno}' ,lang='{$lang}'";
            DB::query($query);
        }
    }

    public function lang_insert($content = array() , $setlang ='')
    {
        global $_M;
        $i = 0;
        foreach ($content as $lang) {
            $set_lang = $setlang ? $setlang : $lang['lang'];
            $query = "SELECT * FROM {$_M['table']['language']} WHERE name='{$lang['name']}' AND site='{$lang['site']}' AND array='{$lang['array']}' AND lang='{$set_lang}' AND app='{$this->appno}'";
            $res = DB::get_one($query);
            if(!$res){
                $value = addslashes($lang['value']);
                $query = "INSERT INTO {$_M['table']['language']} SET name='{$lang['name']}',value='{$value}', site='{$lang['site']}',no_order = 0,array='{$lang['array']}',app='{$this->appno}',lang='{$set_lang}'";
                DB::query($query);
                $i++;
            }
        }
    }

    /*********************/
    public function update() {
        return;
    }
}