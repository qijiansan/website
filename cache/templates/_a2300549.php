<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
$head_tab_active=isset($data['head_tab_active'])?$data['head_tab_active']:(isset($head_tab_active)?$head_tab_active:0);
$content_time=time();
?>
    <?php if($head_tab){ ?>
<nav class="nav nav-pills mb-3 met-headtab"    <?php if($head_tab_ajax){ ?>data-ajaxchange='1'<?php } ?>     <?php if($head_tab_reload){ ?>data-reload="1"<?php } ?>>
	        <?php
            $sub = count($head_tab);
            $num = 50;
            
            if(!is_array($head_tab) && $head_tab){
                $head_tab = explode('|',$head_tab);
            }


            foreach ($head_tab as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($head_tab)-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $v = $val;
            ?>
  	<a class="nav-link    <?php if($head_tab_active==$v['_index']){ ?>active<?php } ?>"    <?php if($head_tab_ajax){ ?>data-url="<?php echo $v['url'];?>" data-toggle="pill" href="#met-headtab-content-<?php echo $content_time;?>-<?php echo $v['_index'];?>"<?php }else{ ?>href="<?php echo $v['url'];?>"<?php } ?>    <?php if($v['reload']){ ?>data-reload="1"<?php } ?>    <?php if($v['target']){ ?>target="_blank"<?php } ?>><?php echo $v['title'];?></a>
  	<?php }?>
</nav>
    <?php if($head_tab_ajax){ ?>
<?php $head_tab_url=$head_tab[$head_tab_active]['url']; ?>
<div class="tab-content">
	        <?php
            $sub = count($head_tab);
            $num = 50;
            
            if(!is_array($head_tab) && $head_tab){
                $head_tab = explode('|',$head_tab);
            }


            foreach ($head_tab as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($head_tab)-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $v = $val;
            ?>
	<div class="tab-pane fade    <?php if($v['_index']==$head_tab_active){ ?>show active<?php } ?>" id="met-headtab-content-<?php echo $content_time;?>-<?php echo $v['_index'];?>">
	</div>
	<?php }?>
</div>
<?php } ?>
<?php
unset($head_tab_ajax);
unset($head_tab_active);
unset($head_tab);
?>
<?php } ?>