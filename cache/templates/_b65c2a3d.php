<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$html_class=$body_class='h-100';
$html_class.=' met-pageset';
$body_class.=' d-flex flex-column';
$pageset_css_filemtime = filemtime(PATH_OWN_FILE.'templates/css/pageset.css');
$pageset_js_filemtime = filemtime(PATH_OWN_FILE.'templates/js/pageset.js');
$met_title=$word['veditor'].'-'.$c['met_webname'];
$headnav_ml=$_M['langset']=='cn'?'ml-xl-3':'en-headnav-padiing';
?>
<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$basic_admin_css_filemtime = filemtime(PATH_STATIC.'css/basic_admin.css');
$met_title.='-'.$word['metinfo'];
$synchronous=$_M['langlist']['admin'][$_M['langset']]['synchronous'];
?>
<!DOCTYPE HTML>
<html class="<?php echo $html_class;?>">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta name="robots" content="noindex,nofllow">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0,minimal-ui">
<meta name="format-detection" content="telephone=no">
<title data-title="<?php echo $word['metinfo'];?>"><?php echo $met_title;?></title>
<meta name="generator" content="MetInfo <?php echo $c['metcms_v'];?>" data-variable="<?php echo $url['site'];?>|<?php echo $_M['lang'];?>|<?php echo $synchronous;?>|<?php echo $c['met_skin_user'];?>||||">
<link href="<?php echo $url['site'];?>favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="<?php echo $url['static_new'];?>css/basic_admin.css?<?php echo $basic_admin_css_filemtime;?>" rel='stylesheet' type='text/css'>
<!--['if lte IE 9']>
<script src="<?php echo $url['static_new'];?>js/lteie9.js"></script>
<!['endif']-->
</head>
<!--['if lte IE 9']>
<div class="text-center mb-0 bg-danger alert">
    <button type="button" class="close" data-dismiss="alert">
        <span aria-hidden="true">×</span>
    </button>
    <?php echo $word['browserupdatetips'];?>
</div>
<!['endif']-->
<body class="<?php echo $body_class;?>">
<link rel="stylesheet" href="<?php echo $url['static_new'];?>fonts/metinfo-icon/metinfo-icon.css">
<link rel="stylesheet" href="<?php echo $url['own_tem'];?>css/pageset.css?<?php echo $pageset_css_filemtime;?>">
<header class='pageset-head bg-dark' style="height: 50px;">
	<div class="container-fluid h-100 position-relative">
		    <?php if($c['met_agents_pageset_logo']==1 || !isset($c['met_agents_pageset_logo'])){ ?>
		<div class='float-left d-none d-lg-flex align-items-center h-100'>
			<a href="<?php echo $c['met_agents_linkurl'];?>" title='<?php echo $word['metinfo'];?>' target='_blank' class='text-white pageset-logo'><i class="icon metinfo-icon metinfo-icon-logobd font-size-18"></i> <span><?php echo $word['loginmetinfo'];?></span></a>
		</div>
		<?php } ?>
		    <?php if(is_mobile()){ ?>
		<button class="btn btn-outline-light btn-sm btn-block mt-2 btn-pageset-mobile-menu"><?php echo $word['top_menu'];?></button>
		<?php } ?>
		    <?php if(is_mobile()){ ?><div class="pageset-mobile-menu position-absolute bg-dark py-2"><?php } ?>
		<div class="container h-100">
			<div class="row h-100 navbar p-0 pageset-head-nav">
				<div>
	            	<a href class="btn btn-outline-light border-none pageset-view" title='<?php echo $word['uisetTips4'];?>' target='_blank'><?php echo $word['preview'];?></a>
                        <?php if($data['auth']['basic_info']==1){ ?>
                    <a href='javascript:;' class="btn btn-outline-light border-none <?php echo $headnav_ml;?> pageset-other-config" data-config-url='<?php echo $url['own_form'];?>a=doget_page_config' data-form_action="doset_page_config" title='<?php echo $word['uisetTips5'];?>'><?php echo $word['uisetTips6'];?></a>
                    <?php } ?>
                        <?php if($data['auth']['column']==1){ ?>
                    <a href='javascript:;' class="btn btn-outline-light border-none <?php echo $headnav_ml;?>" data-toggle="modal" data-target=".pageset-nav-modal" data-url='column' title='<?php echo $word['columumanage'];?>'><?php echo $word['banner_column_v6'];?></a>
                    <?php } ?>
                        <?php if($data['auth']['content']==1){ ?>
                    <a href='javascript:;' class="btn btn-outline-light border-none <?php echo $headnav_ml;?>" data-toggle="modal" data-target=".pageset-nav-modal" data-url='manage' title='<?php echo $word['indexcontent'];?>'><?php echo $word['content'];?></a>
                    <?php } ?>
					<div class="btn-group <?php echo $headnav_ml;?>">
						<button class="btn btn-outline-light border-none dropdown-toggle" type="button" data-toggle="dropdown"><?php echo $word['skinstyle'];?></button>
						<ul class="dropdown-menu mt-2">
                                <?php if($data['auth']['style_settings']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2 pageset-other-config' data-config-url='<?php echo $url['own_form'];?>a=doget_public_config' data-form_action="doset_public_config"><?php echo $word['style_settings'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['site_template']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2 nav-tem-choose' data-toggle="modal" data-target=".pageset-nav-modal" data-url='app/met_template'><?php echo $word['appearance'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['watermark_thumbnail']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='imgmanage'><?php echo $word['watermarkThumbnail'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['banner']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='banner'><?php echo $word['indexflash'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['mobile_menu']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='menu'><?php echo $word['the_menu'];?></a>
                            <?php } ?>
						</ul>
					</div>
                        <?php if($data['auth']['seo']==1){ ?>
                    <a href='javascript:;' class="btn btn-outline-light border-none <?php echo $headnav_ml;?>" data-toggle="modal" data-target=".pageset-nav-modal" data-url='seo'>SEO</a>
                    <?php } ?>
                        <?php if($data['auth']['language']==1){ ?>
                    <a href='javascript:;' class="btn btn-outline-light border-none <?php echo $headnav_ml;?>" data-toggle="modal" data-target=".pageset-nav-modal" data-url='language'><?php echo $word['multilingual'];?></a>
                    <?php } ?>
                        <?php if($data['auth']['myapp']==1){ ?>
                    <a href="javascript:;" class='btn btn-outline-light border-none <?php echo $headnav_ml;?>' data-toggle="modal" data-target=".pageset-nav-modal" data-url='myapp'><?php echo $word['myapp'];?></a>
                    <?php } ?>
					<div class="btn-group <?php echo $headnav_ml;?>">
						<button class="btn btn-outline-light border-none dropdown-toggle" type="button" data-toggle="dropdown"><?php echo $word['indexadmin'];?></button>
						<ul class="dropdown-menu mt-2">
                                <?php if($data['auth']['databack']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='databack'><?php echo $word['data_processing'];?></a>
                            <?php } ?>
							    <?php if($data['auth']['checkupdate']==1){ ?>
							<a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='update'><?php echo $word['checkupdate'];?></a>
							<?php } ?>
                                <?php if($data['auth']['online']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='online'><?php echo $word['customerService'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['user']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='user'><?php echo $word['memberManage'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['clear_cache']==1){ ?>
                            <a href="<?php echo $url['own_form'];?>n=ui_set&c=index&a=doclear_cache" class='dropdown-item px-3 py-2 clear-cache'><?php echo $word['clearCache'];?></a>
	                        <a href="<?php echo $url['own_form'];?>n=ui_set&c=index&a=doClearThumb" class='dropdown-item px-3 py-2 clear-cache'><?php echo $word['clearThumb'];?></a>
                            <?php } ?>
	                            <?php if($c['met_agents_app'] && $data['auth']['myapp']==1){ ?>
	                    	        <?php
            $sub = count($data['applist']);
            $num = 50;
            
            if(!is_array($data['applist']) && $data['applist']){
                $data['applist'] = explode('|',$data['applist']);
            }


            foreach ($data['applist'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($data['applist'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $v = $val;
            ?>
							<a     <?php if($v['version']){ ?>href="javascript:;" data-toggle="modal" data-target=".pageset-nav-modal" data-url='<?php echo $v['url'];?>'<?php }else{ ?>href="<?php echo $v['url'];?>" target="_blank"<?php } ?> class='dropdown-item px-3 py-2'><?php echo $v['appname'];?></a>
							<?php }?>
							<?php } ?>
						</ul>
					</div>
				</div>
				<div class="float-right">
					<div class="btn-group <?php echo $headnav_ml;?>">
						<button class="btn btn-outline-light border-none dropdown-toggle" type="button" data-toggle="dropdown"><?php echo $word['columnmore'];?></button>
						<ul class="dropdown-menu dropdown-menu-right mt-2">
                                <?php if($data['auth']['basic_info']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='webset'><?php echo $word['baceinfo'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['safe']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='safe'><?php echo $word['safety_efficiency'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['basic_info']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='webset/email'><?php echo $word['sysMailboxConfig'];?></a>
							<a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='webset/thirdparty'><?php echo $word['third_party_code'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['nav_setting']==1 && $data['auth']['myapp']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url='ui_set/pageset_nav/?c=index&a=doapplist'><?php echo $word['navSetting'];?></a>
                            <?php } ?>
                                <?php if($data['auth']['admin_user']==1){ ?>
							<a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url="admin/user"><?php echo $word['indexadminname'];?></a>
                            <?php } ?>
							    <?php if($data['auth']['function_complete']==1){ ?>
							<a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target="#functionEncy" data-modal-size="lg" data-modal-url="#pub/function_ency/?n=ui_set&c=index&a=get_auth" data-modal-refresh="one" data-modal-fullheight="1" data-modal-title="<?php echo $word['funcCollection'];?>" data-modal-oktext="" data-modal-notext="<?php echo $word['close'];?>"><?php echo $word['funcCollection'];?></a>
							<?php } ?>
                                <?php if($data['auth']['partner']==1){ ?>
							<a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url="partner"><?php echo $word['cooperation_platform'];?></a>
                            <?php } ?>
						</ul>
					</div>
					    <?php if($c['met_agents_metmsg']){ ?>
					<div class="btn-group <?php echo $headnav_ml;?>">
						<button class="btn btn-outline-light border-none dropdown-toggle" type="button" data-toggle="dropdown"><?php echo $word['stand_by'];?></button>
						<ul class="dropdown-menu dropdown-menu-right mt-2">
							<a href="<?php echo $c['help_url'];?>" class='dropdown-item px-3 py-2' target='_blank'><?php echo $word['help_manual'];?></a>
							<a href="<?php echo $c['edu_url'];?>" class='dropdown-item px-3 py-2' target='_blank'><?php echo $word['extension_school'];?></a>
							<a href="<?php echo $c['qa_url'];?>" class='dropdown-item px-3 py-2' target='_blank'><?php echo $word['online_quiz'];?></a>
							<a href="<?php echo $c['kf_url'];?>" class='dropdown-item px-3 py-2' target='_blank'><?php echo $word['online_work_order'];?></a>
                                <?php if($data['auth']['environmental_test']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url="system/envmt_check/?c=patch&a=docheckEnv"><?php echo $word['environmental_test'];?></a>
                            <?php } ?>
						</ul>
					</div>
					<?php } ?>
					<a href='<?php echo $url['site_admin'];?>' class="btn btn-outline-light border-none <?php echo $headnav_ml;?>" target='_blank'><?php echo $word['oldBackstage'];?></a>
					    <?php if($c['met_agents_metmsg']){ ?>
					<a href='javascript:;' class="btn btn-outline-light border-none <?php echo $headnav_ml;?>" data-toggle="modal" data-target=".pageset-nav-modal" data-url='system/news' title='<?php echo $word['sysMessage'];?>'>
						<i class="fa fa-bell-o"></i>
						<span class="sys-news-count"><?php echo $data['sys_news_num'];?></span>
					</a>
					<?php } ?>
					<div class="btn-group <?php echo $headnav_ml;?>">
						<button type="button" class="btn btn-outline-light border-none dropdown-toggle pageset-head-user" data-toggle="dropdown"><span class='text-truncate d-inline-block position-relative' style="max-width: 100px;top: 3px;"><?php echo $data['power']['admin_id'];?></span></button>
						<ul class="dropdown-menu dropdown-menu-right mt-2">
							<a href='javascript:;' class='dropdown-item px-3 py-2' data-toggle="modal" data-target=".pageset-nav-modal" data-url="admin/user" title='<?php echo $word['indexadminname'];?>'><?php echo $word['modify_information'];?></a>
							<a href="<?php echo $url['site_admin'];?>?n=login&c=login&a=dologinout" class='dropdown-item px-3 py-2'><?php echo $word['indexloginout'];?></a>
						</ul>
					</div>
				</div>
			</div>
		</div>
		    <?php if(is_mobile()){ ?></div><?php } ?>
	</div>
</header>
    <?php if(!$data['admin_folder_safe']){ ?>
<div class="text-center mb-0 bg-grey alert pageset-tips">
    <button type="button" class="close" aria-label="Close" data-dismiss="alert">
        <span aria-hidden="true">×</span>
    </button>
    <p><?php echo $word['help2'];?>：<span class='text-danger'><?php echo $word['tips8_v6'];?>！</span></p>
    <div>
        <button type='button' class="btn btn-default no-prompt" data-url="<?php echo $url['site_admin'];?>?n=index&c=index&a=do_no_prompt" data-dismiss="alert"><?php echo $word['nohint'];?></button>
        <button type='button' data-url="safe" class="btn btn-success ml-5 btn-adminfolder-change" title="<?php echo $word['safety_efficiency'];?>" data-toggle="modal" data-target=".pageset-nav-modal" data-dismiss="alert"><?php echo $word['tochange'];?></button>
    </div>
</div>
<?php } ?>
<iframe src="<?php echo $data['pageset_iframe_src'];?>" class='page-iframe flex-fill' frameborder="0" width="100%"></iframe>
<button type="button" data-toggle="modal" class="btn-pageset-common-modal" hidden></button>
<button type="button" class="btn-pageset-common-page" hidden></button>
<menu class="met-menu position-fixed m-0 pl-0 border bg-light shadow rounded">
    <li class="menu-item d-block">
        <button type="button" class="btn btn-light text-left menu-btn obj-remove">
        	<small class="d-block">
	            <i class="icon wb-eye-close mr-1"></i>
	            <span class="menu-text"><?php echo $word['uisetTips8'];?></span>
            </small>
        </button>
    </li>
</menu>
    <?php if($c['met_uiset_guide'] && !is_mobile()){ ?>
<div class="modal fade met-scrollbar met-modal show alert p-0 mb-0 border-none rounded-0" data-keyboard="false" data-backdrop="false" style="display: block;">
	<div class="modal-dialog modal-dialog-centered modal-xl">
		<div class="modal-content bg-none border-none">
			<div class="modal-body text-center">
				<div class="d-inline-block">
					<div class="text-right">
						<button type='button' class="btn btn-danger" data-dismiss="alert"><?php echo $word['close_this_time'];?></button>
		        		<button type='button' class="btn btn-danger btn-uiset-guide-cancel" data-url="<?php echo $url['own_form'];?>a=dono_uisetguide" data-dismiss="alert"><?php echo $word['nohint'];?></button>
	        		</div>
					<img src="<?php echo $url['own_tem'];?>images/uiset_guide.gif" width="800" class="bg-white p-3">
				</div>
			</div>
		</div>
	</div>
</div>
<?php } ?>
    <?php if(is_mobile() && !$_COOKIE['pageset_mobile_tips_hide']){ ?>
<div class="pageset-mobile-tips-wrapper" hidden><span class="pageset-mobile-tips"><?php echo $word['visualization1'];?></span></div>
<?php } ?>
    <?php if(!$data['license']){ ?>
<div class="modal fade show met-scrollbar met-modal alert p-0 met-agreement-modal" data-keyboard="false" data-backdrop="false" style="display: block;">
	<div class="modal-dialog modal-dialog-centered modal-lg my-0 mx-auto h-100">
		<div class="modal-content h-100">
			<div class="modal-header justify-content-center">
				<h5 class="modal-title"><?php echo $word['read_protocol'];?></h5>
			</div>
			<div class="modal-body p-0" style="height:calc(100% - 115px);">
				<iframe src="<?php echo $data['license_url'];?>" frameborder="0" width="100%" height="100%" style="vertical-align: top;"></iframe>
			</div>
			<div class="modal-footer justify-content-center">
				<a href="<?php echo $url['site_admin'];?>?n=login&c=login&a=dologinout" class="btn btn-default mr-5"><?php echo $word['disagree'];?></a>
				<button type="button" class="btn btn-primary" data-dismiss="alert"><?php echo $word['agree'];?></button>
			</div>
		</div>
	</div>
</div>
<?php } ?>
<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$basic_admin_js_time = filemtime(PATH_STATIC.'js/basic_admin.js');
$lang_json_admin_js_time = filemtime(PATH_WEB.'cache/lang_json_admin_'.$_M['lang'].'.js');
?>
</body>
<script>window.MET=<?php echo $data['met_para'];?>;</script>
<script src="<?php echo $url['static_new'];?>js/basic_admin.js?<?php echo $basic_admin_js_time;?>"></script>
<script src="<?php echo $url['site'];?>cache/lang_json_admin_<?php echo $_M['langset'];?>.js?<?php echo $lang_json_admin_js_time;?>"></script>
</html>
<script src="<?php echo $url['own_tem'];?>js/pageset.js?<?php echo $pageset_js_filemtime;?>"></script>