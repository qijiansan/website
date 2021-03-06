<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

load::sys_class('web');

class message extends web
{
    public function __construct()
    {
        global $_M;
        parent::__construct();
    }

    public function doMessage()
    {
        global $_M;
        if ($_M['form']['action'] == 'add') {
            $this->check_field();
            $this->add($_M['form']);
        } else {
            $classnow = $this->input_class();
            $_M['config']['met_message_list'] = $this->input['list_length'];
            $data = load::sys_class('label', 'new')->get('column')->get_column_id($classnow);
            $this->check($data['access']);
            unset($data['id']);
            $this->add_array_input($data);
            load::sys_class('handle', 'new')->redirectUrl($this->input); //伪静态时动态链接跳转

            $this->seo($data['name'], $data['keywords'], $data['description']);
            $this->seo_title($data['ctitle']);
            $this->add_input('list', 1);
            $this->view('message_index', $this->input);

            #require_once $this->template('tem/message_index', $this->input);
        }
    }

    /**
     * 添加留言记录
     * @param $info
     */
    public function add($info)
    {
        global $_M;
        $class_now = $_M['form']['id'];
        $config_op = load::mod_class('config/config_op', 'new');
        $conlum_configs = $config_op->getColumnConfArry($class_now);

        $met_fd_ok = $conlum_configs['met_msg_ok'];
        if (!$met_fd_ok) {
            okinfo('javascript:history.back();', "{$_M['word']['MessageInfo5']}");
        }
        if ($_M['config']['met_memberlogin_code']) {
            if (!load::sys_class('pin', 'new')->check_pin($_M['form']['code'], $_M['form']['random'])) {
                okinfo(-1, $_M['word']['membercode']);
            }
        }

        if ($this->checkword() && $this->checktime()) {
            foreach ($_FILES as $key => $value) {
                if ($value['tmp_name']) {
                    $this->upfile = load::sys_class('upfile', 'new');
                    $ret = $this->upfile->upload($key);//上传文件
                    if ($ret['path'] != '') {
                        $info[$key] = $ret['path'];
                    } else {
                        okinfo('javascript:history.back();', "{$_M['word']['opfailed']} [{$ret['error']}]");
                    }
                }
            }
            $user = $this->get_login_user_info();
            $addtime = date('Y-m-d H:i:s', time());
            $paralist =  load::mod_class('parameter/parameter_database', 'new')->get_parameter(7);
            foreach ($paralist as $key => $value) {
                $list[$value['id']] = $value['name'];
                $imgname = $value['id'] . 'imgname';
                $info[$imgname] = $value['name'];
            }
            if ($insert_id = load::sys_class('label', 'new')->get('message')->insert_message($info, $user['username'], $addtime)) {
                $this->notice_by_emial($insert_id, $conlum_configs);

                $this->notice_by_sms($insert_id, $conlum_configs);
            }
            setcookie('submit', time());
            okinfo(HTTP_REFERER, $_M['word']['MessageInfo2']);
        }
    }

    /*字段关键词过滤*/
    public function checkword()
    {
        global $_M;
        $pname = "para" . $_M['config']['met_message_fd_class'];
        $pname = $_M['form'][$pname];
        $email = "para" . $_M['config']['met_message_fd_email'];
        $email = $_M['form'][$email];
        $tel = "para" . $_M['config']['met_message_fd_sms'];
        $tel = $_M['form'][$tel];
        $info = "para" . $_M['config']['met_message_fd_content'];
        $info = $_M['form'][$info];
        $pname = strip_tags($pname);
        $email = strip_tags($email);
        $tel = strip_tags($tel);
        $contact = '';
        $contact = strip_tags($contact);
        $keyword = DB::get_one("select * from {$_M['table']['config']} where lang ='{$_M['form']['lang']}' and  name= 'met_fd_word' and columnid = 0");
        $_M['config']['met_fd_word'] = $keyword['value'];
        $fdstr = $_M['config']['met_fd_word'];
        $fdarray = explode("|", $fdstr);
        $fdarrayno = count($fdarray);
        $fdok = false;
        $paralist = load::mod_class('parameter/parameter_database', 'new')->get_parameter(7);
        $cvok = false;
        $content = '';
        foreach ($paralist as $key => $val) {
            $para = "para" . $val['id'];
            $content = $content . "-" . $_M['form'][$para];
        }
        for ($i = 0; $i < $fdarrayno; $i++) {
            if (strstr($content, $fdarray[$i])) {
                $fdok = true;
                $fd_word = $fdarray[$i];
                break;
            }
        }
        $fd_word = "{$_M['word']['Feedback3']} [" . $fd_word . "] ";
        if ($fdok == true) {
            okinfo('javascript:history.back();', $fd_word);
        } else {
            return true;
        }
    }

    /*表单提交时间检测*/
    public function checktime($met_fd_time = '')
    {
        global $_M;
        $ip = IP;
        $addtime = time();
        $ipok = DB::get_one("select * from {$_M['table']['message']} where ip='$ip' order by addtime desc");
        if ($ipok) {
            $time1 = strtotime($ipok['addtime']);
        } else {
            $time1 = 0;
        }
        $time2 = time();
        $timeok = (float)($time2 - $time1);
        $timeok2 = (float)($time2 - $_COOKIE['submit']);
        if ($_M['form']['id']) {
            $classnow = $_M['form']['id'];
        } else {
            $message = DB::get_one("select * from {$_M['table']['column']} where module = 7 and lang ='{$_M['form']['lang']}'");
            $classnow = $message['id'];
        }
        $met_fd_time = load::mod_class('config/config_op', 'new')->getColumnConf($classnow, 'met_msg_time');
        if ($timeok <= $met_fd_time && $timeok2 <= $met_fd_time) {
            $fd_time = "{$_M['word']['Feedback1']}" . $met_fd_time . "{$_M['word']['Feedback2']}";
            okinfo('javascript:history.back();', $fd_time);
        } else {
            return true;
        }
    }

    /*获取表单提交的ip*/
    public function getip()
    {
        if ($_SERVER['HTTP_X_FORWARDED_FOR']) {
            $m_user_ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif ($_SERVER['HTTP_CLIENT_IP']) {
            $m_user_ip = $_SERVER['HTTP_CLIENT_IP'];
        } else {
            $m_user_ip = $_SERVER['REMOTE_ADDR'];
        }
        $m_user_ip = preg_match('/^([0-9]{1,3}\.){3}[0-9]{1,3}$/', $m_user_ip) ? $m_user_ip : 'Unknown';
        return $m_user_ip;
    }

    /*通过邮箱通知*/
    public function notice_by_emial($insert_id = '', $conlum_configs = array())
    {
        global $_M;
        $query = "select * from {$_M['table']['mlist']} where lang='{$_M['form']['lang']}' and module='7' and listid={$insert_id} order by id";
        $email_list = DB::get_all($query);

        $mail = load::sys_class('jmail', 'new');
        //管理员留言通知
        $addtime = date('Y-m-d H:i:s', time());
        $fromurl = $_M['form']['referer'] ? $_M['form']['referer'] : HTTP_REFERER;
        $body = '';
        $body = $body . "<b>{$_M['word']['AddTime']}</b>:" . $addtime . "<br>";
        $body = $body . "<b>{$_M['word']['SourcePage']}</b>:" . $fromurl . "<br>";
        foreach ($email_list as $val) {
            $para = load::mod_class('parameter/parameter_database', 'new')->get_parameter_by_id($val['paraid']);
            if ($para['type'] == 5) {
                $val['info'] = str_replace('../', $_M['url']['web_site'], $val['info']);
            }
            $body .= "<b>{$val['imgname']}</b>:{$val['info']}<br />";
        }
        $met_fd_type = explode('#@met@#', $conlum_configs['met_msg_type']);
        $met_fd_to = $conlum_configs['met_msg_to'];

        $pname = "para" . $conlum_configs['met_msg_name_field'];
        $msg_user_name = $_M['form'][$pname];
        $title = $msg_user_name . "{$_M['word']['message_mailtext_v6']}";

        if (in_array(1, $met_fd_type) && $met_fd_to) {
            $met_fd_to = explode('|', $met_fd_to);
            foreach ($met_fd_to as $email) {
                $mail->send_email($email, $title, $body);
            }
        }

        //用户邮件通知
        $met_fd_back = $conlum_configs['met_msg_back'];
        $met_fd_title = $conlum_configs['met_msg_title'];
        $met_fd_content = $conlum_configs['met_msg_content'];
        $email_field = "para" . $conlum_configs['met_msg_email_field'];
        $user_email = $_M['form'][$email_field];
        if ($met_fd_back == 1 && $user_email != "") {
            $mail->send_email($user_email, $met_fd_title, $met_fd_content);
        }
    }

    /*通过短信通知*/
    public function notice_by_sms($insert_id = '', $conlum_configs = array())
    {
        global $_M;

        //管理员短信通知
        $met_msg_admin_tel = $conlum_configs['met_msg_admin_tel'];
        $met_fd_type = explode('#@met@#', $conlum_configs['met_fd_type']);

        $pname = "para" . $conlum_configs['met_msg_name_field'];
        $msg_user_name = $_M['form'][$pname];
        if ($msg_user_name) {
            $title = $msg_user_name . " - {$_M['word']['MessageInfo1']}";
        } else {
            $title = $_M['word']['MessageInfo1'];
        }

        if (in_array(2, $met_fd_type) && $met_msg_admin_tel) {
            $str = str_replace("http://", "", $_M['config']['met_weburl']);
            $strdomain = explode("/", $str);
            $domain = $strdomain[0];
            #$message="您网站[{$domain}]收到了新的留言[{$job_list[position]}]，请尽快登录网站后台查看";
            $message = "{$_M['word']['reMessage1']}[{$domain}]{$_M['word']['messagePrompt']}[{$title}]{$_M['word']['reMessage2']}";
            $met_msg_admin_tel = explode('|', $met_msg_admin_tel);
            foreach ($met_msg_admin_tel as $tel) {
                load::sys_class('sms', 'new')->sendsms($tel, $message);
            }
        }

        //用户短信回复
        $met_msg_sms_back = $conlum_configs['met_msg_sms_back'];
        $met_msg_sms_content = $conlum_configs['met_msg_sms_content'];
        $met_msg_sms_field = 'para' . $conlum_configs['met_msg_sms_field'];
        $user_tel = $_M['form'][$met_msg_sms_field];
        if ($user_tel && $met_msg_sms_back && $met_msg_sms_content) {
            load::sys_class('sms', 'new')->sendsms($user_tel, $met_msg_sms_content);
        }
    }

    /*检测后台设置的字段*/
    public function check_field()
    {
        global $_M;
        $id = $_M['form']['id'];
        $config_op = load::mod_class('config/config_op', 'new');
        $messagecfg = $config_op->getColumnConfArry($id);
        $met_msg_name_field = $_M['form']['para' . $messagecfg['met_msg_name_field']];      //$met_msg_name_field  姓名
        $met_msg_content_field = $_M['form']['para' . $messagecfg['met_msg_content_field']];//$met_msg_content_field 留言内容
        $met_msg_email_field = $_M['form']['para' . $messagecfg['met_msg_email_field']];    //$met_msg_email_field  邮箱
        $met_msg_name_field = $_M['form']['para' . $messagecfg['met_msg_name_field']];      // $met_msg_name_field   电话

        $class123 = $class123 = load::sys_class('label', 'new')->get('column')->get_class123_no_reclass($id);
        $paralist = load::mod_class('parameter/parameter_database', 'new')->get_parameter('7', $class123['class1']['id'], $class123['class2']['id'], $class123['class3']['id']);
        foreach ($paralist as $key => $val) {
            $para[$val['id']] = $val;
        }

        $paraarr = array();
        $form = array_merge($_M['form'], $_FILES);
        foreach (array_keys($form) as $vale) {
            if (strstr($vale, 'para')) {
                if (strstr($vale, '_')) {
                    $arr = explode('_', $vale);
                    $paraarr[] = str_replace('para', '', $arr[0]);
                } else {
                    $paraarr[] = str_replace('para', '', $vale);
                }
            }
        }

        //必填属性验证
        foreach (array_keys($para) as $val) {
            if ($para[$val]['wr_ok'] == 1 && in_array($val, $paraarr)) {
                if ($para[$val]['type'] == 5) {
                    if ($_FILES['para' . $val]['name'] == '' || !$_FILES['para' . $val]['size']) {
                        $info = "【{$para[$val]['name']}】" . $_M['word']['noempty'];
                        okinfo('javascript:history.back();', $info);
                    }
                } else {
                    if ($_M['form']['para' . $val] == '') {
                        $info = "【{$para[$val]['name']}】" . $_M['word']['noempty'];
                        okinfo('javascript:history.back();', $info);
                    }
                }
            }
        }
    }
    
}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
