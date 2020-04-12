<!--<?php
# MetInfo Enterprise Content Management System 
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved. 

defined('IN_MET') or exit('No permission');//保持入口文件，每个应用模板都要添加
//PHP代码
require_once $this->template('ui/head');//引用头部UI文件
echo <<<EOT
-->
<form method="POST" class="ui-from" name="myform" action="{$_M[url][own_form]}a=doadmin" target="_self">
	<div class="v52fmbx">
		<dl>
			<dd class="ftype_description">
		     网站通过robots协议告诉搜索引擎哪些页面可以抓取，哪些页面不能抓取。
			</dd>
        </dl>
	   <dl>
		    <dd>
		       <a href="http://baike.baidu.com/view/9274458.htm" target="_blank">什么是robots协议？</a>&nbsp&nbsp
			   <a href="{$_M[url][site]}robots.txt?5345435" target="_blank">我的robots协议</a>
			</dd>
		</dl>
		<dl>
			<dt>Robots.txt文件</dt>
			<dd class="ftype_textarea">
  			    <div class="fbox">
					<textarea name="put_content" placeholder="" style="height:300px;" >{$read}</textarea>
				</div>	
			</dd>
        </dl>
		<dl class="noborder">
			<dt> </dt>
			<dd>
				<input type="submit" name="submit" value="保存" class="submit">
			</dd>
		</dl>
	</div>
</form>
<!--
EOT;
require_once $this->template('ui/foot');//引用底部UI文件
# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
?>