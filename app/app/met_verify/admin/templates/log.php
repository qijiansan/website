<?php
// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
?>
<table class="dataTable table table-bordered table-hover table-striped w-100 mt-2" id="met_verify-logo-table" data-datatable_order="#met_verify-logo-table" data-ajaxurl="{$_M['url']['own_name']}c=verify&a=doLogs">
    <thead>
    <tr>
        <th>时间</th>
        <th>用户名</th>
        <th>姓名</th>
        <th data-table-columnclass="text-center">身份证号码</th>
        <th>电话</th>
        <th data-table-columnclass="text-center">查询结果</th>
        <th data-table-columnclass="text-center">详情</th>
    </tr>
    </thead>
    <tbody></tbody>
</table>