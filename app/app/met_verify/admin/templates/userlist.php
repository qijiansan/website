<?php
// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
?>
<div class="clearfix">
    <div class="input-group w-a float-left">
        <input type="search" name="search" placeholder="输入要查找的用户名" class="form-control"
               data-table-search="#met_verify-user-table">
        <div class="input-group-append">
            <div class="input-group-text btn"> <i class="input-search-icon wb-search"></i>
            </div>
        </div>
    </div>
</div>
<form method="POST" action="javascript:;" enctype="multipart/form-data">
    <table class="dataTable table table-bordered table-hover table-striped w-100 mt-2" id="met_verify-user-table" data-datatable_order="#met_verify-user-table" data-ajaxurl="{$_M['url']['own_name']}c=verify&a=doGetUserlist">
        <thead>
            <tr>
                <th>用户名</th>
                <th>姓名</th>
                <th data-table-columnclass="text-center">身份证号码</th>
                <th>电话</th>
                <th data-table-columnclass="text-center">状态</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</form>