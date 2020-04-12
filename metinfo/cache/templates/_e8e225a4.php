<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$html_class=$body_class='h-100';
$html_class.=' met-admin';
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
    <?php if(!$_M['form']['noside']){ ?>
<div class="h-100 cover d-flex">
	<div class="metadmin-sidebar h-100 transition500">
		<div class="metadmin-logo d-flex align-items-center justify-content-center" style="height: 70px;">
			<a href="#/home" title="<?php echo $word['metinfo'];?>" class="d-block">
				<img src="<?php echo $data['met_admin_logo'];?>" alt="<?php echo $word['metinfo'];?>" width="150">
				<i class="fa-home h2 mb-0 text-white"></i>
			</a>
		</div>
		<hr class="my-0">
		<ul class="list-unstyled mb-0 metadmin-sidebar-nav">
			<li class="text-center py-3 transition500">
				<a href="#/home"><?php echo $word['backstage'];?></a>
				<span class="mx-1">|</span>
				<a href="<?php echo $url['site'];?>index.php?lang=<?php echo $_M['lang'];?>" target="_blank"><?php echo $word['homepage'];?></a>
				    <?php if($data['privilege']['navigation']=='metinfo' || strstr($data['privilege']['navigation'], '1802')){ ?>
				<span class="mx-1">|</span>
				<a href="<?php echo $url['site_admin'];?>?lang=<?php echo $_M['lang'];?>&n=ui_set" target="_blank"><?php echo $word['visualization'];?></a>
				<?php } ?>
			</li>
			<hr class="my-0">
			        <?php
            $sub = count($data['adminnav']['top']);
            $num = 50;
            
            if(!is_array($data['adminnav']['top']) && $data['adminnav']['top']){
                $data['adminnav']['top'] = explode('|',$data['adminnav']['top']);
            }


            foreach ($data['adminnav']['top'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($data['adminnav']['top'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $m = $val;
            ?>
			<li class="transition500">
				<a     <?php if($m['url']){ ?>href="#/<?php echo $m['url'];?>"<?php }else{ ?>href="javascript:;"<?php } ?> title="<?php echo $m['name'];?>" class="d-flex justify-content-between align-items-center px-4">
					<div><i class="iconfont-metadmin icon-metadmin-<?php echo $m['icon'];?>"></i><span><?php echo $m['name'];?></span></div>
					    <?php if($data['adminnav']['sub'][$m['id']]){ ?><span class="fa fa-angle-right h5 mb-0"></span><?php } ?>
				</a>
				    <?php if($data['adminnav']['sub'][$m['id']]){ ?>
				<ul class="sub list-unstyled text-nowrap">
					        <?php
            $sub = count($data['adminnav']['sub'][$m['id']]);
            $num = 50;
            
            if(!is_array($data['adminnav']['sub'][$m['id']]) && $data['adminnav']['sub'][$m['id']]){
                $data['adminnav']['sub'][$m['id']] = explode('|',$data['adminnav']['sub'][$m['id']]);
            }


            foreach ($data['adminnav']['sub'][$m['id']] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($data['adminnav']['sub'][$m['id']])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $msub = $val;
            ?>
					<li class="transition500">
						<a     <?php if($msub['url']){ ?>href="#/<?php echo $msub['url'];?>"<?php }else{ ?>href="javascript:;"<?php } ?> title="<?php echo $msub['name'];?>" class="d-block px-4"><i class="iconfont-metadmin icon-metadmin-<?php echo $msub['icon'];?>"></i><span><?php echo $msub['name'];?></span></a>
						    <?php if($data['adminnav']['sub'][$msub['id']]){ ?>
						<ul class="sub list-unstyled text-nowrap">
							        <?php
            $sub = count($data['adminnav']['sub'][$msub['id']]);
            $num = 50;
            
            if(!is_array($data['adminnav']['sub'][$msub['id']]) && $data['adminnav']['sub'][$msub['id']]){
                $data['adminnav']['sub'][$msub['id']] = explode('|',$data['adminnav']['sub'][$msub['id']]);
            }


            foreach ($data['adminnav']['sub'][$msub['id']] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($data['adminnav']['sub'][$msub['id']])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $msub1 = $val;
            ?>
							<li class="transition500">
								<a     <?php if($msub1['url']){ ?>href="#/<?php echo $msub1['url'];?>"<?php }else{ ?>href="javascript:;"<?php } ?> title="<?php echo $msub1['name'];?>" class="d-block px-4">    <?php if($msub1['icon']){ ?><i class="iconfont-metadmin icon-metadmin-<?php echo $msub1['icon'];?>"></i><?php } ?><span><?php echo $msub1['name'];?></span></a>
							</li>
							<?php }?>
						</ul>
						<?php } ?>
					</li>
					<?php }?>
				</ul>
				<?php } ?>
			</li>
			<?php }?>
		</ul>
	</div>
<?php } ?>
	<div class="metadmin-rightcontent h-100 met-scrollbar position-relative media-body" style="background: #f7fcff;overflow-x: hidden;">
		    <?php if(!$_M['form']['noside']){ ?>
		<?php
		$lang_name=$_M['langlist']['web'][$_M['lang']]['name'];
		?>
		<header class="metadmin-head navbar bg-light metadmin-shadow px-0">
			<div class="container-fluid">
				<div>
					<button type="button" class="btn btn-default btn-sm px-0 float-left btn-adminsidebar-control" style="width: 35px;"><i class="wb-arrow-left h5 mb-0"></i></button>
			        <div class="breadcrumb mb-0 p-0 d-none d-md-flex bg-none float-left ml-3 mt-1 metadmin-breadcrumb">
			            <li class='breadcrumb-item'><?php echo $lang_name;?></li>
			        </div>
		        </div>
		        <div class="metadmin-head-right">
                        <?php if($data['clear_cache']==1){ ?>
		        	<div class="btn-group">
		                <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown">
		                    <i class="iconfont-metadmin icon-metadmin-clear-chache"></i>
		                    <span class="d-none d-md-inline-block"><?php echo $word['clearCache'];?></span>
		                </button>
		                <ul class="dropdown-menu dropdown-menu-right metadmin-head-langlist">
		                	<a href="<?php echo $url['own_form'];?>n=ui_set&c=index&a=doclear_cache" title="<?php echo $word['clearCache'];?>" class='dropdown-item px-3 clear-cache'><?php echo $word['system_cache'];?></a>
		                	<a href="<?php echo $url['own_form'];?>n=ui_set&c=index&a=doClearThumb" title="<?php echo $word['clearThumb'];?>" class='dropdown-item px-3 clear-cache'><?php echo $word['modimgurls'];?></a>
		                </ul>
		            </div>
					<?php } ?>
                        <?php if($data['checkupdate']==1){ ?>
                    <button class="btn btn-light" data-toggle="modal" data-target=".update-modal" data-modal-size="lg" data-modal-url="update" data-modal-fullheight="1" data-modal-title="<?php echo $word['checkupdate'];?>" data-modal-oktext="" data-modal-notext="<?php echo $word['close'];?>">
	                    <i class="iconfont-metadmin icon-metadmin-update"></i>
	                    <span class="d-none d-md-inline-block"><?php echo $word['checkupdate'];?></span>
	                </button>
                    <?php } ?>
		                <?php if($data['function_complete']==1){ ?>
	                <button class="btn btn-light" data-toggle="modal" data-target=".function-ency-modal" data-modal-size="lg" data-modal-url="#pub/function_ency/?n=ui_set&c=index&a=get_auth" data-modal-refresh="one" data-modal-fullheight="1" data-modal-title="<?php echo $word['funcCollection'];?>" data-modal-oktext="" data-modal-notext="<?php echo $word['close'];?>">
	                    <i class="iconfont-metadmin icon-metadmin-function"></i>
	                    <span class="d-none d-md-inline-block"><?php echo $word['funcCollection'];?></span>
	                </button>
		            <?php } ?>
		                <?php if($c['met_agents_metmsg']){ ?>
		            <div class="btn-group">
		            	<button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown">
		                    <i class="iconfont-metadmin icon-metadmin-manual"></i>
		                    <span class="d-none d-md-inline-block"><?php echo $word['indexbbs'];?></span>
		                </button>
		                <ul class="dropdown-menu dropdown-menu-right">
		                	<a href="<?php echo $c['help_url'];?>" target="_blank" class='dropdown-item px-3'><?php echo $word['help_manual'];?></a>
		                	<a href="<?php echo $c['edu_url'];?>" target="_blank" class='dropdown-item px-3'><?php echo $word['extension_school'];?></a>
		                	<a href="<?php echo $c['qa_url'];?>" target="_blank" class='dropdown-item px-3'><?php echo $word['online_quiz'];?></a>
		                	<a href="<?php echo $c['kf_url'];?>" target="_blank" class='dropdown-item px-3'><?php echo $word['online_work_order'];?></a>
                                <?php if($data['environmental_test']==1){ ?>
                            <a href="javascript:;" class='dropdown-item px-3' data-toggle="modal" data-target=".system-check-env-modal" data-modal-size="lg" data-modal-url="system/envmt_check/?c=patch&a=docheckEnv" data-modal-fullheight="1" data-modal-title="<?php echo $word['environmental_test'];?>" data-modal-oktext="" data-modal-notext="<?php echo $word['close'];?>"><?php echo $word['environmental_test'];?></a>
                            <?php } ?>
		                </ul>
		            </div>
		            <?php } ?>
		            <div class="btn-group">
		                <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown">
		                    <i class="iconfont-metadmin icon-metadmin-multilingualism"></i>
		                    <span class="d-none d-md-inline-block"><?php echo $lang_name;?></span>
		                </button>
		                <ul class="dropdown-menu dropdown-menu-right metadmin-head-langlist">
		                	        <?php
            $sub = count($_M['user']['langok']);
            $num = 50;
            
            if(!is_array($_M['user']['langok']) && $_M['user']['langok']){
                $_M['user']['langok'] = explode('|',$_M['user']['langok']);
            }


            foreach ($_M['user']['langok'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($_M['user']['langok'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $v = $val;
            ?>
		                    <a href="javascript:;" data-val='<?php echo $v['mark'];?>' class='dropdown-item px-3'><?php echo $v['name'];?></a>
		                    <?php }?>
	                        <li class="px-3 py-1"><a href="#/language" class="btn btn-success btn-add-lang"><i class="fa fa-plus"></i> <?php echo $word['added'];?><?php echo $word['langweb'];?></a></li>
		                </ul>
		            </div>
		            <div class="btn-group">
		                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
		                	<i class="iconfont-metadmin icon-metadmin-administrator"></i>
		                	<span><?php echo $_M['user']['admin_name'];?></span>
		                </button>
		                <ul class="dropdown-menu dropdown-menu-right">
		                    <a href="#/admin/user" class="dropdown-item px-3"><?php echo $word['modify_information'];?></a>
		                    <a href="<?php echo $url['adminurl'];?>n=login&c=login&a=dologinout" class="dropdown-item px-3"><?php echo $word['indexloginout'];?></a>
		                </ul>
		            </div>
			    </div>
		    </div>
		</header>
		<?php } ?>
		<div class="metadmin-main px-4 mt-4 mb-3">
		</div>
		<div class="metadmin-loader"><div class="text-center d-flex align-items-center h-100"><div class="loader loader-round-circle"></div></div></div>
		<footer class="metadmin-foot px-4 my-3 text-grey"><?php echo $data['copyright'];?></footer>
		<button type="button" class="btn btn-primary btn-squared met-scroll-top position-fixed" hidden><i class="icon wb-chevron-up" aria-hidden="true"></i></button>
	</div>
    <?php if(!$_M['form']['noside']){ ?>
</div>
<button type="button" data-toggle="modal" class="btn-admin-common-modal" hidden></button>
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