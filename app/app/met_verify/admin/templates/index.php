<?php
// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$head_tab_ajax = 1;
$head_tab = array(
    array('title' => '应用配置', 'url' => 'app/met_verify/adminset/?c=verify&a=doAdminSet'),
    array('title' => '用户列表', 'url' => 'app/met_verify/userlist'),
    array('title' => '查询记录', 'url' => 'app/met_verify/log')
);
?>
<include file="pub/head_tab"/>