<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.


defined('IN_MET') or exit('No permission');

class verifyapi
{
    public function __construct()
    {
        global $_M;
        $this->api = 'https://u.mituo.cn/api/realname';
    }

    /**
     * 发起实名认证
     *
     * @param array $user_info
     * @return bool
     */
    public function verify($user_info = array())
    {
        global $_M;
        $data = array(
            'user_key' => $_M['config']['met_secret_key'],
            'domain' => $_M['config']['met_weburl'],
            'realname_token' => $_M['config']['realname_token'],
            'type' => 'verify',
            'realname' => $user_info['realname'],
            'idcode' =>$user_info['idcode'],
            'phone' => $user_info['phone'],
            'userid' => $user_info['userid'],
        );

        $result = $this->curl($this->api, $data);
        
        if ($result['status'] == 200 && $result['data']['is_verify'] == 1) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 站点余额信息
     *
     * @return void
     */
    public function getInfo()
    {
        global $_M;
        $data = array(
            'user_key' => $_M['config']['met_secret_key'],
            'domain' => $_M['config']['met_weburl'],
            'realname_token' => $_M['config']['realname_token'],
            'type' => 'info',
        );
        $redata =  $this->curl($this->api, $data);
        return $redata;
    }

    /**
     * 实名认证记录
     *
     * @param $start
     * @param $length
     * @return bool|mixed
     */
    public function getLogs($start = 1, $length = 20)
    {
        global $_M;
        $data = array(
            'user_key' => $_M['config']['met_secret_key'],
            'domain' => $_M['config']['met_weburl'],
            'realname_token' => $_M['config']['realname_token'],
            'type' => 'logs',
            'start' => $start,
            'length' => $length
        );
        $redata =  $this->curl($this->api, $data);
        return $redata;
    }

    /**
     * @param $url
     * @param $data
     * @return bool|mixed
     */
    public function curl($url, $data)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_TIMEOUT, 8);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        $result = curl_exec($ch);
        curl_close($ch);
        
        if ($result) {
            return json_decode($result, true);
        } else {
            return false;
        }
        
    }
}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.