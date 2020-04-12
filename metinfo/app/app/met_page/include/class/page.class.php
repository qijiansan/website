<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

class page
{

    public function __construct()
    {
        $this->api = "https://page.mituo.cn/api/pageapp";
        $this->error = array();
    }

    public function getPagelist($user_key = '',$start = 0, $length = 8, $draw = '')
    {
        $url = $this->api . "/getPageList";
        $data = array(
            'user_key' => $user_key,
            'start' => $start,
            'length' => $length,
            'draw' => $draw,
        );
        $res = curl($url, $data);
        $res = json_decode($res, true);
        if ($res['status'] == 200) {
            return $res['data'];
        }
        return false;
    }

    public function downloadPage($user_key = '', $page_id = '', $page_url = '')
    {
        $url = $this->api . "/getPageFile";
        $data = array(
            'user_key' => $user_key,
            'page_id' => $page_id,
            'page_url' => $page_url,
        );
        $res = curl($url, $data,60);

        $fname = PATH_WEB."cache/page_" . md5($url).".zip";

        file_put_contents($fname, $res);

        if (file_exists($fname)) {
            return $fname;
        }else{
            return false;
        }
    }


}