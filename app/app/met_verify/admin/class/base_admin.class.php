<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

load::sys_class('admin');

class base_admin extends admin
{
    public function __construct()
    {
        global $_M;
        parent::__construct();
        $this->appno = 10092;
        $this->sys_user = load::own_class('vuser','new');
        $this->verifyapi = load::own_class('verifyapi','new');
    }

}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
