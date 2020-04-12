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

        $this->appname = '实名认证';
        $this->appno = 10092;
        $this->appver = "1.0.0";
        $this->m_name = 'met_verify';
        $this->m_class = 'verify';
        $this->m_action = 'doindex';
        $this->target = 0;
        $this->mlangok = 1;
        $this->info = "实名认证";
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
            //创建数据表
            $this->createTable();
            //添加配置数据
            $this->setconfig();
            //添加插件信息
            $this->setplugin();
            //添加栏目
            $this->addColumn();
            //添加语言
            $this->setWebLang();
            //用户中心导航栏
            $this->setLeftNav();
            //入口文件
            $this->addfile();

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

    public function createTable()
    {
        global $_M;
        $query = "CREATE TABLE `{$_M['config']['tablepre']}verify_user` (
                  `id` int(11) NOT NULL AUTO_INCREMENT,
                  `uid` int(11) NOT NULL,
                  `v_idcode` varchar(255) DEFAULT NULL,
                  `v_phone` varchar(255) DEFAULT NULL,
                  `v_realname` varchar(225) DEFAULT NULL,
                  `v_validate` int(2) DEFAULT NULL,
                  PRIMARY KEY (`id`)
                ) ENGINE=MyISAM DEFAULT CHARSET=utf8";
        DB::query($query);
        add_table('verify_user');
    }

    public function setconfig()
    {
        global $_M;
        foreach ($_M['langlist']['web'] as $key => $val) {
            self::app_config_insert('realname_token', '', $val['mark']);   //接口密钥
            self::app_config_insert('verify_open', '', $val['mark']);    //实名认证开关
        }
    }

    public function setplugin()
    {
        return;
    }

    public function addColumn()
    {
        return;
    }

    /**
     * 添加前台语言
     */
    public function setWebLang()
    {
        global $_M;
        foreach ($_M['langlist']['web'] as $lang) {
            $query = "DELETE FROM {$_M['table']['language']} WHERE app = '{$this->appno}' AND site = '0' AND lang = '{$lang['mark']}'";
            DB::query($query);
            if ($lang['mark'] == 'cn'/* || $lang['mark'] == 'en'*/) {
                $path = PATH_ALL_APP . "{$this->m_name}/admin/sql/lang_web_{$this->appno}_{$lang['mark']}.json";
                $content = json_decode(file_get_contents($path),true);
                $this->lang_insert($content, $lang['mark']);
            }else{
                //其他语种
                $path = PATH_ALL_APP . "{$this->m_name}/admin/sql/lang_web_{$this->appno}_cn.json";
                $content = json_decode(file_get_contents($path),true);
                $this->lang_insert($content, $lang['mark']);
            }
        }
        return;
    }


    /**
     * 会员中心侧导航
     * @param string $lang
     */
    public function setLeftNav()
    {
        global $_M;
        foreach ($_M['langlist']['web'] as $key => $val) {
            $lang = $val['mark'];
            $query = "SELECT * FROM {$_M['table']['ifmember_left']} WHERE no='{$this->appno}' AND foldername='met_verify' AND title='real_name_verify' AND  filename='index.php' AND lang='{$lang}'";
            $result = DB::get_one($query);
            if (!$result) {
                $query = "INSERT INTO {$_M['table']['ifmember_left']} SET no='{$this->appno}',columnid='0',title='app_real_name_verify',foldername='met_verify',filename='index.php',target='0',own_order = '1',effect = 1,lang='{$lang}'";
                DB::query($query);
            }
        }

    }

    protected function addfile()
    {
        global $_M;
        //应用前台入口文件
        $oldDir = $this->app_dir . '/web/filedata/met_verify';
        $targetDir = '../' . $this->m_name;
        copydir($oldDir, $targetDir);
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