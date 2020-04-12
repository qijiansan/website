<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.

defined('IN_MET') or exit('No permission');

class vuser
{
    public function __construct()
    {
        global $_M;
        $this->table = $_M['table']['verify_user'];
        $this->lang = $_M['lang'];
    }

    protected function table_para()
    {
        return 'id|uid|v_idcode|v_phone|v_realname|v_validate';
    }

    public function del_by_uid($uid = '')
    {
        $query = "DELETE FROM {$this->table} WHERE uid = '{$uid}'";
        return DB::query($query);
    }

    public function update_sql($list = array())
    {
        $sql = '';
        foreach ($list as $key => $val) {
            if ($key != 'id') {
                if ($this->is_para($key)) {
                    $sql .= " $key = '{$val}',";
                }
            }
        }
        $sql = trim($sql, ',');
        return $sql;
    }

    public function insert_sql($list = array())
    {
        global $_M;
        $save_data = array();
        foreach ($list as $key => $val) {
            if ($key != 'id') {
                if ($this->is_para($key)) {
                    $save_data[$key] = $val;
                }
            }
        }
        return $save_data;
    }

    public function is_para($key = '')
    {
        $para_str = $this->table_para();
        if (!$para_str) {
            return true;
        } else {
            if (strstr('|' . $para_str . '|', '|' . $key . '|') && $key != 'id') {
                return true;
            } else {
                return false;
            }
        }
    }

    public function json_list($where, $order)
    {
        global $_M;
        $t_user = $_M['table']['user'];
        $t_vuser = $this->table;

        $table = $t_user . ' Left JOIN ' . $t_vuser . " ON ({$t_user}.id = {$t_vuser}.uid)";
        $where = "{$t_user}.lang='{$_M['lang']}' {$where}";

        if ($this->met_admin['admin_issueok']) {
            $where = "({$where})  and (issue = '{$this->met_admin['admin_id']}')";
        }
        $order .= "{$t_user}.login_time DESC,{$t_user}.register_time DESC";

        $this->tabledata = load::sys_class('tabledata', 'new');
        $data = $this->tabledata->getdata($table, "{$t_user}.id,{$t_user}.username,{$t_vuser}.uid,{$t_vuser}.v_realname,{$t_vuser}.v_idcode,{$t_vuser}.v_phone,{$t_vuser}.v_validate", $where, $order);
        $data = $this->analysis_array($data);
        return $data;
    }

    public function json_return($data)
    {
        global $_M;
        $this->tabledata->rdata($data);
    }

    public function analysis_array($data)
    {
        foreach ($data as $key => $val) {
            $data[$key] = $this->analysis($val);
        }
        return $data;
    }

    public function analysis($data)
    {
        return $data;
    }

    public function getUserByUid($uid = '')
    {
        global $_M;
        $t_user = $_M['table']['user'];
        $t_vuser = $this->table;

        $table = $t_user . ' Left JOIN ' . $t_vuser . " ON ({$t_user}.id = {$t_vuser}.uid)";
        $query = "SELECT * FROM {$table} WHERE $t_user.id = '{$uid}'";
        return DB::get_one($query);
    }

    public function userAdd($list = '')
    {
        global $_M;
        $query = "SELECT * FROM {$this->table} WHERE uid = '{$list['uid']}' ";
        $one = DB::get_one($query);
        if (!$one) {
            self::userInsert($list);
        } else {
            self::userUpdate($list);
        }
    }

    public function userInsert($list = array())
    {
        global $_M;
        self::sysUserModify($list['uid'], $list['v_validate']);
        $save_data = self::insert_sql($list);
        return DB::insert($this->table, $save_data);

    }

    public function userUpdate($list = array())
    {
        global $_M;
        self::sysUserModify($list['uid'], $list['v_validate']);
        $sql = $this->update_sql($list);
        $query = "UPDATE {$this->table} SET $sql WHERE uid = '{$list['uid']}'";
        return DB::query($query);
    }

    public function userDel($uid = '')
    {
        self::del_by_uid($uid);
        self::sysUserModify($uid, 0);
    }

    public function sysUserModify($uid = '', $idvalid = 0)
    {
        global $_M;
        if (is_numeric($uid)) {
            $query = "UPDATE {$_M['table']['user']} SET idvalid = '{$idvalid}' WHERE id = '{$uid}'";
            DB::query($query);
        }
        return;
    }
}

# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
