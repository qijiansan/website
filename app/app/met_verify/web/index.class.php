<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');
/** 前台首页 */
load::sys_class('web');

class index extends web
{

    public function __construct()
    {
        global $_M;
        parent::__construct();
        $this->user_info = $this->check();
        self::insert_m();
    }

    public function insert_m()
    {
        global $_M;
        $_M['url']['met_verify'] = $_M['url']['site'] . 'met_verify';
    }


    public function doindex()
    {
        global $_M;
        $data = array();
        if ($_M['config']['verify_open'] == 1 && $_M['config']['realname_token']) {
            $vuser = load::own_class('vuser','new');
            $vuser_data = $vuser->getUserByUid($this->user_info['id']);
            if ($vuser_data['v_validate'] == 1) {
                $_M['profile_safety']['idvalitxt'] = $_M['word']['authen'];
                $_M['profile_safety']['idvalibut'] = $_M['word']['memberDetail'];
                $_M['profile_safety']['idvaliclass'] = 'idvalview';
                $_M['profile_safety']['idvaliclass1'] = 'success';
                $data['user_info'] = $vuser_data;
            } else{
                $_M['profile_safety']['idvalitxt'] = $_M['word']['notauthen'];
                $_M['profile_safety']['idvalibut'] = $_M['word']['binding'];
                $_M['profile_safety']['idvaliclass'] = 'idvaliadd';
                $_M['profile_safety']['idvaliclass1'] = 'warning';
                $data['submit_url'] = $_M['url']['met_verify']."/index.php?a=doVerify&lang={$_M['lang']}";
            }
            $data['verify_enabled'] = 1;

        }
        $_M['config']['app_no']=10092;
        $_M['config']['own_order']=1;
        $this->input['data']=$data;
        $this->view('app/index',$this->input);
    }

    public function doVerify()
    {
        global $_M;
        if(!load::sys_class('pin', 'new')->check_pin($_M['form']['code'], $_M['form']['random']) ){
            okinfo($_M['url']['web_site'].'met_verify', $_M['word']['membercode']);
            die();
        }

        //体检信息验证
        if (!preg_match("/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/", $_M['form']['phone'])) {
            $redata['status'] = 0;
            $redata['msg'] = $_M['word']['app_real_id_failed'];
        } //手机号码不合法
        if (!preg_match("/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/", $_M['form']['idcode'])) {
            $redata['status'] = 0;
            $redata['msg'] = $_M['word']['app_real_phone_failed'];
        } //身份证号码不合法

        $user_info = array();
        $user_info['realname'] = $_M['form']['realname'];
        $user_info['idcode'] = $_M['form']['idcode'];
        $user_info['phone'] = $_M['form']['phone'];
        $user_info['userid'] = $this->user_info['id'];

        //线上验证
        $verifyapi = load::own_class('verifyapi','new');
        $res = $verifyapi->verify($user_info);
        if ($res) {
            self::vuserModify($user_info);
            $redata['status'] = 1;
            $redata['msg'] = $_M['word']['app_real_verify_success'];
        }else{
            $redata['status'] = 0;
            $redata['msg'] = $_M['word']['app_real_name_verify_failed'];
        }
        okinfo($_M['url']['met_verify'], $redata['msg']);
        #$this->ajaxReturn($redata);
    }

    public function vuserModify($user_data = array())
    {
        $vuser = load::own_class('vuser','new');
        $data = array();
        if ($this->user_info) {
            $data['uid'] = $this->user_info['id'];
            $data['v_realname'] = mb_substr($user_data['realname'],0,1).'**';
            $data['v_idcode'] = substr($user_data['idcode'],0,3).'****'.substr($user_data['idcode'],-3);
            $data['v_phone'] = substr($user_data['phone'],0,3).'****'.substr($user_data['phone'],-3);
            $data['v_validate'] = 1;
            $vuser->userAdd($data);
        }
        return;
    }

    public function check()
    {
        global $_M;
        $user = $this->get_login_user_info();
        if (!$user) {
            okinfo($_M['url']['site'] . 'member/login.php?');
            return false;
        }
        return $user;
    }

}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
