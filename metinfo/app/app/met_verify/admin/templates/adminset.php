<?php
// MetInfo Enterprise Content Management System
// Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$checkbox_time=time();
?>
<form method="POST" action="{$url.own_name}c=verify&a=doAdminSave" enctype="multipart/form-data" data-submit-ajax="1" class="met_fwcode-set">
    <div class="metadmin-fmbx">
        <h3 class="example-title">基本设置</h3>
        <dl>
            <dt>
                <label class='form-control-label'>实名验证Token</label>
            </dt>
            <dd class="form-group">
                <input type="text" name="realname_token" class="form-control" value="{$data.handle.realname_token}">
                <a href="https://u.mituo.cn/#/api/verify/admin" target="_blank" class="ml-3" style="line-height:35px;">查看</a>
            </dd>
        </dl>
        <dl>
            <dt>
                <label class='form-control-label'>可用条数</label>
            </dt>
            <dd class="form-group">
                <label class='form-control-label'>{$data.handle.total} 条</label>
            </dd>
        </dl>
        <dl>
            <dt>
                <label class='form-control-label'>实名验证开关</label>
            </dt>
            <dd class="form-group">
                <input type="checkbox" data-plugin="switchery" name="verify_open" value="{$data.handle.verify_open}" />
            </dd>
        </dl>
        <include file="pub/content_details/submit"/>
    </div>
</form>