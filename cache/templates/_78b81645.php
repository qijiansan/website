<?php defined('IN_MET') or exit('No permission');?>
<style type="text/css">
.onlinebox_one{background-color: transparent;box-shadow: none;}
.onlinebox_one .online-item{width: 68px;height: 60px;margin-bottom: 2px; padding-top: 12px; position: relative;display: block;color: #ffffff;}
.onlinebox_one .online-item:first-child{height: 20px;padding-top: 0px;}
.onlinebox_one .online-item:nth-child(2){border-radius: 5px 5px 0px 0px;}
.onlinebox_one .online-item:last-child{border-radius: 0px 0px 5px 5px;}
.onlinebox_one .online-item i{font-size: 18px;}
.onlinebox_one .onlinebox-open{border-radius: 5px;font-size: 22px;}
.onlinebox_one .close{font-style: initial;color: #fff;opacity: 1;position: absolute; right: -7px; top: -7px; border-radius: 50%; width: 15px;
    height: 15px; display: block;font-size: 14px !important; font-family: arial; }
.onlinebox .onlinebox-open {display: block; cursor: pointer; padding: 0 10px; font-size: 18px; line-height: 40px; color: #fff; }
@media (min-width: 768px){
.onlinebox_one .onlinebox-open{display: none;}
.onlinebox_one .online-item:first-child{display: none;}
}
@media (max-width: 767px){
.onlinebox_one .online-item:first-child{border-radius: 5px 5px 0px 0px;}
.onlinebox_one .onlinebox_one_list{display: none;}
.onlinebox_one .online-item{width: 54px;height: 50px;font-size: 12px;padding-top: 6px;}
.onlinebox_one .online-item i{font-size: 14px;}
}
</style>
<?php $hash_erweima=0; ?>
<div id='onlinebox'  class="onlinebox onlinebox_one" m-type='online' m-id='online'>
    <div class="onlinebox-open text-xs-center" id="onlinebox-open" style="background:<?php echo $c['met_online_color'];?>;"> <i class="fa fa-comments-o"></i>
    </div>
            <?php
            $sub = count($data['online_list']);
            $num = 50;
            
            if(!is_array($data['online_list']) && $data['online_list']){
                $data['online_list'] = explode('|',$data['online_list']);
            }


            foreach ($data['online_list'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($data['online_list'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $val = $val;
            ?><?php }?>
        <?php if($sub){ ?>
    <div class="onlinebox_one_list">
        <a class="online-item text-xs-center" style="background:<?php echo $c['met_online_color'];?>;" href="javascript:void(0)">
            <?php echo $word['Online'];?> <i class="close" style="background:<?php echo $c['met_online_color'];?>;">x</i>
        </a>
                <?php
            $sub = count($data['online_list']);
            $num = 50;
            
            if(!is_array($data['online_list']) && $data['online_list']){
                $data['online_list'] = explode('|',$data['online_list']);
            }


            foreach ($data['online_list'] as $index => $val) {
                if($index >= $num){
                    break;
                }

                if(is_array($val)){
                    $val['_index'] = $index;
                    $val['_first'] = $index == 0 ? true : false;
                    $val['_last']  = $index == (count($data['online_list'])-1) ? true : false;
                    $val['sub']    = $sub;
                }

                $v = $val;
            ?>
                <?php if($v['type']==4){ ?>
            <?php $hash_erweima=1; ?>
            <a class="online-item text-xs-center met-online-weixin" style="background-color: <?php echo $c['met_online_color'];?>;" href="javascript:void(0)" data-index="<?php echo $v['_index'];?>" data-plugin="webuiPopover" data-trigger="hover" data-animation="pop"     <?php if($c['met_online_type']==1 || $c['met_online_type']==3){ ?>
            data-placement='right'
            <?php }else{ ?>
            data-placement='left'
            <?php } ?>
            data-content="<img src='<?php echo $v['url'];?>' alt='<?php echo $c['met_webname'];?>' width='100' height='100'>">
                <i class="<?php echo $v['icon'];?>"></i>
                <p class="m-b-0"><?php echo $v['name'];?></p>
            </a>
            <?php }else if($v['type']==7){ ?>
            <a href="<?php echo $v['value'];?>" title="<?php echo $v['name'];?>" class="online-item text-xs-center" target="_blank" style="background-color: <?php echo $c['met_online_color'];?>;">
                <i class="<?php echo $v['icon'];?>"></i>
                <p class="m-b-0"><?php echo $v['name'];?></p>
            </a>
            <?php }else{ ?>
            <a href="<?php echo $v['url'];?>" title="<?php echo $v['value'];?>" class="online-item text-xs-center" target="_blank" style="background-color: <?php echo $c['met_online_color'];?>;">
                <i class="<?php echo $v['icon'];?>"></i>
                <p class="m-b-0"><?php echo $v['name'];?></p>
            </a>
        <?php } ?>
        <?php }?>
    </div>
    <?php } ?>
</div>
<script>
$(function(){
        <?php if($hash_erweima){ ?>
    metFileLoadFun([
      '<?php echo $data['url']['web_site'];?>app/system/include/static2/vendor/webui-popover/webui-popover.min.css',
      '<?php echo $data['url']['web_site'];?>app/system/include/static2/vendor/webui-popover/jquery.webui-popover.min.js',
      '<?php echo $data['url']['web_site'];?>app/system/include/static2/js/Plugin/webui-popover.min.js'
    ],function(){
      return typeof $.fn.webuiPopover=='function';
    },function(){
      $('.met-online-weixin').webuiPopover();
    });
    <?php } ?>
    $("#onlinebox-open").click(function(){
        $("#onlinebox").find(".onlinebox_one_list").show();
        $(this).hide();
    });
    $(".close").click(function(){
      $("#onlinebox").find(".onlinebox_one_list").hide();
      $("#onlinebox-open").show();
    });
});
</script>