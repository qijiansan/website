<?php

class install {
	public function dosql() {
		global $_M;
		$query = "select * from {$_M['table']['applist']} where no='10079'";
		$stall = DB::get_one($query);
		$query ="ALTER TABLE  `{$_M['table']['templates']}` ADD  `bigclass` INT( 10 ) NOT NULL DEFAULT  '0' AFTER  `lang`";
		DB::query($query);
		$time = time();
		if(!$stall){
			$query="INSERT INTO {$_M['table']['applist']} set no='10079',ver='4.0',m_name='temtool',m_class='temtool',m_action='dotemlist',appname='模板制作助手(6.0.0)',info='模板制作必备工具！能够在线配置自定义标签，实现灵活且体验好的模板。能够在线添加自己制作的模板（除应用市场获取外唯一添加模板的渠道）。能够提供模板制作相关资源、指引甚至培训。',updatetime='{$time}'";
			DB::query($query);
		}else{
			$query="update {$_M['table']['applist']} set ver='4.0',updatetime='{$time}' where no='10079'";
			DB::query($query);
		}
		return 'complete';
	}
}

?>