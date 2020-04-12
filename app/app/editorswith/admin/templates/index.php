<!--<?php
# MetInfo Enterprise Content Management System
# Copyright (C) MetInfo Co.,Ltd (http://www.metinfo.cn). All rights reserved.
defined('IN_MET') or exit('No permission');
require $this->template('ui/head');
echo <<<EOT
-->
<form method="POST" name="myform" class="ui-from" action="{$_M[url][own_form]}&a=doeditorsave" target="_self">
	<div class="v52fmbx">
		<h3 class="v52fmbx_hr">编辑器切换</h3>
		<dl>
			<dt>编辑器选择：</dt>
			<dd class="ftype_radio">
				<div class="fbox"
<!--
EOT;
 foreach($editorlist as $key=>$val){
 	$val['checked']=$val['m_name']==$_M['config']['met_editor']?'checked':'';
echo <<<EOT
-->
					<label><input name="editor" type="radio" value="{$val['m_name']}" {$val['checked']}>{$val['appname']}</label>


<!--
EOT;
}
echo <<<EOT
-->

					<div style="color:red;margin-top: 10px;">
					<a href="http://bbs.metinfo.cn/question/4177" target="_blank">markdown编辑器指导教程</a><br>温馨提示：由于百度编辑器和markdown编辑器源代码差异，可能使用markdown编辑器修改已发布内容时候，需要对内容重新排版。
					</div>
				</div>
			</dd>
		</dl>
		<dl class="noborder">
			<dt>&nbsp;</dt>
			<dd>
				<input type="submit" name="submit" value="保存" class="submit">
			</dd>
		</dl>
	</div>
</form>
<!--
EOT;
require $this->template('ui/foot');
# This program is an open source system, commercial use, please consciously to purchase commercial license.
# Copyright (C) MetInfo Co., Ltd. (http://www.metinfo.cn). All rights reserved.
?>