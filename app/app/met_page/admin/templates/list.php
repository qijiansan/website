<?php
// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
?>
<form method="POST" action="javascript:;" enctype="multipart/form-data">
    <table class="dataTable table table-bordered table-hover table-striped w-100" id="met_page-list" data-datatable_order="#met_page-list" data-ajaxurl="{$_M['url']['own_name']}c=index&a=doPageList">
        <thead>
            <tr>
                <th data-table-columnclass="text-center">单页编号</th>
                <th data-table-columnclass="text-center">模板编号</th>
                <th>单页标题</th>
                <th>访问地址</th>
                <th data-table-columnclass="text-center">创建时间</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</form>