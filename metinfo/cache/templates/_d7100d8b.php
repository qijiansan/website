<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
?>
<div class="met-safe-set">
  <form method="POST" action="<?php echo $url['own_name'];?>c=index&a=doSaveSetup" class="info-form mt-3" data-submit-ajax="1"
    id="safe-form" data-validate_order="#safe-form">
    <div class="metadmin-fmbx">
      <h3 class="example-title"><?php echo $word['safety_efficiency'];?></h3>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['setimgrename'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <input type="checkbox" data-plugin="switchery" name="met_img_rename" value="0" />
            <span class="text-help ml-2"><?php echo $word['setimgrename1'];?>，<?php echo $word['setimgrename2'];?></span>
          </div>
        </dd>
      </dl>
      <dl>
        <dt>
          <label class='form-control-label'><?php echo $word['disableCssJs'];?></label>
        </dt>
        <dd>
          <div class='form-group clearfix'>
            <input type="checkbox" data-plugin="switchery" name="disable_cssjs" value='0' >
            <span class="text-help ml-2"><?php echo $word['disableCssJsTips'];?></span>
          </div>
        </dd>
      </dl>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['admin_log'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <input type="checkbox" data-plugin="switchery" name="met_logs" value="0" />

          </div>
        </dd>
      </dl>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['access_type'];?></label>
        </dt>
        <dd>
         <div class="form-group clearfix">
            <div class="custom-control custom-radio ">
                <input type="radio" id="access_type1" name="access_type" value="1" class="custom-control-input" data-checked="<?php echo $c['access_type'];?>">
                <label class="custom-control-label" for="access_type1"><?php echo $word['access_type1'];?></label>
            </div>
            <div class="custom-control custom-radio ">
                <input type="radio" id="access_type2" name="access_type" value="2" class="custom-control-input">
                <label class="custom-control-label" for="access_type2"><?php echo $word['access_type2'];?></label>
            </div>
        </div>
        </dd>
      </dl>
      <div class="delete-file" style="display: none;">
        <div class="clearfix">
          <h3 class="example-title float-left"><?php echo $word['unitytxt_69'];?></h3>
          <span class="text-help ml-2 mr-2 float-right" style="line-height: 39px;"><?php echo $word['setsafeupdate1'];?></span>
        </div>
        <dl>
          <dt>
            <label class="form-control-label"><?php echo $word['setsafeinstall'];?></label>
          </dt>
          <dd>
            <div class="form-group clearfix">
              <button class="btn btn-primary btn-delete"><?php echo $word['delete'];?></button>
            </div>
          </dd>
        </dl>
      </div>
      <h3 class="example-title"><?php echo $word['setsafeadminname1c'];?><?php echo $site_admin;?></h3>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['setsafeadminname'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <input type="text" name="met_adminfile" class="form-control" />
          </div>
        </dd>
      </dl>
      <h3 class="example-title"><?php echo $word['logincode'];?></h3>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['setsafeadmin'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <input type="checkbox" data-plugin="switchery" name="met_login_code" value="0" />
          </div>
        </dd>
      </dl>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['setsafemember'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <input type="checkbox" data-plugin="switchery" name="met_memberlogin_code" value="0" />
            <span class="text-help ml-2"><?php echo $word['upfiletips24'];?></span>
          </div>
        </dd>
      </dl>
      <h3 class="example-title"><?php echo $word['fdincSlash'];?></h3>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['fdincSlash'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <textarea name="met_fd_word" type="text" rows="5" class="form-control mr-2"></textarea>
            <span class="text-help ml-2"><?php echo $word['setbasicTip5'];?></span>
          </div>
        </dd>
      </dl>
      <h3 class="example-title"><?php echo $word['unitytxt_70'];?></h3>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['setbasicUploadMax'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <input type="text" name="met_file_maxsize" class="form-control w-auto" />
            <span class="text-help ml-2"><?php echo $word['systips15'];?></span>
          </div>
        </dd>
      </dl>
      <dl>
        <dt>
          <label class="form-control-label"><?php echo $word['setbasicEnableFormat'];?></label>
        </dt>
        <dd>
          <div class="form-group clearfix">
            <textarea name="met_file_format" type="text" rows="5" class="form-control mr-2"></textarea>
            <span class="text-help ml-2"><?php echo $word['setbasicTip5'];?></span>
          </div>
        </dd>
      </dl>
      <dl>
        <dt></dt>
        <dd>
          <button type="submit" class="btn btn-primary"><?php echo $word['Submit'];?></button>
        </dd>
      </dl>
    </div>
  </form>
</div>