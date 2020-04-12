<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

load::own_class('admin/class/base_admin');

class index extends base_admin
{
    public function __construct()
    {
        global $_M;
        parent::__construct();
    }

    /**
     * @return array
     */
    public function doPageList()
    {
        global $_M;
        $start = $_M['form']['start'];
        $length = $_M['form']['length'];
        $draw = $_M['form']['draw'];
        $secret_key = $_M['config']['met_secret_key'];

        $page_class = load::own_class('page','new');
        $list = $page_class->getPagelist($secret_key, $start, $length, $draw);

        $new_data = array();
        $website = strtolower($_M['url']['web_site']);
        foreach ($list['data'] as $key => $page) {
            $jump_url = strtolower($page['jump_url']);
            if ($page['jump_url'] && strstr($jump_url, $website)) {
                $page['page_dir'] = str_replace($website, '', $jump_url);
            }else{
                $page['page_dir'] = '';
            }
            $new_data[$key] = $page;
        }
        $list['data'] = $new_data;

        jsoncallback($list);
    }

    /**
     * 部署单页
     */
    public function dosetPage()
    {
        global $_M;
        $page_id = $_M['form']['page_id'];      //单页id
        $page_code = $_M['form']['page_code'];  //单页编号
        $page_dir = $_M['form']['page_dir'];    //本地安装目录
        $secret_key = $_M['config']['met_secret_key'];
        $url = strtolower($_M['url']['web_site'] . $page_dir);

        #$match = preg_match('/^(https|http):\/\/[a-z0-9_\-\.]+\/+[a-z0-9_\-\/]*[\w\/]$/i', $url,$match1);
        if (!$page_id || !$page_dir || !$page_code) {
            $this->error('数据错误');
        }

        if (!is_simplestr($page_dir)) {
            $this->error('目录名称只能为大小写字母和数字');
        }

        if (!self::checkDir($page_dir)) {
            $this->error('因站点已经存在该目录名称，此目录不可用');
        }

        $page_class = load::own_class('page', 'new');
        $f_path = $page_class->downloadPage($secret_key, $page_id, $url);   //单页zip文件

        $zip = new ZipArchive();
        if ($zip->open($f_path) === true) {
            $zip->extractTo(PATH_CACHE);
            $zip->close();

            if (is_dir(PATH_CACHE.$page_code)) {
                movedir(PATH_CACHE . $page_code, PATH_WEB . $page_dir);
                $index_path = PATH_WEB . "{$page_dir}/index.html";
                if (file_exists($index_path)) {
                    rename($index_path, PATH_WEB . "{$page_dir}/index.htm");
                    $page_info = array(
                        'page_id' => $page_id,
                        'page_code' => $page_code,
                        'page_dir' => $page_dir,
                        'page_url' => $page_code,
                    );
                    file_put_contents(PATH_WEB . "{$page_dir}/page.lock", json_encode($page_info, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));

                    $this->success('', '单页安装成功');
                }
            }
            $this->error('单页解压失败');
        } else {
            $this->error('单页解压失败');
        }
    }

    /**
     * @param string $dir
     * @return bool
     */
    protected function checkDir($dir = '')
    {
        global $_M;
        if (!is_dir(PATH_WEB . $dir)) {
            return true;
        }else{
            if (file_exists(PATH_WEB . "{$dir}/page.lock")) {
                return true;
            }
        }
        return false;
    }

}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
