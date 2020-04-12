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