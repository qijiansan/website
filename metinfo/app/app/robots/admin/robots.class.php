<?php
defined('IN_MET') or exit('No permission');//所有文件都是已这句话开头，保证系统单入口。

load::sys_class('admin');//包含后台基类，“.class.php”可以省略。

class robots extends admin {//继承后台基类。类名称要与文件名一致
     
    public function doindex(){//定义自己的方法
        global $_M;//引入全局数组
		
		$read = file_get_contents("../robots.txt");	
		
	   require $this->template('own/index');//引入模板文件，必须global $_M
    }
	 public function doadmin(){//定义自己的方法
        global $_M;//引入全局数组
		$put_content = $_M['form']['put_content'];
		file_put_contents("../robots.txt",$put_content);
	   turnover("{$_M['url']['own_form']}a=doindex","操作成功");
	 }
} 
?>