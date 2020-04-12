<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$data['page_title'] = $_M['word']['app_real_name_verify'];
$data['module']=1;
?>
<include file="sys_web/head"/>
<div class="page bg-pagebg1">
    <div class="container">
        <div class="page-content row">
            <include file='user_sidebar'/>
            <div class="col-lg-9">
                <div class="panel panel-default m-b-0" boxmh-mh>
                    <div class='panel-body met-member-safety met-member-profile'>
                        <!--实名认证-->
                        <if value="$data['data']['verify_enabled'] eq 1">
                            <div class="media">
                                <div class="media-left media-middle"><i class="fa fa-user font-size-30 text-muted"></i></div>
                                <div class="media-body">
                                    <div class="clearfix">
                                        <div class="<if value="$_M['profile_safety']['idvaliclass1'] eq 'warning'">pull-xs-left</if> m-r-50">
                                            <h4 class="media-heading">
                                                {$word.rnvalidate}
                                                <span class="tag tag-outline tag-{$_M['profile_safety']['idvaliclass1']}">{$_M['profile_safety']['idvalitxt']}</span>
                                            </h4>
                                            <span class="text-muted">{$word.accsaftips4}</span>
                                            <if value="$_M['profile_safety']['idvaliclass1'] eq 'success'">
                                            <div class="font-size-16">
                                                <hr>
                                                <p>{$_M['word']['realname']}：<span class="blue-grey-500">{$data.data.user_info.v_realname}</span></p>
                                                <hr>
                                                <p>{$_M['word']['idcode']}：<span class="blue-grey-500">{$data.data.user_info.v_idcode}</span></p>
                                                <hr>
                                                <p class="m-b-0">{$_M['word']['telnum']}：<span class="blue-grey-500">{$data.data.user_info.v_phone}</span></p>
                                            </div>
                                            </if>
                                        </div>
                                        <if value="$_M['profile_safety']['idvaliclass1'] eq 'warning'">
                                        <button type="button" class="btn btn-primary btn-outline btn-squared {$_M['profile_safety']['idvaliclass']}" data-target=".safety-modal-{$_M['profile_safety']['idvaliclass']}" data-toggle="modal">{$_M['profile_safety']['idvalibut']}</button>
                                        </if>
                                    </div>
                                </div>
                            </div>
                        </if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--实名认证-->
    <div class="modal fade safety-modal-idvaliadd">
        <div class="modal-dialog modal-sm modal-center modal-primary">
            <div class="modal-content">
                <form method="post" action="{$data.data.submit_url}">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">{$word.rnvalidate}</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="input" name="realname" required class="form-control" placeholder="{$word.realname}" data-fv-notempty-message="{$word.noempty}">
                        </div>
                        <div class="form-group">
                            <input type="input" name="idcode" required class="form-control" placeholder="{$word.idcode}" data-fv-notempty-message="{$word.noempty}"
                            >
                        </div>
                        <div class="form-group">
                            <input type="tel" name="phone" required class="form-control" placeholder="{$word.telnum}" data-fv-notempty-message="{$word.noempty}">
                        </div>
                        <div class="form-group m-b-0">
                            <div class="input-group input-group-icon">
                                <span class="input-group-addon"><i class="fa fa-shield"></i></span>
                                <input type="text" name="code" required class="form-control" placeholder="{$word.memberImgCode}" data-fv-notempty-message="{$word.noempty}">
                                <div class="input-group-addon p-5 user-code-img">
                                    <?php $random = random(4, 1); ?>
                                    <img src="{$url.entrance}?m=include&c=ajax_pin&a=dogetpin&random={$random}" title="{$word.memberTip1}" class='met-getcode' align="absmiddle" role="button">
                                    <input type="hidden" name="random" value="{$random}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-squared" data-dismiss="modal">{$word.cancel}</button>
                        <button type="submit" class="btn btn-primary btn-squared">{$word.confirm}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<include file="sys_web/foot"/>