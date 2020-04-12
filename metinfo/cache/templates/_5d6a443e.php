<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
?>
<?php
global $metinfover;
// 模板引擎
$metinfover                  = "v2";
$template_type                  = "tag";
// 栏目可用字段
$metadmin[categorynamemark]  = 1; // 栏目修饰名称
$metadmin[categoryimage]     = 1; // 栏目图片
$metadmin[categorymarkimage] = 0; // 栏目标识图片
// banner描述文字、文字位置、颜色等设置
$metadmin[system_flash_option_ok]=array(
	all=>1,
	img_des=>1,
	img_title_color=>1,
	img_des_color=>1,
	img_text_position=>1
);
?>
<?php $met_page=$template_type=='ui'?'index':''; ?>
<?php $met_page = "$met_page";?>
<?php
$metinfover_v2=$c["metinfover"]=="v2"?true:false;
$lang_json_file_ok=1;
if(!$lang_json_file_ok){
    echo "<meta http-equiv='refresh' content='0'/>";
}
$html_hidden=$lang_json_file_ok?"":"hidden";
if(!$data["module"] || $data["module"]==10){
    $nofollow=1;
}
$user_name=$_M["user"]?$_M["user"]["username"]:"";
$oxhclass=$oxh_no?"":"oxh";
?>
<!DOCTYPE HTML>
<html class="<?php echo $html_class;?> met-web <?php echo $oxhclass;?>" <?php echo $html_hidden;?>>
<head>
<meta charset="utf-8">
<?php if($nofollow){ ?>
<meta name="robots" content="noindex,nofllow" />
<?php } ?>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,minimal-ui">
<meta name="format-detection" content="telephone=no">
<title><?php echo $data['page_title'];?></title>
<meta name="description" content="<?php echo $data['page_description'];?>">
<meta name="keywords" content="<?php echo $data['page_keywords'];?>">
<meta name="generator" content="MetInfo <?php echo $c['metcms_v'];?>" data-variable="<?php echo $url['site'];?>|<?php echo $_M["lang"];?>|<?php echo $data['synchronous'];?>|<?php echo $c['met_skin_user'];?>|<?php echo $data['module'];?>|<?php echo $data['classnow'];?>|<?php echo $data['id'];?>" data-user_name="<?php echo $user_name;?>">
<link href="<?php echo $url['site'];?>favicon.ico" rel="shortcut icon" type="image/x-icon">
<?php
if($lang_json_file_ok){
    $basic_css_name=$metinfover_v2?"":"_web";
    if($c["temp_frame_version"]=="v2") $basic_css_name.="_v2";
    $is_lte_ie9=strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 9")!==false || strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 8")!==false;
    if($is_lte_ie9 && $c["temp_frame_version"]!="v2"){
        $lteie9_css_filemtime_1 = filemtime(PATH_WEB."public/ui/v2/static/css/basic".$basic_css_name."-lteie9-1.css");
        $lteie9_css_filemtime_2 = filemtime(PATH_WEB."public/ui/v2/static/css/basic".$basic_css_name."-lteie9-2.css");
?>
<link href="<?php echo $url['site'];?>public/ui/v2/static/css/basic<?php echo $basic_css_name;?>-lteie9-1.css?<?php echo $lteie9_css_filemtime_1;?>" rel="stylesheet" type="text/css">
<link href="<?php echo $url['site'];?>public/ui/v2/static/css/basic<?php echo $basic_css_name;?>-lteie9-2.css?<?php echo $lteie9_css_filemtime_2;?>" rel="stylesheet" type="text/css">
<?php
    }else{
        $basic_css_filemtime = filemtime(PATH_WEB."public/ui/v2/static/css/basic".$basic_css_name.".css");
?>
<?php
if(!$_M[config][disable_cssjs]){?>
<link rel="stylesheet" type="text/css" href="<?php echo $url['site'];?>public/ui/v2/static/css/basic<?php echo $basic_css_name;?>.css?<?php echo $basic_css_filemtime;?>">
<?php
}
?>
<?php
    }
    if($metinfover_v2){
        if(is_file(PATH_TEM."cache/metinfo.css")){
            $common_css_time = filemtime(PATH_TEM."cache/metinfo.css");
?>
<link rel="stylesheet" type="text/css" href="<?php echo $url['site'];?>templates/<?php echo $c['met_skin_user'];?>/cache/metinfo.css?<?php echo $common_css_time;?>">
<?php
        }
        if($met_page){
            if($met_page == 404) $met_page = "show";
            $page_css = PATH_TEM."cache/".$met_page."_".$_M["lang"].".css";
            if(!is_file($page_css)){
                $sys_compile = load::sys_class('view/sys_compile', 'new');
                if ($sys_compile->template_type == 'tag') {
                    $sys_compile->parse_page($met_page);
                }else{
                    include_once PATH_ALL_APP . "met_template/include/class/parse.class.php";
                    $parse = new parse();
                    $parse->parse_page($met_page);
                }
            }
            $page_css_time = filemtime($page_css);
?>
<link rel="stylesheet" type="text/css" href="<?php echo $url['site'];?>templates/<?php echo $c['met_skin_user'];?>/cache/<?php echo $met_page;?>_<?php echo $_M["lang"];?>.css?<?php echo $page_css_time;?>">
<?php
        }
    }
    if(is_mobile() && $c["met_headstat_mobile"]){
?>
<?php echo $c['met_headstat_mobile'];?>

<?php }else if(!is_mobile() && $c["met_headstat"]){?>
<?php echo $c['met_headstat'];?>

<?php
    }
    if($_M["html_plugin"]["head_script"]){
?>
<?php echo $_M["html_plugin"]["head_script"];?>

<?php } ?>
<style>
body{
<?php if($g["bodybgimg"]){ ?>
    background-image: url(<?php echo $g['bodybgimg'];?>) !important;background-position: center;background-repeat: no-repeat;background-size:cover;
<?php } ?>
    background-color:<?php echo $g['bodybgcolor'];?> !important;font-family:<?php echo $g['met_font'];?> !important;}
h1,h2,h3,h4,h5,h6{font-family:<?php echo $g['met_font'];?> !important;}
</style>
<script>(function(){var t=navigator.userAgent;(t.indexOf("rv:11")>=0||t.indexOf("MSIE 10")>=0)&&document.write("<script src=\"<?php echo $_M["url"]["site"];?>app/system/include/static/vendor/html5shiv.min.js\"><\/script>")})();</script>
<!--[if lte IE 9]>
<script src="<?php echo $_M["url"]["site"];?>public/ui/v2/static/js/lteie9.js"></script>
<![endif]-->
</head>
<!--[if lte IE 9]>
<div class="text-xs-center m-b-0 bg-blue-grey-100 alert">
    <button type="button" class="close" aria-label="Close" data-dismiss="alert">
        <span aria-hidden="true">×</span>
    </button>
    <?php echo $word['browserupdatetips'];?>
</div>
<![endif]-->
<body>
<?php } ?>
<header class='met-head' m-id='met_head' m-type="head_nav">
    <nav class="navbar navbar-default box-shadow-none met-nav">
        <div class="container">
            <div class="row">
                <div class='met-nav-btn'>
                        <?php if($data[classnow]==10001){ ?>
                    <h1 hidden><?php echo $c['met_webname'];?></h1>
                    <?php }else{ ?>
                        <?php if(!$data['id'] || $data['module']==1){ ?>
                    <h1 hidden><?php echo $data['name'];?></h1>
                    <?php } ?>
                    <h3 hidden><?php echo $c['met_webname'];?></h3>
                    <?php } ?>
                    <div class="navbar-header pull-xs-left">
                        <a href="<?php echo $c['index_url'];?>" class="met-logo vertical-align block pull-xs-left" title="<?php echo $c['met_logo_keyword'];?>">
                            <div class="vertical-align-middle">
                                    <?php if($c['met_mobile_logo']){ ?>
                                    <img src="<?php echo $c['met_mobile_logo'];?>" alt="<?php echo $c['met_logo_keyword'];?>" class="mblogo" />
                                    <img src="<?php echo $c['met_logo'];?>" alt="<?php echo $c['met_logo_keyword'];?>" class="pclogo" />
                                    <?php }else{ ?>
                                    <img src="<?php echo $c['met_logo'];?>" alt="<?php echo $c['met_logo_keyword'];?>" class="mblogo" />
                                    <img src="<?php echo $c['met_logo'];?>" alt="<?php echo $c['met_logo_keyword'];?>" class="pclogo" />
                                <?php } ?>
                            </div>
                        </a>
                    </div>
                    <button type="button" class="navbar-toggler hamburger hamburger-close collapsed p-x-5 p-y-0 met-nav-toggler" data-target="#met-nav-collapse" data-toggle="collapse">
                        <span class="sr-only"></span>
                        <span class="hamburger-bar"></span>
                    </button>
                        <?php if($c['met_member_register']){ ?>
                    <button type="button" class="navbar-toggler collapsed m-0 p-x-5 p-y-0 met-head-user-toggler" data-target="#met-head-user-collapse" data-toggle="collapse"> <i class="icon wb-user-circle" aria-hidden="true"></i>
                    </button>
                    <?php } ?>
                </div>
                <div class="collapse navbar-collapse navbar-collapse-toolbar pull-md-right p-0" id='met-head-user-collapse'>
                        <?php if($c['met_member_register']){ ?>
                        <?php if($user){ ?>
                    <ul class="navbar-nav pull-md-right vertical-align p-l-0 m-b-0 met-head-user" m-id="member" m-type="member">
                        <li class="dropdown">
                            <a
                                href="javascript:;"
                                class="navbar-avatar dropdown-toggle"
                                data-toggle="dropdown"
                                aria-expanded="false"
                            >
                                <span class="avatar m-r-5"><img src="<?php echo $user['head'];?>" alt="<?php echo $user['username'];?>"/></span>
                                <?php echo $user['username'];?>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right animate animate-reverse">
                                <li class='dropdown-item <?php echo $c['own_active']['0_1'];?>'>
                                    <a href="<?php echo $url['profile'];?>" title='<?php echo $word['memberIndex9'];?>'><i class="icon wb-user" aria-hidden="true"></i> <?php echo $word['memberIndex9'];?></a>
                                </li>
                                <li class='dropdown-item <?php echo $c['own_active']['0_2'];?>'>
                                    <a href="<?php echo $url['profile_safety'];?>" title='<?php echo $word['accsafe'];?>'><i class="icon wb-lock" aria-hidden="true"></i> <?php echo $word['accsafe'];?></a>
                                </li>
                                <div class="dropdown-divider"></div>
                                    <?php if($_M['html']['app_sidebar']){ ?>
                                        <?php
            $sub = count($_M['html']['app_sidebar']);
            $num = 50;
            
            if(!is_array($_M['html']['app_sidebar']) && $_M['html']['app_sidebar']){
                $_M['html']['app_sidebar'] = explode('|',$_M['html']['app_sidebar']);
            }


            foreach ($_M['html']['app_sidebar'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($_M['html']['app_sidebar'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $v = $val;
            ?>
                                <?php
                                $v['active']=$c['own_active'][$v['no'].'_'.$v['own_order']];
                                $v['target']=$v['target']?' target="_blank"':'';
                                ?>
                                <li class='dropdown-item <?php echo $v['active'];?>'>
                                    <a href="<?php echo $v['url'];?>" title="<?php echo $v['title'];?>"<?php echo $v['target'];?>><i class="icon fa-paper-plane" aria-hidden="true"></i> <?php echo $v['title'];?></a>
                                </li>
                                <?php }?>
                                <div class="dropdown-divider"></div>
                                <?php } ?>
                                <?php
    $result = load::mod_class('column/ifcolumn_database','new')->getLeftColumn();
    $sub = count($result);
    foreach($result as $index=>$v):
        $id = $v['id'];
        $v['sub'] = $sub;
        $v['_index']= $index;
        $v['_first']= $index==0 ? true:false;
        $v['_last']=$index==(count($result)-1)?true:false;
        $v['active']=($_M['config']['app_no']==$v['no']&&$_M['config']['own_order']==$v['own_order'])?'active':'';
        $v['target']=$v['target']?'target="_blank"':'';
        $$v = $v;
?>
                                <li class='dropdown-item <?php echo $v['active'];?>'>
                                    <a href="<?php echo $v['url'];?>" title="<?php echo $v['title'];?>" <?php echo $v['target'];?>><i class="icon fa-paper-plane" aria-hidden="true"></i> <?php echo $v['title'];?></a>
                                </li>
                                    <?php if($v['_last']){ ?>
                                <div class="dropdown-divider"></div>
                                <?php } ?>
                                <?php endforeach;?>
                                <li class='dropdown-item'>
                                    <a href="<?php echo $url['login_out'];?>"><i class="icon wb-power"></i> <?php echo $word['memberIndex10'];?></a>
                            </ul>
                        </li>
                    </ul>
                    <?php }else{ ?>
                    <ul class="navbar-nav pull-md-right vertical-align p-l-0 m-b-0 met-head-user no-login text-xs-center" m-id="member" m-type="member">
                        <li class=" text-xs-center vertical-align-middle animation-slide-top">
                            <a href="<?php echo $url['login'];?>" class="met_navbtn"><?php echo $word['login'];?></a>
                            <a href="<?php echo $url['register'];?>" class="met_navbtn"><?php echo $word['register'];?></a>
                        </li>
                    </ul>
                    <?php } ?>
                    <?php } ?>
                </div>
                <div class="collapse navbar-collapse navbar-collapse-toolbar pull-md-right p-0" id="met-nav-collapse">
                    <ul class="nav navbar-nav navlist">
                        <li class='nav-item'>
                            <a href="<?php echo $c['index_url'];?>" title="<?php echo $word['home'];?>" class="nav-link
                                <?php if($data['classnow']==10001){ ?>
                            active
                            <?php } ?>
                            "><?php echo $word['home'];?></a>
                        </li>
                        <?php
    $type=strtolower(trim('head'));
    $cid=0;
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="active";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
                            <?php if($lang['navbarok'] && $m['sub']){ ?>
                        <li class="nav-item dropdown m-l-<?php echo $lang['nav_ml'];?>">
                                <?php if($lang['navbarok']){ ?>
                            <a
                                href="<?php echo $m['url'];?>"
                                title="<?php echo $m['name'];?>"
                                <?php echo $m['urlnew'];?>
                                class="nav-link dropdown-toggle <?php echo $m['class'];?>"
                                data-toggle="dropdown" data-hover="dropdown"
                            >
                            <?php }else{ ?>
                            <a
                                href="<?php echo $m['url'];?>"
                                <?php echo $m['urlnew'];?>
                                title="<?php echo $m['name'];?>"
                                class="nav-link dropdown-toggle <?php echo $m['class'];?>"
                                data-toggle="dropdown"
                            >
                            <?php } ?>
                            <?php echo $m['_name'];?><span class="fa fa-angle-down p-l-5"></span></a>
                                <?php if($lang['navbullet_ok']){ ?>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-bullet animate animate-reverse">
                            <?php }else{ ?>
                            <div class="dropdown-menu dropdown-menu-right animate animate-reverse">
                            <?php } ?>
                                <?php if($m['module']<>1){ ?>
                                <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?>  title="<?php echo $lang['all'];?>" class='dropdown-item nav-parent hidden-xl-up <?php echo $m['class'];?>'><?php echo $lang['all'];?></a>
                            <?php } ?>
                                <?php
    $type=strtolower(trim('son'));
    $cid=$m['id'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="active";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
                                    <?php if($m['sub']){ ?>
                                <div class="dropdown-submenu">
                                    <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> class="dropdown-item <?php echo $m['class'];?>"><?php echo $m['_name'];?></a>
                                    <div class="dropdown-menu animate animate-reverse">
                                        <?php
    $type=strtolower(trim('son'));
    $cid=$m['id'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="active";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
                                            <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> class="dropdown-item <?php echo $m['class'];?>" ><?php echo $m['_name'];?></a>
                                        <?php endforeach;?>
                                    </div>
                                </div>
                                <?php }else{ ?>
                                <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $m['name'];?>" class='dropdown-item <?php echo $m['class'];?>'><?php echo $m['_name'];?></a>
                                <?php } ?>
                                <?php endforeach;?>
                            </div>
                        </li>
                        <?php }else{ ?>
                        <li class='nav-item m-l-<?php echo $lang['nav_ml'];?>'>
                            <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $m['name'];?>" class="nav-link <?php echo $m['class'];?>"><?php echo $m['_name'];?></a>
                        </li>
                        <?php } ?>
                        <?php endforeach;?>
                    </ul>
                    <div class="metlang m-l-15 pull-md-right">
                            <?php if($c['met_ch_lang'] && $lang['cn1_position']==1){ ?>
                            <?php if($lang['cn1_ok']){ ?>
                            <?php if($data[lang]==cn || $data[lang]==zh){ ?>
                        <span id='btn-convert' class="met_navbtn" m-id="lang" m-type="lang">繁体</span>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                        <?php
    $language = load::sys_class('label', 'new')->get('language')->get_lang();
   
    $sub = count($language);
    $i = 0;
    foreach($language as $index=>$v):
        $v['_index']   = $index;
        $v['_first']   = $i == 0 ? true:false;
        $v['_last']    = $index == (count($language)-1) ? true : false;
        $v['sub'] = $sub;
        $i++;
?><?php endforeach;?>
                            <?php if($c['met_lang_mark'] && $lang['langlist_position']==1 && $sub>1){ ?>
                        <div class="met-langlist vertical-align" m-type="lang" m-id="lang">
                            <div class="inline-block dropdown">
                                <?php
    $language = load::sys_class('label', 'new')->get('language')->get_lang();
   
    $sub = count($language);
    $i = 0;
    foreach($language as $index=>$v):
        $v['_index']   = $index;
        $v['_first']   = $i == 0 ? true:false;
        $v['_last']    = $index == (count($language)-1) ? true : false;
        $v['sub'] = $sub;
        $i++;
?>
                                    <?php if(($sub>2)?($data['lang']==$v['mark']):$data['lang']<>$v['mark']){ ?>
                                        <?php if($sub>2){ ?>
                                    <span data-toggle="dropdown" class="met_navbtn dropdown-toggle">
                                    <?php }else{ ?>
                                    <a href="<?php echo $v['met_weburl'];?>" title="<?php echo $v['name'];?>"     <?php if($v['newwindows']){ ?>target="_blank"<?php } ?> class="met-lang-other">
                                    <?php } ?>
                                            <?php if($lang['langlist1_icon_ok']){ ?>
                                        <img src="<?php echo $v['flag'];?>" alt="<?php echo $v['name'];?>" width="20">
                                        <?php } ?>
                                        <span><?php echo $v['name'];?></span>
                                        <?php if($sub>2){ ?></span><?php }else{ ?></a><?php } ?>
                                <?php } ?>
                                <?php endforeach;?>
                                    <?php if($sub>2){ ?>
                                <ul class="dropdown-menu dropdown-menu-left animate animate-reverse" id="met-langlist-dropdown" role="menu">
                                    <?php
    $language = load::sys_class('label', 'new')->get('language')->get_lang();
   
    $sub = count($language);
    $i = 0;
    foreach($language as $index=>$v):
        $v['_index']   = $index;
        $v['_first']   = $i == 0 ? true:false;
        $v['_last']    = $index == (count($language)-1) ? true : false;
        $v['sub'] = $sub;
        $i++;
?>
                                        <?php if($data['lang']<>$v['mark']){ ?>
                                    <a href="<?php echo $v['met_weburl'];?>" title="<?php echo $v['name'];?>"     <?php if($v[newwindows]==1){ ?>target="_blank"<?php } ?> class='dropdown-item'>
                                            <?php if($lang['langlist1_icon_ok']){ ?>
                                        <img src="<?php echo $v['flag'];?>" alt="<?php echo $v['name'];?>" width="20">
                                        <?php } ?>
                                        <?php echo $v['name'];?>
                                    </a>
                                    <?php } ?>
                                    <?php endforeach;?>
                                </ul>
                                <?php } ?>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>
    <?php if($data['classnow']){ ?>
<?php 
    $banner = load::sys_class('label', 'new')->get('banner')->get_column_banner($data['classnow']);
    $sub = count($banner['img']);
    foreach($banner['img'] as $index=>$v):
        $v['_index']   = $index;
        $v['_first']   = $index == 0 ? true:false;
        $v['_last']    = $index == (count($result)-1) ? true : false;
        $v['type'] = $banner['config']['type'];
        $v['y'] = $banner['config']['y'];
        $v['sub'] = $sub;
?><?php endforeach;?>
    <?php if($sub || $data['classnow']==10001){ ?>
<div class="met-banner carousel slide" id="exampleCarouselDefault" data-ride="carousel" m-id='banner'  m-type='banner'>
    <ol class="carousel-indicators carousel-indicators-fall">
        <?php 
    $banner = load::sys_class('label', 'new')->get('banner')->get_column_banner($data['classnow']);
    $sub = count($banner['img']);
    foreach($banner['img'] as $index=>$v):
        $v['_index']   = $index;
        $v['_first']   = $index == 0 ? true:false;
        $v['_last']    = $index == (count($result)-1) ? true : false;
        $v['type'] = $banner['config']['type'];
        $v['y'] = $banner['config']['y'];
        $v['sub'] = $sub;
?>
            <li data-slide-to="<?php echo $v['_index'];?>" data-target="#exampleCarouselDefault" class="    <?php if($v['_first']){ ?>active<?php } ?>"></li>
        <?php endforeach;?>
    </ol>
        <?php if($sub){ ?>
    <a class="left carousel-control" href="#exampleCarouselDefault" role="button" data-slide="prev">
      <span class="icon" aria-hidden="true"><</span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#exampleCarouselDefault" role="button" data-slide="next">
      <span class="icon" aria-hidden="true">></span>
      <span class="sr-only">Next</span>
    </a>
    <?php } ?>
    <div class="carousel-inner     <?php if($data['classnow']==10001 && $sub==0){ ?>met-banner-mh<?php } ?>" role="listbox">
        <?php 
    $banner = load::sys_class('label', 'new')->get('banner')->get_column_banner($data['classnow']);
    $sub = count($banner['img']);
    foreach($banner['img'] as $index=>$v):
        $v['_index']   = $index;
        $v['_first']   = $index == 0 ? true:false;
        $v['_last']    = $index == (count($result)-1) ? true : false;
        $v['type'] = $banner['config']['type'];
        $v['y'] = $banner['config']['y'];
        $v['sub'] = $sub;
?>
            <div class="carousel-item     <?php if($v['_first']){ ?>active<?php } ?>">
                    <?php if($v['mobile_img_path']){ ?>
                    <img class="w-full mobile_img" src="<?php echo $v['mobile_img_path'];?>" srcset='<?php echo $v['mobile_img_path'];?> 767w,<?php echo $v['mobile_img_path'];?>' sizes="(max-width: 767px) 767px" alt="<?php echo $v['img_title_mobile'];?>" pch="<?php echo $v['height'];?>" adh="<?php echo $v['height_t'];?>" iph="<?php echo $v['height_m'];?>">
                    <img class="w-full pc_img" src="<?php echo $v['img_path'];?>" srcset='<?php echo $v['img_path'];?> 767w,<?php echo $v['img_path'];?>' sizes="(max-width: 767px) 767px" alt="<?php echo $v['img_title'];?>" pch="<?php echo $v['height'];?>" adh="<?php echo $v['height_t'];?>" iph="<?php echo $v['height_m'];?>">
                    <?php }else{ ?>
                    <img class="w-full mobile_img" src="<?php echo $v['img_path'];?>" srcset='<?php echo $v['img_path'];?> 767w,<?php echo $v['img_path'];?>' sizes="(max-width: 767px) 767px" alt="<?php echo $v['img_title'];?>" pch="<?php echo $v['height'];?>" adh="<?php echo $v['height_t'];?>" iph="<?php echo $v['height_m'];?>">
                    <img class="w-full pc_img" src="<?php echo $v['img_path'];?>" srcset='<?php echo $v['img_path'];?> 767w,<?php echo $v['img_path'];?>' sizes="(max-width: 767px) 767px" alt="<?php echo $v['img_title'];?>" pch="<?php echo $v['height'];?>" adh="<?php echo $v['height_t'];?>" iph="<?php echo $v['height_m'];?>">
                <?php } ?>
                    <?php if($v['img_title'] || $v['img_des'] || $v['button'] || $v['img_link']){ ?>
                    <div class="met-banner-text pc-content" met-imgmask>
                        <div class='container'>
                            <div class='met-banner-text-con p-<?php echo $v['img_text_position'];?>'>
                                <div>
                                    <div>
                                        <?php if($v['img_link']){ ?>
                                        <a href="<?php echo $v['img_link'];?>" title="<?php echo $v['img_des'];?>" class="all-imgmask"     <?php if($v['target']){ ?>target="_blank"<?php } ?>></a>
                                    <?php } ?>
                                        <?php if($v['img_title']){ ?>
                                    <h3 class="animation-slide-top animation-delay-300 font-weight-500" style="color:<?php echo $v['img_title_color'];?>;font-size: <?php echo $v['img_title_fontsize'];?>px;"><?php echo $v['img_title'];?></h3>
                                    <?php } ?>
                                        <?php if($v['img_des']){ ?>
                                    <p class="animation-slide-bottom animation-delay-600" style='color:<?php echo $v['img_des_color'];?>;font-size: <?php echo $v['img_des_fontsize'];?>px;'><?php echo $v['img_des'];?></p>
                                    <?php } ?>
                                            <?php
            $sub = count($v['button']);
            $num = 50;
            
            if(!is_array($v['button']) && $v['button']){
                $v['button'] = explode('|',$v['button']);
            }


            foreach ($v['button'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($v['button'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $btn = $val;
            ?>
                                        <a href="<?php echo $btn['but_url'];?>" title="<?php echo $btn['but_text'];?>"     <?php if($btn['target']){ ?>target="_blank"<?php } ?> class="btn slick-btn     <?php if($btn[is_mobile]==1){ ?>pc<?php }else if($btn[is_mobile]==2){ ?>mobile<?php } ?>" infoset="<?php echo $btn['but_text_size'];?>|<?php echo $btn['but_text_color'];?>|<?php echo $btn['but_text_hover_color'];?>|<?php echo $btn['but_color'];?>|<?php echo $btn['but_hover_color'];?>|<?php echo $btn['but_x'];?>|<?php echo $btn['but_y'];?>"><?php echo $btn['but_text'];?></a>
                                    <?php }?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                    <?php if($v['img_title_mobile'] || $v['img_des_mobile'] || $v['button'] || $v['img_link']){ ?>
                    <div class="met-banner-text mobile-content" met-imgmask>
                        <div class='container'>
                            <div class='met-banner-text-con p-<?php echo $v['img_text_position_mobile'];?> '>
                                <div>
                                    <div>
                                        <?php if($v['img_link']){ ?>
                                        <a href="<?php echo $v['img_link'];?>" title="<?php echo $v['img_des'];?>" class="all-imgmask"     <?php if($v['target']){ ?>target="_blank"<?php } ?>></a>
                                    <?php } ?>
                                        <?php if($v['img_title_mobile']){ ?>
                                    <h3 class="animation-slide-top animation-delay-300 font-weight-500" style="color:<?php echo $v['img_title_color_mobile'];?>;font-size: <?php echo $v['img_title_fontsize_mobile'];?>px;"><?php echo $v['img_title_mobile'];?></h3>
                                    <?php } ?>
                                        <?php if($v['img_des_mobile']){ ?>
                                    <p class="animation-slide-bottom animation-delay-600" style='color:<?php echo $v['img_des_color_mobile'];?>;font-size: <?php echo $v['img_des_fontsize_mobile'];?>px;'><?php echo $v['img_des_mobile'];?></p>
                                    <?php } ?>
                                            <?php
            $sub = count($v['button']);
            $num = 50;
            
            if(!is_array($v['button']) && $v['button']){
                $v['button'] = explode('|',$v['button']);
            }


            foreach ($v['button'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($v['button'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $btn = $val;
            ?>
                                        <a href="<?php echo $btn['but_url'];?>" title="<?php echo $btn['but_text'];?>"     <?php if($btn['target']){ ?>target="_blank"<?php } ?> class="btn slick-btn     <?php if($btn[is_mobile]==1){ ?>pc<?php }else if($btn[is_mobile]==2){ ?>mobile<?php } ?>" infoset="<?php echo $btn['but_text_size'];?>|<?php echo $btn['but_text_color'];?>|<?php echo $btn['but_text_hover_color'];?>|<?php echo $btn['but_color'];?>|<?php echo $btn['but_hover_color'];?>|<?php echo $btn['but_x'];?>|<?php echo $btn['but_y'];?>"><?php echo $btn['but_text'];?></a>
                                    <?php }?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        <?php endforeach;?>
    </div>
</div>
<?php }else{ ?>
<?php
    $type=strtolower(trim('current'));
    $cid=$data['classnow'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
<div class="met-banner-ny vertical-align text-center" m-id="banner">
        <?php if($m['module']==1){ ?>
        <h2 class="vertical-align-middle"><?php echo $m['name'];?></h2>
        <?php }else{ ?>
        <h3 class="vertical-align-middle"><?php echo $m['name'];?></h3>
    <?php } ?>
</div>
<?php endforeach;?>
<?php } ?>
    <?php if($data['classnow']<>10001){ ?>
        <?php if($data['name']){ ?>
            <?php if($lang['tagshow_2']){ ?>
<?php
    $type=strtolower(trim('current'));
    $cid=$data['releclass1'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
<section class="met-column-nav" m-id="subcolumn_nav" m-type="nocontent">
    <div class="container">
        <div class="row">
                <?php if($m['sub']){ ?>
                <ul class="clearfix met-column-nav-ul text-xs-center">
                    <?php
    $type=strtolower(trim('current'));
    $cid=$data['releclass1'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="active";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
                        <?php if($m['module']<>1){ ?>
                        <li>
                            <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $lang['sub_all'];?>"     <?php if($data['classnow']==$m['id']){ ?>class="active"<?php } ?>><?php echo $lang['sub_all'];?></a>
                        </li>
                        <?php }else{ ?>
                            <?php if($m[isshow]){ ?>
                        <li>
                            <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $m['name'];?>"     <?php if($data['classnow']==$m['id']){ ?>class="active"<?php } ?>><?php echo $m['name'];?></a>
                        </li>
                        <?php } ?>
                    <?php } ?>
                    <?php
    $type=strtolower(trim('son'));
    $cid=$m['id'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="active";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
                            <?php if($m['sub']){ ?>
                            <li class="dropdown">
                                <a href="<?php echo $m['url'];?>" title="<?php echo $m['name'];?>" class="dropdown-toggle     <?php if($data['classnow']==$m['id']){ ?>active<?php } ?>" data-toggle="dropdown"><?php echo $m['name'];?></a>
                                <div class="dropdown-menu animate">
                                        <?php if($m['module']<>1){ ?>
                                        <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $lang['sub_all'];?>" class='dropdown-item <?php echo $m['class'];?>'><?php echo $lang['sub_all'];?></a>
                                    <?php } ?>
                                        <?php if($m['isshow'] && $m['module']==1){ ?>
                                        <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $m['name'];?>" class='dropdown-item <?php echo $m['class'];?>'><?php echo $m['name'];?></a>
                                    <?php } ?>
                                    <?php
    $type=strtolower(trim('son'));
    $cid=$m['id'];
    $num = 1000;
    if(!isset($column)){
        $column = load::sys_class('label', 'new')->get('column');
    }
    $result = $column->get_column_by_type($type,$cid,$num);
    
    $sub = count($result);
    foreach($result as $index=>$m):
        if($m['display'] == 1){
            continue;
        }
          
        if($data['module'] == 10001){
            $m['url'] = str_replace(array('../',$_M['url']['site']),'',$m['url']);
            $m['content'] = str_replace(array('../',$_M['url']['site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['site']),'',$m['columnimg']);
        }
        
        if($data['module'] == 404){
            $m['url'] = str_replace(array('../',$_M['url']['web_site']),'',$m['url']);
            if(!strstr($m['url'],'http')){
                $m['url'] = $_M['url']['web_site'] . $m['url'];
            }
            $m['content'] = str_replace(array('../',$_M['url']['web_site']),'',$m['content']);
            $m['indeximg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['indeximg']);
            $m['columnimg'] = str_replace(array('../',$_M['url']['web_site']),'',$m['columnimg']);
        }
        
        $hides = 1;
        $hide = explode("|",$hides);
        $m['_index']= $index;
        if($data['classnow']==$m['id'] || $data['class1']==$m['id'] || $data['class2']==$m['id'] || $data['releclass'] == $m['id']){
            $m['class']="active";
        }else{
            $m['class'] = '';
        }
        if(in_array($m['name'],$hide)){
            unset($m['id']);
            $m['hide'] = $hide;
            $m['sub'] = 0;
        }


        if(substr(trim($m['icon']),0,1) == 'm' || substr(trim($m['icon']),0,1) == ''){
            $m['icon'] = 'icon fa-pencil-square-o '.$m['icon'];
        }
        $m['urlnew'] = $m['new_windows'] ? "target='_blank'" :"target='_self'";
        $m['urlnew'] = $m['nofollow'] ? $m['urlnew']." rel='nofollow'" :$m['urlnew'];
        $m['_first']=$index==0 ? true:false;
        $m['_last']=$index==(count($result)-1)?true:false;
        $$m = $m;
        
        $result[$index] = $m;
?>
                                    <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $m['name'];?>" class='dropdown-item <?php echo $m['class'];?>'><?php echo $m['name'];?></a>
                                    <?php endforeach;?>
                                </div>
                            </li>
                            <?php }else{ ?>
                            <li>
                                <a href="<?php echo $m['url'];?>" <?php echo $m['urlnew'];?> title="<?php echo $m['name'];?>" class='<?php echo $m['class'];?>'><?php echo $m['name'];?></a>
                            </li>
                        <?php } ?>
                    <?php endforeach;?>
                    <?php endforeach;?>
                </ul>
            <?php } ?>
                <?php if($data['module']>=2 && $data['module']<=6){ ?>
            <div class="met-col-search">
                        <?php
            $result = load::sys_class('label', 'new')->get('search')->get_search_column($data);
            echo $result;
        ?>
            </div>
            <?php } ?>
        </div>
    </div>
</section>
<?php endforeach;?>
<?php } ?>
    <?php }else{ ?>
            <?php if($lang['tagshow_1']){ ?>
<section class="met-crumbs hidden-sm-down" m-id='met_position' m-type='nocontent'>
    <div class="container">
        <div class="row">
            <div class="border-bottom clearfix">
                <ol class="breadcrumb m-b-0 subcolumn-crumbs breadcrumb-arrow">
                    <li class='breadcrumb-item'>
                        <?php echo $lang['position_text'];?>
                    </li>
                    <li class='breadcrumb-item'>
                        <a href="<?php echo $c['met_weburl'];?>" title="<?php echo $word['home'];?>" class='icon wb-home'><?php echo $word['home'];?></a>
                    </li>
                    <?php
    $cid = 0;
    if(!$cid){
        $cid = $data['classnow'];
    }
    $location = load::sys_class('label', 'new')->get('column')->get_class123_reclass($cid);
    $location_data = array();
    $location_data[0] = $location['class1'];
    $location_data[1] = $location['class2'];
    $location_data[2] = $location['class3'];
    unset($location);
    foreach($location_data as $index=> $v):
?>
                        <?php if($v){ ?>
                        <li class='breadcrumb-item'>
                            <a href="<?php echo $v['url'];?>" title="<?php echo $v['name'];?>" class='<?php echo $v['class'];?>'><?php echo $v['name'];?></a>
                        </li>
                    <?php } ?>
                    <?php endforeach;?>
                </ol>
            </div>
        </div>
    </div>
</section>
<?php } ?>
    <?php } ?>
<?php } ?>
<?php } ?>
<?php
$url['app_tem']=M_NAME=='pay'||M_NAME=='shop'?'met/':'';
if(file_exists(PATH_OWN_FILE.'templates/'.$url['app_tem'].'css/metinfo.css')){
	$own_metinfo_css_filemtime = filemtime(PATH_OWN_FILE.'templates/'.$url['app_tem'].'css/metinfo.css');
?>
<link href="<?php echo $_M['url']['own_tem'];?>css/metinfo.css?<?php echo $own_metinfo_css_filemtime;?>" rel='stylesheet' type='text/css'>
<?php } ?>