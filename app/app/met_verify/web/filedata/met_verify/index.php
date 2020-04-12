<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

$action = @$_GET['a'] ? @$_GET['a'] : 'doindex';
define('M_NAME', 'met_verify');
define('M_MODULE', 'web');
define('M_CLASS',  'index');
define('M_ACTION',  $action);
require_once '../app/app/entrance.php';

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
?>
