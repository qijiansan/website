#MetInfo.cn Created version:7.0.0 
#http://139.9.152.211/
#met_
# --------------------------------------------------------


DROP TABLE IF EXISTS met_admin_array;
CREATE TABLE `met_admin_array` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `array_name` varchar(255) NOT NULL DEFAULT '',
  `admin_type` text,
  `admin_ok` int(11) NOT NULL DEFAULT '0',
  `admin_op` varchar(30) DEFAULT 'metinfo',
  `admin_issueok` int(11) DEFAULT '0',
  `admin_group` int(11) DEFAULT '0',
  `user_webpower` int(11) DEFAULT '0',
  `array_type` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  `langok` varchar(255) DEFAULT 'metinfo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO met_admin_array VALUES('1','管理员','metinfo','1','metinfo','0','10000','256','2','metinfo','metinfo');
INSERT INTO met_admin_array VALUES('2','代理商','','0','','0','0','2','1','cn','');
INSERT INTO met_admin_array VALUES('4','Member','','0','','0','0','1','1','en','');
INSERT INTO met_admin_array VALUES('5','Agents','','0','','0','0','2','1','en','');

DROP TABLE IF EXISTS met_admin_column;
CREATE TABLE `met_admin_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `bigclass` int(11) DEFAULT '0',
  `field` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `list_order` int(11) DEFAULT '0',
  `icon` varchar(255) DEFAULT '',
  `info` text,
  `display` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO met_admin_column VALUES('1','lang_administration','manage','0','1301','1','0','manage','','1');
INSERT INTO met_admin_column VALUES('2','lang_htmColumn','column','0','1201','1','1','column','','1');
INSERT INTO met_admin_column VALUES('3','lang_feedback_interaction','','0','1202','1','2','feedback-interaction','','1');
INSERT INTO met_admin_column VALUES('4','lang_seo_set_v6','seo','0','1404','1','3','seo','','1');
INSERT INTO met_admin_column VALUES('5','lang_appearance','app/met_template','0','1405','1','4','template','','1');
INSERT INTO met_admin_column VALUES('6','lang_myapp','myapp','0','1505','1','5','application','','1');
INSERT INTO met_admin_column VALUES('7','lang_the_user','','0','1506','1','6','user','','1');
INSERT INTO met_admin_column VALUES('8','lang_safety','','0','1200','1','7','safety','','1');
INSERT INTO met_admin_column VALUES('9','lang_multilingual','language','0','1002','1','8','multilingualism','','1');
INSERT INTO met_admin_column VALUES('10','lang_unitytxt_39','','0','1100','1','9','setting','','1');
INSERT INTO met_admin_column VALUES('11','cooperation_platform','partner','0','1508','1','10','partner','','1');
INSERT INTO met_admin_column VALUES('21','lang_mod8','feed_feedback_8','3','1509','2','0','feedback','','1');
INSERT INTO met_admin_column VALUES('22','lang_mod7','feed_message_7','3','1510','2','1','message','','1');
INSERT INTO met_admin_column VALUES('23','lang_mod6','feed_job_6','3','1511','2','2','recruit','','1');
INSERT INTO met_admin_column VALUES('24','lang_customerService','online','3','1106','2','3','online','','1');
INSERT INTO met_admin_column VALUES('25','lang_indexlink','link','4','1406','2','0','link','','0');
INSERT INTO met_admin_column VALUES('26','lang_member','user','7','1601','2','0','member','','1');
INSERT INTO met_admin_column VALUES('27','lang_managertyp2','admin/user','7','1603','2','1','administrator','','1');
INSERT INTO met_admin_column VALUES('28','lang_safety_efficiency','safe','8','1004','2','0','safe','','1');
INSERT INTO met_admin_column VALUES('29','lang_data_processing','databack','8','1005','2','1','databack','','1');
INSERT INTO met_admin_column VALUES('30','lang_upfiletips7','webset','10','1007','2','0','information','','1');
INSERT INTO met_admin_column VALUES('31','lang_indexpic','imgmanage','10','1003','2','1','picture','','1');
INSERT INTO met_admin_column VALUES('32','lang_banner_manage','banner','10','1604','2','2','banner','','1');
INSERT INTO met_admin_column VALUES('33','lang_the_menu','menu','10','1605','2','3','bottom-menu','','1');
INSERT INTO met_admin_column VALUES('34','lang_checkupdate','update','37','1104','2','4','update','','0');
INSERT INTO met_admin_column VALUES('35','lang_appinstall','appinstall','6','1800','2','0','appinstall','','0');
INSERT INTO met_admin_column VALUES('36','lang_dlapptips6','appuninstall','6','1801','2','0','appuninstall','','0');
INSERT INTO met_admin_column VALUES('37','lang_top_menu','top_menu','0','1900','1','0','top_menu','','0');
INSERT INTO met_admin_column VALUES('38','lang_clearCache','clear_cache','37','1901','2','0','clear_cache','','0');
INSERT INTO met_admin_column VALUES('39','lang_funcCollection','function_complete','37','1902','2','0','function_complete','','0');
INSERT INTO met_admin_column VALUES('40','lang_environmental_test','environmental_test','37','1903','2','0','environmental_test','','0');
INSERT INTO met_admin_column VALUES('41','lang_navSetting','navSetting','6','1904','2','0','navSetting','','0');
INSERT INTO met_admin_column VALUES('42','lang_style_settings','style_settings','5','1905','2','0','style_settings','','0');

DROP TABLE IF EXISTS met_admin_logs;
CREATE TABLE `met_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `module` varchar(255) DEFAULT '',
  `current_url` varchar(255) DEFAULT '',
  `brower` varchar(255) DEFAULT '',
  `result` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `client` varchar(50) DEFAULT '',
  `time` int(11) DEFAULT '0',
  `user_agent` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_admin_table;
CREATE TABLE `met_admin_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_type` text,
  `admin_id` char(20) NOT NULL DEFAULT '',
  `admin_pass` char(64) NOT NULL DEFAULT '',
  `admin_name` varchar(30) NOT NULL DEFAULT '',
  `admin_sex` tinyint(1) DEFAULT '1',
  `admin_tel` varchar(20) DEFAULT '',
  `admin_mobile` varchar(20) DEFAULT '',
  `admin_email` varchar(150) DEFAULT '',
  `admin_qq` varchar(12) DEFAULT '',
  `admin_msn` varchar(40) DEFAULT '',
  `admin_taobao` varchar(40) DEFAULT '',
  `admin_introduction` text,
  `admin_login` int(11) DEFAULT '0',
  `admin_modify_ip` varchar(20) DEFAULT '',
  `admin_modify_date` datetime DEFAULT NULL,
  `admin_register_date` datetime DEFAULT NULL,
  `admin_approval_date` datetime DEFAULT NULL,
  `admin_ok` int(11) DEFAULT '0',
  `admin_op` varchar(30) DEFAULT 'metinfo',
  `admin_issueok` int(11) DEFAULT '0',
  `admin_group` int(11) DEFAULT '0',
  `companyname` varchar(255) DEFAULT '',
  `companyaddress` varchar(255) DEFAULT '',
  `companyfax` varchar(255) DEFAULT '',
  `usertype` int(11) DEFAULT '0',
  `checkid` int(1) DEFAULT '0',
  `companycode` varchar(50) DEFAULT '',
  `companywebsite` varchar(50) DEFAULT '',
  `cookie` text,
  `admin_shortcut` text,
  `lang` varchar(50) DEFAULT '',
  `content_type` int(11) DEFAULT '0',
  `langok` varchar(255) DEFAULT 'metinfo',
  `admin_login_lang` varchar(50) DEFAULT '' COMMENT '登录默认语言',
  `admin_check` int(11) DEFAULT '0' COMMENT '发布信息需要审核才能正常显示',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_admin_table VALUES('1','metinfo','qijiansan','00b735b6f84b4d43011d3a3e911e75b4','','1','','15531647707','qijiansan@163.com','','','','创始人','2','119.250.129.89','2020-04-11 12:32:46','0000-00-00 00:00:00','','1','metinfo','0','10000','','','','3','0','','','{\"time\":1586579905,\"metinfo_admin_name\":\"qijiansan\",\"metinfo_admin_pass\":\"00b735b6f84b4d43011d3a3e911e75b4\",\"metinfo_admin_id\":\"1\",\"metinfo_admin_type\":\"3\",\"metinfo_admin_pop\":\"metinfo\",\"metinfo_admin_time\":\"1586579566\",\"metinfo_admin_lang\":\"metinfo\",\"languser\":\"cn\"}','[{\"name\":\"lang_skinbaseset\",\"url\":\"system/basic.php?anyid=9&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1001\",\"type\":\"2\",\"list_order\":\"10\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_skinbaseset\"},{\"name\":\"lang_indexcolumn\",\"url\":\"column/index.php?anyid=25&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1201\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_indexcolumn\"},{\"name\":\"lang_unitytxt_75\",\"url\":\"interface/skin_editor.php?anyid=18&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1101\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_unitytxt_75\"},{\"name\":\"lang_tmptips\",\"url\":\"interface/info.php?anyid=24&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_tmptips\"},{\"name\":\"lang_mod2add\",\"url\":\"content/article/content.php?action=add&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"0\",\"hidden\":\"0\",\"lang\":\"lang_mod2add\"},{\"name\":\"lang_mod3add\",\"url\":\"content/product/content.php?action=add&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":2,\"list_order\":\"0\",\"protect\":0}]','','1','metinfo','','0');

DROP TABLE IF EXISTS met_app_config;
CREATE TABLE `met_app_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appno` int(20) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `value` text,
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_app_plugin;
CREATE TABLE `met_app_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` int(11) DEFAULT '0',
  `no` int(11) DEFAULT '0',
  `m_name` varchar(255) DEFAULT '',
  `m_action` varchar(255) DEFAULT '',
  `effect` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_applist;
CREATE TABLE `met_applist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '0',
  `ver` varchar(50) DEFAULT '',
  `m_name` varchar(50) DEFAULT '',
  `m_class` varchar(50) DEFAULT '',
  `m_action` varchar(50) DEFAULT '',
  `appname` varchar(50) DEFAULT '',
  `info` text,
  `addtime` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT '0',
  `target` int(11) DEFAULT '0',
  `display` int(11) DEFAULT '1',
  `depend` varchar(100) DEFAULT NULL,
  `mlangok` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO met_applist VALUES('1','0','1.0','ueditor','index','doindex','百度编辑器','编辑器','0','0','0','0','','0');
INSERT INTO met_applist VALUES('2','10070','1.4','met_sms','index','doindex','短信功能','短信接口','0','0','0','1','','0');
INSERT INTO met_applist VALUES('3','50002','1.0','met_template','temtool','dotemlist','官方模板管理工具','官方商业模板请在此进行管理操作','0','0','0','1','','1');

DROP TABLE IF EXISTS met_column;
CREATE TABLE `met_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `foldername` varchar(50) DEFAULT '',
  `filename` varchar(50) DEFAULT '',
  `bigclass` int(11) DEFAULT '0',
  `samefile` int(11) DEFAULT '0',
  `module` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `wap_nav_ok` int(11) DEFAULT '0',
  `if_in` int(1) DEFAULT '0',
  `nav` int(1) DEFAULT '0',
  `ctitle` varchar(200) DEFAULT '',
  `keywords` varchar(200) DEFAULT '',
  `content` longtext,
  `description` text,
  `other_info` text,
  `custom_info` text,
  `list_order` int(11) DEFAULT '0',
  `new_windows` varchar(50) DEFAULT '',
  `classtype` int(11) DEFAULT '1',
  `out_url` varchar(200) DEFAULT '',
  `index_num` int(11) DEFAULT '0',
  `access` int(11) DEFAULT '0',
  `indeximg` varchar(255) DEFAULT '',
  `columnimg` varchar(255) DEFAULT '',
  `isshow` int(11) DEFAULT '1',
  `lang` varchar(50) DEFAULT '',
  `namemark` varchar(255) DEFAULT '',
  `releclass` int(11) DEFAULT '0',
  `display` int(11) DEFAULT '0',
  `icon` varchar(100) DEFAULT '',
  `nofollow` int(1) DEFAULT '0',
  `text_size` int(11) DEFAULT '0',
  `text_color` varchar(100) DEFAULT '',
  `thumb_list` varchar(50) DEFAULT '',
  `thumb_detail` varchar(50) DEFAULT '',
  `list_length` int(11) DEFAULT '0',
  `tab_num` int(11) DEFAULT '0',
  `tab_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

INSERT INTO met_column VALUES('1','会员中心','member','','0','0','10','99','0','0','0','0','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('2','站内搜索','search','','76','0','11','99','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','76','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('3','新闻动态','news','','0','0','2','3','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('4','产品展示','product','','0','0','3','2','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('5','电脑&平板','product','','4','0','3','1','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('6','手机','product','','4','0','3','2','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('7','通用配件','product','','4','0','3','3','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('10','笔记本电脑','product','','5','0','3','1','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('11','平板电脑','product','','5','0','3','2','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('12','一体机电脑','product','','5','0','3','3','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('15','台式机电脑','product','','5','0','3','4','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('16','智能手机','product','','6','0','3','1','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('17','畅玩系列','product','','6','0','3','2','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('18','畅想系列','product','','6','0','3','3','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('22','耳机','product','','7','0','3','1','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('23','音箱','product','','7','0','3','2','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('24','移动电源','product','','7','0','3','3','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('25','智能手表','product','','7','0','3','4','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('34','关于我们','about','','0','0','1','1','0','0','0','3','','','','','','','0','0','1','','0','0','','','0','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('35','企业新闻','news','','3','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('36','行业资讯','news','','3','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('37','媒体报道','news','','3','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('38','客户案例','img','','0','0','5','5','0','0','0','1','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('39','公司简介','about','','34','0','1','0','0','0','0','0','','','<h1 style=\"text-align: center;\"><strong>公司简介/about us</strong></h1><p><br/></p><p>米拓企业建站系统（原名：MetInfo企业网站管理系统）自2009年发布至今，已成为众多企业建站的主流工具。</p><p><strong>米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站。</strong></p><p>米拓企业建站系统采用PHP+MySQL架构，支持SQLite数据库，全站内置了SEO搜索引擎优化机制，支持用户自定义语言（全球各种语言），支持可视化编辑管理，拥有企业网站常用的功能模块（简介模块、文章模块、产品模块、下载模块、图片模块、招聘模块、在线留言、反馈系统、在线交流、友情链接、网站地图、会员与权限管理、TAG标签），强大的SEO及伪静态设置功能，支持自定义网站颜色风格，支持按栏目自定义Banner图和数据调用，支持手机底部菜单，支持用户自主二次开发，商业模板支持在线升级。系统内置标准的应用插件开发接口，拥有丰富的免费插件和收费插件，如短信接口、robots文件修改、模板制作助手、小程序、支付接口、商城模块、系统诊所、图片加速、网站广告插件等。无论你是技术大咖还是建站小白，都可以使用MetInfo快速搭建一个功能齐全的响应式专业网站。</p><p>&nbsp;</p><p style=\"text-align: center\"><img src=\"../upload/201801/1516066438664023.jpg\" data-width=\"1180\" width=\"1180\" data-height=\"664\" height=\"664\" alt=\"图片关键词\"/></p><p>我们秉承“为合作伙伴创造价值”的核心价值观，并以“诚实、宽容、创新、服务”为企业精神，通过自主创新和真诚合作为电子商务及信息服务行业创造价值。&nbsp;</p><p><br/></p><p><strong>关于“为合作伙伴创造价值”</strong></p><p>我们认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。</p><p><br/></p><p><strong>关于“诚实、宽容、创新、服务”</strong></p><p>我们认为诚信是一切合作的基础，宽容是解决问题的前提，创新是发展事业的利器，服务是创造价值的根本。</p>','公司简介/about us米拓企业建站系统（原名：MetInfo|米拓企业建站系统）自2009年发布至今，已成为众多企业建站的主流工具。米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站。米拓企业建站系统采用PHP+MySQL架构，','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('42','在线留言','message','','34','0','7','2','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','34','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('43','加入我们','job','','0','0','6','6','0','0','0','1','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('44','在线反馈','feedback','','34','0','8','6','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','34','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('72','资料下载','download','','0','0','4','4','0','0','0','1','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('73','网站地图','sitemap','','76','0','12','28','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','76','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('74','聚合标签','tags','','76','0','13','29','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','76','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('76','特色功能','about1','','0','0','1','7','0','0','0','2','','','','','','','1','0','1','','0','0','','','0','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('77','联系我们','about','lianxiwomenweb','34','0','1','7','0','0','0','0','','','<p><strong>长沙米拓信息技术有限公司</strong></p><p>地址：湖南.长沙.洋湖总部经济区洋湖公馆写字楼12层1219#</p><p>电话：0731-85514433 4000084433</p><p>网址：<a href=\"https://www.mituo.cn\" target=\"_blank\" title=\"米拓建站\" textvalue=\"www.mituo.cn\">www.mituo.cn</a></p>','长沙米拓信息技术有限公司地址：湖南.长沙.洋湖总部经济区洋湖公馆写字楼12层1219#电话：0731-85514433 4000084433网址：www.mituo.cn','','','1','0','2','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('49','Industry information','news','','48','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('48','News','news','','0','0','2','3','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('50','Enterprise News','news','','48','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('51','Media coverage','news','','48','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('52','Online Message','message','','47','0','7','2','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','47','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('45','member','member','','0','0','10','99','0','0','0','0','','','','','','','1','0','1','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('46','search','search','','0','0','11','99','0','0','0','0','','','','','','','1','0','1','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('47','About us','about','','0','0','1','0','0','0','0','3','','','','','','','0','0','1','','0','0','','','0','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('53','Join us','job','','0','0','6','4','0','0','0','1','','','','','','','1','0','1','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('54','Company profile','about','','47','0','1','0','0','0','0','0','','','<h1 style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong>About Us</strong></span></h1><p><br/></p><p>MetCMS (the original name: MetInfo enterprise website management system) has been the mainstream tool for the construction of many small and medium enterprises since its release in 2009. The system uses PHP+Mysql architecture, the station built a SEO search engine optimization mechanism, user interface language support, enterprise web site commonly used function modules (profile module, news module, product module, download module, image module, recruitment module, online message, feedback system, online communication, Links, membership and rights management). Powerful and flexible background management function, visual editing function, pseudo static and static page generation function, personalized module adding function, different columns custom Banner picture function, etc., can create a beautiful and marketing quality website for enterprises.</p><p><br/></p><p style=\"text-align: center\"><img src=\"../upload/201801/1516066438664023.jpg\" data-width=\"1180\" width=\"1180\" data-height=\"664\" height=\"664\" alt=\"MetInfo enterprise content manager system | MetInfo CMS\"/></p><p>We uphold the core values of &quot;create value for partners&quot; and create value for e-commerce and information service industry through independent innovation and sincere cooperation with the spirit of &quot;honesty, tolerance, innovation and service&quot; as the spirit of enterprise.<br/></p><p><br/></p><p><br/></p><p><strong>On &quot;creating value for partners&quot;</strong></p><p>We believe that customers, suppliers, shareholders and employees are all partners and partners who cooperate with themselves. Only by making efforts to create value for partners can we realize their value and develop and succeed.</p><p><br/></p><p><br/></p><p><strong>On &quot;honesty, tolerance, innovation, service&quot;</strong></p><p>We believe that good faith is the basis of all cooperation, tolerance is the prerequisite for solving problems, innovation is the tool for developing the cause, and service is the root of value creation.</p><p><br/></p>','About UsMetCMS (the original name: MetInfo enterprise website management system) has been the mainstream tool for the construction of many small and medium enterprises since its release in 2009. The s','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('55','Prouduct','product','','0','0','3','1','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('56','Computer&Pad','product','','55','0','3','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('57','Mobile phone','product','','55','0','3','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('58','Universal accessories','product','','55','0','3','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('59','Headset','product','','58','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('60','Speakers','product','','58','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('61','Portable source','product','','58','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('62','Intelligent Watch','product','','58','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('63','Mate series','product','','57','0','3','2','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('64','Nova series','product','','57','0','3','1','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('66','Laptop','product','','56','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('67','All-in-one PC','product','','56','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('68','Tablet PC','product','','56','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('69','Desktop PC','product','','56','0','3','0','0','0','0','0','','','','','','','1','0','3','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('70','Case','img','','0','0','5','2','0','0','0','1','','','','','','','1','0','1','','0','0','','','1','en','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('71','feedback','feedback','','47','0','8','4','0','0','0','1','','','','','','','1','0','2','','0','0','','','1','en','','47','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('78','Contact','about','contactusweb','47','0','1','5','0','0','0','0','','','<p><strong>Changsha Mituo Information Technology Co., Ltd.</strong></p><p>Address: 12 floor 1219 Yanghu Headquarters Economic Office&nbsp; Yanghu Public OfficeZone &nbsp;Changsha Hunan&nbsp;Hunan Province China &nbsp;&nbsp;</p><p>Phone: +86-731-85514433 +86-4000084433</p><p>Webstie: www.mituo.cn</p>','Changsha Mituo Information Technology Co., Ltd.Address: 12 floor 1219 Yanghu Headquarters Economic Office  Yanghu Public OfficeZone  Changsha Hunan Hunan Province China   Phone: +86-731-85514433 +86-4','','','1','0','2','','0','0','','','1','en','','0','0','','0','0','','','','0','0','');

DROP TABLE IF EXISTS met_config;
CREATE TABLE `met_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `value` text,
  `mobile_value` text,
  `columnid` int(11) DEFAULT '0',
  `flashid` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=554 DEFAULT CHARSET=utf8;

INSERT INTO met_config VALUES('1','metcms_v','7.0.0','','0','0','metinfo');
INSERT INTO met_config VALUES('2','met_host','api.metinfo.cn','','0','0','metinfo');
INSERT INTO met_config VALUES('3','met_adminfile','9626k1yDhwTy+UEvnusgMWahnI7/uzBEoErEoZbV1jugFg','','0','0','metinfo');
INSERT INTO met_config VALUES('4','met_ch_lang','1','','0','0','metinfo');
INSERT INTO met_config VALUES('5','met_lang_mark','1','','0','0','metinfo');
INSERT INTO met_config VALUES('6','met_admin_type_ok','0','','0','0','metinfo');
INSERT INTO met_config VALUES('7','met_admin_type','cn','','0','0','metinfo');
INSERT INTO met_config VALUES('8','met_sitemap_lang','1','','0','0','metinfo');
INSERT INTO met_config VALUES('9','met_sitemap_not2','1','','0','0','metinfo');
INSERT INTO met_config VALUES('10','met_sitemap_not1','0','','0','0','metinfo');
INSERT INTO met_config VALUES('11','met_sitemap_txt','0','','0','0','metinfo');
INSERT INTO met_config VALUES('12','met_sitemap_xml','1','','0','0','metinfo');
INSERT INTO met_config VALUES('13','met_index_type','cn','','0','0','metinfo');
INSERT INTO met_config VALUES('14','met_member_force','ybmflsl','','0','0','metinfo');
INSERT INTO met_config VALUES('15','met_tablename','admin_array|admin_column|admin_logs|admin_table|app_config|app_plugin|applist|column|config|cv|download|feedback|flash|flash_button|flist|ifcolumn|ifcolumn_addfile|ifmember_left|img|infoprompt|job|label|lang|lang_admin|language|link|menu|message|mlist|news|online|otherinfo|para|parameter|plist|product|skin_table|tags|templates|ui_config|ui_list|user|user_group|user_group_pay|user_list|user_other','','0','0','metinfo');
INSERT INTO met_config VALUES('16','met_agents_logo_login','../app/system/include/templates/admin/images/login-logo.png','','0','0','metinfo');
INSERT INTO met_config VALUES('17','met_agents_logo_index','../app/system/include/templates/admin/images/logo.png','','0','0','metinfo');
INSERT INTO met_config VALUES('18','met_agents_copyright_foot','Powered by <b><a href=https://www.metinfo.cn target=_blank title=CMS>MetInfo $metcms_v</a></b> &copy;2008-$m_now_year &nbsp;<a href=https://www.mituo.cn target=_blank title=米拓建站>mituo.cn</a>','','0','0','metinfo');
INSERT INTO met_config VALUES('19','met_agents_type','0','','0','0','metinfo');
INSERT INTO met_config VALUES('20','met_agents_code','','','0','0','metinfo');
INSERT INTO met_config VALUES('21','met_agents_backup','metinfo','','0','0','metinfo');
INSERT INTO met_config VALUES('22','met_agents_sms','1','','0','0','metinfo');
INSERT INTO met_config VALUES('23','met_agents_app','1','','0','0','metinfo');
INSERT INTO met_config VALUES('24','met_agents_img','public/images/metinfo.gif','','0','0','metinfo');
INSERT INTO met_config VALUES('25','met_patch','0','','0','0','metinfo');
INSERT INTO met_config VALUES('26','met_agents_thanks','感谢使用 Metinfo','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('27','met_agents_depict_login','MetInfo','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('28','met_agents_name','MetInfo|米拓企业建站系统','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('29','met_agents_copyright','长沙米拓信息技术有限公司（MetInfo Inc.）','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('30','met_agents_about','关于我们','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('31','met_agents_thanks','thanks use Metinfo','','0','0','en-metinfo');
INSERT INTO met_config VALUES('32','met_agents_depict_login','Metinfo Build marketing value corporate website','','0','0','en-metinfo');
INSERT INTO met_config VALUES('33','met_agents_name','Metinfo CMS','','0','0','en-metinfo');
INSERT INTO met_config VALUES('34','met_agents_copyright','China Changsha MetInfo Information Co., Ltd.','','0','0','en-metinfo');
INSERT INTO met_config VALUES('35','met_agents_about','About Us','','0','0','en-metinfo');
INSERT INTO met_config VALUES('36','met_secret_key','','','0','0','metinfo');
INSERT INTO met_config VALUES('37','met_host_new','app.metinfo.cn','','0','0','metinfo');
INSERT INTO met_config VALUES('38','met_editor','ueditor','','0','0','metinfo');
INSERT INTO met_config VALUES('39','met_sms_url','https://u.mituo.cn/api/sms','','0','0','metinfo');
INSERT INTO met_config VALUES('40','met_sms_token','','','0','0','metinfo');
INSERT INTO met_config VALUES('41','met_smsprice','0.1','','0','0','metinfo');
INSERT INTO met_config VALUES('42','met_agents_metmsg','1','','0','0','metinfo');
INSERT INTO met_config VALUES('43','met_safe_prompt','0','','0','0','metinfo');
INSERT INTO met_config VALUES('44','met_uiset_guide','0','','0','0','metinfo');
INSERT INTO met_config VALUES('45','met_api','https://u.mituo.cn/api/client','','0','0','metinfo');
INSERT INTO met_config VALUES('46','met_agents_pageset_name','Metinfo','','0','0','metinfo');
INSERT INTO met_config VALUES('47','met_agents_agents_logo_index','app/system/include/public/ui/admin/images/logo.png','','0','0','metinfo');
INSERT INTO met_config VALUES('48','met_301jump','','','0','0','metinfo');
INSERT INTO met_config VALUES('49','met_https','','','0','0','metinfo');
INSERT INTO met_config VALUES('50','disable_cssjs','0','','0','0','metinfo');
INSERT INTO met_config VALUES('51','met_copyright_nofollow','0','','0','0','metinfo');
INSERT INTO met_config VALUES('52','global_search_range','all','','0','0','cn');
INSERT INTO met_config VALUES('53','global_search_type','0','','0','0','cn');
INSERT INTO met_config VALUES('54','global_search_module','2','','0','0','cn');
INSERT INTO met_config VALUES('55','global_search_column','3','','0','0','cn');
INSERT INTO met_config VALUES('56','column_search_range','parent','','0','0','cn');
INSERT INTO met_config VALUES('57','column_search_type','0','','0','0','cn');
INSERT INTO met_config VALUES('58','advanced_search_range','all','','0','0','cn');
INSERT INTO met_config VALUES('59','advanced_search_type','1','','0','0','cn');
INSERT INTO met_config VALUES('60','advanced_search_column','3','','0','0','cn');
INSERT INTO met_config VALUES('61','advanced_search_linkage','1','','0','0','cn');
INSERT INTO met_config VALUES('62','tag_show_range','0','','0','0','cn');
INSERT INTO met_config VALUES('63','tag_show_number','4','','0','0','cn');
INSERT INTO met_config VALUES('64','tag_search_type','module','','0','0','cn');
INSERT INTO met_config VALUES('65','global_search_type','0','','0','0','cn');
INSERT INTO met_config VALUES('66','access_type','1','','0','0','cn');
INSERT INTO met_config VALUES('67','met_webname','企业管理','','0','0','cn');
INSERT INTO met_config VALUES('68','met_api','https://u.mituo.cn/api/client','','0','0','cn');
INSERT INTO met_config VALUES('69','met_logo','../upload/201801/1515549638.png','','0','0','cn');
INSERT INTO met_config VALUES('70','met_mobile_logo','../upload/201807/1532137488.png','','0','0','cn');
INSERT INTO met_config VALUES('71','met_404content','404错误，页面不见了。。。','','0','0','cn');
INSERT INTO met_config VALUES('72','met_data_null','没有找到数据','','0','0','cn');
INSERT INTO met_config VALUES('73','met_skin_user','metv7','','0','0','cn');
INSERT INTO met_config VALUES('74','met_big_wate','0','','0','0','cn');
INSERT INTO met_config VALUES('75','met_thumb_wate','0','','0','0','cn');
INSERT INTO met_config VALUES('76','met_wate_class','1','','0','0','cn');
INSERT INTO met_config VALUES('77','met_wate_img','','','0','0','cn');
INSERT INTO met_config VALUES('78','met_wate_bigimg','','','0','0','cn');
INSERT INTO met_config VALUES('79','met_thumb_kind','2','','0','0','cn');
INSERT INTO met_config VALUES('80','met_text_wate','MetInfo','','0','0','cn');
INSERT INTO met_config VALUES('81','met_text_size','10','','0','0','cn');
INSERT INTO met_config VALUES('82','met_text_bigsize','35','','0','0','cn');
INSERT INTO met_config VALUES('83','met_text_fonts','../include/fonts/arial.ttf','','0','0','cn');
INSERT INTO met_config VALUES('84','met_text_color','#000000','','0','0','cn');
INSERT INTO met_config VALUES('85','met_text_angle','0','','0','0','cn');
INSERT INTO met_config VALUES('86','met_watermark','0','','0','0','cn');
INSERT INTO met_config VALUES('87','met_newsimg_x','800','','0','0','cn');
INSERT INTO met_config VALUES('88','met_newsimg_y','500','','0','0','cn');
INSERT INTO met_config VALUES('89','met_productimg_x','800','','0','0','cn');
INSERT INTO met_config VALUES('90','met_productimg_y','500','','0','0','cn');
INSERT INTO met_config VALUES('91','met_imgs_x','800','','0','0','cn');
INSERT INTO met_config VALUES('92','met_imgs_y','500','','0','0','cn');
INSERT INTO met_config VALUES('93','met_keywords','企业;企业管理;企业官网','','0','0','cn');
INSERT INTO met_config VALUES('94','met_description','网站描述，一般显示在搜索引擎搜索结果中的描述文字，用于介绍网站，吸引浏览者点击。','','0','0','cn');
INSERT INTO met_config VALUES('95','met_title_type','2','','0','0','cn');
INSERT INTO met_config VALUES('96','met_seo','<p>后台-营销-SEO-头部优化文字处修改</p>','','0','0','cn');
INSERT INTO met_config VALUES('97','met_alt','图片关键词','','0','0','cn');
INSERT INTO met_config VALUES('98','met_atitle','链接关键词','','0','0','cn');
INSERT INTO met_config VALUES('99','met_linkname','某某公司网站','','0','0','cn');
INSERT INTO met_config VALUES('100','met_footright','我的网站 版权所有 2008-2014 湘ICP备8888888','','0','0','cn');
INSERT INTO met_config VALUES('101','met_footaddress','本页面内容为网站演示数据，前台页面内容都可以在后台修改。','','0','0','cn');
INSERT INTO met_config VALUES('102','met_foottel','','','0','0','cn');
INSERT INTO met_config VALUES('103','met_footother','','','0','0','cn');
INSERT INTO met_config VALUES('104','met_foottext','','','0','0','cn');
INSERT INTO met_config VALUES('105','met_footstat','<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?520556228c0113270c0c772027905838\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>','','0','0','cn');
INSERT INTO met_config VALUES('106','met_product_list','8','','0','0','cn');
INSERT INTO met_config VALUES('107','met_news_list','8','','0','0','cn');
INSERT INTO met_config VALUES('108','met_download_list','8','','0','0','cn');
INSERT INTO met_config VALUES('109','met_img_list','8','','0','0','cn');
INSERT INTO met_config VALUES('110','met_job_list','3','','0','0','cn');
INSERT INTO met_config VALUES('111','met_message_list','10','','0','0','cn');
INSERT INTO met_config VALUES('112','met_search_list','10','','0','0','cn');
INSERT INTO met_config VALUES('113','met_fd_fromname','米拓信息','','0','0','cn');
INSERT INTO met_config VALUES('114','met_fd_smtp','61.152.188.131','','0','0','cn');
INSERT INTO met_config VALUES('115','met_fd_usename','test@mail.metinfo.cn','','0','0','cn');
INSERT INTO met_config VALUES('116','met_fd_password','passwordhidden','','0','0','cn');
INSERT INTO met_config VALUES('117','met_skin_css','metinfo.css','','0','0','cn');
INSERT INTO met_config VALUES('118','met_autothumb_ok','0','','0','0','cn');
INSERT INTO met_config VALUES('119','met_member_use','1','','0','0','cn');
INSERT INTO met_config VALUES('120','met_member_register','1','','0','0','cn');
INSERT INTO met_config VALUES('121','met_member_idvalidate','0','','0','0','cn');
INSERT INTO met_config VALUES('122','met_idvalid_key','','','0','0','cn');
INSERT INTO met_config VALUES('123','met_newsdays','3','','0','0','cn');
INSERT INTO met_config VALUES('124','met_hot','100','','0','0','cn');
INSERT INTO met_config VALUES('125','met_listtime','Y-m-d','','0','0','cn');
INSERT INTO met_config VALUES('126','met_contenttime','Y-m-d H:i:s','','0','0','cn');
INSERT INTO met_config VALUES('127','met_member_vecan','4','','0','0','cn');
INSERT INTO met_config VALUES('128','met_membercontrol','欢迎注册为【米拓信息】www.metinfo.cn会员，会员激活后您可以享受更多的专业服务！','','0','0','cn');
INSERT INTO met_config VALUES('129','met_pseudo','0','','0','0','cn');
INSERT INTO met_config VALUES('130','met_online_skin','1','','0','0','cn');
INSERT INTO met_config VALUES('131','met_online_type','4','','0','0','cn');
INSERT INTO met_config VALUES('132','met_online_color','#1baadb','','0','0','cn');
INSERT INTO met_config VALUES('133','met_onlinetel','<p>服务热线：<br/>000-000-0000</p>','','0','0','cn');
INSERT INTO met_config VALUES('134','met_online_x','10','','0','0','cn');
INSERT INTO met_config VALUES('135','met_online_y','300','','0','0','cn');
INSERT INTO met_config VALUES('136','met_onlinenameok','0','','0','0','cn');
INSERT INTO met_config VALUES('137','met_qq_type','3','','0','0','cn');
INSERT INTO met_config VALUES('138','met_msn_type','1','','0','0','cn');
INSERT INTO met_config VALUES('139','met_taobao_type','2','','0','0','cn');
INSERT INTO met_config VALUES('140','met_alibaba_type','10','','0','0','cn');
INSERT INTO met_config VALUES('141','met_skype_type','11','','0','0','cn');
INSERT INTO met_config VALUES('142','met_addlinkopen','1','','0','0','cn');
INSERT INTO met_config VALUES('143','met_pageskin','8','','0','0','cn');
INSERT INTO met_config VALUES('144','met_indexskin','','','0','0','cn');
INSERT INTO met_config VALUES('145','met_urlblank','0','','0','0','cn');
INSERT INTO met_config VALUES('146','met_pnorder','0','','0','0','cn');
INSERT INTO met_config VALUES('147','met_hitsok','','','0','0','cn');
INSERT INTO met_config VALUES('148','met_product_page','0','','0','0','cn');
INSERT INTO met_config VALUES('149','met_img_page','0','','0','0','cn');
INSERT INTO met_config VALUES('150','met_product_detail','1','','0','0','cn');
INSERT INTO met_config VALUES('151','met_img_detail','1','','0','0','cn');
INSERT INTO met_config VALUES('152','met_productdetail_x','800','','0','0','cn');
INSERT INTO met_config VALUES('153','met_productdetail_y','500','','0','0','cn');
INSERT INTO met_config VALUES('154','met_imgdetail_x','800','','0','0','cn');
INSERT INTO met_config VALUES('155','met_imgdetail_y','500','','0','0','cn');
INSERT INTO met_config VALUES('156','met_file_format','rar|zip|sql|doc|pdf|jpg|xls|png|gif|mp3|mp4|jpeg|bmp|swf|flv|ico','','0','0','cn');
INSERT INTO met_config VALUES('157','met_file_maxsize','8','','0','0','cn');
INSERT INTO met_config VALUES('158','met_memberlogin_code','1','','0','0','cn');
INSERT INTO met_config VALUES('159','met_login_code','0','','0','0','cn');
INSERT INTO met_config VALUES('160','met_webhtm','0','','0','0','cn');
INSERT INTO met_config VALUES('161','met_htmtype','html','','0','0','cn');
INSERT INTO met_config VALUES('162','met_htmpagename','2','','0','0','cn');
INSERT INTO met_config VALUES('163','met_listhtmltype','1','','0','0','cn');
INSERT INTO met_config VALUES('164','met_htmlistname','1','','0','0','cn');
INSERT INTO met_config VALUES('165','met_htmway','0','','0','0','cn');
INSERT INTO met_config VALUES('166','met_pageclick','1','','0','0','cn');
INSERT INTO met_config VALUES('167','met_pagetime','1','','0','0','cn');
INSERT INTO met_config VALUES('168','met_pageprint','1','','0','0','cn');
INSERT INTO met_config VALUES('169','met_pageclose','1','','0','0','cn');
INSERT INTO met_config VALUES('170','met_deleteimg','0','','0','0','cn');
INSERT INTO met_config VALUES('171','met_columnshow','0','','0','0','cn');
INSERT INTO met_config VALUES('172','met_kzqie','1','','0','0','cn');
INSERT INTO met_config VALUES('173','met_tools_ok','1','','0','0','cn');
INSERT INTO met_config VALUES('174','met_tools_code','<div class=\"bdsharebuttonbox\"><a href=\"#\" class=\"bds_more\" data-cmd=\"more\"></a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\"></a><a href=\"#\" class=\"bds_renren\" data-cmd=\"renren\" title=\"分享到人人网\"></a><a href=\"#\" class=\"bds_weixin\" data-cmd=\"weixin\" title=\"分享到微信\"></a></div><script>window._bd_share_config={\"common\":{\"bdSnsKey\":{},\"bdText\":\"\",\"bdMini\":\"2\",\"bdMiniList\":false,\"bdPic\":\"\",\"bdStyle\":\"1\",\"bdSize\":\"16\"},\"share\":{}};with(document)0[(getElementsByTagName(\"head\")[0]||body).appendChild(createElement(\"script\")).src=\"http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\"+~(-new Date()/36e5)];</script>','','0','0','cn');
INSERT INTO met_config VALUES('175','met_hometitle','','','0','0','cn');
INSERT INTO met_config VALUES('176','met_img_rename','1','','0','0','cn');
INSERT INTO met_config VALUES('177','met_index_content','<div><img alt=\"\" src=\"upload/images/20120716_094159.jpg\" style=\"line-height: 2; margin: 8px; width: 196px; float: left; height: 209px;\" /></div><div style=\"padding-top:10px;\"><span style=\"font-size:14px;\"><strong>关于&ldquo;为合作伙伴创造价值&rdquo;</strong></span></div><div>米拓信息认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。</div><div>&nbsp;</div><div><span style=\"font-size:14px;\"><strong>关于&ldquo;诚实、宽容、创新、服务&rdquo;</strong></span></div><div><span style=\"font-size:12px;\">米拓信息认为诚信是一切合作的基础，宽容是解决问题的前提，创新是发展事业的利器，服务是创造价值的根本。</span></div><div>&nbsp;</div>','','0','0','cn');
INSERT INTO met_config VALUES('178','met_fd_port','25','','0','0','cn');
INSERT INTO met_config VALUES('179','met_fd_way','tls','','0','0','cn');
INSERT INTO met_config VALUES('180','met_headstat','','','0','0','cn');
INSERT INTO met_config VALUES('181','met_sitemap_auto','1','','0','0','cn');
INSERT INTO met_config VALUES('182','met_maplng','112.947724','','0','0','cn');
INSERT INTO met_config VALUES('183','met_maplat','28.147538','','0','0','cn');
INSERT INTO met_config VALUES('184','met_mapzoom','15','','0','0','cn');
INSERT INTO met_config VALUES('185','met_maptitle','演示公司名称','','0','0','cn');
INSERT INTO met_config VALUES('186','met_mapcontents','地址：长沙市岳麓区#<br/>电话：0000-88888888 0000-8888888','','0','0','cn');
INSERT INTO met_config VALUES('187','met_productTabname','详细信息','','0','0','cn');
INSERT INTO met_config VALUES('188','met_productTabname_1','规格参数','','0','0','cn');
INSERT INTO met_config VALUES('189','met_productTabname_2','包装','','0','0','cn');
INSERT INTO met_config VALUES('190','met_productTabname_3','选项卡四','','0','0','cn');
INSERT INTO met_config VALUES('191','met_productTabname_4','选项卡五','','0','0','cn');
INSERT INTO met_config VALUES('192','met_productTabok','3','','0','0','cn');
INSERT INTO met_config VALUES('193','met_htmlurl','0','','0','0','cn');
INSERT INTO met_config VALUES('194','met_defult_lang','0','0','0','0','cn');
INSERT INTO met_config VALUES('195','met_headstat_mobile','','','0','0','cn');
INSERT INTO met_config VALUES('196','met_footstat_mobile','<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?520556228c0113270c0c772027905838\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>','','0','0','cn');
INSERT INTO met_config VALUES('197','met_weixin_appid','','','0','0','cn');
INSERT INTO met_config VALUES('198','met_weixin_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('199','met_weibo_appkey','','','0','0','cn');
INSERT INTO met_config VALUES('200','met_weibo_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('201','met_qq_appid','','','0','0','cn');
INSERT INTO met_config VALUES('202','met_qq_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('203','met_weixin_open','0','','0','0','cn');
INSERT INTO met_config VALUES('204','met_weibo_open','0','','0','0','cn');
INSERT INTO met_config VALUES('205','met_qq_open','0','','0','0','cn');
INSERT INTO met_config VALUES('206','met_weixin_gz_appid','','','0','0','cn');
INSERT INTO met_config VALUES('207','met_weixin_gz_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('208','met_member_bgcolor','','','0','0','cn');
INSERT INTO met_config VALUES('209','met_member_bgimage','','','0','0','cn');
INSERT INTO met_config VALUES('210','met_member_email_reg_title','{webname} 会员中心 注册验证','','0','0','cn');
INSERT INTO met_config VALUES('211','met_member_email_reg_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 注册验证, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">请勿回复本邮件, 此邮箱未受监控, 您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>','','0','0','cn');
INSERT INTO met_config VALUES('212','met_member_email_password_title','{webname} 会员中心 密码找回','','0','0','cn');
INSERT INTO met_config VALUES('213','met_member_email_password_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 密码找回, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">请勿回复本邮件, 此邮箱未受监控, 您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>','','0','0','cn');
INSERT INTO met_config VALUES('214','met_member_email_safety_title','{webname} 会员中心 修改绑定邮箱','','0','0','cn');
INSERT INTO met_config VALUES('215','met_member_email_safety_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 绑定邮箱修改, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131,131);\">请勿回复本邮件,此邮箱未受监控,您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>','','0','0','cn');
INSERT INTO met_config VALUES('216','met_fd_word','','','0','0','cn');
INSERT INTO met_config VALUES('217','met_logo_keyword','Logo关键词','','0','0','cn');
INSERT INTO met_config VALUES('218','met_logs','0','','0','0','cn');
INSERT INTO met_config VALUES('219','met_member_agreement','0','','0','0','cn');
INSERT INTO met_config VALUES('220','met_member_agreement_content','','','0','0','cn');
INSERT INTO met_config VALUES('221','debug','0','','0','0','cn');
INSERT INTO met_config VALUES('222','global_search_range','all','','0','0','en');
INSERT INTO met_config VALUES('223','global_search_type','0','','0','0','en');
INSERT INTO met_config VALUES('224','global_search_module','2','','0','0','en');
INSERT INTO met_config VALUES('225','global_search_column','3','','0','0','en');
INSERT INTO met_config VALUES('226','column_search_range','parent','','0','0','en');
INSERT INTO met_config VALUES('227','column_search_type','0','','0','0','en');
INSERT INTO met_config VALUES('228','advanced_search_range','all','','0','0','en');
INSERT INTO met_config VALUES('229','advanced_search_type','1','','0','0','en');
INSERT INTO met_config VALUES('230','advanced_search_column','3','','0','0','en');
INSERT INTO met_config VALUES('231','advanced_search_linkage','1','','0','0','en');
INSERT INTO met_config VALUES('232','tag_show_range','0','','0','0','en');
INSERT INTO met_config VALUES('233','tag_show_number','8','','0','0','en');
INSERT INTO met_config VALUES('234','tag_search_type','module','','0','0','en');
INSERT INTO met_config VALUES('235','access_type','1','','0','0','en');
INSERT INTO met_config VALUES('236','met_api','https://u.mituo.cn/api/client','','0','0','en');
INSERT INTO met_config VALUES('237','met_webname','3tree','','0','0','en');
INSERT INTO met_config VALUES('238','met_logo','../upload/201801/1515663135.png','','0','0','en');
INSERT INTO met_config VALUES('239','met_mobile_logo','../upload/201807/1532139830.png','','0','0','en');
INSERT INTO met_config VALUES('240','met_404content','404 error, the page is gone. . .','','0','0','en');
INSERT INTO met_config VALUES('241','met_data_null','The page is gone','','0','0','en');
INSERT INTO met_config VALUES('242','met_skin_user','metv7','','0','0','en');
INSERT INTO met_config VALUES('243','met_big_wate','0','','0','0','en');
INSERT INTO met_config VALUES('244','met_thumb_wate','0','','0','0','en');
INSERT INTO met_config VALUES('245','met_wate_class','1','','0','0','en');
INSERT INTO met_config VALUES('246','met_wate_img','','','0','0','en');
INSERT INTO met_config VALUES('247','met_wate_bigimg','','','0','0','en');
INSERT INTO met_config VALUES('248','met_thumb_kind','2','','0','0','en');
INSERT INTO met_config VALUES('249','met_text_wate','www.MetInfo.cn','','0','0','en');
INSERT INTO met_config VALUES('250','met_text_size','10','','0','0','en');
INSERT INTO met_config VALUES('251','met_text_bigsize','15','','0','0','en');
INSERT INTO met_config VALUES('252','met_text_fonts','../include/fonts/arial.ttf','','0','0','en');
INSERT INTO met_config VALUES('253','met_text_color','#808080','','0','0','en');
INSERT INTO met_config VALUES('254','met_text_angle','0','','0','0','en');
INSERT INTO met_config VALUES('255','met_watermark','0','','0','0','en');
INSERT INTO met_config VALUES('256','met_newsimg_x','800','','0','0','en');
INSERT INTO met_config VALUES('257','met_newsimg_y','500','','0','0','en');
INSERT INTO met_config VALUES('258','met_productimg_x','800','','0','0','en');
INSERT INTO met_config VALUES('259','met_productimg_y','500','','0','0','en');
INSERT INTO met_config VALUES('260','met_imgs_x','800','','0','0','en');
INSERT INTO met_config VALUES('261','met_imgs_y','500','','0','0','en');
INSERT INTO met_config VALUES('262','met_keywords','3tree','','0','0','en');
INSERT INTO met_config VALUES('263','met_description','MetInfo enterprise content manager system','','0','0','en');
INSERT INTO met_config VALUES('264','met_title_type','2','','0','0','en');
INSERT INTO met_config VALUES('265','met_alt','MetInfo enterprise content manager system | MetInfo CMS','','0','0','en');
INSERT INTO met_config VALUES('266','met_atitle','MetInfo CMS','','0','0','en');
INSERT INTO met_config VALUES('267','met_linkname','MetInfo CMS','','0','0','en');
INSERT INTO met_config VALUES('268','met_footaddress','','','0','0','en');
INSERT INTO met_config VALUES('269','met_foottel','','','0','0','en');
INSERT INTO met_config VALUES('270','met_footother','','','0','0','en');
INSERT INTO met_config VALUES('271','met_foottext','','','0','0','en');
INSERT INTO met_config VALUES('272','met_product_list','8','','0','0','en');
INSERT INTO met_config VALUES('273','met_news_list','8','','0','0','en');
INSERT INTO met_config VALUES('274','met_download_list','10','','0','0','en');
INSERT INTO met_config VALUES('275','met_img_list','12','','0','0','en');
INSERT INTO met_config VALUES('276','met_job_list','2','','0','0','en');
INSERT INTO met_config VALUES('277','met_message_list','10','','0','0','en');
INSERT INTO met_config VALUES('278','met_search_list','10','','0','0','en');
INSERT INTO met_config VALUES('279','met_fd_fromname','MetInfo Co.,Ltd','','0','0','en');
INSERT INTO met_config VALUES('280','met_fd_smtp','61.152.188.131','','0','0','en');
INSERT INTO met_config VALUES('281','met_fd_usename','test@mail.metinfo.cn','','0','0','en');
INSERT INTO met_config VALUES('282','met_fd_password','123456','','0','0','en');
INSERT INTO met_config VALUES('283','met_skin_css','metinfo.css','','0','0','en');
INSERT INTO met_config VALUES('284','met_autothumb_ok','0','','0','0','en');
INSERT INTO met_config VALUES('285','met_member_use','1','','0','0','en');
INSERT INTO met_config VALUES('286','met_member_register','1','','0','0','en');
INSERT INTO met_config VALUES('287','met_member_idvalidate','0','','0','0','en');
INSERT INTO met_config VALUES('288','met_idvalid_key','','','0','0','en');
INSERT INTO met_config VALUES('289','met_newsdays','3','','0','0','en');
INSERT INTO met_config VALUES('290','met_hot','100','','0','0','en');
INSERT INTO met_config VALUES('291','met_listtime','Y/m/d','','0','0','en');
INSERT INTO met_config VALUES('292','met_contenttime','Y-m-d H:i:s','','0','0','en');
INSERT INTO met_config VALUES('293','met_member_vecan','4','','0','0','en');
INSERT INTO met_config VALUES('294','met_membercontrol','Welcome to register the member of【MetInfo】www.metinfo.cn, after activated you can enjoy more professional service!','','0','0','en');
INSERT INTO met_config VALUES('295','met_pseudo','0','','0','0','en');
INSERT INTO met_config VALUES('296','met_online_skin','2','','0','0','en');
INSERT INTO met_config VALUES('297','met_online_type','2','','0','0','en');
INSERT INTO met_config VALUES('298','met_online_color','#1baadb','','0','0','en');
INSERT INTO met_config VALUES('299','met_onlinetel','<p>Hotline：</p><p>100-000-0000</p>','','0','0','en');
INSERT INTO met_config VALUES('300','met_online_x','10','','0','0','en');
INSERT INTO met_config VALUES('301','met_online_y','300','','0','0','en');
INSERT INTO met_config VALUES('302','met_onlinenameok','0','','0','0','en');
INSERT INTO met_config VALUES('303','met_qq_type','4','','0','0','en');
INSERT INTO met_config VALUES('304','met_msn_type','1','','0','0','en');
INSERT INTO met_config VALUES('305','met_taobao_type','2','','0','0','en');
INSERT INTO met_config VALUES('306','met_alibaba_type','10','','0','0','en');
INSERT INTO met_config VALUES('307','met_skype_type','13','','0','0','en');
INSERT INTO met_config VALUES('308','met_addlinkopen','1','','0','0','en');
INSERT INTO met_config VALUES('309','met_pageskin','8','','0','0','en');
INSERT INTO met_config VALUES('310','met_indexskin','index','','0','0','en');
INSERT INTO met_config VALUES('311','met_urlblank','0','','0','0','en');
INSERT INTO met_config VALUES('312','met_pnorder','0','','0','0','en');
INSERT INTO met_config VALUES('313','met_hitsok','1','','0','0','en');
INSERT INTO met_config VALUES('314','met_product_page','0','','0','0','en');
INSERT INTO met_config VALUES('315','met_img_page','0','','0','0','en');
INSERT INTO met_config VALUES('316','met_product_detail','1','','0','0','en');
INSERT INTO met_config VALUES('317','met_img_detail','1','','0','0','en');
INSERT INTO met_config VALUES('318','met_productdetail_x','800','','0','0','en');
INSERT INTO met_config VALUES('319','met_productdetail_y','500','','0','0','en');
INSERT INTO met_config VALUES('320','met_imgdetail_x','800','','0','0','en');
INSERT INTO met_config VALUES('321','met_imgdetail_y','500','','0','0','en');
INSERT INTO met_config VALUES('322','met_file_format','rar|zip|sql|doc|pdf|jpg|jpeg|xls|png|gif|mp3|mp4|ico|swf','','0','0','en');
INSERT INTO met_config VALUES('323','met_file_maxsize','5','','0','0','en');
INSERT INTO met_config VALUES('324','met_memberlogin_code','1','','0','0','en');
INSERT INTO met_config VALUES('325','met_login_code','0','','0','0','en');
INSERT INTO met_config VALUES('326','met_webhtm','0','','0','0','en');
INSERT INTO met_config VALUES('327','met_htmtype','html','','0','0','en');
INSERT INTO met_config VALUES('328','met_htmpagename','2','','0','0','en');
INSERT INTO met_config VALUES('329','met_listhtmltype','1','','0','0','en');
INSERT INTO met_config VALUES('330','met_htmlistname','1','','0','0','en');
INSERT INTO met_config VALUES('331','met_htmway','0','','0','0','en');
INSERT INTO met_config VALUES('332','met_pageclick','0','','0','0','en');
INSERT INTO met_config VALUES('333','met_pagetime','0','','0','0','en');
INSERT INTO met_config VALUES('334','met_pageprint','0','','0','0','en');
INSERT INTO met_config VALUES('335','met_pageclose','0','','0','0','en');
INSERT INTO met_config VALUES('336','met_deleteimg','0','','0','0','en');
INSERT INTO met_config VALUES('337','met_columnshow','0','','0','0','en');
INSERT INTO met_config VALUES('338','met_kzqie','1','','0','0','en');
INSERT INTO met_config VALUES('339','met_seo','<p><a href=\"http://www.metinfo.cn/\" target=\"_blank\">MetInfo CMS</a> | <a href=\"http://www.metinfo.cn/idc\" target=\"_blank\">Foreign Host</a> | <a href=\"http://ok.metinfo.cn/\" target=\"_blank\">Domain Registration</a></p>','','0','0','en');
INSERT INTO met_config VALUES('340','met_footright','MSN:0000@000.com Email:sales@metinfo.cn','','0','0','en');
INSERT INTO met_config VALUES('341','met_footstat','<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?520556228c0113270c0c772027905838\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>','','0','0','en');
INSERT INTO met_config VALUES('342','met_tools_ok','0','','0','0','en');
INSERT INTO met_config VALUES('343','met_tools_code','','','0','0','en');
INSERT INTO met_config VALUES('344','met_img_rename','1','','0','0','en');
INSERT INTO met_config VALUES('345','met_index_content','<p><span style=\"color: rgb(102, 102, 102); -webkit-text-size-adjust: none; \">MetInfo Co., Ltd. (</span><a href=\"http://www.metinfo.cn/\" style=\"color: rgb(28, 87, 196); -webkit-text-size-adjust: none; \" target=\"_blank\">MetInfo.cn</a><span style=\"color: rgb(102, 102, 102); -webkit-text-size-adjust: none; \">) focused on the field of network information and network marketing, integrated team of professional marketing ideas and networking technologies to provide customers with high quality online marketing services.</span></p>','','0','0','en');
INSERT INTO met_config VALUES('346','met_fd_port','25','','0','0','en');
INSERT INTO met_config VALUES('347','met_fd_way','tls','','0','0','en');
INSERT INTO met_config VALUES('348','met_headstat','','','0','0','en');
INSERT INTO met_config VALUES('349','met_sitemap_auto','1','','0','0','en');
INSERT INTO met_config VALUES('350','met_maplng','116.404','','0','0','en');
INSERT INTO met_config VALUES('351','met_maplat','39.915','','0','0','en');
INSERT INTO met_config VALUES('352','met_mapzoom','15','','0','0','en');
INSERT INTO met_config VALUES('353','met_maptitle','Demonstration Company Name','','0','0','en');
INSERT INTO met_config VALUES('354','met_mapcontents','Address: Yuelu District, some 518 South Second Ring Road Metro 3-17 Sunshine 100 International Building 803 # <br/> Tel :0000-88888888 0000-8888888','','0','0','en');
INSERT INTO met_config VALUES('355','met_dimensional_logo','','','0','0','en');
INSERT INTO met_config VALUES('356','met_productTabname','Detailed information','','0','0','en');
INSERT INTO met_config VALUES('357','met_productTabname_1','Specification','','0','0','en');
INSERT INTO met_config VALUES('358','met_productTabname_2','Packing','','0','0','en');
INSERT INTO met_config VALUES('359','met_productTabname_3','Tab four','','0','0','en');
INSERT INTO met_config VALUES('360','met_productTabname_4','Tab five','','0','0','en');
INSERT INTO met_config VALUES('361','met_productTabok','3','','0','0','en');
INSERT INTO met_config VALUES('362','met_htmlurl','0','','0','0','en');
INSERT INTO met_config VALUES('363','met_weixin_appid','','','0','0','en');
INSERT INTO met_config VALUES('364','met_weixin_appsecret','','','0','0','en');
INSERT INTO met_config VALUES('365','met_weibo_appkey','','','0','0','en');
INSERT INTO met_config VALUES('366','met_weibo_appsecret','','','0','0','en');
INSERT INTO met_config VALUES('367','met_qq_appid','','','0','0','en');
INSERT INTO met_config VALUES('368','met_qq_appsecret','','','0','0','en');
INSERT INTO met_config VALUES('369','met_weixin_open','0','','0','0','en');
INSERT INTO met_config VALUES('370','met_weibo_open','0','','0','0','en');
INSERT INTO met_config VALUES('371','met_qq_open','0','','0','0','en');
INSERT INTO met_config VALUES('372','met_weixin_gz_appid','','','0','0','en');
INSERT INTO met_config VALUES('373','met_weixin_gz_appsecret','','','0','0','en');
INSERT INTO met_config VALUES('374','met_member_bgcolor','','','0','0','en');
INSERT INTO met_config VALUES('375','met_member_bgimage','','','0','0','en');
INSERT INTO met_config VALUES('376','met_member_email_reg_title','{webname} Member center registration verification','','0','0','en');
INSERT INTO met_config VALUES('377','met_member_email_reg_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} Member center</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">hello:</p><p style=\"line-height: 23.7999992370605px;\">This is your key message on the {webname} member center, Function is to carry out&nbsp;Member center registration verification, please click on the link below to complete the verification</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">Please click on the link to continue:{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">Please do not reply to this message, this mailbox is not monitored, you will not get any reply.<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}Member Center</strong></a></p></div></div>','','0','0','en');
INSERT INTO met_config VALUES('378','met_member_email_password_title','{webname} Member center password back','','0','0','en');
INSERT INTO met_config VALUES('379','met_member_email_password_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} Member Center</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">hello:</p><p style=\"line-height: 23.7999992370605px;\">This is your key message on the {webname} Important message on the member center, Function is to carry out&nbsp;Member center password back, please click on the link below to complete the verification</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">Please click on the link to continue:{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">Please do not reply to this message, this mailbox is not monitored, you will not get any reply.<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}Member Center</strong></a></p></div></div>','','0','0','en');
INSERT INTO met_config VALUES('380','met_member_email_safety_title','{webname} Member center to modify the binding mailbox','','0','0','en');
INSERT INTO met_config VALUES('381','met_member_email_safety_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} Member Center</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">hello:</p><p style=\"line-height: 23.7999992370605px;\">This is your key message on the {webname} Important message on the member center, Function is to carry out&nbsp;Member center bound mailbox modification, please click on the link below to complete the verification</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">Please click on the link to continue:{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131,131);\">Please do not reply to this message, this mailbox is not monitored, you will not get any reply.<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}Member Center</strong></a></p></div></div>','','0','0','en');
INSERT INTO met_config VALUES('382','met_defult_lang','0','0','0','0','en');
INSERT INTO met_config VALUES('383','met_headstat_mobile','','','0','0','en');
INSERT INTO met_config VALUES('384','met_footstat_mobile','<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?520556228c0113270c0c772027905838\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>','','0','0','en');
INSERT INTO met_config VALUES('385','met_fd_word','','','0','0','en');
INSERT INTO met_config VALUES('386','met_logo_keyword','Logo Keywords','','0','0','en');
INSERT INTO met_config VALUES('387','met_logs','0','','0','0','en');
INSERT INTO met_config VALUES('388','met_member_agreement','0','','0','0','en');
INSERT INTO met_config VALUES('389','met_member_agreement_content','','','0','0','en');
INSERT INTO met_config VALUES('390','debug','0','','0','0','en');
INSERT INTO met_config VALUES('391','flash_10000','3|980|300|1','','0','10000','cn');
INSERT INTO met_config VALUES('392','flash_10001','1|980|600|','','0','10001','cn');
INSERT INTO met_config VALUES('393','flash_1','3|980|300|1','','0','1','cn');
INSERT INTO met_config VALUES('394','flash_2','3|980|300|1','','0','2','cn');
INSERT INTO met_config VALUES('395','flash_3','3|980|300|1','','0','3','cn');
INSERT INTO met_config VALUES('396','flash_44','3|980|300|1','','0','44','cn');
INSERT INTO met_config VALUES('397','flash_38','3|980|300|1','','0','38','cn');
INSERT INTO met_config VALUES('398','flash_42','3|980|300|1','','0','42','cn');
INSERT INTO met_config VALUES('399','flash_43','3|980|300|1','','0','43','cn');
INSERT INTO met_config VALUES('400','flash_34','3|980|300|1','','0','34','cn');
INSERT INTO met_config VALUES('401','flash_39','3|980|300|1','','0','39','cn');
INSERT INTO met_config VALUES('402','flash_37','3|980|300|1','','0','37','cn');
INSERT INTO met_config VALUES('403','flash_35','3|980|300|1','','0','35','cn');
INSERT INTO met_config VALUES('404','flash_36','3|980|300|1','','0','36','cn');
INSERT INTO met_config VALUES('405','flash_21','3|980|300|1','','0','21','cn');
INSERT INTO met_config VALUES('406','flash_28','3|980|300|1','','0','28','cn');
INSERT INTO met_config VALUES('407','flash_9','3|980|300|1','','0','9','cn');
INSERT INTO met_config VALUES('408','flash_27','3|980|300|1','','0','27','cn');
INSERT INTO met_config VALUES('409','flash_13','3|980|300|1','','0','13','cn');
INSERT INTO met_config VALUES('410','flash_33','3|980|300|1','','0','33','cn');
INSERT INTO met_config VALUES('411','flash_26','3|980|300|1','','0','26','cn');
INSERT INTO met_config VALUES('412','flash_20','3|980|300|1','','0','20','cn');
INSERT INTO met_config VALUES('413','flash_14','3|980|300|1','','0','14','cn');
INSERT INTO met_config VALUES('414','flash_32','3|980|300|1','','0','32','cn');
INSERT INTO met_config VALUES('415','flash_25','3|980|300|1','','0','25','cn');
INSERT INTO met_config VALUES('416','flash_19','3|980|300|1','','0','19','cn');
INSERT INTO met_config VALUES('417','flash_15','3|980|300|1','','0','15','cn');
INSERT INTO met_config VALUES('418','flash_24','3|980|300|1','','0','24','cn');
INSERT INTO met_config VALUES('419','flash_18','3|980|300|1','','0','18','cn');
INSERT INTO met_config VALUES('420','flash_12','3|980|300|1','','0','12','cn');
INSERT INTO met_config VALUES('421','flash_7','3|980|300|1','','0','7','cn');
INSERT INTO met_config VALUES('422','flash_30','3|980|300|1','','0','30','cn');
INSERT INTO met_config VALUES('423','flash_23','3|980|300|1','','0','23','cn');
INSERT INTO met_config VALUES('424','flash_17','3|980|300|1','','0','17','cn');
INSERT INTO met_config VALUES('425','flash_11','3|980|300|1','','0','11','cn');
INSERT INTO met_config VALUES('426','flash_8','3|980|300|1','','0','8','cn');
INSERT INTO met_config VALUES('427','flash_31','3|980|300|1','','0','31','cn');
INSERT INTO met_config VALUES('428','flash_6','3|980|300|1','','0','6','cn');
INSERT INTO met_config VALUES('429','flash_29','3|980|300|1','','0','29','cn');
INSERT INTO met_config VALUES('430','flash_22','3|980|300|1','','0','22','cn');
INSERT INTO met_config VALUES('431','flash_16','3|980|300|1','','0','16','cn');
INSERT INTO met_config VALUES('432','flash_10','3|980|300|1','','0','10','cn');
INSERT INTO met_config VALUES('433','flash_4','3|980|300|1','','0','4','cn');
INSERT INTO met_config VALUES('434','flash_5','3|980|300|1','','0','5','cn');
INSERT INTO met_config VALUES('435','met_msg_ok','1','','42','0','cn');
INSERT INTO met_config VALUES('436','met_msg_time','120','','42','0','cn');
INSERT INTO met_config VALUES('437','met_msg_name_field','137','','42','0','cn');
INSERT INTO met_config VALUES('438','met_msg_content_field','140','','42','0','cn');
INSERT INTO met_config VALUES('439','met_msg_show_type','1',' ','42','0','cn');
INSERT INTO met_config VALUES('440','met_msg_type','','','42','0','cn');
INSERT INTO met_config VALUES('441','met_msg_to','','','42','0','cn');
INSERT INTO met_config VALUES('442','met_msg_admin_tel','','','42','0','cn');
INSERT INTO met_config VALUES('443','met_msg_back','','','42','0','cn');
INSERT INTO met_config VALUES('444','met_msg_email_field','186','','42','0','cn');
INSERT INTO met_config VALUES('445','met_msg_title','','','42','0','cn');
INSERT INTO met_config VALUES('446','met_msg_content','','','42','0','cn');
INSERT INTO met_config VALUES('447','met_msg_sms_back','','','42','0','cn');
INSERT INTO met_config VALUES('448','met_msg_sms_field','138','','42','0','cn');
INSERT INTO met_config VALUES('449','met_msg_sms_content','','','42','0','cn');
INSERT INTO met_config VALUES('450','met_cv_time','120','','43','0','cn');
INSERT INTO met_config VALUES('451','met_cv_image','175','','43','0','cn');
INSERT INTO met_config VALUES('452','met_cv_showcol','163|167|169','','43','0','cn');
INSERT INTO met_config VALUES('453','met_cv_emtype','0','','43','0','cn');
INSERT INTO met_config VALUES('454','met_cv_type','','','43','0','cn');
INSERT INTO met_config VALUES('455','met_cv_to','','','43','0','cn');
INSERT INTO met_config VALUES('456','met_cv_email','168','','43','0','cn');
INSERT INTO met_config VALUES('457','met_cv_job_tel','','','43','0','cn');
INSERT INTO met_config VALUES('458','met_cv_back','0','','43','0','cn');
INSERT INTO met_config VALUES('459','met_cv_title','','','43','0','cn');
INSERT INTO met_config VALUES('460','met_cv_content','','','43','0','cn');
INSERT INTO met_config VALUES('461','met_cv_sms_back','','','43','0','cn');
INSERT INTO met_config VALUES('462','met_cv_sms_tell','167','','43','0','cn');
INSERT INTO met_config VALUES('463','met_cv_sms_content','','','43','0','cn');
INSERT INTO met_config VALUES('464','met_fd_ok','1','','44','0','cn');
INSERT INTO met_config VALUES('465','met_fdtable','在线反馈','','44','0','cn');
INSERT INTO met_config VALUES('466','met_fd_time','120','','44','0','cn');
INSERT INTO met_config VALUES('467','met_fd_showcol','141|142|176','','44','0','cn');
INSERT INTO met_config VALUES('468','met_fd_related','','','44','0','cn');
INSERT INTO met_config VALUES('469','met_fd_inquiry','1','','44','0','cn');
INSERT INTO met_config VALUES('470','met_fd_type','','','44','0','cn');
INSERT INTO met_config VALUES('471','met_fd_to','','','44','0','cn');
INSERT INTO met_config VALUES('472','met_fd_admin_tel','','','44','0','cn');
INSERT INTO met_config VALUES('473','met_fd_back','0','','44','0','cn');
INSERT INTO met_config VALUES('474','met_fd_email','144','','44','0','cn');
INSERT INTO met_config VALUES('475','met_fd_title','','','44','0','cn');
INSERT INTO met_config VALUES('476','met_fd_content','','','44','0','cn');
INSERT INTO met_config VALUES('477','met_fd_sms_back','0','','44','0','cn');
INSERT INTO met_config VALUES('478','met_fd_sms_tell','176','','44','0','cn');
INSERT INTO met_config VALUES('479','met_fd_sms_content','','','44','0','cn');
INSERT INTO met_config VALUES('480','flash_10000','3|980|300|1','','0','10000','en');
INSERT INTO met_config VALUES('481','flash_10001','1|980|600|','','0','10001','en');
INSERT INTO met_config VALUES('482','flash_49','3|950|300|1','','0','49','en');
INSERT INTO met_config VALUES('483','flash_48','3|950|300|1','','0','48','en');
INSERT INTO met_config VALUES('484','flash_50','3|950|300|1','','0','50','en');
INSERT INTO met_config VALUES('485','flash_51','3|950|300|1','','0','51','en');
INSERT INTO met_config VALUES('486','flash_47','3|950|300|1','','0','47','en');
INSERT INTO met_config VALUES('487','flash_45','3|950|300|1','','0','45','en');
INSERT INTO met_config VALUES('488','flash_46','3|950|300|1','','0','46','en');
INSERT INTO met_config VALUES('489','flash_54','3|950|300|1','','0','54','en');
INSERT INTO met_config VALUES('490','flash_55','3|950|300|1','','0','55','en');
INSERT INTO met_config VALUES('491','flash_56','3|950|300|1','','0','56','en');
INSERT INTO met_config VALUES('492','flash_57','3|950|300|1','','0','57','en');
INSERT INTO met_config VALUES('493','flash_58','3|950|300|1','','0','58','en');
INSERT INTO met_config VALUES('494','flash_59','3|950|300|1','','0','59','en');
INSERT INTO met_config VALUES('495','flash_60','3|950|300|1','','0','60','en');
INSERT INTO met_config VALUES('496','flash_61','3|950|300|1','','0','61','en');
INSERT INTO met_config VALUES('497','flash_62','3|950|300|1','','0','62','en');
INSERT INTO met_config VALUES('498','flash_65','3|950|300|1','','0','65','en');
INSERT INTO met_config VALUES('499','flash_66','3|950|300|1','','0','66','en');
INSERT INTO met_config VALUES('500','flash_67','3|950|300|1','','0','67','en');
INSERT INTO met_config VALUES('501','flash_68','3|950|300|1','','0','68','en');
INSERT INTO met_config VALUES('502','flash_69','3|950|300|1','','0','69','en');
INSERT INTO met_config VALUES('503','flash_70','3|950|300|1','','0','70','en');
INSERT INTO met_config VALUES('504','flash_71','3|950|300|1','','0','71','en');
INSERT INTO met_config VALUES('505','flash_53','3|950|300|1','','0','53','en');
INSERT INTO met_config VALUES('506','flash_64','3|950|300|1','','0','64','en');
INSERT INTO met_config VALUES('507','flash_52','3|950|300|1','','0','52','en');
INSERT INTO met_config VALUES('508','flash_63','3|950|300|1','','0','63','en');
INSERT INTO met_config VALUES('509','met_msg_ok','1','','52','0','en');
INSERT INTO met_config VALUES('510','met_msg_time','120','','52','0','en');
INSERT INTO met_config VALUES('511','met_msg_name_field','132','','52','0','en');
INSERT INTO met_config VALUES('512','met_msg_content_field','135','','52','0','en');
INSERT INTO met_config VALUES('513','met_msg_show_type','','','52','0','en');
INSERT INTO met_config VALUES('514','met_msg_type','1','','52','0','en');
INSERT INTO met_config VALUES('515','met_msg_to','','','52','0','en');
INSERT INTO met_config VALUES('516','met_msg_admin_tel','','','52','0','en');
INSERT INTO met_config VALUES('517','met_msg_back','0','','52','0','en');
INSERT INTO met_config VALUES('518','met_msg_email_field','0','','52','0','en');
INSERT INTO met_config VALUES('519','met_msg_title','','','52','0','en');
INSERT INTO met_config VALUES('520','met_msg_content','','','52','0','en');
INSERT INTO met_config VALUES('521','met_msg_sms_back','','','52','0','en');
INSERT INTO met_config VALUES('522','met_msg_sms_field','','','52','0','en');
INSERT INTO met_config VALUES('523','met_msg_sms_content','','','52','0','en');
INSERT INTO met_config VALUES('524','met_cv_time','120','','53','0','en');
INSERT INTO met_config VALUES('525','met_cv_image','161','','53','0','en');
INSERT INTO met_config VALUES('526','met_cv_showcol','150|154|155','','53','0','en');
INSERT INTO met_config VALUES('527','met_cv_emtype','1','','53','0','en');
INSERT INTO met_config VALUES('528','met_cv_type','','','53','0','en');
INSERT INTO met_config VALUES('529','met_cv_to','','','53','0','en');
INSERT INTO met_config VALUES('530','met_cv_job_tel','','','53','0','en');
INSERT INTO met_config VALUES('531','met_cv_back','0','','53','0','en');
INSERT INTO met_config VALUES('532','met_cv_email','155','','53','0','en');
INSERT INTO met_config VALUES('533','met_cv_title','','','53','0','en');
INSERT INTO met_config VALUES('534','met_cv_content','','','53','0','en');
INSERT INTO met_config VALUES('535','met_cv_sms_back','','','53','0','en');
INSERT INTO met_config VALUES('536','met_cv_sms_tell','','','53','0','en');
INSERT INTO met_config VALUES('537','met_cv_sms_content','','','53','0','en');
INSERT INTO met_config VALUES('538','met_fd_ok','1','','71','0','en');
INSERT INTO met_config VALUES('539','met_fdtable','feedback','','71','0','en');
INSERT INTO met_config VALUES('540','met_fd_time','120','','71','0','en');
INSERT INTO met_config VALUES('541','met_fd_showcol','146|147|149|181','','71','0','en');
INSERT INTO met_config VALUES('542','met_fd_related','146','','71','0','en');
INSERT INTO met_config VALUES('543','met_fd_inquiry','1','','71','0','en');
INSERT INTO met_config VALUES('544','met_fd_type','','','71','0','en');
INSERT INTO met_config VALUES('545','met_fd_to','','','71','0','en');
INSERT INTO met_config VALUES('546','met_fd_admin_tel','','','71','0','en');
INSERT INTO met_config VALUES('547','met_fd_back','0','','71','0','en');
INSERT INTO met_config VALUES('548','met_fd_email','1','','71','0','en');
INSERT INTO met_config VALUES('549','met_fd_title','','','71','0','en');
INSERT INTO met_config VALUES('550','met_fd_content','','','71','0','en');
INSERT INTO met_config VALUES('551','met_fd_sms_back','','','71','0','en');
INSERT INTO met_config VALUES('552','met_fd_sms_tell','','','71','0','en');
INSERT INTO met_config VALUES('553','met_fd_sms_content','','','71','0','en');

DROP TABLE IF EXISTS met_cv;
CREATE TABLE `met_cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime DEFAULT NULL,
  `readok` int(11) DEFAULT '0',
  `customerid` varchar(50) DEFAULT '0',
  `jobid` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  `ip` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_download;
CREATE TABLE `met_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '',
  `ctitle` varchar(200) DEFAULT '',
  `keywords` varchar(200) DEFAULT '',
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `new_ok` int(1) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `downloadurl` varchar(255) DEFAULT '',
  `filesize` varchar(100) DEFAULT '',
  `com_ok` int(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `issue` varchar(100) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `downloadaccess` int(11) DEFAULT '0',
  `filename` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text,
  `links` varchar(200) DEFAULT '',
  `text_size` int(11) DEFAULT '0',
  `text_color` varchar(100) DEFAULT '',
  `other_info` text,
  `custom_info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_download VALUES('1','产品使用说明书','','','目 录一、软件使用说明 二、软件安装过程： 三、巡更设备与电脑连接 四、操作步骤：五、软件操作流程 六、注意事项与系统维护七、常见故障处理 八、包装、运输及贮存 九、客户服务和技术支持承诺 十、产品保修卡、保修款','<p>目 录</p><p>一、软件使用说明&nbsp;</p><p>二、软件安装过程：</p><p>&nbsp;三、巡更设备与电脑连接&nbsp;</p><p>四、操作步骤：</p><p>五、软件操作流程&nbsp;</p><p>六、注意事项与系统维护</p><p>七、常见故障处理&nbsp;</p><p>八、包装、运输及贮存&nbsp;</p><p>九、客户服务和技术支持承诺&nbsp;</p><p>十、产品保修卡、保修款</p>','72','0','0','0','0','0','https://www.metinfo.cn/download/','100','0','6','2018-01-18 21:34:54','2018-01-18 21:31:42','admin','0','0','0','','cn','0','1','','','0','','','');

DROP TABLE IF EXISTS met_feedback;
CREATE TABLE `met_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class1` int(11) DEFAULT '0',
  `fdtitle` varchar(255) DEFAULT '',
  `fromurl` varchar(255) DEFAULT '',
  `ip` varchar(255) DEFAULT '',
  `addtime` datetime DEFAULT NULL,
  `readok` int(11) DEFAULT '0',
  `useinfo` text,
  `customerid` varchar(30) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_flash;
CREATE TABLE `met_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` text,
  `img_title` varchar(255) DEFAULT '',
  `img_path` varchar(255) DEFAULT '',
  `img_link` varchar(255) DEFAULT '',
  `flash_path` varchar(255) DEFAULT '',
  `flash_back` varchar(255) DEFAULT '',
  `no_order` int(11) DEFAULT '0',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `wap_ok` int(11) DEFAULT '0',
  `img_title_color` varchar(100) DEFAULT '',
  `img_des` varchar(255) DEFAULT '',
  `img_des_color` varchar(100) DEFAULT '',
  `img_text_position` varchar(100) DEFAULT '4',
  `img_title_fontsize` int(11) DEFAULT '0',
  `img_des_fontsize` int(11) DEFAULT '0',
  `height_m` int(11) DEFAULT '0',
  `height_t` int(11) DEFAULT '0',
  `mobile_img_path` varchar(255) DEFAULT '',
  `img_title_mobile` varchar(255) DEFAULT '',
  `img_title_color_mobile` varchar(100) DEFAULT '',
  `img_text_position_mobile` varchar(100) DEFAULT '4',
  `img_title_fontsize_mobile` int(11) DEFAULT '0',
  `img_des_mobile` varchar(255) DEFAULT '',
  `img_des_color_mobile` varchar(100) DEFAULT '',
  `img_des_fontsize_mobile` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  `target` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO met_flash VALUES('1',',10001,','米拓企业建站系统','../upload/201801/1516071062.jpg','','','','1','0','0','0','#ffffff','1个网站内容轻松同步到10种终端展示','#ffffff','1','28','20','0','0','../upload/201807/1532137793.jpg','米拓10合1建站','#ffffff','4','20','1个网站内容轻松同步到10种终端展示','#ffffff','16','cn','0');
INSERT INTO met_flash VALUES('2',',10001,','10年的坚持，不断的创新','../upload/201801/1516071261.jpg','','','','2','0','0','0','#ffffff','想你所想，可视化编辑让你轻松管理企业网站！','#ffffff','4','20','28','0','0','../upload/201807/1532139013.jpg','10年的坚持，不断的创新','#ffffff','4','20','想你所想，可视化编辑让你轻松管理企业网站！','#ffffff','16','cn','0');
INSERT INTO met_flash VALUES('3',',34,39,','','../upload/201801/1516068919.jpg','','','','1','0','0','0','#ffffff','','#ffffff','4','20','20','0','0','../upload/201807/1516068919.jpg','','#ffffff','4','20','','#ffffff','20','cn','0');
INSERT INTO met_flash VALUES('4',',10001,','MetInfo, The creative factory of Enterprise website','../upload/201801/1516071062.jpg','','','','1','0','0','0','#ffffff','Build high quality enterprise portal for you quickly','#ffffff','1','24','18','0','0','../upload/201807/1532137793.jpg','MetInfo, The creative factory of Enterprise website','#ffffff','4','20','Build high quality enterprise portal for you quickly','#ffffff','20','en','0');
INSERT INTO met_flash VALUES('5',',10001,','10 years of persistence，10 years of innovation','../upload/201801/1516071261.jpg','','','','2','0','0','0','#ffffff','Think of what you think，Visual editing allows you to easily manage your enterprise website','#ffffff','4','24','18','0','0','../upload/201807/1532139013.jpg','10 years of persistence，10 years of innovation','#ffffff','4','20','Think of what you think，Visual editing allows you to easily manage your enterprise website','#ffffff','20','en','0');
INSERT INTO met_flash VALUES('6',',54,','','../upload/201801/1516068743.jpg','','','','1','0','0','0','#ffffff','','#ffffff','4','20','20','0','0','../upload/201807/1516068919.jpg','','#ffffff','4','20','','#ffffff','20','en','0');

DROP TABLE IF EXISTS met_flash_button;
CREATE TABLE `met_flash_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flash_id` int(11) NOT NULL DEFAULT '0',
  `but_text` varchar(255) DEFAULT '',
  `but_url` varchar(255) DEFAULT '',
  `but_text_size` int(11) DEFAULT '0',
  `but_text_color` varchar(100) DEFAULT '',
  `but_text_hover_color` varchar(100) DEFAULT '',
  `but_color` varchar(100) DEFAULT '',
  `but_hover_color` varchar(100) DEFAULT '',
  `but_size` varchar(100) DEFAULT '',
  `is_mobile` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `target` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO met_flash_button VALUES('1','1','网站模板','https://www.metinfo.cn/product/','0','','','#ffffff','#ffffe0','','0','0','1','cn');
INSERT INTO met_flash_button VALUES('2','1','系统下载','https://www.metinfo.cn/download/','0','','','#ffffff','#ffffe0','','1','1','1','cn');
INSERT INTO met_flash_button VALUES('3','2','99元建站套餐','https://www.mituo.cn/99jz/','0','#ffffff','','#ffd700','#ffffff','','0','0','1','cn');
INSERT INTO met_flash_button VALUES('4','1','10合1建站','https://www.mituo.cn/10he1/','0','','','#ffffff','#ffffe0','','0','2','1','cn');

DROP TABLE IF EXISTS met_flist;
CREATE TABLE `met_flist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT '0',
  `paraid` int(11) DEFAULT '0',
  `info` text,
  `lang` varchar(50) DEFAULT '',
  `imgname` varchar(255) DEFAULT '',
  `module` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ifcolumn;
CREATE TABLE `met_ifcolumn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `appname` varchar(50) DEFAULT '' COMMENT '应用名称',
  `addfile` tinyint(1) DEFAULT '1',
  `memberleft` tinyint(1) DEFAULT '0',
  `uniqueness` tinyint(1) DEFAULT '0',
  `fixed_name` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ifcolumn_addfile;
CREATE TABLE `met_ifcolumn_addfile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '0',
  `filename` varchar(255) DEFAULT '',
  `m_name` varchar(255) DEFAULT '',
  `m_module` varchar(255) DEFAULT '',
  `m_class` varchar(255) DEFAULT '',
  `m_action` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ifmember_left;
CREATE TABLE `met_ifmember_left` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '0',
  `columnid` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `foldername` varchar(255) DEFAULT '',
  `filename` varchar(255) DEFAULT '',
  `target` int(11) DEFAULT '0',
  `own_order` varchar(11) DEFAULT '',
  `effect` int(1) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_img;
CREATE TABLE `met_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '',
  `ctitle` varchar(200) DEFAULT '',
  `keywords` varchar(200) DEFAULT '',
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `new_ok` int(1) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT '',
  `imgurls` varchar(255) DEFAULT '',
  `displayimg` text,
  `com_ok` int(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `issue` varchar(100) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `filename` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `contentinfo` varchar(255) DEFAULT '',
  `contentinfo1` varchar(255) DEFAULT '',
  `contentinfo2` varchar(255) DEFAULT '',
  `contentinfo3` varchar(255) DEFAULT '',
  `contentinfo4` varchar(255) DEFAULT '',
  `recycle` int(11) DEFAULT '0',
  `displaytype` int(11) DEFAULT '1',
  `tag` text,
  `links` varchar(200) DEFAULT '',
  `imgsize` varchar(200) DEFAULT '',
  `text_size` int(11) DEFAULT '0',
  `text_color` varchar(100) DEFAULT '',
  `other_info` text,
  `custom_info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO met_img VALUES('1','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515653752.jpg','','','0','0','2018-01-11 14:47:10','2018-01-11 14:47:23','','0','0','','cn','','','','','','','','','','0','1','','','1396x1024','0','','','');
INSERT INTO met_img VALUES('2','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515654160.jpg','','','0','0','2018-01-11 14:47:25','2018-01-11 14:47:31','','0','0','','cn','','','','','','','','','','0','1','','','2254x1600','0','','','');
INSERT INTO met_img VALUES('3','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515654101.jpg','','','0','0','2018-01-11 14:47:33','2018-01-11 14:47:39','','0','0','','cn','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('4','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515653728.jpg','','','0','0','2018-01-11 14:47:41','2018-01-11 14:47:51','','0','0','','cn','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('5','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515653749.jpg','','','0','1','2018-01-11 14:47:53','2018-01-11 14:48:02','','0','0','','cn','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('6','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515653703.jpg','','','0','0','2018-01-11 14:48:04','2018-01-11 14:48:12','','0','0','','cn','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('7','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515653585.jpg','','','0','0','2018-01-11 14:48:15','2018-01-11 14:48:21','','0','0','','cn','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('8','品牌案例展示','','','','','38','0','0','0','0','0','../upload/201801/1515653524.jpg','','','0','10','2018-01-11 14:48:22','2018-01-11 14:48:29','','0','0','','cn','','','','','','','','','','0','1','','','380x300','0','','','');
INSERT INTO met_img VALUES('9','case','','','','','70','0','0','0','0','0','../upload/201801/1515805525.jpg','','','0','0','2018-01-13 09:00:34','2018-01-13 09:00:46','','0','0','','en','','','','','','','','','','0','1','','','1396x1024','0','','','');
INSERT INTO met_img VALUES('10','case','','','','','70','0','0','0','0','0','../upload/201801/1515805683.jpg','','','0','0','2018-01-13 09:00:48','2018-01-13 09:01:00','','0','0','','en','','','','','','','','','','0','1','','','2254x1600','0','','','');
INSERT INTO met_img VALUES('11','case','','','','','70','0','0','0','0','0','../upload/201801/1515805865.jpg','','','0','0','2018-01-13 09:01:03','2018-01-13 09:01:15','','0','0','','en','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('12','case','','','','','70','0','0','0','0','0','../upload/201801/1515806222.jpg','','','0','0','2018-01-13 09:01:17','2018-01-13 09:01:26','','0','0','','en','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('13','case','','','','','70','0','0','0','0','0','../upload/201801/1515806279.jpg','','','0','0','2018-01-13 09:01:28','2018-01-13 09:01:37','','0','0','','en','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('14','case','','','','','70','0','0','0','0','0','../upload/201801/1515806159.jpg','','','0','0','2018-01-13 09:01:39','2018-01-13 09:01:47','','0','0','','en','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('15','case','','','','','70','0','0','0','0','0','../upload/201801/1515805805.jpg','','','0','0','2018-01-13 09:01:49','2018-01-13 09:01:57','','0','0','','en','','','','','','','','','','0','1','','','555x390','0','','','');
INSERT INTO met_img VALUES('16','case','','','','','70','0','0','0','0','0','../upload/201801/1515805886.jpg','','','0','8','2018-01-13 09:02:00','2018-01-13 09:02:10','','0','0','','en','','','','','','','','','','0','1','','','380x300','0','','','');

DROP TABLE IF EXISTS met_infoprompt;
CREATE TABLE `met_infoprompt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT '0',
  `newstitle` varchar(120) DEFAULT '',
  `content` text,
  `url` varchar(200) DEFAULT '',
  `member` varchar(50) DEFAULT '',
  `type` varchar(35) DEFAULT '',
  `time` int(11) DEFAULT '0',
  `see_ok` int(11) DEFAULT '0',
  `lang` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO met_infoprompt VALUES('1','0','MetInfo7.0.0 细节优化，内含补丁包20200407','','https://www.metinfo.cn/news/2737.html','','metinfo','1586311327','0','metinfo');
INSERT INTO met_infoprompt VALUES('2','0','单页部署插件已上线，可免费部署米拓单页到网站二级目录','','https://www.metinfo.cn/news/2736.html','','metinfo','1585707520','0','metinfo');
INSERT INTO met_infoprompt VALUES('3','0','评论插件V1.1已上线，支持文章评论和商品购买评论两种模式','','https://www.metinfo.cn/news/2735.html','','metinfo','1585539969','0','metinfo');
INSERT INTO met_infoprompt VALUES('4','0','MetInfo7.0.0 细节优化，内含补丁包20200326','','https://www.metinfo.cn/news/2734.html','','metinfo','1585531825','0','metinfo');
INSERT INTO met_infoprompt VALUES('5','0','MetInfo7.0.0 细节优化，内含补丁包20200318','','https://www.metinfo.cn/news/2733.html','','metinfo','1584578428','0','metinfo');
INSERT INTO met_infoprompt VALUES('6','0','微信分享应用插件上线-商业版专享','','https://www.metinfo.cn/news/2732.html','','metinfo','1584061053','0','metinfo');
INSERT INTO met_infoprompt VALUES('7','0','图片云加速插件已上线，支持阿里云、腾讯云、百度云、七牛云','','https://www.metinfo.cn/news/2731.html','','metinfo','1582679122','0','metinfo');
INSERT INTO met_infoprompt VALUES('8','0','城市服务商平台应用插件已上线','','https://www.metinfo.cn/news/2730.html','','metinfo','1582074419','0','metinfo');
INSERT INTO met_infoprompt VALUES('9','0','防伪码查询收费插件已上线','','https://www.metinfo.cn/news/2729.html','','metinfo','1581641514','0','metinfo');
INSERT INTO met_infoprompt VALUES('10','0','MetInfo7.0.0 细节优化，内含补丁包20200210','','https://www.metinfo.cn/news/2728.html','','metinfo','1581382485','0','metinfo');

DROP TABLE IF EXISTS met_job;
CREATE TABLE `met_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(200) DEFAULT '',
  `count` int(11) DEFAULT '0',
  `place` varchar(200) DEFAULT '',
  `deal` varchar(200) DEFAULT '',
  `addtime` date DEFAULT NULL,
  `updatetime` date DEFAULT NULL,
  `useful_life` int(11) DEFAULT '0',
  `content` longtext,
  `access` int(11) DEFAULT '0',
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `email` varchar(255) DEFAULT '',
  `filename` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `displaytype` int(11) DEFAULT '1',
  `text_size` int(11) DEFAULT '0',
  `text_color` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO met_job VALUES('1','环境推进专员','1','长沙','8K+','2018-01-11','2018-01-11','0','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 600; color: rgb(34, 34, 34);\">岗位要求：</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">本科及以上学历，环境或法律相关专业</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">5年以上电子或机械产品环境推进经验，五百强企业工作经验优先</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">了解RoHS、WEEE相关知识，并熟悉环境标识及能效标识等环境法规标准</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">流利日文以及英文沟通及书写能力</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">良好的人际沟通能力及团队合作学习能力</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">&nbsp;</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 600; color: rgb(34, 34, 34);\">工作内容：</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">跟踪和熟知与企业相关的环境法规动向及要求，并开展应对</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">就亚洲法律法规业务与总部、区域总部和公司内各部门进行沟通和信息的接受传达，协调相关业务的开展</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">公司内外部环境相关法律法规教育活动</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">积极开展公司内外的环境保护推进活动</span><br style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"/><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(34, 34, 34);\">协助上司完成部门内推进工作</span></span></p>','0','43','0','0','0','0','0','','','cn','1','14','');
INSERT INTO met_job VALUES('2','市场开拓主任','1','长沙','10K+','2018-01-11','2018-01-11','0','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 600;\">工作内容:</span><br/>1、负责佳能全系列产品在3-5级城市的市场开拓；<br/>2、收集分析市场信息，规划当地的市场策略；<br/>3、协调公司内部各个产品部门支持3-5级城市的总体市场销售。<br/>&nbsp;</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 16px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 600;\">要求：</span><br/>1、大专以上学历，30岁以上，5年以上大型公司市场或者销售工作经验；<br/>2、文案策划能力强，对市场敏锐度高，熟悉IT/OA/数码行业；<br/>3、具有对产品以及市场的规划、统筹能力，能适应适当出差；<br/>4、日语流利，会英语尤佳；<br/>5、具备协调沟通能力 。</span></p><p><br/></p>','0','43','0','0','0','0','0','','','cn','1','14','');
INSERT INTO met_job VALUES('3','Marketing Director','1','changsha','10K+','2018-01-13','2018-01-13','30','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><strong>Job content:</strong></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1, responsible for the market development of the whole series of Canon products in the 3-5 level city.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2. Collect and analyze the market information and plan the local market strategy.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3, coordinate the various product departments within the company to support the overall market sales of the 3-5 level cities.</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><strong>Requirement：</strong><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1, college or above, over 30 years of age, more than 5 years of large company market or sales experience;</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2, the copywriting ability is strong, the market acuity is high, and the IT/OA/ digital industry is familiar.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3. It has the ability to plan and co-ordinate the product and market, and can adapt to the appropriate business trip.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">4, fluent in Japanese, English is especially good.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">5. Have the ability to coordinate and communicate.</span></p><p><br/></p>','0','53','0','0','0','0','0','123321123@111.com','','en','1','14','');
INSERT INTO met_job VALUES('4','Environmental Promotion Commissioner','1','changsha','8k+','2018-01-13','2018-01-13','30','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><strong>Post requirements:</strong></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bachelor degree or above, environmental or legal related major</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">More than 5 years of electronic or mechanical product environment promotion experience, top five hundred enterprise work experience is preferred</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Understand RoHS, WEEE related knowledge, and be familiar with environmental code standards such as environmental signs and energy efficiency signs</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fluency in Japanese and English and English communication and writing skills</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Good interpersonal communication ability and team cooperative learning ability</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><strong>Job content：</strong></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Follow up and know the trend and requirements of the environmental laws and regulations related to the enterprise, and carry out the response</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Communicate and communicate with headquarters, regional headquarters and various departments of the company in Asia Law and regulation business, and coordinate related business development</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Internal and external environmental related laws and regulations education activities</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Actively carrying out environmental protection and promoting activities inside and outside the company</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Assisting the boss to finish the work in the Department</span></p><p><br/></p>','0','53','0','0','0','0','0','112315@111.com','','en','1','14','');

DROP TABLE IF EXISTS met_label;
CREATE TABLE `met_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oldwords` varchar(255) DEFAULT '',
  `newwords` varchar(255) DEFAULT '',
  `newtitle` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `num` int(11) DEFAULT '99',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_label VALUES('1','产品','产品','产品','https://www.metinfo.cn/','2','cn');

DROP TABLE IF EXISTS met_lang;
CREATE TABLE `met_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `useok` int(1) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `mark` varchar(50) DEFAULT '',
  `synchronous` varchar(50) DEFAULT '',
  `flag` varchar(100) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `newwindows` int(1) DEFAULT '0',
  `met_webhtm` int(1) DEFAULT '0',
  `met_htmtype` varchar(50) DEFAULT '',
  `met_weburl` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_lang VALUES('1','简体中文','1','1','cn','cn','cn.gif','','0','0','html','','cn');
INSERT INTO met_lang VALUES('2','English','1','2','en','en','en.gif','','0','0','html','','en');

DROP TABLE IF EXISTS met_lang_admin;
CREATE TABLE `met_lang_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '语言名称',
  `useok` int(1) DEFAULT '1' COMMENT '语言是否开启，1开启，0不开启',
  `no_order` int(11) DEFAULT '0' COMMENT '排序',
  `mark` varchar(50) DEFAULT '' COMMENT '语言标识（唯一）',
  `synchronous` varchar(50) DEFAULT '' COMMENT '同步官方语言标识',
  `link` varchar(255) DEFAULT '' COMMENT '语言外部链接',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_lang_admin VALUES('1','简体中文','1','1','cn','cn','','cn');
INSERT INTO met_lang_admin VALUES('2','English','1','2','en','en','','en');

DROP TABLE IF EXISTS met_language;
CREATE TABLE `met_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `value` text,
  `site` tinyint(1) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `array` int(11) DEFAULT '0',
  `app` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3675 DEFAULT CHARSET=utf8;

INSERT INTO met_language VALUES('1','system','系统参数','0','1','0','0','cn');
INSERT INTO met_language VALUES('2','search','搜索','0','16','1','0','cn');
INSERT INTO met_language VALUES('3','home','网站首页','0','17','1','0','cn');
INSERT INTO met_language VALUES('4','success','操作成功!','0','19','1','0','cn');
INSERT INTO met_language VALUES('5','Title','标题','0','24','1','0','cn');
INSERT INTO met_language VALUES('6','Content','内容','0','25','1','0','cn');
INSERT INTO met_language VALUES('7','Online','在线交流','0','30','1','0','cn');
INSERT INTO met_language VALUES('8','Noinfo','没有了','0','32','1','0','cn');
INSERT INTO met_language VALUES('9','displayimg','展示图片','0','40','1','0','cn');
INSERT INTO met_language VALUES('10','default','默认','0','41','1','0','cn');
INSERT INTO met_language VALUES('11','membercode','验证码错误！','0','1','2','0','cn');
INSERT INTO met_language VALUES('12','memberpassno','密码错误！','0','3','2','0','cn');
INSERT INTO met_language VALUES('13','access','您没有阅读该信息的权限！','0','4','2','0','cn');
INSERT INTO met_language VALUES('14','login','登录','0','5','2','0','cn');
INSERT INTO met_language VALUES('15','register','注册','0','6','2','0','cn');
INSERT INTO met_language VALUES('16','Page','页','0','2','3','0','cn');
INSERT INTO met_language VALUES('17','PagePre','上一页','0','6','3','0','cn');
INSERT INTO met_language VALUES('18','PageNext','下一页','0','7','3','0','cn');
INSERT INTO met_language VALUES('19','PageGo','转至第','0','8','3','0','cn');
INSERT INTO met_language VALUES('20','memberLogin','会员登录','0','2','4','0','cn');
INSERT INTO met_language VALUES('21','memberPassword','请输入密码','0','4','4','0','cn');
INSERT INTO met_language VALUES('22','memberName','会员名','0','6','4','0','cn');
INSERT INTO met_language VALUES('23','memberImgCode','验证码','0','8','4','0','cn');
INSERT INTO met_language VALUES('24','memberTip1','看不清？点击更换验证码','0','9','4','0','cn');
INSERT INTO met_language VALUES('25','memberGo','登录','0','11','4','0','cn');
INSERT INTO met_language VALUES('26','memberRegister','立即注册','0','12','4','0','cn');
INSERT INTO met_language VALUES('27','memberForget','忘记密码？','0','14','4','0','cn');
INSERT INTO met_language VALUES('28','memberIndex3','会员中心','0','17','4','0','cn');
INSERT INTO met_language VALUES('29','memberIndex9','个人信息','0','23','4','0','cn');
INSERT INTO met_language VALUES('30','memberIndex10','退出登录','0','24','4','0','cn');
INSERT INTO met_language VALUES('31','memberbasicUserName','用户名','0','32','4','0','cn');
INSERT INTO met_language VALUES('32','memberbasicCell','手机','0','38','4','0','cn');
INSERT INTO met_language VALUES('33','memberbasicLoginNum','登录次数','0','40','4','0','cn');
INSERT INTO met_language VALUES('34','memberbasicLastIP','最后登录IP','0','42','4','0','cn');
INSERT INTO met_language VALUES('35','memberbasicType','会员类型','0','50','4','0','cn');
INSERT INTO met_language VALUES('36','memberReg','会员注册','0','58','4','0','cn');
INSERT INTO met_language VALUES('37','memberDetail','查看','0','60','4','0','cn');
INSERT INTO met_language VALUES('38','messageeditorReply','管理员回复留言','0','74','4','0','cn');
INSERT INTO met_language VALUES('39','getNotice','会员找回密码','0','83','4','0','cn');
INSERT INTO met_language VALUES('40','NoidJS','没有此用户','0','87','4','0','cn');
INSERT INTO met_language VALUES('41','getTip1','您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：','0','89','4','0','cn');
INSERT INTO met_language VALUES('42','getTip2','取回密码的方法已经通过 Email 发送到您的信箱中。请在 3 天之内到网站修改您的密码。','0','90','4','0','cn');
INSERT INTO met_language VALUES('43','getTip3','您提交的找回密码邮件发送失败！请联系网站管理员！。','0','91','4','0','cn');
INSERT INTO met_language VALUES('44','getTip5','密码找回','0','93','4','0','cn');
INSERT INTO met_language VALUES('45','getOK','发送成功','0','97','4','0','cn');
INSERT INTO met_language VALUES('46','getFail','发送失败','0','98','4','0','cn');
INSERT INTO met_language VALUES('47','membernodo','该用户尚未激活，请即时与管理员联系!','0','99','4','0','cn');
INSERT INTO met_language VALUES('48','hello','您好！','0','100','4','0','cn');
INSERT INTO met_language VALUES('49','fileOK','文件上传成功','0','1','5','0','cn');
INSERT INTO met_language VALUES('50','js1','操作失败！','0','1','6','0','cn');
INSERT INTO met_language VALUES('51','js2','管理员身份登录！','0','2','6','0','cn');
INSERT INTO met_language VALUES('52','js4','无法激活此用户,请与管理员联系！','0','4','6','0','cn');
INSERT INTO met_language VALUES('53','js5','已成功激活,请登录！','0','5','6','0','cn');
INSERT INTO met_language VALUES('54','js6','用户名输入有误!','0','6','6','0','cn');
INSERT INTO met_language VALUES('55','js7','用户名不能小于3位','0','7','6','0','cn');
INSERT INTO met_language VALUES('56','js10','两次密码输入不一致','0','10','6','0','cn');
INSERT INTO met_language VALUES('57','js14','请输入验证码！','0','14','6','0','cn');
INSERT INTO met_language VALUES('58','js15','此用户名已经被使用','0','15','6','0','cn');
INSERT INTO met_language VALUES('59','js16','会员激活','0','16','6','0','cn');
INSERT INTO met_language VALUES('60','js18','请您点击','0','18','6','0','cn');
INSERT INTO met_language VALUES('61','js23','文件格式不允许上传。','0','23','6','0','cn');
INSERT INTO met_language VALUES('62','js25','注册成功！','0','25','6','0','cn');
INSERT INTO met_language VALUES('63','Download','点击下载','0','8','7','0','cn');
INSERT INTO met_language VALUES('64','Submit','提交信息','0','16','7','0','cn');
INSERT INTO met_language VALUES('65','TextLink','文字链接','0','34','7','0','cn');
INSERT INTO met_language VALUES('66','PictureLink','图片链接','0','35','7','0','cn');
INSERT INTO met_language VALUES('67','Contact','联系方式','0','36','7','0','cn');
INSERT INTO met_language VALUES('68','ApplyLink','申请友情链接','0','37','7','0','cn');
INSERT INTO met_language VALUES('69','SubmitInfo','提交留言','0','39','7','0','cn');
INSERT INTO met_language VALUES('70','Reply','管理员回复','0','42','7','0','cn');
INSERT INTO met_language VALUES('71','Feedback1','请不要在','0','49','7','0','cn');
INSERT INTO met_language VALUES('72','Feedback2','秒内重复提交信息，谢谢合作！','0','50','7','0','cn');
INSERT INTO met_language VALUES('73','Feedback3','反馈信息中不能包含','0','51','7','0','cn');
INSERT INTO met_language VALUES('74','Feedback5','反馈已经被关闭','0','52','7','0','cn');
INSERT INTO met_language VALUES('75','AddTime','提交时间','0','55','7','0','cn');
INSERT INTO met_language VALUES('76','SourcePage','来源页面','0','56','7','0','cn');
INSERT INTO met_language VALUES('77','Feedback4','反馈信息已成功提交，谢谢！','0','57','7','0','cn');
INSERT INTO met_language VALUES('78','Choice','请选择','0','58','1','0','cn');
INSERT INTO met_language VALUES('79','Empty','不能为空','0','59','7','0','cn');
INSERT INTO met_language VALUES('80','MessageInfo1','在线留言','0','63','7','0','cn');
INSERT INTO met_language VALUES('81','MessageInfo2','您的留言已成功提交，谢谢！','0','64','7','0','cn');
INSERT INTO met_language VALUES('82','MessageInfo5','该留言功能已经被关闭','0','67','7','0','cn');
INSERT INTO met_language VALUES('83','SearchInfo1','请输入搜索关键词！','0','71','7','0','cn');
INSERT INTO met_language VALUES('84','SearchInfo2','全站搜索','0','72','7','0','cn');
INSERT INTO met_language VALUES('85','SearchInfo3','没有含有','0','73','7','0','cn');
INSERT INTO met_language VALUES('86','SearchInfo4','的信息内容','0','74','7','0','cn');
INSERT INTO met_language VALUES('87','Job1','不限','0','75','7','0','cn');
INSERT INTO met_language VALUES('88','cvtitle','在线应聘','0','78','7','0','cn');
INSERT INTO met_language VALUES('89','cv','查看简历','0','79','7','0','cn');
INSERT INTO met_language VALUES('90','wap','手机版','0','87','7','0','cn');
INSERT INTO met_language VALUES('91','fliptext1','查看更多','0','48','1','0','cn');
INSERT INTO met_language VALUES('92','fliptext2','加载中...','0','49','1','0','cn');
INSERT INTO met_language VALUES('93','downloadtext1','下载','0','50','1','0','cn');
INSERT INTO met_language VALUES('94','tagweb','标签','0','66','1','0','cn');
INSERT INTO met_language VALUES('95','formerror1','请填写此字段。','0','0','1','0','cn');
INSERT INTO met_language VALUES('96','formerror2','请从这些选项中选择一个。','0','0','1','0','cn');
INSERT INTO met_language VALUES('97','formerror3','请输入正确的手机号码。','0','0','1','0','cn');
INSERT INTO met_language VALUES('98','formerror4','请输入正确的Email地址。','0','0','1','0','cn');
INSERT INTO met_language VALUES('99','formerror5','两次输入的密码不一致，请重新输入。','0','0','1','0','cn');
INSERT INTO met_language VALUES('100','formerror6','请输入至少&metinfo&个字符。','0','0','1','0','cn');
INSERT INTO met_language VALUES('101','formerror7','输入不能超过&metinfo&个字符。','0','0','1','0','cn');
INSERT INTO met_language VALUES('102','formerror8','输入的字符数必须在&metinfo&之间。','0','0','1','0','cn');
INSERT INTO met_language VALUES('103','read','阅读','0','0','1','0','cn');
INSERT INTO met_language VALUES('104','js46','不能重复','0','0','1','0','cn');
INSERT INTO met_language VALUES('105','emailchecktips1','感谢您的注册！激活链接已经发送到您的邮箱','0','103','4','0','cn');
INSERT INTO met_language VALUES('106','emailchecktips2','点击邮件里的链接即可激活账户','0','104','4','0','cn');
INSERT INTO met_language VALUES('107','emailchecktips3','还没收到确认邮件？','0','105','4','0','cn');
INSERT INTO met_language VALUES('108','emailchecktips4','尝试到广告邮件、垃圾邮件目录里找找看','0','106','4','0','cn');
INSERT INTO met_language VALUES('109','emailchecktips5','再次发送确认邮件','0','107','4','0','cn');
INSERT INTO met_language VALUES('110','accsafe','账号安全','0','108','4','0','cn');
INSERT INTO met_language VALUES('111','resend','重发','0','109','4','0','cn');
INSERT INTO met_language VALUES('112','getmemberImgCode','获取验证码','0','110','4','0','cn');
INSERT INTO met_language VALUES('113','password','密码','0','113','4','0','cn');
INSERT INTO met_language VALUES('114','userhave','用户名已存在','0','114','4','0','cn');
INSERT INTO met_language VALUES('115','emailhave','邮箱已被注册','0','115','4','0','cn');
INSERT INTO met_language VALUES('116','memberemail','邮箱','0','116','4','0','cn');
INSERT INTO met_language VALUES('117','memberMoreInfo','更多资料','0','117','4','0','cn');
INSERT INTO met_language VALUES('118','select','选择','0','118','4','0','cn');
INSERT INTO met_language VALUES('119','acchave','已有账号？','0','119','4','0','cn');
INSERT INTO met_language VALUES('120','accpassword','帐号密码','0','120','4','0','cn');
INSERT INTO met_language VALUES('121','accsaftips1','用于保护帐号信息和登录安全','0','121','4','0','cn');
INSERT INTO met_language VALUES('122','modify','修改','0','122','4','0','cn');
INSERT INTO met_language VALUES('123','accemail','邮箱绑定','0','123','4','0','cn');
INSERT INTO met_language VALUES('124','accsaftips2','邮箱绑定可以用于登录帐号，重置密码或其他安全验证','0','124','4','0','cn');
INSERT INTO met_language VALUES('125','acctel','手机绑定','0','125','4','0','cn');
INSERT INTO met_language VALUES('126','accsaftips3','手机绑定可以用于登录帐号，重置密码或其他安全验证','0','126','4','0','cn');
INSERT INTO met_language VALUES('127','modifypassword','密码修改','0','127','4','0','cn');
INSERT INTO met_language VALUES('128','oldpassword','原密码','0','128','4','0','cn');
INSERT INTO met_language VALUES('129','newpassword','新密码','0','129','4','0','cn');
INSERT INTO met_language VALUES('130','confirm','确定','0','130','4','0','cn');
INSERT INTO met_language VALUES('131','cancel','取消','0','131','4','0','cn');
INSERT INTO met_language VALUES('132','emailaddress','邮箱地址','0','132','4','0','cn');
INSERT INTO met_language VALUES('133','telnum','手机号码','0','134','4','0','cn');
INSERT INTO met_language VALUES('134','teluse','手机号码已被绑定','0','135','4','0','cn');
INSERT INTO met_language VALUES('135','telok','请输入正确的手机号码','0','136','4','0','cn');
INSERT INTO met_language VALUES('136','modifyacctel','修改手机绑定','0','137','4','0','cn');
INSERT INTO met_language VALUES('137','modifyinfo','保存资料','0','138','4','0','cn');
INSERT INTO met_language VALUES('138','emailnow','当前邮箱：','0','139','4','0','cn');
INSERT INTO met_language VALUES('139','newemail','新邮箱','0','140','4','0','cn');
INSERT INTO met_language VALUES('140','modifyaccemail','修改绑定邮箱','0','142','4','0','cn');
INSERT INTO met_language VALUES('141','renewpassword','重复密码','0','144','4','0','cn');
INSERT INTO met_language VALUES('142','inputcode','请输入验证码','0','145','4','0','cn');
INSERT INTO met_language VALUES('143','next','下一步','0','146','4','0','cn');
INSERT INTO met_language VALUES('144','logintips','用户名/邮箱/手机','0','147','4','0','cn');
INSERT INTO met_language VALUES('145','otherlogin','其它方式登录','0','148','4','0','cn');
INSERT INTO met_language VALUES('146','logintips1','没有账号？现在去注册','0','149','4','0','cn');
INSERT INTO met_language VALUES('147','rememberImgCode','重发验证码','0','150','4','0','cn');
INSERT INTO met_language VALUES('148','relogin','返回登录','0','151','4','0','cn');
INSERT INTO met_language VALUES('149','getpasswordtips','邮箱/手机','0','152','4','0','cn');
INSERT INTO met_language VALUES('150','regclose','注册功能已关闭','0','153','4','0','cn');
INSERT INTO met_language VALUES('151','regfail','注册失败','0','154','4','0','cn');
INSERT INTO met_language VALUES('152','codetimeout','验证码已超时','0','155','4','0','cn');
INSERT INTO met_language VALUES('153','telcheckfail','手机号码与短信验证号码不一致','0','156','4','0','cn');
INSERT INTO met_language VALUES('154','regsuc','注册成功！','0','157','4','0','cn');
INSERT INTO met_language VALUES('155','activesuc','激活成功，请登录！','0','158','4','0','cn');
INSERT INTO met_language VALUES('156','emailvildtips1','验证信息错误','0','159','4','0','cn');
INSERT INTO met_language VALUES('157','emailvildtips2','验证信息错误或已超时','0','160','4','0','cn');
INSERT INTO met_language VALUES('158','telreg','手机号已被注册','0','161','4','0','cn');
INSERT INTO met_language VALUES('159','Sendfrequent','发送过于频繁，请稍后再试','0','162','4','0','cn');
INSERT INTO met_language VALUES('160','emailsuc','邮件发送成功！','0','163','4','0','cn');
INSERT INTO met_language VALUES('161','emailfail','邮件发送失败，请确认邮箱是否正确或联系网站管理人员解决。','0','164','4','0','cn');
INSERT INTO met_language VALUES('162','modifysuc','修改成功','0','165','4','0','cn');
INSERT INTO met_language VALUES('163','binding','绑定','0','166','4','0','cn');
INSERT INTO met_language VALUES('164','notbound','未绑定','0','167','4','0','cn');
INSERT INTO met_language VALUES('165','accnotmodify','帐号无法修改','0','168','4','0','cn');
INSERT INTO met_language VALUES('166','emailsuclink','邮件发送成功！请点击邮件里的验证链接完成操作！','0','169','4','0','cn');
INSERT INTO met_language VALUES('167','bindingok','绑定成功','0','170','4','0','cn');
INSERT INTO met_language VALUES('168','opfail','操作失败','0','171','4','0','cn');
INSERT INTO met_language VALUES('169','modifypasswordsuc','密码修改成功！','0','172','4','0','cn');
INSERT INTO met_language VALUES('170','lodpasswordfail','原密码错误','0','173','4','0','cn');
INSERT INTO met_language VALUES('171','membererror1','用户名或密码错误','0','174','4','0','cn');
INSERT INTO met_language VALUES('172','membererror2','请开启session！','0','175','4','0','cn');
INSERT INTO met_language VALUES('173','membererror3','授权失败','0','176','4','0','cn');
INSERT INTO met_language VALUES('174','membererror4','未知错误','0','177','4','0','cn');
INSERT INTO met_language VALUES('175','membererror6','账号未激活，请联系管理员','0','174','4','0','cn');
INSERT INTO met_language VALUES('176','emailsucpass','密码找回邮件已经发送至您的邮箱，点击邮件里的链接即可重设密码。','0','178','4','0','cn');
INSERT INTO met_language VALUES('177','emailvildtips3','请输入正确的邮箱或手机号码','0','179','4','0','cn');
INSERT INTO met_language VALUES('178','membererror5','发送失败！错误码：','0','180','4','0','cn');
INSERT INTO met_language VALUES('179','noempty','此项不能为空','0','181','4','0','cn');
INSERT INTO met_language VALUES('180','usernamecheck','用户名必须在2-30个字符之间','0','182','4','0','cn');
INSERT INTO met_language VALUES('181','passwordcheck','密码必须在6-30个字符之间','0','183','4','0','cn');
INSERT INTO met_language VALUES('182','passwordsame','两次密码输入不一致','0','184','4','0','cn');
INSERT INTO met_language VALUES('183','emailcheck','请输入正确的Email地址','0','184','4','0','cn');
INSERT INTO met_language VALUES('184','Previous_news','上一篇','0','9','3','0','cn');
INSERT INTO met_language VALUES('185','Next_news','下一篇','0','10','3','0','cn');
INSERT INTO met_language VALUES('186','close','关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('187','browserupdatetips','你正在使用一个 <strong>过时</strong> 的浏览器。请 <a href=https://browsehappy.com/ target=_blank>升级您的浏览器</a>，以提高您的体验。','0','0','0','0','cn');
INSERT INTO met_language VALUES('188','newFeedback','收到了新的反馈','0','0','0','0','cn');
INSERT INTO met_language VALUES('189','opfailed','操作失败','0','0','1','0','cn');
INSERT INTO met_language VALUES('190','jobPrompt','收到了新的简历','0','0','0','0','cn');
INSERT INTO met_language VALUES('191','reMessage1','您的网站','0','0','0','0','cn');
INSERT INTO met_language VALUES('192','reMessage2','，请尽快登录网站后台查看','0','0','0','0','cn');
INSERT INTO met_language VALUES('193','messagePrompt','收到了新的留言','0','0','0','0','cn');
INSERT INTO met_language VALUES('194','formaterror','格式错误','0','0','0','0','cn');
INSERT INTO met_language VALUES('195','listcom','推荐','0','0','0','0','cn');
INSERT INTO met_language VALUES('196','listnew','最新','0','0','0','0','cn');
INSERT INTO met_language VALUES('197','listhot','热门','0','0','0','0','cn');
INSERT INTO met_language VALUES('198','weball','全部','0','0','0','0','cn');
INSERT INTO met_language VALUES('199','columnall','全部栏目','0','0','0','0','cn');
INSERT INTO met_language VALUES('200','accsaftips4','绑定用户证实身份信息','0','9','2','0','cn');
INSERT INTO met_language VALUES('201','rnvalidate','实名认证','0','9','2','0','cn');
INSERT INTO met_language VALUES('202','notauthen','未认证','0','9','2','0','cn');
INSERT INTO met_language VALUES('203','authen','已认证','0','9','1','0','cn');
INSERT INTO met_language VALUES('204','realname','真实姓名','0','9','2','0','cn');
INSERT INTO met_language VALUES('205','idcode','身份证号码','0','9','2','0','cn');
INSERT INTO met_language VALUES('206','idvalidok','实名认证成功','0','9','2','0','cn');
INSERT INTO met_language VALUES('207','idvalidfailed','实名认证失败','0','9','2','0','cn');
INSERT INTO met_language VALUES('208','systips1','您没有权限访问这个内容！请登录后访问！','0','0','0','0','cn');
INSERT INTO met_language VALUES('209','systips2','您所在用户组没有权限访问这个内容！','0','0','0','0','cn');
INSERT INTO met_language VALUES('210','usercheckok','验证成功！','0','0','1','0','cn');
INSERT INTO met_language VALUES('211','usereadinfo','阅读权限值必需大于0','0','0','0','0','cn');
INSERT INTO met_language VALUES('212','userselectname','选项卡','0','0','0','0','cn');
INSERT INTO met_language VALUES('213','userwenxinclose','微信登录功能已关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('214','userwenboclose','微博登录功能已关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('215','userqqclose','QQ登录功能已关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('216','userbuy','购买','0','0','0','0','cn');
INSERT INTO met_language VALUES('217','userbuylist','订单','0','0','0','0','cn');
INSERT INTO met_language VALUES('218','usesendcode','验证码为','0','0','0','0','cn');
INSERT INTO met_language VALUES('219','usesendcodeinfo','请及时输入验证','0','0','0','0','cn');
INSERT INTO met_language VALUES('220','feedbackinquiry','在线询价','0','0','0','0','cn');
INSERT INTO met_language VALUES('221','templatesusererror','当前语言模板未配置或模板文件不存在','0','0','0','0','cn');
INSERT INTO met_language VALUES('222','phonecode','获取手机验证码','0','0','0','0','cn');
INSERT INTO met_language VALUES('223','phonecodeerror','手机验证码错误','0','0','0','0','cn');
INSERT INTO met_language VALUES('224','memberbuytitle','付费升级会员组','0','0','0','0','cn');
INSERT INTO met_language VALUES('225','img_px_tips','图片尺寸超出系统限制(图片宽高不超过2000px)','0','0','1','0','cn');
INSERT INTO met_language VALUES('226','member_cv','简历','0','0','1','0','cn');
INSERT INTO met_language VALUES('227','please_login','请先登录！','0','0','0','0','cn');
INSERT INTO met_language VALUES('228','user_agreement','用户协议','0','0','0','0','cn');
INSERT INTO met_language VALUES('229','user_agreement_tips1','我已认真阅读','0','0','0','0','cn');
INSERT INTO met_language VALUES('230','user_agreement_tips2','并同意注册','0','0','0','0','cn');
INSERT INTO met_language VALUES('231','user_agreement_tips3','请阅读并勾选同意','0','0','0','0','cn');
INSERT INTO met_language VALUES('232','tag','TAG标签','0','0','0','0','cn');
INSERT INTO met_language VALUES('233','columnSearchInfo','请输入你感兴趣的关键词','0','0','0','0','cn');
INSERT INTO met_language VALUES('234','advancedSearchInfo','请输入你感兴趣的关键词','0','0','0','0','cn');
INSERT INTO met_language VALUES('235','notemptips','当前语言没有设置网站模板，请到“风格-网站模板”中选择1套模板','0','0','0','0','cn');
INSERT INTO met_language VALUES('236','AddDate','发布时间','0','0','0','0','cn');
INSERT INTO met_language VALUES('237','listsales','销量','0','0','0','0','cn');
INSERT INTO met_language VALUES('238','system','System parameters','0','1','0','0','en');
INSERT INTO met_language VALUES('239','search','search for','0','16','1','0','en');
INSERT INTO met_language VALUES('240','home','Home page','0','17','1','0','en');
INSERT INTO met_language VALUES('241','success','Successful operation!','0','19','1','0','en');
INSERT INTO met_language VALUES('242','Title','title','0','24','1','0','en');
INSERT INTO met_language VALUES('243','Content','content','0','25','1','0','en');
INSERT INTO met_language VALUES('244','Online','online chating','0','30','1','0','en');
INSERT INTO met_language VALUES('245','Noinfo','No more','0','32','1','0','en');
INSERT INTO met_language VALUES('246','displayimg','Show pictures','0','40','1','0','en');
INSERT INTO met_language VALUES('247','default','default','0','41','1','0','en');
INSERT INTO met_language VALUES('248','membercode','Verification code error!','0','1','2','0','en');
INSERT INTO met_language VALUES('249','memberpassno','wrong password!','0','3','2','0','en');
INSERT INTO met_language VALUES('250','access','You do not have permission to read this information!','0','4','2','0','en');
INSERT INTO met_language VALUES('251','login','log in','0','5','2','0','en');
INSERT INTO met_language VALUES('252','register','registered','0','6','2','0','en');
INSERT INTO met_language VALUES('253','Page','page','0','2','3','0','en');
INSERT INTO met_language VALUES('254','PagePre','Previous page','0','6','3','0','en');
INSERT INTO met_language VALUES('255','PageNext','Next page','0','7','3','0','en');
INSERT INTO met_language VALUES('256','PageGo','Go to No.','0','8','3','0','en');
INSERT INTO met_language VALUES('257','memberLogin','Member Login','0','2','4','0','en');
INSERT INTO met_language VALUES('258','memberPassword','Please enter the password','0','4','4','0','en');
INSERT INTO met_language VALUES('259','memberName','Member name','0','6','4','0','en');
INSERT INTO met_language VALUES('260','memberImgCode','Verification code','0','8','4','0','en');
INSERT INTO met_language VALUES('261','memberTip1','Can not see? Click to change verification code','0','9','4','0','en');
INSERT INTO met_language VALUES('262','memberGo','log in','0','11','4','0','en');
INSERT INTO met_language VALUES('263','memberRegister','Sign up now','0','12','4','0','en');
INSERT INTO met_language VALUES('264','memberForget','forget password?','0','14','4','0','en');
INSERT INTO met_language VALUES('265','memberIndex3','Member Centre','0','17','4','0','en');
INSERT INTO met_language VALUES('266','memberIndex9','Personal information','0','23','4','0','en');
INSERT INTO met_language VALUES('267','memberIndex10','Logout','0','23','4','0','en');
INSERT INTO met_language VALUES('268','memberbasicUserName','username','0','32','4','0','en');
INSERT INTO met_language VALUES('269','memberbasicCell','Phone','0','38','4','0','en');
INSERT INTO met_language VALUES('270','memberbasicLoginNum','Login times','0','40','4','0','en');
INSERT INTO met_language VALUES('271','memberbasicLastIP','Finally login IP','0','42','4','0','en');
INSERT INTO met_language VALUES('272','memberbasicType','Type of membership','0','50','4','0','en');
INSERT INTO met_language VALUES('273','memberReg','Sign Up','0','58','4','0','en');
INSERT INTO met_language VALUES('274','memberDetail','View','0','60','4','0','en');
INSERT INTO met_language VALUES('275','messageeditorReply','Administrator reply message','0','74','4','0','en');
INSERT INTO met_language VALUES('276','getNotice','Member retrieve password','0','83','4','0','en');
INSERT INTO met_language VALUES('277','NoidJS','Without this user','0','87','4','0','en');
INSERT INTO met_language VALUES('278','getTip1','Your password reset request has been verified. Please click the following link to enter your new password:','0','89','4','0','en');
INSERT INTO met_language VALUES('279','getTip2','The method of retrieving the password has been sent to your mailbox by email. Please change your password to the website within 3 days.','0','90','4','0','en');
INSERT INTO met_language VALUES('280','getTip3','Your submitted password recovery email failed to send! Please contact the webmaster! .','0','91','4','0','en');
INSERT INTO met_language VALUES('281','getTip5','recover password','0','93','4','0','en');
INSERT INTO met_language VALUES('282','getOK','Sent successfully','0','97','4','0','en');
INSERT INTO met_language VALUES('283','getFail','Failed to send','0','98','4','0','en');
INSERT INTO met_language VALUES('284','membernodo','The user has not activated yet, please contact the administrator immediately!','0','99','4','0','en');
INSERT INTO met_language VALUES('285','hello','Hello!','0','100','4','0','en');
INSERT INTO met_language VALUES('286','fileOK','File upload is successful','0','1','5','0','en');
INSERT INTO met_language VALUES('287','js1','operation failed!','0','1','6','0','en');
INSERT INTO met_language VALUES('288','js2','Administrator login!','0','2','6','0','en');
INSERT INTO met_language VALUES('289','js4','Can not activate this user, please contact the administrator!','0','4','6','0','en');
INSERT INTO met_language VALUES('290','js5','Has been activated, please login!','0','5','6','0','en');
INSERT INTO met_language VALUES('291','js6','user name input error!','0','6','6','0','en');
INSERT INTO met_language VALUES('292','js7','User name can not be less than 3 digits','0','7','6','0','en');
INSERT INTO met_language VALUES('293','js10','The password input is inconsistent twice','0','10','6','0','en');
INSERT INTO met_language VALUES('294','js14','please enter verification code!','0','14','6','0','en');
INSERT INTO met_language VALUES('295','js15','This username has been used','0','15','6','0','en');
INSERT INTO met_language VALUES('296','js16','Member activation','0','16','6','0','en');
INSERT INTO met_language VALUES('297','js18','Please click','0','18','6','0','en');
INSERT INTO met_language VALUES('298','js23','File format does not allow uploading.','0','23','6','0','en');
INSERT INTO met_language VALUES('299','js25','Registration is successful, please click the verification link in the mailbox to activate the account!!','0','25','6','0','en');
INSERT INTO met_language VALUES('300','Download','click to download','0','8','7','0','en');
INSERT INTO met_language VALUES('301','Submit','Submit Information','0','16','7','0','en');
INSERT INTO met_language VALUES('302','TextLink','Text link','0','34','7','0','en');
INSERT INTO met_language VALUES('303','PictureLink','image link','0','35','7','0','en');
INSERT INTO met_language VALUES('304','Contact','Contact information','0','36','7','0','en');
INSERT INTO met_language VALUES('305','ApplyLink','Apply for a friendship link','0','37','7','0','en');
INSERT INTO met_language VALUES('306','SubmitInfo','Submit Message','0','39','7','0','en');
INSERT INTO met_language VALUES('307','Reply','Administrator reply','0','42','7','0','en');
INSERT INTO met_language VALUES('308','Feedback1','Please do not be there','0','49','7','0','en');
INSERT INTO met_language VALUES('309','Feedback2','Seconds to submit information, thank you for your cooperation!','0','50','7','0','en');
INSERT INTO met_language VALUES('310','Feedback3','Feedback can not be included','0','51','7','0','en');
INSERT INTO met_language VALUES('311','Feedback5','Feedback has been closed','0','52','7','0','en');
INSERT INTO met_language VALUES('312','AddTime','Submit time','0','55','7','0','en');
INSERT INTO met_language VALUES('313','SourcePage','Source page','0','56','7','0','en');
INSERT INTO met_language VALUES('314','Feedback4','Feedback has been submitted, thank you!','0','57','7','0','en');
INSERT INTO met_language VALUES('315','Choice','please choose','0','58','1','0','en');
INSERT INTO met_language VALUES('316','Empty','Can not be empty','0','59','7','0','en');
INSERT INTO met_language VALUES('317','MessageInfo1','Online message','0','63','7','0','en');
INSERT INTO met_language VALUES('318','MessageInfo2','Your message has been successfully submitted, thank you!','0','64','7','0','en');
INSERT INTO met_language VALUES('319','MessageInfo5','Message has been closed','0','67','7','0','en');
INSERT INTO met_language VALUES('320','SearchInfo1','Enter search keywords!','0','71','7','0','en');
INSERT INTO met_language VALUES('321','SearchInfo2','Site Search','0','72','7','0','en');
INSERT INTO met_language VALUES('322','SearchInfo3','Not included','0','73','7','0','en');
INSERT INTO met_language VALUES('323','SearchInfo4','Information content','0','74','7','0','en');
INSERT INTO met_language VALUES('324','Job1','Not limited to','0','75','7','0','en');
INSERT INTO met_language VALUES('325','cvtitle','apply online','0','78','7','0','en');
INSERT INTO met_language VALUES('326','cv','View your resume','0','79','7','0','en');
INSERT INTO met_language VALUES('327','wap','Mobile version','0','87','7','0','en');
INSERT INTO met_language VALUES('328','fliptext1','see more','0','48','1','0','en');
INSERT INTO met_language VALUES('329','fliptext2','Loading...','0','49','1','0','en');
INSERT INTO met_language VALUES('330','downloadtext1','download','0','50','1','0','en');
INSERT INTO met_language VALUES('331','tagweb','label','0','66','1','0','en');
INSERT INTO met_language VALUES('332','formerror1','Please fill in this field.','0','0','1','0','en');
INSERT INTO met_language VALUES('333','formerror2','Please choose one of these options.','0','0','1','0','en');
INSERT INTO met_language VALUES('334','formerror3','Please enter the correct phone number.','0','0','1','0','en');
INSERT INTO met_language VALUES('335','formerror4','Please enter the correct email address.','0','0','1','0','en');
INSERT INTO met_language VALUES('336','formerror5','The password entered twice is different. Please re-enter it.','0','0','1','0','en');
INSERT INTO met_language VALUES('337','formerror6','Please enter at least & metinfo & characters.','0','0','1','0','en');
INSERT INTO met_language VALUES('338','formerror7','Input can not exceed & metinfo & characters.','0','0','1','0','en');
INSERT INTO met_language VALUES('339','formerror8','The number of characters entered must be between & metinfo &.','0','0','1','0','en');
INSERT INTO met_language VALUES('340','read','read','0','0','1','0','en');
INSERT INTO met_language VALUES('341','js46','Can not repeat','0','0','1','0','en');
INSERT INTO met_language VALUES('342','emailchecktips1','Thank you for your registration! The activation link has been sent to your email','0','103','4','0','en');
INSERT INTO met_language VALUES('343','emailchecktips2','Click the link in the email to activate the account','0','104','4','0','en');
INSERT INTO met_language VALUES('344','emailchecktips3','Have not received confirmation email?','0','105','4','0','en');
INSERT INTO met_language VALUES('345','emailchecktips4','Try to find the advertising mail, spam directory look','0','106','4','0','en');
INSERT INTO met_language VALUES('346','emailchecktips5','Send a confirmation email again','0','107','4','0','en');
INSERT INTO met_language VALUES('347','accsafe','Account safe','0','108','4','0','en');
INSERT INTO met_language VALUES('348','resend','Resend','0','109','4','0','en');
INSERT INTO met_language VALUES('349','getmemberImgCode','get verification code','0','110','4','0','en');
INSERT INTO met_language VALUES('350','password','password','0','113','4','0','en');
INSERT INTO met_language VALUES('351','userhave','Username already exists','0','114','4','0','en');
INSERT INTO met_language VALUES('352','emailhave','E-mail has been registered','0','115','4','0','en');
INSERT INTO met_language VALUES('353','memberemail','mailbox','0','116','4','0','en');
INSERT INTO met_language VALUES('354','memberMoreInfo','more info','0','117','4','0','en');
INSERT INTO met_language VALUES('355','select','select','0','118','4','0','en');
INSERT INTO met_language VALUES('356','acchave','Already have an account?','0','119','4','0','en');
INSERT INTO met_language VALUES('357','accpassword','account password','0','120','4','0','en');
INSERT INTO met_language VALUES('358','accsaftips1','Used to protect account information and login security','0','121','4','0','en');
INSERT INTO met_language VALUES('359','modify','modify','0','122','4','0','en');
INSERT INTO met_language VALUES('360','accemail','Mailbox binding','0','123','4','0','en');
INSERT INTO met_language VALUES('361','accsaftips2','Mailbox bindings can be used to log in to an account, reset password, or other security verification','0','124','4','0','en');
INSERT INTO met_language VALUES('362','acctel','Phone binding','0','125','4','0','en');
INSERT INTO met_language VALUES('363','accsaftips3','Phone bindings can be used to log in to an account, reset password, or other security verification','0','126','4','0','en');
INSERT INTO met_language VALUES('364','modifypassword','change Password','0','127','4','0','en');
INSERT INTO met_language VALUES('365','oldpassword','old password','0','128','4','0','en');
INSERT INTO met_language VALUES('366','newpassword','new password','0','129','4','0','en');
INSERT INTO met_language VALUES('367','confirm','determine','0','130','4','0','en');
INSERT INTO met_language VALUES('368','cancel','cancel','0','131','4','0','en');
INSERT INTO met_language VALUES('369','emailaddress','email address','0','132','4','0','en');
INSERT INTO met_language VALUES('370','telnum','cellphone number','0','134','4','0','en');
INSERT INTO met_language VALUES('371','teluse','Phone number is bound','0','135','4','0','en');
INSERT INTO met_language VALUES('372','telok','Please enter the correct phone number','0','136','4','0','en');
INSERT INTO met_language VALUES('373','modifyacctel','Modify phone binding','0','137','4','0','en');
INSERT INTO met_language VALUES('374','modifyinfo','Save the data','0','138','4','0','en');
INSERT INTO met_language VALUES('375','emailnow','Current email:','0','139','4','0','en');
INSERT INTO met_language VALUES('376','newemail','new mail box','0','140','4','0','en');
INSERT INTO met_language VALUES('377','modifyaccemail','Modify the binding mailbox','0','142','4','0','en');
INSERT INTO met_language VALUES('378','renewpassword','Repeat password','0','144','4','0','en');
INSERT INTO met_language VALUES('379','inputcode','please enter verification code','0','145','4','0','en');
INSERT INTO met_language VALUES('380','next','Next step','0','146','4','0','en');
INSERT INTO met_language VALUES('381','logintips','Username / email / phone','0','147','4','0','en');
INSERT INTO met_language VALUES('382','otherlogin','Other ways to log in','0','148','4','0','en');
INSERT INTO met_language VALUES('383','logintips1','No account? Register now','0','149','4','0','en');
INSERT INTO met_language VALUES('384','rememberImgCode','Resend the verification code','0','150','4','0','en');
INSERT INTO met_language VALUES('385','relogin','Back to login','0','151','4','0','en');
INSERT INTO met_language VALUES('386','getpasswordtips','email / phone number','0','152','4','0','en');
INSERT INTO met_language VALUES('387','regclose','Registration is turned off','0','153','4','0','en');
INSERT INTO met_language VALUES('388','regfail','registration failed','0','154','4','0','en');
INSERT INTO met_language VALUES('389','codetimeout','Verification code has timed out','0','155','4','0','en');
INSERT INTO met_language VALUES('390','telcheckfail','Phone number and SMS verification number is inconsistent','0','156','4','0','en');
INSERT INTO met_language VALUES('391','regsuc','registration success!','0','157','4','0','en');
INSERT INTO met_language VALUES('392','activesuc','Activation successful，please login now','0','158','4','0','en');
INSERT INTO met_language VALUES('393','emailvildtips1','The verification information is wrong','0','159','4','0','en');
INSERT INTO met_language VALUES('394','emailvildtips2','Verification information is incorrect or timed out','0','160','4','0','en');
INSERT INTO met_language VALUES('395','telreg','Phone number has been registered','0','161','4','0','en');
INSERT INTO met_language VALUES('396','Sendfrequent','Sent too often, please try again later','0','162','4','0','en');
INSERT INTO met_language VALUES('397','emailsuc','Mail sent successfully!','0','163','4','0','en');
INSERT INTO met_language VALUES('398','emailfail','E-mail sent failed, please confirm that the mailbox is correct or contact Webmaster to solve.','0','164','4','0','en');
INSERT INTO met_language VALUES('399','modifysuc','Successfully modified','0','165','4','0','en');
INSERT INTO met_language VALUES('400','binding','Bind','0','166','4','0','en');
INSERT INTO met_language VALUES('401','notbound','Not bound','0','167','4','0','en');
INSERT INTO met_language VALUES('402','accnotmodify','Account can not be modified','0','168','4','0','en');
INSERT INTO met_language VALUES('403','emailsuclink','Mail sent successfully! Please click the verification link in the email to complete the operation!','0','169','4','0','en');
INSERT INTO met_language VALUES('404','bindingok','Bind success','0','170','4','0','en');
INSERT INTO met_language VALUES('405','opfail','operation failed','0','171','4','0','en');
INSERT INTO met_language VALUES('406','modifypasswordsuc','Password reset complete!','0','172','4','0','en');
INSERT INTO met_language VALUES('407','lodpasswordfail','The original password is wrong','0','173','4','0','en');
INSERT INTO met_language VALUES('408','membererror1','wrong user name or password','0','174','4','0','en');
INSERT INTO met_language VALUES('409','membererror2','Please open the session!','0','175','4','0','en');
INSERT INTO met_language VALUES('410','membererror3','Authorization failed','0','176','4','0','en');
INSERT INTO met_language VALUES('411','membererror4','unknown mistake','0','177','4','0','en');
INSERT INTO met_language VALUES('412','membererror6','The account is not activated. Please contact the administrator','0','174','4','0','en');
INSERT INTO met_language VALUES('413','emailsucpass','Password recovery email has been sent to your email address, click the link in the email to reset your password.','0','178','4','0','en');
INSERT INTO met_language VALUES('414','emailvildtips3','Please enter the correct email or phone number','0','179','4','0','en');
INSERT INTO met_language VALUES('415','membererror5','Failed to send! error code:','0','180','4','0','en');
INSERT INTO met_language VALUES('416','noempty','This item can not be empty','0','181','4','0','en');
INSERT INTO met_language VALUES('417','usernamecheck','Username must be between 2-30 characters','0','182','4','0','en');
INSERT INTO met_language VALUES('418','passwordcheck','The password must be between 6 and 30 characters','0','183','4','0','en');
INSERT INTO met_language VALUES('419','passwordsame','The password input is inconsistent twice','0','184','4','0','en');
INSERT INTO met_language VALUES('420','emailcheck','Please enter the correct email address','0','184','4','0','en');
INSERT INTO met_language VALUES('421','Previous_news','Previous','0','9','3','0','en');
INSERT INTO met_language VALUES('422','Next_news','Next','0','10','3','0','en');
INSERT INTO met_language VALUES('423','close','shut down','0','0','0','0','en');
INSERT INTO met_language VALUES('424','browserupdatetips','You are using a <strong> obsolete </ strong> browser. Please <a href=https://browsehappy.com/ target=_blank> upgrade your browser </a> to enhance your experience.','0','0','0','0','en');
INSERT INTO met_language VALUES('425','newFeedback','You received new feedback','0','0','0','0','en');
INSERT INTO met_language VALUES('426','opfailed','operation failed','0','0','1','0','en');
INSERT INTO met_language VALUES('427','jobPrompt','Received a new resume','0','0','0','0','en');
INSERT INTO met_language VALUES('428','reMessage1','Your website','0','0','0','0','en');
INSERT INTO met_language VALUES('429','reMessage2',', Please log in as soon as possible to view the website background','0','0','0','0','en');
INSERT INTO met_language VALUES('430','messagePrompt','Received a new message','0','0','0','0','en');
INSERT INTO met_language VALUES('431','formaterror','wrong format','0','0','0','0','en');
INSERT INTO met_language VALUES('432','listcom','recommend','0','0','0','0','en');
INSERT INTO met_language VALUES('433','listnew','update','0','0','0','0','en');
INSERT INTO met_language VALUES('434','listhot','Popular','0','0','0','0','en');
INSERT INTO met_language VALUES('435','weball','All','0','0','0','0','en');
INSERT INTO met_language VALUES('436','columnall','All columns','0','0','0','0','en');
INSERT INTO met_language VALUES('437','accsaftips4','Binding user confirmation of identity information','0','9','2','0','en');
INSERT INTO met_language VALUES('438','rnvalidate','Real name authentication','0','9','2','0','en');
INSERT INTO met_language VALUES('439','notauthen','Uncertified','0','9','2','0','en');
INSERT INTO met_language VALUES('440','authen','Certified','0','9','1','0','en');
INSERT INTO met_language VALUES('441','realname','Real name','0','9','2','0','en');
INSERT INTO met_language VALUES('442','idcode','ID card No.','0','9','2','0','en');
INSERT INTO met_language VALUES('443','idvalidok','Success of real name authentication','0','9','2','0','en');
INSERT INTO met_language VALUES('444','idvalidfailed','Real name authentication failure','0','9','2','0','en');
INSERT INTO met_language VALUES('445','systips1','You do not have permission to access this content! Please login to visit!','0','0','0','0','en');
INSERT INTO met_language VALUES('446','systips2','Your user group does not have permission to access this content!','0','0','0','0','en');
INSERT INTO met_language VALUES('447','usercheckok','Verification success!','0','0','1','0','en');
INSERT INTO met_language VALUES('448','usereadinfo','Reading permission value must be greater than 0','0','0','0','0','en');
INSERT INTO met_language VALUES('449','userselectname','Tab','0','0','0','0','en');
INSERT INTO met_language VALUES('450','userwenxinclose','Wechat login is off','0','0','0','0','en');
INSERT INTO met_language VALUES('451','userwenboclose','Weibo login is turned off','0','0','0','0','en');
INSERT INTO met_language VALUES('452','userqqclose','QQ login function is closed','0','0','0','0','en');
INSERT INTO met_language VALUES('453','userbuy','buy','0','0','0','0','en');
INSERT INTO met_language VALUES('454','userbuylist','Order','0','0','0','0','en');
INSERT INTO met_language VALUES('455','usesendcode','The verification code is','0','0','0','0','en');
INSERT INTO met_language VALUES('456','usesendcodeinfo','Please enter the verification in time','0','0','0','0','en');
INSERT INTO met_language VALUES('457','feedbackinquiry','Online Inquiry','0','0','0','0','en');
INSERT INTO met_language VALUES('458','templatesusererror','The current language template is not configured or the template file does not exist','0','0','0','0','en');
INSERT INTO met_language VALUES('459','phonecode','Get phone verification code','0','0','0','0','en');
INSERT INTO met_language VALUES('460','phonecodeerror','Mobile phone verification code error','0','0','0','0','en');
INSERT INTO met_language VALUES('461','memberbuytitle','Paid upgrade member group','0','0','0','0','en');
INSERT INTO met_language VALUES('462','img_px_tips','Picture size exceeds system limit (picture width not exceeding 2000px)','0','0','1','0','en');
INSERT INTO met_language VALUES('463','member_cv','curriculum vitae','0','0','1','0','en');
INSERT INTO met_language VALUES('464','please_login','Log in first, please!','0','0','0','0','en');
INSERT INTO met_language VALUES('465','user_agreement','User Agreement','0','0','0','0','en');
INSERT INTO met_language VALUES('466','user_agreement_tips1','I have read it carefully','0','0','0','0','en');
INSERT INTO met_language VALUES('467','user_agreement_tips2','And agree to register','0','0','0','0','en');
INSERT INTO met_language VALUES('468','user_agreement_tips3','Please read and tick agree','0','0','0','0','en');
INSERT INTO met_language VALUES('469','tag','Tag','0','0','0','0','en');
INSERT INTO met_language VALUES('470','columnSearchInfo','Please enter the keywords you are interested in.','0','0','0','0','en');
INSERT INTO met_language VALUES('471','advancedSearchInfo','Please enter the keywords you are interested in.','0','0','0','0','en');
INSERT INTO met_language VALUES('472','notemptips','There is no website template in the current language. Please go to Style-Website Template and select a set of templates.','0','0','0','0','en');
INSERT INTO met_language VALUES('473','AddDate','Publish time','0','0','0','0','en');
INSERT INTO met_language VALUES('474','listsales','sales','0','0','0','0','en');
INSERT INTO met_language VALUES('475','cooperation_platform','企业超市','1','436','0','0','cn');
INSERT INTO met_language VALUES('476','feedback_interaction','反馈互动','1','437','0','0','cn');
INSERT INTO met_language VALUES('477','banner_manage','Banner管理','1','437','0','0','cn');
INSERT INTO met_language VALUES('478','unitytxt_71','二维码','1','435','0','0','cn');
INSERT INTO met_language VALUES('479','unitytxt_69','安装文件删除','1','433','8','0','cn');
INSERT INTO met_language VALUES('480','unitytxt_70','上传文件','1','434','8','0','cn');
INSERT INTO met_language VALUES('481','unitytxt_39','基本设置','1','403','1','0','cn');
INSERT INTO met_language VALUES('482','unitytxt_42','列表页每页显示条数','1','406','0','0','cn');
INSERT INTO met_language VALUES('483','unitytxt_38','代码会放在 &lt;/body&gt; 标签以上','1','402','39','0','cn');
INSERT INTO met_language VALUES('484','unitytxt_37','代码会放在 &lt;/head&gt; 标签以上','1','401','39','0','cn');
INSERT INTO met_language VALUES('485','unitytxt_33','权限设置','1','397','39','0','cn');
INSERT INTO met_language VALUES('486','unitytxt_34','资料文档上传','1','398','40','0','cn');
INSERT INTO met_language VALUES('487','unitytxt_36','PC端第三方代码（一般用于放置百度商桥代码、站长统计代码、谷歌翻译代码等）','1','400','39','0','cn');
INSERT INTO met_language VALUES('488','unitytxt_25','关键词设置','1','389','32','0','cn');
INSERT INTO met_language VALUES('489','unitytxt_26','优化文字设置（可用于增加关键词密度，需要网站模板支持）','1','390','32','0','cn');
INSERT INTO met_language VALUES('490','unitytxt_15','其它设置','1','379','0','0','cn');
INSERT INTO met_language VALUES('491','unitytxt_13','底部信息设置（显示在网站前台底部）','1','377','39','0','cn');
INSERT INTO met_language VALUES('492','unitytxt_14','样式设置','1','378','23','0','cn');
INSERT INTO met_language VALUES('493','unitytxt_10','仅适用用于中文前台语言（语言标识为cn或zh时生效），浏览者可以在简繁体之间切换。','1','374','16','0','cn');
INSERT INTO met_language VALUES('494','unitytxt_9','同步官方参数','1','373','16','0','cn');
INSERT INTO met_language VALUES('495','unitytxt_8','该语言设置了独立域名，需要修改网站网址请在<font class=\'red\'>语言设置</font>中修改。','1','372','39','0','cn');
INSERT INTO met_language VALUES('496','unitytxt_7','备份包下载后建议及时删除备份文件，以免影响空间大小（如果你的虚拟主机限定流量，你可以通过FTP下载节省流量）','1','371','0','0','cn');
INSERT INTO met_language VALUES('497','unitytxt_6','版本不一致','1','370','0','0','cn');
INSERT INTO met_language VALUES('498','unitytxt_2','勾选则采用默认设置','1','366','0','0','cn');
INSERT INTO met_language VALUES('499','ssl','SSL服务方式','1','362','39','0','cn');
INSERT INTO met_language VALUES('500','tls','TLS服务方式','1','363','39','0','cn');
INSERT INTO met_language VALUES('501','loginFail','操作失败!','1','359','8','0','cn');
INSERT INTO met_language VALUES('502','NoidJS','没有此用户','1','349','38','0','cn');
INSERT INTO met_language VALUES('503','jsx32','登录超时，请重新登录！','1','344','0','0','cn');
INSERT INTO met_language VALUES('504','jsx27','静态页面名已存在','1','339','0','0','cn');
INSERT INTO met_language VALUES('505','jsx20','正在检测...','1','332','0','0','cn');
INSERT INTO met_language VALUES('506','jsx17','上传成功！','1','329','0','0','cn');
INSERT INTO met_language VALUES('507','jsx15','上传','1','327','1','0','cn');
INSERT INTO met_language VALUES('508','jsx10','错误','1','322','0','0','cn');
INSERT INTO met_language VALUES('509','jsx2','请至少选一种语言！','1','314','0','0','cn');
INSERT INTO met_language VALUES('510','jsx3','请先选择需要复制的表单','1','315','0','0','cn');
INSERT INTO met_language VALUES('511','jsx1','载入中...','1','313','0','0','cn');
INSERT INTO met_language VALUES('512','js67','请至少选择一个所属栏目','1','309','0','0','cn');
INSERT INTO met_language VALUES('513','js55','返回','1','297','1','0','cn');
INSERT INTO met_language VALUES('514','js56','移动为一级栏目必须设置一个新的目录名称(目录名只能是数字或字母)','1','298','0','0','cn');
INSERT INTO met_language VALUES('515','js46','不能重复','1','288','0','0','cn');
INSERT INTO met_language VALUES('516','js49','撤销','1','291','0','0','cn');
INSERT INTO met_language VALUES('517','js41','不能为空！','1','283','0','0','cn');
INSERT INTO met_language VALUES('518','js36','请选择语言','1','278','0','0','cn');
INSERT INTO met_language VALUES('519','js35','上传临时文件夹（upload_tmp_dir）不可写或者域名/后台文件夹/include/uploadify.php没有访问权限。','1','277','0','0','cn');
INSERT INTO met_language VALUES('520','js25','图片地址不能为空！','1','267','0','0','cn');
INSERT INTO met_language VALUES('521','js23','没有选中的记录!','1','265','0','0','cn');
INSERT INTO met_language VALUES('522','js18','原文字不能为空','1','260','0','0','cn');
INSERT INTO met_language VALUES('523','js15','请选择上传文件','1','257','0','0','cn');
INSERT INTO met_language VALUES('524','js16','下载地址不能为空','1','258','0','0','cn');
INSERT INTO met_language VALUES('525','js14','请选择二级及三级栏目','1','256','0','0','cn');
INSERT INTO met_language VALUES('526','js10','您的修改内容还没有保存，您确定离开吗？','1','252','0','0','cn');
INSERT INTO met_language VALUES('527','js6','两次输入的密码不一样','1','248','0','0','cn');
INSERT INTO met_language VALUES('528','js7','确定要删除选中的信息吗？一旦删除将不能恢复！','1','249','1','0','cn');
INSERT INTO met_language VALUES('529','js5','email不能为空','1','247','0','0','cn');
INSERT INTO met_language VALUES('530','js4','登录密码不能为空','1','246','0','0','cn');
INSERT INTO met_language VALUES('531','js2','数据出错了','1','244','0','0','cn');
INSERT INTO met_language VALUES('532','js1','请稍等,系统检测中....','1','243','0','0','cn');
INSERT INTO met_language VALUES('533','dataerror','数据错误','1','242','0','0','cn');
INSERT INTO met_language VALUES('534','jsok','操作成功','1','241','1','0','cn');
INSERT INTO met_language VALUES('535','marks','：','1','238','0','0','cn');
INSERT INTO met_language VALUES('536','displayimg','展示图片','1','235','0','0','cn');
INSERT INTO met_language VALUES('537','Operating','操作系统','1','233','37','0','cn');
INSERT INTO met_language VALUES('538','noorderinfo','数值越小越靠前','1','234','0','0','cn');
INSERT INTO met_language VALUES('539','contentdetail','详细内容','1','227','0','0','cn');
INSERT INTO met_language VALUES('540','content','内容','1','226','1','0','cn');
INSERT INTO met_language VALUES('541','webaccess','访问权限','1','225','0','0','cn');
INSERT INTO met_language VALUES('542','keywordsinfo','多个关键词请用\",\"隔开','1','223','0','0','cn');
INSERT INTO met_language VALUES('543','keywords','关键词','1','222','0','0','cn');
INSERT INTO met_language VALUES('544','hits','点击次数','1','221','0','0','cn');
INSERT INTO met_language VALUES('545','addtime','发布时间','1','220','0','0','cn');
INSERT INTO met_language VALUES('546','updatetime','更新时间','1','219','0','0','cn');
INSERT INTO met_language VALUES('547','access3','管理员','1','218','0','0','cn');
INSERT INTO met_language VALUES('548','access2','代理商','1','217','0','0','cn');
INSERT INTO met_language VALUES('549','access1','普通会员','1','216','0','0','cn');
INSERT INTO met_language VALUES('550','access0','不限','1','215','0','0','cn');
INSERT INTO met_language VALUES('551','access','权限','1','214','0','0','cn');
INSERT INTO met_language VALUES('552','read','已读','1','210','0','0','cn');
INSERT INTO met_language VALUES('553','parameter','参数','1','208','0','0','cn');
INSERT INTO met_language VALUES('554','search','搜索','1','206','0','0','cn');
INSERT INTO met_language VALUES('555','manager','内容管理','1','205','19','0','cn');
INSERT INTO met_language VALUES('556','top','置顶','1','202','0','0','cn');
INSERT INTO met_language VALUES('557','wap','wap','1','201','0','0','cn');
INSERT INTO met_language VALUES('558','recom','推荐','1','200','0','0','cn');
INSERT INTO met_language VALUES('559','image','图片','1','198','0','0','cn');
INSERT INTO met_language VALUES('560','title','标题','1','197','0','0','cn');
INSERT INTO met_language VALUES('561','description','简短描述','1','196','0','0','cn');
INSERT INTO met_language VALUES('562','selected','选择','1','192','0','0','cn');
INSERT INTO met_language VALUES('563','metinfo','MetInfo|米拓企业建站系统','1','189','0','0','cn');
INSERT INTO met_language VALUES('564','no','否','1','188','0','0','cn');
INSERT INTO met_language VALUES('565','yes','是','1','187','0','0','cn');
INSERT INTO met_language VALUES('566','sort','排序','1','186','0','0','cn');
INSERT INTO met_language VALUES('567','type','类型','1','185','0','0','cn');
INSERT INTO met_language VALUES('568','close','关闭','1','184','0','0','cn');
INSERT INTO met_language VALUES('569','open','开启','1','183','0','0','cn');
INSERT INTO met_language VALUES('570','operate','操作','1','182','0','0','cn');
INSERT INTO met_language VALUES('571','preview','预览','1','181','0','0','cn');
INSERT INTO met_language VALUES('572','delete','删除','1','180','0','0','cn');
INSERT INTO met_language VALUES('573','modify','修改','1','179','0','0','cn');
INSERT INTO met_language VALUES('574','View','查看','1','178','0','0','cn');
INSERT INTO met_language VALUES('575','editor','编辑','1','177','0','0','cn');
INSERT INTO met_language VALUES('576','add','添加','1','176','0','0','cn');
INSERT INTO met_language VALUES('577','addsubcolumn','添加子栏目','1','176','0','0','cn');
INSERT INTO met_language VALUES('578','Submit','保存','1','171','0','0','cn');
INSERT INTO met_language VALUES('579','Submitall','提交','1','172','26','0','cn');
INSERT INTO met_language VALUES('580','Copy','复制','1','174','0','0','cn');
INSERT INTO met_language VALUES('581','langadderr4','无法同步官网语言包。','1','166','16','0','cn');
INSERT INTO met_language VALUES('582','langadderr5','您删除的是默认语言！请先设置一个其它语言为默认语言再操作！','1','167','16','0','cn');
INSERT INTO met_language VALUES('583','basictips7','邮箱设置正确！','1','162','39','0','cn');
INSERT INTO met_language VALUES('584','basictips6','<b>解决办法：</b>请检查帐号密码和smtp是否有误或查看邮箱是否开启smtp服务。','1','161','39','0','cn');
INSERT INTO met_language VALUES('585','basictips5','<b>错误提示：</b>测试发送邮件失败！','1','160','39','0','cn');
INSERT INTO met_language VALUES('586','basictips3','邮件发送测试','1','158','39','0','cn');
INSERT INTO met_language VALUES('587','basictips4','收到邮件说明您网站的系统邮箱设置正确。','1','159','39','0','cn');
INSERT INTO met_language VALUES('588','upfileFail10','不支持imagejpeg函数','1','125','8','0','cn');
INSERT INTO met_language VALUES('589','upfileFail11','不支持imagepng函数','1','126','8','0','cn');
INSERT INTO met_language VALUES('590','upfileFail9','不支持imagegif函数','1','124','8','0','cn');
INSERT INTO met_language VALUES('591','upfileFail8','文件损坏,缩略图生成失败','1','123','8','0','cn');
INSERT INTO met_language VALUES('592','upfileFail7','不支持当前文件格式生成缩略图，请上传JPG,GIF,PNG图片','1','122','8','0','cn');
INSERT INTO met_language VALUES('593','upfileFail6','空间不支持GD库，无法生成缩略图','1','121','8','0','cn');
INSERT INTO met_language VALUES('594','upfileFail5','bmp的格式无法自动生成缩图','1','120','8','0','cn');
INSERT INTO met_language VALUES('595','upfileFail4','创建目录失败','1','119','8','0','cn');
INSERT INTO met_language VALUES('596','upfileOver4','upload文件夹没有写权限,请联系空间商修改。','1','116','8','0','cn');
INSERT INTO met_language VALUES('597','upfileOver5','上传临时文件夹(upload_tmp_dir)没有写权限,请联系空间商修改。','1','117','8','0','cn');
INSERT INTO met_language VALUES('598','upfileOver3','没有文件被上传。','1','115','8','0','cn');
INSERT INTO met_language VALUES('599','upfileOver2','文件只有部分被上传。','1','114','8','0','cn');
INSERT INTO met_language VALUES('600','upfileOver','上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值。','1','112','8','0','cn');
INSERT INTO met_language VALUES('601','upfileOver1','上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。','1','113','8','0','cn');
INSERT INTO met_language VALUES('602','upfileTip3','文件格式不允许上传。','1','110','8','0','cn');
INSERT INTO met_language VALUES('603','upfileTip1','，不能上传。','1','108','8','0','cn');
INSERT INTO met_language VALUES('604','upfileFail2','创建图片目录失败','1','103','8','0','cn');
INSERT INTO met_language VALUES('605','upfileMax','大小超出系统限定值','1','106','8','0','cn');
INSERT INTO met_language VALUES('606','upfileFile','上传文件','1','105','8','0','cn');
INSERT INTO met_language VALUES('607','funNav4','都显示','1','94','5','0','cn');
INSERT INTO met_language VALUES('608','indexfeedbackm','反馈信息管理','1','79','8','0','cn');
INSERT INTO met_language VALUES('609','indexlink','友情链接','1','78','8','0','cn');
INSERT INTO met_language VALUES('610','indexhtm','静态页面生成','1','74','8','0','cn');
INSERT INTO met_language VALUES('611','indexhtmset','静态页面','1','73','8','0','cn');
INSERT INTO met_language VALUES('612','indexcv','招聘系统配置','1','70','8','0','cn');
INSERT INTO met_language VALUES('613','indexflash','Banner 管理','1','67','4','0','cn');
INSERT INTO met_language VALUES('614','indexbbs','技术支持','1','63','8','0','cn');
INSERT INTO met_language VALUES('615','indexcode','商业授权','1','61','8','0','cn');
INSERT INTO met_language VALUES('616','indexlang','语言设置','1','54','8','0','cn');
INSERT INTO met_language VALUES('617','indexloginout','退出','1','51','8','0','cn');
INSERT INTO met_language VALUES('618','indexuser','用户管理','1','47','8','0','cn');
INSERT INTO met_language VALUES('619','indexadmin','常用功能','1','50','8','0','cn');
INSERT INTO met_language VALUES('620','indexadminname','管理员管理','1','80','8','0','cn');
INSERT INTO met_language VALUES('621','indexcontent','内容管理','1','44','8','0','cn');
INSERT INTO met_language VALUES('622','loginall','你没有添加、修改、删除信息的权限，请联系管理员开通','1','39','8','0','cn');
INSERT INTO met_language VALUES('623','loginedit','你没有修改信息的权限，请联系管理员开通','1','38','0','0','cn');
INSERT INTO met_language VALUES('624','loginadd','你没有添加信息的权限，请联系管理员开通','1','37','8','0','cn');
INSERT INTO met_language VALUES('625','logindelete','你没有删除信息的权限，请联系管理员开通','1','36','8','0','cn');
INSERT INTO met_language VALUES('626','loginpass','用户名或密码错误','1','35','8','0','cn');
INSERT INTO met_language VALUES('627','loginname','用户名或密码错误','1','34','18','0','cn');
INSERT INTO met_language VALUES('628','logincodeerror','验证码错误','1','33','18','0','cn');
INSERT INTO met_language VALUES('629','loginconfirm','登录','1','32','18','0','cn');
INSERT INTO met_language VALUES('630','loginforget','忘记密码?','1','31','18','0','cn');
INSERT INTO met_language VALUES('631','loginusename','用户名','1','27','8','0','cn');
INSERT INTO met_language VALUES('632','loginpassword','密码','1','28','8','0','cn');
INSERT INTO met_language VALUES('633','logincode','验证码','1','29','8','0','cn');
INSERT INTO met_language VALUES('634','loginlanguage','后台语言','1','26','18','0','cn');
INSERT INTO met_language VALUES('635','loginmetinfo','MetInfo','1','25','8','0','cn');
INSERT INTO met_language VALUES('636','loginadmin','管理员登录','1','24','18','0','cn');
INSERT INTO met_language VALUES('637','logintitle','后台登录','1','21','18','0','cn');
INSERT INTO met_language VALUES('638','myapp','应用插件','1','20','36','0','cn');
INSERT INTO met_language VALUES('639','myapps','我的插件','1','20','36','0','cn');
INSERT INTO met_language VALUES('640','recycle','内容回收站','1','17','29','0','cn');
INSERT INTO met_language VALUES('641','managertyp5','自定义','1','9','2','0','cn');
INSERT INTO met_language VALUES('642','managertyp4','内容管理员','1','9','2','0','cn');
INSERT INTO met_language VALUES('643','managertyp2','管理员','1','7','2','0','cn');
INSERT INTO met_language VALUES('644','managertyp3','优化推广员','1','8','2','0','cn');
INSERT INTO met_language VALUES('645','managertyp1','创始人','1','6','2','0','cn');
INSERT INTO met_language VALUES('646','uplaoderr1','上传失败！','1','3','8','0','cn');
INSERT INTO met_language VALUES('647','clickview','点击查看','1','1','8','0','cn');
INSERT INTO met_language VALUES('648','membertips1','注册时间','1','105','38','0','cn');
INSERT INTO met_language VALUES('649','memberjstxt2','请输入登录密码！','1','95','7','0','cn');
INSERT INTO met_language VALUES('650','memberCheck','是否激活','1','92','38','0','cn');
INSERT INTO met_language VALUES('651','memberMan','先生','1','81','36','0','cn');
INSERT INTO met_language VALUES('652','memberCell','手机','1','84','7','0','cn');
INSERT INTO met_language VALUES('653','memberTip','不修改请留空','1','78','7','0','cn');
INSERT INTO met_language VALUES('654','memberName','姓名','1','76','7','0','cn');
INSERT INTO met_language VALUES('655','memberCV','简历','1','74','15','0','cn');
INSERT INTO met_language VALUES('656','memberEmail','邮箱地址','1','67','7','0','cn');
INSERT INTO met_language VALUES('657','memberAdd','添加会员','1','62','2','0','cn');
INSERT INTO met_language VALUES('658','memberChecked','已激活','1','60','38','0','cn');
INSERT INTO met_language VALUES('659','memberUnChecked','未激活','1','61','38','0','cn');
INSERT INTO met_language VALUES('660','memberManage','会员管理','1','58','2','0','cn');
INSERT INTO met_language VALUES('661','memberlogin','会员注册','1','51','38','0','cn');
INSERT INTO met_language VALUES('662','hello','您好！','1','47','7','0','cn');
INSERT INTO met_language VALUES('663','getTip5','找回密码','1','45','7','0','cn');
INSERT INTO met_language VALUES('664','getTip3','创建新密码链接的电子邮件已经发送到您的邮箱，请尽快修改您的密码。','1','43','10','0','cn');
INSERT INTO met_language VALUES('665','getTip2','感谢您对MetInfo的支持与厚爱，希望MetInfo能为您的网站创造价值！','1','42','10','0','cn');
INSERT INTO met_language VALUES('666','getTip1','您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：','1','41','10','0','cn');
INSERT INTO met_language VALUES('667','getNotice','管理员密码找回','1','40','10','0','cn');
INSERT INTO met_language VALUES('668','adminpassTitle','修改个人信息','1','39','2','0','cn');
INSERT INTO met_language VALUES('669','adminSelectAll','全部选择','1','37','2','0','cn');
INSERT INTO met_language VALUES('670','adminOperate4','删除信息','1','35','2','0','cn');
INSERT INTO met_language VALUES('671','adminOperate3','修改信息','1','34','2','0','cn');
INSERT INTO met_language VALUES('672','adminOperate1','完全控制','1','32','2','0','cn');
INSERT INTO met_language VALUES('673','adminOperate2','添加信息','1','33','2','0','cn');
INSERT INTO met_language VALUES('674','adminPower','信息权限','1','29','2','0','cn');
INSERT INTO met_language VALUES('675','adminTip2','只允许查看自己发表的信息','1','30','2','0','cn');
INSERT INTO met_language VALUES('676','adminTip3','发布信息需要审核才能正常显示','1','30','2','0','cn');
INSERT INTO met_language VALUES('677','adminOperate','操作权限','1','31','2','0','cn');
INSERT INTO met_language VALUES('678','adminpassword1','密码确认','1','21','2','0','cn');
INSERT INTO met_language VALUES('679','adminpassword','登录密码','1','20','7','0','cn');
INSERT INTO met_language VALUES('680','adminLastLogin','最后登录时间','1','18','0','0','cn');
INSERT INTO met_language VALUES('681','adminLastIP','最后登录IP','1','19','0','0','cn');
INSERT INTO met_language VALUES('682','metadmin','管理员','1','12','0','0','cn');
INSERT INTO met_language VALUES('683','adminusername','用户名','1','13','0','0','cn');
INSERT INTO met_language VALUES('684','adminname','姓名','1','14','0','0','cn');
INSERT INTO met_language VALUES('685','admin_email','管理员邮箱','1','14','0','0','cn');
INSERT INTO met_language VALUES('686','admin_email_error','管理员邮箱已被占用','1','14','0','0','cn');
INSERT INTO met_language VALUES('687','adminLoginNum','登录次数','1','17','38','0','cn');
INSERT INTO met_language VALUES('688','admintips7','管理员权限设置','1','11','2','0','cn');
INSERT INTO met_language VALUES('689','adminjurisd','语言权限','1','5','2','0','cn');
INSERT INTO met_language VALUES('690','admintips1','所有语言','1','6','0','0','cn');
INSERT INTO met_language VALUES('691','admintips2','至少选择一个','1','7','2','0','cn');
INSERT INTO met_language VALUES('692','admintips5','用户组','1','10','0','0','cn');
INSERT INTO met_language VALUES('693','admintips4','新增栏目权限','1','9','2','0','cn');
INSERT INTO met_language VALUES('694','webcompre','整站压缩包','1','3','8','0','cn');
INSERT INTO met_language VALUES('695','admininfo','管理员基本信息','1','4','0','0','cn');
INSERT INTO met_language VALUES('696','uploadfile','上传文件夹','1','2','8','0','cn');
INSERT INTO met_language VALUES('697','database','数据库','1','1','8','0','cn');
INSERT INTO met_language VALUES('698','dlapptips6','卸载','1','294','6','0','cn');
INSERT INTO met_language VALUES('699','dlapptips5','打开','1','293','6','0','cn');
INSERT INTO met_language VALUES('700','mobiletips3','添加内容','1','284','0','0','cn');
INSERT INTO met_language VALUES('701','smstips64','全部状态','1','245','6','0','cn');
INSERT INTO met_language VALUES('702','smstips24','操作时间','1','206','6','0','cn');
INSERT INTO met_language VALUES('703','smstips22','账户余额','1','204','6','0','cn');
INSERT INTO met_language VALUES('704','smstips18','操作类型','1','200','6','0','cn');
INSERT INTO met_language VALUES('705','smstips19','充值','1','201','6','0','cn');
INSERT INTO met_language VALUES('706','smstips17','序列','1','199','6','0','cn');
INSERT INTO met_language VALUES('707','smstips9','元','1','191','6','0','cn');
INSERT INTO met_language VALUES('708','smstips6','当前余额','1','188','6','0','cn');
INSERT INTO met_language VALUES('709','smstips7','付款方式','1','189','6','0','cn');
INSERT INTO met_language VALUES('710','smstips1','批量发送','1','183','6','0','cn');
INSERT INTO met_language VALUES('711','smstips2','发送记录','1','184','6','0','cn');
INSERT INTO met_language VALUES('712','statip','IP','1','132','6','0','cn');
INSERT INTO met_language VALUES('713','smsrecharge','充值','1','113','6','0','cn');
INSERT INTO met_language VALUES('714','physicalfunction4','文件夹','1','103','1','0','cn');
INSERT INTO met_language VALUES('715','physicaldelok','删除成功','1','47','6','0','cn');
INSERT INTO met_language VALUES('716','physicalgenok','生成成功','1','49','6','0','cn');
INSERT INTO met_language VALUES('717','usertype3','普通商业授权','1','35','0','0','cn');
INSERT INTO met_language VALUES('718','usertype4','高级商业授权','1','36','0','0','cn');
INSERT INTO met_language VALUES('719','appinstall','安装','1','38','1','0','cn');
INSERT INTO met_language VALUES('720','appupgrade','升级','1','40','3','0','cn');
INSERT INTO met_language VALUES('721','usertype1','免费','1','33','3','0','cn');
INSERT INTO met_language VALUES('722','csvnodata','没有数据','1','26','16','0','cn');
INSERT INTO met_language VALUES('723','wapdimensionalsize','尺寸','1','20','6','0','cn');
INSERT INTO met_language VALUES('724','dltips7','下载超时','1','195','0','0','cn');
INSERT INTO met_language VALUES('725','columnarrangement2','切换为','1','197','19','0','cn');
INSERT INTO met_language VALUES('726','columnarrangement3','按模块分类','1','198','19','0','cn');
INSERT INTO met_language VALUES('727','columnarrangement4','按栏目分类','1','199','19','0','cn');
INSERT INTO met_language VALUES('728','dltips6','远程服务器请求错误','1','194','0','0','cn');
INSERT INTO met_language VALUES('729','dltips5','您所请求的文件不存在','1','193','0','0','cn');
INSERT INTO met_language VALUES('730','dltips4','请升级程序','1','192','0','0','cn');
INSERT INTO met_language VALUES('731','dltips3','您没有权限下载此文件','1','191','0','0','cn');
INSERT INTO met_language VALUES('732','dltips2','文件下载失败，请检查本地目录权限和空间大小','1','190','0','0','cn');
INSERT INTO met_language VALUES('733','dltips1','无法连接上远程服务器，请检查网络','1','189','0','0','cn');
INSERT INTO met_language VALUES('734','seotips18','过滤外部模块','1','182','5','0','cn');
INSERT INTO met_language VALUES('735','seotips19','网站语言范围','1','183','32','0','cn');
INSERT INTO met_language VALUES('736','seotips20','当前语言','1','184','32','0','cn');
INSERT INTO met_language VALUES('737','seotips15_3','适合雅虎，','1','179','32','0','cn');
INSERT INTO met_language VALUES('738','seotips16','过滤栏目及内容','1','180','32','0','cn');
INSERT INTO met_language VALUES('739','seotips15_2','适合谷歌和百度，','1','178','32','0','cn');
INSERT INTO met_language VALUES('740','seotips15','地图网址','1','176','32','0','cn');
INSERT INTO met_language VALUES('741','seotips6','首页','1','166','0','0','cn');
INSERT INTO met_language VALUES('742','seotips9','内容页','1','169','32','0','cn');
INSERT INTO met_language VALUES('743','seotips14_1','怎样提交给搜索引擎？','1','175','32','0','cn');
INSERT INTO met_language VALUES('744','seotips14','网站地图（Sitemap）有助于加快网站被搜索引擎收录','1','174','32','0','cn');
INSERT INTO met_language VALUES('745','seotips12','是否立即生成所有静态页面？','1','172','11','0','cn');
INSERT INTO met_language VALUES('746','seotips11','是否删除所有已生成的静态页面？','1','171','11','0','cn');
INSERT INTO met_language VALUES('747','uiset_descript_v6','勾选的应用将出现在导航栏【常用功能】下拉列表中','1','0','0','0','cn');
INSERT INTO met_language VALUES('748','seotips1','多个关键词请用英文状态下的逗号 \",\" 隔开，建议3到4个关键词。','1','161','32','0','cn');
INSERT INTO met_language VALUES('749','statips27','时间','1','124','0','0','cn');
INSERT INTO met_language VALUES('750','statips2','统计设置','1','101','0','0','cn');
INSERT INTO met_language VALUES('751','linkRecommend','推荐站点','1','91','17','0','cn');
INSERT INTO met_language VALUES('752','linkPass','审核通过','1','90','17','0','cn');
INSERT INTO met_language VALUES('753','linkLOGO','网站LOGO','1','87','17','0','cn');
INSERT INTO met_language VALUES('754','linkcontact','联系方式','1','88','0','0','cn');
INSERT INTO met_language VALUES('755','linktip1','相同状态的站点，数字越大排序越靠前','1','89','17','0','cn');
INSERT INTO met_language VALUES('756','linktip2','审核通过的才能在前台显示，推荐站点排序靠前显示','1','89','17','0','cn');
INSERT INTO met_language VALUES('757','linkUrl','网站地址','1','86','17','0','cn');
INSERT INTO met_language VALUES('758','linkKeys','网站关键词','1','83','17','0','cn');
INSERT INTO met_language VALUES('759','linkCheck','审核','1','84','17','0','cn');
INSERT INTO met_language VALUES('760','linkName','网站标题','1','82','17','0','cn');
INSERT INTO met_language VALUES('761','linkType4','文字链接','1','80','17','0','cn');
INSERT INTO met_language VALUES('762','linkType5','LOGO链接','1','81','17','0','cn');
INSERT INTO met_language VALUES('763','linkType1','未审核链接','1','77','17','0','cn');
INSERT INTO met_language VALUES('764','linkType2','推荐链接','1','78','17','0','cn');
INSERT INTO met_language VALUES('765','linkType','链接类型','1','75','17','0','cn');
INSERT INTO met_language VALUES('766','htmCreateAll','生成所有页面','1','63','11','0','cn');
INSERT INTO met_language VALUES('767','htmsitemap','网站地图','1','61','0','0','cn');
INSERT INTO met_language VALUES('768','htmAll','所有页面','1','59','11','0','cn');
INSERT INTO met_language VALUES('769','htmTip1','生成内容页面','1','57','11','0','cn');
INSERT INTO met_language VALUES('770','htmTip2','生成列表页面','1','58','11','0','cn');
INSERT INTO met_language VALUES('771','htmColumn','栏目管理','1','56','0','0','cn');
INSERT INTO met_language VALUES('772','htmHome','网站首页','1','54','4','0','cn');
INSERT INTO met_language VALUES('773','sethtmsitemap4','xml网站地图','1','53','32','0','cn');
INSERT INTO met_language VALUES('774','sethtmlist','列表页面名称','1','47','11','0','cn');
INSERT INTO met_language VALUES('775','sethtmlist1','默认文件名+class+页码（如product_1_1)','1','48','11','0','cn');
INSERT INTO met_language VALUES('776','sethtmlist2','所在文件夹名称+class+页码（如software_1_1)','1','49','11','0','cn');
INSERT INTO met_language VALUES('777','sethtmpage4','<span style=float:right;>不建议频繁更换，以确保SEO效果（修改后请重新生成所有静态页面）</span>静态页面名称规则','1','50','11','0','cn');
INSERT INTO met_language VALUES('778','sethtmpage3','所在文件夹名称+ID（如product10)','1','43','11','0','cn');
INSERT INTO met_language VALUES('779','setlisthtmltype','列表页面类型','1','44','11','0','cn');
INSERT INTO met_language VALUES('780','setlisthtmltype1','显示所有栏目id（如product_1_2_3）','1','45','11','0','cn');
INSERT INTO met_language VALUES('781','setlisthtmltype2','只显示本栏目id（如product_1）','1','46','11','0','cn');
INSERT INTO met_language VALUES('782','sethtmpage2','年月日+ID（如2009081510)','1','42','11','0','cn');
INSERT INTO met_language VALUES('783','sethtmpage1','默认文件名+ID（如showproduct10)','1','41','11','0','cn');
INSERT INTO met_language VALUES('784','sethtmpage','内容页面名称','1','40','11','0','cn');
INSERT INTO met_language VALUES('785','sethtmtype','静态页面类型','1','39','11','0','cn');
INSERT INTO met_language VALUES('786','sethtmway3','不建议开启自动生成功能，非常消耗资源，且仅内容管理相关操作能自动生成，其它后台设置修改后如前台无改变需要手动生成。','1','38','11','0','cn');
INSERT INTO met_language VALUES('787','sethtmway2','手动生成','1','37','11','0','cn');
INSERT INTO met_language VALUES('788','sethtmway','生成方式','1','35','11','0','cn');
INSERT INTO met_language VALUES('789','sethtmway1','内容信息变动时自动生成','1','36','11','0','cn');
INSERT INTO met_language VALUES('790','setbasicTip4','建议企业站使用伪静态功能，纯静态消耗资源且不方便管理；首次开启请点击“静态页面生成”生成全部页面','1','34','11','0','cn');
INSERT INTO met_language VALUES('791','sethtmok','静态页面开启','1','31','11','0','cn');
INSERT INTO met_language VALUES('792','sethtmall','全站静态化','1','32','11','0','cn');
INSERT INTO met_language VALUES('793','setbasicTip3','首页、内容页面静态化','1','33','11','0','cn');
INSERT INTO met_language VALUES('794','labelUrl','链接地址','1','27','32','0','cn');
INSERT INTO met_language VALUES('795','htm','静态页面已成功生成','1','30','11','0','cn');
INSERT INTO met_language VALUES('796','labelnum','替换次数','1','23','32','0','cn');
INSERT INTO met_language VALUES('797','labelOld','原文字','1','24','32','0','cn');
INSERT INTO met_language VALUES('798','labelNew','替换为','1','25','32','0','cn');
INSERT INTO met_language VALUES('799','setseoTip14','内页的标题(title)构成方式，您也可以在编辑/添加内容时自定义对应页面的标题(title)。','1','21','32','0','cn');
INSERT INTO met_language VALUES('800','setseotitletype4','内容标题+网站关键词+网站名称','1','20','32','0','cn');
INSERT INTO met_language VALUES('801','setseotitletype3','内容标题+网站关键词','1','19','32','0','cn');
INSERT INTO met_language VALUES('802','setseotitletype2','内容标题+网站名称','1','18','32','0','cn');
INSERT INTO met_language VALUES('803','setseotitletype','内页标题（title）','1','16','32','0','cn');
INSERT INTO met_language VALUES('804','setseotitletype1','内容标题','1','17','32','0','cn');
INSERT INTO met_language VALUES('805','setseodopen','当前窗口打开','1','14','35','0','cn');
INSERT INTO met_language VALUES('806','setseonewopen','新窗口打开','1','15','35','0','cn');
INSERT INTO met_language VALUES('807','setseoFoot','网站底部优化字','1','11','32','0','cn');
INSERT INTO met_language VALUES('808','setseoTip9','鼠标移至超链接显示的文字','1','9','32','0','cn');
INSERT INTO met_language VALUES('809','setseoTip8','超链接默认Title','1','8','32','0','cn');
INSERT INTO met_language VALUES('810','setseoTip7','鼠标移至图片显示的文字','1','7','32','0','cn');
INSERT INTO met_language VALUES('811','setseoTip6','图片默认ALT','1','6','32','0','cn');
INSERT INTO met_language VALUES('812','setseoTip4','头部优化文字','1','5','32','0','cn');
INSERT INTO met_language VALUES('813','setseoTip10','留空则采用网站名称-网站关键词的构成方式','1','4','32','0','cn');
INSERT INTO met_language VALUES('814','setseoKey','网站关键词','1','2','32','0','cn');
INSERT INTO met_language VALUES('815','setseohomeKey','首页标题（title）','1','3','32','0','cn');
INSERT INTO met_language VALUES('816','setseoTip1','多个关键词请用“,”隔开。','1','1','0','0','cn');
INSERT INTO met_language VALUES('817','setheadstat','顶部代码','1','176','39','0','cn');
INSERT INTO met_language VALUES('818','recycledietime','删除时间','1','121','29','0','cn');
INSERT INTO met_language VALUES('819','recyclere','还原','1','122','29','0','cn');
INSERT INTO met_language VALUES('820','messageeditor','编辑留言','1','113','20','0','cn');
INSERT INTO met_language VALUES('821','messagesubmit','留言提交开启关闭','1','112','20','0','cn');
INSERT INTO met_language VALUES('822','messageeditorReply','回复留言','1','109','20','0','cn');
INSERT INTO met_language VALUES('823','messageeditorCheck','回复审核','1','110','20','0','cn');
INSERT INTO met_language VALUES('824','messageeditorShow','审核通过并在前台显示','1','111','20','0','cn');
INSERT INTO met_language VALUES('825','messageTime','提交时间','1','106','20','0','cn');
INSERT INTO met_language VALUES('826','messageID','留言者身份','1','105','20','0','cn');
INSERT INTO met_language VALUES('827','messageTel','电话','1','103','20','0','cn');
INSERT INTO met_language VALUES('828','messageTitle','留言信息管理','1','96','0','0','cn');
INSERT INTO met_language VALUES('829','messageVoice','留言表单设置','1','443','0','0','cn');
INSERT INTO met_language VALUES('830','messageincTip3','客户留言后需要在后台回复审核才显示','1','93','20','0','cn');
INSERT INTO met_language VALUES('831','messageincShow','显示方式','1','92','20','0','cn');
INSERT INTO met_language VALUES('832','feedbackauto','邮件回复设置','1','90','0','0','cn');
INSERT INTO met_language VALUES('833','messageincTitle','留言系统设置','1','91','0','0','cn');
INSERT INTO met_language VALUES('834','feedbackexplain1','页面title名称，默认为该栏目名称','1','89','9','0','cn');
INSERT INTO met_language VALUES('835','feedbacksubmit','反馈提交开启关闭','1','88','9','0','cn');
INSERT INTO met_language VALUES('836','fdeditorFrom','来源页面地址','1','85','9','0','cn');
INSERT INTO met_language VALUES('837','fdeditorRecord','编辑记录','1','86','9','0','cn');
INSERT INTO met_language VALUES('838','fdeditorInterest','感兴趣产品','1','83','9','0','cn');
INSERT INTO met_language VALUES('839','fdeditorTime','反馈提交时间','1','84','9','0','cn');
INSERT INTO met_language VALUES('840','feedbackAccess0','游客','1','82','0','0','cn');
INSERT INTO met_language VALUES('841','feedbackTip4','导出全部','1','80','9','0','cn');
INSERT INTO met_language VALUES('842','feedbackTip2','导出EXCEL表','1','79','9','0','cn');
INSERT INTO met_language VALUES('843','feedbackTime','提交时间','1','78','9','0','cn');
INSERT INTO met_language VALUES('844','feedbackID','反馈者身份','1','77','9','0','cn');
INSERT INTO met_language VALUES('845','feedbackClass2','未阅读信息','1','74','0','0','cn');
INSERT INTO met_language VALUES('846','feedbackClass3','已阅读信息','1','75','0','0','cn');
INSERT INTO met_language VALUES('847','feedbackClass','信息状态','1','71','0','0','cn');
INSERT INTO met_language VALUES('848','fdincFeedbackTitle','回复邮件标题','1','68','0','0','cn');
INSERT INTO met_language VALUES('849','fdincAutoFbTitle','自动回复邮件的标题','1','69','4','0','cn');
INSERT INTO met_language VALUES('850','fdincAutoContent','回复邮件内容','1','70','0','0','cn');
INSERT INTO met_language VALUES('851','fdincEmailName','Email字段名','1','66','0','0','cn');
INSERT INTO met_language VALUES('852','fdincTip11','用于获取用户的邮箱地址，以便回复邮件。字段类型必须为“邮箱”','1','67','0','0','cn');
INSERT INTO met_language VALUES('853','fdincTip10','勾选后将自动向提交表单的用户回复邮件','1','65','0','0','cn');
INSERT INTO met_language VALUES('854','fdincAuto','邮件回复','1','64','0','0','cn');
INSERT INTO met_language VALUES('855','fdincTip9','多个邮箱请用|隔开','1','63','0','0','cn');
INSERT INTO met_language VALUES('856','fdincAcceptMail','反馈邮件接收邮箱','1','62','9','0','cn');
INSERT INTO met_language VALUES('857','fdincTip7','短信通知','1','60','0','0','cn');
INSERT INTO met_language VALUES('858','fdincTip14','短信通知号码','1','61','0','0','cn');
INSERT INTO met_language VALUES('859','fdincAccept','邮件接收','1','59','0','0','cn');
INSERT INTO met_language VALUES('860','fdincTip6','用于获取用户反馈的类型，字段类型为“下拉”或“单选”，设置为关联产品时，下拉菜单为对应栏目下的全部产品。','1','57','9','0','cn');
INSERT INTO met_language VALUES('861','fdincAcceptType','信息接收方式','1','58','9','0','cn');
INSERT INTO met_language VALUES('862','fdincClassName','信息分类字段名','1','56','9','0','cn');
INSERT INTO met_language VALUES('863','fdincSlash','敏感字符过滤','1','54','0','0','cn');
INSERT INTO met_language VALUES('864','fdincTip4','秒，同一IP2次提交的最小间隔时间','1','53','0','0','cn');
INSERT INTO met_language VALUES('865','fdincName','反馈表单名称','1','51','9','0','cn');
INSERT INTO met_language VALUES('866','fdincTime','防刷新时间','1','52','0','0','cn');
INSERT INTO met_language VALUES('867','fdincTitle','反馈系统设置','1','50','25','0','cn');
INSERT INTO met_language VALUES('868','jobmanagement','招聘职位管理','1','48','0','0','cn');
INSERT INTO met_language VALUES('869','jobtip9','简历照片，以便在邮件中能看到应聘者上传的照片。','1','47','0','0','cn');
INSERT INTO met_language VALUES('870','jobtip8','图片字段名','1','46','0','0','cn');
INSERT INTO met_language VALUES('871','jobtip5','投递简历后系统会自动发送一封邮件到接收邮箱','1','45','15','0','cn');
INSERT INTO met_language VALUES('872','cvset','简历表单设置','1','44','0','0','cn');
INSERT INTO met_language VALUES('873','cvmanagement','简历信息管理','1','43','0','0','cn');
INSERT INTO met_language VALUES('874','cvemail','简历接收邮箱','1','42','15','0','cn');
INSERT INTO met_language VALUES('875','cvall','全部','1','39','3','0','cn');
INSERT INTO met_language VALUES('876','cvincAcceptType','简历接收方式','1','37','0','0','cn');
INSERT INTO met_language VALUES('877','cvincAcceptMail','简历接收邮箱','1','36','0','0','cn');
INSERT INTO met_language VALUES('878','cvincTip4','单独职位','1','34','0','0','cn');
INSERT INTO met_language VALUES('879','cvincTip3','统一设置','1','33','0','0','cn');
INSERT INTO met_language VALUES('880','cvincTip2','邮件接收方式','1','32','0','0','cn');
INSERT INTO met_language VALUES('881','josAlways','不限','1','31','0','0','cn');
INSERT INTO met_language VALUES('882','cvAddtime','提交时间','1','28','0','0','cn');
INSERT INTO met_language VALUES('883','cvPosition','应聘职位','1','26','4','0','cn');
INSERT INTO met_language VALUES('884','jobtip3','天 （留空为不限）','1','25','15','0','cn');
INSERT INTO met_language VALUES('885','jobnow','今天是','1','23','15','0','cn');
INSERT INTO met_language VALUES('886','jobtip2','注意不要改变格式。','1','24','15','0','cn');
INSERT INTO met_language VALUES('887','jobdeal','工资待遇','1','22','15','0','cn');
INSERT INTO met_language VALUES('888','jobtip1','人 （留空为不限）','1','21','15','0','cn');
INSERT INTO met_language VALUES('889','jobpublish','发布日期','1','19','15','0','cn');
INSERT INTO met_language VALUES('890','joblife','有效时间','1','18','15','0','cn');
INSERT INTO met_language VALUES('891','jobnum','招聘人数','1','16','15','0','cn');
INSERT INTO met_language VALUES('892','jobaddress','工作地点','1','17','15','0','cn');
INSERT INTO met_language VALUES('893','jobposition','招聘职位','1','15','15','0','cn');
INSERT INTO met_language VALUES('894','setfootstat','底部代码','1','11','39','0','cn');
INSERT INTO met_language VALUES('895','setfootOther','其他信息','1','10','39','0','cn');
INSERT INTO met_language VALUES('896','setfootAddressCode','地址邮编','1','8','39','0','cn');
INSERT INTO met_language VALUES('897','setfootVersion','版权信息','1','7','39','0','cn');
INSERT INTO met_language VALUES('898','article6','参数设置','1','6','0','0','cn');
INSERT INTO met_language VALUES('899','article4','排序数值越大越靠前','1','4','0','0','cn');
INSERT INTO met_language VALUES('900','article1','可选属性','1','1','0','0','cn');
INSERT INTO met_language VALUES('901','copyotherlang6','请选择复制到的语言','1','138','5','0','cn');
INSERT INTO met_language VALUES('902','copyotherlang5','二级，三级栏目不能单独复制，请连同一级栏目一起复制，或提升为一级栏目','1','139','5','0','cn');
INSERT INTO met_language VALUES('903','copyotherlang4','栏目在复制语言中已经存在，请直接复制内容','1','138','5','0','cn');
INSERT INTO met_language VALUES('904','copyotherlang2','复制内容','1','136','5','0','cn');
INSERT INTO met_language VALUES('905','ctitleinfo','为空则使用SEO参数设置中设置的title构成方式','1','134','0','0','cn');
INSERT INTO met_language VALUES('906','copyotherlang1','复制到其他语言','1','135','5','0','cn');
INSERT INTO met_language VALUES('907','listproductre','关联产品','1','132','9','0','cn');
INSERT INTO met_language VALUES('908','listproductreok','不关联','1','133','9','0','cn');
INSERT INTO met_language VALUES('909','parameter3','文本','1','123','25','0','cn');
INSERT INTO met_language VALUES('910','parameter4','多选','1','124','25','0','cn');
INSERT INTO met_language VALUES('911','parameter5','附件','1','125','25','0','cn');
INSERT INTO met_language VALUES('912','parameter6','单选','1','126','25','0','cn');
INSERT INTO met_language VALUES('913','parameter8','电话','1','9','2','0','cn');
INSERT INTO met_language VALUES('914','parameter9','邮箱','1','9','2','0','cn');
INSERT INTO met_language VALUES('915','allcategory','所有栏目','1','127','0','0','cn');
INSERT INTO met_language VALUES('916','listTitle','设置选项','1','130','0','0','cn');
INSERT INTO met_language VALUES('917','parameter1','简短','1','121','25','0','cn');
INSERT INTO met_language VALUES('918','parameter2','下拉','1','122','25','0','cn');
INSERT INTO met_language VALUES('919','parametertype','字段类型','1','119','0','0','cn');
INSERT INTO met_language VALUES('920','columnmtitle','页面Title','1','118','0','0','cn');
INSERT INTO met_language VALUES('921','columnmappend','附加内容：','1','116','0','0','cn');
INSERT INTO met_language VALUES('922','columnmore','更多','1','117','3','0','cn');
INSERT INTO met_language VALUES('923','columnmfeedback','反馈表单设置','1','108','0','0','cn');
INSERT INTO met_language VALUES('924','columnmnotallow','不允许','1','105','0','0','cn');
INSERT INTO met_language VALUES('925','columnmeditor','编辑栏目','1','103','19','0','cn');
INSERT INTO met_language VALUES('926','columnmallow','允许','1','104','0','0','cn');
INSERT INTO met_language VALUES('927','columnmove','移动栏目','1','97','0','0','cn');
INSERT INTO met_language VALUES('928','columnmove1','移动','1','98','0','0','cn');
INSERT INTO met_language VALUES('929','columnexplain7','此功能用于老版本兼容（作用于该栏目在前台对应位置的显示）','1','95','0','0','cn');
INSERT INTO met_language VALUES('930','columnerr7','升为一级栏目','1','87','5','0','cn');
INSERT INTO met_language VALUES('931','columnerr4','目录名称已存在，可能已被使用','1','84','30','0','cn');
INSERT INTO met_language VALUES('932','columntip14','为空则使用静态页面设置中设置的URL构成方式，不要加html后缀，仅支持中文、大小写字母、数字、下划线','1','80','0','0','cn');
INSERT INTO met_language VALUES('933','columnImg2','栏目图片','1','74','0','0','cn');
INSERT INTO met_language VALUES('934','columnshow','添加内容','1','75','0','0','cn');
INSERT INTO met_language VALUES('935','columnhref','链接地址','1','71','5','0','cn');
INSERT INTO met_language VALUES('936','columntip7','链接到外部网站需要加http或https,如：https://www.metinfo.cn/','1','72','0','0','cn');
INSERT INTO met_language VALUES('937','columnImg1','标识图片','1','73','0','0','cn');
INSERT INTO met_language VALUES('938','columnSEO','搜索引擎优化设置(seo)','1','70','0','0','cn');
INSERT INTO met_language VALUES('939','columnhtmlname','静态页面名称','1','69','0','0','cn');
INSERT INTO met_language VALUES('940','columnaddOrder','顺序','1','68','0','0','cn');
INSERT INTO met_language VALUES('941','columnReverseSort','倒序','1','67','0','0','cn');
INSERT INTO met_language VALUES('942','columncontentorder','列表页排序方式','1','66','0','0','cn');
INSERT INTO met_language VALUES('943','columnnav4','都显示','1','63','0','0','cn');
INSERT INTO met_language VALUES('944','columnnewwindow','新窗口打开','1','64','0','0','cn');
INSERT INTO met_language VALUES('945','columnnav3','尾部导航栏','1','62','0','0','cn');
INSERT INTO met_language VALUES('946','columnnav2','头部主导航栏','1','61','0','0','cn');
INSERT INTO met_language VALUES('947','columntip1','请参考','1','59','0','0','cn');
INSERT INTO met_language VALUES('948','columnnav1','不显示','1','60','0','0','cn');
INSERT INTO met_language VALUES('949','columnctitle','栏目标题(title)','1','53','0','0','cn');
INSERT INTO met_language VALUES('950','columnmark','栏目风格','1','56','0','0','cn');
INSERT INTO met_language VALUES('951','columndocument','目录名称','1','51','32','0','cn');
INSERT INTO met_language VALUES('952','columnmodule','所属模块','1','50','5','0','cn');
INSERT INTO met_language VALUES('953','columnnav','导航栏显示','1','49','0','0','cn');
INSERT INTO met_language VALUES('954','columnnamemarkinfo','其它设置（根据模板配置说明设置）','1','48','0','0','cn');
INSERT INTO met_language VALUES('955','columnnamemark','栏目修饰名称','1','47','3','0','cn');
INSERT INTO met_language VALUES('956','columnname','栏目名称','1','46','0','0','cn');
INSERT INTO met_language VALUES('957','addinfo','添加内容','1','38','0','0','cn');
INSERT INTO met_language VALUES('958','downloadurl','下载地址','1','36','40','0','cn');
INSERT INTO met_language VALUES('959','modpublish','发布人','1','29','0','0','cn');
INSERT INTO met_language VALUES('960','modimgurls','缩略图','1','28','13','0','cn');
INSERT INTO met_language VALUES('961','modimgurl','图片地址','1','26','13','0','cn');
INSERT INTO met_language VALUES('962','modClass3','三级栏目','1','21','5','0','cn');
INSERT INTO met_language VALUES('963','modClass2','二级栏目','1','20','5','0','cn');
INSERT INTO met_language VALUES('964','mod101','图片列表','1','15','0','0','cn');
INSERT INTO met_language VALUES('965','mod7','留言系统','1','8','0','0','cn');
INSERT INTO met_language VALUES('966','mod8','反馈系统','1','9','0','0','cn');
INSERT INTO met_language VALUES('967','mod9','友情链接','1','10','0','0','cn');
INSERT INTO met_language VALUES('968','mod10','会员中心','1','11','0','0','cn');
INSERT INTO met_language VALUES('969','mod11','全站搜索','1','12','0','0','cn');
INSERT INTO met_language VALUES('970','mod12','网站地图','1','13','0','0','cn');
INSERT INTO met_language VALUES('971','mod100','产品列表','1','14','0','0','cn');
INSERT INTO met_language VALUES('972','unitytxt_77','更新内容时候自动更新网站地图','1','441','32','0','cn');
INSERT INTO met_language VALUES('973','mod6','招聘系统','1','7','0','0','cn');
INSERT INTO met_language VALUES('974','mod3','产品模块','1','4','0','0','cn');
INSERT INTO met_language VALUES('975','mod4','下载模块','1','5','0','0','cn');
INSERT INTO met_language VALUES('976','mod5','图片模块','1','6','0','0','cn');
INSERT INTO met_language VALUES('977','mod2','文章模块','1','3','0','0','cn');
INSERT INTO met_language VALUES('978','mod1','简介模块','1','2','0','0','cn');
INSERT INTO met_language VALUES('979','modout','外部模块','1','1','0','0','cn');
INSERT INTO met_language VALUES('980','please_choose','请选择','1','127','0','0','cn');
INSERT INTO met_language VALUES('981','onlinetel','电话或其他说明','1','116','23','0','cn');
INSERT INTO met_language VALUES('982','onlineskin','风格','1','114','23','0','cn');
INSERT INTO met_language VALUES('983','onlineimg','图标','1','115','3','0','cn');
INSERT INTO met_language VALUES('984','onlineskintype','颜色风格','1','113','23','0','cn');
INSERT INTO met_language VALUES('985','setskinOnline9','固定于页面右边','1','102','23','0','cn');
INSERT INTO met_language VALUES('986','setskinOnline5','距离浏览器侧边','1','98','23','0','cn');
INSERT INTO met_language VALUES('987','setskinOnline6','距离浏览器顶部','1','99','23','0','cn');
INSERT INTO met_language VALUES('988','setskinOnline3','居右随屏幕滚动','1','96','23','0','cn');
INSERT INTO met_language VALUES('989','setskinOnline10','前台定位','1','96','23','0','cn');
INSERT INTO met_language VALUES('990','indexflashaddflash','添加Banner','1','92','4','0','cn');
INSERT INTO met_language VALUES('991','setskinOnline','在线交流方式','1','93','23','0','cn');
INSERT INTO met_language VALUES('992','setskinOnline1','固定于页面左边','1','94','23','0','cn');
INSERT INTO met_language VALUES('993','setskinOnline2','居左随屏幕滚动','1','95','23','0','cn');
INSERT INTO met_language VALUES('994','indexflashexplain9','链接地址需加http://或https://，添加按钮并设置按钮链接后，此处必须为空','1','90','4','0','cn');
INSERT INTO met_language VALUES('995','indexflashexplain4','多张图片建议保持图片大小一致','1','86','4','0','cn');
INSERT INTO met_language VALUES('996','flashHome','网站首页','1','79','4','0','cn');
INSERT INTO met_language VALUES('997','setflashImgHref','链接地址','1','68','4','0','cn');
INSERT INTO met_language VALUES('998','setflashImgUrl','图片地址','1','67','4','0','cn');
INSERT INTO met_language VALUES('999','setflashPixel','像素','1','65','0','0','cn');
INSERT INTO met_language VALUES('1000','setflashSize','Banner尺寸','1','63','4','0','cn');
INSERT INTO met_language VALUES('1001','setflashName','图片标题','1','61','0','0','cn');
INSERT INTO met_language VALUES('1002','indexsetFriendly','友情链接','1','55','0','0','cn');
INSERT INTO met_language VALUES('1003','skinstyle','风格','1','43','36','0','cn');
INSERT INTO met_language VALUES('1004','skinusenow','启用','1','40','0','0','cn');
INSERT INTO met_language VALUES('1005','skininfo','信息','1','42','3','0','cn');
INSERT INTO met_language VALUES('1006','skinuse','立即启用','1','39','0','0','cn');
INSERT INTO met_language VALUES('1007','settopcolumns','一级栏目','1','21','0','0','cn');
INSERT INTO met_language VALUES('1008','setskinproduct2','显示当前栏目下级栏目列表','1','17','0','0','cn');
INSERT INTO met_language VALUES('1009','setskinproduct1','显示栏目下所有信息列表','1','16','0','0','cn');
INSERT INTO met_language VALUES('1010','setskindatecontent','时间显示格式','1','14','0','0','cn');
INSERT INTO met_language VALUES('1011','setskinListPage','列表页','1','2','0','0','cn');
INSERT INTO met_language VALUES('1012','setbasicTip13','默认邮箱服务方式为TLS（可咨询邮箱服务商获得）<br />如果使用TLS方式25端口无法发送邮件，请尝试使用SSL方式465端口发件','1','422','39','0','cn');
INSERT INTO met_language VALUES('1013','setbasicSMTPWay','发送方式','1','420','39','0','cn');
INSERT INTO met_language VALUES('1014','setbasicTip12','用于邮件发送端口（咨询邮箱服务商获得，TLS一般为25，SSL一般为465）','1','421','39','0','cn');
INSERT INTO met_language VALUES('1015','setbasicSMTPPort','发送端口','1','419','39','0','cn');
INSERT INTO met_language VALUES('1016','password31','验证码已发送至指定号码','1','413','10','0','cn');
INSERT INTO met_language VALUES('1017','password30','邮箱找回密码功能不可用，请确保后台邮箱服务器设置正确','1','413','10','0','cn');
INSERT INTO met_language VALUES('1018','password29','用电子邮箱找回','1','412','10','0','cn');
INSERT INTO met_language VALUES('1019','password27','用手机号码找回','1','410','10','0','cn');
INSERT INTO met_language VALUES('1020','password25','新密码：','1','408','10','0','cn');
INSERT INTO met_language VALUES('1021','password26','再输入：','1','409','10','0','cn');
INSERT INTO met_language VALUES('1022','password20','下一步','1','403','0','0','cn');
INSERT INTO met_language VALUES('1023','password21','返回登录','1','404','10','0','cn');
INSERT INTO met_language VALUES('1024','password24','用户名：','1','407','10','0','cn');
INSERT INTO met_language VALUES('1025','password16','验证成功！请设置您新的密码。','1','399','10','0','cn');
INSERT INTO met_language VALUES('1026','password14','没有找到该用户的邮箱地址，请通过其它方式找回密码','1','397','10','0','cn');
INSERT INTO met_language VALUES('1027','password13','无法使用短信找回密码功能','1','396','10','0','cn');
INSERT INTO met_language VALUES('1028','password12','经过网关时，网络通讯异常可能会造成短信丢失，或者您会延时收到短信，请您耐心等待一下或稍后再试一下。','1','395','10','0','cn');
INSERT INTO met_language VALUES('1029','password11','请输入您手机接受到的短信校验码，然后点下一步。','1','394','10','0','cn');
INSERT INTO met_language VALUES('1030','password10','序号','1','393','10','0','cn');
INSERT INTO met_language VALUES('1031','password8','没有找到对应该手机的用户，请通过其它方式找回密码','1','391','10','0','cn');
INSERT INTO met_language VALUES('1032','password9','您请求重新设置密码，验证码','1','392','10','0','cn');
INSERT INTO met_language VALUES('1033','password7','没有找到该用户','1','390','10','0','cn');
INSERT INTO met_language VALUES('1034','password6','没有找到该用户的手机号码，请通过其它方式找回密码','1','389','10','0','cn');
INSERT INTO met_language VALUES('1035','password5','请输入管理员的电子邮箱地址：','1','388','10','0','cn');
INSERT INTO met_language VALUES('1036','password4','请输入管理员的电子邮箱地址。您会收到一封包含创建新密码链接的电子邮件。','1','387','10','0','cn');
INSERT INTO met_language VALUES('1037','password3','请输入管理员手机号码：','1','386','10','0','cn');
INSERT INTO met_language VALUES('1038','password2','请输入管理员手机号码，然后点下一步，您会收到一个短信校验码。','1','385','10','0','cn');
INSERT INTO met_language VALUES('1039','password1','请选择找回密码的方式：','1','384','10','0','cn');
INSERT INTO met_language VALUES('1040','loginid','用户名不能为空','1','22','18','0','cn');
INSERT INTO met_language VALUES('1041','lang64','中文(简体)','1','383','16','0','cn');
INSERT INTO met_language VALUES('1042','lang62','越南语','1','381','16','0','cn');
INSERT INTO met_language VALUES('1043','lang63','中文(繁体)','1','382','16','0','cn');
INSERT INTO met_language VALUES('1044','lang61','英语','1','380','16','0','cn');
INSERT INTO met_language VALUES('1045','lang60','印尼语','1','379','16','0','cn');
INSERT INTO met_language VALUES('1046','lang59','乌尔都语','1','378','16','0','cn');
INSERT INTO met_language VALUES('1047','lang54','意第绪语','1','373','16','0','cn');
INSERT INTO met_language VALUES('1048','lang53','意大利语','1','372','16','0','cn');
INSERT INTO met_language VALUES('1049','lang48','希腊语','1','367','16','0','cn');
INSERT INTO met_language VALUES('1050','lang49','西班牙的巴斯克语','1','368','16','0','cn');
INSERT INTO met_language VALUES('1051','lang50','西班牙语','1','369','16','0','cn');
INSERT INTO met_language VALUES('1052','lang51','匈牙利语','1','370','16','0','cn');
INSERT INTO met_language VALUES('1053','lang47','希伯来语','1','366','16','0','cn');
INSERT INTO met_language VALUES('1054','lang46','乌克兰语','1','365','16','0','cn');
INSERT INTO met_language VALUES('1055','lang45','威尔士语','1','364','16','0','cn');
INSERT INTO met_language VALUES('1056','lang43','泰语','1','362','16','0','cn');
INSERT INTO met_language VALUES('1057','lang44','土耳其语','1','363','16','0','cn');
INSERT INTO met_language VALUES('1058','lang42','斯瓦希里语','1','361','16','0','cn');
INSERT INTO met_language VALUES('1059','lang37','日语','1','356','16','0','cn');
INSERT INTO met_language VALUES('1060','lang38','瑞典语','1','357','16','0','cn');
INSERT INTO met_language VALUES('1061','lang39','塞尔维亚语','1','358','16','0','cn');
INSERT INTO met_language VALUES('1062','lang40','斯洛伐克语','1','359','16','0','cn');
INSERT INTO met_language VALUES('1063','lang41','斯洛文尼亚语','1','360','16','0','cn');
INSERT INTO met_language VALUES('1064','lang36','葡萄牙语','1','355','16','0','cn');
INSERT INTO met_language VALUES('1065','lang35','挪威语','1','354','16','0','cn');
INSERT INTO met_language VALUES('1066','lang33','马其顿语','1','352','16','0','cn');
INSERT INTO met_language VALUES('1067','lang32','马来语','1','351','16','0','cn');
INSERT INTO met_language VALUES('1068','lang31','马耳他语','1','350','16','0','cn');
INSERT INTO met_language VALUES('1069','lang30','罗马尼亚语','1','349','16','0','cn');
INSERT INTO met_language VALUES('1070','lang29','立陶宛语','1','348','16','0','cn');
INSERT INTO met_language VALUES('1071','lang28','拉脱维亚语','1','347','16','0','cn');
INSERT INTO met_language VALUES('1072','lang27','拉丁语','1','346','16','0','cn');
INSERT INTO met_language VALUES('1073','lang26','克罗地亚语','1','345','16','0','cn');
INSERT INTO met_language VALUES('1074','lang25','捷克语','1','344','16','0','cn');
INSERT INTO met_language VALUES('1075','lang24','加泰罗尼亚语','1','343','16','0','cn');
INSERT INTO met_language VALUES('1076','lang23','加利西亚语','1','342','16','0','cn');
INSERT INTO met_language VALUES('1077','lang22','荷兰语','1','341','16','0','cn');
INSERT INTO met_language VALUES('1078','lang21','韩语','1','340','16','0','cn');
INSERT INTO met_language VALUES('1079','lang20','海地克里奥尔语','1','339','16','0','cn');
INSERT INTO met_language VALUES('1080','lang17','芬兰语','1','336','16','0','cn');
INSERT INTO met_language VALUES('1081','lang16','菲律宾语','1','335','16','0','cn');
INSERT INTO met_language VALUES('1082','lang14','俄语','1','333','16','0','cn');
INSERT INTO met_language VALUES('1083','lang11','布尔语(南非荷兰语)','1','330','16','0','cn');
INSERT INTO met_language VALUES('1084','lang15','法语','1','334','16','0','cn');
INSERT INTO met_language VALUES('1085','lang12','丹麦语','1','331','16','0','cn');
INSERT INTO met_language VALUES('1086','lang13','德语','1','332','16','0','cn');
INSERT INTO met_language VALUES('1087','lang3','阿塞拜疆语','1','322','16','0','cn');
INSERT INTO met_language VALUES('1088','lang4','爱尔兰语','1','323','16','0','cn');
INSERT INTO met_language VALUES('1089','lang5','爱沙尼亚语','1','324','16','0','cn');
INSERT INTO met_language VALUES('1090','lang6','白俄罗斯语','1','325','16','0','cn');
INSERT INTO met_language VALUES('1091','lang7','保加利亚语','1','326','16','0','cn');
INSERT INTO met_language VALUES('1092','lang8','冰岛语','1','327','16','0','cn');
INSERT INTO met_language VALUES('1093','lang9','波兰语','1','328','16','0','cn');
INSERT INTO met_language VALUES('1094','lang10','波斯语','1','329','16','0','cn');
INSERT INTO met_language VALUES('1095','lang2','阿拉伯语','1','321','16','0','cn');
INSERT INTO met_language VALUES('1096','lang1','阿尔巴尼亚语','1','320','16','0','cn');
INSERT INTO met_language VALUES('1097','langselect','选择语言','1','318','0','0','cn');
INSERT INTO met_language VALUES('1098','langselect1','请选择语言','1','319','16','0','cn');
INSERT INTO met_language VALUES('1099','langwebmanage','网站语言','1','316','16','0','cn');
INSERT INTO met_language VALUES('1100','langexplain6','复制本地语言包','1','307','16','0','cn');
INSERT INTO met_language VALUES('1101','langexplain5','在线下载','1','308','1','0','cn');
INSERT INTO met_language VALUES('1102','langexplain4','复制已经有语言的基础语言包，譬如复制英文，则新语言的前台部分文字会是英文。','1','305','16','0','cn');
INSERT INTO met_language VALUES('1103','langexplain2','语言标识','1','303','16','0','cn');
INSERT INTO met_language VALUES('1104','langexplain1','对应前台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)','1','302','16','0','cn');
INSERT INTO met_language VALUES('1105','langexplain_admin','对应后台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)','1','302','16','0','cn');
INSERT INTO met_language VALUES('1106','upfiletips35','商业授权','1','293','2','0','cn');
INSERT INTO met_language VALUES('1107','upfiletips37','新闻','1','295','14','0','cn');
INSERT INTO met_language VALUES('1108','upfiletips38','服务器信息','1','296','37','0','cn');
INSERT INTO met_language VALUES('1109','upfiletips25','回收站','1','283','19','0','cn');
INSERT INTO met_language VALUES('1110','upfiletips24','前台的反馈、留言和简历提交','1','282','30','0','cn');
INSERT INTO met_language VALUES('1111','upfiletips20','拉伸','1','278','13','0','cn');
INSERT INTO met_language VALUES('1112','upfiletips21','留白','1','279','13','0','cn');
INSERT INTO met_language VALUES('1113','upfiletips22','裁剪','1','280','13','0','cn');
INSERT INTO met_language VALUES('1114','upfiletips23','生成方式','1','281','13','0','cn');
INSERT INTO met_language VALUES('1115','upfiletips19','水印','1','277','13','0','cn');
INSERT INTO met_language VALUES('1116','upfiletips16','发送测试','1','274','39','0','cn');
INSERT INTO met_language VALUES('1117','upfiletips15','100字以内','1','273','39','0','cn');
INSERT INTO met_language VALUES('1118','upfiletips14','网站描述','1','272','39','0','cn');
INSERT INTO met_language VALUES('1119','upfiletips13','多个关键词请用英文状态下的逗号 \",\" 隔开，建议3到4个关键词。','1','271','39','0','cn');
INSERT INTO met_language VALUES('1120','upfiletips10','6.0.0以上版本无需手动设置，当前登录的网址是：','1','268','39','0','cn');
INSERT INTO met_language VALUES('1121','upfiletips6','录入','1','264','0','0','cn');
INSERT INTO met_language VALUES('1122','upfiletips7','基本信息','1','265','0','0','cn');
INSERT INTO met_language VALUES('1123','upfiletips2','文件管理器','1','260','0','0','cn');
INSERT INTO met_language VALUES('1124','upfiletips1','查看文件列表','1','259','0','0','cn');
INSERT INTO met_language VALUES('1125','dataexplain10','数据库备份','1','256','8','0','cn');
INSERT INTO met_language VALUES('1126','dataexplain7','<span style=float:right;>一般在搬家时用，占用较大空间</span>备份数据和文件（数据库、用户文件、程序文件）','1','253','8','0','cn');
INSERT INTO met_language VALUES('1127','dataexplain6','<span style=float:right;>一般不用备份，占用较大空间</span>备份上传的文件（图片、文档等）','1','252','8','0','cn');
INSERT INTO met_language VALUES('1128','dataexplain5','<span style=float:right;>建议每月备份，占用少量空间</span>备份数据（不含上传的文件）','1','251','8','0','cn');
INSERT INTO met_language VALUES('1129','dataexplain2','可以上传数据库备份文件，支持sql或zip','1','248','8','0','cn');
INSERT INTO met_language VALUES('1130','dataexplain1','目前没有数据','1','247','8','0','cn');
INSERT INTO met_language VALUES('1131','databackup8','压缩整站','1','245','8','0','cn');
INSERT INTO met_language VALUES('1132','databackup6','上传文件夹备份','1','243','8','0','cn');
INSERT INTO met_language VALUES('1133','databackup2','恢复','1','239','8','0','cn');
INSERT INTO met_language VALUES('1134','databackup3','下载','1','240','8','0','cn');
INSERT INTO met_language VALUES('1135','databackup4','备份','1','241','8','0','cn');
INSERT INTO met_language VALUES('1136','setimgTopMid','顶中','1','233','13','0','cn');
INSERT INTO met_language VALUES('1137','setimgLowMid','底中','1','235','13','0','cn');
INSERT INTO met_language VALUES('1138','setimgRightMid','右中','1','234','13','0','cn');
INSERT INTO met_language VALUES('1139','setimgLeftLow','左下','1','232','13','0','cn');
INSERT INTO met_language VALUES('1140','setimgRightLow','右下','1','231','13','0','cn');
INSERT INTO met_language VALUES('1141','setimgRightTop','右上','1','230','13','0','cn');
INSERT INTO met_language VALUES('1142','setimgLeftTop','左上','1','229','13','0','cn');
INSERT INTO met_language VALUES('1143','setimgMid','中间','1','228','13','0','cn');
INSERT INTO met_language VALUES('1144','setimgPosition','水印位置','1','227','13','0','cn');
INSERT INTO met_language VALUES('1145','setimgWordAngle','水印文字角度','1','199','0','0','cn');
INSERT INTO met_language VALUES('1146','setimgTip5','水平为0','1','200','0','0','cn');
INSERT INTO met_language VALUES('1147','setimgWordColor','水印文字颜色','1','201','0','0','cn');
INSERT INTO met_language VALUES('1148','setimgTip4','请将字体文件放到后台管理目录admin/include/fonts/下','1','198','13','0','cn');
INSERT INTO met_language VALUES('1149','setimgWordFont','水印文字字体','1','197','13','0','cn');
INSERT INTO met_language VALUES('1150','setimgWordSize2','大图水印文字大小','1','196','13','0','cn');
INSERT INTO met_language VALUES('1151','setimgWord','水印文字','1','193','13','0','cn');
INSERT INTO met_language VALUES('1152','setimgTip3','不支持中文（中文水印需要下载中文字体才能支持）','1','194','13','0','cn');
INSERT INTO met_language VALUES('1153','setimgWordSize','缩略图水印文字大小','1','195','13','0','cn');
INSERT INTO met_language VALUES('1154','setimgImgWatermark','图片水印','1','189','13','0','cn');
INSERT INTO met_language VALUES('1155','setimgImg','缩略图水印图片','1','190','13','0','cn');
INSERT INTO met_language VALUES('1156','setimgImg2','大图水印图片','1','191','13','0','cn');
INSERT INTO met_language VALUES('1157','setimgTip2','仅支持.jpg|.png格式','1','192','13','0','cn');
INSERT INTO met_language VALUES('1158','setimgWatermarkType','水印类型','1','187','13','0','cn');
INSERT INTO met_language VALUES('1159','setimgWordWatermark','文字水印','1','188','13','0','cn');
INSERT INTO met_language VALUES('1160','setimgThumb','缩略图添加水印','1','186','13','0','cn');
INSERT INTO met_language VALUES('1161','setimgWatermark','添加范围','1','184','13','0','cn');
INSERT INTO met_language VALUES('1162','setimgBigImg','详细大图添加水印','1','185','13','0','cn');
INSERT INTO met_language VALUES('1163','setimgrename2','重命名文件名称有利于减少异常','1','183','30','0','cn');
INSERT INTO met_language VALUES('1164','setimgrename','自动重命名','1','181','30','0','cn');
INSERT INTO met_language VALUES('1165','setimgrename1','对上传的文件名自动进行重命名','1','182','30','0','cn');
INSERT INTO met_language VALUES('1166','setimgWater','自动生成','1','179','0','0','cn');
INSERT INTO met_language VALUES('1167','setimgHeight','高','1','176','0','0','cn');
INSERT INTO met_language VALUES('1168','setimgPixel','像素','1','175','0','0','cn');
INSERT INTO met_language VALUES('1169','setimgWidth','宽','1','174','0','0','cn');
INSERT INTO met_language VALUES('1170','authTip2','您所输入的商业注册码与域名不匹配！','1','160','0','0','cn');
INSERT INTO met_language VALUES('1171','authKey','密钥','1','158','0','0','cn');
INSERT INTO met_language VALUES('1172','authAuthorizedCode','授权码','1','159','0','0','cn');
INSERT INTO met_language VALUES('1173','setfilesize','文件大小','1','134','0','0','cn');
INSERT INTO met_language VALUES('1174','setsafemember','前台提交验证码','1','127','30','0','cn');
INSERT INTO met_language VALUES('1175','setsafeadmin','后台登录验证码','1','126','30','0','cn');
INSERT INTO met_language VALUES('1176','setsafeupdate','删除升级文件','1','124','30','0','cn');
INSERT INTO met_language VALUES('1177','setsafeupdate1','删除后可以增强网站的安全性能','1','125','30','0','cn');
INSERT INTO met_language VALUES('1178','setsafeinstall','删除安装文件','1','123','30','0','cn');
INSERT INTO met_language VALUES('1179','setsafeadminname1c','仅创始人可修改，不支持中文，部分空间修改文件名称后需要通过FTP手动修改文件夹名称，当前后台网址：','1','122','30','0','cn');
INSERT INTO met_language VALUES('1180','setsafeadminname','后台文件夹名称','1','118','30','0','cn');
INSERT INTO met_language VALUES('1181','setsafeadminname1','安全建议:','1','119','30','0','cn');
INSERT INTO met_language VALUES('1182','setdbNotExist','文件不存在','1','114','30','0','cn');
INSERT INTO met_language VALUES('1183','setdbArchiveOK','压缩成功','1','115','8','0','cn');
INSERT INTO met_language VALUES('1184','setdbImportOK','导入成功','1','111','8','0','cn');
INSERT INTO met_language VALUES('1185','setdbBackupOK','数据库备份完毕!','1','109','8','0','cn');
INSERT INTO met_language VALUES('1186','setdbTip2','数据无法备份到服务器!请检查','1','104','8','0','cn');
INSERT INTO met_language VALUES('1187','setdbTip3','目录是否可写。','1','105','8','0','cn');
INSERT INTO met_language VALUES('1188','setdbImportData','导入','1','101','8','0','cn');
INSERT INTO met_language VALUES('1189','setdbLack','缺少分卷','1','100','8','0','cn');
INSERT INTO met_language VALUES('1190','setdbFilesize','文件大小','1','97','8','0','cn');
INSERT INTO met_language VALUES('1191','setdbTime','备份时间','1','98','8','0','cn');
INSERT INTO met_language VALUES('1192','setdbNumber','分卷数','1','99','8','0','cn');
INSERT INTO met_language VALUES('1193','setdbsysver','系统版本','1','96','8','0','cn');
INSERT INTO met_language VALUES('1194','setdbFilename','文件名','1','95','8','0','cn');
INSERT INTO met_language VALUES('1195','setdbImport','导入备份数据','1','88','8','0','cn');
INSERT INTO met_language VALUES('1196','langshuom','说明','1','86','3','0','cn');
INSERT INTO met_language VALUES('1197','langtype','语言状态','1','85','0','0','cn');
INSERT INTO met_language VALUES('1198','langnameorder','不可以与其他语言排序重复','1','80','16','0','cn');
INSERT INTO met_language VALUES('1199','langnamerepeat','语言标识不能重复','1','81','16','0','cn');
INSERT INTO met_language VALUES('1200','langone','系统只有一种语言，不能被删除！','1','82','16','0','cn');
INSERT INTO met_language VALUES('1201','langnamenull','语言名称不能为空','1','77','16','0','cn');
INSERT INTO met_language VALUES('1202','langouturlinfo','务必包含http://或https://，访问该域名程序将自动跳转到此语言（需先做好域名解析绑定），或者做外部链接用。','1','74','16','0','cn');
INSERT INTO met_language VALUES('1203','langnewwindows','新窗口打开','1','75','16','0','cn');
INSERT INTO met_language VALUES('1204','langmarkinfo','请用英文字母，如 cn ，不可以与其他语言标识重复','1','71','16','0','cn');
INSERT INTO met_language VALUES('1205','langurlinfo','网站被访问时默认展示的网站语言','1','69','16','0','cn');
INSERT INTO met_language VALUES('1206','langurlinfo1','网站后台被访问时默认展示的网站语言','1','69','16','0','cn');
INSERT INTO met_language VALUES('1207','langorderinfo','不可以重复','1','70','16','0','cn');
INSERT INTO met_language VALUES('1208','langadminyes','管理员在登录前可以选择后台语言','1','66','16','0','cn');
INSERT INTO met_language VALUES('1209','langsw','语言切换','1','68','16','0','cn');
INSERT INTO met_language VALUES('1210','langhome','默认语言','1','63','16','0','cn');
INSERT INTO met_language VALUES('1211','langchok','一般以链接形式显示在前台右上角','1','62','16','0','cn');
INSERT INTO met_language VALUES('1212','langch','简繁体自动切换','1','60','16','0','cn');
INSERT INTO met_language VALUES('1213','langwebeditor','编辑参数','1','58','16','0','cn');
INSERT INTO met_language VALUES('1214','langmark','语言标识','1','54','0','0','cn');
INSERT INTO met_language VALUES('1215','langouturl','独立域名','1','55','16','0','cn');
INSERT INTO met_language VALUES('1216','langpara','插件语言','1','57','16','0','cn');
INSERT INTO met_language VALUES('1217','langflag','国旗标志','1','53','16','0','cn');
INSERT INTO met_language VALUES('1218','langname','语言名称','1','52','16','0','cn');
INSERT INTO met_language VALUES('1219','langadd','添加新语言','1','50','16','0','cn');
INSERT INTO met_language VALUES('1220','langweb','网站语言','1','49','0','0','cn');
INSERT INTO met_language VALUES('1221','langadmin','后台语言','1','49','0','0','cn');
INSERT INTO met_language VALUES('1222','setbasicTip11','用于发送邮件的邮箱密码','1','47','39','0','cn');
INSERT INTO met_language VALUES('1223','setbasicTip10','如QQ邮箱为smtp.qq.com','1','45','39','0','cn');
INSERT INTO met_language VALUES('1224','setbasicSMTPPassword','邮箱密码','1','46','39','0','cn');
INSERT INTO met_language VALUES('1225','setbasicSMTPServer','SMTP','1','44','39','0','cn');
INSERT INTO met_language VALUES('1226','setbasicTip8','用于发送邮件的邮箱账号','1','43','39','0','cn');
INSERT INTO met_language VALUES('1227','setbasicEmailAccount','邮箱账号','1','42','39','0','cn');
INSERT INTO met_language VALUES('1228','setbasicTip7','所显示的发件人姓名','1','41','39','0','cn');
INSERT INTO met_language VALUES('1229','setbasicTip5','多个请用“|”隔开','1','33','30','0','cn');
INSERT INTO met_language VALUES('1230','setbasicTip6','发件箱设置（站内所有邮件均由此邮箱发送，如会员密码找回邮件等）','1','34','39','0','cn');
INSERT INTO met_language VALUES('1231','setbasicFromName','发件人','1','35','39','0','cn');
INSERT INTO met_language VALUES('1232','setbasicEnableFormat','允许上传的文件格式','1','32','30','0','cn');
INSERT INTO met_language VALUES('1233','setbasicUploadMax','文件上传最大值','1','31','30','0','cn');
INSERT INTO met_language VALUES('1234','setbasicWebName','网站名称','1','29','39','0','cn');
INSERT INTO met_language VALUES('1235','setbasicWebInfoSet','网站基本信息设置','1','28','0','0','cn');
INSERT INTO met_language VALUES('1236','reserved','版权所有','1','24','37','0','cn');
INSERT INTO met_language VALUES('1237','copyright','长沙米拓信息技术有限公司（MetInfo Inc.）','1','25','0','0','cn');
INSERT INTO met_language VALUES('1238','setbasicTip14','gmail邮箱需要空间支持SSL，请开启SSL，或换成其他邮箱！！！','1','429','39','0','cn');
INSERT INTO met_language VALUES('1239','setbasicTip15','空间不支持SSL方式发送邮件，请开启SSL，或换成TLS方式！！！','1','430','39','0','cn');
INSERT INTO met_language VALUES('1240','feedbackautosms','短信回复设置','1','177','0','0','cn');
INSERT INTO met_language VALUES('1241','fdincAutosms','短信回复','1','178','0','0','cn');
INSERT INTO met_language VALUES('1242','fdincAutoContentsms','回复短信内容','1','179','0','0','cn');
INSERT INTO met_language VALUES('1243','fdincTipsms','勾选后将自动向用户回复短信，需要在我的应用“短信功能”进行短信充值后才能使用','1','180','0','0','cn');
INSERT INTO met_language VALUES('1244','fdinctellsms','联系电话字段名','1','181','0','0','cn');
INSERT INTO met_language VALUES('1245','fdinctells','用于获取用户的联系电话，以便回复短信。字段类型必须为“电话”','1','182','0','0','cn');
INSERT INTO met_language VALUES('1246','hotsearches','热门搜索','1','431','16','0','cn');
INSERT INTO met_language VALUES('1247','updatenow','立即升级','1','437','0','0','cn');
INSERT INTO met_language VALUES('1248','updatelater','稍后升级','1','438','0','0','cn');
INSERT INTO met_language VALUES('1249','tag','TAG标签','1','434','0','0','cn');
INSERT INTO met_language VALUES('1250','displaytype','前台显示','1','183','0','0','cn');
INSERT INTO met_language VALUES('1251','checkupdate','检测更新','1','439','0','0','cn');
INSERT INTO met_language VALUES('1252','checkupdatetips','对不起！您的权限不够，无法操作在线升级。','1','440','0','0','cn');
INSERT INTO met_language VALUES('1253','paraname','名称','1','187','0','0','cn');
INSERT INTO met_language VALUES('1254','message_name','姓名字段名','1','240','20','0','cn');
INSERT INTO met_language VALUES('1255','message_name1','用于获取用户的姓名，字段类型必须为“简短”','1','241','20','0','cn');
INSERT INTO met_language VALUES('1256','message_content','留言内容字段名','1','242','20','0','cn');
INSERT INTO met_language VALUES('1257','message_content1','用于获取用户的留言内容，字段类型必须为“文本”','1','243','20','0','cn');
INSERT INTO met_language VALUES('1258','message_AcceptMail','留言邮件接收邮箱','1','244','20','0','cn');
INSERT INTO met_language VALUES('1259','column_searchname','请输入栏目名称','1','246','0','0','cn');
INSERT INTO met_language VALUES('1260','jsx38','您没有完全控制权限，请联系管理员开通','1','446','0','0','cn');
INSERT INTO met_language VALUES('1261','formerror1','请填写此字段。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1262','formerror2','请从这些选项中选择一个。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1263','formerror3','请输入正确的手机号码。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1264','formerror4','请输入正确的Email地址。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1265','formerror5','两次输入的密码不一致，请重新输入。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1266','formerror6','请输入至少&metinfo&个字符。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1267','formerror7','输入不能超过&metinfo&个字符。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1268','formerror8','输入的字符数必须在&metinfo&之间。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1269','style_settings','风格设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1270','All_empty_message','清空全部消息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1271','manually_static_rules','部分空间需要手动设置伪静态规则文件','1','0','32','0','cn');
INSERT INTO met_language VALUES('1272','pseudo_static','查看伪静态规则','1','0','32','0','cn');
INSERT INTO met_language VALUES('1273','sys_static','伪静态化','1','0','32','0','cn');
INSERT INTO met_language VALUES('1274','anchor_textadd','添加锚文本','1','0','11','0','cn');
INSERT INTO met_language VALUES('1275','applies_paper','仅作用于前台页面中的内容文字，比如文章详情页内容文字。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1276','configuration_section','配置栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1277','template_code1','请输入模板编号','1','0','3','0','cn');
INSERT INTO met_language VALUES('1278','industry_segments','行业细分','1','0','3','0','cn');
INSERT INTO met_language VALUES('1279','color_filter','颜色筛选','1','0','3','0','cn');
INSERT INTO met_language VALUES('1280','industry_screening','行业筛选','1','0','3','0','cn');
INSERT INTO met_language VALUES('1281','set_password','第三步：设置支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1282','login_password','位。付费购买应用时需要输入支付密码，请不要与登录密码一致。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1283','services_future','可用于找回密码以及获取应用市场未来提供的更多服务','1','0','3','0','cn');
INSERT INTO met_language VALUES('1284','personal_information','第二步：设置个人信息','1','0','3','0','cn');
INSERT INTO met_language VALUES('1285','sys_password','登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1286','create_account','第一步：创建账户','1','0','3','0','cn');
INSERT INTO met_language VALUES('1287','buy_time','购买时间','1','0','3','0','cn');
INSERT INTO met_language VALUES('1288','please_click','支付成功，请点击！！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1289','payment_method','请选择支付方式','1','0','3','0','cn');
INSERT INTO met_language VALUES('1290','sys_unionpay','银联','1','0','3','0','cn');
INSERT INTO met_language VALUES('1291','enter_amount','请输入充值金额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1292','payment_amount','支付金额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1293','account_Settings','用户中心','1','0','3','0','cn');
INSERT INTO met_language VALUES('1294','consumption_record','消费记录','1','0','3','0','cn');
INSERT INTO met_language VALUES('1295','website_manually','登录成功后您的网站将永久自动登录此帐号，除非手动退出。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1296','application_market','登录米拓用户中心','1','0','3','0','cn');
INSERT INTO met_language VALUES('1297','installations','安装量','1','0','0','0','cn');
INSERT INTO met_language VALUES('1298','goods_comment','购买商品后才能评论','1','0','3','0','cn');
INSERT INTO met_language VALUES('1299','product_commented','同一个产品最多评论3次','1','0','3','0','cn');
INSERT INTO met_language VALUES('1300','password_mistake','支付密码错误','1','0','3','0','cn');
INSERT INTO met_language VALUES('1301','please_again','请先登录应用商店；应用商店可使用米拓官网用户账号登录，无需重复注册！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1302','have_bought','已购买','1','0','3','0','cn');
INSERT INTO met_language VALUES('1303','download_application','当前系统无法下载此应用，请升级系统','1','0','3','0','cn');
INSERT INTO met_language VALUES('1304','sys_evaluation','评价成功！感谢您的评价！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1305','downloads','开始下载','1','0','3','0','cn');
INSERT INTO met_language VALUES('1306','click_rating','请点击星形评分！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1307','payment_password','新支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1308','original_password1','请输入原支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1309','original_password','原支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1310','password_length','密码长度','1','0','3','0','cn');
INSERT INTO met_language VALUES('1311','please_enter','请输入新密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1312','login_password_new','新登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1313','original_passwords1','请输入原密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1314','original_passwords','原登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1315','account_password','请填写应用市场账户登录密码，而不是网站登录密码。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1316','please_password','请输入登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1317','login_password1','您必须填写登录密码才能修改资料','1','0','3','0','cn');
INSERT INTO met_language VALUES('1318','popular_template','热门模板','1','0','3','0','cn');
INSERT INTO met_language VALUES('1319','popular_application','热门应用','1','0','3','0','cn');
INSERT INTO met_language VALUES('1320','number_installation','安装次数','1','0','3','0','cn');
INSERT INTO met_language VALUES('1321','application_name','应用名称','1','0','3','0','cn');
INSERT INTO met_language VALUES('1322','introduction_developers','开发者简介','1','0','3','0','cn');
INSERT INTO met_language VALUES('1323','sys_head','头像','1','0','3','0','cn');
INSERT INTO met_language VALUES('1324','name_developers','开发者名称','1','0','3','0','cn');
INSERT INTO met_language VALUES('1325','dont_fill','可不填','1','0','3','0','cn');
INSERT INTO met_language VALUES('1326','mouse_click_rating','鼠标放到星形上点击评分','1','0','3','0','cn');
INSERT INTO met_language VALUES('1327','score','评分','1','0','3','0','cn');
INSERT INTO met_language VALUES('1328','want_comment','我要评论','1','0','3','0','cn');
INSERT INTO met_language VALUES('1329','back','上页','1','0','1','0','cn');
INSERT INTO met_language VALUES('1330','running_environment','运行环境','1','0','3','0','cn');
INSERT INTO met_language VALUES('1331','updated_date','更新日期','1','0','3','0','cn');
INSERT INTO met_language VALUES('1332','online_presentation','在线演示','1','0','3','0','cn');
INSERT INTO met_language VALUES('1333','screenshots','截图','1','0','3','0','cn');
INSERT INTO met_language VALUES('1334','is_introduced','介绍','1','0','3','0','cn');
INSERT INTO met_language VALUES('1335','comments','评论','1','0','3','0','cn');
INSERT INTO met_language VALUES('1336','evaluation','人评价）','1','0','3','0','cn');
INSERT INTO met_language VALUES('1337','total_of','（共','1','0','3','0','cn');
INSERT INTO met_language VALUES('1338','pay_password','支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1339','temporary_access1','请输入临时访问域名，必须是三级域名。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1340','temporary_access','临时访问域名','1','0','3','0','cn');
INSERT INTO met_language VALUES('1341','top_domain_names','顶级域名','1','0','3','0','cn');
INSERT INTO met_language VALUES('1342','buy_template_must','购买后程序将自动获取当前网站域名并进行绑定，以后此模板只能用于绑定域名下使用。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1343','amount_of','金额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1344','purchase_program','购买项目','1','0','3','0','cn');
INSERT INTO met_language VALUES('1345','success_payment','支付成功后，请点击此链接跳转！！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1346','latest_version','已是最新版','1','0','1','0','cn');
INSERT INTO met_language VALUES('1347','pay_success','支付成功','1','0','3','0','cn');
INSERT INTO met_language VALUES('1348','be_updated','可更新至','1','0','1','0','cn');
INSERT INTO met_language VALUES('1349','update_log','更新日志','1','0','37','0','cn');
INSERT INTO met_language VALUES('1350','current_version','当前版本','1','0','37','0','cn');
INSERT INTO met_language VALUES('1351','program_information','程序信息','1','0','37','0','cn');
INSERT INTO met_language VALUES('1352','system_maintenance','系统维护中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1353','permission_download','没有权限下载','1','0','3','0','cn');
INSERT INTO met_language VALUES('1354','link_remote','链接不上远程服务器','1','0','0','0','cn');
INSERT INTO met_language VALUES('1355','try_again','重试','1','0','0','0','cn');
INSERT INTO met_language VALUES('1356','give_installation','放弃安装','1','0','0','0','cn');
INSERT INTO met_language VALUES('1357','configuratio_template','配置模板','1','0','0','0','cn');
INSERT INTO met_language VALUES('1358','seconds_background','秒好后刷新后台','1','0','0','0','cn');
INSERT INTO met_language VALUES('1359','installation_complete','安装完成','1','0','0','0','cn');
INSERT INTO met_language VALUES('1360','installation','安装中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1361','possible_reasons','可能原因','1','0','0','0','cn');
INSERT INTO met_language VALUES('1362','download_interrupt','文件下载中断','1','0','0','0','cn');
INSERT INTO met_language VALUES('1363','write_permission','文件没有写权限或其新建的子文件夹没有写权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('1364','download','下载中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1365','following_documents','下列文件没有修改权限，无法进行升级操作！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1366','document_upgrade','系统升级文档','1','0','0','0','cn');
INSERT INTO met_language VALUES('1367','file_permissions','文件权限检测中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1368','anchor_text','站内锚文本','1','0','11','0','cn');
INSERT INTO met_language VALUES('1369','please_select','请选择栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1370','log_successfully','登录成功','1','0','0','0','cn');
INSERT INTO met_language VALUES('1371','out_of_success','退出成功','1','0','3','0','cn');
INSERT INTO met_language VALUES('1372','password_changing','支付密码修改','1','0','3','0','cn');
INSERT INTO met_language VALUES('1373','login_password_changing','登录密码修改','1','0','3','0','cn');
INSERT INTO met_language VALUES('1374','account_information','账户信息设置','1','0','3','0','cn');
INSERT INTO met_language VALUES('1375','my_bill','充值记录','1','0','0','0','cn');
INSERT INTO met_language VALUES('1376','keep_sorting','保存排序','1','0','0','0','cn');
INSERT INTO met_language VALUES('1377','structure_mode','构成方式','1','0','32','0','cn');
INSERT INTO met_language VALUES('1378','title_cannot_empty!','标题不能为空！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1379','adaptive','自适应','1','0','4','0','cn');
INSERT INTO met_language VALUES('1380','upload_local_v6','本地上传','1','0','1','0','cn');
INSERT INTO met_language VALUES('1381','upload_addoutimg_v6','添加外部图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1382','upload_progress_v6','上传中','1','0','1','0','cn');
INSERT INTO met_language VALUES('1383','upload_selectimg_v6','选择图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1384','upload_pselectimg_v6','请选择图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1385','upload_libraryimg_v6','从图片库选择','1','0','1','0','cn');
INSERT INTO met_language VALUES('1386','upload_extraimglink_v6','外部图片链接','1','0','1','0','cn');
INSERT INTO met_language VALUES('1387','delete_information','您确定要删除该信息吗？删除之后无法再恢复。','1','0','1','0','cn');
INSERT INTO met_language VALUES('1388','page_for_details','详情页','1','0','36','0','cn');
INSERT INTO met_language VALUES('1389','default_values','默认值','1','0','0','0','cn');
INSERT INTO met_language VALUES('1390','label','标签','1','0','0','0','cn');
INSERT INTO met_language VALUES('1391','for','为','1','0','0','0','cn');
INSERT INTO met_language VALUES('1392','verify_password','请重复输入密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1393','Repeat_password','重复密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1394','for_details','应用详情','1','0','3','0','cn');
INSERT INTO met_language VALUES('1395','template','模板','1','0','3','0','cn');
INSERT INTO met_language VALUES('1396','application','增值服务','1','0','3','0','cn');
INSERT INTO met_language VALUES('1397','Prompt_password','请输入密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1398','alipay','支付宝','1','0','0','0','cn');
INSERT INTO met_language VALUES('1399','account','账号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1400','Prompt_email','请输入邮箱地址','1','0','3','0','cn');
INSERT INTO met_language VALUES('1401','mailbox','邮箱','1','0','0','0','cn');
INSERT INTO met_language VALUES('1402','Prompt_mobile','请输入手机号码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1403','Prompt_user','请输入您的用户名','1','0','3','0','cn');
INSERT INTO met_language VALUES('1404','balance','余额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1405','buy_records','购买记录','1','0','3','0','cn');
INSERT INTO met_language VALUES('1406','registration','注册','1','0','0','0','cn');
INSERT INTO met_language VALUES('1407','landing','登录','1','0','0','0','cn');
INSERT INTO met_language VALUES('1408','page_range','上一条下一条翻页范围','1','0','0','0','cn');
INSERT INTO met_language VALUES('1409','sys_navigation','导航：栏目设置中可以调整是否新窗口打开。','1','0','35','0','cn');
INSERT INTO met_language VALUES('1410','sys_navigation2','显示栏目列表时，图片需要在栏目设置中上传（栏目图片）。','1','0','35','0','cn');
INSERT INTO met_language VALUES('1411','suggested_size','建议尺寸','1','0','35','0','cn');
INSERT INTO met_language VALUES('1412','website_information','网站信息','1','0','39','0','cn');
INSERT INTO met_language VALUES('1413','email_Settings','发件邮箱配置','1','0','39','0','cn');
INSERT INTO met_language VALUES('1414','third_party_code','第三方代码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1415','please_login','请先登录！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1416','next_page','下页','1','0','1','0','cn');
INSERT INTO met_language VALUES('1417','background_page','后台首页','1','0','0','0','cn');
INSERT INTO met_language VALUES('1418','modify_information','修改个人资料','1','0','0','0','cn');
INSERT INTO met_language VALUES('1419','sys_select','精  选','1','0','3','0','cn');
INSERT INTO met_language VALUES('1420','should_used','应  用','1','0','3','0','cn');
INSERT INTO met_language VALUES('1421','sys_template','模  板','1','0','3','0','cn');
INSERT INTO met_language VALUES('1422','sys_purchase','购买','1','0','3','0','cn');
INSERT INTO met_language VALUES('1423','sys_payment','支付','1','0','3','0','cn');
INSERT INTO met_language VALUES('1424','extension_school','米拓学院','1','0','0','0','cn');
INSERT INTO met_language VALUES('1425','the_bit','位','1','0','0','0','cn');
INSERT INTO met_language VALUES('1426','the_server','服务器','1','0','0','0','cn');
INSERT INTO met_language VALUES('1427','the_version','版本','1','0','0','0','cn');
INSERT INTO met_language VALUES('1428','safety_efficiency','安全与效率','1','0','36','0','cn');
INSERT INTO met_language VALUES('1429','data_processing','备份与恢复','1','0','36','0','cn');
INSERT INTO met_language VALUES('1430','appearance','网站模板','1','0','0','0','cn');
INSERT INTO met_language VALUES('1431','the_user','用户管理','1','0','8','0','cn');
INSERT INTO met_language VALUES('1432','safety','安全设置','1','0','8','0','cn');
INSERT INTO met_language VALUES('1433','attention','关注','1','0','0','0','cn');
INSERT INTO met_language VALUES('1434','author','作者','1','0','0','0','cn');
INSERT INTO met_language VALUES('1435','sys_authorization1','录入商业授权','1','0','0','0','cn');
INSERT INTO met_language VALUES('1436','sys_authorization2','了解商业授权','1','0','0','0','cn');
INSERT INTO met_language VALUES('1437','detection','检测中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1438','entry_authorization','重新录入授权','1','0','0','0','cn');
INSERT INTO met_language VALUES('1439','display_number','选项卡显示数','1','0','36','0','cn');
INSERT INTO met_language VALUES('1440','corresponding_products','每个栏目可单独设置，如不单独设置，则调用上级栏目的配置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1441','tab_title1','选项卡一标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1442','tab_title2','选项卡二标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1443','tab_title3','选项卡三标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1444','tab_title4','选项卡四标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1445','tab_title5','选项卡五标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1446','download_prompt','正在进行下载，请不要操作页面！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1447','purchase_application','购买的应用只能作用于当前的网站','1','0','0','0','cn');
INSERT INTO met_language VALUES('1448','text_color','文字颜色','1','0','41','0','cn');
INSERT INTO met_language VALUES('1449','the_menu','手机菜单','1','0','41','0','cn');
INSERT INTO met_language VALUES('1450','background_color','背景颜色','1','0','41','0','cn');
INSERT INTO met_language VALUES('1451','external_links','外部链接','1','0','0','0','cn');
INSERT INTO met_language VALUES('1452','appmarket_jurisdiction','您没有查看应用市场的权限，请联系管理员开通。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1453','setup_permissions','您没有设置权限，请联系管理员开通。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1454','release','添加内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1455','administration','内容管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1456','customers','在线客服','1','0','0','0','cn');
INSERT INTO met_language VALUES('1457','seo','SEO','1','0','32','0','cn');
INSERT INTO met_language VALUES('1458','member','会员','1','0','38','0','cn');
INSERT INTO met_language VALUES('1459','language','语言设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1460','htmltopseudo','静态页面伪静态化','1','0','11','0','cn');
INSERT INTO met_language VALUES('1461','htmltopseudotips','使用伪静态方式实现静态页面URL，当前静态页面URL不变。对SEO效果不会产生影响。需要空间支持伪静态，并且会删除静态页面文件。','1','0','11','0','cn');
INSERT INTO met_language VALUES('1462','timedrelease','定时发布','1','0','0','0','cn');
INSERT INTO met_language VALUES('1463','mod_rewrite_column','开启伪静态化需空间环境配置开启mod_rewrite模块，如没有开启则联系空间商解决。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1464','displaytype2','前台隐藏','1','0','0','0','cn');
INSERT INTO met_language VALUES('1465','js73','静态页面名称已被使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1466','js74','仅支持中文、大小写字母、数字、下划线','1','0','0','0','cn');
INSERT INTO met_language VALUES('1467','js75','名称可用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1468','js76','请先添加栏目再在此页面设置页面内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1469','unrecom','取消推荐','1','0','0','0','cn');
INSERT INTO met_language VALUES('1470','untop','取消置顶','1','0','0','0','cn');
INSERT INTO met_language VALUES('1471','modistauts','状态修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1472','goods','商品','1','0','0','0','cn');
INSERT INTO met_language VALUES('1473','js77','后台文件夹名称仅支持大小写字母、数字、下划线','1','0','0','0','cn');
INSERT INTO met_language VALUES('1474','js78','管理员名称不能重复','1','0','0','0','cn');
INSERT INTO met_language VALUES('1475','banner_pcheight_v6','电脑端高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1476','banner_setmobileImgUrl_v6','手机端图片地址','1','0','4','0','cn');
INSERT INTO met_language VALUES('1477','banner_setalert_v6','填数值，（如300，代表300px）建议自适应高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1478','banner_pidheight_v6','平板电脑端高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1479','banner_phoneheight_v6','手机端高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1480','banner_imgtitlecolor_v6','图片标题颜色','1','0','4','0','cn');
INSERT INTO met_language VALUES('1481','banner_needtempsupport_v6','一般不需要设置，部分特殊模板支持前台才显示生效','1','0','4','0','cn');
INSERT INTO met_language VALUES('1482','banner_imgdesc_v6','图片描述','1','0','4','0','cn');
INSERT INTO met_language VALUES('1483','banner_imgdesccolor_v6','图片描述颜色','1','0','4','0','cn');
INSERT INTO met_language VALUES('1484','banner_imgwordpos_v6','图片文字位置','1','0','4','0','cn');
INSERT INTO met_language VALUES('1485','posleft','左','1','0','4','0','cn');
INSERT INTO met_language VALUES('1486','posright','右','1','0','4','0','cn');
INSERT INTO met_language VALUES('1487','posup','上','1','0','4','0','cn');
INSERT INTO met_language VALUES('1488','poslower','下','1','0','4','0','cn');
INSERT INTO met_language VALUES('1489','poscenter','居中','1','0','4','0','cn');
INSERT INTO met_language VALUES('1490','batch_wm_v6','批量水印','1','0','5','0','cn');
INSERT INTO met_language VALUES('1491','batch_rmwm_v6','去除水印','1','0','5','0','cn');
INSERT INTO met_language VALUES('1492','batch_addwm_v6','添加水印','1','0','5','0','cn');
INSERT INTO met_language VALUES('1493','admin_movetocolumn_v6','移动到指定栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1494','admin_copytocolumn_v6','复制到指定栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1495','admin_colunmmanage_v6','栏目管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1496','parmanage','参数管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1497','refresh','刷新','1','0','0','0','cn');
INSERT INTO met_language VALUES('1498','desctext','描述文字','1','0','0','0','cn');
INSERT INTO met_language VALUES('1499','linkto','链接至','1','0','0','0','cn');
INSERT INTO met_language VALUES('1500','releasenow','立即发布','1','0','0','0','cn');
INSERT INTO met_language VALUES('1501','js79','访问量','1','0','0','0','cn');
INSERT INTO met_language VALUES('1502','added','新增','1','0','0','0','cn');
INSERT INTO met_language VALUES('1503','column_littleicon_v6','小图标icon','1','0','5','0','cn');
INSERT INTO met_language VALUES('1504','column_choosicon_v6','选择图标','1','0','5','0','cn');
INSERT INTO met_language VALUES('1505','column_inputcolumnfolder_v6','输入栏目文件夹名称','1','0','5','0','cn');
INSERT INTO met_language VALUES('1506','browserupdatetips','你正在使用一个 <strong>过时</strong> 的浏览器。请 <a href=https://browsehappy.com/ target=_blank>升级您的浏览器</a>，以提高您的体验。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1507','column_selecticonlib_v6','图标库选择','1','0','5','0','cn');
INSERT INTO met_language VALUES('1508','column_viewicon_v6','浏览图标','1','0','5','0','cn');
INSERT INTO met_language VALUES('1509','tips2_v6','显示在详情页底部，用于聚合内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1510','tips3_v6','多个关键词请用\"|\"隔开，如“建站|企业建站”','1','0','0','0','cn');
INSERT INTO met_language VALUES('1511','tips4_v6','请输入网址（需要包含http或https），设置后访问该条信息将直接跳转到设置的网址','1','0','0','0','cn');
INSERT INTO met_language VALUES('1512','tips5_v6','定时发布不支持静态页面，请关闭静态页面。（可以使用伪静态）','1','0','0','0','cn');
INSERT INTO met_language VALUES('1513','tips6_v6','为空则按系统规则自动构成，可以到SEO设置中修改规则。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1514','tips7_v6','当没有手动上传图片时候，会自动提取详细信息第一张图片作为封面（此功能需要模板支持）','1','0','0','0','cn');
INSERT INTO met_language VALUES('1515','coverimg','封面图片','1','0','0','0','cn');
INSERT INTO met_language VALUES('1516','articletitle','文章标题','1','0','0','0','cn');
INSERT INTO met_language VALUES('1517','htmTip3','生成首页','1','0','11','0','cn');
INSERT INTO met_language VALUES('1518','js81','您没有此操作权限请联系管理员','1','0','0','0','cn');
INSERT INTO met_language VALUES('1519','help2','友情提示','1','0','0','0','cn');
INSERT INTO met_language VALUES('1520','tips8_v6','你的网站后台管理文件夹名称存在严重风险，建议你尽快修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1521','nohint','不再提示','1','0','0','0','cn');
INSERT INTO met_language VALUES('1522','tochange','前往修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1523','homepage','首页','1','0','0','0','cn');
INSERT INTO met_language VALUES('1524','backstage','后台','1','0','0','0','cn');
INSERT INTO met_language VALUES('1525','visualization','可视化','1','0','0','0','cn');
INSERT INTO met_language VALUES('1526','opfailed','操作失败','1','0','1','0','cn');
INSERT INTO met_language VALUES('1527','opsuccess','操作成功','1','0','1','0','cn');
INSERT INTO met_language VALUES('1528','unread','未阅读','1','0','0','0','cn');
INSERT INTO met_language VALUES('1529','language_outputlang_v6','导出语言包','1','0','16','0','cn');
INSERT INTO met_language VALUES('1530','language_batchreplace_v6','批量替换语言','1','0','16','0','cn');
INSERT INTO met_language VALUES('1531','language_copysetting_v6','复制基本设置','1','0','16','0','cn');
INSERT INTO met_language VALUES('1532','notcopy','不复制','1','0','16','0','cn');
INSERT INTO met_language VALUES('1533','language_tips1_v6','基于选中的语言复制除栏目内容外的全部参数配置','1','0','16','0','cn');
INSERT INTO met_language VALUES('1534','language_tips2_v6','基于选中的语言复制栏目及内容信息（共用选中语言的图片、附件等）','1','0','16','0','cn');
INSERT INTO met_language VALUES('1535','template_style_tips','基于选中的语言复制模板设置参数','1','0','16','0','cn');
INSERT INTO met_language VALUES('1536','websitetheme','网站主题风格','1','0','16','0','cn');
INSERT INTO met_language VALUES('1537','language_backlangchange_v6','后台语言切换','1','0','16','0','cn');
INSERT INTO met_language VALUES('1538','language_updatelang_v6','更新语言包数据<br>请严格按照导出格式粘贴于此','1','0','16','0','cn');
INSERT INTO met_language VALUES('1539','message_mailtext_v6','_提交了留言','1','0','20','0','cn');
INSERT INTO met_language VALUES('1540','nopicture','暂无图片','1','0','20','0','cn');
INSERT INTO met_language VALUES('1541','message_tips1_v6','提示文字，为空时显示，输入文字后消失','1','0','20','0','cn');
INSERT INTO met_language VALUES('1542','onlone_onlinelist_v6','客服列表','1','0','23','0','cn');
INSERT INTO met_language VALUES('1543','onlone_online_v6','客服设置','1','0','23','0','cn');
INSERT INTO met_language VALUES('1544','online_csname_v6','客服名称','1','0','23','0','cn');
INSERT INTO met_language VALUES('1545','online_taobaocs_v6','淘宝旺旺','1','0','23','0','cn');
INSERT INTO met_language VALUES('1546','online_alics_v6','阿里旺旺','1','0','23','0','cn');
INSERT INTO met_language VALUES('1547','online_tips1_v6','添加的QQ需要到【shang.qq.com】登录后在【推广工具—设置】安全级别选择完全公开，否则将显示“未启用” <br>添加的QQ号码，需要到个人QQ设置-权限设置里面，开启临时会话功能，否则点击QQ，将提示添加好友才能对话','1','0','23','0','cn');
INSERT INTO met_language VALUES('1548','confirm','确定','1','0','1','0','cn');
INSERT INTO met_language VALUES('1549','frontshow','前台显示','1','0','0','0','cn');
INSERT INTO met_language VALUES('1550','fronthidden','前台隐藏','1','0','0','0','cn');
INSERT INTO met_language VALUES('1551','state','状态','1','0','0','0','cn');
INSERT INTO met_language VALUES('1552','visitcount','访问量','1','0','0','0','cn');
INSERT INTO met_language VALUES('1553','selectcolumn','请选择所属栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1554','tips11_v6','可以拖拽图片调整图片顺序。','1','0','28','0','cn');
INSERT INTO met_language VALUES('1555','tips12_v6','按下电脑键盘“ctrl”键，可以同时选择多个栏目','1','0','28','0','cn');
INSERT INTO met_language VALUES('1556','columumanage','栏目管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1557','titletips','标题（名称）','1','0','28','0','cn');
INSERT INTO met_language VALUES('1558','seotipssitemap1','过滤不显示在导航的一级栏目','1','0','32','0','cn');
INSERT INTO met_language VALUES('1559','seotips2','网站地图生成的栏目仅限一级栏目和显示在导航栏上栏目。<br / >不显示内容与栏目，都不会在网站地图中生成。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1560','seotips3','相比于纯静态功能，伪静态更适合企业网站，既能满足SEO优化，又能方便的管理。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1561','defaultlangtag','默认语言标识','1','0','32','0','cn');
INSERT INTO met_language VALUES('1562','seotips4','默认语言标示开启后，默认语言伪静态文件会在最后添加一个“-语言标示”，比如“-cn”','1','0','32','0','cn');
INSERT INTO met_language VALUES('1563','uisetTips3','当前页面没有可设置参数，请点击页面中相应区块的“设置”和“内容”按钮进行设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1564','addbaricon','地址栏图标','1','0','39','0','cn');
INSERT INTO met_language VALUES('1565','webset_tips1_v6','如果无法正常显示新上传图标，清空浏览器缓存后访问。','1','0','39','0','cn');
INSERT INTO met_language VALUES('1566','webset_tips2_v6','点击制作ICO','1','0','39','0','cn');
INSERT INTO met_language VALUES('1567','icontips','的.ico文件。','1','0','39','0','cn');
INSERT INTO met_language VALUES('1568','PC','电脑端','1','0','0','0','cn');
INSERT INTO met_language VALUES('1569','memberist','会员列表','1','0','38','0','cn');
INSERT INTO met_language VALUES('1570','membergroup','会员组','1','0','38','0','cn');
INSERT INTO met_language VALUES('1571','memberattribute','会员属性','1','0','38','0','cn');
INSERT INTO met_language VALUES('1572','memberfunc','会员功能设置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1573','thirdlogin','社会化登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1574','mailcontentsetting','邮件内容设置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1575','user_tips1_v6','可以注册','1','0','38','0','cn');
INSERT INTO met_language VALUES('1576','user_tips2_v6','含有非法字符','1','0','38','0','cn');
INSERT INTO met_language VALUES('1577','user_tips3_v6','用户名已存在','1','0','38','0','cn');
INSERT INTO met_language VALUES('1578','user_tips5_v6','可用参数，下列参数在邮件内容中会被转意为可变参数。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1579','user_Registeredmail_v6','注册邮件','1','0','38','0','cn');
INSERT INTO met_language VALUES('1580','user_tips6_v6','邮件下一操作的URL地址，必填项。比如找回密码邮件，这个地址就是找回密码的链接。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1581','user_tips7_v6','密码找回邮件','1','0','38','0','cn');
INSERT INTO met_language VALUES('1582','user_tips8_v6','需要到','1','0','38','0','cn');
INSERT INTO met_language VALUES('1583','user_QQinterconnect_v6','QQ互联','1','0','38','0','cn');
INSERT INTO met_language VALUES('1584','user_tips9_v6','申请 （管理中心-登录-创建应用-网站）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1585','user_backurl_v6','回调地址','1','0','38','0','cn');
INSERT INTO met_language VALUES('1586','user_tips10_v6','微信开放平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1587','user_Apply_v6','申请','1','0','38','0','cn');
INSERT INTO met_language VALUES('1588','user_tips11_v6','用于PC端会员登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1589','user_Openplatform_v6','开放平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1590','user_publicplatform_v6','微信公众平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1591','user_tips13_v6','需要获取网页授权功能，并设置授权域名为您的网站域名。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1592','user_tips14_v6','并且将此微信公众号添加至开放平台账号下。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1593','user_tips15_v6','新浪微博','1','0','38','0','cn');
INSERT INTO met_language VALUES('1594','user_tips16_v6','微博开放平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1595','user_tips17_v6','（注意：请申请网站不要申请应用）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1596','user_accsafe_v6','账号安全','1','0','38','0','cn');
INSERT INTO met_language VALUES('1597','user_PasswordReset_v6','密码重置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1598','user_tips18_v6','6 - 30 位字符 留空则不修改','1','0','38','0','cn');
INSERT INTO met_language VALUES('1599','user_emailuse_v6','邮箱已被绑定','1','0','38','0','cn');
INSERT INTO met_language VALUES('1600','user_Accountstatus_v6','账号状态','1','0','38','0','cn');
INSERT INTO met_language VALUES('1601','user_must_v6','必填','1','0','38','0','cn');
INSERT INTO met_language VALUES('1602','user_tips21_v6','值越大阅读权限越高','1','0','38','0','cn');
INSERT INTO met_language VALUES('1603','user_Exportmember_v6','下载CSV文件','1','0','38','0','cn');
INSERT INTO met_language VALUES('1604','user_Registratset_v6','注册设置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1605','user_Regverificat_v6','注册验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1606','user_tips23_v6','邮箱为用户名','1','0','38','0','cn');
INSERT INTO met_language VALUES('1607','user_Mailvalidat_v6','邮件验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1608','user_tips24_v6','（需设置系统发件箱（设置-基本信息-发件邮箱配置）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1609','user_tips25_v6','后台审核','1','0','38','0','cn');
INSERT INTO met_language VALUES('1610','user_tips26_v6','手机号码为用户名','1','0','38','0','cn');
INSERT INTO met_language VALUES('1611','user_tips27_v6','手机短信验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1612','user_tips28_v6','需开通短信服务（我的应用-短信功能）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1613','user_Notverifying_v6','不验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1614','user_Backgroundpicture_v6','背景图片','1','0','38','0','cn');
INSERT INTO met_language VALUES('1615','user_tips30_v6','登录界面中间横屏背景（建议尺寸 1920 * 800 宽 * 高 ）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1616','user_tips4_v6','请输入6-30位的密码','1','0','38','0','cn');
INSERT INTO met_language VALUES('1617','weixinlogin','微信登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1618','sinalogin','微博登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1619','qqlogin','QQ登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1620','register','注册','1','0','38','0','cn');
INSERT INTO met_language VALUES('1621','lastactive','最后活跃','1','0','38','0','cn');
INSERT INTO met_language VALUES('1622','source','来源','1','0','38','0','cn');
INSERT INTO met_language VALUES('1623','bindingmail','绑定邮箱','1','0','38','0','cn');
INSERT INTO met_language VALUES('1624','bindingmobile','绑定手机','1','0','38','0','cn');
INSERT INTO met_language VALUES('1625','systips1','您没有权限访问这个内容！请登录后访问！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1626','systips2','您所在用户组没有权限访问这个内容！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1627','unrestricted','不限制','1','0','40','0','cn');
INSERT INTO met_language VALUES('1628','dowloadauthority','下载权限','1','0','40','0','cn');
INSERT INTO met_language VALUES('1629','save','保存','1','0','0','0','cn');
INSERT INTO met_language VALUES('1630','baceinfo','基本信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1631','staticpage','静态页面设置','1','162','0','0','cn');
INSERT INTO met_language VALUES('1632','pseudostatic','伪静态','1','164','0','0','cn');
INSERT INTO met_language VALUES('1633','setequivalentcolumns','当前栏目','1','22','0','0','cn');
INSERT INTO met_language VALUES('1634','veditor','可视化编辑','1','0','2','0','cn');
INSERT INTO met_language VALUES('1635','veditortips1','开启','1','0','2','0','cn');
INSERT INTO met_language VALUES('1636','funcCollection','功能大全','1','0','0','0','cn');
INSERT INTO met_language VALUES('1637','websiteSet','网站配置与管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1638','systemModule','系统模块','1','0','0','0','cn');
INSERT INTO met_language VALUES('1639','appearanceSetting','外观设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1640','basicInfoSet','基本信息配置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1641','multilingual','多语言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1642','mailSetting','发件邮箱配置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1643','thirdCode','第三方代码添加','1','0','0','0','cn');
INSERT INTO met_language VALUES('1644','watermarkThumbnail','水印/缩略图','1','0','0','0','cn');
INSERT INTO met_language VALUES('1645','customerService','客服设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1646','recycleBin','回收站','1','0','0','0','cn');
INSERT INTO met_language VALUES('1647','securityTools','系统安全与工具','1','0','0','0','cn');
INSERT INTO met_language VALUES('1648','searchEngineOptimization','SEO搜索引擎优化','1','0','0','0','cn');
INSERT INTO met_language VALUES('1649','seoSetting','SEO参数设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1650','thirdPartyLogin','社会化登录设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1651','appAndPlugin','应用插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1652','metShop','官方商城','1','0','0','0','cn');
INSERT INTO met_language VALUES('1653','purchase_notice','购买须知','1','0','0','0','cn');
INSERT INTO met_language VALUES('1654','commercialAuthorizationCode','商业授权代码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1655','systips13','老版本模板兼容（非响应式模板）','1','0','0','0','cn');
INSERT INTO met_language VALUES('1656','mobileSetting','手机版设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1657','mobileVersion','手机版外观','1','0','0','0','cn');
INSERT INTO met_language VALUES('1658','uisetTips4','当前页面预览','1','0','36','0','cn');
INSERT INTO met_language VALUES('1659','uisetTips5','当前页面系统参数设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1660','uisetTips6','当前页设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1661','moreSettings','更多设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1662','sysMailboxConfig','发件邮箱配置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1663','navSetting','导航菜单设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1664','oldBackstage','传统后台','1','0','36','0','cn');
INSERT INTO met_language VALUES('1665','sysMessage','系统消息','1','0','36','0','cn');
INSERT INTO met_language VALUES('1666','replaceImg','替换图片','1','0','36','0','cn');
INSERT INTO met_language VALUES('1667','uisetTips8','隐藏该元素<br>（隐藏后方便修改被遮挡的元素，<br>刷新页面可再次显示）','1','0','36','0','cn');
INSERT INTO met_language VALUES('1668','putIntoRecycle','放入回收站','1','0','1','0','cn');
INSERT INTO met_language VALUES('1669','thoroughlyDeleting','彻底删除','1','0','1','0','cn');
INSERT INTO met_language VALUES('1670','cancel','取消','1','0','1','0','cn');
INSERT INTO met_language VALUES('1671','websiteContent','网站基本内容','1','0','16','0','cn');
INSERT INTO met_language VALUES('1672','jslang0','放入回收站','1','0','1','0','cn');
INSERT INTO met_language VALUES('1673','jslang1','彻底删除','1','0','1','0','cn');
INSERT INTO met_language VALUES('1674','jslang2','取消','1','0','1','0','cn');
INSERT INTO met_language VALUES('1675','seotips26','开启后能够简化前台网页URL（网址），并且以html结尾（静态页面功能关闭状态下方能生效）。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1676','systips14','（开启前请确保伪静态功能已关闭）','1','0','11','0','cn');
INSERT INTO met_language VALUES('1677','systips15','MB（如网站后台设置值超过服务器限制的上传文件最大值，则以服务器限制的数值为准）','1','0','30','0','cn');
INSERT INTO met_language VALUES('1678','third_code_mobile','移动端第三方代码','1','0','39','0','cn');
INSERT INTO met_language VALUES('1679','clearCache','清空缓存','1','0','1','0','cn');
INSERT INTO met_language VALUES('1680','jsx39','（删除栏目时将删除栏目下的所有内容）','1','0','5','0','cn');
INSERT INTO met_language VALUES('1681','jslang3','没有选中的记录','1','0','1','0','cn');
INSERT INTO met_language VALUES('1682','jslang4','请选择所属栏目','1','0','1','0','cn');
INSERT INTO met_language VALUES('1683','category','所属栏目','1','40','3','0','cn');
INSERT INTO met_language VALUES('1684','jslang5','我知道了','1','0','1','0','cn');
INSERT INTO met_language VALUES('1685','jslang6','展开更多设置','1','0','1','0','cn');
INSERT INTO met_language VALUES('1686','jslang7','隐藏设置','1','0','1','0','cn');
INSERT INTO met_language VALUES('1687','newFeedback','收到了新的反馈','1','0','9','0','cn');
INSERT INTO met_language VALUES('1688','wap_descript5_v6','名称不能为空！','1','450','41','0','cn');
INSERT INTO met_language VALUES('1689','allapp_v6','全部应用','1','469','21','0','cn');
INSERT INTO met_language VALUES('1690','freeapp_v6','免费应用','1','470','21','0','cn');
INSERT INTO met_language VALUES('1691','Business_membersapp_v6','商业应用','1','471','21','0','cn');
INSERT INTO met_language VALUES('1692','payapp','收费应用','1','472','21','0','cn');
INSERT INTO met_language VALUES('1693','servicename_v6','服务名称','1','473','21','0','cn');
INSERT INTO met_language VALUES('1694','appstore_descript1_v6','技术支持 服务开通/续费','1','474','21','0','cn');
INSERT INTO met_language VALUES('1695','appstore_Servicescope_v6','服务范围','1','475','21','0','cn');
INSERT INTO met_language VALUES('1696','appstore_descript2_v6','MetInfo产品服务（安装、升级、搬家、故障排查与处理、服务器调试','1','476','21','0','cn');
INSERT INTO met_language VALUES('1697','appstore_descript3_v6','直接帮忙操作。','1','477','21','0','cn');
INSERT INTO met_language VALUES('1698','appstore_descript4_v6','服务器调试：首次搭建服务器环境以及与MetInfo故障有关的服务器环境问题处理。','1','478','21','0','cn');
INSERT INTO met_language VALUES('1699','appstore_descript5_v6','专业解答（产品使用/技巧、SEO优化、网络营销）','1','479','21','0','cn');
INSERT INTO met_language VALUES('1700','appstore_descript6_v6','帮助分析，提供解决方案和指导，不提供操作服务。','1','480','21','0','cn');
INSERT INTO met_language VALUES('1701','appstore_descript7_v6','服务范围谨遵上述内容，如未标明则说明不提供相应服务。','1','481','21','0','cn');
INSERT INTO met_language VALUES('1702','appstore_descript8_v6','以下情况无法提供服务','1','482','21','0','cn');
INSERT INTO met_language VALUES('1703','appstore_descript9_v6','自行修改或使用非原始 MetInfo 程序代码产生的问题','1','483','21','0','cn');
INSERT INTO met_language VALUES('1704','appstore_descript10_v6','非官方开发的应用插件、制作的模板造成的问题（应用商店上架的第三方应用/模板属于服务范围）','1','484','21','0','cn');
INSERT INTO met_language VALUES('1705','appstore_descript11_v6','服务器、虚拟主机原因造成的系统故障','1','485','21','0','cn');
INSERT INTO met_language VALUES('1706','appstore_descript12_v6','未购买商业授权非法去除版权信息','1','486','21','0','cn');
INSERT INTO met_language VALUES('1707','appstore_descript13_v6','不含网站内容维护、图片处理、源码修改。','1','487','21','0','cn');
INSERT INTO met_language VALUES('1708','appstore_servicemode_v6','服务方式','1','488','21','0','cn');
INSERT INTO met_language VALUES('1709','appstore_descript14_v6','提交工单：故障处理、问题咨询（每天）','1','489','21','0','cn');
INSERT INTO met_language VALUES('1710','appstore_descript15_v6','在线咨询：问题咨询（仅工作日在线，在线时间：08:30 - 17:30）','1','490','21','0','cn');
INSERT INTO met_language VALUES('1711','appstore_descript16_v6','应用商店账号登录MetInfo官网也可以获得工单、在线咨询服务（无法访问网站后台的情况下推荐使用）。','1','491','21','0','cn');
INSERT INTO met_language VALUES('1712','appstore_descript17_v6','选择服务时长','1','492','21','0','cn');
INSERT INTO met_language VALUES('1713','appstore_descript18_v6','一个月 (300元)','1','493','21','0','cn');
INSERT INTO met_language VALUES('1714','appstore_descript19_v6','三个月 (500元)','1','494','21','0','cn');
INSERT INTO met_language VALUES('1715','appstore_descript20_v6','一年 (1000元)','1','495','21','0','cn');
INSERT INTO met_language VALUES('1716','appstore_QQsalesconsulting_v6','QQ销售咨询','1','496','21','0','cn');
INSERT INTO met_language VALUES('1717','appstore_descript21_v6','可咨询QQ了解服务详情','1','497','21','0','cn');
INSERT INTO met_language VALUES('1718','appstore_descript22_v6','单次服务价格：网站搬家200元/次，网站安装100元/次，网站升级100元起，故障处理100元起','1','498','21','0','cn');
INSERT INTO met_language VALUES('1719','appstore_descript23_v6','应用商店账号的登录密码','1','499','21','0','cn');
INSERT INTO met_language VALUES('1720','appstore_descript24_v6','清楚且遵守上述服务范围与服务方式','1','500','21','0','cn');
INSERT INTO met_language VALUES('1721','appstore_descript25_v6','立即开通/续费','1','501','21','0','cn');
INSERT INTO met_language VALUES('1722','appstore_descript26_v6','模板制作/修改服务商','1','502','21','0','cn');
INSERT INTO met_language VALUES('1723','appstore_sign_v6','标志','1','503','21','0','cn');
INSERT INTO met_language VALUES('1724','appstore_name_v6','名称','1','504','21','0','cn');
INSERT INTO met_language VALUES('1725','appstore_type_v6','类型','1','505','21','0','cn');
INSERT INTO met_language VALUES('1726','appstore_place_v6','地区','1','506','21','0','cn');
INSERT INTO met_language VALUES('1727','appstore_Abilityvalue_v6','能力值','1','507','21','0','cn');
INSERT INTO met_language VALUES('1728','appstore_descript27_v6','商家如何入驻？','1','508','21','0','cn');
INSERT INTO met_language VALUES('1729','appstore_descript28_v6','商家入驻说明','1','509','21','0','cn');
INSERT INTO met_language VALUES('1730','appstore_Admissionrequirements_v6','入驻要求','1','510','21','0','cn');
INSERT INTO met_language VALUES('1731','appstore_descript29_v6','商家入驻说明获得“官方认证模板设计师”称号。','1','511','21','0','cn');
INSERT INTO met_language VALUES('1732','appstore_descript30_v6','完成官方模板制作培训并顺利结业','1','512','21','0','cn');
INSERT INTO met_language VALUES('1733','appstore_descript31_v6','点此报名培训','1','513','21','0','cn');
INSERT INTO met_language VALUES('1734','appstore_descript32_v6','上线一套收费模板至应用商店。','1','514','21','0','cn');
INSERT INTO met_language VALUES('1735','appstore_Admissionprocess_v6','入驻流程','1','515','21','0','cn');
INSERT INTO met_language VALUES('1736','appstore_descript33_v6','1、联系官方商家合作专员：','1','516','21','0','cn');
INSERT INTO met_language VALUES('1737','appstore_descript34_v6','QQ招商加盟','1','517','21','0','cn');
INSERT INTO met_language VALUES('1738','appstore_descript35_v6','QQ招商加盟2、报名参加官方模板制作培训并获得“官方认证模板设计师”称号。','1','518','21','0','cn');
INSERT INTO met_language VALUES('1739','appstore_descript36_v6','3、通过官网审核并顺利上线一套收费模板至应用商店。','1','519','21','0','cn');
INSERT INTO met_language VALUES('1740','appstore_descript37_v6','4、提供商家入驻所需资料，官方进行核实。','1','520','21','0','cn');
INSERT INTO met_language VALUES('1741','appstore_descript38_v6','5、正式入驻。','1','521','21','0','cn');
INSERT INTO met_language VALUES('1742','appstore_descript39_v6','上线一套作品至应用商店其标准和审核将会非常严格，因为我们需要确保最终用户能够得到足够专业的技术服务。','1','522','21','0','cn');
INSERT INTO met_language VALUES('1743','appstore_service_v6','服务','1','523','21','0','cn');
INSERT INTO met_language VALUES('1744','appstore_Spacedomain_name_v6','空间域名','1','524','21','0','cn');
INSERT INTO met_language VALUES('1745','appstore_Worryfree_service_v6','无忧服务','1','525','21','0','cn');
INSERT INTO met_language VALUES('1746','appstore_buildweb_v6','建站套餐','1','526','21','0','cn');
INSERT INTO met_language VALUES('1747','appstore_Thirdcooperation_v6','第三方合作','1','527','21','0','cn');
INSERT INTO met_language VALUES('1748','appstore_downshowdata_v6','下载演示数据','1','528','21','0','cn');
INSERT INTO met_language VALUES('1749','banner_column_v6','栏目','1','533','4','0','cn');
INSERT INTO met_language VALUES('1750','batch_watermarking_v6','批量水印操作','1','538','5','0','cn');
INSERT INTO met_language VALUES('1751','open_allchildcolumn_v6','展开所有子栏目','1','541','7','0','cn');
INSERT INTO met_language VALUES('1752','column_descript1_v6','目录名称只能为小写字母或者数子，且不能和其他栏目重名！','1','542','7','0','cn');
INSERT INTO met_language VALUES('1753','add_to_v6','添加至','1','543','7','0','cn');
INSERT INTO met_language VALUES('1754','seo_set_v6','SEO设置','1','544','7','0','cn');
INSERT INTO met_language VALUES('1755','content_name_v6','名称','1','553','7','0','cn');
INSERT INTO met_language VALUES('1756','html_createend_v6','生成完毕','1','559','1','0','cn');
INSERT INTO met_language VALUES('1757','html_createfail_v6','生成失败','1','560','11','0','cn');
INSERT INTO met_language VALUES('1758','online_addkefu_v6','添加客服','1','561','23','0','cn');
INSERT INTO met_language VALUES('1759','indexpic','图片水印','1','64','13','0','cn');
INSERT INTO met_language VALUES('1760','databackup7','全部备份','1','244','8','0','cn');
INSERT INTO met_language VALUES('1761','adminmobile','手机','1','16','2','0','cn');
INSERT INTO met_language VALUES('1762','pay_WeChat_v6','微信','1','628','26','0','cn');
INSERT INTO met_language VALUES('1763','notauthen','未认证','1','9','2','0','cn');
INSERT INTO met_language VALUES('1764','rnvalidate','实名认证','1','9','2','0','cn');
INSERT INTO met_language VALUES('1765','mobile_logo','手机站LOGO','1','9','2','0','cn');
INSERT INTO met_language VALUES('1766','mobile_banner_tips1','(不上传手机图片时，手机访问的banner图和电脑端保持一致，手机图片不支持全站静态。)','1','9','2','0','cn');
INSERT INTO met_language VALUES('1767','langexisted','语言已存在','1','9','2','0','cn');
INSERT INTO met_language VALUES('1768','fdincTip12','后台显示列表项','1','49','0','0','cn');
INSERT INTO met_language VALUES('1769','fdincTip13','只能选择下拉、单选、多选反馈字段，此处设置保存后，请到“反馈表单设置”中设置需要关联的产品栏目。','1','559','1','0','cn');
INSERT INTO met_language VALUES('1770','unitytxt_1','功能设置','1','0','1','0','cn');
INSERT INTO met_language VALUES('1771','enter_folder','双击文件夹图标，进入文件夹选择图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1772','fliptext2','加载中','1','0','1','0','cn');
INSERT INTO met_language VALUES('1773','memberarayname','会员组名称','1','0','11','0','cn');
INSERT INTO met_language VALUES('1774','thumbs_tips1_v6','修改保存后请到可视化界面导航点击【常用功能】-【清除缩略图】，以使本次保存生效。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1775','recahrge_tips','充值后如需退款须扣除 2% 的手续费，充值后 60 天内可以在“用户中心-财务中心-发票申请”提交发票申请。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1776','sys_lang_operate','系统语言操作','1','0','0','0','cn');
INSERT INTO met_language VALUES('1777','edit_app_lang','编辑插件语言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1778','product_para_tips','链接字段类型需要前台模板支持，如模板不支持则可用附件类型进行功能替代','1','0','0','0','cn');
INSERT INTO met_language VALUES('1779','metinfoapp3','官方声明','1','0','0','0','cn');
INSERT INTO met_language VALUES('1780','metinfoapptext3','第三方商家涵盖MetInfo应用及模板开发、中小企业信息化服务领域等，但MetInfo官方均未参与其相关产品和服务的营运及分成，请广大用户自行选择辨认并承担由此产生的一切后果，如发现商家存在违法或不诚信行为，欢迎向MetInfo官方举报，我们将对其进行下架处理。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1781','metinfoappinstallinfo','应用首次安装将自动绑定域名','1','0','0','0','cn');
INSERT INTO met_language VALUES('1782','metinfoappinstallinfo4','安装提示','1','0','1','0','cn');
INSERT INTO met_language VALUES('1783','columnselect1','选择栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1784','columnnofollow','nofollow属性','1','0','0','0','cn');
INSERT INTO met_language VALUES('1785','columnnofollowinfo','勾选后网站不向链接网址传递权重','1','0','0','0','cn');
INSERT INTO met_language VALUES('1786','feedbackinquiry','在线询价','1','0','0','0','cn');
INSERT INTO met_language VALUES('1787','feedbackinquiryinfo','已有一个反馈栏目开启此功能，如要在当前栏目启用，请先在已开启反馈栏目中关闭。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1788','feedbackinquiryinfo1','开启在线询价后，产品详情页将自动显示询价按钮。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1789','webupate1','网站备份','1','0','0','0','cn');
INSERT INTO met_language VALUES('1790','webupate3','解压成功','1','0','0','0','cn');
INSERT INTO met_language VALUES('1791','webupate4','解压失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1792','webupate5','压缩包不存在','1','0','0','0','cn');
INSERT INTO met_language VALUES('1793','webupate6','文件类型','1','0','0','0','cn');
INSERT INTO met_language VALUES('1794','webupate7','解压','1','0','0','0','cn');
INSERT INTO met_language VALUES('1795','webupate9','使用备份管理员账号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1796','webupate10','不覆盖管理员账号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1797','seohtaccess1','是否显示根目录下文件列表','1','0','1','0','cn');
INSERT INTO met_language VALUES('1798','updatenofile','安装包不存在','1','0','0','0','cn');
INSERT INTO met_language VALUES('1799','updateupzipfileno','解压数据失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1800','updateinstallnow','安装中...','1','0','1','0','cn');
INSERT INTO met_language VALUES('1801','useinfopay','此功能需要先安装支付接口管理应用才能开启。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1802','usegroupauto1','充值满金额自动升级','1','0','0','0','cn');
INSERT INTO met_language VALUES('1803','usegroupbuy','付费购买会员组','1','0','0','0','cn');
INSERT INTO met_language VALUES('1804','usereadinfo','阅读权限值必需大于0','1','0','0','0','cn');
INSERT INTO met_language VALUES('1805','userselectname','选项卡','1','0','0','0','cn');
INSERT INTO met_language VALUES('1806','msmnoifno','短信功能未开通','1','0','0','0','cn');
INSERT INTO met_language VALUES('1807','templateseditfalse','修改失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1808','templatefilewritno','目录不可写','1','0','0','0','cn');
INSERT INTO met_language VALUES('1809','times1','秒前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1810','times2','分钟前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1811','times3','小时前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1812','times4','天前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1813','uploadfilenop','无权限上传','1','0','0','0','cn');
INSERT INTO met_language VALUES('1814','rurlerror','请求地址出错','1','0','0','0','cn');
INSERT INTO met_language VALUES('1815','paranouse','参数不合法','1','0','0','0','cn');
INSERT INTO met_language VALUES('1816','linkmetinfoerror','您的服务器链接不上Met用户中心，请联系官网客服人员对服务器进行检测！！！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1817','appusererror','后台登录账号密码错误，请在Met用户中心重新设置账号密码！！！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1818','parameter10','链接','1','0','0','0','cn');
INSERT INTO met_language VALUES('1819','parametervalueinfo','值','1','0','0','0','cn');
INSERT INTO met_language VALUES('1820','indexmobilelogoinfo','模板有手机LOGO设置时，此处设置失效，开启静态页面时设置无效，留空手机端使用默认LOGO','1','0','0','0','cn');
INSERT INTO met_language VALUES('1821','columndeffflor','你使用的栏目文件名称和系统默认模块文件夹名称冲突，请重新命名','1','0','0','0','cn');
INSERT INTO met_language VALUES('1822','idcode','身份证号码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1823','recoveryisntallinfo','导入的数据库版本和系统当前版本不一致，导入后可能会存在部分参数及配置数据丢失的情况，请谨慎导入！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1824','met_template_nofile','模板文件夹不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1825','met_template_fileexist','模板已经存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1826','met_template_noconfigfile','模板配置文件不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1827','met_template_falsedelui','删除UI失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1828','met_template_falsedeluiconfig','删除UI配置失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1829','met_template_falsedelconfig','删除全局配置失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1830','met_template_downloadfalse','下载失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1831','met_template_downloadok','下载成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1832','met_template_temnoexist','模板不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1833','met_template_demonoexist','演示数据不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1834','met_template_upzipdemofalse','解压演示数据失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1835','met_template_upzipok','解压成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1836','met_template_installok','安装成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1837','met_template_templates','UI商业模板','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1838','met_template_othertemplates','其他模板','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1839','met_template_installdemo','安装演示数据','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1840','met_template_deletteminfo','您确定要删除该模板吗？删除之后无法再恢复。','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1841','met_template_nodelet','系统应用不允许删除','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1842','met_template_filesavef','文件保存失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1843','met_template_installuierr','导入UI时出错','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1844','met_template_installuiparaerr','导入UI参数时出错','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1845','met_template_updateok','升级成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1846','met_template_updatefalse','更新失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1847','met_template_updatedatafalse','数据更新失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1848','met_template_donotinfo','不需要操作或没有权限','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1849','met_template_langinfotext','开启多语言时，必须先切换到对应语言的可视化管理或传统后台，然后在此启用一套模板；不同的语言可以启用不同的模板。','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1850','met_template_metinfouserinfo','米拓官网用户中心账号可同步安装已购买且绑定域名为本站的商业模板，购买后60天内可以在米拓用户中心绑定域名','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1851','met_template_buytemplates','购买新模板','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1852','met_template_delettemplatesinfo','列表中删除模板并不会删除 网站根目录/templates/ 下的模板文件夹','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1853','met_template_demoinstalltitle','演示数据安装提示！！！','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1854','met_template_demoinstallsel','请选择合适你的安装方式','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1855','met_template_demoinstallt1','恢复出厂设置：系统将清空网站所有已有数据，将网站恢复至模板演示数据状态；','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1856','met_template_demoinstallt2','备份已有数据并安装：系统将先自动备份网站现有数据库及图片，然后将网站恢复至模板演示数据状态，日后可以通过恢复备份数据将网站还原至演示数据安装前的状态；','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1857','met_template_demoinstallt3','取消：如果你的网站已经添加了内容，我们建议你不要安装演示数据，安装模板后直接在可视化中设置相关区块内容即可。','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1858','met_template_saveinstall','备份已有数据并安装','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1859','met_template_installnewmetinfo','恢复出厂设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1860','met_template_downloadtemjs','正在下载模板...','1','0','1','50002','cn');
INSERT INTO met_language VALUES('1861','met_template_downloadtemokjs','下载模板成功','1','0','1','50002','cn');
INSERT INTO met_language VALUES('1862','met_template_downloaduijs','正在下载UI','1','0','1','50002','cn');
INSERT INTO met_language VALUES('1863','met_template_setmarktext','点击展开高级设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1864','met_template_setmarktexth','隐藏高级设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1865','setpnorder','上一条下一条调用设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1866','disableCssJs','关闭系统css和js','1','1','0','0','cn');
INSERT INTO met_language VALUES('1867','disableCssJsTips','禁止系统加载默认的css和js（仅供开发者制作模板使用，普通用户切勿关闭）','1','1','0','0','cn');
INSERT INTO met_language VALUES('1868','301jump','301跳转','1','1','0','0','cn');
INSERT INTO met_language VALUES('1869','setseoLogoKeyword','Logo关键词','1','1','0','0','cn');
INSERT INTO met_language VALUES('1870','301jumpDescription','开启后网站域名将自动跳转带www的网站域名。例：*****.cn 跳转 www.*****.cn','1','1','0','0','cn');
INSERT INTO met_language VALUES('1871','gotohttps','http跳转https','1','1','0','0','cn');
INSERT INTO met_language VALUES('1872','gotohttps_tips','此功能需要服务器安装SSL证书并支持https协议才能开启。','1','1','0','0','cn');
INSERT INTO met_language VALUES('1873','admin_login_lang','登录后台默认语言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1874','admin_del_error','禁止删除创始人','1','0','0','0','cn');
INSERT INTO met_language VALUES('1875','sethttps','开启后系统自动替换本站所有http路径并清除模板缓存','1','0','0','0','cn');
INSERT INTO met_language VALUES('1876','404page','404 页面内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1877','data_null','无内容提示文字','1','0','0','0','cn');
INSERT INTO met_language VALUES('1878','column_other_info','栏目其他信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1879','column_custom_info','自定义栏目信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1880','seting','设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1881','special_che_deny','请勿使用特殊字符','1','0','0','0','cn');
INSERT INTO met_language VALUES('1882','clearThumb','清除缩略图','1','0','0','0','cn');
INSERT INTO met_language VALUES('1883','operation_log','操作日志','1','0','0','0','cn');
INSERT INTO met_language VALUES('1884','request_address','请求地址','1','0','0','0','cn');
INSERT INTO met_language VALUES('1885','request_result','请求结果','1','0','0','0','cn');
INSERT INTO met_language VALUES('1886','admin_log','开启后台操作日志','1','0','0','0','cn');
INSERT INTO met_language VALUES('1887','associated_columns','关联栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1888','pass_empty','不输入不会更改密码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1889','unzip_tips','解压会覆盖upload文件夹中相同命名的文件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1890','adminFunOperate','功能模块操作权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('1891','tags_title','标签页面Title','1','0','0','0','cn');
INSERT INTO met_language VALUES('1892','tags_title_tips','Tgas页面标题','1','0','0','0','cn');
INSERT INTO met_language VALUES('1893','text_size','字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1894','desc_size','描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1895','desc_color','描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1896','column_style_tips','该设置需要模板支持','1','0','0','0','cn');
INSERT INTO met_language VALUES('1897','content_style_tips','该设置一般只在信息列表中有效','1','0','0','0','cn');
INSERT INTO met_language VALUES('1898','modifyaccemail','绑定邮箱修改邮件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1899','temSupport','此功能需要模板支持','1','0','0','0','cn');
INSERT INTO met_language VALUES('1900','update','更新','1','0','0','0','cn');
INSERT INTO met_language VALUES('1901','onlyInStyle3','仅在风格3中生效','1','0','0','0','cn');
INSERT INTO met_language VALUES('1902','thumb_tips','(宽 X 高)(像素)模块默认缩略图尺寸，可视化编辑中可独立设置每个栏目的缩略图尺寸。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1903','freeapp','免费插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1904','businessapp','商业插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1905','chargeapp','收费插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1906','userCondition','注册米拓用户中心可免费下载使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1907','installCondition','购买米拓企业建站系统商业版可在绑定域名站点下安装使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1908','buyCondition','单独购买后可在一个绑定域名站点下安装使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1909','thumb_size_list','列表页缩略图尺寸','1','0','0','0','cn');
INSERT INTO met_language VALUES('1910','thumb_size_showpage','详情页缩略图尺寸','1','0','0','0','cn');
INSERT INTO met_language VALUES('1911','thumb_seting_tips','详情页缩略图尺寸、选项卡请在对应栏目的可视化编辑“当前页设置”中设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1912','member_agreement','用户协议功能','1','0','0','0','cn');
INSERT INTO met_language VALUES('1913','top_menu','顶部菜单','1','0','0','0','cn');
INSERT INTO met_language VALUES('1914','admin_name_repeat','管理员姓名不能重复','1','0','0','0','cn');
INSERT INTO met_language VALUES('1915','ing','中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1916','static_page_success','静态页面生成完成','1','0','0','0','cn');
INSERT INTO met_language VALUES('1917','successful_conversion','转换成功！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1918','full_site','全站','1','0','0','0','cn');
INSERT INTO met_language VALUES('1919','settings_tab','设置选项卡','1','0','0','0','cn');
INSERT INTO met_language VALUES('1920','custom_info','自定义信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1921','admin_content_list1','点击表格每行空白部分上下拖曳后保存即可改变排序','1','0','0','0','cn');
INSERT INTO met_language VALUES('1922','module_reply1','多个号码请用|隔开','1','0','0','0','cn');
INSERT INTO met_language VALUES('1923','module_reply2','回复短信内容需要在短信功能提供平台提交内容模板审核，审核通过后才能发送成功。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1924','online_list1','号码/链接/图片','1','0','0','0','cn');
INSERT INTO met_language VALUES('1925','choice_style','风格选择','1','0','0','0','cn');
INSERT INTO met_language VALUES('1926','reading_authority','阅读权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('1927','empty_not_modified','为空则不修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1928','button','按钮','1','0','0','0','cn');
INSERT INTO met_language VALUES('1929','fliptext1','查看更多','1','0','0','0','cn');
INSERT INTO met_language VALUES('1930','being_imported','正在导入中，请不要操作。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1931','least_one_item','请选择至少一项。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1932','feedfback','反馈','1','0','0','0','cn');
INSERT INTO met_language VALUES('1933','message','留言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1934','job','招聘','1','0','0','0','cn');
INSERT INTO met_language VALUES('1935','product','产品','1','0','0','0','cn');
INSERT INTO met_language VALUES('1936','saving','保存中，请等待...','1','0','0','0','cn');
INSERT INTO met_language VALUES('1937','no_data','暂无数据','1','0','0','0','cn');
INSERT INTO met_language VALUES('1938','numbering','编号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1939','successful_syn','同步成功','1','0','0','0','cn');
INSERT INTO met_language VALUES('1940','failed_syn','同步失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1941','being_synced','正在同步中，请耐心等待。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1942','national_flag','国旗','1','0','0','0','cn');
INSERT INTO met_language VALUES('1943','national_flag_tips1','自定义国旗gif图片可放置在网站public/images/flag/文件夹下','1','0','0','0','cn');
INSERT INTO met_language VALUES('1944','manage_tips1','点击收起/展开栏目列表','1','0','0','0','cn');
INSERT INTO met_language VALUES('1945','set_default_section','设置默认栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1946','enter_user_name','请输入用户名','1','0','0','0','cn');
INSERT INTO met_language VALUES('1947','system_plugin_uninstall','系统插件，无法卸载','1','0','0','0','cn');
INSERT INTO met_language VALUES('1948','install_first','请先安装！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1949','upgrade','升级中，请稍后...','1','0','0','0','cn');
INSERT INTO met_language VALUES('1950','file_download_failed','文件下载失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1951','column_search','栏目搜索','1','0','0','0','cn');
INSERT INTO met_language VALUES('1952','advanced_search','高级搜索','1','0','0','0','cn');
INSERT INTO met_language VALUES('1953','replacement_text','替换文字不能为空','1','0','0','0','cn');
INSERT INTO met_language VALUES('1954','default','默认','1','0','0','0','cn');
INSERT INTO met_language VALUES('1955','valid_phone_number','请输入有效电话号码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1956','valid_email_address','请输入有效邮箱地址','1','0','0','0','cn');
INSERT INTO met_language VALUES('1957','button_text','按钮文字','1','0','0','0','cn');
INSERT INTO met_language VALUES('1958','open_mode','打开方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('1959','button_size','按钮大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1960','button_color','按钮颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1961','mouse_over_button_color','鼠标经过按钮颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1962','mouse_over_text_color','鼠标经过文字颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1963','font_size','文字大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1964','display_client','显示客户端','1','0','0','0','cn');
INSERT INTO met_language VALUES('1965','original_window','原窗口','1','0','0','0','cn');
INSERT INTO met_language VALUES('1966','new_window','新窗口','1','0','0','0','cn');
INSERT INTO met_language VALUES('1967','mobile_terminal','手机端','1','0','0','0','cn');
INSERT INTO met_language VALUES('1968','image_title_font_size','图片标题字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1969','image_description_font_size','图片描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1970','mobile_terminal_settings','手机端设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1971','mobile_phone_picture_title','手机端图片标题','1','0','0','0','cn');
INSERT INTO met_language VALUES('1972','banner_edit1','如不填写设置，则保持和电脑端一致','1','0','0','0','cn');
INSERT INTO met_language VALUES('1973','banner_edit2','手机端图片标题颜色：','1','0','0','0','cn');
INSERT INTO met_language VALUES('1974','banner_edit3','手机端图片标题字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1975','banner_edit5','手机端图片描述','1','0','0','0','cn');
INSERT INTO met_language VALUES('1976','banner_edit6','手机端图片描述颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1977','banner_edit7','手机端图片描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1978','banner_edit8','手机端图片文字位置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1979','feedbackTip5','导出当前选中信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1980','setimgLeftMid','左中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1981','function_ency1','此处仅列出传统后台功能，更多设置功能，请在可视化编辑后台按栏目和页面编辑。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1982','environmental_test','环境检测','1','0','0','0','cn');
INSERT INTO met_language VALUES('1983','function_ency2','请在“栏目管理”中添加对应模块栏目后再在相应功能菜单中进行管理。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1984','sms_function','短信功能','1','0','0','0','cn');
INSERT INTO met_language VALUES('1985','website_overview','网站概况','1','0','0','0','cn');
INSERT INTO met_language VALUES('1986','system_cache','系统缓存','1','0','0','0','cn');
INSERT INTO met_language VALUES('1987','help_manual','帮助手册','1','0','0','0','cn');
INSERT INTO met_language VALUES('1988','online_quiz','在线问答','1','0','0','0','cn');
INSERT INTO met_language VALUES('1989','online_work_order','在线工单','1','0','0','0','cn');
INSERT INTO met_language VALUES('1990','admin_job1','需要到招聘职位管理的职位中添加简历接收邮箱','1','0','0','0','cn');
INSERT INTO met_language VALUES('1991','admin_manage1','点击左侧栏目列表管理内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1992','admin_menu1','此功能需要模板支持，部分模板底部自带了手机菜单，请在可视化界面设置。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1993','search_range','搜索范围','1','0','0','0','cn');
INSERT INTO met_language VALUES('1994','admin_search1','指定一级栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1995','admin_search2','是否开启搜索方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('1996','admin_search3','是否联动','1','0','0','0','cn');
INSERT INTO met_language VALUES('1997','admin_search4','搜索框默认内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1998','admin_search5','当前所属一级栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1999','admin_search6','搜索方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('2000','admin_search7','标题和内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('2001','by_module','按模块','1','0','0','0','cn');
INSERT INTO met_language VALUES('2002','by_column','按栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('2003','admin_seo1','index-语言标识.html(如：index-cn.html)','1','0','0','0','cn');
INSERT INTO met_language VALUES('2004','admin_seo2','目录名称/list-静态页面名称或ID-语言标识.html(如：product/list-1-cn.html)','1','0','0','0','cn');
INSERT INTO met_language VALUES('2005','admin_seo3','目录名称/静态页面名称或ID-语言标识.html(如：product/100-cn.html)','1','0','0','0','cn');
INSERT INTO met_language VALUES('2006','admin_tag_setting1','TAG标签设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('2007','admin_tag_setting2','TAG标签生成规则','1','0','0','0','cn');
INSERT INTO met_language VALUES('2008','admin_tag_setting3','按一级栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('2009','admin_tag_setting4','TAG标签聚合规则','1','0','0','0','cn');
INSERT INTO met_language VALUES('2010','admin_tag_setting5','设置了相同TAG标签的内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('2011','admin_tag_setting6','内容详情页聚合条数','1','0','0','0','cn');
INSERT INTO met_language VALUES('2012','add_tag','添加标签','1','0','0','0','cn');
INSERT INTO met_language VALUES('2013','admin_tag_setting8','请先在栏目管理”中添加设置\"TAG标签”模块的栏目，前台访问地址为','1','0','0','0','cn');
INSERT INTO met_language VALUES('2014','tag_name','标签名称','1','0','0','0','cn');
INSERT INTO met_language VALUES('2015','add_manully','手动添加','1','0','0','0','cn');
INSERT INTO met_language VALUES('2016','aggregation_range','聚合范围','1','0','0','0','cn');
INSERT INTO met_language VALUES('2017','admin_tag_setting7','不填写则使用系统默认值','1','0','0','0','cn');
INSERT INTO met_language VALUES('2018','admin_tag_setting9','标签名称格式不正确','1','0','0','0','cn');
INSERT INTO met_language VALUES('2019','admin_tag_setting10','静态页面名称格式不正确','1','0','0','0','cn');
INSERT INTO met_language VALUES('2020','system_check1','检查你的服务器是否支持系统所有功能。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2021','system_check2','环境/函数检测结果','1','0','0','0','cn');
INSERT INTO met_language VALUES('2022','system_check3','文件和目录权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('2023','system_check4','要能正常使用系统的缓存、伪静态、上传文件功能，需要将以下文件/目录设置为 \"可写\"。下面是需要设置为\"可写\" 的目录清单，以及建议的 CHMOD 设置。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2024','system_check5','某些主机不允许你设置 CHMOD 777，要用666。先试最高的值，不行的话，再逐步降低该值。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2025','visualization1','长按需要修改的地方即可触发修改功能','1','0','0','0','cn');
INSERT INTO met_language VALUES('2026','stand_by','支持','1','0','0','0','cn');
INSERT INTO met_language VALUES('2027','close_this_time','本次关闭','1','0','0','0','cn');
INSERT INTO met_language VALUES('2028','rename_admin_dir','当前系统环境不支持修改后台文件夹名称，请手动进行修改。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2029','notemptips','当前语言没有设置网站模板，请到“风格-网站模板”中选择1套模板','1','0','0','0','cn');
INSERT INTO met_language VALUES('2030','short_message','短信','1','0','0','0','cn');
INSERT INTO met_language VALUES('2031','common_qq','普通QQ','1','0','0','0','cn');
INSERT INTO met_language VALUES('2032','enterprise_qq','企业QQ','1','0','0','0','cn');
INSERT INTO met_language VALUES('2033','back_folder_list','返回文件夹列表','1','0','0','0','cn');
INSERT INTO met_language VALUES('2034','back_icon_iibrary_list','返回图标库列表','1','0','0','0','cn');
INSERT INTO met_language VALUES('2035','choose_icon_tips','点击选中图标并保存','1','0','0','0','cn');
INSERT INTO met_language VALUES('2036','jump_to_no','跳转到第','1','0','0','0','cn');
INSERT INTO met_language VALUES('2037','page','页','1','0','0','0','cn');
INSERT INTO met_language VALUES('2038','goto','跳转','1','0','0','0','cn');
INSERT INTO met_language VALUES('2039','save_image_to_website','保存图片到本地','1','0','0','0','cn');
INSERT INTO met_language VALUES('2040','save_allimages_to_website','保存全部图片到本地','1','0','0','0','cn');
INSERT INTO met_language VALUES('2041','block_style','区块风格','1','0','0','0','cn');
INSERT INTO met_language VALUES('2042','change','切换','1','0','0','0','cn');
INSERT INTO met_language VALUES('2043','change_blockstyle_tips','选择好风格后请点击【切换】按钮','1','0','0','0','cn');
INSERT INTO met_language VALUES('2044','installing','安装中，请不要操作。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2045','databacking','备份中，请不要操作。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2046','already_update_package','存在手动升级包','1','0','0','0','cn');
INSERT INTO met_language VALUES('2047','edit_authority','前台编辑权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('2048','editable','可编辑','1','0','0','0','cn');
INSERT INTO met_language VALUES('2049','non_editable','不可编辑','1','0','0','0','cn');
INSERT INTO met_language VALUES('2050','cv_export','导出简历','1','0','0','0','cn');
INSERT INTO met_language VALUES('2051','access_type','阅读权限展示方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('2052','access_type1','前台显示无权限信息，点击阅读后判断权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('2053','access_type2','前台不显示无权限信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('2054','database_switch','数据库切换','1','0','0','0','cn');
INSERT INTO met_language VALUES('2055','database_switch_tips','网站使用过程中请不要频繁切换数据库类型，部分应用不支持sqlite数据库，建议使用更为稳定高效的mysql数据库','1','0','0','0','cn');
INSERT INTO met_language VALUES('2056','database_switch_tips1','请配置MySQL数据库参数，数据库信息可联系你的服务器提供商获取','1','0','0','0','cn');
INSERT INTO met_language VALUES('2057','database_switch_tips2','例如：met_ 请不要留空，且使用“_”结尾','1','0','0','0','cn');
INSERT INTO met_language VALUES('2058','database_switch_tips3','一般不需要更改，参考主机或服务器MYSQL控制面板','1','0','0','0','cn');
INSERT INTO met_language VALUES('2059','database_switch_tips4','例如\"met\"或\"my_met\",请确保用字母开头','1','0','0','0','cn');
INSERT INTO met_language VALUES('2060','database_type','数据库类型','1','0','0','0','cn');
INSERT INTO met_language VALUES('2061','table_prefix','数据表前缀','1','0','0','0','cn');
INSERT INTO met_language VALUES('2062','database_address','数据库连接地址','1','0','0','0','cn');
INSERT INTO met_language VALUES('2063','database_name','数据库名','1','0','0','0','cn');
INSERT INTO met_language VALUES('2064','database_user','数据库用户名','1','0','0','0','cn');
INSERT INTO met_language VALUES('2065','database_password','数据库密码','1','0','0','0','cn');
INSERT INTO met_language VALUES('2066','read_protocol','请仔细阅读以下协议','1','0','0','0','cn');
INSERT INTO met_language VALUES('2067','disagree','不同意','1','0','0','0','cn');
INSERT INTO met_language VALUES('2068','agree','同意','1','0','0','0','cn');
INSERT INTO met_language VALUES('2069','copyright_nofollow','前台版权链接nofollow属性','1','0','0','0','cn');
INSERT INTO met_language VALUES('2070','copyright_nofollow_description','开启后前台底部版权链接会添加nofollow属性','1','0','0','0','cn');
INSERT INTO met_language VALUES('2071','close_allchildcolumn_v6','隐藏所有子栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('2072','emailhave','邮箱已被注册','1','0','0','0','cn');
INSERT INTO met_language VALUES('2073','telhave','手机号已被注册','1','0','0','0','cn');
INSERT INTO met_language VALUES('2074','noupdate','没有可用更新','1','0','0','0','cn');
INSERT INTO met_language VALUES('2075','databackup7','Full backup','1','244','8','0','en');
INSERT INTO met_language VALUES('2076','indexpic','Image watermark','1','64','13','0','en');
INSERT INTO met_language VALUES('2077','adminmobile','Phone','1','16','2','0','en');
INSERT INTO met_language VALUES('2078','cooperation_platform','Enterprise Supermarket','1','436','0','0','en');
INSERT INTO met_language VALUES('2079','feedback_interaction','Feedback Interaction','1','437','0','0','en');
INSERT INTO met_language VALUES('2080','banner_manage','Banner Manage','1','438','0','0','en');
INSERT INTO met_language VALUES('2081','unitytxt_71','QR code','1','435','0','0','en');
INSERT INTO met_language VALUES('2082','unitytxt_69','Installation file deletion','1','433','8','0','en');
INSERT INTO met_language VALUES('2083','unitytxt_70','upload files','1','434','8','0','en');
INSERT INTO met_language VALUES('2084','unitytxt_39','Set','1','403','1','0','en');
INSERT INTO met_language VALUES('2085','unitytxt_42','List page shows the number of each page','1','406','0','0','en');
INSERT INTO met_language VALUES('2086','unitytxt_38','The code will be placed above the & lt; / body & gt; tag','1','402','39','0','en');
INSERT INTO met_language VALUES('2087','unitytxt_37','The code will be placed above the & lt; / head & gt; tag','1','401','39','0','en');
INSERT INTO met_language VALUES('2088','unitytxt_33','Permission settings','1','397','39','0','en');
INSERT INTO met_language VALUES('2089','unitytxt_34','Data file upload','1','398','40','0','en');
INSERT INTO met_language VALUES('2090','unitytxt_36','PC-side third-party code (generally used to place Baidu Bridge code, webmaster code, Google translation code, etc.)','1','400','39','0','en');
INSERT INTO met_language VALUES('2091','unitytxt_25','Keyword setting','1','389','32','0','en');
INSERT INTO met_language VALUES('2092','unitytxt_26','Optimize text settings (can be used to increase keyword density)','1','390','32','0','en');
INSERT INTO met_language VALUES('2093','unitytxt_15','Other settings','1','379','0','0','en');
INSERT INTO met_language VALUES('2094','unitytxt_13','Bottom information settings (displayed at the bottom of the site front desk)','1','377','39','0','en');
INSERT INTO met_language VALUES('2095','unitytxt_14','Style set','1','378','23','0','en');
INSERT INTO met_language VALUES('2096','unitytxt_10','Only applicable to the Chinese front language (language logo cn or zh effective); visitors can switch between simplified and traditional.','1','374','16','0','en');
INSERT INTO met_language VALUES('2097','unitytxt_9','Synchronize the official parameters','1','373','16','0','en');
INSERT INTO met_language VALUES('2098','unitytxt_8','The language is set up an independent domain name, you need to modify the website URL in the <font class = \'red\'> language settings </ font> to modify.','1','372','39','0','en');
INSERT INTO met_language VALUES('2099','unitytxt_7','After the backup package is downloaded, it is recommended to delete the backup file in time to avoid affecting the size of the space (you can save the traffic through FTP if your web host limited the traffic)','1','371','0','0','en');
INSERT INTO met_language VALUES('2100','unitytxt_6','Inconsistent version','1','370','0','0','en');
INSERT INTO met_language VALUES('2101','unitytxt_2','Check to use the default settings','1','366','0','0','en');
INSERT INTO met_language VALUES('2102','ssl','SSL service method','1','362','39','0','en');
INSERT INTO met_language VALUES('2103','tls','TLS service','1','363','39','0','en');
INSERT INTO met_language VALUES('2104','loginFail','operation failed!','1','359','8','0','en');
INSERT INTO met_language VALUES('2105','NoidJS','Without this user','1','349','38','0','en');
INSERT INTO met_language VALUES('2106','jsx32','Login timeout, please log in again!','1','344','0','0','en');
INSERT INTO met_language VALUES('2107','jsx27','Static page name already exists','1','339','0','0','en');
INSERT INTO met_language VALUES('2108','jsx20','Detecting ...','1','332','0','0','en');
INSERT INTO met_language VALUES('2109','jsx17','Upload success!','1','329','0','0','en');
INSERT INTO met_language VALUES('2110','jsx15','Upload','1','327','1','0','en');
INSERT INTO met_language VALUES('2111','jsx10','error','1','322','0','0','en');
INSERT INTO met_language VALUES('2112','jsx2','Please choose at least one language!','1','314','0','0','en');
INSERT INTO met_language VALUES('2113','jsx3','Please select the form you want to copy first','1','315','0','0','en');
INSERT INTO met_language VALUES('2114','jsx1','loading...','1','313','0','0','en');
INSERT INTO met_language VALUES('2115','js67','Please select at least one of the columns','1','309','0','0','en');
INSERT INTO met_language VALUES('2116','js55','return','1','297','1','0','en');
INSERT INTO met_language VALUES('2117','js56','To move a column must set a new directory name (directory name can only be numbers or letters)','1','298','0','0','en');
INSERT INTO met_language VALUES('2118','js46','Can not repeat','1','288','0','0','en');
INSERT INTO met_language VALUES('2119','js49','Undo','1','291','0','0','en');
INSERT INTO met_language VALUES('2120','js41','Can not be empty!','1','283','0','0','en');
INSERT INTO met_language VALUES('2121','js36','Please select a language','1','278','0','0','en');
INSERT INTO met_language VALUES('2122','js35','Uploading a temporary folder (upload_tmp_dir) is not writable or the domain / background folder / include / upload.php does not have access.','1','277','0','0','en');
INSERT INTO met_language VALUES('2123','js25','Image address can not be empty!','1','267','0','0','en');
INSERT INTO met_language VALUES('2124','js23','No records selected!','1','265','0','0','en');
INSERT INTO met_language VALUES('2125','js18','The original text can not be empty','1','260','0','0','en');
INSERT INTO met_language VALUES('2126','js15','Please choose to upload the file','1','257','0','0','en');
INSERT INTO met_language VALUES('2127','js16','Download address can not be empty','1','258','0','0','en');
INSERT INTO met_language VALUES('2128','js14','Please select two and three columns','1','256','0','0','en');
INSERT INTO met_language VALUES('2129','js10','Your changes have not been saved, are you sure you want to leave?','1','252','0','0','en');
INSERT INTO met_language VALUES('2130','js6','The password entered twice is not the same','1','248','0','0','en');
INSERT INTO met_language VALUES('2131','js7','Are you sure you want to delete the selected message? Once deleted will not be able to recover!','1','249','1','0','en');
INSERT INTO met_language VALUES('2132','js5','email can not be empty','1','247','0','0','en');
INSERT INTO met_language VALUES('2133','js4','Login password can not be blank','1','246','0','0','en');
INSERT INTO met_language VALUES('2134','js2','The data is wrong','1','244','0','0','en');
INSERT INTO met_language VALUES('2135','js1','Please wait, the system test ....','1','243','0','0','en');
INSERT INTO met_language VALUES('2136','dataerror','data error','1','242','0','0','en');
INSERT INTO met_language VALUES('2137','jsok','Successful operation','1','241','1','0','en');
INSERT INTO met_language VALUES('2138','marks',':','1','238','0','0','en');
INSERT INTO met_language VALUES('2139','displayimg','Show pictures','1','235','0','0','en');
INSERT INTO met_language VALUES('2140','Operating','operating system','1','233','37','0','en');
INSERT INTO met_language VALUES('2141','noorderinfo','The smaller the value the more forward','1','234','0','0','en');
INSERT INTO met_language VALUES('2142','contentdetail','details','1','227','0','0','en');
INSERT INTO met_language VALUES('2143','content','content','1','226','1','0','en');
INSERT INTO met_language VALUES('2144','webaccess','access permission','1','225','0','0','en');
INSERT INTO met_language VALUES('2145','keywordsinfo','Please use multiple keywords, \",\" separated','1','223','0','0','en');
INSERT INTO met_language VALUES('2146','keywords','Key words','1','222','0','0','en');
INSERT INTO met_language VALUES('2147','hits','The number of clicks','1','221','0','0','en');
INSERT INTO met_language VALUES('2148','addtime','release time','1','220','0','0','en');
INSERT INTO met_language VALUES('2149','updatetime','Update time','1','219','0','0','en');
INSERT INTO met_language VALUES('2150','access3','administrator','1','218','0','0','en');
INSERT INTO met_language VALUES('2151','access2','Agents','1','217','0','0','en');
INSERT INTO met_language VALUES('2152','access1','Ordinary member','1','216','0','0','en');
INSERT INTO met_language VALUES('2153','access0','Not limited to','1','215','0','0','en');
INSERT INTO met_language VALUES('2154','access','Permissions','1','214','0','0','en');
INSERT INTO met_language VALUES('2155','read','Have read','1','210','0','0','en');
INSERT INTO met_language VALUES('2156','parameter','parameter','1','208','0','0','en');
INSERT INTO met_language VALUES('2157','search','search for','1','206','0','0','en');
INSERT INTO met_language VALUES('2158','manager','Content manage','1','205','19','0','en');
INSERT INTO met_language VALUES('2159','top','Stick to the top','1','202','0','0','en');
INSERT INTO met_language VALUES('2160','wap','wap','1','201','0','0','en');
INSERT INTO met_language VALUES('2161','recom','recommend','1','200','0','0','en');
INSERT INTO met_language VALUES('2162','image','image','1','198','0','0','en');
INSERT INTO met_language VALUES('2163','title','title','1','197','0','0','en');
INSERT INTO met_language VALUES('2164','description','Short description','1','196','0','0','en');
INSERT INTO met_language VALUES('2165','selected','select','1','192','0','0','en');
INSERT INTO met_language VALUES('2166','metinfo','MetInfo enterprise website management system','1','189','0','0','en');
INSERT INTO met_language VALUES('2167','no','no','1','188','0','0','en');
INSERT INTO met_language VALUES('2168','yes','Yes','1','187','0','0','en');
INSERT INTO met_language VALUES('2169','sort','Sort','1','186','0','0','en');
INSERT INTO met_language VALUES('2170','type','Types of','1','185','0','0','en');
INSERT INTO met_language VALUES('2171','close','shut down','1','184','0','0','en');
INSERT INTO met_language VALUES('2172','open','Open','1','183','0','0','en');
INSERT INTO met_language VALUES('2173','operate','operating','1','182','0','0','en');
INSERT INTO met_language VALUES('2174','preview','Preview','1','181','0','0','en');
INSERT INTO met_language VALUES('2175','delete','delete','1','180','0','0','en');
INSERT INTO met_language VALUES('2176','modify','modify','1','179','0','0','en');
INSERT INTO met_language VALUES('2177','View','View','1','178','0','0','en');
INSERT INTO met_language VALUES('2178','editor','edit','1','177','0','0','en');
INSERT INTO met_language VALUES('2179','add','Add to','1','176','0','0','en');
INSERT INTO met_language VALUES('2180','addsubcolumn','Add sub column','1','176','0','0','en');
INSERT INTO met_language VALUES('2181','Submitall','submit','1','172','26','0','en');
INSERT INTO met_language VALUES('2182','Copy','copy','1','174','0','0','en');
INSERT INTO met_language VALUES('2183','langadderr4','Unable to sync official language packs.','1','166','16','0','en');
INSERT INTO met_language VALUES('2184','langadderr5','You deleted the default language! Please set another language as the default language and then operate!','1','167','16','0','en');
INSERT INTO met_language VALUES('2185','basictips7','E-mail set up correctly!','1','162','39','0','en');
INSERT INTO met_language VALUES('2186','basictips6','<b> Workaround: </ b> Check your account password and smtp for errors or check if your mailbox has smtp service enabled.','1','161','39','0','en');
INSERT INTO met_language VALUES('2187','basictips5','<b> Error tip: </ b> failed to test email!','1','160','39','0','en');
INSERT INTO met_language VALUES('2188','basictips3','Mail sending test','1','158','39','0','en');
INSERT INTO met_language VALUES('2189','basictips4','E-mail received indicates that your site\'s system mailbox settings are correct.','1','159','39','0','en');
INSERT INTO met_language VALUES('2190','upfileFail10','Imagejpeg function is not supported','1','125','8','0','en');
INSERT INTO met_language VALUES('2191','upfileFail11','Imagepng function is not supported','1','126','8','0','en');
INSERT INTO met_language VALUES('2192','upfileFail9','The imagegif function is not supported','1','124','8','0','en');
INSERT INTO met_language VALUES('2193','upfileFail8','File corruption, thumbnail generation failed','1','123','8','0','en');
INSERT INTO met_language VALUES('2194','upfileFail7','Does not support the current file format to generate thumbnails, please upload JPG, GIF, PNG pictures','1','122','8','0','en');
INSERT INTO met_language VALUES('2195','upfileFail6','Space does not support GD library, can not generate thumbnails','1','121','8','0','en');
INSERT INTO met_language VALUES('2196','upfileFail5','The bmp format does not automatically generate thumbnails','1','120','8','0','en');
INSERT INTO met_language VALUES('2197','upfileFail4','Failed to create directory','1','119','8','0','en');
INSERT INTO met_language VALUES('2198','upfileOver4','upload folder does not write permission, please contact space to modify.','1','116','8','0','en');
INSERT INTO met_language VALUES('2199','upfileOver5','Upload temporary folder (upload_tmp_dir) no write permission, please contact the space to modify.','1','117','8','0','en');
INSERT INTO met_language VALUES('2200','upfileOver3','No files have been uploaded','1','115','8','0','en');
INSERT INTO met_language VALUES('2201','upfileOver2','Only part of the file is uploaded.','1','114','8','0','en');
INSERT INTO met_language VALUES('2202','upfileOver','The uploaded file exceeded the limit of upload_max_filesize option in php.ini.','1','112','8','0','en');
INSERT INTO met_language VALUES('2203','upfileOver1','The size of the uploaded file exceeds the value specified by the MAX_FILE_SIZE option in the HTML form.','1','113','8','0','en');
INSERT INTO met_language VALUES('2204','upfileTip3','File format does not allow uploading.','1','110','8','0','en');
INSERT INTO met_language VALUES('2205','upfileTip1',', Can not upload.','1','108','8','0','en');
INSERT INTO met_language VALUES('2206','upfileFail2','Failed to create picture directory','1','103','8','0','en');
INSERT INTO met_language VALUES('2207','upfileMax','Size exceeds system limit','1','106','8','0','en');
INSERT INTO met_language VALUES('2208','upfileFile','upload files','1','105','8','0','en');
INSERT INTO met_language VALUES('2209','funNav4','Show','1','94','5','0','en');
INSERT INTO met_language VALUES('2210','indexfeedbackm','Feedback management','1','79','8','0','en');
INSERT INTO met_language VALUES('2211','indexlink','Links','1','78','8','0','en');
INSERT INTO met_language VALUES('2212','indexhtm','Static page generation','1','74','8','0','en');
INSERT INTO met_language VALUES('2213','indexhtmset','Static pages','1','73','8','0','en');
INSERT INTO met_language VALUES('2214','indexcv','Resume parameter configuration','1','70','8','0','en');
INSERT INTO met_language VALUES('2215','indexflash','Banner management','1','67','4','0','en');
INSERT INTO met_language VALUES('2216','indexbbs','Technical Support','1','63','8','0','en');
INSERT INTO met_language VALUES('2217','indexcode','Commercial authorization','1','61','8','0','en');
INSERT INTO met_language VALUES('2218','indexlang','language settings','1','54','8','0','en');
INSERT INTO met_language VALUES('2219','indexloginout','drop out','1','51','8','0','en');
INSERT INTO met_language VALUES('2220','indexuser','User Management','1','47','8','0','en');
INSERT INTO met_language VALUES('2221','indexcontent','Content management','1','44','8','0','en');
INSERT INTO met_language VALUES('2222','indexadmin','Functions','1','50','8','0','en');
INSERT INTO met_language VALUES('2223','indexadminname','Administrator management','1','80','8','0','en');
INSERT INTO met_language VALUES('2224','loginall','You do not have to add, modify, delete the permissions of the information, please contact the administrator to open','1','39','8','0','en');
INSERT INTO met_language VALUES('2225','loginedit','You do not have permission to modify the information, please contact the administrator to open','1','38','0','0','en');
INSERT INTO met_language VALUES('2226','loginadd','You do not have permission to add information, please contact the administrator to open','1','37','8','0','en');
INSERT INTO met_language VALUES('2227','logindelete','You do not have permission to delete information, please contact the administrator to open','1','36','8','0','en');
INSERT INTO met_language VALUES('2228','loginpass','wrong user name or password','1','35','8','0','en');
INSERT INTO met_language VALUES('2229','loginname','wrong user name or password','1','34','18','0','en');
INSERT INTO met_language VALUES('2230','logincodeerror','Verification code error','1','33','18','0','en');
INSERT INTO met_language VALUES('2231','loginconfirm','log in','1','32','18','0','en');
INSERT INTO met_language VALUES('2232','loginforget','forget password?','1','31','18','0','en');
INSERT INTO met_language VALUES('2233','loginusename','username','1','27','8','0','en');
INSERT INTO met_language VALUES('2234','loginpassword','password','1','28','8','0','en');
INSERT INTO met_language VALUES('2235','logincode','Verification code','1','29','8','0','en');
INSERT INTO met_language VALUES('2236','loginlanguage','Language Settings','1','26','18','0','en');
INSERT INTO met_language VALUES('2237','loginmetinfo','MetInfo','1','25','8','0','en');
INSERT INTO met_language VALUES('2238','loginadmin','Administrator login','1','24','18','0','en');
INSERT INTO met_language VALUES('2239','logintitle','Background login','1','21','18','0','en');
INSERT INTO met_language VALUES('2240','loginid','Username can not be empty','1','22','18','0','en');
INSERT INTO met_language VALUES('2241','myapps','Applications','1','20','36','0','en');
INSERT INTO met_language VALUES('2242','myapp','Application plugin','1','20','36','0','en');
INSERT INTO met_language VALUES('2243','recycle','Content Recycle Bin','1','17','29','0','en');
INSERT INTO met_language VALUES('2244','managertyp5','Custom','1','9','2','0','en');
INSERT INTO met_language VALUES('2245','managertyp4','Content Manager','1','9','2','0','en');
INSERT INTO met_language VALUES('2246','managertyp2','administrator','1','7','2','0','en');
INSERT INTO met_language VALUES('2247','managertyp3','Optimize promotion','1','8','2','0','en');
INSERT INTO met_language VALUES('2248','managertyp1','Founder','1','6','2','0','en');
INSERT INTO met_language VALUES('2249','uplaoderr1','upload failed!','1','3','8','0','en');
INSERT INTO met_language VALUES('2250','clickview','Click to view','1','1','8','0','en');
INSERT INTO met_language VALUES('2251','membertips1','Registration time','1','105','38','0','en');
INSERT INTO met_language VALUES('2252','memberjstxt2','Please enter your password!','1','95','7','0','en');
INSERT INTO met_language VALUES('2253','memberCheck','Activate now','1','92','38','0','en');
INSERT INTO met_language VALUES('2254','memberMan','Mr','1','81','36','0','en');
INSERT INTO met_language VALUES('2255','memberCell','Phone','1','84','7','0','en');
INSERT INTO met_language VALUES('2256','memberTip','Please leave blank without modification','1','78','7','0','en');
INSERT INTO met_language VALUES('2257','memberName','Name','1','76','7','0','en');
INSERT INTO met_language VALUES('2258','memberCV','resume','1','74','15','0','en');
INSERT INTO met_language VALUES('2259','memberEmail','email address','1','67','7','0','en');
INSERT INTO met_language VALUES('2260','memberAdd','Add member','1','62','2','0','en');
INSERT INTO met_language VALUES('2261','memberChecked','activated','1','60','38','0','en');
INSERT INTO met_language VALUES('2262','memberUnChecked','inactivated','1','61','38','0','en');
INSERT INTO met_language VALUES('2263','memberManage','Member management','1','58','2','0','en');
INSERT INTO met_language VALUES('2264','memberlogin','Sign Up','1','51','38','0','en');
INSERT INTO met_language VALUES('2265','hello','Hello!','1','47','7','0','en');
INSERT INTO met_language VALUES('2266','getTip5','Retrieve the password','1','45','7','0','en');
INSERT INTO met_language VALUES('2267','getTip3','Email to create a new password link has been sent to your email address. Please change your password as soon as possible.','1','43','10','0','en');
INSERT INTO met_language VALUES('2268','getTip2','Thank you for your support and love for MetInfo and hope MetInfo will create value for your website!','1','42','10','0','en');
INSERT INTO met_language VALUES('2269','getTip1','Your password reset request has been verified. Please click the following link to enter your new password:','1','41','10','0','en');
INSERT INTO met_language VALUES('2270','getNotice','Administrator password retrieve','1','40','10','0','en');
INSERT INTO met_language VALUES('2271','adminpassTitle','Modify Personal Information','1','39','2','0','en');
INSERT INTO met_language VALUES('2272','adminSelectAll','All Selection','1','37','2','0','en');
INSERT INTO met_language VALUES('2273','adminOperate4','delete message','1','35','2','0','en');
INSERT INTO met_language VALUES('2274','adminOperate3','Modify information','1','34','2','0','en');
INSERT INTO met_language VALUES('2275','adminOperate1','fully control','1','32','2','0','en');
INSERT INTO met_language VALUES('2276','adminOperate2','add information','1','33','2','0','en');
INSERT INTO met_language VALUES('2277','adminPower','Information rights','1','29','2','0','en');
INSERT INTO met_language VALUES('2278','adminTip2','Only allow to view your published information','1','30','2','0','en');
INSERT INTO met_language VALUES('2279','adminTip3','Posting information needs to be reviewed in order to display properly','1','30','2','0','en');
INSERT INTO met_language VALUES('2280','adminOperate','Operating authority','1','31','2','0','en');
INSERT INTO met_language VALUES('2281','adminpassword1','Password Confirmation','1','21','2','0','en');
INSERT INTO met_language VALUES('2282','adminpassword','login password','1','20','7','0','en');
INSERT INTO met_language VALUES('2283','adminLastLogin','last login time','1','18','0','0','en');
INSERT INTO met_language VALUES('2284','adminLastIP','Finally login IP','1','19','0','0','en');
INSERT INTO met_language VALUES('2285','metadmin','administrator','1','12','0','0','en');
INSERT INTO met_language VALUES('2286','adminusername','username','1','13','0','0','en');
INSERT INTO met_language VALUES('2287','adminname','Name','1','14','0','0','en');
INSERT INTO met_language VALUES('2288','admin_email','Administrator mailbox','1','14','0','0','en');
INSERT INTO met_language VALUES('2289','admin_email_error','Administrator\'s mailbox has been occupied','1','14','0','0','en');
INSERT INTO met_language VALUES('2290','adminLoginNum','Login times','1','17','38','0','en');
INSERT INTO met_language VALUES('2291','admintips7','Administrator permission settings','1','11','2','0','en');
INSERT INTO met_language VALUES('2292','adminjurisd','Language permissions','1','5','2','0','en');
INSERT INTO met_language VALUES('2293','admintips1','All languages','1','6','0','0','en');
INSERT INTO met_language VALUES('2294','admintips2','Choose at least one','1','7','2','0','en');
INSERT INTO met_language VALUES('2295','admintips5','user group','1','10','0','0','en');
INSERT INTO met_language VALUES('2296','admintips4','New column permissions','1','9','2','0','en');
INSERT INTO met_language VALUES('2297','webcompre','The whole station compression package','1','3','8','0','en');
INSERT INTO met_language VALUES('2298','admininfo','Administrator basic information','1','4','0','0','en');
INSERT INTO met_language VALUES('2299','uploadfile','Upload folder','1','2','8','0','en');
INSERT INTO met_language VALUES('2300','database','database','1','1','8','0','en');
INSERT INTO met_language VALUES('2301','dlapptips6','Uninstall','1','294','6','0','en');
INSERT INTO met_language VALUES('2302','dlapptips5','turn on','1','293','6','0','en');
INSERT INTO met_language VALUES('2303','mobiletips3','Add content','1','284','0','0','en');
INSERT INTO met_language VALUES('2304','smstips64','Status all','1','245','6','0','en');
INSERT INTO met_language VALUES('2305','smstips24','Operating time','1','206','6','0','en');
INSERT INTO met_language VALUES('2306','smstips22','Account Balance','1','204','6','0','en');
INSERT INTO met_language VALUES('2307','smstips18','Type of operation','1','200','6','0','en');
INSERT INTO met_language VALUES('2308','smstips19','Recharge','1','201','6','0','en');
INSERT INTO met_language VALUES('2309','smstips17','sequence','1','199','6','0','en');
INSERT INTO met_language VALUES('2310','smstips9','yuan','1','191','6','0','en');
INSERT INTO met_language VALUES('2311','smstips6','current balance','1','188','6','0','en');
INSERT INTO met_language VALUES('2312','smstips7','payment method','1','189','6','0','en');
INSERT INTO met_language VALUES('2313','smstips1','Send in bulk','1','183','6','0','en');
INSERT INTO met_language VALUES('2314','smstips2','send record','1','184','6','0','en');
INSERT INTO met_language VALUES('2315','statip','IP','1','132','6','0','en');
INSERT INTO met_language VALUES('2316','smsrecharge','Recharge','1','113','6','0','en');
INSERT INTO met_language VALUES('2317','physicalfunction4','folder','1','103','1','0','en');
INSERT INTO met_language VALUES('2318','physicaldelok','successfully deleted','1','47','6','0','en');
INSERT INTO met_language VALUES('2319','physicalgenok','Generated successfully','1','49','6','0','en');
INSERT INTO met_language VALUES('2320','usertype3','Ordinary commercial authority','1','35','0','0','en');
INSERT INTO met_language VALUES('2321','usertype4','Advanced Business Licensing','1','36','0','0','en');
INSERT INTO met_language VALUES('2322','user_tips30_v6','Middle cross screen background of login interface (recommended size 1920 * 800 width * high)','1','0','38','0','en');
INSERT INTO met_language VALUES('2323','user_tips5_v6','The parameters are available, and the following parameters are referred to as variable parameters in the content of the mail.','1','0','38','0','en');
INSERT INTO met_language VALUES('2324','user_tips6_v6','Mail address URL the next operation, required. For example, retrieve the password mail, this address is the link to retrieve the password.','1','0','38','0','en');
INSERT INTO met_language VALUES('2325','user_Registeredmail_v6','Registered mail','1','0','38','0','en');
INSERT INTO met_language VALUES('2326','user_tips7_v6','Password retrieving mail','1','0','38','0','en');
INSERT INTO met_language VALUES('2327','user_tips8_v6','Need to be','1','0','38','0','en');
INSERT INTO met_language VALUES('2328','user_QQinterconnect_v6','QQ interconnection','1','0','38','0','en');
INSERT INTO met_language VALUES('2329','user_tips9_v6','Application (Management Center - login - create application - Web site)','1','0','38','0','en');
INSERT INTO met_language VALUES('2330','user_backurl_v6','token url','1','0','38','0','en');
INSERT INTO met_language VALUES('2331','user_tips10_v6','WeChat open platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2332','user_Apply_v6','Apply','1','0','38','0','en');
INSERT INTO met_language VALUES('2333','user_tips11_v6','Member logon for PC side','1','0','38','0','en');
INSERT INTO met_language VALUES('2334','user_Openplatform_v6','Open platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2335','user_publicplatform_v6','WeChat public platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2336','user_tips13_v6','You need to get the web authorization function and set up the authorized domain name for your website domain name.','1','0','38','0','en');
INSERT INTO met_language VALUES('2337','user_tips14_v6','And add this WeChat public number to the open platform account.','1','0','38','0','en');
INSERT INTO met_language VALUES('2338','user_tips15_v6','Sina micro-blog','1','0','38','0','en');
INSERT INTO met_language VALUES('2339','user_tips16_v6','Micro-blog open platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2340','user_tips17_v6','(Note: please apply for a web site not to apply for application)','1','0','38','0','en');
INSERT INTO met_language VALUES('2341','user_accsafe_v6','Account security','1','0','38','0','en');
INSERT INTO met_language VALUES('2342','user_PasswordReset_v6','Password Reset','1','0','38','0','en');
INSERT INTO met_language VALUES('2343','user_tips18_v6','6-30 character spacing is not modified','1','0','38','0','en');
INSERT INTO met_language VALUES('2344','user_emailuse_v6','Mailbox has been bound','1','0','38','0','en');
INSERT INTO met_language VALUES('2345','user_Accountstatus_v6','Account status','1','0','38','0','en');
INSERT INTO met_language VALUES('2346','user_must_v6','Required','1','0','38','0','en');
INSERT INTO met_language VALUES('2347','user_tips21_v6','The higher the value, the higher the reading authority','1','0','38','0','en');
INSERT INTO met_language VALUES('2348','user_Exportmember_v6','Export membership','1','0','38','0','en');
INSERT INTO met_language VALUES('2349','user_Registratset_v6','Registration settings','1','0','38','0','en');
INSERT INTO met_language VALUES('2350','user_Regverificat_v6','Registration verification','1','0','38','0','en');
INSERT INTO met_language VALUES('2351','user_tips23_v6','Mailbox is a username','1','0','38','0','en');
INSERT INTO met_language VALUES('2352','user_Mailvalidat_v6','Mail validation','1','0','38','0','en');
INSERT INTO met_language VALUES('2353','user_tips24_v6','(set up the system server box (settings - basic information - Send mailbox configuration)','1','0','38','0','en');
INSERT INTO met_language VALUES('2354','user_tips25_v6','Backstage review','1','0','38','0','en');
INSERT INTO met_language VALUES('2355','user_tips26_v6','Mobile phone number is username','1','0','38','0','en');
INSERT INTO met_language VALUES('2356','user_tips27_v6','Mobile phone short message verification','1','0','38','0','en');
INSERT INTO met_language VALUES('2357','user_tips28_v6','Short message service (my application - SMS)','1','0','38','0','en');
INSERT INTO met_language VALUES('2358','user_Notverifying_v6','Not verifying','1','0','38','0','en');
INSERT INTO met_language VALUES('2359','user_Backgroundpicture_v6','Background picture','1','0','38','0','en');
INSERT INTO met_language VALUES('2360','appinstall','installation','1','38','1','0','en');
INSERT INTO met_language VALUES('2361','appupgrade','upgrade','1','40','3','0','en');
INSERT INTO met_language VALUES('2362','usertype1','FREE','1','33','3','0','en');
INSERT INTO met_language VALUES('2363','csvnodata','no data','1','26','16','0','en');
INSERT INTO met_language VALUES('2364','wapdimensionalsize','size','1','20','6','0','en');
INSERT INTO met_language VALUES('2365','dltips7','Download timed out','1','195','0','0','en');
INSERT INTO met_language VALUES('2366','columnarrangement2','Switch to','1','197','19','0','en');
INSERT INTO met_language VALUES('2367','columnarrangement3','Sort by module','1','198','19','0','en');
INSERT INTO met_language VALUES('2368','columnarrangement4','Classified by column','1','199','19','0','en');
INSERT INTO met_language VALUES('2369','dltips6','Remote server request error','1','194','0','0','en');
INSERT INTO met_language VALUES('2370','dltips5','The file you requested does not exist','1','193','0','0','en');
INSERT INTO met_language VALUES('2371','dltips4','Please upgrade the program','1','192','0','0','en');
INSERT INTO met_language VALUES('2372','dltips3','You do not have permission to download this file','1','191','0','0','en');
INSERT INTO met_language VALUES('2373','dltips2','File download failed, please check the local directory permissions and space size','1','190','0','0','en');
INSERT INTO met_language VALUES('2374','dltips1','Can not connect to the remote server, please check the network','1','189','0','0','en');
INSERT INTO met_language VALUES('2375','seotips18','Filter external modules','1','182','5','0','en');
INSERT INTO met_language VALUES('2376','seotips19','Website language range','1','183','32','0','en');
INSERT INTO met_language VALUES('2377','seotips20','Current language','1','184','32','0','en');
INSERT INTO met_language VALUES('2378','seotips15_3','Suitable for Yahoo,','1','179','32','0','en');
INSERT INTO met_language VALUES('2379','seotips16','Filter columns and content','1','180','32','0','en');
INSERT INTO met_language VALUES('2380','seotips15_2','Suitable for Google and Baidu','1','178','32','0','en');
INSERT INTO met_language VALUES('2381','seotips15','Map URL','1','176','32','0','en');
INSERT INTO met_language VALUES('2382','seotips6','Home','1','166','0','0','en');
INSERT INTO met_language VALUES('2383','seotips9','Content page','1','169','32','0','en');
INSERT INTO met_language VALUES('2384','seotips14_1','How to submit to search engine?','1','175','32','0','en');
INSERT INTO met_language VALUES('2385','seotips14','Sitemaps help speed up your site\'s search engine listings','1','174','32','0','en');
INSERT INTO met_language VALUES('2386','seotips12','Will all static pages be generated immediately?','1','172','11','0','en');
INSERT INTO met_language VALUES('2387','seotips11','Delete all generated static pages?','1','171','11','0','en');
INSERT INTO met_language VALUES('2388','seotips1','Multiple keywords separated by vertical comma \",\" , recommended 3-4 keywords.','1','161','32','0','en');
INSERT INTO met_language VALUES('2389','statips27','time','1','124','0','0','en');
INSERT INTO met_language VALUES('2390','statips2','Statistics settings','1','101','0','0','en');
INSERT INTO met_language VALUES('2391','linkRecommend','Recommended site','1','91','17','0','en');
INSERT INTO met_language VALUES('2392','linkPass','examination passed','1','90','17','0','en');
INSERT INTO met_language VALUES('2393','linkLOGO','Website LOGO','1','87','17','0','en');
INSERT INTO met_language VALUES('2394','linkcontact','Contact information','1','88','0','0','en');
INSERT INTO met_language VALUES('2395','linktip1','Sites in the same state, the bigger the number, the higher the ranking','1','89','17','0','en');
INSERT INTO met_language VALUES('2396','linktip2','The ability to pass the review is displayed in the foreground, and the recommended site is displayed in the front.','1','89','17','0','en');
INSERT INTO met_language VALUES('2397','linkUrl','Website address','1','86','17','0','en');
INSERT INTO met_language VALUES('2398','linkKeys','Website keywords','1','83','17','0','en');
INSERT INTO met_language VALUES('2399','linkCheck','Audit','1','84','17','0','en');
INSERT INTO met_language VALUES('2400','linkName','Website title','1','82','17','0','en');
INSERT INTO met_language VALUES('2401','linkType4','Text link','1','80','17','0','en');
INSERT INTO met_language VALUES('2402','linkType5','LOGO link','1','81','17','0','en');
INSERT INTO met_language VALUES('2403','linkType1','Unaudited link','1','77','17','0','en');
INSERT INTO met_language VALUES('2404','linkType2','Recommended links','1','78','17','0','en');
INSERT INTO met_language VALUES('2405','linkType','Link type','1','75','17','0','en');
INSERT INTO met_language VALUES('2406','htmCreateAll','Generate all pages','1','63','11','0','en');
INSERT INTO met_language VALUES('2407','htmsitemap','Sitemap','1','61','0','0','en');
INSERT INTO met_language VALUES('2408','htmAll','All pages','1','59','11','0','en');
INSERT INTO met_language VALUES('2409','htmTip1','Generate content page','1','57','11','0','en');
INSERT INTO met_language VALUES('2410','htmTip2','Generate the list page','1','58','11','0','en');
INSERT INTO met_language VALUES('2411','htmColumn','Column Manage','1','56','0','0','en');
INSERT INTO met_language VALUES('2412','htmHome','Home page','1','54','4','0','en');
INSERT INTO met_language VALUES('2413','sethtmsitemap4','xml sitemap','1','53','32','0','en');
INSERT INTO met_language VALUES('2414','sethtmlist','List page name','1','47','11','0','en');
INSERT INTO met_language VALUES('2415','sethtmlist1','Default file name + class + page number (eg product_1_1)','1','48','11','0','en');
INSERT INTO met_language VALUES('2416','sethtmlist2','Where the folder name + class + page number (such as software_1_1)','1','49','11','0','en');
INSERT INTO met_language VALUES('2417','sethtmpage4','<span style = \"float: right;\"> Do not recommend frequent replacement, to ensure the SEO effect (please modify all static pages) </ span> Static page name rules','1','50','11','0','en');
INSERT INTO met_language VALUES('2418','sethtmpage3','Where the folder name + ID (such as product10)','1','43','11','0','en');
INSERT INTO met_language VALUES('2419','setlisthtmltype','List page type','1','44','11','0','en');
INSERT INTO met_language VALUES('2420','setlisthtmltype1','Show all section id (eg product_1_2_3)','1','45','11','0','en');
INSERT INTO met_language VALUES('2421','setlisthtmltype2','Only show this column id (such as product_1)','1','46','11','0','en');
INSERT INTO met_language VALUES('2422','sethtmpage2','Year, month, day + ID (such as 2009081510)','1','42','11','0','en');
INSERT INTO met_language VALUES('2423','sethtmpage1','The default file name + ID (such as showproduct10)','1','41','11','0','en');
INSERT INTO met_language VALUES('2424','sethtmpage','Content page name','1','40','11','0','en');
INSERT INTO met_language VALUES('2425','sethtmtype','Static page type','1','39','11','0','en');
INSERT INTO met_language VALUES('2426','sethtmway3','It is not recommended to enable the automatic generation function, which consumes a lot of resources. Only content management-related operations can be automatically generated. If other background settings are changed, no foreground creation needs to be manually generated.','1','38','11','0','en');
INSERT INTO met_language VALUES('2427','sethtmway2','Manually generated','1','37','11','0','en');
INSERT INTO met_language VALUES('2428','sethtmway','Generation method','1','35','11','0','en');
INSERT INTO met_language VALUES('2429','sethtmway1','Automatically generated when content information changes','1','36','11','0','en');
INSERT INTO met_language VALUES('2430','setbasicTip4','It is suggested that the enterprise station use the pseudo-static function, purely static consumption of resources and inconvenient management; the first time you open, click \"static page generation\" to generate all the pages','1','34','11','0','en');
INSERT INTO met_language VALUES('2431','sethtmok','Static pages open','1','31','11','0','en');
INSERT INTO met_language VALUES('2432','sethtmall','Station static','1','32','11','0','en');
INSERT INTO met_language VALUES('2433','setbasicTip3','Home page, content page static','1','33','11','0','en');
INSERT INTO met_language VALUES('2434','labelUrl','link address','1','27','32','0','en');
INSERT INTO met_language VALUES('2435','htm','Static page has been successfully generated','1','30','11','0','en');
INSERT INTO met_language VALUES('2436','labelnum','Replacement times','1','23','32','0','en');
INSERT INTO met_language VALUES('2437','labelOld','Original text','1','24','32','0','en');
INSERT INTO met_language VALUES('2438','labelNew','Replace with','1','25','32','0','en');
INSERT INTO met_language VALUES('2439','setseoTip14','The title of the inner page is constructed so that you can also customize the title of the corresponding page when editing / adding content.','1','21','32','0','en');
INSERT INTO met_language VALUES('2440','setseotitletype4','Content title + website keyword + website name','1','20','32','0','en');
INSERT INTO met_language VALUES('2441','setseotitletype3','Content title + website keyword','1','19','32','0','en');
INSERT INTO met_language VALUES('2442','setseotitletype2','Content title + website name','1','18','32','0','en');
INSERT INTO met_language VALUES('2443','setseotitletype','Inside page title (title)','1','16','32','0','en');
INSERT INTO met_language VALUES('2444','setseotitletype1','Content title','1','17','32','0','en');
INSERT INTO met_language VALUES('2445','setseodopen','The current window opens','1','14','35','0','en');
INSERT INTO met_language VALUES('2446','setseonewopen','open in a new window','1','15','35','0','en');
INSERT INTO met_language VALUES('2447','setseoFoot','Website optimization at the bottom','1','11','32','0','en');
INSERT INTO met_language VALUES('2448','setseoTip9','Move the mouse to the text displayed on the hyperlink','1','9','32','0','en');
INSERT INTO met_language VALUES('2449','setseoTip8','Hyperlink default Title','1','8','32','0','en');
INSERT INTO met_language VALUES('2450','setseoTip7','Move the mouse to the text shown in the picture','1','7','32','0','en');
INSERT INTO met_language VALUES('2451','setseoTip6','Image default ALT','1','6','32','0','en');
INSERT INTO met_language VALUES('2452','setseoTip4','Head optimization text','1','5','32','0','en');
INSERT INTO met_language VALUES('2453','setseoTip10','Leave blank to use the website name - the way the website keywords are structured','1','4','32','0','en');
INSERT INTO met_language VALUES('2454','setseoKey','Website keywords','1','2','32','0','en');
INSERT INTO met_language VALUES('2455','setseohomeKey','Home title (title)','1','3','32','0','en');
INSERT INTO met_language VALUES('2456','setseoTip1','Multiple keywords should be separated by \",\".','1','1','0','0','en');
INSERT INTO met_language VALUES('2457','setheadstat','Top code','1','176','39','0','en');
INSERT INTO met_language VALUES('2458','recycledietime','Delete the time','1','121','29','0','en');
INSERT INTO met_language VALUES('2459','recyclere','reduction','1','122','29','0','en');
INSERT INTO met_language VALUES('2460','messageeditor','Edit message','1','113','20','0','en');
INSERT INTO met_language VALUES('2461','messagesubmit','Message submitted to open and close','1','112','20','0','en');
INSERT INTO met_language VALUES('2462','messageeditorReply','Respond to voicemail','1','109','20','0','en');
INSERT INTO met_language VALUES('2463','messageeditorCheck','Reply to the audit','1','110','20','0','en');
INSERT INTO met_language VALUES('2464','messageeditorShow','Approved and shown in the foreground','1','111','20','0','en');
INSERT INTO met_language VALUES('2465','messageTime','Submit time','1','106','20','0','en');
INSERT INTO met_language VALUES('2466','messageID','Message status','1','105','20','0','en');
INSERT INTO met_language VALUES('2467','messageTel','phone','1','103','20','0','en');
INSERT INTO met_language VALUES('2468','messageTitle','Message management','1','96','0','0','en');
INSERT INTO met_language VALUES('2469','messageVoice','Message form settings','1','443','0','0','en');
INSERT INTO met_language VALUES('2470','messageincTip3','Customer message needs to be back in the background audit before the show','1','93','20','0','en');
INSERT INTO met_language VALUES('2471','messageincShow','Display method','1','92','20','0','en');
INSERT INTO met_language VALUES('2472','feedbackauto','Mail reply settings','1','90','0','0','en');
INSERT INTO met_language VALUES('2473','messageincTitle','Message system settings','1','91','0','0','en');
INSERT INTO met_language VALUES('2474','feedbackexplain1','Page title name, the default is the name of the section','1','89','9','0','en');
INSERT INTO met_language VALUES('2475','feedbacksubmit','Feedback submitted to open and close','1','88','9','0','en');
INSERT INTO met_language VALUES('2476','fdeditorFrom','Source page address','1','85','9','0','en');
INSERT INTO met_language VALUES('2477','fdeditorRecord','Edit records','1','86','9','0','en');
INSERT INTO met_language VALUES('2478','fdeditorInterest','Product of interest','1','83','9','0','en');
INSERT INTO met_language VALUES('2479','fdeditorTime','Feedback submission time','1','84','9','0','en');
INSERT INTO met_language VALUES('2480','feedbackAccess0','Tourists','1','82','0','0','en');
INSERT INTO met_language VALUES('2481','feedbackTip4','Export all','1','80','9','0','en');
INSERT INTO met_language VALUES('2482','feedbackTip2','Export EXCEL table','1','79','9','0','en');
INSERT INTO met_language VALUES('2483','feedbackTime','Submit time','1','78','9','0','en');
INSERT INTO met_language VALUES('2484','feedbackID','Feedback status','1','77','9','0','en');
INSERT INTO met_language VALUES('2485','feedbackClass2','Unread message','1','74','0','0','en');
INSERT INTO met_language VALUES('2486','feedbackClass3','Read the information','1','75','0','0','en');
INSERT INTO met_language VALUES('2487','feedbackClass','Information status','1','71','0','0','en');
INSERT INTO met_language VALUES('2488','fdincFeedbackTitle','Reply mail title','1','68','0','0','en');
INSERT INTO met_language VALUES('2489','fdincAutoFbTitle','Auto reply email title','1','69','4','0','en');
INSERT INTO met_language VALUES('2490','fdincAutoContent','Reply mail content','1','70','0','0','en');
INSERT INTO met_language VALUES('2491','fdincEmailName','Email field name','1','66','0','0','en');
INSERT INTO met_language VALUES('2492','fdincTip11','Used to retrieve the user\'s email address, in order to reply to the mail. Field type must be \"email\"','1','67','0','0','en');
INSERT INTO met_language VALUES('2493','fdincTip10','Check to automatically reply to the user submitting the form','1','65','0','0','en');
INSERT INTO met_language VALUES('2494','fdincAuto','Mail reply','1','64','0','0','en');
INSERT INTO met_language VALUES('2495','fdincTip9','Multiple emails should be separated by |','1','63','0','0','en');
INSERT INTO met_language VALUES('2496','fdincAcceptMail','Feedback mail receiving mailbox','1','62','9','0','en');
INSERT INTO met_language VALUES('2497','fdincTip7','Mail received','1','60','0','0','en');
INSERT INTO met_language VALUES('2498','fdincTip14','SMS Notification Number','1','61','0','0','en');
INSERT INTO met_language VALUES('2499','fdincAccept','Mail received','1','59','0','0','en');
INSERT INTO met_language VALUES('2500','fdincTip6','It is used to get the type of user feedback. The type of the field must be \"pull-down\" \"Radio\" \"short\". When set as the associated product, the pull-down menu is all the products under the corresponding column.','1','57','9','0','en');
INSERT INTO met_language VALUES('2501','fdincAcceptType','Information reception method','1','58','9','0','en');
INSERT INTO met_language VALUES('2502','fdincClassName','Information Category field name','1','56','9','0','en');
INSERT INTO met_language VALUES('2503','fdincSlash','Sensitive character filtering','1','54','0','0','en');
INSERT INTO met_language VALUES('2504','fdincTip4','Second, the same IP2 times to submit the minimum interval','1','53','0','0','en');
INSERT INTO met_language VALUES('2505','fdincName','Feedback form name','1','51','9','0','en');
INSERT INTO met_language VALUES('2506','fdincTime','Anti-refresh time','1','52','0','0','en');
INSERT INTO met_language VALUES('2507','fdincTitle','Feedback system settings','1','50','25','0','en');
INSERT INTO met_language VALUES('2508','jobmanagement','Recruitment management','1','48','0','0','en');
INSERT INTO met_language VALUES('2509','jobtip9','Resume photo, so that you can see in the mail candidates upload photos.','1','47','0','0','en');
INSERT INTO met_language VALUES('2510','jobtip8','Image field name','1','46','0','0','en');
INSERT INTO met_language VALUES('2511','jobtip5','After the delivery resume, the system will automatically send an e-mail to receive mail','1','45','15','0','en');
INSERT INTO met_language VALUES('2512','cvset','Resume form settings','1','44','0','0','en');
INSERT INTO met_language VALUES('2513','cvmanagement','Resume information management','1','43','0','0','en');
INSERT INTO met_language VALUES('2514','cvemail','Resume to accept the mailbox','1','42','15','0','en');
INSERT INTO met_language VALUES('2515','cvall','All','1','39','3','0','en');
INSERT INTO met_language VALUES('2516','cvincAcceptType','Resume reception method','1','37','0','0','en');
INSERT INTO met_language VALUES('2517','cvincAcceptMail','Resume to receive mail','1','36','0','0','en');
INSERT INTO met_language VALUES('2518','cvincTip4','Individual position','1','34','0','0','en');
INSERT INTO met_language VALUES('2519','cvincTip3','Uniform setting','1','33','0','0','en');
INSERT INTO met_language VALUES('2520','cvincTip2','Mail reception method','1','32','0','0','en');
INSERT INTO met_language VALUES('2521','josAlways','Not limited to','1','31','0','0','en');
INSERT INTO met_language VALUES('2522','cvAddtime','Submit time','1','28','0','0','en');
INSERT INTO met_language VALUES('2523','cvPosition','apply for job','1','26','4','0','en');
INSERT INTO met_language VALUES('2524','jobtip3','Day (not limited to)','1','25','15','0','en');
INSERT INTO met_language VALUES('2525','jobnow','Today is','1','23','15','0','en');
INSERT INTO met_language VALUES('2526','jobtip2','Be careful not to change the format.','1','24','15','0','en');
INSERT INTO met_language VALUES('2527','jobdeal','Wages','1','22','15','0','en');
INSERT INTO met_language VALUES('2528','jobtip1','Person (not limited to)','1','21','15','0','en');
INSERT INTO met_language VALUES('2529','jobpublish','Release date','1','19','15','0','en');
INSERT INTO met_language VALUES('2530','joblife','Effective time','1','18','15','0','en');
INSERT INTO met_language VALUES('2531','jobnum','Number of recruits','1','16','15','0','en');
INSERT INTO met_language VALUES('2532','jobaddress','work place','1','17','15','0','en');
INSERT INTO met_language VALUES('2533','jobposition','Jobs','1','15','15','0','en');
INSERT INTO met_language VALUES('2534','setfootstat','Bottom code','1','11','39','0','en');
INSERT INTO met_language VALUES('2535','setfootOther','other information','1','10','39','0','en');
INSERT INTO met_language VALUES('2536','setfootAddressCode','Address Postcode','1','8','39','0','en');
INSERT INTO met_language VALUES('2537','setfootVersion','Copyright Information','1','7','39','0','en');
INSERT INTO met_language VALUES('2538','article6','parameter settings','1','6','0','0','en');
INSERT INTO met_language VALUES('2539','article4','Sort the larger the value of the more front','1','4','0','0','en');
INSERT INTO met_language VALUES('2540','article1','Optional attributes','1','1','0','0','en');
INSERT INTO met_language VALUES('2541','copyotherlang6','Please select the language to copy to','1','139','5','0','en');
INSERT INTO met_language VALUES('2542','copyotherlang5','Level 2 and Level 3 can not be copied separately, please copy together with a level or upgrade to a level','1','139','5','0','en');
INSERT INTO met_language VALUES('2543','copyotherlang4','The column already exists in the copy language, please copy the content directly','1','138','5','0','en');
INSERT INTO met_language VALUES('2544','copyotherlang2','Copy content','1','136','5','0','en');
INSERT INTO met_language VALUES('2545','ctitleinfo','Is used to set the SEO parameters set in the title structure','1','134','0','0','en');
INSERT INTO met_language VALUES('2546','copyotherlang1','Copy to other languages','1','135','5','0','en');
INSERT INTO met_language VALUES('2547','listproductre','related products','1','132','9','0','en');
INSERT INTO met_language VALUES('2548','listproductreok','Not related','1','133','9','0','en');
INSERT INTO met_language VALUES('2549','parameter3','text','1','123','25','0','en');
INSERT INTO met_language VALUES('2550','parameter4','Multiple choice','1','124','25','0','en');
INSERT INTO met_language VALUES('2551','parameter5','annex','1','125','25','0','en');
INSERT INTO met_language VALUES('2552','parameter6','Radio','1','126','25','0','en');
INSERT INTO met_language VALUES('2553','parameter8','tel','1','9','2','0','en');
INSERT INTO met_language VALUES('2554','parameter9','email','1','9','2','0','en');
INSERT INTO met_language VALUES('2555','allcategory','All sections','1','127','0','0','en');
INSERT INTO met_language VALUES('2556','category','belongs to part','1','40','3','0','en');
INSERT INTO met_language VALUES('2557','listTitle','Setting Options','1','130','0','0','en');
INSERT INTO met_language VALUES('2558','parameter1','short','1','121','25','0','en');
INSERT INTO met_language VALUES('2559','parameter2','drop down','1','122','25','0','en');
INSERT INTO met_language VALUES('2560','parametertype','Field Type','1','119','0','0','en');
INSERT INTO met_language VALUES('2561','columnmtitle','Page Title','1','118','0','0','en');
INSERT INTO met_language VALUES('2562','columnmappend','Additional content:','1','116','0','0','en');
INSERT INTO met_language VALUES('2563','columnmore','More','1','117','3','0','en');
INSERT INTO met_language VALUES('2564','columnmfeedback','Feedback form settings','1','108','0','0','en');
INSERT INTO met_language VALUES('2565','columnmnotallow','Not allowed','1','105','0','0','en');
INSERT INTO met_language VALUES('2566','columnmeditor','Edit section','1','103','19','0','en');
INSERT INTO met_language VALUES('2567','columnmallow','allow','1','104','0','0','en');
INSERT INTO met_language VALUES('2568','columnmove','Move column','1','97','0','0','en');
INSERT INTO met_language VALUES('2569','columnmove1','mobile','1','98','0','0','en');
INSERT INTO met_language VALUES('2570','columnexplain7','This feature is compatible with the old version (the role of the column in the foreground corresponding display)','1','95','0','0','en');
INSERT INTO met_language VALUES('2571','columnerr7','Promoted to a column','1','87','5','0','en');
INSERT INTO met_language VALUES('2572','columnerr4','The directory name already exists and may already be used','1','84','30','0','en');
INSERT INTO met_language VALUES('2573','columntip14','Is the use of static pages set to set the URL of the way, do not add html suffix, does not support special characters','1','80','0','0','en');
INSERT INTO met_language VALUES('2574','columnImg2','Column picture','1','74','0','0','en');
INSERT INTO met_language VALUES('2575','columnshow','Add content','1','75','0','0','en');
INSERT INTO met_language VALUES('2576','columnhref','link address','1','71','5','0','en');
INSERT INTO met_language VALUES('2577','columntip7','Links to external websites need to add http or https, such as: https://www.metinfo.cn/','1','72','0','0','en');
INSERT INTO met_language VALUES('2578','columnImg1','Logo picture','1','73','0','0','en');
INSERT INTO met_language VALUES('2579','columnSEO','Search engine optimization settings (seo)','1','70','0','0','en');
INSERT INTO met_language VALUES('2580','columnhtmlname','Static page name','1','69','0','0','en');
INSERT INTO met_language VALUES('2581','columnaddOrder','order','1','68','0','0','en');
INSERT INTO met_language VALUES('2582','columnReverseSort','Reverse order','1','67','0','0','en');
INSERT INTO met_language VALUES('2583','columncontentorder','List page Sort by','1','66','0','0','en');
INSERT INTO met_language VALUES('2584','columnnav4','Show','1','63','0','0','en');
INSERT INTO met_language VALUES('2585','columnnewwindow','open in a new window','1','64','0','0','en');
INSERT INTO met_language VALUES('2586','columnnav3','Tail navigation bar','1','62','0','0','en');
INSERT INTO met_language VALUES('2587','columnnav2','Head main navigation bar','1','61','0','0','en');
INSERT INTO met_language VALUES('2588','columntip1','Please refer to','1','59','0','0','en');
INSERT INTO met_language VALUES('2589','columnnav1','Do not show','1','60','0','0','en');
INSERT INTO met_language VALUES('2590','columnctitle','Column title (title)','1','53','0','0','en');
INSERT INTO met_language VALUES('2591','columnmark','Column style','1','56','0','0','en');
INSERT INTO met_language VALUES('2592','columndocument','Directory name','1','51','32','0','en');
INSERT INTO met_language VALUES('2593','columnmodule','Own module','1','50','5','0','en');
INSERT INTO met_language VALUES('2594','columnnav','Navigation bar is displayed','1','49','0','0','en');
INSERT INTO met_language VALUES('2595','columnnamemarkinfo','Other settings (set according to the template configuration instructions)','1','48','0','0','en');
INSERT INTO met_language VALUES('2596','columnnamemark','Column modification name','1','47','3','0','en');
INSERT INTO met_language VALUES('2597','columnname','program name','1','46','0','0','en');
INSERT INTO met_language VALUES('2598','addinfo','Add content','1','38','0','0','en');
INSERT INTO met_language VALUES('2599','downloadurl','download link','1','36','40','0','en');
INSERT INTO met_language VALUES('2600','modpublish','publisher','1','29','0','0','en');
INSERT INTO met_language VALUES('2601','modimgurls','Thumbnail','1','28','13','0','en');
INSERT INTO met_language VALUES('2602','modimgurl','The map\'s address','1','26','13','0','en');
INSERT INTO met_language VALUES('2603','modClass3','Three columns','1','21','5','0','en');
INSERT INTO met_language VALUES('2604','modClass2','Second column','1','20','5','0','en');
INSERT INTO met_language VALUES('2605','mod101','Picture list','1','15','0','0','en');
INSERT INTO met_language VALUES('2606','mod7','Message system','1','8','0','0','en');
INSERT INTO met_language VALUES('2607','mod8','Feedback system','1','9','0','0','en');
INSERT INTO met_language VALUES('2608','mod9','Links','1','10','0','0','en');
INSERT INTO met_language VALUES('2609','mod10','Member Centre','1','11','0','0','en');
INSERT INTO met_language VALUES('2610','mod11','Site Search','1','12','0','0','en');
INSERT INTO met_language VALUES('2611','mod12','Sitemap','1','13','0','0','en');
INSERT INTO met_language VALUES('2612','mod100','Product List','1','14','0','0','en');
INSERT INTO met_language VALUES('2613','unitytxt_77','Update content automatically update the site map','1','441','32','0','en');
INSERT INTO met_language VALUES('2614','mod6','Recruitment system','1','7','0','0','en');
INSERT INTO met_language VALUES('2615','mod3','Product module','1','4','0','0','en');
INSERT INTO met_language VALUES('2616','mod4','Download module','1','5','0','0','en');
INSERT INTO met_language VALUES('2617','mod5','Picture module','1','6','0','0','en');
INSERT INTO met_language VALUES('2618','mod2','Article module','1','3','0','0','en');
INSERT INTO met_language VALUES('2619','mod1','Profile module','1','2','0','0','en');
INSERT INTO met_language VALUES('2620','modout','External module','1','1','0','0','en');
INSERT INTO met_language VALUES('2621','please_choose','please choose','1','127','0','0','en');
INSERT INTO met_language VALUES('2622','onlinetel','Phone or other instructions','1','116','23','0','en');
INSERT INTO met_language VALUES('2623','onlineskin','style','1','114','23','0','en');
INSERT INTO met_language VALUES('2624','onlineimg','icon','1','115','3','0','en');
INSERT INTO met_language VALUES('2625','onlineskintype','Color style','1','113','23','0','en');
INSERT INTO met_language VALUES('2626','setskinOnline9','Fixed to the right of the page','1','102','23','0','en');
INSERT INTO met_language VALUES('2627','setskinOnline5','Distance from browser side','1','98','23','0','en');
INSERT INTO met_language VALUES('2628','setskinOnline6','From the top of the browser','1','99','23','0','en');
INSERT INTO met_language VALUES('2629','setskinOnline3','Right with the screen scroll','1','96','23','0','en');
INSERT INTO met_language VALUES('2630','setskinOnline10','Location','1','96','23','0','en');
INSERT INTO met_language VALUES('2631','indexflashaddflash','Add Banner','1','92','4','0','en');
INSERT INTO met_language VALUES('2632','setskinOnline','Online communication','1','93','23','0','en');
INSERT INTO met_language VALUES('2633','setskinOnline1','Pinned to the left of the page','1','94','23','0','en');
INSERT INTO met_language VALUES('2634','setskinOnline2','Home left scroll with the screen','1','95','23','0','en');
INSERT INTO met_language VALUES('2635','indexflashexplain9','The link address needs to be http://or https://. After adding buttons and setting button links, it must be empty here.','1','90','4','0','en');
INSERT INTO met_language VALUES('2636','indexflashexplain4','Multiple pictures suggest keeping the size of the picture consistent','1','86','4','0','en');
INSERT INTO met_language VALUES('2637','flashHome','Home page','1','79','4','0','en');
INSERT INTO met_language VALUES('2638','setflashImgHref','link address','1','68','4','0','en');
INSERT INTO met_language VALUES('2639','setflashImgUrl','The map\'s address','1','67','4','0','en');
INSERT INTO met_language VALUES('2640','setflashPixel','Pixel','1','65','0','0','en');
INSERT INTO met_language VALUES('2641','setflashSize','Banner size','1','63','4','0','en');
INSERT INTO met_language VALUES('2642','setflashName','Picture title','1','61','0','0','en');
INSERT INTO met_language VALUES('2643','indexsetFriendly','Links','1','55','0','0','en');
INSERT INTO met_language VALUES('2644','skinstyle','style','1','43','36','0','en');
INSERT INTO met_language VALUES('2645','skinusenow','Enabled','1','40','0','0','en');
INSERT INTO met_language VALUES('2646','skininfo','information','1','42','3','0','en');
INSERT INTO met_language VALUES('2647','skinuse','Enable now','1','39','0','0','en');
INSERT INTO met_language VALUES('2648','settopcolumns','A column','1','21','0','0','en');
INSERT INTO met_language VALUES('2649','setskinproduct2','The current column shows the lower column list','1','17','0','0','en');
INSERT INTO met_language VALUES('2650','setskinproduct1','Show a list of all the information under the list','1','16','0','0','en');
INSERT INTO met_language VALUES('2651','setskindatecontent','Time display format','1','14','0','0','en');
INSERT INTO met_language VALUES('2652','setskinListPage','List','1','2','0','0','en');
INSERT INTO met_language VALUES('2653','setbasicTip13','The default email service mode is TLS (available from email service provider) <br /> If you use TLS mode 25 port can not send mail, try using SSL 465-port send','1','422','39','0','en');
INSERT INTO met_language VALUES('2654','setbasicSMTPWay','sending method','1','420','39','0','en');
INSERT INTO met_language VALUES('2655','setbasicTip12','For mail sending port (consulting E-mail service providers, TLS is generally 25, SSL is generally 465)','1','421','39','0','en');
INSERT INTO met_language VALUES('2656','setbasicSMTPPort','Send port','1','419','39','0','en');
INSERT INTO met_language VALUES('2657','password31','Verification code has been sent to the specified number','1','413','10','0','en');
INSERT INTO met_language VALUES('2658','password30','The password retrieving function is not available. Make sure the background mailbox server is set correctly.','1','413','10','0','en');
INSERT INTO met_language VALUES('2659','password29','E-mail to retrieve','1','412','10','0','en');
INSERT INTO met_language VALUES('2660','password27','Retrieve with phone number','1','410','10','0','en');
INSERT INTO met_language VALUES('2661','password25','new password:','1','408','10','0','en');
INSERT INTO met_language VALUES('2662','password26','Enter:','1','409','10','0','en');
INSERT INTO met_language VALUES('2663','password20','Next step','1','403','0','0','en');
INSERT INTO met_language VALUES('2664','password21','Back to login','1','404','10','0','en');
INSERT INTO met_language VALUES('2665','password24','username:','1','407','10','0','en');
INSERT INTO met_language VALUES('2666','password16','Verify success! Please set your new password.','1','399','10','0','en');
INSERT INTO met_language VALUES('2667','password14','Did not find the user\'s email address, please retrieve the password by other means','1','397','10','0','en');
INSERT INTO met_language VALUES('2668','password13','Unable to use SMS to retrieve password function','1','396','10','0','en');
INSERT INTO met_language VALUES('2669','password12','If you have an Internet connection, you may receive an SMS message after receiving an SMS message. Please wait for a moment or try again later.','1','395','10','0','en');
INSERT INTO met_language VALUES('2670','password11','Please enter the SMS verification code received by your mobile phone, and then click Next.','1','394','10','0','en');
INSERT INTO met_language VALUES('2671','password10','Serial number','1','393','10','0','en');
INSERT INTO met_language VALUES('2672','password8','Did not find the phone corresponding to the user, please retrieve the password by other means','1','391','10','0','en');
INSERT INTO met_language VALUES('2673','password9','You request to reset the password, validation code','1','392','10','0','en');
INSERT INTO met_language VALUES('2674','password7','Did not find this user','1','390','10','0','en');
INSERT INTO met_language VALUES('2675','password6','The user\'s mobile phone number was not found. Please find the password by other means.','1','389','10','0','en');
INSERT INTO met_language VALUES('2676','password5','Please enter the administrator\'s e-mail address:','1','388','10','0','en');
INSERT INTO met_language VALUES('2677','password4','Please enter the administrator\'s e-mail address. You will receive an e-mail containing a link to create a new password.','1','387','10','0','en');
INSERT INTO met_language VALUES('2678','password3','Please enter the administrator\'s e-mail address:','1','386','10','0','en');
INSERT INTO met_language VALUES('2679','password2','Please enter the Administrator\'s mobile phone number, and then click Next, you will receive a SMS check code.','1','385','10','0','en');
INSERT INTO met_language VALUES('2680','password1','Please choose how to retrieve your password:','1','384','10','0','en');
INSERT INTO met_language VALUES('2681','lang64','Chinese (simplified)','1','383','16','0','en');
INSERT INTO met_language VALUES('2682','lang62','Vietnamese','1','381','16','0','en');
INSERT INTO met_language VALUES('2683','lang63','traditional Chinese)','1','382','16','0','en');
INSERT INTO met_language VALUES('2684','lang61','English','1','380','16','0','en');
INSERT INTO met_language VALUES('2685','lang60','Indonesian','1','379','16','0','en');
INSERT INTO met_language VALUES('2686','lang59','Urdu','1','378','16','0','en');
INSERT INTO met_language VALUES('2687','lang54','Yiddish','1','373','16','0','en');
INSERT INTO met_language VALUES('2688','lang53','Italian','1','372','16','0','en');
INSERT INTO met_language VALUES('2689','lang48','Greek','1','367','16','0','en');
INSERT INTO met_language VALUES('2690','lang49','Spanish Basque','1','368','16','0','en');
INSERT INTO met_language VALUES('2691','lang50','Spanish','1','369','16','0','en');
INSERT INTO met_language VALUES('2692','lang51','Hungarian','1','370','16','0','en');
INSERT INTO met_language VALUES('2693','lang47','Hebrew','1','366','16','0','en');
INSERT INTO met_language VALUES('2694','lang46','Ukrainian','1','365','16','0','en');
INSERT INTO met_language VALUES('2695','lang45','Welsh','1','364','16','0','en');
INSERT INTO met_language VALUES('2696','lang43','Thai','1','362','16','0','en');
INSERT INTO met_language VALUES('2697','lang44','Turkish','1','363','16','0','en');
INSERT INTO met_language VALUES('2698','lang42','Swahili','1','361','16','0','en');
INSERT INTO met_language VALUES('2699','lang37','Japanese','1','356','16','0','en');
INSERT INTO met_language VALUES('2700','lang38','Swedish','1','357','16','0','en');
INSERT INTO met_language VALUES('2701','lang39','Serbian','1','358','16','0','en');
INSERT INTO met_language VALUES('2702','lang40','Slovak','1','359','16','0','en');
INSERT INTO met_language VALUES('2703','lang41','Slovenian','1','360','16','0','en');
INSERT INTO met_language VALUES('2704','lang36','Portuguese','1','355','16','0','en');
INSERT INTO met_language VALUES('2705','lang35','Norwegian','1','354','16','0','en');
INSERT INTO met_language VALUES('2706','lang33','Macedonian','1','352','16','0','en');
INSERT INTO met_language VALUES('2707','lang32','Malay','1','351','16','0','en');
INSERT INTO met_language VALUES('2708','lang31','Maltese','1','350','16','0','en');
INSERT INTO met_language VALUES('2709','lang30','Romanian','1','349','16','0','en');
INSERT INTO met_language VALUES('2710','lang29','Lithuanian','1','348','16','0','en');
INSERT INTO met_language VALUES('2711','lang28','Latvian','1','347','16','0','en');
INSERT INTO met_language VALUES('2712','lang27','Latin','1','346','16','0','en');
INSERT INTO met_language VALUES('2713','lang26','Croatian','1','345','16','0','en');
INSERT INTO met_language VALUES('2714','lang25','Czech','1','344','16','0','en');
INSERT INTO met_language VALUES('2715','lang24','Catalan','1','343','16','0','en');
INSERT INTO met_language VALUES('2716','lang23','Galician','1','342','16','0','en');
INSERT INTO met_language VALUES('2717','lang22','Dutch','1','341','16','0','en');
INSERT INTO met_language VALUES('2718','lang21','Korean','1','340','16','0','en');
INSERT INTO met_language VALUES('2719','lang20','Haitian Creole','1','339','16','0','en');
INSERT INTO met_language VALUES('2720','lang17','Finnish','1','336','16','0','en');
INSERT INTO met_language VALUES('2721','lang16','Filipino','1','335','16','0','en');
INSERT INTO met_language VALUES('2722','lang14','Russian','1','333','16','0','en');
INSERT INTO met_language VALUES('2723','lang11','Boolean (Afrikaans)','1','330','16','0','en');
INSERT INTO met_language VALUES('2724','lang15','French','1','334','16','0','en');
INSERT INTO met_language VALUES('2725','lang12','Danish','1','331','16','0','en');
INSERT INTO met_language VALUES('2726','lang13','German','1','332','16','0','en');
INSERT INTO met_language VALUES('2727','lang3','Azerbaijani','1','322','16','0','en');
INSERT INTO met_language VALUES('2728','lang4','Irish','1','323','16','0','en');
INSERT INTO met_language VALUES('2729','lang5','Estonian','1','324','16','0','en');
INSERT INTO met_language VALUES('2730','lang6','Belarusian','1','325','16','0','en');
INSERT INTO met_language VALUES('2731','lang7','Bulgarian','1','326','16','0','en');
INSERT INTO met_language VALUES('2732','lang8','Icelandic','1','327','16','0','en');
INSERT INTO met_language VALUES('2733','lang9','Polish','1','328','16','0','en');
INSERT INTO met_language VALUES('2734','lang10','Persian','1','329','16','0','en');
INSERT INTO met_language VALUES('2735','lang2','Arabic','1','321','16','0','en');
INSERT INTO met_language VALUES('2736','lang1','Albanian','1','320','16','0','en');
INSERT INTO met_language VALUES('2737','langselect','Choose a language','1','318','0','0','en');
INSERT INTO met_language VALUES('2738','langselect1','Please choose the language','1','319','16','0','en');
INSERT INTO met_language VALUES('2739','langwebmanage','Website language','1','316','16','0','en');
INSERT INTO met_language VALUES('2740','langexplain6','Copy local language pack','1','307','16','0','en');
INSERT INTO met_language VALUES('2741','langexplain5','Online Download','1','306','1','0','en');
INSERT INTO met_language VALUES('2742','langexplain4','Copy the language has been the basic language package, such as copying English, the new language will be part of the front of the text will be in English.','1','305','16','0','en');
INSERT INTO met_language VALUES('2743','langexplain2','Language logo','1','303','16','0','en');
INSERT INTO met_language VALUES('2744','langexplain1','Corresponds to the front page of the site part of the text, be careful not to add special symbols, click the bottom of the save button to take effect. (Parameter name: value)','1','302','16','0','en');
INSERT INTO met_language VALUES('2745','langexplain_admin','Corresponding to the text of the back page of the website, please be careful not to add special symbols. Click the save button at the bottom to take effect. (parameter name: value)','1','302','16','0','en');
INSERT INTO met_language VALUES('2746','upfiletips35','Commercial authorization','1','293','2','0','en');
INSERT INTO met_language VALUES('2747','upfiletips37','news','1','295','14','0','en');
INSERT INTO met_language VALUES('2748','upfiletips38','server information','1','296','37','0','en');
INSERT INTO met_language VALUES('2749','upfiletips25','Recycle Bin','1','283','19','0','en');
INSERT INTO met_language VALUES('2750','upfiletips24','Feedback, message and resume submission','1','282','30','0','en');
INSERT INTO met_language VALUES('2751','upfiletips20','Stretch','1','278','13','0','en');
INSERT INTO met_language VALUES('2752','upfiletips21','Leave blank','1','279','13','0','en');
INSERT INTO met_language VALUES('2753','upfiletips22','Cut','1','280','13','0','en');
INSERT INTO met_language VALUES('2754','upfiletips23','Generation method','1','281','13','0','en');
INSERT INTO met_language VALUES('2755','upfiletips19','Watermark','1','277','13','0','en');
INSERT INTO met_language VALUES('2756','upfiletips16','Send the test','1','274','39','0','en');
INSERT INTO met_language VALUES('2757','upfiletips15','100 words or less','1','273','39','0','en');
INSERT INTO met_language VALUES('2758','upfiletips14','Website Description','1','272','39','0','en');
INSERT INTO met_language VALUES('2759','upfiletips13','Multiple keywords separated by vertical comma \",\" , recommended 3-4 keywords.','1','271','39','0','en');
INSERT INTO met_language VALUES('2760','upfiletips10','6.0.0 above version without manual settings, the current login URL is:','1','268','39','0','en');
INSERT INTO met_language VALUES('2761','upfiletips6','Enter','1','264','0','0','en');
INSERT INTO met_language VALUES('2762','upfiletips7','Basic Information','1','265','0','0','en');
INSERT INTO met_language VALUES('2763','upfiletips2','File Manager','1','260','0','0','en');
INSERT INTO met_language VALUES('2764','upfiletips1','Check the list of files','1','259','0','0','en');
INSERT INTO met_language VALUES('2765','dataexplain10','database backup','1','256','8','0','en');
INSERT INTO met_language VALUES('2766','dataexplain7','<span style = \"float: right;\"> Usually used when moving, take up more space </ span> Back up data and files (database, user files, program files)','1','253','8','0','en');
INSERT INTO met_language VALUES('2767','dataexplain6','<span style = \"float: right;\"> Generally do not backup, take up more space </ span> Backup uploaded files (pictures, documents, etc.)','1','252','8','0','en');
INSERT INTO met_language VALUES('2768','dataexplain5','<span style = \"float: right;\"> Recommended monthly backup, take up a little space </ span> Back up your data (without uploaded files)','1','251','8','0','en');
INSERT INTO met_language VALUES('2769','dataexplain2','You can upload database backup files, support sql or zip','1','248','8','0','en');
INSERT INTO met_language VALUES('2770','dataexplain1','There is currently no data','1','247','8','0','en');
INSERT INTO met_language VALUES('2771','databackup8','Compress the whole station','1','245','8','0','en');
INSERT INTO met_language VALUES('2772','databackup6','Upload folder backup','1','243','8','0','en');
INSERT INTO met_language VALUES('2773','databackup2','restore','1','239','8','0','en');
INSERT INTO met_language VALUES('2774','databackup3','download','1','240','8','0','en');
INSERT INTO met_language VALUES('2775','databackup4','Backup','1','241','8','0','en');
INSERT INTO met_language VALUES('2776','setimgTopMid','Top','1','233','13','0','en');
INSERT INTO met_language VALUES('2777','setimgLowMid','The bottom','1','235','13','0','en');
INSERT INTO met_language VALUES('2778','setimgRightMid','Right middle','1','234','13','0','en');
INSERT INTO met_language VALUES('2779','setimgLeftLow','Lower left','1','232','13','0','en');
INSERT INTO met_language VALUES('2780','setimgRightLow','Bottom right','1','231','13','0','en');
INSERT INTO met_language VALUES('2781','setimgRightTop','Top right','1','230','13','0','en');
INSERT INTO met_language VALUES('2782','setimgLeftTop','Top left','1','229','13','0','en');
INSERT INTO met_language VALUES('2783','setimgMid','intermediate','1','228','13','0','en');
INSERT INTO met_language VALUES('2784','setimgPosition','Watermark location','1','227','13','0','en');
INSERT INTO met_language VALUES('2785','setimgWordAngle','Watermark text angle','1','199','0','0','en');
INSERT INTO met_language VALUES('2786','setimgTip5','Level is 0','1','200','0','0','en');
INSERT INTO met_language VALUES('2787','setimgWordColor','Watermark text color','1','201','0','0','en');
INSERT INTO met_language VALUES('2788','setimgTip4','Please put the font file in the background management directory admin / include / fonts /','1','198','13','0','en');
INSERT INTO met_language VALUES('2789','setimgWordFont','Watermark text font','1','197','13','0','en');
INSERT INTO met_language VALUES('2790','setimgWordSize2','Big picture watermark text size','1','196','13','0','en');
INSERT INTO met_language VALUES('2791','setimgWord','Watermark text','1','193','13','0','en');
INSERT INTO met_language VALUES('2792','setimgTip3','Does not support Chinese (Chinese watermark needs to download Chinese fonts to support)','1','194','13','0','en');
INSERT INTO met_language VALUES('2793','setimgWordSize','Thumbnail watermark text size','1','195','13','0','en');
INSERT INTO met_language VALUES('2794','setimgImgWatermark','Image watermark','1','189','13','0','en');
INSERT INTO met_language VALUES('2795','setimgImg','Thumbnail watermark image','1','190','13','0','en');
INSERT INTO met_language VALUES('2796','setimgImg2','Big picture watermark picture','1','191','13','0','en');
INSERT INTO met_language VALUES('2797','setimgTip2','Only .jpg | .png formats are supported','1','192','13','0','en');
INSERT INTO met_language VALUES('2798','setimgWatermarkType','Watermark type','1','187','13','0','en');
INSERT INTO met_language VALUES('2799','setimgWordWatermark','Text watermark','1','188','13','0','en');
INSERT INTO met_language VALUES('2800','setimgThumb','Thumbnail add watermark','1','186','13','0','en');
INSERT INTO met_language VALUES('2801','setimgWatermark','Set effective range','1','184','13','0','en');
INSERT INTO met_language VALUES('2802','setimgBigImg','Add watermark to detailed large image','1','185','13','0','en');
INSERT INTO met_language VALUES('2803','setimgrename2','Renaming a file name helps to reduce the anomaly','1','183','30','0','en');
INSERT INTO met_language VALUES('2804','setimgrename','Automatic rename','1','181','30','0','en');
INSERT INTO met_language VALUES('2805','setimgrename1','Rename the uploaded file name automatically','1','182','30','0','en');
INSERT INTO met_language VALUES('2806','setimgWater','Automatic generated','1','179','0','0','en');
INSERT INTO met_language VALUES('2807','setimgHeight','high','1','176','0','0','en');
INSERT INTO met_language VALUES('2808','setimgPixel','Pixel','1','175','0','0','en');
INSERT INTO met_language VALUES('2809','setimgWidth','width','1','174','0','0','en');
INSERT INTO met_language VALUES('2810','authTip2','The business registration code you entered does not match the domain name!','1','160','0','0','en');
INSERT INTO met_language VALUES('2811','authKey','Key','1','158','0','0','en');
INSERT INTO met_language VALUES('2812','authAuthorizedCode','Authorization code','1','159','0','0','en');
INSERT INTO met_language VALUES('2813','setfilesize','File size','1','134','0','0','en');
INSERT INTO met_language VALUES('2814','setsafemember','Submit a verification code at the front desk','1','127','30','0','en');
INSERT INTO met_language VALUES('2815','setsafeadmin','Background login verification code','1','126','30','0','en');
INSERT INTO met_language VALUES('2816','setsafeupdate','Delete the upgrade file','1','124','30','0','en');
INSERT INTO met_language VALUES('2817','setsafeupdate1','After deletion, you can enhance the website\'s security performance','1','125','30','0','en');
INSERT INTO met_language VALUES('2818','setsafeinstall','Delete the installation file','1','123','30','0','en');
INSERT INTO met_language VALUES('2819','setsafeadminname1c','Only the founder can be modified, does not support Chinese, after some space to modify the file name need to manually modify the folder name via FTP, the current background URL:','1','122','30','0','en');
INSERT INTO met_language VALUES('2820','setsafeadminname','Background folder name','1','118','30','0','en');
INSERT INTO met_language VALUES('2821','setsafeadminname1','Safety advice:','1','119','30','0','en');
INSERT INTO met_language VALUES('2822','setdbNotExist','file does not exist','1','114','30','0','en');
INSERT INTO met_language VALUES('2823','setdbArchiveOK','Compression successful','1','115','8','0','en');
INSERT INTO met_language VALUES('2824','setdbImportOK','Import successful','1','111','8','0','en');
INSERT INTO met_language VALUES('2825','setdbBackupOK','Database backup is completed!','1','109','8','0','en');
INSERT INTO met_language VALUES('2826','setdbTip2','Data can not be backed up to the server! Please check','1','104','8','0','en');
INSERT INTO met_language VALUES('2827','setdbTip3','Whether the directory is writable','1','105','8','0','en');
INSERT INTO met_language VALUES('2828','setdbImportData','Import','1','101','8','0','en');
INSERT INTO met_language VALUES('2829','setdbLack','Missing sub-volumes','1','100','8','0','en');
INSERT INTO met_language VALUES('2830','setdbFilesize','File size','1','97','8','0','en');
INSERT INTO met_language VALUES('2831','setdbTime','Backup time','1','98','8','0','en');
INSERT INTO met_language VALUES('2832','setdbNumber','Sub-volume','1','99','8','0','en');
INSERT INTO met_language VALUES('2833','setdbsysver','system version','1','96','8','0','en');
INSERT INTO met_language VALUES('2834','setdbFilename','file name','1','95','8','0','en');
INSERT INTO met_language VALUES('2835','setdbImport','Import backup data','1','88','8','0','en');
INSERT INTO met_language VALUES('2836','langshuom','Description','1','86','3','0','en');
INSERT INTO met_language VALUES('2837','langtype','Language status','1','85','0','0','en');
INSERT INTO met_language VALUES('2838','langnameorder','Do not repeat with other languages','1','80','16','0','en');
INSERT INTO met_language VALUES('2839','langnamerepeat','Language ID can not be repeated','1','81','16','0','en');
INSERT INTO met_language VALUES('2840','langone','The system has only one language, can not be deleted!','1','82','16','0','en');
INSERT INTO met_language VALUES('2841','langnamenull','Language name can not be empty','1','77','16','0','en');
INSERT INTO met_language VALUES('2842','langouturlinfo','Be sure to include http: // or https: //. The program that accesses this domain automatically jumps to this language (you need to do a good name binding) or do an external link.','1','74','16','0','en');
INSERT INTO met_language VALUES('2843','langnewwindows','open in a new window','1','75','16','0','en');
INSERT INTO met_language VALUES('2844','langmarkinfo','Please use English letters, such as cn, can not be repeated with other language logo','1','71','16','0','en');
INSERT INTO met_language VALUES('2845','langurlinfo','The site language that is displayed by default when the site is visited','1','69','16','0','en');
INSERT INTO met_language VALUES('2846','langurlinfo1','Web language displayed by default when the website background is visited','1','69','16','0','en');
INSERT INTO met_language VALUES('2847','langorderinfo','Can not repeat','1','70','16','0','en');
INSERT INTO met_language VALUES('2848','langadminyes','The administrator can choose the background language before logging in','1','66','16','0','en');
INSERT INTO met_language VALUES('2849','langsw','Language switching','1','68','16','0','en');
INSERT INTO met_language VALUES('2850','langhome','default language','1','63','16','0','en');
INSERT INTO met_language VALUES('2851','langchok','Generally linked to the form displayed in the upper right corner of the front desk','1','62','16','0','en');
INSERT INTO met_language VALUES('2852','langch','Simplified and Traditional automatic switching','1','60','16','0','en');
INSERT INTO met_language VALUES('2853','langwebeditor','Edit parameters','1','58','16','0','en');
INSERT INTO met_language VALUES('2854','langmark','Language logo','1','54','0','0','en');
INSERT INTO met_language VALUES('2855','langouturl','Independent domain name','1','55','16','0','en');
INSERT INTO met_language VALUES('2856','langpara','Plugin language','1','57','16','0','en');
INSERT INTO met_language VALUES('2857','langflag','Flag sign','1','53','16','0','en');
INSERT INTO met_language VALUES('2858','langname','Language name','1','52','16','0','en');
INSERT INTO met_language VALUES('2859','langadd','Add a new language','1','50','16','0','en');
INSERT INTO met_language VALUES('2860','langweb','Website language','1','49','0','0','en');
INSERT INTO met_language VALUES('2861','langadmin','Adminsite language','1','49','0','0','en');
INSERT INTO met_language VALUES('2862','setbasicTip11','E-mail password used to send mail','1','47','39','0','en');
INSERT INTO met_language VALUES('2863','setbasicTip10','Such as QQ mailbox smtp.qq.com','1','45','39','0','en');
INSERT INTO met_language VALUES('2864','setbasicSMTPPassword','email Password','1','46','39','0','en');
INSERT INTO met_language VALUES('2865','setbasicSMTPServer','SMTP','1','44','39','0','en');
INSERT INTO met_language VALUES('2866','setbasicTip8','E-mail account used to send mail','1','43','39','0','en');
INSERT INTO met_language VALUES('2867','setbasicEmailAccount','email address','1','42','39','0','en');
INSERT INTO met_language VALUES('2868','setbasicTip7','The sender\'s name is displayed','1','41','39','0','en');
INSERT INTO met_language VALUES('2869','setbasicTip5','Multiple please use | separated','1','33','30','0','en');
INSERT INTO met_language VALUES('2870','setbasicTip6','Outbox settings (all mail within the station are sent by this email, such as member password retrieve mail, etc.)','1','34','39','0','en');
INSERT INTO met_language VALUES('2871','setbasicFromName','Sender','1','35','39','0','en');
INSERT INTO met_language VALUES('2872','setbasicEnableFormat','File formats allowed to be uploaded','1','32','30','0','en');
INSERT INTO met_language VALUES('2873','setbasicUploadMax','File upload maximum','1','31','30','0','en');
INSERT INTO met_language VALUES('2874','setbasicWebName','Website name','1','29','39','0','en');
INSERT INTO met_language VALUES('2875','setbasicWebInfoSet','Website basic information settings','1','28','0','0','en');
INSERT INTO met_language VALUES('2876','reserved','all rights reserved','1','24','37','0','en');
INSERT INTO met_language VALUES('2877','copyright','Changsha Mituo Information Technology Co., Ltd. (MetInfo Inc.)','1','25','0','0','en');
INSERT INTO met_language VALUES('2878','setbasicTip14','gmail mailbox need space to support SSL, please open SSL, or replaced by other mail! ! !','1','429','39','0','en');
INSERT INTO met_language VALUES('2879','setbasicTip15','Space does not support SSL send mail, please open SSL, or replaced by TLS! ! !','1','430','39','0','en');
INSERT INTO met_language VALUES('2880','feedbackautosms','SMS reply settings','1','177','0','0','en');
INSERT INTO met_language VALUES('2881','fdincAutosms','SMS reply','1','178','0','0','en');
INSERT INTO met_language VALUES('2882','fdincAutoContentsms','Reply SMS content','1','179','0','0','en');
INSERT INTO met_language VALUES('2883','fdincTipsms','Check the box will automatically reply to the user text messages, you need to use the SMS feature in my application to recharge SMS','1','180','0','0','en');
INSERT INTO met_language VALUES('2884','fdinctellsms','Contact phone field name','1','181','0','0','en');
INSERT INTO met_language VALUES('2885','fdinctells','Used to retrieve the user\'s contact number in order to reply to a text message. Field type must be \"tel\"','1','182','0','0','en');
INSERT INTO met_language VALUES('2886','hotsearches','popular searches','1','431','16','0','en');
INSERT INTO met_language VALUES('2887','updatenow','upgrade immediately','1','437','0','0','en');
INSERT INTO met_language VALUES('2888','updatelater','Upgrade later','1','438','0','0','en');
INSERT INTO met_language VALUES('2889','tag','TAG label','1','434','0','0','en');
INSERT INTO met_language VALUES('2890','displaytype','Front display','1','183','0','0','en');
INSERT INTO met_language VALUES('2891','checkupdate','Check for updates','1','439','0','0','en');
INSERT INTO met_language VALUES('2892','checkupdatetips','I am sorry! You do not have enough privileges to upgrade online.','1','440','0','0','en');
INSERT INTO met_language VALUES('2893','paraname','name','1','187','0','0','en');
INSERT INTO met_language VALUES('2894','message_name','Name field name','1','240','20','0','en');
INSERT INTO met_language VALUES('2895','message_name1','Used to get the user\'s name, field type must be \"short\"','1','241','20','0','en');
INSERT INTO met_language VALUES('2896','message_content','Message content field name','1','242','20','0','en');
INSERT INTO met_language VALUES('2897','message_content1','Used to obtain the user\'s message content, field type must be \"text\"','1','243','20','0','en');
INSERT INTO met_language VALUES('2898','message_AcceptMail','Message mail receiving mailbox','1','244','20','0','en');
INSERT INTO met_language VALUES('2899','column_searchname','Please enter the column name','1','246','0','0','en');
INSERT INTO met_language VALUES('2900','jsx38','You do not have full control, please contact the administrator to open','1','446','0','0','en');
INSERT INTO met_language VALUES('2901','formerror1','Please fill in this field.','1','0','0','0','en');
INSERT INTO met_language VALUES('2902','formerror2','Please choose one of these options.','1','0','0','0','en');
INSERT INTO met_language VALUES('2903','formerror3','Please enter the correct phone number.','1','0','0','0','en');
INSERT INTO met_language VALUES('2904','formerror4','Please enter the correct email address.','1','0','0','0','en');
INSERT INTO met_language VALUES('2905','formerror5','The password entered twice is different. Please re-enter it.','1','0','0','0','en');
INSERT INTO met_language VALUES('2906','formerror6','Please enter at least & metinfo & characters.','1','0','0','0','en');
INSERT INTO met_language VALUES('2907','formerror7','Input can not exceed & metinfo & characters.','1','0','0','0','en');
INSERT INTO met_language VALUES('2908','formerror8','The number of characters entered must be between & metinfo &.','1','0','0','0','en');
INSERT INTO met_language VALUES('2909','style_Settings','Style set','1','0','0','0','en');
INSERT INTO met_language VALUES('2910','All_empty_message','Clear all the news','1','0','0','0','en');
INSERT INTO met_language VALUES('2911','manually_static_rules','Part of the space need to manually set the pseudo-static rules file','1','0','32','0','en');
INSERT INTO met_language VALUES('2912','pseudo_static','See pseudo-static rules','1','0','32','0','en');
INSERT INTO met_language VALUES('2913','sys_static','Pseudo-static','1','0','32','0','en');
INSERT INTO met_language VALUES('2914','anchor_textadd','Add anchor text','1','0','11','0','en');
INSERT INTO met_language VALUES('2915','applies_paper','Only in front of the page content text, such as article details page content text.','1','0','32','0','en');
INSERT INTO met_language VALUES('2916','configuration_section','Configure the column','1','0','0','0','en');
INSERT INTO met_language VALUES('2917','template_code1','Please enter the template number','1','0','3','0','en');
INSERT INTO met_language VALUES('2918','industry_segments','Industry breakdown','1','0','3','0','en');
INSERT INTO met_language VALUES('2919','color_filter','Color screening','1','0','3','0','en');
INSERT INTO met_language VALUES('2920','industry_screening','Industry screening','1','0','3','0','en');
INSERT INTO met_language VALUES('2921','set_password','The third step: set the payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2922','login_password','Bit. Pay for the application need to enter the payment password, please do not be consistent with the login password.','1','0','3','0','en');
INSERT INTO met_language VALUES('2923','services_future','Can be used to retrieve the password and get more services in the future of the application market','1','0','3','0','en');
INSERT INTO met_language VALUES('2924','personal_information','Step two: set up personal information','1','0','3','0','en');
INSERT INTO met_language VALUES('2925','sys_password','login password','1','0','3','0','en');
INSERT INTO met_language VALUES('2926','create_account','The first step: create an account','1','0','3','0','en');
INSERT INTO met_language VALUES('2927','buy_time','Purchase time','1','0','3','0','en');
INSERT INTO met_language VALUES('2928','please_click','Payment is successful, please click! !','1','0','3','0','en');
INSERT INTO met_language VALUES('2929','payment_method','Please select mode of payment','1','0','3','0','en');
INSERT INTO met_language VALUES('2930','sys_unionpay','UnionPay','1','0','3','0','en');
INSERT INTO met_language VALUES('2931','enter_amount','Please enter the recharge amount','1','0','3','0','en');
INSERT INTO met_language VALUES('2932','payment_amount','Payment amount','1','0','3','0','en');
INSERT INTO met_language VALUES('2933','account_Settings','User Center','1','0','3','0','en');
INSERT INTO met_language VALUES('2934','consumption_record','Expenses record','1','0','3','0','en');
INSERT INTO met_language VALUES('2935','website_manually','After successful login your website will automatically log in to this account, unless you manually exit.','1','0','3','0','en');
INSERT INTO met_language VALUES('2936','application_market','Log in to the MetInfo User Center','1','0','3','0','en');
INSERT INTO met_language VALUES('2937','installations','Installation volume','1','0','0','0','en');
INSERT INTO met_language VALUES('2938','permission_download','No permission to download','1','0','3','0','en');
INSERT INTO met_language VALUES('2939','goods_comment','Buy a product before commenting','1','0','3','0','en');
INSERT INTO met_language VALUES('2940','product_commented','The same product up to comment 3 times','1','0','3','0','en');
INSERT INTO met_language VALUES('2941','password_mistake','Pay the wrong password','1','0','3','0','en');
INSERT INTO met_language VALUES('2942','please_again','Please log in to the App Store. The App Store uses an independent account system. If you do not have an account, please register first!','1','0','3','0','en');
INSERT INTO met_language VALUES('2943','have_bought','bought','1','0','3','0','en');
INSERT INTO met_language VALUES('2944','download_application','The current system can not download this application, please upgrade the system','1','0','3','0','en');
INSERT INTO met_language VALUES('2945','sys_evaluation','Evaluation of success! Thank you for your comment!','1','0','3','0','en');
INSERT INTO met_language VALUES('2946','downloads','start download','1','0','3','0','en');
INSERT INTO met_language VALUES('2947','click_rating','Please click star rating!','1','0','3','0','en');
INSERT INTO met_language VALUES('2948','payment_password','New payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2949','original_password1','Please enter the original payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2950','original_password','The original payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2951','password_length','Password length','1','0','3','0','en');
INSERT INTO met_language VALUES('2952','please_enter','Please enter a new password','1','0','3','0','en');
INSERT INTO met_language VALUES('2953','login_password_new','New login password','1','0','3','0','en');
INSERT INTO met_language VALUES('2954','original_passwords1','Please enter the original password','1','0','3','0','en');
INSERT INTO met_language VALUES('2955','original_passwords','The original login password','1','0','3','0','en');
INSERT INTO met_language VALUES('2956','account_password','Please fill in the application market account login password, rather than website login password.','1','0','3','0','en');
INSERT INTO met_language VALUES('2957','please_password','Please enter your password','1','0','3','0','en');
INSERT INTO met_language VALUES('2958','login_password1','You must fill in the login password to modify the data','1','0','3','0','en');
INSERT INTO met_language VALUES('2959','popular_template','Hot template','1','0','3','0','en');
INSERT INTO met_language VALUES('2960','popular_application','Popular applications','1','0','3','0','en');
INSERT INTO met_language VALUES('2961','number_installation','Installation times','1','0','3','0','en');
INSERT INTO met_language VALUES('2962','application_name','Application Name','1','0','3','0','en');
INSERT INTO met_language VALUES('2963','introduction_developers','Developer Profile','1','0','3','0','en');
INSERT INTO met_language VALUES('2964','sys_head','Avatar','1','0','3','0','en');
INSERT INTO met_language VALUES('2965','name_developers','Developer name','1','0','3','0','en');
INSERT INTO met_language VALUES('2966','dont_fill','Not fill','1','0','3','0','en');
INSERT INTO met_language VALUES('2967','mouse_click_rating','Mouse over the star to click on the score','1','0','3','0','en');
INSERT INTO met_language VALUES('2968','score','score','1','0','3','0','en');
INSERT INTO met_language VALUES('2969','want_comment','I want to comment','1','0','3','0','en');
INSERT INTO met_language VALUES('2970','back','Previous page','1','0','1','0','en');
INSERT INTO met_language VALUES('2971','running_environment','Operating environment','1','0','3','0','en');
INSERT INTO met_language VALUES('2972','updated_date','Updated','1','0','3','0','en');
INSERT INTO met_language VALUES('2973','online_presentation','Online demo','1','0','3','0','en');
INSERT INTO met_language VALUES('2974','screenshots','Screenshots','1','0','3','0','en');
INSERT INTO met_language VALUES('2975','is_introduced','Introduction','1','0','3','0','en');
INSERT INTO met_language VALUES('2976','comments','comment','1','0','3','0','en');
INSERT INTO met_language VALUES('2977','evaluation','Person evaluation)','1','0','3','0','en');
INSERT INTO met_language VALUES('2978','total_of','(Total','1','0','3','0','en');
INSERT INTO met_language VALUES('2979','pay_password','Pay the password','1','0','3','0','en');
INSERT INTO met_language VALUES('2980','temporary_access1','Please enter the temporary access domain name, it must be a third-level domain name.','1','0','3','0','en');
INSERT INTO met_language VALUES('2981','temporary_access','Temporary access to the domain name','1','0','3','0','en');
INSERT INTO met_language VALUES('2982','top_domain_names','Top level domain','1','0','3','0','en');
INSERT INTO met_language VALUES('2983','buy_template_must','After the purchase process will automatically get the current site domain name and binding, after this template can only be used under the binding domain name.','1','0','3','0','en');
INSERT INTO met_language VALUES('2984','amount_of','Amount','1','0','3','0','en');
INSERT INTO met_language VALUES('2985','purchase_program','Purchase item','1','0','3','0','en');
INSERT INTO met_language VALUES('2986','success_payment','After payment is successful, please click this link to jump! !','1','0','3','0','en');
INSERT INTO met_language VALUES('2987','latest_version','It is the latest version','1','0','3','0','en');
INSERT INTO met_language VALUES('2988','pay_success','payment successful','1','0','3','0','en');
INSERT INTO met_language VALUES('2989','be_updated','Can be updated to','1','0','1','0','en');
INSERT INTO met_language VALUES('2990','update_log','Update log','1','0','1','0','en');
INSERT INTO met_language VALUES('2991','current_version','current version','1','0','1','0','en');
INSERT INTO met_language VALUES('2992','program_information','Program information','1','0','1','0','en');
INSERT INTO met_language VALUES('2993','system_maintenance','System maintenance','1','0','0','0','en');
INSERT INTO met_language VALUES('2994','link_remote','Link is not on the remote server','1','0','0','0','en');
INSERT INTO met_language VALUES('2995','try_again','Retry','1','0','0','0','en');
INSERT INTO met_language VALUES('2996','give_installation','Abandon the installation','1','0','0','0','en');
INSERT INTO met_language VALUES('2997','configuratio_template','Configure the template','1','0','0','0','en');
INSERT INTO met_language VALUES('2998','seconds_background','After a second refresh the background','1','0','0','0','en');
INSERT INTO met_language VALUES('2999','installation_complete','The installation is complete','1','0','0','0','en');
INSERT INTO met_language VALUES('3000','installation','installing','1','0','0','0','en');
INSERT INTO met_language VALUES('3001','possible_reasons','Possible Causes','1','0','0','0','en');
INSERT INTO met_language VALUES('3002','download_interrupt','File download interrupted','1','0','0','0','en');
INSERT INTO met_language VALUES('3003','write_permission','The file does not have write permission or the newly created subfolder does not have write permission','1','0','0','0','en');
INSERT INTO met_language VALUES('3004','download','downloading','1','0','0','0','en');
INSERT INTO met_language VALUES('3005','following_documents','The following documents did not modify permissions, can not be upgraded!','1','0','0','0','en');
INSERT INTO met_language VALUES('3006','document_upgrade','System upgrade documentation','1','0','0','0','en');
INSERT INTO met_language VALUES('3007','file_permissions','File permissions detection','1','0','0','0','en');
INSERT INTO met_language VALUES('3008','anchor_text','Station anchor text','1','0','11','0','en');
INSERT INTO met_language VALUES('3009','please_select','Please select a section','1','0','0','0','en');
INSERT INTO met_language VALUES('3010','log_successfully','Landed successfully','1','0','0','0','en');
INSERT INTO met_language VALUES('3011','out_of_success','exit successfully','1','0','3','0','en');
INSERT INTO met_language VALUES('3012','password_changing','Pay the password change','1','0','3','0','en');
INSERT INTO met_language VALUES('3013','login_password_changing','Login password change','1','0','3','0','en');
INSERT INTO met_language VALUES('3014','account_information','Account information settings','1','0','3','0','en');
INSERT INTO met_language VALUES('3015','my_bill','Recharge record','1','0','0','0','en');
INSERT INTO met_language VALUES('3016','keep_sorting','Save the order','1','0','0','0','en');
INSERT INTO met_language VALUES('3017','structure_mode','Composition way','1','0','32','0','en');
INSERT INTO met_language VALUES('3018','title_cannot_empty!','The title can not be blank!','1','0','0','0','en');
INSERT INTO met_language VALUES('3019','adaptive','Adaptive','1','0','4','0','en');
INSERT INTO met_language VALUES('3020','delete_information','Are you sure you want to delete this information? Can not be restored after deleted.','1','0','1','0','en');
INSERT INTO met_language VALUES('3021','page_for_details','Details page','1','0','36','0','en');
INSERT INTO met_language VALUES('3022','default_values','Defaults','1','0','0','0','en');
INSERT INTO met_language VALUES('3023','label','label','1','0','0','0','en');
INSERT INTO met_language VALUES('3024','for','for','1','0','0','0','en');
INSERT INTO met_language VALUES('3025','verify_password','Please enter the password again','1','0','3','0','en');
INSERT INTO met_language VALUES('3026','Repeat_password','Repeat password','1','0','3','0','en');
INSERT INTO met_language VALUES('3027','for_details','Application Details','1','0','3','0','en');
INSERT INTO met_language VALUES('3028','template','template','1','0','3','0','en');
INSERT INTO met_language VALUES('3029','application','Services','1','0','3','0','en');
INSERT INTO met_language VALUES('3030','Prompt_password','Please enter the password','1','0','3','0','en');
INSERT INTO met_language VALUES('3031','alipay','Alipay','1','0','0','0','en');
INSERT INTO met_language VALUES('3032','account','account number','1','0','0','0','en');
INSERT INTO met_language VALUES('3033','Prompt_email','Please input the email address','1','0','3','0','en');
INSERT INTO met_language VALUES('3034','mailbox','mailbox','1','0','0','0','en');
INSERT INTO met_language VALUES('3035','Prompt_mobile','Please enter the phone number','1','0','3','0','en');
INSERT INTO met_language VALUES('3036','Prompt_user','Please enter your username','1','0','3','0','en');
INSERT INTO met_language VALUES('3037','balance','Balance','1','0','3','0','en');
INSERT INTO met_language VALUES('3038','buy_records','Purchase History','1','0','3','0','en');
INSERT INTO met_language VALUES('3039','registration','registered','1','0','0','0','en');
INSERT INTO met_language VALUES('3040','landing','Login','1','0','0','0','en');
INSERT INTO met_language VALUES('3041','page_range','Page range','1','0','0','0','en');
INSERT INTO met_language VALUES('3042','sys_navigation','Navigation: column settings can be adjusted whether the new window opens.','1','0','35','0','en');
INSERT INTO met_language VALUES('3043','sys_navigation2','When displaying the column list, the pictures need to be uploaded in the column settings (column pictures).','1','0','35','0','en');
INSERT INTO met_language VALUES('3044','suggested_size','Recommended size','1','0','35','0','en');
INSERT INTO met_language VALUES('3045','website_information','Website information','1','0','39','0','en');
INSERT INTO met_language VALUES('3046','email_Settings','Send mailbox configuration','1','0','39','0','en');
INSERT INTO met_language VALUES('3047','third_party_code','Third-party code','1','0','0','0','en');
INSERT INTO met_language VALUES('3048','please_login','please log in first!','1','0','0','0','en');
INSERT INTO met_language VALUES('3049','next_page','next page','1','0','1','0','en');
INSERT INTO met_language VALUES('3050','background_page','Background Home','1','0','0','0','en');
INSERT INTO met_language VALUES('3051','modify_information','modify personal information','1','0','0','0','en');
INSERT INTO met_language VALUES('3052','sys_select','Featured','1','0','3','0','en');
INSERT INTO met_language VALUES('3053','should_used','Application','1','0','3','0','en');
INSERT INTO met_language VALUES('3054','sys_template','Template','1','0','3','0','en');
INSERT INTO met_language VALUES('3055','sys_purchase','buy','1','0','3','0','en');
INSERT INTO met_language VALUES('3056','sys_payment','Pay','1','0','3','0','en');
INSERT INTO met_language VALUES('3057','extension_school','Rice Extension College','1','0','0','0','en');
INSERT INTO met_language VALUES('3058','the_bit','Bit','1','0','0','0','en');
INSERT INTO met_language VALUES('3059','the_server','server','1','0','0','0','en');
INSERT INTO met_language VALUES('3060','the_version','version','1','0','0','0','en');
INSERT INTO met_language VALUES('3061','safety_efficiency','Safety and efficiency','1','0','36','0','en');
INSERT INTO met_language VALUES('3062','data_processing','Backup and recovery','1','0','36','0','en');
INSERT INTO met_language VALUES('3063','appearance','Site templates','1','0','0','0','en');
INSERT INTO met_language VALUES('3064','the_user','user','1','0','8','0','en');
INSERT INTO met_language VALUES('3065','safety','Safety','1','0','8','0','en');
INSERT INTO met_language VALUES('3066','attention','attention','1','0','0','0','en');
INSERT INTO met_language VALUES('3067','author','Author','1','0','0','0','en');
INSERT INTO met_language VALUES('3068','sys_authorization1','Enter the business license','1','0','0','0','en');
INSERT INTO met_language VALUES('3069','sys_authorization2','Understand commercial licensing','1','0','0','0','en');
INSERT INTO met_language VALUES('3070','detection','checking','1','0','0','0','en');
INSERT INTO met_language VALUES('3071','entry_authorization','Re-enter the authorization','1','0','0','0','en');
INSERT INTO met_language VALUES('3072','display_number','Number of tabs displayed','1','0','36','0','en');
INSERT INTO met_language VALUES('3073','corresponding_products','Each column can be set separately. If it is not set separately, the configuration of the upper column can be invoked.','1','0','36','0','en');
INSERT INTO met_language VALUES('3074','tab_title1','Tab a title','1','0','36','0','en');
INSERT INTO met_language VALUES('3075','tab_title2','Tab two titles','1','0','36','0','en');
INSERT INTO met_language VALUES('3076','tab_title3','Tab three titles','1','0','36','0','en');
INSERT INTO met_language VALUES('3077','tab_title4','Tab four titles','1','0','36','0','en');
INSERT INTO met_language VALUES('3078','tab_title5','Tab Five Title','1','0','36','0','en');
INSERT INTO met_language VALUES('3079','download_prompt','Ongoing download, please do not operate the page!','1','0','0','0','en');
INSERT INTO met_language VALUES('3080','purchase_application','The purchase of the application can only act on the current website','1','0','0','0','en');
INSERT INTO met_language VALUES('3081','text_color','Text color','1','0','41','0','en');
INSERT INTO met_language VALUES('3082','the_menu','Mobile menu','1','0','41','0','en');
INSERT INTO met_language VALUES('3083','background_color','background color','1','0','41','0','en');
INSERT INTO met_language VALUES('3084','external_links','external link','1','0','0','0','en');
INSERT INTO met_language VALUES('3085','appmarket_jurisdiction','You do not have permission to view the app market, please contact the administrator to open.','1','0','0','0','en');
INSERT INTO met_language VALUES('3086','setup_permissions','You do not have set permissions, please contact the administrator to open.','1','0','0','0','en');
INSERT INTO met_language VALUES('3087','release','Add to','1','0','0','0','en');
INSERT INTO met_language VALUES('3088','administration','management','1','0','0','0','en');
INSERT INTO met_language VALUES('3089','customers','Online Service','1','0','0','0','en');
INSERT INTO met_language VALUES('3090','seo','SEO','1','0','32','0','en');
INSERT INTO met_language VALUES('3091','member','member','1','0','38','0','en');
INSERT INTO met_language VALUES('3092','language','Language','1','0','0','0','en');
INSERT INTO met_language VALUES('3093','htmltopseudo','Static page pseudo-static','1','0','11','0','en');
INSERT INTO met_language VALUES('3094','htmltopseudotips','Use pseudo-static way to achieve static page URL, the current static page URL unchanged. SEO effect will not be affected. Need space to support pseudo-static, and will delete the static page file.','1','0','11','0','en');
INSERT INTO met_language VALUES('3095','timedrelease','Regular release','1','0','0','0','en');
INSERT INTO met_language VALUES('3096','mod_rewrite_column','Open pseudo-static space environment configuration required to open the mod_rewrite module, if not open the contact space solution.','1','0','32','0','en');
INSERT INTO met_language VALUES('3097','displaytype2','Front desk hidden','1','0','0','0','en');
INSERT INTO met_language VALUES('3098','js73','Static page name has been used','1','0','0','0','en');
INSERT INTO met_language VALUES('3099','js74','Only supports Chinese, uppercase and lowercase letters, numbers, underline','1','0','0','0','en');
INSERT INTO met_language VALUES('3100','js75','Name available','1','0','0','0','en');
INSERT INTO met_language VALUES('3101','js76','Please add columns and then set the page content on this page','1','0','0','0','en');
INSERT INTO met_language VALUES('3102','unrecom','Cancel recommended','1','0','0','0','en');
INSERT INTO met_language VALUES('3103','untop','Unpin','1','0','0','0','en');
INSERT INTO met_language VALUES('3104','modistauts','Status changes','1','0','0','0','en');
INSERT INTO met_language VALUES('3105','goods','commodity','1','0','0','0','en');
INSERT INTO met_language VALUES('3106','js77','The name of the background folder supports only uppercase and lowercase letters, numbers, and underscores','1','0','0','0','en');
INSERT INTO met_language VALUES('3107','js78','Administrator name can not be repeated','1','0','0','0','en');
INSERT INTO met_language VALUES('3108','banner_pcheight_v6','Computer-side height','1','0','4','0','en');
INSERT INTO met_language VALUES('3109','banner_setalert_v6','Fill the value, (eg 300, representing 300px) suggested adaptive height','1','0','4','0','en');
INSERT INTO met_language VALUES('3110','banner_pidheight_v6','Tablet-side height','1','0','4','0','en');
INSERT INTO met_language VALUES('3111','banner_phoneheight_v6','Phone side height','1','0','4','0','en');
INSERT INTO met_language VALUES('3112','banner_imgtitlecolor_v6','Picture title color','1','0','4','0','en');
INSERT INTO met_language VALUES('3113','banner_needtempsupport_v6','Normally, no settings are required. Some special templates support the front desk before they are displayed.','1','0','4','0','en');
INSERT INTO met_language VALUES('3114','banner_imgdesc_v6','image description','1','0','4','0','en');
INSERT INTO met_language VALUES('3115','banner_imgdesccolor_v6','Picture description color','1','0','4','0','en');
INSERT INTO met_language VALUES('3116','banner_imgwordpos_v6','Image text location','1','0','4','0','en');
INSERT INTO met_language VALUES('3117','posleft','left','1','0','4','0','en');
INSERT INTO met_language VALUES('3118','posright','right','1','0','4','0','en');
INSERT INTO met_language VALUES('3119','posup','on','1','0','4','0','en');
INSERT INTO met_language VALUES('3120','poslower','under','1','0','4','0','en');
INSERT INTO met_language VALUES('3121','poscenter','Center','1','0','4','0','en');
INSERT INTO met_language VALUES('3122','batch_wm_v6','Batch watermarking','1','0','5','0','en');
INSERT INTO met_language VALUES('3123','batch_rmwm_v6','Remove the watermark','1','0','5','0','en');
INSERT INTO met_language VALUES('3124','batch_addwm_v6','Add watermark','1','0','5','0','en');
INSERT INTO met_language VALUES('3125','admin_movetocolumn_v6','Move to the specified column','1','0','0','0','en');
INSERT INTO met_language VALUES('3126','admin_copytocolumn_v6','Copy to the specified column','1','0','0','0','en');
INSERT INTO met_language VALUES('3127','admin_colunmmanage_v6','Column','1','0','0','0','en');
INSERT INTO met_language VALUES('3128','parmanage','Parameter management','1','0','0','0','en');
INSERT INTO met_language VALUES('3129','refresh','Refresh','1','0','0','0','en');
INSERT INTO met_language VALUES('3130','desctext','Description text','1','0','0','0','en');
INSERT INTO met_language VALUES('3131','linkto','Link to','1','0','0','0','en');
INSERT INTO met_language VALUES('3132','releasenow','Publish now','1','0','0','0','en');
INSERT INTO met_language VALUES('3133','js79','Views','1','0','0','0','en');
INSERT INTO met_language VALUES('3134','added','Added','1','0','0','0','en');
INSERT INTO met_language VALUES('3135','column_littleicon_v6','Small icon icon','1','0','5','0','en');
INSERT INTO met_language VALUES('3136','column_choosicon_v6','Choice icon','1','0','5','0','en');
INSERT INTO met_language VALUES('3137','column_inputcolumnfolder_v6','Enter the name of the section folder','1','0','5','0','en');
INSERT INTO met_language VALUES('3138','browserupdatetips','You are using a <strong> obsolete </ strong> browser. Please <a href=https://browsehappy.com/ target=_blank> upgrade your browser </a> to enhance your experience.','1','0','0','0','en');
INSERT INTO met_language VALUES('3139','column_selecticonlib_v6','Icon library selection','1','0','5','0','en');
INSERT INTO met_language VALUES('3140','column_viewicon_v6','Browse icons','1','0','5','0','en');
INSERT INTO met_language VALUES('3141','tips2_v6','Appears at the bottom of the detail page to aggregate the content','1','0','0','0','en');
INSERT INTO met_language VALUES('3142','tips3_v6','Multiple keywords should be separated by \"|\", such as \"building station | enterprise building station\"','1','0','0','0','en');
INSERT INTO met_language VALUES('3143','tips4_v6','Please enter the URL (need to include http or https); after setting the access to the information will be directed to the set URL','1','0','0','0','en');
INSERT INTO met_language VALUES('3144','tips5_v6','Timely release does not support static pages, please close the static pages. (Pseudo-static can be used)','1','0','0','0','en');
INSERT INTO met_language VALUES('3145','tips6_v6','If it is empty, it will be formed automatically according to the system rules. It can be modified in the SEO settings.','1','0','0','0','en');
INSERT INTO met_language VALUES('3146','tips7_v6','When not manually upload pictures, it will automatically extract the first picture as a cover (this feature requires template support)','1','0','0','0','en');
INSERT INTO met_language VALUES('3147','coverimg','cover image','1','0','0','0','en');
INSERT INTO met_language VALUES('3148','articletitle','Article title','1','0','0','0','en');
INSERT INTO met_language VALUES('3149','htmTip3','Generate homepage','1','0','11','0','en');
INSERT INTO met_language VALUES('3150','js81','You do not have the authority to contact the administrator','1','0','0','0','en');
INSERT INTO met_language VALUES('3151','help2','friendly reminder','1','0','0','0','en');
INSERT INTO met_language VALUES('3152','tips8_v6','There is a serious risk in the name of your site admin folder and I suggest you change it as soon as possible','1','0','0','0','en');
INSERT INTO met_language VALUES('3153','nohint','Do not remind again','1','0','0','0','en');
INSERT INTO met_language VALUES('3154','tochange','Go to edit','1','0','0','0','en');
INSERT INTO met_language VALUES('3155','homepage','Home','1','0','0','0','en');
INSERT INTO met_language VALUES('3156','backstage','Panel','1','0','0','0','en');
INSERT INTO met_language VALUES('3157','visualization','Visual','1','0','0','0','en');
INSERT INTO met_language VALUES('3158','opfailed','operation failed','1','0','1','0','en');
INSERT INTO met_language VALUES('3159','opsuccess','operation success','1','0','1','0','en');
INSERT INTO met_language VALUES('3160','unread','Not read','1','0','0','0','en');
INSERT INTO met_language VALUES('3161','language_outputlang_v6','Export language packs','1','0','16','0','en');
INSERT INTO met_language VALUES('3162','language_batchreplace_v6','Bulk replacement language','1','0','16','0','en');
INSERT INTO met_language VALUES('3163','language_copysetting_v6','Copy the basic settings','1','0','16','0','en');
INSERT INTO met_language VALUES('3164','notcopy','Do not copy','1','0','16','0','en');
INSERT INTO met_language VALUES('3165','language_tips1_v6','Based on the selected language copy all the parameters except column content configuration','1','0','16','0','en');
INSERT INTO met_language VALUES('3166','language_tips2_v6','Based on the selected language copy section and content information (share the selected language pictures, attachments, etc.)','1','0','16','0','en');
INSERT INTO met_language VALUES('3167','template_style_tips','Set parameters based on the selected language copy template','1','0','16','0','en');
INSERT INTO met_language VALUES('3168','websitetheme','Website theme style','1','0','16','0','en');
INSERT INTO met_language VALUES('3169','language_backlangchange_v6','Background language switch','1','0','16','0','en');
INSERT INTO met_language VALUES('3170','language_updatelang_v6','Update language pack data <br> Please paste in exactly as you wish','1','0','16','0','en');
INSERT INTO met_language VALUES('3171','message_mailtext_v6',' submitting a message','1','0','20','0','en');
INSERT INTO met_language VALUES('3172','nopicture','No picture','1','0','20','0','en');
INSERT INTO met_language VALUES('3173','message_tips1_v6','Prompt text, blank display, enter the text disappears','1','0','20','0','en');
INSERT INTO met_language VALUES('3174','onlone_onlinelist_v6','Customer list','1','0','23','0','en');
INSERT INTO met_language VALUES('3175','onlone_online_v6','online service','1','0','23','0','en');
INSERT INTO met_language VALUES('3176','online_csname_v6','Customer service name','1','0','23','0','en');
INSERT INTO met_language VALUES('3177','online_taobaocs_v6','Taobao Want','1','0','23','0','en');
INSERT INTO met_language VALUES('3178','online_alics_v6','Ali Want','1','0','23','0','en');
INSERT INTO met_language VALUES('3179','online_tips1_v6','Add QQ need to [shang.qq.com] login in the 【promotion tools - set??security level choose to be completely open, otherwise it will display \"not enabled\" QQ number added to the need to personal QQ settings - permission settings Inside, open the temporary session function, otherwise click QQ, will prompt to add friends to dialogue','1','0','23','0','en');
INSERT INTO met_language VALUES('3180','confirm','determine','1','0','1','0','en');
INSERT INTO met_language VALUES('3181','frontshow','Front display','1','0','0','0','en');
INSERT INTO met_language VALUES('3182','fronthidden','Front desk hidden','1','0','0','0','en');
INSERT INTO met_language VALUES('3183','state','status','1','0','0','0','en');
INSERT INTO met_language VALUES('3184','visitcount','Views','1','0','0','0','en');
INSERT INTO met_language VALUES('3185','selectcolumn','Please select the column','1','0','0','0','en');
INSERT INTO met_language VALUES('3186','tips11_v6','You can drag the picture to adjust the picture order.','1','0','28','0','en');
INSERT INTO met_language VALUES('3187','tips12_v6','Press the \"ctrl\" key on the computer keyboard to select multiple columns at the same time.','1','0','28','0','en');
INSERT INTO met_language VALUES('3188','columumanage','Column','1','0','0','0','en');
INSERT INTO met_language VALUES('3189','titletips','Title (name)','1','0','28','0','en');
INSERT INTO met_language VALUES('3190','seotipssitemap1','Filtering does not appear in the first level of navigation','1','0','32','0','en');
INSERT INTO met_language VALUES('3191','seotips2','The site generated by the site only a first column and the column displayed in the navigation bar. <br /> do not display content and columns, will not be generated in the site map.','1','0','32','0','en');
INSERT INTO met_language VALUES('3192','seotips3','Compared with pure static functions, pseudo-static is more suitable for corporate websites, which can satisfy both SEO optimization and convenient management.','1','0','32','0','en');
INSERT INTO met_language VALUES('3193','defaultlangtag','Default language ID','1','0','32','0','en');
INSERT INTO met_language VALUES('3194','seotips4','After the default language flag is enabled, the default language pseudo-static file will be added at the end of a \"- language label\", such as \"-cn\"','1','0','32','0','en');
INSERT INTO met_language VALUES('3195','uisetTips3','The current page does not have the parameters that can be set. Click the Set and Contents buttons of the corresponding block in the page to set','1','0','36','0','en');
INSERT INTO met_language VALUES('3196','upload_addoutimg_v6','Add an external picture','1','0','1','0','en');
INSERT INTO met_language VALUES('3197','upload_progress_v6','Uploading','1','0','1','0','en');
INSERT INTO met_language VALUES('3198','upload_local_v6','Local upload','1','0','1','0','en');
INSERT INTO met_language VALUES('3199','upload_selectimg_v6','Select a picture','1','0','1','0','en');
INSERT INTO met_language VALUES('3200','upload_pselectimg_v6','Please select the picture','1','0','1','0','en');
INSERT INTO met_language VALUES('3201','upload_libraryimg_v6','Select from the picture library','1','0','1','0','en');
INSERT INTO met_language VALUES('3202','upload_extraimglink_v6','External picture link','1','0','1','0','en');
INSERT INTO met_language VALUES('3203','addbaricon','Address bar icon','1','0','39','0','en');
INSERT INTO met_language VALUES('3204','webset_tips1_v6','If you can not display the new upload icon, clear the browser cache access.','1','0','39','0','en');
INSERT INTO met_language VALUES('3205','webset_tips2_v6','Click to create ICO','1','0','39','0','en');
INSERT INTO met_language VALUES('3206','icontips','.ico file.','1','0','39','0','en');
INSERT INTO met_language VALUES('3207','PC','Computer side','1','0','0','0','en');
INSERT INTO met_language VALUES('3208','memberist','member list','1','0','38','0','en');
INSERT INTO met_language VALUES('3209','membergroup','member group','1','0','38','0','en');
INSERT INTO met_language VALUES('3210','memberattribute','Member properties','1','0','38','0','en');
INSERT INTO met_language VALUES('3211','memberfunc','Member function settings','1','0','38','0','en');
INSERT INTO met_language VALUES('3212','thirdlogin','Social login','1','0','38','0','en');
INSERT INTO met_language VALUES('3213','mailcontentsetting','Mail content settings','1','0','38','0','en');
INSERT INTO met_language VALUES('3214','user_tips1_v6','You can register','1','0','38','0','en');
INSERT INTO met_language VALUES('3215','user_tips2_v6','Contains illegal characters','1','0','38','0','en');
INSERT INTO met_language VALUES('3216','user_tips3_v6','Username already exists','1','0','38','0','en');
INSERT INTO met_language VALUES('3217','user_tips4_v6','Please enter the 6-30 password','1','0','38','0','en');
INSERT INTO met_language VALUES('3218','weixinlogin','Wechat login','1','0','38','0','en');
INSERT INTO met_language VALUES('3219','sinalogin','Weibo login','1','0','38','0','en');
INSERT INTO met_language VALUES('3220','qqlogin','QQ login','1','0','38','0','en');
INSERT INTO met_language VALUES('3221','register','registered','1','0','38','0','en');
INSERT INTO met_language VALUES('3222','lastactive','Last active','1','0','38','0','en');
INSERT INTO met_language VALUES('3223','source','source','1','0','38','0','en');
INSERT INTO met_language VALUES('3224','bindingmail','Bind the mailbox','1','0','38','0','en');
INSERT INTO met_language VALUES('3225','bindingmobile','Binding phone','1','0','38','0','en');
INSERT INTO met_language VALUES('3226','systips1','You do not have permission to access this content! Please login to visit!','1','0','0','0','en');
INSERT INTO met_language VALUES('3227','systips2','Your user group does not have permission to access this content!','1','0','0','0','en');
INSERT INTO met_language VALUES('3228','unrestricted','not limited','1','0','40','0','en');
INSERT INTO met_language VALUES('3229','dowloadauthority','Download permissions','1','0','40','0','en');
INSERT INTO met_language VALUES('3230','save','save','1','0','0','0','en');
INSERT INTO met_language VALUES('3231','baceinfo','Basic Information','1','0','0','0','en');
INSERT INTO met_language VALUES('3232','staticpage','Static page settings','1','162','0','0','en');
INSERT INTO met_language VALUES('3233','pseudostatic','Pseudo-static','1','164','0','0','en');
INSERT INTO met_language VALUES('3234','setequivalentcolumns','The current section','1','22','0','0','en');
INSERT INTO met_language VALUES('3235','veditor','Visual editing','1','0','2','0','en');
INSERT INTO met_language VALUES('3236','veditortips1','Open ','1','0','2','0','en');
INSERT INTO met_language VALUES('3237','funcCollection','Features','1','0','0','0','en');
INSERT INTO met_language VALUES('3238','websiteSet','Website configuration and management','1','0','0','0','en');
INSERT INTO met_language VALUES('3239','systemModule','System module','1','0','0','0','en');
INSERT INTO met_language VALUES('3240','appearanceSetting','Appearance settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3241','basicInfoSet','Basic information configuration','1','0','0','0','en');
INSERT INTO met_language VALUES('3242','multilingual','Language','1','0','0','0','en');
INSERT INTO met_language VALUES('3243','mailSetting','Send mailbox configuration','1','0','0','0','en');
INSERT INTO met_language VALUES('3244','thirdCode','Third-party code to add','1','0','0','0','en');
INSERT INTO met_language VALUES('3245','watermarkThumbnail','Watermark / thumbnail','1','0','0','0','en');
INSERT INTO met_language VALUES('3246','customerService','online service','1','0','0','0','en');
INSERT INTO met_language VALUES('3247','recycleBin','Recycle Bin','1','0','0','0','en');
INSERT INTO met_language VALUES('3248','securityTools','System Security and Tools','1','0','0','0','en');
INSERT INTO met_language VALUES('3249','searchEngineOptimization','SEO search engine optimization','1','0','0','0','en');
INSERT INTO met_language VALUES('3250','seoSetting','SEO parameter settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3251','thirdPartyLogin','Social login settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3252','appAndPlugin','Application plug-ins','1','0','0','0','en');
INSERT INTO met_language VALUES('3253','metShop','Official mall','1','0','0','0','en');
INSERT INTO met_language VALUES('3254','purchase_notice','Purchase Notice','1','0','0','0','en');
INSERT INTO met_language VALUES('3255','commercialAuthorizationCode','Commercial authorization code','1','0','0','0','en');
INSERT INTO met_language VALUES('3256','systips13','Old version template compatible (non-responsive template)','1','0','0','0','en');
INSERT INTO met_language VALUES('3257','mobileSetting','Mobile version set','1','0','0','0','en');
INSERT INTO met_language VALUES('3258','mobileVersion','Mobile version of the appearance','1','0','0','0','en');
INSERT INTO met_language VALUES('3259','uiset_descript_v6','The selected application will appear in the navigation bar [common function] drop-down list','1','0','0','0','en');
INSERT INTO met_language VALUES('3260','uisetTips4','Current page preview','1','0','36','0','en');
INSERT INTO met_language VALUES('3261','uisetTips5','The current page system parameter settings','1','0','36','0','en');
INSERT INTO met_language VALUES('3262','uisetTips6','Page','1','0','36','0','en');
INSERT INTO met_language VALUES('3263','moreSettings','More','1','0','36','0','en');
INSERT INTO met_language VALUES('3264','sysMailboxConfig','Send mailbox configuration','1','0','36','0','en');
INSERT INTO met_language VALUES('3265','navSetting','Navigation menu settings','1','0','36','0','en');
INSERT INTO met_language VALUES('3266','oldBackstage','Panel','1','0','36','0','en');
INSERT INTO met_language VALUES('3267','sysMessage','system information','1','0','36','0','en');
INSERT INTO met_language VALUES('3268','replaceImg','Replace the picture','1','0','36','0','en');
INSERT INTO met_language VALUES('3269','uisetTips8','Hide the element <br> (hide the modified occlusion element, <br> refresh the page can be displayed again)','1','0','36','0','en');
INSERT INTO met_language VALUES('3270','putIntoRecycle','Into the recycling station','1','0','1','0','en');
INSERT INTO met_language VALUES('3271','thoroughlyDeleting','Remove completely','1','0','1','0','en');
INSERT INTO met_language VALUES('3272','websiteContent','Website basic content','1','0','16','0','en');
INSERT INTO met_language VALUES('3273','jslang0','Into the recycling station','1','0','1','0','en');
INSERT INTO met_language VALUES('3274','jslang1','Remove completely','1','0','1','0','en');
INSERT INTO met_language VALUES('3275','jslang2','cancel','1','0','1','0','en');
INSERT INTO met_language VALUES('3276','seotips26','After opening to simplify the front page URL (URL); and end in html (static page function is disabled).','1','0','32','0','en');
INSERT INTO met_language VALUES('3277','systips14','(Please ensure that the pseudo-static function is turned off before opening)','1','0','11','0','en');
INSERT INTO met_language VALUES('3278','systips15','MB (If the website background setting value exceeds the maximum limit of the upload file of the server, the value of the server limit shall prevail)','1','0','30','0','en');
INSERT INTO met_language VALUES('3279','third_code_mobile','Mobile third-party code','1','0','39','0','en');
INSERT INTO met_language VALUES('3280','clearCache','Empty the cache','1','0','1','0','en');
INSERT INTO met_language VALUES('3281','jsx39','(Delete column will delete all the contents of the column)','1','0','5','0','en');
INSERT INTO met_language VALUES('3282','jslang3','No records selected','1','0','1','0','en');
INSERT INTO met_language VALUES('3283','jslang4','Please select the column','1','0','1','0','en');
INSERT INTO met_language VALUES('3284','jslang5','I know','1','0','1','0','en');
INSERT INTO met_language VALUES('3285','jslang6','Expand more settings','1','0','1','0','en');
INSERT INTO met_language VALUES('3286','jslang7','Hide settings','1','0','1','0','en');
INSERT INTO met_language VALUES('3287','newFeedback','You received new feedback','1','0','9','0','en');
INSERT INTO met_language VALUES('3288','wap_descript5_v6','The name cannot be empty!','1','450','41','0','en');
INSERT INTO met_language VALUES('3289','allapp_v6','All applications','1','469','21','0','en');
INSERT INTO met_language VALUES('3290','freeapp_v6','Free application','1','470','21','0','en');
INSERT INTO met_language VALUES('3291','Business_membersapp_v6','Commercial Application','1','471','21','0','en');
INSERT INTO met_language VALUES('3292','payapp','Charge application','1','472','21','0','en');
INSERT INTO met_language VALUES('3293','servicename_v6','Service name','1','473','21','0','en');
INSERT INTO met_language VALUES('3294','appstore_descript1_v6','Technical support service / Renewal','1','474','21','0','en');
INSERT INTO met_language VALUES('3295','appstore_Servicescope_v6','Service scope','1','475','21','0','en');
INSERT INTO met_language VALUES('3296','appstore_descript2_v6','MetInfo product service (installation, upgrading, moving, troubleshooting and processing, server debugging','1','476','21','0','en');
INSERT INTO met_language VALUES('3297','appstore_descript3_v6','Direct help.','1','477','21','0','en');
INSERT INTO met_language VALUES('3298','appstore_descript4_v6','Server debugging: setting up the server environment for the first time and handling the server environment problems related to the MetInfo failure.','1','478','21','0','en');
INSERT INTO met_language VALUES('3299','appstore_descript5_v6','Professional solutions (product use / skill, SEO optimization, network marketing)','1','479','21','0','en');
INSERT INTO met_language VALUES('3300','appstore_descript6_v6','Help analysis, provide solutions and guidance, and do not provide operational services.','1','480','21','0','en');
INSERT INTO met_language VALUES('3301','appstore_descript7_v6','The scope of service is subject to the above content. If unmarked, the service is not provided.','1','481','21','0','en');
INSERT INTO met_language VALUES('3302','appstore_descript8_v6','There is no service provided in the following case','1','482','21','0','en');
INSERT INTO met_language VALUES('3303','appstore_descript9_v6','Problems generated by self modification or use of non original MetInfo code','1','483','21','0','en');
INSERT INTO met_language VALUES('3304','appstore_descript10_v6','Problems caused by unofficially developed application plug-ins and made templates (the third party application / template on the application store is a service range)','1','484','21','0','en');
INSERT INTO met_language VALUES('3305','appstore_descript11_v6','System failures caused by server and virtual host causes','1','485','21','0','en');
INSERT INTO met_language VALUES('3306','appstore_descript12_v6','Unauthorized removal of copyright information without a commercial authorization','1','486','21','0','en');
INSERT INTO met_language VALUES('3307','appstore_descript13_v6','Does not contain website content maintenance, picture processing, source code modification.','1','487','21','0','en');
INSERT INTO met_language VALUES('3308','appstore_servicemode_v6','service mode','1','488','21','0','en');
INSERT INTO met_language VALUES('3309','appstore_descript14_v6','Submission of work list: troubleshooting, problem consulting (daily)','1','489','21','0','en');
INSERT INTO met_language VALUES('3310','appstore_descript15_v6','Online consulting: problem consulting (only working day online, online time: 08:30 - 17:30)','1','490','21','0','en');
INSERT INTO met_language VALUES('3311','appstore_descript16_v6','Application store account login MetInfo official network can also obtain work list, online consulting services (not to access the background of the site of the recommended use).','1','491','21','0','en');
INSERT INTO met_language VALUES('3312','appstore_descript17_v6','Select service length','1','492','21','0','en');
INSERT INTO met_language VALUES('3313','appstore_descript18_v6','One month (300 yuan)','1','493','21','0','en');
INSERT INTO met_language VALUES('3314','appstore_descript19_v6','Three months (500 yuan)','1','494','21','0','en');
INSERT INTO met_language VALUES('3315','appstore_descript20_v6','One year (1000 yuan)','1','495','21','0','en');
INSERT INTO met_language VALUES('3316','appstore_QQsalesconsulting_v6','QQ sales consulting','1','496','21','0','en');
INSERT INTO met_language VALUES('3317','appstore_descript21_v6','Consult QQ for details of service','1','497','21','0','en');
INSERT INTO met_language VALUES('3318','appstore_descript22_v6','Single service price: the website moves 200 yuan / times, the website installs 100 yuan / times, the website upgrade 100 yuan, the malfunction processing 100 yuan','1','498','21','0','en');
INSERT INTO met_language VALUES('3319','appstore_descript23_v6','The login password of the application store account','1','499','21','0','en');
INSERT INTO met_language VALUES('3320','appstore_descript24_v6','Clear and comply with the above service scope and service mode','1','500','21','0','en');
INSERT INTO met_language VALUES('3321','appstore_descript25_v6','Immediately open / renew','1','501','21','0','en');
INSERT INTO met_language VALUES('3322','appstore_descript26_v6','Template making / modifying service provider','1','502','21','0','en');
INSERT INTO met_language VALUES('3323','appstore_sign_v6','sign','1','503','21','0','en');
INSERT INTO met_language VALUES('3324','appstore_name_v6','Name','1','504','21','0','en');
INSERT INTO met_language VALUES('3325','appstore_type_v6','type','1','505','21','0','en');
INSERT INTO met_language VALUES('3326','appstore_place_v6','region','1','506','21','0','en');
INSERT INTO met_language VALUES('3327','appstore_Abilityvalue_v6','Ability value','1','507','21','0','en');
INSERT INTO met_language VALUES('3328','appstore_descript27_v6','How do businesses enter?','1','508','21','0','en');
INSERT INTO met_language VALUES('3329','appstore_descript28_v6','Description of business entry','1','509','21','0','en');
INSERT INTO met_language VALUES('3330','appstore_Admissionrequirements_v6','Admission requirements','1','510','21','0','en');
INSERT INTO met_language VALUES('3331','appstore_descript29_v6','Business entry instructions have been awarded the title of \"official certification template designer\".','1','511','21','0','en');
INSERT INTO met_language VALUES('3332','appstore_descript30_v6','Completion of official template training and successful completion','1','512','21','0','en');
INSERT INTO met_language VALUES('3333','appstore_descript31_v6','Order this registration training','1','513','21','0','en');
INSERT INTO met_language VALUES('3334','appstore_descript32_v6','Line a set of charge templates to the application store.','1','514','21','0','en');
INSERT INTO met_language VALUES('3335','appstore_Admissionprocess_v6','Admission process','1','515','21','0','en');
INSERT INTO met_language VALUES('3336','appstore_descript33_v6','1. Contact the official business co - operation Commissioner:','1','516','21','0','en');
INSERT INTO met_language VALUES('3337','appstore_descript34_v6','QQ inviting investment','1','517','21','0','en');
INSERT INTO met_language VALUES('3338','appstore_descript35_v6','QQ joined 2, registered to participate in the official template production training and won the title of \"official certification template designer\".','1','518','21','0','en');
INSERT INTO met_language VALUES('3339','appstore_descript36_v6','3, through the official network audit and the smooth line of a set of charging templates to the application store.','1','519','21','0','en');
INSERT INTO met_language VALUES('3340','appstore_descript37_v6','4, provide the information required by the merchants to enter, and the official verification.','1','520','21','0','en');
INSERT INTO met_language VALUES('3341','appstore_descript38_v6','5, formally entered.','1','521','21','0','en');
INSERT INTO met_language VALUES('3342','appstore_descript39_v6','The standard and audit of a set of works to the application store will be very strict, because we need to ensure that the end users can get enough professional technical services.','1','522','21','0','en');
INSERT INTO met_language VALUES('3343','appstore_service_v6','service','1','523','21','0','en');
INSERT INTO met_language VALUES('3344','appstore_Spacedomain_name_v6','Space domain name','1','524','21','0','en');
INSERT INTO met_language VALUES('3345','appstore_Worryfree_service_v6','Worry free service','1','525','21','0','en');
INSERT INTO met_language VALUES('3346','appstore_buildweb_v6','Set up dinner set','1','526','21','0','en');
INSERT INTO met_language VALUES('3347','appstore_Thirdcooperation_v6','Third party cooperation','1','527','21','0','en');
INSERT INTO met_language VALUES('3348','appstore_downshowdata_v6','Downloading demo data','1','528','21','0','en');
INSERT INTO met_language VALUES('3349','banner_column_v6','column','1','533','4','0','en');
INSERT INTO met_language VALUES('3350','batch_watermarking_v6','Batch watermarking operation','1','538','5','0','en');
INSERT INTO met_language VALUES('3351','open_allchildcolumn_v6','Unfold all the subsections','1','541','7','0','en');
INSERT INTO met_language VALUES('3352','column_descript1_v6','The directory name only lowercase letters or numbers, and can not duplicate and other columns!','1','542','7','0','en');
INSERT INTO met_language VALUES('3353','add_to_v6','Add to','1','543','7','0','en');
INSERT INTO met_language VALUES('3354','seo_set_v6','SEO settings','1','544','7','0','en');
INSERT INTO met_language VALUES('3355','content_name_v6','Name','1','553','7','0','en');
INSERT INTO met_language VALUES('3356','html_createend_v6','Completion','1','559','1','0','en');
INSERT INTO met_language VALUES('3357','html_createfail_v6','Generation failure','1','560','11','0','en');
INSERT INTO met_language VALUES('3358','online_addkefu_v6','Add customer service','1','561','23','0','en');
INSERT INTO met_language VALUES('3359','pay_WeChat_v6','WeChat','1','628','26','0','en');
INSERT INTO met_language VALUES('3360','notauthen','Uncertified','1','9','2','0','en');
INSERT INTO met_language VALUES('3361','rnvalidate','Real name authentication','1','9','2','0','en');
INSERT INTO met_language VALUES('3362','mobile_logo','Wapsite LOGO','1','9','2','0','en');
INSERT INTO met_language VALUES('3363','mobile_banner_tips1','(When you do not upload pictures of mobile phones, the banner diagrams of mobile hones are consistent with the computer terminals.)','1','9','2','0','en');
INSERT INTO met_language VALUES('3364','langexisted','Lang Existed','1','9','2','0','en');
INSERT INTO met_language VALUES('3365','fdincTip12','Backstage display list item','1','49','0','0','en');
INSERT INTO met_language VALUES('3366','fdincTip13','You can only select drop-down, radio and multi-choice feedback fields. After setting and saving here, please go to \"Feedback Form Settings\" to set up the relevant product columns.','1','559','1','0','en');
INSERT INTO met_language VALUES('3367','unitytxt_1','Function setting','1','0','1','0','en');
INSERT INTO met_language VALUES('3368','enter_folder','Double click the folder icon and enter the folder to select the picture.','1','0','1','0','en');
INSERT INTO met_language VALUES('3369','fliptext2','loading','1','0','1','0','en');
INSERT INTO met_language VALUES('3370','memberarayname','Memberaray name','1','0','11','0','en');
INSERT INTO met_language VALUES('3371','thumbs_tips1_v6','After saving and modifying, please go to the visual interface and click on the frequently used function - clear the thumbnail for this save to take effect.','1','0','0','0','en');
INSERT INTO met_language VALUES('3372','recahrge_tips','After recharging, a refund of 2% will be deducted, and within 60 days after the recharge, the invoice application can be submitted in the \"user center financial center invoice application\".','1','0','0','0','en');
INSERT INTO met_language VALUES('3373','sys_lang_operate','system languag opreate','1','0','0','0','en');
INSERT INTO met_language VALUES('3374','edit_app_lang','Edit plugin language','1','0','0','0','en');
INSERT INTO met_language VALUES('3375','product_para_tips','The link field type requires foreground template support. If the template is not supported, the attachment type can be used for function substitution.','1','0','0','0','en');
INSERT INTO met_language VALUES('3376','met_template_nofile','Template folder does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3377','met_template_fileexist','Template already exists','1','0','0','50002','en');
INSERT INTO met_language VALUES('3378','met_template_noconfigfile','Template profile does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3379','met_template_falsedelui','Failed to delete UI','1','0','0','50002','en');
INSERT INTO met_language VALUES('3380','met_template_falsedeluiconfig','Deleting UI configuration failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3381','met_template_falsedelconfig','Delete global configuration failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3382','met_template_downloadfalse','download failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3383','met_template_downloadok','download successful','1','0','0','50002','en');
INSERT INTO met_language VALUES('3384','met_template_temnoexist','Template does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3385','met_template_demonoexist','Demo data does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3386','met_template_upzipdemofalse','Unpacking demo data failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3387','met_template_upzipok','Decompression succeeded','1','0','0','50002','en');
INSERT INTO met_language VALUES('3388','met_template_installok','Successful installation','1','0','0','50002','en');
INSERT INTO met_language VALUES('3389','met_template_templates','UI business template','1','0','0','50002','en');
INSERT INTO met_language VALUES('3390','met_template_othertemplates','Other templates','1','0','0','50002','en');
INSERT INTO met_language VALUES('3391','met_template_installdemo','Install demo data','1','0','0','50002','en');
INSERT INTO met_language VALUES('3392','met_template_deletteminfo','Are you sure you want to delete this template? Cannot be restored after deletion.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3393','met_template_nodelet','System app does not allow deletion','1','0','0','50002','en');
INSERT INTO met_language VALUES('3394','met_template_filesavef','File save failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3395','met_template_installuierr','Error importing UI','1','0','0','50002','en');
INSERT INTO met_language VALUES('3396','met_template_installuiparaerr','Error importing UI parameters','1','0','0','50002','en');
INSERT INTO met_language VALUES('3397','met_template_updateok','update successed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3398','met_template_updatefalse','Update failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3399','met_template_updatedatafalse','Data update failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3400','met_template_donotinfo','No action or no permission','1','0','0','50002','en');
INSERT INTO met_language VALUES('3401','met_template_langinfotext','When multi-language is turned on, you must first switch to the visual management of the corresponding language or the traditional background, and then enable a set of templates here; different languages can enable different templates.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3402','met_template_metinfouserinfo','The Mito official website user center account can simultaneously install the purchased and bound domain name as the business template of the website. You can bind the domain name in the Mituo user center within 60 days after purchase.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3403','met_template_buytemplates','Purchase new template','1','0','0','50002','en');
INSERT INTO met_language VALUES('3404','met_template_delettemplatesinfo','Deleting a template from the list does not delete the template folder under the website root /templates/','1','0','0','50002','en');
INSERT INTO met_language VALUES('3405','met_template_demoinstalltitle','Demo data installation tips! ! !','1','0','0','50002','en');
INSERT INTO met_language VALUES('3406','met_template_demoinstallsel','Please choose the appropriate installation method for you','1','0','0','50002','en');
INSERT INTO met_language VALUES('3407','met_template_demoinstallt1','Restore factory settings: The system will clear all existing data of the website and restore the website to the template demo data status;','1','0','0','50002','en');
INSERT INTO met_language VALUES('3408','met_template_demoinstallt2','Back up existing data and install it: the system will automatically back up the existing database and image of the website, and then restore the website to the template demo data status. In the future, you can restore the website to the state before the demo data is installed by restoring the backup data.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3409','met_template_demoinstallt3','Cancel: If your website has already added content, we recommend that you do not install demo data. After installing the template, you can set the relevant block content directly in the visualization.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3410','met_template_saveinstall','Back up existing data and install it','1','0','0','50002','en');
INSERT INTO met_language VALUES('3411','met_template_installnewmetinfo','reset','1','0','0','50002','en');
INSERT INTO met_language VALUES('3412','met_template_downloadtemjs','Downloading template...','1','0','1','50002','en');
INSERT INTO met_language VALUES('3413','met_template_downloadtemokjs','Download template successfully','1','0','1','50002','en');
INSERT INTO met_language VALUES('3414','met_template_downloaduijs','Downloading UI','1','0','1','50002','en');
INSERT INTO met_language VALUES('3415','metinfoapp3','Official statement','1','0','0','0','en');
INSERT INTO met_language VALUES('3416','metinfoapptext3','Third-party merchants cover MetInfo application and template development, and SME information services. However, MetInfo officials are not involved in the operation and division of related products and services. Users are requested to identify and bear all the consequences. If you find that the business is illegal or dishonest, you are welcome to report it to MetInfo, and we will remove it.','1','0','0','0','en');
INSERT INTO met_language VALUES('3417','metinfoappinstallinfo','Application first install will automatically bind the domain name','1','0','0','0','en');
INSERT INTO met_language VALUES('3418','metinfoappinstallinfo4','installation tips','1','0','1','0','en');
INSERT INTO met_language VALUES('3419','columnselect1','Select Category','1','0','0','0','en');
INSERT INTO met_language VALUES('3420','columnnofollow','Nofollow attribute','1','0','0','0','en');
INSERT INTO met_language VALUES('3421','columnnofollowinfo','After checking, the website does not pass weights to the link URL.','1','0','0','0','en');
INSERT INTO met_language VALUES('3422','feedbackinquiry','Online Inquiry','1','0','0','0','en');
INSERT INTO met_language VALUES('3423','feedbackinquiryinfo','A Feedback column has already opened this function. If you want to enable it in the current column, please close it in the open Feedback column first.','1','0','0','0','en');
INSERT INTO met_language VALUES('3424','feedbackinquiryinfo1','After opening the online inquiry, the product details page will automatically display the inquiry button.','1','0','0','0','en');
INSERT INTO met_language VALUES('3425','webupate1','Website backup','1','0','0','0','en');
INSERT INTO met_language VALUES('3426','webupate3','Decompression succeeded','1','0','0','0','en');
INSERT INTO met_language VALUES('3427','webupate4','Unpacking failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3428','webupate5','Compressed package does not exist','1','0','0','0','en');
INSERT INTO met_language VALUES('3429','webupate6','file type','1','0','0','0','en');
INSERT INTO met_language VALUES('3430','webupate7','Decompression','1','0','0','0','en');
INSERT INTO met_language VALUES('3431','webupate9','Use backup administrator account','1','0','0','0','en');
INSERT INTO met_language VALUES('3432','webupate10','Do not override the administrator account','1','0','0','0','en');
INSERT INTO met_language VALUES('3433','seohtaccess1','Whether to display the file list in the root directory','1','0','1','0','en');
INSERT INTO met_language VALUES('3434','updatenofile','The installation package does not exist','1','0','0','0','en');
INSERT INTO met_language VALUES('3435','updateupzipfileno','Unpacking data failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3436','updateinstallnow','installing...','1','0','1','0','en');
INSERT INTO met_language VALUES('3437','useinfopay','This feature requires the payment interface management application to be enabled before it can be enabled.','1','0','0','0','en');
INSERT INTO met_language VALUES('3438','usegroupauto1','Automatically upgrade the full amount of recharge','1','0','0','0','en');
INSERT INTO met_language VALUES('3439','usegroupbuy','Paid purchase member group','1','0','0','0','en');
INSERT INTO met_language VALUES('3440','usereadinfo','Reading permission value must be greater than 0','1','0','0','0','en');
INSERT INTO met_language VALUES('3441','userselectname','Tab','1','0','0','0','en');
INSERT INTO met_language VALUES('3442','msmnoifno','SMS function has not been activated','1','0','0','0','en');
INSERT INTO met_language VALUES('3443','templateseditfalse','fail to edit','1','0','0','0','en');
INSERT INTO met_language VALUES('3444','templatefilewritno','Directory is not writable','1','0','0','0','en');
INSERT INTO met_language VALUES('3445','times1','Seconds ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3446','times2','minutes ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3447','times3','hour ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3448','times4','Days ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3449','uploadfilenop','No permission to upload','1','0','0','0','en');
INSERT INTO met_language VALUES('3450','rurlerror','Request address error','1','0','0','0','en');
INSERT INTO met_language VALUES('3451','paranouse','The parameter is invalid','1','0','0','0','en');
INSERT INTO met_language VALUES('3452','linkmetinfoerror','Your server is not connected to the Net User Center, please contact the official website customer service staff to detect the server!!!','1','0','0','0','en');
INSERT INTO met_language VALUES('3453','appusererror','The login password in the background is incorrect. Please reset the account password in the Met User Center! ! !','1','0','0','0','en');
INSERT INTO met_language VALUES('3454','parameter10','link','1','0','0','0','en');
INSERT INTO met_language VALUES('3455','parametervalueinfo','value','1','0','0','0','en');
INSERT INTO met_language VALUES('3456','indexmobilelogoinfo','When the template has the mobile phone LOGO setting, the setting here is invalid. When the static page is opened, the setting is invalid. Leave the mobile terminal to use the default LOGO.','1','0','0','0','en');
INSERT INTO met_language VALUES('3457','met_template_setmarktext','Click to expand advanced settings','1','0','0','50002','en');
INSERT INTO met_language VALUES('3458','met_template_setmarktexth','Hide advanced settings','1','0','0','50002','en');
INSERT INTO met_language VALUES('3459','columndeffflor','The name of the column file you are using conflicts with the system default module folder name. Please rename it.','1','0','0','0','en');
INSERT INTO met_language VALUES('3460','cancel','cancel','1','0','1','0','en');
INSERT INTO met_language VALUES('3461','banner_setmobileImgUrl_v6','Mobile phone end picture address','1','0','4','0','en');
INSERT INTO met_language VALUES('3462','idcode','ID code','1','0','0','0','en');
INSERT INTO met_language VALUES('3463','recoveryisntallinfo','The imported version of the database is inconsistent with the current version of the system. Some parameters and configuration data may be lost after import. Please import it carefully!','1','0','0','0','en');
INSERT INTO met_language VALUES('3464','setpnorder','Previous and Next Call Settings','1','0','0','50002','en');
INSERT INTO met_language VALUES('3465','disableCssJs','Turn off system css and js','1','1','0','0','en');
INSERT INTO met_language VALUES('3466','disableCssJsTips','It is forbidden to load the default css and js (for developers to create templates, ordinary users should not close)','1','1','0','0','en');
INSERT INTO met_language VALUES('3467','setseoLogoKeyword','Logo KeyWord','1','21','32','0','en');
INSERT INTO met_language VALUES('3468','301jump','Website 301 jump','1','1','0','0','en');
INSERT INTO met_language VALUES('3469','301jumpDescription','After opening, the website domain name will automatically jump to the website domain name with www. Example: ******.cn Jump www.******.cn','1','1','0','0','en');
INSERT INTO met_language VALUES('3470','gotohttps','HTTP jump to HTTPS','1','1','0','0','en');
INSERT INTO met_language VALUES('3471','gotohttps_tips','This function requires the server to install SSL certificate and support HTTPS protocol to enable','1','1','0','0','en');
INSERT INTO met_language VALUES('3472','admin_login_lang','Login to the background language','1','0','0','0','en');
INSERT INTO met_language VALUES('3473','admin_del_error','Prohibition to delete founder','1','0','0','0','en');
INSERT INTO met_language VALUES('3474','sethttps','After opening, the system automatically replaces all HTTP paths on the site and clears the template cache','1','0','0','0','en');
INSERT INTO met_language VALUES('3475','404page','404 page content','1','0','0','0','en');
INSERT INTO met_language VALUES('3476','data_null','No content prompt text','1','0','0','0','en');
INSERT INTO met_language VALUES('3477','column_other_info','Other info','1','0','0','0','en');
INSERT INTO met_language VALUES('3478','column_custom_info','Custom info','1','0','0','0','en');
INSERT INTO met_language VALUES('3479','seting','Seting','1','0','0','0','en');
INSERT INTO met_language VALUES('3480','special_che_deny','Do not use special characters','1','0','0','0','en');
INSERT INTO met_language VALUES('3481','clearThumb','Clear thumbnails','1','0','0','0','en');
INSERT INTO met_language VALUES('3482','operation_log','Operation log','1','0','0','0','en');
INSERT INTO met_language VALUES('3483','request_address','Request address','1','0','0','0','en');
INSERT INTO met_language VALUES('3484','request_result','Request result','1','0','0','0','en');
INSERT INTO met_language VALUES('3485','admin_log','Open the background operation log','1','0','0','0','en');
INSERT INTO met_language VALUES('3486','associated_columns','Associated Columns','1','0','0','0','en');
INSERT INTO met_language VALUES('3487','pass_empty','Do not enter does not change the password','1','0','0','0','en');
INSERT INTO met_language VALUES('3488','unzip_tips','Unzip will overwrite the same named file in the upload folder','1','0','0','0','en');
INSERT INTO met_language VALUES('3489','adminFunOperate','Function module operation authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3490','tags_title','Tags page title','1','0','0','0','en');
INSERT INTO met_language VALUES('3491','tags_title_tips','Tags page title content','1','0','0','0','en');
INSERT INTO met_language VALUES('3492','text_size','Text size','1','0','0','0','en');
INSERT INTO met_language VALUES('3493','desc_size','Describe size','1','0','0','0','en');
INSERT INTO met_language VALUES('3494','desc_color','Describe color','1','0','0','0','en');
INSERT INTO met_language VALUES('3495','column_style_tips','This setting requires template support','1','0','0','0','en');
INSERT INTO met_language VALUES('3496','content_style_tips','This setting is generally valid only in the information list','1','0','0','0','en');
INSERT INTO met_language VALUES('3497','modifyaccemail','Bind mailbox to modify mail','1','0','0','0','en');
INSERT INTO met_language VALUES('3498','temSupport','This feature requires template support','1','0','0','0','en');
INSERT INTO met_language VALUES('3499','update','update','1','0','0','0','en');
INSERT INTO met_language VALUES('3500','onlyInStyle3','Effective only in Style 3','1','0','0','0','en');
INSERT INTO met_language VALUES('3501','thumb_tips','(Wide X Height) (Pixel) The default thumbnail size of the module. The thumbnail size of each column can be set independently in visual editing.','1','0','0','0','en');
INSERT INTO met_language VALUES('3502','freeapp','Free plugin','1','0','0','0','en');
INSERT INTO met_language VALUES('3503','businessapp','Commercial plugin','1','0','0','0','en');
INSERT INTO met_language VALUES('3504','chargeapp','Charge plugin','1','0','0','0','en');
INSERT INTO met_language VALUES('3505','userCondition','Register for the MetInfo User Center for free download and use','1','0','0','0','en');
INSERT INTO met_language VALUES('3506','installCondition','Buy the commercial version of the MetInfo Enterprise Website System and install it under the binding domain name site.','1','0','0','0','en');
INSERT INTO met_language VALUES('3507','buyCondition','Can be installed and used under a binding domain name site after purchase.','1','0','0','0','en');
INSERT INTO met_language VALUES('3508','thumb_size_list','List page thumbnail size','1','440','0','0','en');
INSERT INTO met_language VALUES('3509','thumb_size_showpage','Details page thumbnail size','1','440','0','0','en');
INSERT INTO met_language VALUES('3510','thumb_seting_tips','Details page thumbnail size and tabs should be set in Visual Editing Current Page Settings for corresponding columns','1','440','0','0','en');
INSERT INTO met_language VALUES('3511','member_agreement','User protocol function','1','0','0','0','en');
INSERT INTO met_language VALUES('3512','top_menu','Top menu','1','0','0','0','en');
INSERT INTO met_language VALUES('3513','admin_name_repeat',' Administrator name cannot be repeated','1','0','0','0','en');
INSERT INTO met_language VALUES('3514','settings_tab','Settings tab','1','0','0','0','en');
INSERT INTO met_language VALUES('3515','custom_info','Custom information','1','0','0','0','en');
INSERT INTO met_language VALUES('3516','admin_content_list1','Click on the blank part of each row of the table to drag up and down and save to change the sort.','1','0','0','0','en');
INSERT INTO met_language VALUES('3517','module_reply1','Separate multiple numbers by |','1','0','0','0','en');
INSERT INTO met_language VALUES('3518','module_reply2','To reply to the SMS content, you need to submit the content template review on the SMS function providing platform, and the verification will be successful before it can be sent.','1','0','0','0','en');
INSERT INTO met_language VALUES('3519','online_list1','Number/link/picture','1','0','0','0','en');
INSERT INTO met_language VALUES('3520','choice_style','choice of style','1','0','0','0','en');
INSERT INTO met_language VALUES('3521','reading_authority','Reading authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3522','empty_not_modified','If it is empty, it will not be modified','1','0','0','0','en');
INSERT INTO met_language VALUES('3523','button','Button','1','0','0','0','en');
INSERT INTO met_language VALUES('3524','fliptext1','see more','1','0','0','0','en');
INSERT INTO met_language VALUES('3525','being_imported','Being imported, please do not operate.','1','0','0','0','en');
INSERT INTO met_language VALUES('3526','least_one_item','Please select at least one item','1','0','0','0','en');
INSERT INTO met_language VALUES('3527','feedfback','Feedback','1','0','0','0','en');
INSERT INTO met_language VALUES('3528','message','Message','1','0','0','0','en');
INSERT INTO met_language VALUES('3529','job','Recruitment','1','0','0','0','en');
INSERT INTO met_language VALUES('3530','product','Product','1','0','0','0','en');
INSERT INTO met_language VALUES('3531','saving','Save, please wait...','1','0','0','0','en');
INSERT INTO met_language VALUES('3532','no_data','No data','1','0','0','0','en');
INSERT INTO met_language VALUES('3533','numbering','Numbering','1','0','0','0','en');
INSERT INTO met_language VALUES('3534','successful_syn','Successful synchronization','1','0','0','0','en');
INSERT INTO met_language VALUES('3535','failed_syn','Synchronization failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3536','being_synced','Being synced, please be patient.','1','0','0','0','en');
INSERT INTO met_language VALUES('3537','national_flag','National flag','1','0','0','0','en');
INSERT INTO met_language VALUES('3538','national_flag_tips1','Custom flag gif images can be placed in the public/images/flag/ folder of the website.','1','0','0','0','en');
INSERT INTO met_language VALUES('3539','manage_tips1','Click to collapse/expand the list of columns','1','0','0','0','en');
INSERT INTO met_language VALUES('3540','set_default_section','Set default section','1','0','0','0','en');
INSERT INTO met_language VALUES('3541','enter_user_name','please enter user name','1','0','0','0','en');
INSERT INTO met_language VALUES('3542','system_plugin_uninstall','System plugin, unable to uninstall','1','0','0','0','en');
INSERT INTO met_language VALUES('3543','install_first','Please install first!','1','0','0','0','en');
INSERT INTO met_language VALUES('3544','upgrade','In the upgrade, please wait...','1','0','0','0','en');
INSERT INTO met_language VALUES('3545','file_download_failed','File download failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3546','column_search','Column search','1','0','0','0','en');
INSERT INTO met_language VALUES('3547','advanced_search','Advanced Search','1','0','0','0','en');
INSERT INTO met_language VALUES('3548','replacement_text','Replacement text cannot be empty','1','0','0','0','en');
INSERT INTO met_language VALUES('3549','ing','ing','1','0','0','0','en');
INSERT INTO met_language VALUES('3550','static_page_success','Static page generation completed','1','0','0','0','en');
INSERT INTO met_language VALUES('3551','successful_conversion','The conversion was successful!','1','0','0','0','en');
INSERT INTO met_language VALUES('3552','full_site','Full Site','1','0','0','0','en');
INSERT INTO met_language VALUES('3553','default','default','1','0','0','0','en');
INSERT INTO met_language VALUES('3554','valid_phone_number','Please enter a valid phone number','1','0','0','0','en');
INSERT INTO met_language VALUES('3555','valid_email_address','Please enter a valid email address','1','0','0','0','en');
INSERT INTO met_language VALUES('3556','button_text','Button text','1','0','0','0','en');
INSERT INTO met_language VALUES('3557','open_mode','Open mode','1','0','0','0','en');
INSERT INTO met_language VALUES('3558','button_size','Button size','1','0','0','0','en');
INSERT INTO met_language VALUES('3559','button_color','Button color','1','0','0','0','en');
INSERT INTO met_language VALUES('3560','mouse_over_button_color','Mouse over button color','1','0','0','0','en');
INSERT INTO met_language VALUES('3561','font_size','font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3562','mouse_over_text_color','Mouse over text color','1','0','0','0','en');
INSERT INTO met_language VALUES('3563','display_client','Display client','1','0','0','0','en');
INSERT INTO met_language VALUES('3564','new_window','New window','1','0','0','0','en');
INSERT INTO met_language VALUES('3565','original_window','Original window','1','0','0','0','en');
INSERT INTO met_language VALUES('3566','mobile_terminal','Mobile terminal','1','0','0','0','en');
INSERT INTO met_language VALUES('3567','image_title_font_size','Image title font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3568','image_description_font_size','Image description font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3569','mobile_terminal_settings','Mobile phone settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3570','mobile_phone_picture_title','Mobile image title','1','0','0','0','en');
INSERT INTO met_language VALUES('3571','banner_edit1','If you do not fill in the settings, keep consistent with the computer','1','0','0','0','en');
INSERT INTO met_language VALUES('3572','banner_edit2','Mobile phone picture title color:','1','0','0','0','en');
INSERT INTO met_language VALUES('3573','banner_edit3','Mobile phone image title font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3574','banner_edit5','Mobile phone picture description','1','0','0','0','en');
INSERT INTO met_language VALUES('3575','banner_edit6','Mobile phone picture description color','1','0','0','0','en');
INSERT INTO met_language VALUES('3576','banner_edit7','Mobile phone image description font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3577','banner_edit8','Mobile phone image text position','1','0','0','0','en');
INSERT INTO met_language VALUES('3578','feedbackTip5','Export the currently selected information','1','0','0','0','en');
INSERT INTO met_language VALUES('3579','setimgLeftMid','Left middle','1','0','0','0','en');
INSERT INTO met_language VALUES('3580','function_ency1','Only the traditional background functions are listed here. For more setting functions, please edit the columns and pages in the visual editing background.','1','0','0','0','en');
INSERT INTO met_language VALUES('3581','environmental_test','environmental test','1','0','0','0','en');
INSERT INTO met_language VALUES('3582','function_ency2','Please add the corresponding module column in \"Column Management\" and then manage it in the corresponding function menu.','1','0','0','0','en');
INSERT INTO met_language VALUES('3583','sms_function','SMS function','1','0','0','0','en');
INSERT INTO met_language VALUES('3584','website_overview','Website overview','1','0','0','0','en');
INSERT INTO met_language VALUES('3585','system_cache','System cache','1','0','0','0','en');
INSERT INTO met_language VALUES('3586','help_manual','Help manual','1','0','0','0','en');
INSERT INTO met_language VALUES('3587','online_quiz','Online quiz','1','0','0','0','en');
INSERT INTO met_language VALUES('3588','online_work_order','Online work order','1','0','0','0','en');
INSERT INTO met_language VALUES('3589','admin_job1','Need to add a resume to the job management position','1','0','0','0','en');
INSERT INTO met_language VALUES('3590','admin_manage1','Click on the left column list to manage content','1','0','0','0','en');
INSERT INTO met_language VALUES('3591','admin_menu1','This feature requires template support. Some templates come with a mobile phone menu at the bottom. Please set it in the visual interface.','1','0','0','0','en');
INSERT INTO met_language VALUES('3592','search_range','Search range','1','0','0','0','en');
INSERT INTO met_language VALUES('3593','admin_search1','Specify a level column','1','0','0','0','en');
INSERT INTO met_language VALUES('3594','admin_search2','Whether to open the search method','1','0','0','0','en');
INSERT INTO met_language VALUES('3595','admin_search3','Whether to link','1','0','0','0','en');
INSERT INTO met_language VALUES('3596','admin_search4','Search box default content','1','0','0','0','en');
INSERT INTO met_language VALUES('3597','admin_search5','Current level 1 column','1','0','0','0','en');
INSERT INTO met_language VALUES('3598','admin_search6','Search method','1','0','0','0','en');
INSERT INTO met_language VALUES('3599','admin_search7','Title and content','1','0','0','0','en');
INSERT INTO met_language VALUES('3600','by_module','By module','1','0','0','0','en');
INSERT INTO met_language VALUES('3601','by_column','By column','1','0','0','0','en');
INSERT INTO met_language VALUES('3602','admin_seo1','Index-language identifier.html (eg index-cn.html)','1','0','0','0','en');
INSERT INTO met_language VALUES('3603','admin_seo2','Directory name /list - static page name or ID - language identifier .html (eg product/list-1-cn.html)','1','0','0','0','en');
INSERT INTO met_language VALUES('3604','admin_seo3','Directory name /list - static page name or ID - language identifier .html (eg product/list-1-cn.html)','1','0','0','0','en');
INSERT INTO met_language VALUES('3605','admin_tag_setting1','TAG settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3606','admin_tag_setting2','TAG generation rule','1','0','0','0','en');
INSERT INTO met_language VALUES('3607','admin_tag_setting3','By level 1','1','0','0','0','en');
INSERT INTO met_language VALUES('3608','admin_tag_setting4','TAG Label Aggregation Rules','1','0','0','0','en');
INSERT INTO met_language VALUES('3609','admin_tag_setting5','Set the same tag content','1','0','0','0','en');
INSERT INTO met_language VALUES('3610','admin_tag_setting6','Content details page aggregation number','1','0','0','0','en');
INSERT INTO met_language VALUES('3611','admin_tag_setting7','Use the system default if you don\'t fill it out','1','0','0','0','en');
INSERT INTO met_language VALUES('3612','admin_tag_setting8','Please add the column of setting \"tag tag\" module in column management first, and the front access address is','1','0','0','0','en');
INSERT INTO met_language VALUES('3613','add_tag','add tag','1','0','0','0','en');
INSERT INTO met_language VALUES('3614','tag_name','Label name','1','0','0','0','en');
INSERT INTO met_language VALUES('3615','add_manully','add manully','1','0','0','0','en');
INSERT INTO met_language VALUES('3616','aggregation_range','Aggregation range','1','0','0','0','en');
INSERT INTO met_language VALUES('3617','admin_tag_setting9','Label name format is incorrect','1','0','0','0','en');
INSERT INTO met_language VALUES('3618','admin_tag_setting10','Static page name format is incorrect','1','0','0','0','en');
INSERT INTO met_language VALUES('3619','system_check1','Check if your server supports all the features of the system.','1','0','0','0','en');
INSERT INTO met_language VALUES('3620','system_check2','Environment/function test result','1','0','0','0','en');
INSERT INTO met_language VALUES('3621','system_check3','File and directory permissions','1','0','0','0','en');
INSERT INTO met_language VALUES('3622','system_check4','To be able to use the system\'s cache, pseudo-static, and upload files functions properly, you need to set the following files/directories to \"writable\". Below is a list of directories that need to be set to \"writable\" and the suggested CHMOD settings.','1','0','0','0','en');
INSERT INTO met_language VALUES('3623','system_check5','Some hosts do not allow you to set CHMOD 777, you need to use 666. Try the highest value first, if not, then gradually reduce the value.','1','0','0','0','en');
INSERT INTO met_language VALUES('3624','visualization1','Long press the place you want to modify to trigger the modification function','1','0','0','0','en');
INSERT INTO met_language VALUES('3625','stand_by','stand by','1','0','0','0','en');
INSERT INTO met_language VALUES('3626','close_this_time','Close this time','1','0','0','0','en');
INSERT INTO met_language VALUES('3627','Submit','submit','1','0','0','0','en');
INSERT INTO met_language VALUES('3628','rename_admin_dir','The current system environment does not support modifying the background folder name. Please modify it manually.','1','0','0','0','en');
INSERT INTO met_language VALUES('3629','notemptips','There is no website template in the current language. Please go to Style-Website Template and select a set of templates.','1','0','0','0','en');
INSERT INTO met_language VALUES('3630','short_message','short message','1','0','0','0','en');
INSERT INTO met_language VALUES('3631','common_qq','common qq','1','0','0','0','en');
INSERT INTO met_language VALUES('3632','enterprise_qq','enterprise qq','1','0','0','0','en');
INSERT INTO met_language VALUES('3633','back_folder_list','back folder list','1','0','0','0','en');
INSERT INTO met_language VALUES('3634','back_icon_iibrary_list','back icon iibrary list','1','0','0','0','en');
INSERT INTO met_language VALUES('3635','choose_icon_tips','Click on the selected icon and save it','1','0','0','0','en');
INSERT INTO met_language VALUES('3636','jump_to_no','Jump to No','1','0','0','0','en');
INSERT INTO met_language VALUES('3637','page','page','1','0','0','0','en');
INSERT INTO met_language VALUES('3638','goto','goto','1','0','0','0','en');
INSERT INTO met_language VALUES('3639','save_image_to_website','save image to website','1','0','0','0','en');
INSERT INTO met_language VALUES('3640','save_allimages_to_website','save all images to website','1','0','0','0','en');
INSERT INTO met_language VALUES('3641','block_style','block style','1','0','0','0','en');
INSERT INTO met_language VALUES('3642','change','change','1','0','0','0','en');
INSERT INTO met_language VALUES('3643','change_blockstyle_tips','After selecting the style, please click the [change] button.','1','0','0','0','en');
INSERT INTO met_language VALUES('3644','installing','Do not operate during installation.','1','0','0','0','en');
INSERT INTO met_language VALUES('3645','databacking','Do not operate during backup.','1','0','0','0','en');
INSERT INTO met_language VALUES('3646','already_update_package','Manual upgrade package exists','1','0','0','0','en');
INSERT INTO met_language VALUES('3647','edit_authority','Edit authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3648','editable','Editable','1','0','0','0','en');
INSERT INTO met_language VALUES('3649','non_editable','Non editable','1','0','0','0','en');
INSERT INTO met_language VALUES('3650','cv_export','CV export','1','0','0','0','en');
INSERT INTO met_language VALUES('3651','access_type','Display mode of reading authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3652','access_type1','No permission information is displayed at the front desk. Click read to judge the permission.','1','0','0','0','en');
INSERT INTO met_language VALUES('3653','access_type2','No permission information is displayed in the foreground','1','0','0','0','en');
INSERT INTO met_language VALUES('3654','database_switch','Database switching','1','0','0','0','en');
INSERT INTO met_language VALUES('3655','database_switch_tips','Please do not frequently switch the database type during the use of the website. Some applications do not support the sqlite database. It is recommended to use a more stable and efficient mysql database.','1','0','0','0','en');
INSERT INTO met_language VALUES('3656','database_switch_tips1','Please configure MySQL database parameters. For database information, please contact your server provider.','1','0','0','0','en');
INSERT INTO met_language VALUES('3657','database_switch_tips2','For example: met, please do not leave blank and use \"\" to end','1','0','0','0','en');
INSERT INTO met_language VALUES('3658','database_switch_tips3','Generally, no change is required. Refer to MySQL control panel of host or server.','1','0','0','0','en');
INSERT INTO met_language VALUES('3659','database_switch_tips4','For example, \"met\" or \"my met\", make sure to start with a letter','1','0','0','0','en');
INSERT INTO met_language VALUES('3660','database_type','Database type','1','0','0','0','en');
INSERT INTO met_language VALUES('3661','table_prefix','Table Prefix','1','0','0','0','en');
INSERT INTO met_language VALUES('3662','database_address','Database connection address','1','0','0','0','en');
INSERT INTO met_language VALUES('3663','database_name','Database name','1','0','0','0','en');
INSERT INTO met_language VALUES('3664','database_user','Database user name','1','0','0','0','en');
INSERT INTO met_language VALUES('3665','database_password','Database password','1','0','0','0','en');
INSERT INTO met_language VALUES('3666','read_protocol','Please read the following agreement carefully','1','0','0','0','en');
INSERT INTO met_language VALUES('3667','disagree','Disagree','1','0','0','0','en');
INSERT INTO met_language VALUES('3668','agree','Agree','1','0','0','0','en');
INSERT INTO met_language VALUES('3669','copyright_nofollow','Foreground copyright link nofollow property','1','0','0','0','en');
INSERT INTO met_language VALUES('3670','copyright_nofollow_description','After opening, the copyright link at the bottom of the foreground will add the nofollow attribute','1','0','0','0','en');
INSERT INTO met_language VALUES('3671','close_allchildcolumn_v6','Hide all sub columns','1','0','0','0','en');
INSERT INTO met_language VALUES('3672','emailhave','Mailbox is bound','1','0','0','0','en');
INSERT INTO met_language VALUES('3673','telhave','Mobile number is bound','1','0','0','0','en');
INSERT INTO met_language VALUES('3674','noupdate','No updates available','1','0','0','0','en');

DROP TABLE IF EXISTS met_link;
CREATE TABLE `met_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) DEFAULT '',
  `module` varchar(255) DEFAULT '',
  `weburl` varchar(255) DEFAULT '',
  `weblogo` varchar(255) DEFAULT '',
  `link_type` int(11) DEFAULT '0',
  `info` varchar(255) DEFAULT '',
  `contact` varchar(255) DEFAULT '',
  `orderno` int(11) DEFAULT '0',
  `com_ok` int(11) DEFAULT '0',
  `show_ok` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `lang` varchar(50) DEFAULT '',
  `ip` varchar(255) DEFAULT '',
  `nofollow` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_link VALUES('1','米拓建站',',10001,','https://www.mituo.cn/','','0','米拓建站','','1','0','1','2019-08-02 18:32:22','cn','','0');
INSERT INTO met_link VALUES('2','网站模板',',10001,','https://www.metinfo.cn/','','0','网站模板','','0','0','1','2019-08-02 18:32:54','cn','','0');

DROP TABLE IF EXISTS met_menu;
CREATE TABLE `met_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `text_color` varchar(100) DEFAULT '',
  `but_color` varchar(100) DEFAULT '',
  `target` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '1',
  `no_order` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO met_menu VALUES('1','首页','https://www.metinfo.cn/','icon fa-home','#ffffff','#1baadb','0','1','0','cn');
INSERT INTO met_menu VALUES('2','产品','https://www.metinfo.cn//product/','icon fa-product-hunt','#ffffff','#1baadb','0','1','1','cn');
INSERT INTO met_menu VALUES('3','新闻','https://www.metinfo.cn/news/','icon fa-th-large','#ffffff','#1baadb','0','1','2','cn');
INSERT INTO met_menu VALUES('4','联系','https://www.mituo.cn/about/contact.html','icon fa-address-book-o','#ffffff','#1baadb','0','1','3','cn');

DROP TABLE IF EXISTS met_message;
CREATE TABLE `met_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT '',
  `addtime` datetime DEFAULT NULL,
  `readok` int(11) DEFAULT '0',
  `useinfo` text,
  `lang` varchar(50) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `customerid` varchar(30) DEFAULT '0',
  `checkok` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO met_message VALUES('5','::1','2018-01-18 22:29:00','1','请登录我们的官网www.metinfo.cn选择你喜欢的模板，购买后你可以直接下载源代码或一键安装','cn','0','','1');
INSERT INTO met_message VALUES('6','::1','2018-01-18 22:32:46','1','免费使用 MetInfo 在未经授权前，请务必保留底部 Powered by MetInfo 字样版权及链接，后台版权及链接，否则我们将追究法律责任。\r\n购买商业授权后可以使用官方开发的部分商业应用，如七牛云、商城模块等。','cn','0','','1');
INSERT INTO met_message VALUES('2','::1','2018-01-16 10:20:45','1','Hell,San Zhang','en','0','','0');

DROP TABLE IF EXISTS met_mlist;
CREATE TABLE `met_mlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT '0',
  `paraid` int(11) DEFAULT '0',
  `info` text,
  `lang` varchar(50) DEFAULT '',
  `imgname` varchar(255) DEFAULT '',
  `module` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO met_mlist VALUES('17','5','137','张三','cn','姓名','7');
INSERT INTO met_mlist VALUES('18','5','186','test@qq.com','cn','Email','7');
INSERT INTO met_mlist VALUES('19','5','138','13333333333','cn','联系电话','7');
INSERT INTO met_mlist VALUES('20','5','139','湖南长沙湘江新区','cn','联系地址','7');
INSERT INTO met_mlist VALUES('21','5','140','如何购买6.0可视化编辑模板','cn','留言内容','7');
INSERT INTO met_mlist VALUES('22','6','137','李四','cn','姓名','7');
INSERT INTO met_mlist VALUES('23','6','186','buy@test.com','cn','Email','7');
INSERT INTO met_mlist VALUES('24','6','138','18888888888','cn','联系电话','7');
INSERT INTO met_mlist VALUES('25','6','139','','cn','联系地址','7');
INSERT INTO met_mlist VALUES('26','6','140','MetInfo可以免费使用吗？免费版和收费版有什么区别？','cn','留言内容','7');
INSERT INTO met_mlist VALUES('5','2','132','San Zhang','en','Name','7');
INSERT INTO met_mlist VALUES('6','2','133','13212312311','en','Contact','7');
INSERT INTO met_mlist VALUES('7','2','134','Changsha Hunan','en','Address','7');
INSERT INTO met_mlist VALUES('8','2','135','hello,my name is San Zhang','en','Content','7');

DROP TABLE IF EXISTS met_news;
CREATE TABLE `met_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '',
  `ctitle` varchar(200) DEFAULT '',
  `keywords` varchar(200) DEFAULT '',
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `img_ok` int(1) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT '',
  `imgurls` varchar(255) DEFAULT '',
  `com_ok` int(1) DEFAULT '0',
  `issue` varchar(100) DEFAULT '',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `filename` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `recycle` int(11) DEFAULT '0',
  `displaytype` int(11) DEFAULT '1',
  `tag` text,
  `links` varchar(200) DEFAULT '',
  `publisher` varchar(50) DEFAULT '',
  `text_size` int(11) DEFAULT '0',
  `text_color` varchar(100) DEFAULT '',
  `other_info` text,
  `custom_info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO met_news VALUES('1','山水H2智能手环158元 买就送移动电源','','','&nbsp; 山水最新推出的一款全新二代升级版智能健康手环H2，天猫首发价3折仅需158元，买就送山水正品移动电源一台，数量有限，先到先得哦。山水全新一代健康智能手环H2，经典简约欧美风设计，顶级高技术含量，进口高品质选材，全面实用健康功能给众多热爱健康，钟爱智能手环的朋友们带来惊艳之喜。山水H2天猫首发仅3折抄底价158元疯抢，心动的朋友可狠戳品牌聚划算活动进行限量抢购，目前已有上千名心动买家参','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; 山水最新推出的一款全新二代升级版智能健康手环H2，天猫首发价3折仅需158元，买就送山水正品移动电源一台，数量有限，先到先得哦。山水全新一代健康智能手环H2，经典简约欧美风设计，顶级高技术含量，进口高品质选材，全面实用健康功能给众多热爱健康，钟爱智能手环的朋友们带来惊艳之喜。山水H2天猫首发仅3折抄底价158元疯抢，心动的朋友可狠戳品牌聚划算活动进行限量抢购，目前已有上千名心动买家参与聚划算限量疯抢活动，机会可不容错过。<br/>　　山水自推出一代智能手环精品H1后，受到了上万用户的高度点评与重复购买，山水H1以行业不可能的超低亲民价99元让不少用户体验省钱实惠购物体验，智能手环二代旗舰精品山水H2的横空出世，在功能与设计上拥有更多的突破和超越，3折仅158元的天猫首发价将在全网再次引起健康智能手环风暴。<br/>　　山水H2健康智能手环着重体现健康生活运动理念，产品功能实用性不断丰富，技术含量再次升级，甄选高品质健康材质，强大的防水设计为山水H2智能手机注入更出色的活力，为用户提供全方位贴身健康运动管家。IPX7防水设计 欧美简约之风</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">　　山水H2健康穿戴手环拥有IPX7级超强防水能力，防水技术水准达到日本JIS(日本工业标准)7级标准，在水下1米深处可保证长时间不进水，对于喜爱游泳的朋友们来说绝对是一款必备的穿戴新宠。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">　　在外观设计上，山水H2延续一贯的精致简约设计，化繁为简更彰显国际大牌风范，十足的欧美之风更具高档，无论是自己配戴还是送朋友亲人同事，绝对大气上档次。山水H2机身色彩共拥有缤纷粉、优雅黑、宝石蓝三款靓亮之色，适合不同人群朋友的配戴需求。</span></p>','3','35','0','0','0','0','../upload/201801/1515649943.jpg','','0','','2','2018-01-11 13:36:39','2018-01-11 13:37:24','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('2','商业模式的变化带给分销商的新活法','','','&nbsp;&nbsp;【导语】过去的一年，对IT分销的考验更加严峻，IT厂商巨头通过各种手段竭力与终端经销商、直接用户拉进距离，压缩渠道空间，而电商技术及平台的发展加剧了这一变化。大型分销商在传统分销领域越来越难挣到钱，导致业务疲软甚至倒退。数码在分销行业发生剧变的大形势下，围绕核心的渠道分销业务大胆创新，积极调整业务架构、争取有利资源的同时为上下游定制应需而变的服务，保持了20%以上的快速增长','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;&nbsp;<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 600;\">【导语】</span>过去的一年，对IT分销的考验更加严峻，IT厂商巨头通过各种手段竭力与终端经销商、直接用户拉进距离，压缩渠道空间，而电商技术及平台的发展加剧了这一变化。大型分销商在传统分销领域越来越难挣到钱，导致业务疲软甚至倒退。数码在分销行业发生剧变的大形势下，围绕核心的渠道分销业务大胆创新，积极调整业务架构、争取有利资源的同时为上下游定制应需而变的服务，保持了20%以上的快速增长，取得了逆流而上的发展。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 资金瓶颈的突破，迅速为数码带来大发展契机。当年9月，刚刚成立的集团公司就实现单月销售额突破6亿元，仅仅3个月后的12月又实现单月销售额突破9亿元。业务规模和利润额突飞猛进的同时，数码也为投资方带来了回报。2012年底，数码在苏州当地先后荣获了“2013年度纳税贡献奖”、“2013年度纳税先进一等奖”等多项社会荣誉。2013年，为配合集团公司规模快速增长的需求，以向上下游提供“更高效、更规范”的服务为目的，数码也对运营体系进行了相应的整合、转移。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;更稳定的业务架构为快速发展护航&nbsp;&nbsp;&nbsp;&nbsp; 最初在1999年启动分销业务。通过十几年的精诚合作，数码成为外设产品分销商中产品线覆盖最广的一家。而拥有最大团队的外设业务也一枝独秀，一直作为数码分销渠道业务体系的中流砥柱，为公司的销售达成和利润达成提供最有力的保障。</span></p><p><br/></p>','3','36','0','0','0','0','../upload/201801/1515650457.jpg','','0','','2','2018-01-11 13:41:57','2018-01-11 13:42:20','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('3','Parallels即将亮相2014 Macworld博览会','','','&nbsp; &nbsp; &nbsp;自1985年创立以来，Macworld博览会已经成为全球最具影响力的苹果生态圈的盛会。本届博览会以“创新定义未来”为主题，将于8月21日在北京国家会议中心拉开帷幕。届时，Parallels也会参加此次博览会，向消费者展示其创新的产品与技术。&nbsp; &nbsp; &nbsp; “在技术更迭如此快速的今天，创新是企业可持续发展的驱动力。” Parallel','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp;自1985年创立以来，Macworld博览会已经成为全球最具影响力的苹果生态圈的盛会。本届博览会以“创新定义未来”为主题，将于8月21日在北京国家会议中心拉开帷幕。届时，Parallels也会参加此次博览会，向消费者展示其创新的产品与技术。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; “在技术更迭如此快速的今天，创新是企业可持续发展的驱动力。” Parallels大中华区跨平台应用销售总监赵信荣先生表示：“在此次博览会上，Parallels将向消费者展示我们在提升用户体验方面所做的不懈努力。此外，博览会也为我们与消费者之间建立了一个很好的平台，以倾听他们的心声，让我们持续地为他们带来创新的产品与技术。”<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次Parallels展台位于国家会议中心A110。为了使消费者更加近距离地了解旗下产品并回答消费者的问题，Parallels还将在8月22-24日期间在会场中央展示区上进行四场产品咨询与技术创新成果的展示。具体展示时间分别为：<br/>　　8月22日13:40—14:00<br/>　　8月23日11:30—11:50；15:20-15:40<br/>　　8月24日11:00—11:20<br/>&nbsp; &nbsp; &nbsp; 同时，Parallels也为参访Parallels展台的媒体和观众朋友准备精美的礼品包，先到先得。欢迎大家前去参与领取。想要了解更多关于Parallels的相关信息，不妨8月21日前往国家会议中心Parallels Macworld展台一探究竟。</span></p>','3','36','0','0','0','0','../upload/201801/1515650352.jpg','','0','','0','2018-01-11 13:44:54','2018-01-11 13:45:41','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('4','传苹果曾与惠普研发企业Siri 最终搁浅','','','&nbsp;北京时间8月14日消息，据外媒MacRumors报道，知情人士称，苹果与IBM联手进军企业市场让竞争对手感受到了巨大的威胁。不过在结缘IBM之前，苹果还曾与惠普商谈，试图开发一款“企业版Siri”移动搜索产品。&nbsp; &nbsp; &nbsp; &nbsp;传苹果曾与惠普研发企业Siri 最终搁浅（图片来自btnet）　　消息称，苹果曾与惠普接触，讨论如何在后者的产品中整合Sir','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;北京时间8月14日消息，据外媒MacRumors报道，知情人士称，苹果与IBM联手进军企业市场让竞争对手感受到了巨大的威胁。不过在结缘IBM之前，苹果还曾与惠普商谈，试图开发一款“企业版Siri”移动搜索产品。<br/>&nbsp; &nbsp; &nbsp; &nbsp;传苹果曾与惠普研发企业Siri 最终搁浅（图片来自btnet）</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">　　消息称，苹果曾与惠普接触，讨论如何在后者的产品中整合Siri搜索服务，从而让企业员工通过他们的设备获取财务数据、产品库存数量等信息。不过，IBM的介入导致了苹果与惠普的合作项目最终搁浅。事实上，惠普除了与苹果谈判之外，还在谷歌谈论在Android设备上引入相关技术的可能性，例如推出企业版Google Now。<br/>　　虽然谷歌尚未在企业数据和企业软件方面部署搜索功能，不过随着苹果结盟IBM，该公司将重新思考企业市场的重要性，通过进入该领域削弱iPhone在商务客户市场主导地位。要知道，Android在企业市场的占比远低于iOS，与惠普这样有丰富经验的公司合作无疑是一个正确的选择。<br/>　　今年7月，苹果与IBM共同宣布，已经达成一项排他性的合作关系，即通过一种新类别的商务应用来改造企业移动市场，将IBM的大数据和分析能力引入苹果公司的iPhone和iPad。</span></p><p><br/></p>','3','36','0','0','0','0','../upload/201801/1515650568.jpg','','0','','0','2018-01-11 13:47:58','2018-01-11 13:49:04','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('5','江西省云计算及物联网高峰论坛成功举办','','','012年7月5日，“云连世界·感知未来——2012’江西省云计算及物联网高峰论坛”在思创科技园成功举办。来自省内外的知名行业专家和学者、资深人士齐聚一堂，深入探讨了云计算及物联网的发展趋势和热点问题，分析和展示了云计算及物联网的典型应用案例和解决方案。本次论坛由江西省计算机学会、江西省信息中心、IBM（中国）有限公司、思创数码科技股份有限公司联合主办。&nbsp;&nbsp; &nbsp; &nb','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">012年7月5日，“云连世界·感知未来——2012’江西省云计算及物联网高峰论坛”在思创科技园成功举办。来自省内外的知名行业专家和学者、资深人士齐聚一堂，深入探讨了云计算及物联网的发展趋势和热点问题，分析和展示了云计算及物联网的典型应用案例和解决方案。本次论坛由江西省计算机学会、江西省信息中心、IBM（中国）有限公司、思创数码科技股份有限公司联合主办。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; 江西省计算机学会理事长、南昌大学副校长李建民教授作开幕致辞，李教授首先介绍了当前云计算及物联网等新技术发展的宏观环境，并介绍了江西省云计算及物联网等新兴产业发展概况。他说，今年是云计算等新技术的务实应用之年，时机良好，我们应当以此为契机，积极助力江西省云计算及物联网产业的发展。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; 思创公司董事长游建平先生致辞，他首先对与会嘉宾的到来表示诚挚欢迎与感谢，并介绍了思创公司在新技术领域的发展情况：近几年来，思创公司紧跟IT产业发展与变革的步伐，积极关注和跟踪云计算、物联网、移动互联等新兴技术发展的态势，并取得了一些初步的成果：成功塑造了苏南运河无锡段“感知航道”信息化工程、“南海一点通”门户网站建设、“移动南海”掌上门户移动应用等典型案例，中标“苏北运河航道综合信息系统工程”，自主研发的《物联网感知航道解决方案》及《基于智能船载终端的航闸运调平台》连续赢得了第十五届及第十六届中国国际软件博览会“金奖”。游总强调，思创的发展及在新技术领域取得的成绩都离不开客户、合作伙伴的厚爱与支持，未来，思创将一如既往地努力。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; 随后，江西省计算机学会副理事长、江西省信息中心主任金峰研究员作主题报告《创新思路，集约化推进江西省电子政务建设》；江西省计算机学会副秘书长、江西师范大学计算机信息工程学院院长明文教授作《基于云计算的社会网络分析》的报告；IBM资深架构师：李明喆先生作《云的力量—驱动业务模式创新》的报告；思创数码科技股份有限公司总工程师王迅先生作《物联网解决方案-智能化信息系统的设计与实践》的报告。众说纷“云”，精彩纷呈！几位行业专家的报告内容丰富，分析透彻，引发了与会嘉宾强烈的兴趣，让大家了解了新资讯与技术，开拓了新思路。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; 云连世界，感知未来。随着信息化进程不断加快，新一代信息技术发展日新月异，经济社会发展对信息技术的需求持续增长。在市场需求与技术创新的双重驱动下，云计算、物联网等新技术蓬勃发展，给IT产业的规模化、社会化、服务化发展带来重大变革，云计算及物联网已经成为我国战略性新兴产业发展的重要领域。未来，思创公司将充分发挥技术创新优势，加强资源协同整合，深化重点领域应用，推进技术和服务模式的创新，以取得更好更快的发展。 &nbsp;</span></p>','3','36','0','0','0','0','../upload/201801/1515656692.jpg','','0','','1','2018-01-11 15:21:10','2018-01-11 15:21:36','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('6','Oculus在伦敦组建VR团队','','','自从2014年斥资20亿美元收购Oculus以来，Facebook作为社交平台巨头一直在VR发展的前沿。而随着市场发展，VR在美国和中国等地刮起狂潮。由此，Facebook准备扩大疆域，向英国瞄准。根据外媒《每日电讯报》报道，Facebook近日在英国伦敦设立一个VR开发中心，成为旗下Oculus在欧洲的首个基地。据了解，Oculus英国团队的负责人是谷歌前高级工程师Mike LeBeau，是谷歌','<p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">自从2014年斥资20亿美元收购Oculus以来，Facebook作为社交平台巨头一直在VR发展的前沿。而随着市场发展，VR在美国和中国等地刮起狂潮。由此，Facebook准备扩大疆域，向英国瞄准。</span></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img class=\"\" height=\"200\" data-original=\"../upload/201801/1464075489148330.jpg\" alt=\"1464075489148330.jpg\" src=\"../upload/201801/1515655373897858.jpg\" style=\"max-width: 100%; display: inline; height: auto !important;\"/></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">根据外媒《每日电讯报》报道，Facebook近日在英国伦敦设立一个VR开发中心，成为旗下Oculus在欧洲的首个基地。</span></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">据了解，Oculus英国团队的负责人是谷歌前高级工程师Mike LeBeau，是谷歌语音搜索软件的开发者。在今年1月的时候，LeBeau前往伦敦加入Oculus。事实上，Oculus在英国一直有所动作。2015年，Oculus的干爹Facebook收购了英国VR创业公司Surreal Vision。而根据领英的信息显示，在过去6个月的时间里，Oculus在不断扩大英国的工程开发及开发者关系团队。</span></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">目前，Oculus在美国6座城市、香港以及首尔设立了办公地点，而这次再加上伦敦。对此消息，Oculus回应表示，该公司在伦敦有一支小型团队，还表示 “很快我们会公布更多的国际扩张计划。”这句话似乎意味着，Facebook准备大举扩张。</span></p><p><br/></p>','3','37','0','0','0','0','../upload/201801/1515655554.jpg','','0','','4','2018-01-11 15:22:41','2018-01-11 15:23:02','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('8','传苹果曾与惠普研发企业Siri 最终搁浅','','','&nbsp;北京时间8月14日消息，据外媒MacRumors报道，知情人士称，苹果与IBM联手进军企业市场让竞争对手感受到了巨大的威胁。不过在结缘IBM之前，苹果还曾与惠普商谈，试图开发一款“企业版Siri”移动搜索产品。&nbsp; &nbsp; &nbsp; &nbsp;传苹果曾与惠普研发企业Siri 最终搁浅（图片来自btnet）　　消息称，苹果曾与惠普接触，讨论如何在后者的产品中整合Sir','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;北京时间8月14日消息，据外媒MacRumors报道，知情人士称，苹果与IBM联手进军企业市场让竞争对手感受到了巨大的威胁。不过在结缘IBM之前，苹果还曾与惠普商谈，试图开发一款“企业版Siri”移动搜索产品。<br/>&nbsp; &nbsp; &nbsp; &nbsp;传苹果曾与惠普研发企业Siri 最终搁浅（图片来自btnet）</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">　　消息称，苹果曾与惠普接触，讨论如何在后者的产品中整合Siri搜索服务，从而让企业员工通过他们的设备获取财务数据、产品库存数量等信息。不过，IBM的介入导致了苹果与惠普的合作项目最终搁浅。事实上，惠普除了与苹果谈判之外，还在谷歌谈论在Android设备上引入相关技术的可能性，例如推出企业版Google Now。<br/>　　虽然谷歌尚未在企业数据和企业软件方面部署搜索功能，不过随着苹果结盟IBM，该公司将重新思考企业市场的重要性，通过进入该领域削弱iPhone在商务客户市场主导地位。要知道，Android在企业市场的占比远低于iOS，与惠普这样有丰富经验的公司合作无疑是一个正确的选择。<br/>　　今年7月，苹果与IBM共同宣布，已经达成一项排他性的合作关系，即通过一种新类别的商务应用来改造企业移动市场，将IBM的大数据和分析能力引入苹果公司的iPhone和iPad。</span></p><p><br/></p>','3','37','0','0','0','0','../upload/201801/1515650568.jpg','','0','','1','2018-01-11 15:27:45','2018-01-11 15:27:45','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('9','Parallels即将亮相2014 Macworld博览会','','','&nbsp; &nbsp; &nbsp;自1985年创立以来，Macworld博览会已经成为全球最具影响力的苹果生态圈的盛会。本届博览会以“创新定义未来”为主题，将于8月21日在北京国家会议中心拉开帷幕。届时，Parallels也会参加此次博览会，向消费者展示其创新的产品与技术。&nbsp; &nbsp; &nbsp; “在技术更迭如此快速的今天，创新是企业可持续发展的驱动力。” Parallel','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp;自1985年创立以来，Macworld博览会已经成为全球最具影响力的苹果生态圈的盛会。本届博览会以“创新定义未来”为主题，将于8月21日在北京国家会议中心拉开帷幕。届时，Parallels也会参加此次博览会，向消费者展示其创新的产品与技术。</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp; &nbsp; &nbsp; “在技术更迭如此快速的今天，创新是企业可持续发展的驱动力。” Parallels大中华区跨平台应用销售总监赵信荣先生表示：“在此次博览会上，Parallels将向消费者展示我们在提升用户体验方面所做的不懈努力。此外，博览会也为我们与消费者之间建立了一个很好的平台，以倾听他们的心声，让我们持续地为他们带来创新的产品与技术。”<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次Parallels展台位于国家会议中心A110。为了使消费者更加近距离地了解旗下产品并回答消费者的问题，Parallels还将在8月22-24日期间在会场中央展示区上进行四场产品咨询与技术创新成果的展示。具体展示时间分别为：<br/>　　8月22日13:40—14:00<br/>　　8月23日11:30—11:50；15:20-15:40<br/>　　8月24日11:00—11:20<br/>&nbsp; &nbsp; &nbsp; 同时，Parallels也为参访Parallels展台的媒体和观众朋友准备精美的礼品包，先到先得。欢迎大家前去参与领取。想要了解更多关于Parallels的相关信息，不妨8月21日前往国家会议中心Parallels Macworld展台一探究竟。</span></p>','3','37','0','0','0','0','../upload/201801/1515650352.jpg','','0','','3','2018-01-11 15:27:45','2018-01-11 15:27:45','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('10','Oculus在伦敦组建VR团队','','','自从2014年斥资20亿美元收购Oculus以来，Facebook作为社交平台巨头一直在VR发展的前沿。而随着市场发展，VR在美国和中国等地刮起狂潮。由此，Facebook准备扩大疆域，向英国瞄准。根据外媒《每日电讯报》报道，Facebook近日在英国伦敦设立一个VR开发中心，成为旗下Oculus在欧洲的首个基地。据了解，Oculus英国团队的负责人是谷歌前高级工程师Mike LeBeau，是谷歌','<p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">自从2014年斥资20亿美元收购Oculus以来，Facebook作为社交平台巨头一直在VR发展的前沿。而随着市场发展，VR在美国和中国等地刮起狂潮。由此，Facebook准备扩大疆域，向英国瞄准。</span></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img class=\"\" height=\"200\" data-original=\"../upload/201801/1464075489148330.jpg\" alt=\"1464075489148330.jpg\" src=\"../upload/201801/1515655373897858.jpg\" style=\"max-width: 100%; display: inline; height: auto !important;\"/></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">根据外媒《每日电讯报》报道，Facebook近日在英国伦敦设立一个VR开发中心，成为旗下Oculus在欧洲的首个基地。</span></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">据了解，Oculus英国团队的负责人是谷歌前高级工程师Mike LeBeau，是谷歌语音搜索软件的开发者。在今年1月的时候，LeBeau前往伦敦加入Oculus。事实上，Oculus在英国一直有所动作。2015年，Oculus的干爹Facebook收购了英国VR创业公司Surreal Vision。而根据领英的信息显示，在过去6个月的时间里，Oculus在不断扩大英国的工程开发及开发者关系团队。</span></p><p style=\"margin-bottom: 16px; color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">目前，Oculus在美国6座城市、香港以及首尔设立了办公地点，而这次再加上伦敦。对此消息，Oculus回应表示，该公司在伦敦有一支小型团队，还表示 “很快我们会公布更多的国际扩张计划。”这句话似乎意味着，Facebook准备大举扩张。</span></p><p><br/></p>','3','35','0','0','0','0','../upload/201801/1515655554.jpg','','0','','2','2018-01-11 15:28:14','2018-01-11 15:28:14','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('11','传苹果曾与惠普研发企业Siri 最终搁浅','','','&nbsp;北京时间8月14日消息，据外媒MacRumors报道，知情人士称，苹果与IBM联手进军企业市场让竞争对手感受到了巨大的威胁。不过在结缘IBM之前，苹果还曾与惠普商谈，试图开发一款“企业版Siri”移动搜索产品。&nbsp; &nbsp; &nbsp; &nbsp;传苹果曾与惠普研发企业Siri 最终搁浅（图片来自btnet）　　消息称，苹果曾与惠普接触，讨论如何在后者的产品中整合Sir','<p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;北京时间8月14日消息，据外媒MacRumors报道，知情人士称，苹果与IBM联手进军企业市场让竞争对手感受到了巨大的威胁。不过在结缘IBM之前，苹果还曾与惠普商谈，试图开发一款“企业版Siri”移动搜索产品。<br/>&nbsp; &nbsp; &nbsp; &nbsp;传苹果曾与惠普研发企业Siri 最终搁浅（图片来自btnet）</span></p><p style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; margin-bottom: 16px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">　　消息称，苹果曾与惠普接触，讨论如何在后者的产品中整合Siri搜索服务，从而让企业员工通过他们的设备获取财务数据、产品库存数量等信息。不过，IBM的介入导致了苹果与惠普的合作项目最终搁浅。事实上，惠普除了与苹果谈判之外，还在谷歌谈论在Android设备上引入相关技术的可能性，例如推出企业版Google Now。<br/>　　虽然谷歌尚未在企业数据和企业软件方面部署搜索功能，不过随着苹果结盟IBM，该公司将重新思考企业市场的重要性，通过进入该领域削弱iPhone在商务客户市场主导地位。要知道，Android在企业市场的占比远低于iOS，与惠普这样有丰富经验的公司合作无疑是一个正确的选择。<br/>　　今年7月，苹果与IBM共同宣布，已经达成一项排他性的合作关系，即通过一种新类别的商务应用来改造企业移动市场，将IBM的大数据和分析能力引入苹果公司的iPhone和iPad。</span></p><p><br/></p>','3','35','0','0','0','0','../upload/201801/1515650568.jpg','','0','','1','2018-01-11 15:28:14','2018-01-11 15:28:14','0','0','','cn','0','1','','','','0','','','');
INSERT INTO met_news VALUES('12','Parallels即将亮相2014 Macworld博览会','','','&nbsp; &nbsp; &nbsp;自1985年创立以来，Macworld博览会已经成为全球最具影响力的苹果生态圈的盛会。本届博览会以“创新定义未来”为主题，将于8月21日在北京国家会议中心拉开帷幕。届时，Parallels也会参加此次博览会，向消费者展示其创新的产品与技术。&nbsp; &nbsp; &nbsp; “在技术更迭如此快速的今天，创新是企业可持续发展的驱动力。” Parallel','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">&nbsp; &nbsp; &nbsp;自1985年创立以来，Macworld博览会已经成为全球最具影响力的苹果生态圈的盛会。本届博览会以“创新定义未来”为主题，将于8月21日在北京国家会议中心拉开帷幕。届时，Parallels也会参加此次博览会，向消费者展示其创新的产品与技术。</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">&nbsp; &nbsp; &nbsp; “在技术更迭如此快速的今天，创新是企业可持续发展的驱动力。” Parallels大中华区跨平台应用销售总监赵信荣先生表示：“在此次博览会上，Parallels将向消费者展示我们在提升用户体验方面所做的不懈努力。此外，博览会也为我们与消费者之间建立了一个很好的平台，以倾听他们的心声，让我们持续地为他们带来创新的产品与技术。”<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次Parallels展台位于国家会议中心A110。为了使消费者更加近距离地了解旗下产品并回答消费者的问题，Parallels还将在8月22-24日期间在会场中央展示区上进行四场产品咨询与技术创新成果的展示。具体展示时间分别为：<br/>　　8月22日13:40—14:00<br/>　　8月23日11:30—11:50；15:20-15:40<br/>　　8月24日11:00—11:20<br/>&nbsp; &nbsp; &nbsp; 同时，Parallels也为参访Parallels展台的媒体和观众朋友准备精美的礼品包，先到先得。欢迎大家前去参与领取。想要了解更多关于Parallels的相关信息，不妨8月21日前往国家会议中心Parallels Macworld展台一探究竟。</span></p>','3','35','0','0','0','0','../upload/201801/1515650352.jpg','','0','','14','2019-08-02 13:53:51','2019-08-02 13:53:51','0','0','','cn','0','1','企业|消费','','','0','#1baadb','','');
INSERT INTO met_news VALUES('13','Oculus set up a VR team in London','','','Since the acquisition of Oculus for $2 billion in 2014, Facebook, a social platform giant, has been in the forefront of the development of VR. With the development of the market, VR in the United Stat','<p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since the acquisition of Oculus for $2 billion in 2014, Facebook, a social platform giant, has been in the forefront of the development of VR. With the development of the market, VR in the United States and China, and other places of the tide. As a result, Facebook is ready to expand its territory and aim at Britain.</span></p><p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px; text-align: center;\"><img class=\"\" height=\"200\" data-original=\"../upload/201801/1464075489148330.jpg\" alt=\"1464075489148330.jpg\" src=\"../upload/201801/1515737990105922.jpg\" style=\"box-sizing: inherit; border-style: none; max-width: 100%; display: inline; height: auto !important;\"/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">According to the daily telegraph, Facebook has recently set up a VR development center in London, UK, to become the first base of Oculus in Europe.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">It is understood that the head of the Oculus British team is Google&#39;s former senior engineer Mike LeBeau, the developer of Google voice search software. In January this year, LeBeau went to London to join the Oculus. In fact, Oculus has been doing something in the UK. In 2015, Oculus&#39;s acquisition of Facebook British VR startup Surreal Vision. In the past 6 months, Oculus has been expanding the UK&#39;s engineering development and developer relations team, according to the British information.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At present, Oculus has set up offices in 6 cities, Hongkong, and Seoul in the United States, and this time added to London. In response to this news, Oculus responded that the company had a small team in London and said, &quot;we will soon publish more international expansion plans.&quot; It seems to mean that Facebook is ready to expand in a big way.</span></p><p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px;\"><br/></p>','48','51','0','0','0','0','../upload/201801/1515737990105922.jpg','','0','','0','2018-01-12 14:19:27','2018-01-12 14:20:49','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('15','HP\'s HP R & D enterprise was finally stranded by Apple','','','Beijing time on August 14th, according to foreign media MacRumors reports, people familiar with the matter said that apple and IBM jointly marched into the corporate market, so that competitors felt a','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Beijing time on August 14th, according to foreign media MacRumors reports, people familiar with the matter said that apple and IBM jointly marched into the corporate market, so that competitors felt a huge threat. But before IBM, Apple had also talked to HP to try to develop a &quot;enterprise version Siri&quot; mobile search product.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Siri, a HP R &amp;amp; D company, was finally stranded by Apple (pictures from btnet)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">According to the news, Apple has contacted with HP to discuss how to integrate Siri search services in the latter products, so that employees can get financial information, product inventory and other information through their devices. However, IBM&#39;s involvement has led to the eventual stranding of a partnership between apple and HP. In fact, in addition to negotiations with apple, HP also talks about the possibility of introducing related technologies to Android devices, such as the launch of enterprise version Google Now.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Although Google has not yet deployed search function in enterprise data and enterprise software, but as apple alliance IBM, the company will rethink the importance of the business market, and enter the field to weaken iPhone&#39;s leading position in the business customer market. You know, Android is far less than iOS in the business market, and it&#39;s a good choice to cooperate with HP, a company with rich experience.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">In July this year, apple and IBM jointly announced that an exclusive partnership has been reached, that is, to transform the enterprise mobile market through a new category of business applications, and introduce IBM&#39;s big data and analysis capabilities to Apple Corp&#39;s iPhone and iPad.</span></p><p><br/></p>','48','51','0','0','0','0','../upload/201801/1515739775.jpg','','0','','0','2018-01-12 14:35:27','2018-01-12 14:36:06','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('16','Parallels Coming to the 2014 Macworld Expo','','','Since its founding in 1985, the Macworld Expo has become the most influential Apple ecosphere in the world. The exposition, with the theme of &quot;defining the future with innovation&quot;, will be o','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since its founding in 1985, the Macworld Expo has become the most influential Apple ecosphere in the world. The exposition, with the theme of &quot;defining the future with innovation&quot;, will be opened at the Beijing National Conference Center in August 21st. At that time, Parallels will also take part in the Expo to show its innovative products and technology to consumers.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&quot;In today&#39;s rapid technological change, innovation is the driving force for the sustainable development of the enterprise.&quot; Mr. Zhao Xinrong, director of cross platform sales at Parallels Greater China, said: &quot;at this Expo, Parallels will show consumers the unremitting efforts we have made in enhancing user experience. In addition, the Expo also set up a good platform for us and consumers to listen to their voices and let us continuously bring them innovative products and technologies.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The Parallels booth is located at the National Conference Center A110. In order to make consumers understand their products and answer consumers&#39; questions more closely, Parallels will also conduct four product consultation and technological innovation results in the central exhibition area of the venue on August 22-24. The specific time of display is as follows:</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 13:40 in August 22nd - 14:00</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 11:30 in August 23rd - 11:50; 15:20-15:40</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 11:00 in August 24th - 11:20</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At the same time, Parallels also prepares exquisite gift bags for the media and audience friends visiting the Parallels booth first. You are welcome to take part in the collection. To get more information about Parallels, let&#39;s go to the Parallels Macworld booth at the National Conference Center in August 21st.</span></p><p><br/></p>','48','51','0','0','0','0','../upload/201801/1515739663.jpg','','0','','0','2018-01-12 14:36:11','2018-01-12 14:37:38','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('17','Landscape H2 intelligent hand ring 158 yuan buy mobile power supply','','','A new two generation upgraded smart health bracelet H2 is launched by Tmall. The initial price of Tmall is only 70 percent off yuan, which only needs 158 yuan. The number of mobile power supply is up ','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">A new two generation upgraded smart health bracelet H2 is launched by Tmall. The initial price of Tmall is only 70 percent off yuan, which only needs 158 yuan. The number of mobile power supply is up to a minimum. First come, first served. The new generation of landscape health smart Bracelet H2, classic and minimalist European and American wind design, the top high-tech content, imported high-quality materials, comprehensive and practical health function, brings joy to many friends who love health and love smart bracelet. Landscape H2 Tmall starting only 70 percent off copy price 158 yuan berserk, heartbeat friends can poke ruthless brand Juhuasuan activities currently has limited panic buying, thousands of buyers in the heart Juhuasuan limited berserk activities, can not miss the opportunity.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since the introduction of landscape generation smart Bracelet boutique H1, has been highly commented the tens of thousands of users and repeat purchase, landscape H1 to industry impossible ultra low PFP price 99 yuan to let many users experience money affordable shopping experience, smart Bracelet two generation flagship boutique landscape H2 turned out to have more breakthroughs in the function and design and beyond, 70 percent off only 158 yuan Tmall first price in the whole network will again cause health smart Bracelet storm.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Landscape H2 health smart bracelet which focuses on healthy living concept, product functional enriched, technical content to upgrade again, the selection of high-quality health materials, waterproof design strong injection more excellent vitality into the landscape to provide a full range of H2 intelligent mobile phone, personal health housekeeper for user movement. IPX7 waterproof design and the simple wind in Europe and America</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Landscape H2 health wearable bracelet has IPX7 super waterproof, waterproof technology standards of Japan JIS (Japanese industrial standards) 7 standard, at a depth of 1 meters under water can ensure the long time without water for swimming lovers friends is an absolutely necessary new dress.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">On the surface design, Shanshui H2 continues its exquisite and concise design, making it more concise and more international, and the European and American wind is more high-end. Whether it is for its own wear or to send friends, relatives and colleagues, it is absolutely atmospheric. Landscape H2 fuselage color altogether has the colourful powder, the elegant black, the gem blue three beautiful bright colors, suits the different crowd&#39;s friend&#39;s wear demand.</span></p><p><br/></p>','48','50','0','0','0','0','../upload/201801/1515740356.jpg','','0','','0','2018-01-12 14:54:17','2018-01-12 14:54:54','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('18','Oculus set up a VR team in London','','','Since the acquisition of Oculus for $2 billion in 2014, Facebook, a social platform giant, has been in the forefront of the development of VR. With the development of the market, VR in the United Stat','<p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since the acquisition of Oculus for $2 billion in 2014, Facebook, a social platform giant, has been in the forefront of the development of VR. With the development of the market, VR in the United States and China, and other places of the tide. As a result, Facebook is ready to expand its territory and aim at Britain.</span></p><p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px; text-align: center;\"><img class=\"\" height=\"200\" data-original=\"../upload/201801/1464075489148330.jpg\" alt=\"1464075489148330.jpg\" src=\"../upload/201801/1515737990105922.jpg\" style=\"box-sizing: inherit; border-style: none; max-width: 100%; display: inline; height: auto !important;\"/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">According to the daily telegraph, Facebook has recently set up a VR development center in London, UK, to become the first base of Oculus in Europe.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">It is understood that the head of the Oculus British team is Google&#39;s former senior engineer Mike LeBeau, the developer of Google voice search software. In January this year, LeBeau went to London to join the Oculus. In fact, Oculus has been doing something in the UK. In 2015, Oculus&#39;s acquisition of Facebook British VR startup Surreal Vision. In the past 6 months, Oculus has been expanding the UK&#39;s engineering development and developer relations team, according to the British information.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At present, Oculus has set up offices in 6 cities, Hongkong, and Seoul in the United States, and this time added to London. In response to this news, Oculus responded that the company had a small team in London and said, &quot;we will soon publish more international expansion plans.&quot; It seems to mean that Facebook is ready to expand in a big way.</span></p><p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px;\"><br/></p>','48','50','0','0','0','0','../upload/201801/1515737990105922.jpg','','0','','0','2018-01-12 14:55:30','2018-01-12 14:55:30','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('20','Parallels Coming to the 2014 Macworld Expo','','','Since its founding in 1985, the Macworld Expo has become the most influential Apple ecosphere in the world. The exposition, with the theme of &quot;defining the future with innovation&quot;, will be o','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since its founding in 1985, the Macworld Expo has become the most influential Apple ecosphere in the world. The exposition, with the theme of &quot;defining the future with innovation&quot;, will be opened at the Beijing National Conference Center in August 21st. At that time, Parallels will also take part in the Expo to show its innovative products and technology to consumers.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&quot;In today&#39;s rapid technological change, innovation is the driving force for the sustainable development of the enterprise.&quot; Mr. Zhao Xinrong, director of cross platform sales at Parallels Greater China, said: &quot;at this Expo, Parallels will show consumers the unremitting efforts we have made in enhancing user experience. In addition, the Expo also set up a good platform for us and consumers to listen to their voices and let us continuously bring them innovative products and technologies.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The Parallels booth is located at the National Conference Center A110. In order to make consumers understand their products and answer consumers&#39; questions more closely, Parallels will also conduct four product consultation and technological innovation results in the central exhibition area of the venue on August 22-24. The specific time of display is as follows:</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 13:40 in August 22nd - 14:00</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 11:30 in August 23rd - 11:50; 15:20-15:40</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 11:00 in August 24th - 11:20</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At the same time, Parallels also prepares exquisite gift bags for the media and audience friends visiting the Parallels booth first. You are welcome to take part in the collection. To get more information about Parallels, let&#39;s go to the Parallels Macworld booth at the National Conference Center in August 21st.</span></p><p><br/></p>','48','50','0','0','0','0','../upload/201801/1515739663.jpg','','0','','1','2018-01-12 15:44:09','2018-01-12 15:44:09','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('22','Oculus set up a VR team in London','','','Since the acquisition of Oculus for $2 billion in 2014, Facebook, a social platform giant, has been in the forefront of the development of VR. With the development of the market, VR in the United Stat','<p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since the acquisition of Oculus for $2 billion in 2014, Facebook, a social platform giant, has been in the forefront of the development of VR. With the development of the market, VR in the United States and China, and other places of the tide. As a result, Facebook is ready to expand its territory and aim at Britain.</span></p><p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px; text-align: center;\"><img class=\"\" height=\"200\" data-original=\"../upload/201801/1464075489148330.jpg\" alt=\"1464075489148330.jpg\" src=\"../upload/201801/1515737990105922.jpg\" style=\"box-sizing: inherit; border-style: none; max-width: 100%; display: inline; height: auto !important;\"/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">According to the daily telegraph, Facebook has recently set up a VR development center in London, UK, to become the first base of Oculus in Europe.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">It is understood that the head of the Oculus British team is Google&#39;s former senior engineer Mike LeBeau, the developer of Google voice search software. In January this year, LeBeau went to London to join the Oculus. In fact, Oculus has been doing something in the UK. In 2015, Oculus&#39;s acquisition of Facebook British VR startup Surreal Vision. In the past 6 months, Oculus has been expanding the UK&#39;s engineering development and developer relations team, according to the British information.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At present, Oculus has set up offices in 6 cities, Hongkong, and Seoul in the United States, and this time added to London. In response to this news, Oculus responded that the company had a small team in London and said, &quot;we will soon publish more international expansion plans.&quot; It seems to mean that Facebook is ready to expand in a big way.</span></p><p style=\"box-sizing: inherit; margin-bottom: 16px; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal; color: rgb(34, 34, 34); font-size: 18px;\"><br/></p>','48','49','0','0','0','0','../upload/201801/1515737990105922.jpg','','0','','0','2018-01-12 16:03:29','2018-01-12 16:03:29','0','0','','en','0','1','','','','0','','','');
INSERT INTO met_news VALUES('23','Landscape H2 intelligent hand ring 158 yuan buy mobile power supply','','','A new two generation upgraded smart health bracelet H2 is launched by Tmall. The initial price of Tmall is only 70 percent off yuan, which only needs 158 yuan. The number of mobile power supply is up ','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">A new two generation upgraded smart health bracelet H2 is launched by Tmall. The initial price of Tmall is only 70 percent off yuan, which only needs 158 yuan. The number of mobile power supply is up to a minimum. First come, first served. The new generation of landscape health smart Bracelet H2, classic and minimalist European and American wind design, the top high-tech content, imported high-quality materials, comprehensive and practical health function, brings joy to many friends who love health and love smart bracelet. Landscape H2 Tmall starting only 70 percent off copy price 158 yuan berserk, heartbeat friends can poke ruthless brand Juhuasuan activities currently has limited panic buying, thousands of buyers in the heart Juhuasuan limited berserk activities, can not miss the opportunity.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since the introduction of landscape generation smart Bracelet boutique H1, has been highly commented the tens of thousands of users and repeat purchase, landscape H1 to industry impossible ultra low PFP price 99 yuan to let many users experience money affordable shopping experience, smart Bracelet two generation flagship boutique landscape H2 turned out to have more breakthroughs in the function and design and beyond, 70 percent off only 158 yuan Tmall first price in the whole network will again cause health smart Bracelet storm.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Landscape H2 health smart bracelet which focuses on healthy living concept, product functional enriched, technical content to upgrade again, the selection of high-quality health materials, waterproof design strong injection more excellent vitality into the landscape to provide a full range of H2 intelligent mobile phone, personal health housekeeper for user movement. IPX7 waterproof design and the simple wind in Europe and America</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Landscape H2 health wearable bracelet has IPX7 super waterproof, waterproof technology standards of Japan JIS (Japanese industrial standards) 7 standard, at a depth of 1 meters under water can ensure the long time without water for swimming lovers friends is an absolutely necessary new dress.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">On the surface design, Shanshui H2 continues its exquisite and concise design, making it more concise and more international, and the European and American wind is more high-end. Whether it is for its own wear or to send friends, relatives and colleagues, it is absolutely atmospheric. Landscape H2 fuselage color altogether has the colourful powder, the elegant black, the gem blue three beautiful bright colors, suits the different crowd&#39;s friend&#39;s wear demand.</span></p><p><br/></p>','48','49','0','0','0','0','../upload/201801/1515740356.jpg','','0','','0','2018-01-12 16:03:29','2018-01-12 16:03:29','0','0','','en','0','0','1','','','0','','','');
INSERT INTO met_news VALUES('24','Parallels Coming to the 2014 Macworld Expo','','','Since its founding in 1985, the Macworld Expo has become the most influential Apple ecosphere in the world. The exposition, with the theme of &quot;defining the future with innovation&quot;, will be o','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Since its founding in 1985, the Macworld Expo has become the most influential Apple ecosphere in the world. The exposition, with the theme of &quot;defining the future with innovation&quot;, will be opened at the Beijing National Conference Center in August 21st. At that time, Parallels will also take part in the Expo to show its innovative products and technology to consumers.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&quot;In today&#39;s rapid technological change, innovation is the driving force for the sustainable development of the enterprise.&quot; Mr. Zhao Xinrong, director of cross platform sales at Parallels Greater China, said: &quot;at this Expo, Parallels will show consumers the unremitting efforts we have made in enhancing user experience. In addition, the Expo also set up a good platform for us and consumers to listen to their voices and let us continuously bring them innovative products and technologies.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The Parallels booth is located at the National Conference Center A110. In order to make consumers understand their products and answer consumers&#39; questions more closely, Parallels will also conduct four product consultation and technological innovation results in the central exhibition area of the venue on August 22-24. The specific time of display is as follows:</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 13:40 in August 22nd - 14:00</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 11:30 in August 23rd - 11:50; 15:20-15:40</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At 11:00 in August 24th - 11:20</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">At the same time, Parallels also prepares exquisite gift bags for the media and audience friends visiting the Parallels booth first. You are welcome to take part in the collection. To get more information about Parallels, let&#39;s go to the Parallels Macworld booth at the National Conference Center in August 21st.</span></p><p><br/></p>','48','49','0','0','0','0','../upload/201801/1515739663.jpg','','0','','6','2018-01-12 16:03:29','2018-01-12 16:03:29','0','0','','en','0','1','','','','0','','','');

DROP TABLE IF EXISTS met_online;
CREATE TABLE `met_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `value` varchar(255) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO met_online VALUES('1','0','售前客服','00000000','icon fa-qq','0','cn');
INSERT INTO met_online VALUES('2','0','售后支持','00000000','icon fa-qq','0','cn');
INSERT INTO met_online VALUES('3','0','服务热线','00000000','icon fa-phone-square','3','cn');
INSERT INTO met_online VALUES('4','0','微信客服','../upload/201807/1554199135.jpg','icon fa-wechat','4','cn');
INSERT INTO met_online VALUES('5','0','Sales','https://www.metinfo.cn/','icon fa-facebook','6','en');
INSERT INTO met_online VALUES('6','0','Sales','https://www.metinfo.cn/','icon fa-skype','5','en');
INSERT INTO met_online VALUES('7','0','Tel','4000084433','icon fa-phone-square','3','en');
INSERT INTO met_online VALUES('8','0','email','mailto:sales@metinfo.cn','icon fa-envelope-o','7','en');

DROP TABLE IF EXISTS met_otherinfo;
CREATE TABLE `met_otherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info1` varchar(255) DEFAULT '',
  `info2` varchar(255) DEFAULT '',
  `info3` varchar(255) DEFAULT '',
  `info4` varchar(255) DEFAULT '',
  `info5` varchar(255) DEFAULT '',
  `info6` varchar(255) DEFAULT '',
  `info7` varchar(255) DEFAULT '',
  `info8` text,
  `info9` text,
  `info10` text,
  `imgurl1` varchar(255) DEFAULT '',
  `imgurl2` varchar(255) DEFAULT '',
  `rightmd5` varchar(255) DEFAULT '',
  `righttext` varchar(255) DEFAULT '',
  `authcode` text,
  `authpass` varchar(255) DEFAULT '',
  `authtext` varchar(255) DEFAULT '',
  `data` longtext,
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_otherinfo VALUES('1','NOUSER','2147483647','','','','','','','','','','','','','','','','','metinfo');

DROP TABLE IF EXISTS met_para;
CREATE TABLE `met_para` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0',
  `value` varchar(255) DEFAULT '',
  `module` int(10) DEFAULT '0',
  `order` int(10) DEFAULT '0',
  `lang` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO met_para VALUES('1','141','索取资料','8','1','cn');
INSERT INTO met_para VALUES('2','141','产品购买','8','2','cn');
INSERT INTO met_para VALUES('3','141','商务合作','8','3','cn');
INSERT INTO met_para VALUES('4','141','其他反馈','8','4','cn');
INSERT INTO met_para VALUES('5','164','先生','6','1','cn');
INSERT INTO met_para VALUES('6','164','女士','6','2','cn');
INSERT INTO met_para VALUES('7','180','搜索引擎','8','1','cn');
INSERT INTO met_para VALUES('8','180','网站链接','8','2','cn');
INSERT INTO met_para VALUES('9','180','朋友介绍','8','3','cn');
INSERT INTO met_para VALUES('10','180','电视广告','8','4','cn');
INSERT INTO met_para VALUES('11','180','其他方式','8','5','cn');
INSERT INTO met_para VALUES('12','146','Data acquisition','8','1','en');
INSERT INTO met_para VALUES('13','146','Product purchase','8','2','en');
INSERT INTO met_para VALUES('14','146','Business cooperation','8','3','en');
INSERT INTO met_para VALUES('15','146','Other feedback','8','4','en');
INSERT INTO met_para VALUES('16','151','man','6','1','en');
INSERT INTO met_para VALUES('17','151','woman','6','2','en');
INSERT INTO met_para VALUES('18','185','Search Engines','8','1','en');
INSERT INTO met_para VALUES('19','185','Website link','8','2','en');
INSERT INTO met_para VALUES('20','185','Television advertising','8','3','en');
INSERT INTO met_para VALUES('21','185','Other ways','8','4','en');

DROP TABLE IF EXISTS met_parameter;
CREATE TABLE `met_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `options` text,
  `description` text,
  `no_order` int(2) DEFAULT '0',
  `type` int(2) DEFAULT '0',
  `access` int(11) DEFAULT '0',
  `wr_ok` int(2) DEFAULT '0',
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `module` int(2) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  `wr_oks` int(2) DEFAULT '0',
  `related` varchar(50) DEFAULT '',
  `edit_ok` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

INSERT INTO met_parameter VALUES('1','公司名称','','','9','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('2','公司传真','','','10','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('3','公司联系地址','','','11','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('4','公司邮政编码','','','12','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('5','公司网址','','','13','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('117','型号','','','0','1','0','0','4','0','0','3','cn','0','','1');
INSERT INTO met_parameter VALUES('118','颜色','','','0','1','0','0','4','5','11','3','cn','0','','1');
INSERT INTO met_parameter VALUES('119','屏幕尺寸','','','0','1','0','0','4','5','11','3','cn','0','','1');
INSERT INTO met_parameter VALUES('120','屏幕类型','','','0','1','0','0','4','5','11','3','cn','0','','1');
INSERT INTO met_parameter VALUES('121','摄像头','','','0','1','0','0','4','5','11','3','cn','0','','1');
INSERT INTO met_parameter VALUES('122','内存','','','0','1','0','0','4','5','12','3','cn','0','','1');
INSERT INTO met_parameter VALUES('123','硬盘','','','0','1','0','0','4','5','12','3','cn','0','','1');
INSERT INTO met_parameter VALUES('124','屏幕尺寸','','','0','1','0','0','4','5','12','3','cn','0','','1');
INSERT INTO met_parameter VALUES('125','台式机类型','','','0','1','0','0','4','5','12','3','cn','0','','1');
INSERT INTO met_parameter VALUES('126','内存容量','','','0','1','0','0','4','5','15','3','cn','0','','1');
INSERT INTO met_parameter VALUES('127','硬盘容量','','','0','1','0','0','4','5','15','3','cn','0','','1');
INSERT INTO met_parameter VALUES('128','售后服务','','','0','1','0','0','4','5','15','3','cn','0','','1');
INSERT INTO met_parameter VALUES('129','键盘类型','','','0','1','0','0','4','6','0','3','cn','0','','1');
INSERT INTO met_parameter VALUES('130','操作系统','','','0','1','0','0','4','6','0','3','cn','0','','1');
INSERT INTO met_parameter VALUES('131','用户界面','','','0','1','0','0','4','6','0','3','cn','0','','1');
INSERT INTO met_parameter VALUES('137','姓名','','','0','1','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('138','联系电话','','','2','8','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('139','联系地址','','','3','1','0','0','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('140','留言内容','','','4','3','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('141','反馈主题','','','0','2','0','1','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('142','姓名','','','1','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('143','职务','','','2','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('144','E-mail','','','3','9','0','1','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('163','姓名','','','1','1','0','1','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('164','性别','','','2','6','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('165','出生年月','','','3','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('166','籍贯','','','4','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('167','联系电话','','','5','8','0','1','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('168','E-mail','','','6','9','0','1','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('169','学历','','','7','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('170','专业','','','8','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('171','学校','','','9','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('172','通讯地址','','','10','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('173','工作经历','','','11','3','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('174','业余爱好','','','12','3','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('175','作品','','','13','5','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('176','联系电话','','','4','8','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('177','单位名称','','','5','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('178','详细地址','','','6','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('179','信息描述','','','7','3','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('180','您是怎么找到我们的','','','8','4','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('186','Email','','','1','9','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('187','文件版本','','','0','1','0','0','0','0','0','4','cn','0','','1');
INSERT INTO met_parameter VALUES('188','京东购买','','','101','10','0','0','0','0','0','3','cn','0','','1');
INSERT INTO met_parameter VALUES('189','淘宝购买','','','102','10','0','0','0','0','0','3','cn','0','','1');
INSERT INTO met_parameter VALUES('132','Name','','','0','1','0','1','0','0','0','7','en','0','','1');
INSERT INTO met_parameter VALUES('133','Contact','','','1','8','0','0','0','0','0','7','en','0','','1');
INSERT INTO met_parameter VALUES('134','E-mail','','','2','9','0','1','0','0','0','7','en','0','','1');
INSERT INTO met_parameter VALUES('135','Content','','','3','3','0','1','0','0','0','7','en','0','','1');
INSERT INTO met_parameter VALUES('145','Model','','','0','1','0','0','0','0','0','3','en','0','','1');
INSERT INTO met_parameter VALUES('146','Product','[{\"id\":\"12\",\"value\":\"Data acquisition\",\"order\":\"1\"},{\"id\":\"13\",\"value\":\"Product purchase\",\"order\":\"2\"},{\"id\":\"14\",\"value\":\"Business cooperation\",\"order\":\"3\"},{\"id\":\"15\",\"value\":\"Other feedback\",\"order\":\"4\"}]','','0','2','0','1','0','0','0','8','en','1','55-0-0','1');
INSERT INTO met_parameter VALUES('147','Name','','','1','1','0','0','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('148','Post','','','2','1','0','0','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('149','E-mail','','','3','9','0','1','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('181','Cellphone','','','4','1','0','0','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('150','Name','','','1','1','0','1','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('151','Sex','','','2','6','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('152','Born','','','3','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('153','From','','','4','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('154','Cellphone','','','5','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('155','E-mail','','','6','9','0','1','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('156','Education','','','7','1','0','1','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('157','Major','','','8','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('158','School','','','9','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('159','Address','','','10','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('160','Avocation','','','11','1','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('161','Recent photos','','','12','5','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('162','Works','','','13','5','0','0','0','0','0','6','en','0','','1');
INSERT INTO met_parameter VALUES('182','Employer','','','5','1','0','0','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('183','Address','','','6','1','0','0','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('184','Information  description','','','7','3','0','0','0','0','0','8','en','1','','1');
INSERT INTO met_parameter VALUES('185','How did you find us？','','','8','4','0','0','0','0','0','8','en','0','','1');
INSERT INTO met_parameter VALUES('190','Company name','','','9','1','0','0','0','0','0','10','en','1','','1');
INSERT INTO met_parameter VALUES('191','Fax','','','10','1','0','0','0','0','0','10','en','1','','1');
INSERT INTO met_parameter VALUES('192','Company address','','','11','1','0','0','0','0','0','10','en','1','','1');
INSERT INTO met_parameter VALUES('193','Company Postcode','','','12','1','0','0','0','0','0','10','en','1','','1');
INSERT INTO met_parameter VALUES('194','Website','','','13','1','0','0','0','0','0','10','en','1','','1');

DROP TABLE IF EXISTS met_plist;
CREATE TABLE `met_plist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT '0',
  `paraid` int(11) DEFAULT '0',
  `info` text,
  `lang` varchar(50) DEFAULT '',
  `imgname` varchar(255) DEFAULT '',
  `module` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO met_plist VALUES('1','1','115','','cn','','3');
INSERT INTO met_plist VALUES('2','1','114','','cn','','3');
INSERT INTO met_plist VALUES('3','1','116','','cn','','3');
INSERT INTO met_plist VALUES('17','4','117','Lenovo-30600i','cn','','3');
INSERT INTO met_plist VALUES('18','5','131','EMUI 4.1','cn','','3');
INSERT INTO met_plist VALUES('4','2','121','主摄像头：800万像素  副摄像头：800万像素','cn','','3');
INSERT INTO met_plist VALUES('5','2','120','IPS屏','cn','','3');
INSERT INTO met_plist VALUES('6','2','119','8.4寸','cn','','3');
INSERT INTO met_plist VALUES('7','2','118','日辉金/皓月银','cn','','3');
INSERT INTO met_plist VALUES('8','2','117','BTV-W09','cn','','3');
INSERT INTO met_plist VALUES('9','3','125','游戏影音','cn','','3');
INSERT INTO met_plist VALUES('10','3','124','23英寸','cn','','3');
INSERT INTO met_plist VALUES('11','3','123','1TB 7200转','cn','','3');
INSERT INTO met_plist VALUES('12','3','122','4GB DDR4','cn','','3');
INSERT INTO met_plist VALUES('13','3','117','AIO 510-23系列','cn','','3');
INSERT INTO met_plist VALUES('14','4','128','全国联保','cn','','3');
INSERT INTO met_plist VALUES('15','4','127','1TB','cn','','3');
INSERT INTO met_plist VALUES('16','4','126','4GB','cn','','3');
INSERT INTO met_plist VALUES('19','5','130','EMUI 4.1 + Android 6.0','cn','','3');
INSERT INTO met_plist VALUES('20','5','129','虚拟键盘','cn','','3');
INSERT INTO met_plist VALUES('21','5','117','EDI-AL10','cn','','3');
INSERT INTO met_plist VALUES('22','6','131','华为 EMUI 4.1','cn','','3');
INSERT INTO met_plist VALUES('23','6','130','华为 EMUI 4.1 + Android 6.0','cn','','3');
INSERT INTO met_plist VALUES('24','6','129','虚拟键盘','cn','','3');
INSERT INTO met_plist VALUES('25','6','117','BLN-AL10','cn','','3');
INSERT INTO met_plist VALUES('26','7','131','EMUI4.1','cn','','3');
INSERT INTO met_plist VALUES('27','7','130','Android 6.0','cn','','3');
INSERT INTO met_plist VALUES('28','7','129','虚拟键盘','cn','','3');
INSERT INTO met_plist VALUES('29','7','117','NCE-AL00','cn','','3');
INSERT INTO met_plist VALUES('50','8','117','AKG&HUAWEI','cn','','3');
INSERT INTO met_plist VALUES('31','9','117','AM08','cn','','3');
INSERT INTO met_plist VALUES('32','10','117','AP08Q','cn','','3');
INSERT INTO met_plist VALUES('33','11','117','watch','cn','','3');
INSERT INTO met_plist VALUES('45','1','117','','cn','','3');
INSERT INTO met_plist VALUES('46','1','187','V1.0','cn','','4');
INSERT INTO met_plist VALUES('52','8','189','https://www.taobao.com/','cn','','3');
INSERT INTO met_plist VALUES('51','8','188','https://www.jd.com/','cn','','3');
INSERT INTO met_plist VALUES('34','12','145','Watch','en','','3');
INSERT INTO met_plist VALUES('35','13','145','AP08Q','en','','3');
INSERT INTO met_plist VALUES('36','14','145','AM08','en','','3');
INSERT INTO met_plist VALUES('37','15','145','AKG','en','','3');
INSERT INTO met_plist VALUES('38','16','145','NOTE 8','en','','3');
INSERT INTO met_plist VALUES('39','17','145','player 6x','en','','3');
INSERT INTO met_plist VALUES('40','18','145','NCE-AL00','en','','3');
INSERT INTO met_plist VALUES('41','19','145','30600i','en','','3');
INSERT INTO met_plist VALUES('42','20','145','Air 13.3','en','','3');
INSERT INTO met_plist VALUES('43','21','145','AIO 510-23','en','','3');
INSERT INTO met_plist VALUES('44','22','145','BTV-W09','en','','3');
INSERT INTO met_plist VALUES('49','15','190','https://www.amazon.com/','en','','3');

DROP TABLE IF EXISTS met_product;
CREATE TABLE `met_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '',
  `ctitle` varchar(200) DEFAULT '',
  `keywords` varchar(200) DEFAULT '',
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `classother` text NOT NULL,
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `new_ok` int(1) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT '',
  `imgurls` varchar(255) DEFAULT '',
  `displayimg` text,
  `com_ok` int(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `issue` varchar(100) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `filename` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `content1` mediumtext,
  `content2` mediumtext,
  `content3` mediumtext,
  `content4` mediumtext,
  `contentinfo` varchar(255) DEFAULT '',
  `contentinfo1` varchar(255) DEFAULT '',
  `contentinfo2` varchar(255) DEFAULT '',
  `contentinfo3` varchar(255) DEFAULT '',
  `contentinfo4` varchar(255) DEFAULT '',
  `recycle` int(11) DEFAULT '0',
  `displaytype` int(11) DEFAULT '1',
  `tag` text,
  `links` varchar(200) DEFAULT '',
  `imgsize` varchar(200) DEFAULT '',
  `text_size` int(11) DEFAULT '0',
  `text_color` varchar(100) DEFAULT '',
  `other_info` text,
  `custom_info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO met_product VALUES('1','小米笔记本Air 13.3','','','金属机身 独立显卡 8GB内存 256GB 硬盘','<h1 class=\"m-t-0 font-size-24 editable-click\" met-id=\"1\" met-table=\"product\" met-field=\"title\" style=\"box-sizing: inherit; font-size: 28px; margin-top: 0px; margin-bottom: 11px; font-family: &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; line-height: 1.2; color: rgb(55, 71, 79); text-shadow: rgba(0, 0, 0, 0.14902) 0px 0px 1px; white-space: normal;\">小米笔记本Air 13.3</h1><p class=\"description editable-click\" met-id=\"1\" met-table=\"product\" met-field=\"description\" style=\"box-sizing: inherit; margin-bottom: 15px; color: rgb(94, 115, 135); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal;\">金属机身 独立显卡 8GB内存 256GB 硬盘</p><p><br/></p>','4','5','10','','0','0','0','../upload/201801/1515551216.jpg','','','0','32','2018-01-16 09:35:29','2018-01-10 10:19:58','admin','0','0','','cn','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他属性</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">包装体积<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;375mm*115mm*292mm</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">是否PC平板二合一<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;否</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">适用场景<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;女性定位 轻薄便携 学生 商务办公 高清游戏 家庭娱乐</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">售后服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;全国联保</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">是否超极本<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;是</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">基本参数</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;Xiaomi/小米</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">系列<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;小米笔记本Air</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;Core/酷睿 i5 i5-6200U</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;独立显卡/NVIDIA GeForce 940MX</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">重量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;1kg(含)-1.5kg(不含)</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">锂电池电芯数量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;4芯锂电池</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">颜色分类<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;13.3</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">上市时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;2016年</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">月份<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;9月</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">操作系统<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;windows 10</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">输入设备<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;触摸板</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">附加功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;type-c接口 HDMI接口 摄像头功能 扬声器 USB 3.0</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">是否内置电池<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;内置电池</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显存容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;1GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机械硬盘容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;0</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">固态硬盘<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;256GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内存容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;8g</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显示</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;LED</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;13.3英寸</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕比例<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;16:9</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;1920x1080</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">是否触摸屏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;非触摸屏</span></p><p><br/></p>','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">笔记本电脑主机	1 件&nbsp;</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电源适配器	1 件&nbsp;</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">入门指南（三包凭证）	1 件</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('2','华为HUAWEI平板 M3','','','8.4英寸2K炫丽大屏，贴心护眼模式；震撼立体声场，纯净Hi-Fi音质；8核64位处理器，4GB大容量内存 5100mAh大电池，续航持久耐用；灵敏指纹解锁，智能指纹操控；精致金属机身，握持轻薄舒适','<p><span style=\"color: rgb(94, 115, 135); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif;\">8.4英寸2K炫丽大屏，贴心护眼模式；震撼立体声场，纯净Hi-Fi音质；8核64位处理器，4GB大容量内存 5100mAh大电池，续航持久耐用；灵敏指纹解锁，智能指纹操控；精致金属机身，握持轻薄舒适</span></p>','4','5','11','','0','0','0','../upload/201801/1515569895.jpg','','','0','8','2018-01-16 09:36:10','2018-01-10 15:28:17','admin','0','0','','cn','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主体</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为（HUAWEI）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>BTV-W09</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传播名<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为平板M3</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">颜色<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>日晖金/皓月银</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">外观设计<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>直板</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">类别<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>平板电脑</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">操作系统<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Android 6.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户界面<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>EMUI 4.1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>海思麒麟950</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU核数<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>八核</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU主频<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>4x2.3GHz + 4x1.8GHz</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPU<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Mali-T880</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">键盘类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>软键盘</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">输入方式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>触摸</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">智能阅读<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持护眼模式</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音助手<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">字体大小设置<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">安全功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>指纹，平板管家，文件保密柜</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>指纹导航，影音锁屏，学生模式，护眼模式，双任务窗口，华为视频</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>8.4英寸</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕色彩<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1600万色</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>IPS屏</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>2560x1600</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">可视角度<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>上80°/下80°/左80°/右80°</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕比例<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>16:10</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">PPI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>359 PPI</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">玻璃<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>铝硅玻璃</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">触摸屏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>电容屏</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">输入法<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为输入法，华为Swype输入法，Android键盘</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色描述<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>8.4英寸2K炫丽大屏，贴心护眼模式；震撼立体声场，纯净Hi-Fi音质；8核64位处理器，4GB大容量内存 5100mAh大电池，续航持久耐用；灵敏指纹解锁，智能指纹操控；精致金属机身，握持轻薄舒适</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">触控操作<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>10点触控</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络频率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据业务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">加密方式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络频段<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">运行内存（RAM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>4GB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储容量（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>标配：32GB，高配：64GB，顶配：128GB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">扩展支持<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Micro SD卡</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">可扩展容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>128GB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">光线感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">重力感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">距离感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">陀螺仪<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子罗盘<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指南针<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">NFC<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">状态指示灯<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">加速传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传输功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi标准<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>802.11 b/g/n/a/ac</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi工作频段<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>2.4GHz&amp;5GHz</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi加密方式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>WEP/WPA/WPA2</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi热点<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WiFi Display<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN Direct<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蓝牙传输<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>BT 4.1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">HDMI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">OTG<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">USB<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>USB 2.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网卡<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">DLNA<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPS<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>GPS、GLONASS、北斗（BDS）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">摄像功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>800万像素</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">副摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>800万像素</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>CMOS</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闪光灯<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频拍摄<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">变焦模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>数字变焦</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">自动对焦<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>主摄像头支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">照片分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>主摄像头：最大可支持3264×2448，副摄像头：最大可支持3264×2448</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">娱乐功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频编码<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>H.264</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>H.264/MPEG4/H.263/VP8/H.265</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频文件格式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>MP4/3GP/3G2/ASF/AVI/MKV/WEBM</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音频编码<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>AMR-NB/AAC</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音频播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>AMR-NB/AAC/AAC+/EAAC+/MP3/OGG/MIDI/PCM</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音频文件格式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>MP3/FLAC/APE/WAV/OGG/MIDI/3GP/AAC</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音效<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>SWS 3.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">图片格式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>JPEG，GIF，BMP，PNG</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">录音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">收音机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">流媒体<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子书<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">彩信功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Flash 播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>用户下载安装Adobe FlashPlayer插件后支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3D图像加速<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">通话和信息功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G视频通话<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持（可下载第三方应用支持视频通话）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">铃音类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持（可下载第三方应用支持视频通话）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">彩信<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">导航定位功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">卫星导航<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">导航软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>高德地图</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蜂窝网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">个人助理</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Office<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子邮件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">浏览器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闹钟<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">后台即时通信<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>未预置</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">炒股软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>未预置</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">实用工具<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>日历、计算器、录音机、备忘录、镜子、指南针</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">云服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内置软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>百度搜索、高德地图、Microsoft Office、Outlook</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">谷歌应用<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">热插拔<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>锂聚合物</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>5100mAh</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池更换<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">理论通话时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">理论使用时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1.85天</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">理论待机时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>350小时</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">充电时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>3.7小时</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">耳机接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>3.5mm</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">扬声器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>2个</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">麦克风<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1个</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">听筒<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">SIM卡尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">SD卡<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>microSD</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">USB接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>无</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">按键<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>音量键，电源键，指纹导航键</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">软件升级<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>microSD卡本地升级，联网在线升级</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">软件名称<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为终端智能设备人机交互通信软件V2.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>215.5mm×124.2mm×7.3mm</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身重量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>约310g</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">充电器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>5V2A</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">抗指纹<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">后盖<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>不可拆卸</span></p><p><br/></p>','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主机 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">充电器 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据线 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕保护膜 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">说明书 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">保修卡 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">AKG耳机 x 1（仅128G版本）</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('3','Lenovo/联想一体机电脑I5-6400T','','','六代四核I5 2G独显 23寸窄边框 全新正品','<h1 class=\"m-t-0 font-size-24 editable-click\" met-id=\"3\" met-table=\"product\" met-field=\"title\" style=\"box-sizing: inherit; font-size: 28px; margin-top: 0px; margin-bottom: 11px; font-family: &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; line-height: 1.2; color: rgb(55, 71, 79); text-shadow: rgba(0, 0, 0, 0.14902) 0px 0px 1px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Lenovo/联想一体机电脑I5-6400T</span></h1><p class=\"description editable-click\" met-id=\"3\" met-table=\"product\" met-field=\"description\" style=\"box-sizing: inherit; margin-bottom: 15px; color: rgb(94, 115, 135); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">六代四核I5 2G独显 23寸窄边框 全新正品</span></p><p><br/></p>','4','5','12','','0','0','0','../upload/201801/1515574798.jpg','','','0','12','2018-01-16 09:36:59','2018-01-10 16:46:40','admin','0','0','','cn','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">基本参数<br style=\"box-sizing: border-box;\"/></span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;Lenovo/联想</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;AIO 510-23系列</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显卡接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;其他/other</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;独立显卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">操作系统<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;WIN10</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内存容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;4GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">硬盘容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;1TB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显存容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;2GB GDDR5</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显示</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;23英寸</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显示器类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;LED</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">是否触摸屏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;非触摸屏</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他属性</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">适用品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;Intel/英特尔</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内存类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;DDR4 2133</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">硬盘接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;SATA</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">硬盘转速<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;7200转</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">光驱类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;无光驱</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">售后服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;全国联保</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">台式机类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>&nbsp;影音娱乐</span></p><p><br/></p>','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电脑主机	1 件&nbsp;</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电源适配器	1 件&nbsp;</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">入门指南（三包凭证）	1 件</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('4','Lenovo/联想台式机电脑30600i','','','Lenovo/联想台式机电脑30600i','<h1 class=\"m-t-0 font-size-24 editable-click\" met-id=\"4\" met-table=\"product\" met-field=\"title\" style=\"box-sizing: inherit; font-size: 28px; margin-top: 0px; margin-bottom: 11px; font-family: &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; line-height: 1.2; color: rgb(55, 71, 79); text-shadow: rgba(0, 0, 0, 0.14902) 0px 0px 1px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Lenovo/联想台式机电脑30600i</span></h1><p><br/></p>','4','5','15','','0','0','0','../upload/201801/1515633654.jpg','','','0','8','2018-01-16 09:38:41','2018-01-11 09:19:27','admin','0','0','','cn','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" line-height:=\"\" font-size:=\"\">存储<br/></span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内存容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;4GB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">硬盘容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;1T</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显存容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;2GB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">基本参数</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;Lenovo/联想</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;独立显卡</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显示</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显示器类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;宽屏LED</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他属性</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">适用品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;Intel/英特尔</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内存类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;其他/other</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">硬盘转速<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;7200转</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">光驱类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;DVD-ROM</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">售后服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>&nbsp;全国联保</span></p><p><br/></p>','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电脑主机	1 件&nbsp;</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电源适配器	1 件</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">显示器 1 件&nbsp;</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">入门指南（三包凭证）	1 件</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('5','华为HUAWEI NOTE 8','','','全向录音/指向回放、定向免提、指关节手势、分屏多窗口、语音控制、情景智能、单手操作、杂志锁屏、手机找回、无线WIFI打印、学生模式、多屏互动、运动健康','<p><span style=\"color: rgb(94, 115, 135); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">全向录音/指向回放、定向免提、指关节手势、分屏多窗口、语音控制、情景智能、单手操作、杂志锁屏、手机找回、无线WIFI打印、学生模式、多屏互动、运动健康</span></p>','4','6','16','','0','0','0','../upload/201801/1515634241.jpg','','','0','9','2018-01-16 09:39:34','2018-01-11 09:26:16','admin','0','0','','cn','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主体</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Honor</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>EDI-AL10</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传播名<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>荣耀 NOTE 8</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">外观设计<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>直板</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">智能手机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>是</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">操作系统<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为 EMUI 4.1 + Android 6.0</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户界面<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为 EMUI 4.1</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>麒麟955</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU核数<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>8核</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU主频<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>4*Cortex A72 2.5GHz + 4*Cortex A53 1.8GHz + 微智核I5</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPU<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Mali T880 MP4</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">双卡<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">键盘类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>虚拟键盘</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">输入方式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>百度输入法华为版，华为Swype输入法，Android 键盘（AOSP）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G视频通话<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">安全功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>保密柜</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>全向录音/指向回放、定向免提、指关节手势、分屏多窗口、语音控制、情景智能、单手操作、杂志锁屏、手机找回、无线WIFI打印、学生模式、多屏互动、运动健康</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">4G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：移动4G（TDD-LTE）/联通4G（TDD-LTE/FDD-LTE）/电信4G（TDD-LTE/FDD-LTE）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：移动3G（TD-SCDMA）/ 联通3G（WCDMA）/ 电信3G（CDMA 2000）。副卡：电信3G（CDMA2000）。备注：不能同时使用2张电信卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">2G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：移动2G（GSM）/联通2G（GSM）/电信2G（CDMA1X）；副卡：移动2G（GSM）/联通2G（GSM）/电信2G（CDMA1X）。备注：不能同时使用2张电信卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持移动4G+/4G/3G/2G，支持联通/电信 4G/3G/2G，备注：卡槽1、2可任意切换为主卡、副卡；不能同时使用2张电信卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络频率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：TDD-LTE：B38/B39/B40/B41（2555MHz~2655MHz）；FDD-LTE：B1/B3/B7；TD-SCDMA：B34/B39；WCDMA：B1/B2/B5/B8；CDMA2000/1X：BC0（800MHz）；GSM：850/900/1800/1900MHz；副卡：GSM：850/900/1800/1900MHz；备注：不能同时支持两张CDMA卡， 各个地区的网络和频段可能有所不同，具体取决于当地运营商以及您所在的位置</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据业务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>TDD-LTE/FDD-LTE/TD-SCDMA/WCDMA/HSPA+/DC-HSDPA/CDMA2000/CDMA1X/EDGE/GPRS；FDD-LTE：Cat4/Cat6；TDD-LTE：Cat4/Cat6</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">浏览器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为 EMUI 4.1 浏览器</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\"><br style=\"box-sizing: border-box;\"/></span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>6.6英寸</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕色彩<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>1670万色</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Super AMOLED显示屏</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>WQHD(2K) 2560×1440</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">触摸屏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>电容屏，多点触控</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕像素密度PPI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>443</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\"><br style=\"box-sizing: border-box;\"/></span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">重力感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">光线传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">距离感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指纹传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">霍尔传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">陀螺仪<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指南针<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">气压计<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">运行内存（RAM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>4GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身内存（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>128GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户可用空间（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>约剩余存储 110GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>microSD(TF)卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">最大支持扩展<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>最高支持128GB（非标配）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">娱乐功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音效<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>DTS</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子书<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">收音机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内置软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>指南针、手电筒、镜子、日历、图库、音乐、视频、计算器、备忘录、录音机、天气、时钟、文件管理、手机管家</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>1300万像素 光学防抖</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">副摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>800万像素</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>CMOS</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闪光灯<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>双色温LED闪光灯</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频拍摄<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持1080p全高清摄像</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">连拍功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">防抖模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>光学防抖</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">变焦模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>数码变焦，最大支持4X</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>流光快门（含车水马龙、光绘涂鸦、丝绢流水、绚丽星轨）、超级夜景、专业模式、滤镜拍照、美肤拍照(魅我)、美肤录像、全景、HDR、水印、有声照片、熄屏快拍、笑脸抓拍、声控拍照、定时拍照、触摸拍照、文档校正</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">自动对焦<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主摄像头支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">声控拍照<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">有声拍照<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍照优化<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>ISP拍照优化</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">人脸识别<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">笑脸抓拍<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">照片分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>最大支持4160×3120像素照片拍摄</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传输功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持，802.11a/b/g/n/ac，2.4G和5G</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持，802.11a/b/g/n/ac，2.4G和5G</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi热点<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WiFi Display<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN Direct<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">多屏互动<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蓝牙<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>BT4.2，支持BLE</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">OTG<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">天际通<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">USB<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>USB2.0，480Mbit/s。支持USB共享网络，USB充电，OTG功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPS<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>GPS/AGPS/Glonass/北斗</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">导航软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蜂窝网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">通话和信息功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G视频通话<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持4G高清语音视频通话，3G网络下不支持视频通话</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">彩信<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">个人助理</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">云服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>云同步、云备份、手机找回</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Office<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>内置WPS Office，支持OFFICE文档查看和编辑，支持pdf文档查看等</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">名片读取<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子邮件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>POP3/IMAP/Exchange</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">计算器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闹钟<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">录音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">实用工具<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>指南针、手电筒、镜子、日历、图库、音乐、视频、计算器、备忘录、录音机、天气、时钟、文件管理、手机管家</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色应用<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>全向录音/指向回放、定向免提、指关节手势、分屏多窗口、语音控制、情景智能、单手操作、杂志锁屏、手机找回、无线WIFI打印、学生模式、多屏互动、运动健康</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Li-Polymer 锂聚合物电池</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>4500mAh（典型值）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池更换<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>手机内置，不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">充电时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>约150分钟（华为9V2A适配器）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据线接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>USB TYPE-C</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">耳机接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>3.5mm 耳机接口</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">SIM卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Nano SIM卡；卡槽1（内卡槽）、卡槽2（外卡槽）可通过双卡管理界面任意切换为主卡、副卡。卡槽2（外卡槽）支持Nano SIM和microSD二选一</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">软件升级<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>HOTA 在线升级</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">字体大小设置<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音助手<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">软件名称<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为终端智能设备人机交互通信软件V2.0</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>178.8mm×90.9mm×7.18mm</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身重量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>约219g</span></p><p><br/></p>','<ul class=\" list-paddingleft-2\" style=\"box-sizing: border-box; font-family: \" microsoft=\"\" list-style-position:=\"\" list-style-image:=\"\" padding:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">手机（含内置电池） x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">快速指南 x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">三包凭证 x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">取卡针 x 1</span></p></li></ul><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('6','华为HUAWEI畅玩6X','','','大光圈、美妆、魅我、专业拍照、十级美肤拍照、全景、HDR、美食、流光快门、水印、有声照片、文档校正、慢动作','<p><span style=\"color: rgb(94, 115, 135); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">大光圈、美妆、魅我、专业拍照、十级美肤拍照、全景、HDR、美食、流光快门、水印、有声照片、文档校正、慢动作</span></p>','4','6','17','','0','0','0','../upload/201801/1515635094.jpg','','','0','6','2018-01-16 09:41:09','2018-01-11 09:31:21','admin','0','0','','cn','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主体</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Honor</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>BLN-AL10</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传播名<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>荣耀畅玩 6X</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>全网通版本</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">上市时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>2016年10月</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">外观设计<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>直板</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">智能手机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>是</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">操作系统<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为 EMUI 4.1 + Android 6.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户界面<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为 EMUI 4.1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Hisilicon Kirin 655</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU核数<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>八核</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU主频<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>4*2.1GHz+4*1.7GHz</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPU<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Mali T830-MP2</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">双卡<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">键盘类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>虚拟键盘</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">输入方式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>百度输入法华为版，华为Swype输入法等</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">安全功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>骚扰拦截、病毒查杀、权限管理等功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>拍照大光圈、主题下载、省电管理、通知管理，华为应用市场，游戏中心等特色功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">4G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>移动4G（TD-LTE）/联通4G（TD-LTE/LTE FDD）/电信4G（TD-LTE/LTE FDD）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>移动3G（TD-SCDMA）/联通3G(WCDMA)/电信3G（CDMA2000）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">2G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>移动2G（GSM）/联通2G（GSM）/电信2G（CDMA 1X）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持移动/联通/电信 4G/3G/2G。备注：卡槽1、2可任意切换为主卡、副卡；不能同时使用2张电信卡。</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络频率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>TD-LTE：B39/B40/B41；LTE FDD：B1/B3；TD-SCDMA：B34/B39；WCDMA：B1/B2（漫游）/B5（漫游）/B8；CDMA:BC0；GSM：B2（漫游）/B3/B8/B5（漫游）。备注： 不能同时支持两张CDMA卡；各个地区的网络和频段可能有所不同，具体取决于当地运营商以及您所在的位置</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据业务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>TD-LTE/LTE FDD/TD-SCDMA/WCDMA/CDMA2000/EDGE/GPRS/CDMA 1X</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">浏览器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为浏览器</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>5.5英寸</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕色彩<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1670万色</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>IPS</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1920*1080</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">触摸屏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持十点触控</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕像素密度PPI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>403</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">重力感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">光线传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">距离感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">亮度传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">加速传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指纹传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">霍尔传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子罗盘<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指南针<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">运行内存（RAM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>4GB（备注：可使用的内存容量小于此值，因为手机软件占用的空间）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身内存（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>32GB（备注：可使用的内存容量小于此值，因为手机软件占用的空间）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户可用空间（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>约22GB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>MicroSD（TF）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">最大支持扩展<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>最高支持128GB（非标配）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">娱乐功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音效<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为自研SWS音效处理技术</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子书<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持（需要下载第三方应用）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">收音机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3D图像加速<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">彩信功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内置游戏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持（需要下载第三方应用）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Flash播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>需用户自行下载安装Adobe Flash Player软件</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1200万+200万</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">副摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>800万</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>CMOS</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闪光灯<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频拍摄<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持（主摄像头支持1080p摄像、专业录像；主/副摄像头支持美肤录像、延迟摄影）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">连拍功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">变焦模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>数码变焦</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>大光圈、美妆、魅我、专业拍照、十级美肤拍照、全景、HDR、美食、流光快门、水印、有声照片、文档校正、慢动作</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">自动对焦<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持（主摄像头支持PDAF快速对焦）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">声控拍照<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">有声拍照<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍照优化<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">人脸识别<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">笑脸抓拍<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">照片分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>最大支持3968*2976像素照片拍摄</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传输功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持2.4G，802.11 b/g/n</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Wi-Fi热点<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN Direct<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WiFi Direct<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">多屏互动<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蓝牙<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">USB<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>USB2.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPS<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">导航软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蜂窝网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">通话和信息功能</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>VoLTE（仅移动），CSFB，SrLTE</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">铃音类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>MIDI，MP3，AMR-NB，OGG，AAC</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">彩信<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">个人助理</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">云服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>云同步、云备份、手机找回</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Office<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>内置WPS Office，支持OFFICE文档查看和编辑，支持pdf文档查看，支持zip解压和压缩等</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子邮件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">计算器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闹钟<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">录音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">后台操作<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">后台QQ<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">实用工具<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>镜子，天气，计算器，手电筒，指南针等</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色应用<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>大光圈拍照</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><br/></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">其他</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>锂聚合物电池</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电池容量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>3340mAh（典型容量）/3270mAh（额定容量）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">理论待机时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>待机上限时间：650小时。备注：上述数据为实验室数据，实际待机和通话时间，视当地的实际网络情况和使用习惯而有所不同</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">理论通话时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>理论通话时间：23小时。备注：上述数据为实验室数据，实际待机和通话时间，视当地的实际网络情况和使用习惯而有所不同</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">理论使用时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>视频播放：约12小时（1080P，手机默认亮度取消自动调节，手机自带华为播放器，耳机模式 ）；音乐播放：约90小时（手机自带华为音乐播放器，耳机模式）；游戏时间：约7小时（手机默认亮度取消自动调节，耳机模式 ）。注：取决于使用习惯和网络状况</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据线接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>USB2.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">耳机接口<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>3.5mm标准耳机孔</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">SIM卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>Nano SIM卡；卡槽1（内卡槽）、卡槽2（外卡槽）可任意切换为主卡、副卡。卡槽2（外卡槽）支持Nano SIM和microSD二选一</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">软件升级<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>HOTA在线升级</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">单手操作UI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">字体大小设置<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音助手<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>支持</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语言<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>简体中文，繁体中文，英文等</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">软件名称<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为终端智能设备人机交互通信软件V2.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>150.9*76.2*8.2</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身重量<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>约162g（含电池）</span></p><p><br/></p>','<ul class=\" list-paddingleft-2\" style=\"box-sizing: border-box; font-family: \" microsoft=\"\" list-style-position:=\"\" list-style-image:=\"\" padding:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">手机（含内置电池） x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">快速指南 x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">三包凭证 x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">取卡针 x 1</span></p></li></ul><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('7','华为HUAWEI畅享6','','','4G网络制式主卡：移动4G（TD-LTE）/联通4G（TD-LTE/LTE FDD）/电信4G（TD-LTE/LTE FDD）3G网络制式主卡：移动3G（TD-SCDMA）/联通3G（WCDMA）/电信3G（cdma2000）2G网络制式主卡：移动2G/联通2G（GSM）/电信2G（CDMA 1X）；副卡：移动2G/联通2G（GSM）/电信2G（CDMA 1X）。备注：不支持电信卡+电信卡网络制式','<p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">4G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; box-sizing: inherit; white-space: pre;\"></span>主卡：移动4G（TD-LTE）/联通4G（TD-LTE/LTE FDD）/电信4G（TD-LTE/LTE FDD）</span></p><p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">3G网络制式<span class=\"Apple-tab-span\" style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: pre;\"></span>主卡：移动3G（TD-SCDMA）/联通3G（WCDMA）/电信3G（cdma2000）</span></p><p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2G网络制式<span class=\"Apple-tab-span\" style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: pre;\"></span>主卡：移动2G/联通2G（GSM）/电信2G（CDMA 1X）；副卡：移动2G/联通2G（GSM）/电信2G（CDMA 1X）。备注：不支持电信卡+电信卡</span></p><p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">网络制式<span class=\"Apple-tab-span\" style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: pre;\"></span>TD-LTE/LTE FDD/TD-SCDMA/WCDMA/CDMA/GSM，支持中国移动4G/3G/2G，中国联通4G/3G/2G，中国电信4G/3G/2G</span></p><p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">网络频率<span class=\"Apple-tab-span\" style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: pre;\"></span>LTE FDD：Band1/3；TD-LTE：Band38/39/40/41（2555~2655MHz）；UMTS(WCDMA)/HSPA+/DC-HSDPA： 900/2100MHz（Band8/1）；TD-SCDMA：Band34/39；CDMA（3G）：BC0（800MHz）；CDMA（2G）：BC0（800MHz）；GSM：主卡：900/1800/1900MHz；副卡：900/1800/1900MHz。（备注：支持盲插，SIM1或SIM2都可以设置为主卡或副卡。各个地区的网络和频段可能有所不同，具体取决于当地运营商以及您所在的位置）</span></p><p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">数据业务<span class=\"Apple-tab-span\" style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: pre;\"></span>TD-LTE/LTE FDD/TD-SCDMA/WCDMA/HSPA+/DC-HSDPA/CDMA2000/CDMA1X/EDGE/GPRS；LTE FDD：Cat4/Cat6； TD-LTE：Cat4/Cat6</span></p><p style=\"margin-bottom: 0px; white-space: normal; font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; color: rgb(34, 34, 34); font-size: 18px;\"><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">浏览器<span class=\"Apple-tab-span\" style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: pre;\"></span>华为浏览器</span></p><div><span style=\"box-sizing: inherit; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></div><p><br/></p>','4','6','18','','0','0','0','../upload/201801/1515634944.jpg','','','0','9','2018-01-16 09:41:57','2018-01-11 09:37:22','admin','0','0','','cn','<p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主体</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为 HUAWEI</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>NCE-AL00（全网通版）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传播名<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为畅享6</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>全网通版</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">上市时间<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>2016年11月</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">外观设计<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>直板</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">外壳材质<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>塑胶</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">智能手机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>是</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">操作系统<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Android 6.0</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户界面<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>EMUI4.1</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU型号<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>MT6750</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU核数<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>八核</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">CPU主频<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>4*Cortex A53 1.5GHz + 4*Cortex A53 1.0GHz</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPU<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>ARM Mali-T860 MP2</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">双卡<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>双卡双待单通，主副卡不区分卡槽 Nano + Nano SIM 或 Nano SIM + Mirco SD</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">键盘类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>虚拟键盘</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">输入方式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>百度输入法华为版</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">安全功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>指纹</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">运营商标志或内容<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持国内中国移动、中国联通、中国电信网络</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\"><br style=\"box-sizing: border-box;\"/></span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">4G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：移动4G（TD-LTE）/联通4G（TD-LTE/LTE FDD）/电信4G（TD-LTE/LTE FDD）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：移动3G（TD-SCDMA）/联通3G（WCDMA）/电信3G（cdma2000）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">2G网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>主卡：移动2G/联通2G（GSM）/电信2G（CDMA 1X）；副卡：移动2G/联通2G（GSM）/电信2G（CDMA 1X）。备注：不支持电信卡+电信卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络制式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>TD-LTE/LTE FDD/TD-SCDMA/WCDMA/CDMA/GSM，支持中国移动4G/3G/2G，中国联通4G/3G/2G，中国电信4G/3G/2G</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网络频率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>LTE FDD：Band1/3；TD-LTE：Band38/39/40/41（2555~2655MHz）；UMTS(WCDMA)/HSPA+/DC-HSDPA： 900/2100MHz（Band8/1）；TD-SCDMA：Band34/39；CDMA（3G）：BC0（800MHz）；CDMA（2G）：BC0（800MHz）；GSM：主卡：900/1800/1900MHz；副卡：900/1800/1900MHz。（备注：支持盲插，SIM1或SIM2都可以设置为主卡或副卡。各个地区的网络和频段可能有所不同，具体取决于当地运营商以及您所在的位置）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">数据业务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>TD-LTE/LTE FDD/TD-SCDMA/WCDMA/HSPA+/DC-HSDPA/CDMA2000/CDMA1X/EDGE/GPRS；LTE FDD：Cat4/Cat6； TD-LTE：Cat4/Cat6</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">浏览器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>华为浏览器</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\"><br style=\"box-sizing: border-box;\"/></span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕尺寸<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>5.0英寸</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕色彩<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>1670万色</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>AMOLED</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>1280*720 HD</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">触摸屏<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>多点触控触摸屏</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">屏幕像素密度PPI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>293</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">重力感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">距离感应器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">亮度传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">温度传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">红外传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指纹传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">霍尔传感器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">陀螺仪<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">指南针<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">NFC<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">运行内存（RAM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>3GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">机身内存（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>16GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">用户可用空间（ROM）<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>9.5GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">存储卡类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>Micro-SD卡</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">最大支持扩展<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>128GB</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">娱乐功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>最大支持1080p播放</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">音效<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>外放支持DIRAC音效</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子书<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持，用户可自行下载第三方电子书应用</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">收音机<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电视播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3D图像加速<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">内置软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>内置热门应用，用户也可上华为应用市场下载</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Flash播放<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持，需用户自行下载安装Adobe Flash Player软件</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>13MP AF、5P镜头、F2.2大光圈</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">副摄像头<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>5M FF，大广角</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传感器类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>CMOS</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闪光灯<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">视频拍摄<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">连拍功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">防抖模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">变焦模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>数字变焦</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄模式<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持全景、HDR、全焦、水印、智能识物、在线翻译、魅我、美肤、熄屏快拍、有声照片、笑脸抓拍、声控拍照、定时拍照、触摸拍照、目标跟踪</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">自动对焦<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">声控拍照<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">有声拍照<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍照优化<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">拍摄场景<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">人脸识别<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">笑脸抓拍<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">照片分辨率<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>前摄：5M 2592*1952（4:3）（默认）3.8M 2592*1456（16:9）3.8M 1952*1952（1:1）0.3M 640*480（4:3）后摄：13M 4160*3120 （4:3）（默认）10M 4160*2336（16:9）10M 3104*3104（1:1）8M 3264*2448 （4:3）6M 3264*1840（16:9）</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\"><br style=\"box-sizing: border-box;\"/></span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">传输功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">HDMI<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">MHL<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN直连<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN Display<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">DLNA<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN功能<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>802.11b/g/n，2.4G</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN热点<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">多屏互动<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蓝牙<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持，BT4.0</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">OTG<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">NFC支付<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>不支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">天际通<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>仅支持天际通WLAN</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">网卡<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持便携式WLAN热点功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">USB<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>USB2.0，480Mbit/s。支持USB共享网络，USB充电</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">GPS<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>GPS/AGPS/Glonass</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">导航软件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>高德地图</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">蜂窝网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">WLAN网络定位<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><br style=\"box-sizing: border-box;\"/></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"box-sizing: border-box; font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">通话和信息功能</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">语音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">3G视频通话<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持中国移动VOLTE；不支持ViLTE功能 可通过下载三方应用建立视频通话</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">铃音类型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>MIDI，MP3，AMR-NB，OGG，AAC</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">彩信<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">个人助理</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">云服务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>云同步、云备份</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Office<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>预置WPS Office，用户也可自行下载Office相关应用</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">名片读取<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">电子邮件<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>POP3/IMAP/Exchange，基于EMUI 4.1 特性</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">计算器<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">闹钟<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">录音<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">后台操作<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">后台QQ<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">增值业务<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>支持</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">实用工具<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>天气时钟、文件管理、手电筒、镜子、指南针、备份、手机管家、日历、图库、音乐、视频、计算器、备忘录、录音机</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特色应用<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" box-sizing:=\"\" white-space:=\"\"></span>指关节截屏、录屏、开启应用；学生模式；情景智能；单手操作；智能线控；杂志锁屏；指纹触控</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">防护级别</span></p><p style=\"box-sizing: border-box; font-family: \" microsoft=\"\" margin-top:=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">防尘防水&lt;span class</span></p>','<p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">手机（含内置电池） x 1</span></p><ul class=\" list-paddingleft-2\" style=\"box-sizing: border-box; font-family: \" microsoft=\"\" list-style-position:=\"\" list-style-image:=\"\" padding:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\" background-color:=\"\"><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">快速指南 x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">三包凭证 x 1</span></p></li><li><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">取卡针 x 1</span></p></li></ul><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\"><br/></span></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('8','华为HUAWEI AKG H300耳机','','','特性	M3平板定制AKG品牌高保真耳机，配合M3平板享受HiFi音质','<p><span style=\"color: rgb(94, 115, 135); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\">特性	M3平板定制AKG品牌高保真耳机，配合M3平板享受HiFi音质</span></p>','4','7','22','','0','0','0','../upload/201801/1515635850.jpg','','华为HUAWEI AKG H300耳机*../upload/201801/1515635343.jpg*400x400|华为HUAWEI AKG H300耳机*../upload/201801/1515635451.jpg*400x400|华为HUAWEI AKG H300耳机*../upload/201801/1515635229.jpg*400x400|华为HUAWEI AKG H300耳机*../upload/201801/1515635978.jpg*400x400','0','31','2019-07-31 18:38:52','2019-07-31 18:38:52','admin','0','1','','cn','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">主体</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">品牌<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>AKG&amp;HUAWEI</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">规格</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">适用机型<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>华为平板M3</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">特性<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>M3平板定制AKG品牌高保真耳机，配合M3平板享受HiFi音质</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">属性</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">长度<span class=\"Apple-tab-span\" style=\"font-size: 14px; font-family: 微软雅黑, \" microsoft=\"\" white-space:=\"\"></span>1100±43mm</span></p><p><br/></p>','','','','','','','','','0','1','','','400x400','0','#1baadb','','');
INSERT INTO met_product VALUES('9','华为HUAWEI小天鹅蓝牙音箱','','','音触即发！会唱歌的“天鹅”，360°音效技术，音质更真实自然，简洁触控操作，多提示音选择，支持蓝牙免提通话。','<p><span style=\"color: rgb(94, 115, 135); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">音触即发！会唱歌的“天鹅”，360°音效技术，音质更真实自然，简洁触控操作，多提示音选择，支持蓝牙免提通话。</span></p>','4','7','23','','0','0','0','../upload/201801/1515635691.jpg','','','0','7','2018-01-16 09:42:59','2018-01-11 09:48:42','admin','0','0','','cn','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">主体</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">品牌华为（HUAWEI）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">型号AM08</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">类别蓝牙音箱</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">规格</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">喇叭1个</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">麦克风1个</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">最大音量83dB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">蓝牙Bluetooth 4.0</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">蓝牙协议支持A2DP1.2， HFP1.6，HSP1.2，AVRCP1.4</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">传输距离约10m</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">接口Micro-USB</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">按键说明1.触控按键：音量+；音量-；上一曲；下一曲；蓝牙配对键；2.电源键</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">指示灯1.红色触控指示灯（音量+；音量-；上一曲；下一曲）；2.蓝色触控指示灯（蓝牙配对、暂停/继续、接听/挂断）；3.红色电源指示灯（充电过程、低电报警提示）；4.红色呼吸灯</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">理论功率1.8W</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输入电源4.75V-5.25V</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">充电时间&lt;3小时</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">工作时间&gt;4小时</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">待机时间&gt;24小时</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">属性</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">尺寸83mm x 83mm x 80mm</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">重量约250g</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">温度工作温度：0℃- +45℃；存储温度：0℃ - +45℃</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">湿度5% to 95%</span></p><p><br/></p>','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">蓝牙免提音箱AM08 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">充电线 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">用户指南 x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('10','华为HUAWEI荣耀移动电源','','','9V2A双向快充，充电更省心；握感舒适，防滑设计，给您的充电宝多重保护.','<p><span style=\"color: rgb(94, 115, 135); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">9V2A双向快充，充电更省心；握感舒适，防滑设计，给您的充电宝多重保护.</span></p>','4','7','24','','0','0','0','../upload/201801/1515637163.jpg','','','0','5','2018-01-16 09:45:19','2018-01-11 10:13:20','admin','0','0','','cn','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">主体</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">品牌荣耀</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">型号AP08Q</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">传播名荣耀移动电源10000mAh快充版</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">颜色黑色</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">类别移动电源</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">版本快充版</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">外形直板</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">规格</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">电芯容量10000mAh</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输入接口Micro USB或Type C</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输出接口USB A</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输入电压DC 4.5V~5.5V，8.1~9.9V，10.8~13.2V</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输出电压DC 4.75V~5.25V，8.55~9.45V</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输入电流2A(max)@5V&amp;9V，1.5A(max)@12V</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">输出电流2A</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">电量指示3颗白色LED灯+1颗双色灯（快充状态为绿色，非快充状态为白色）</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">按键类型轻触式</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">工作温度充电温度：0℃ ~ 45℃，放电温度：-10℃ ~ 45℃</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-weight: 600; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">属性</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">尺寸139mm X 73.7mm X 15.5mm</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">重量约216g（裸机）</span></p><p><br/></p>','<p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">移动电源 x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Micro USB数据线（20~22cm） x 1</span></p><p style=\"font-family: \" microsoft=\"\" margin-bottom:=\"\" color:=\"\" font-size:=\"\" white-space:=\"\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">说明书（含保修卡） x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('11','Apple Watch Sport','','','银色、深空灰色、金色或玫瑰金色阳极氧化铝金属表壳','<p><img src=\"../upload/201801/1515636928487550.jpg\" data-width=\"750\" width=\"750\" data-height=\"1296\" height=\"1296\" style=\"\" title=\"1515636928487550.jpg\"/></p><p><img src=\"../upload/201801/1515636928263870.jpg\" data-width=\"750\" width=\"750\" data-height=\"1910\" height=\"1910\" style=\"\" title=\"1515636928263870.jpg\"/></p><p><br/></p>','4','7','25','','0','0','0','../upload/201801/1515637657.jpg','','Apple Watch Sport*../upload/201801/1515637422.jpg*400x400|Apple Watch Sport*../upload/201801/1515637074.jpg*400x400|Apple Watch Sport*../upload/201801/1515637889.jpg*400x400|Apple Watch Sport*../upload/201801/1515637148.jpg*400x400','0','4','2018-01-11 10:15:51','2018-01-11 10:15:51','','0','0','','cn','<ul class=\" list-paddingleft-2\" style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">银色、深空灰色、金色或玫瑰金色阳极氧化铝金属表壳</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ion-X 玻璃材质</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">具备 Force Touch 功能的 Retina 显示屏</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">复合材质表背</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Digital Crown</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">心率传感器、加速感应器和陀螺仪</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">环境光传感器</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">扬声器和麦克风</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">无线网络 (802.11b/g/n 2.4GHz)</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">蓝牙 4.0</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">最长可达 18 小时的电池使用时间*</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">防水**</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">watchOS 2</span></p></li></ul><p><br/></p>','<ul class=\" list-paddingleft-2\" style=\"font-family: &quot;Microsoft JhengHei&quot;, &quot;Microsoft Yahei&quot;; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(34, 34, 34); font-size: 18px; white-space: normal;\"><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Apple Watch</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">磁性充电线缆 (2 米)</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USB 电源适配器 (5W)</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">表带 (所含运动型表带可组装成 S/M 或 M/L 的长度)</span></p></li><li><p style=\"margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">快速入门指南</span></p></li></ul><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('15','HUAWEI AKG H300','','','subjectBrand AKG&amp;HUAWEISpecificationsSuitable model HUAWEI flat M3Features M3 tablet customized AKG brand high fidelity headphones, with the M3 tablet to enjoy the HiFi sound qualityattributeThe l','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand AKG&amp;HUAWEI</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Specifications</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Suitable model HUAWEI flat M3</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Features M3 tablet customized AKG brand high fidelity headphones, with the M3 tablet to enjoy the HiFi sound quality</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">attribute</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The length is 1100 + 43mm</span></p><div><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></div><p><br/></p>','55','58','59','','0','0','0','../upload/201801/1515727273.jpg','','HUAWEI AKG H300*../upload/201801/1515727540.jpg*400x400|HUAWEI AKG H300*../upload/201801/1515727431.jpg*400x400|HUAWEI AKG H300*../upload/201801/1515727213.jpg*400x400|HUAWEI AKG H300*../upload/201801/1515727336.jpg*400x400','0','12','2018-01-16 10:25:23','2018-01-12 11:21:14','admin','0','1','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand AKG&amp;HUAWEI</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Specifications</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Suitable model HUAWEI flat M3</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Features M3 tablet customized AKG brand high fidelity headphones, with the M3 tablet to enjoy the HiFi sound quality</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">attribute</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The length is 1100 + 43mm</span></p><p><br/></p>','','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('12','Apple Watch Sport','','','Silver, deep empty gray, gold, or rose gold anodized metal case','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Silver, deep empty gray, gold, or rose gold anodized metal case</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ion-X glass material</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">A Retina display with Force Touch function</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Back of composite material</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Digital Crown</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Heart rate sensor, accelerometer, and gyroscope</span></p><p><br/></p>','55','58','62','','0','0','0','../upload/201801/1515723640.jpg','','','0','17','2018-01-16 10:33:10','2018-01-12 10:14:55','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Silver, deep empty gray, gold, or rose gold anodized metal case</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ion-X glass material</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">A Retina display with Force Touch function</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Back of composite material</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Digital Crown</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Heart rate sensor, accelerometer, and gyroscope</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ambient light sensor</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Loudspeaker and microphone</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wireless network (802.11b/g/n 2.4GHz)</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth 4</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery time of up to 18 hours. *</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Waterproof * *</span></p><p><br/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WatchOS 2</span></p><p><br/></p>','<ul class=\" list-paddingleft-2\" style=\"box-sizing: inherit; margin-bottom: 1rem; white-space: normal; background-color: rgb(255, 255, 255); font-family: \" microsoft=\"\" list-style-position:=\"\" list-style-image:=\"\" padding:=\"\" color:=\"\" font-size:=\"\"><li><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 16px;\"><span style=\"box-sizing: inherit; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Apple Watch</span></p></li><li><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 16px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: inherit;\" microsoft=\"\" font-size:=\"\"></span>Magnetic charging cable (2 meters)</span></p></li><li><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USB power adapter (5W)</span></p></li><li><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The strap (the movement type strap can be assembled into the length of S/M or M/L)</span></p></li><li><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">quick start guide</span></p></li></ul><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('13','HUAWEI honor portable source','','','9V2A bi-directional fast charging, more saving charge; comfortable grip, anti slip design, to give you the multiple protection of the rechargeable treasure.','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand glory</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model AP08Q</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">10000mAh fast charging version of the honor mobile power source</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Color black</span></p><p><br/></p>','55','58','61','','0','0','0','../upload/201801/1515725120.jpg','','','0','1','2018-01-16 10:32:38','2018-01-12 10:46:36','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">subject</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Brand glory</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Model AP08Q</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">10000mAh fast charging version of the honor mobile power source</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Color black</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Class mobile power supply</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Version fast filling</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Appearance straight</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Specifications</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Core capacity 10000mAh</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">The input interface Micro USB or Type C</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Output interface USB A</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Input voltage DC 4.5V~5.5V, 8.1~9.9V, 10.8~13.2V</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Output voltage DC 4.75V~5.25V, 8.55~9.45V</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Input current 2A (max) @5V&amp;9V, 1.5A (max) @12V</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Output current 2A</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Electricity indicator 3 white LED light +1 double color lamp (fast charging state is green, non fast charge state is white)</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Touch type of key type</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Working temperature charging temperature: 0 C ~ 45 C, discharge temperature: -10 C ~ 45 C</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">attribute</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">Size 139mm X 73.7mm X 15.5mm</span></p><p><span style=\"font-family: 微软雅黑, \" microsoft=\"\" font-size:=\"\">The weight is about 216g (bare metal)</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Mobile power supply x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Micro USB data line (20~22cm) x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Instructions (including a warranty card) x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('14','HUAWEI Small Swan Bluetooth Speakers','','','Sound touch is hair! Singing \"Swan\", 360 degree sound effect technology, sound quality more real nature, simple touch control operation, multiple voice selection, support Bluetooth hands-free call.','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand HUAWEI (HUAWEI)</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model AM08</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Class Bluetooth sound box</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Specifications</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 trumpets</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 microphones</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Maximum volume 83dB</span></p><p><br/></p>','55','58','60','','0','0','0','../upload/201801/1515726288.jpg','','HUAWEI Small Swan Bluetooth Speakers*../upload/201801/1515726458.jpg*400x400|HUAWEI Small Swan Bluetooth Speakers*../upload/201801/1515726243.jpg*400x400|HUAWEI Small Swan Bluetooth Speakers*../upload/201801/1515726973.jpg*400x400|HUAWEI Small Swan Bluetooth Speakers*../upload/201801/1515726399.jpg*400x400','0','0','2018-01-16 10:30:50','2018-01-12 11:14:38','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand HUAWEI (HUAWEI)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model AM08</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Class Bluetooth sound box</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Specifications</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 trumpets</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 microphones</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Maximum volume 83dB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth Bluetooth 4</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth protocol supports A2DP1.2, HFP1.6, HSP1.2, AVRCP1.4</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The transmission distance is about 10m</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Interface Micro-USB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Keys to explain 1. touch keys: volume +; volume -; the last tune; the next; Bluetooth pairing; 2. power key.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Indicator 1. red touch control indicator (volume + volume volume; last song; next song); 2. blue touch indicator lamp (Bluetooth pairing, pause / continue, receive / hang up); 3. red power indicator lamp (charging process, low electric alarm prompt); 4. red breathing lamp.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Theoretical power 1.8W</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input power supply 4.75V-5.25V</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Charge time&lt;3 hours</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Working hours &gt;4 hours</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Standby time &gt;24 hours</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">attribute</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Size 83mm x 83mm x 80mm</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The weight is about 250g</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Temperature working temperature: 0 C - +45 C; storage temperature: 0 C - +45 C</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Humidity 5% to 95%</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth hands-free speaker AM08 x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Charge line x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User guide x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('16','HUAWEI NOTE 8','','','Omnidirectional recording / pointing playback, directional hands-free gesture, finger joint gesture, split screen multi window, voice control, situational intelligence, single handed operation, magazine lock screen, mobile phone retrieving, wireless WIFI printing, student mode, multi screen interaction, sports health.','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Honor</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model EDI-AL10</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The honor of the name of the communication NOTE 8</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smart phone is</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system HUAWEI EMUI 4.1 + Android 6</span></p><p><br/></p>','55','57','65','','0','0','0','../upload/201801/1515729837.jpg','','','0','0','2018-01-16 10:30:14','2018-01-12 11:52:49','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Honor</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model EDI-AL10</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The honor of the name of the communication NOTE 8</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smart phone is</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system HUAWEI EMUI 4.1 + Android 6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User interface HUAWEI EMUI 4.1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU model Kirin 955</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU core number 8 core</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU main frequency 4*Cortex A72 2.5GHz + 4*Cortex A53 1.8GHz + wit nuclear I5</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPUMali T880 MP4</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Double card support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Keyboard type virtual keyboard</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input method Baidu input method HUAWEI version, HUAWEI Swype input method, Android keyboard (AOSP)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G video calls do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Safe function secrecy cabinet</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Featured functions are omnidirectional recording / pointing playback, directional hands-free, finger joint gesture, split screen multi window, voice control, situational intelligence, single handed operation, magazine lock screen, mobile phone retrieving, wireless WIFI printing, student mode, multi screen interaction, sports health.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">network</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">4G network master card: mobile 4G (TDD-LTE) / Unicom 4G (TDD-LTE/FDD-LTE) / telecommunication 4G (TDD-LTE/FDD-LTE)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G network mode main card: mobile 3G (TD-SCDMA) / Unicom 3G (WCDMA) / telecommunication 3G (CDMA 2000). Vice card: Telecom 3G (CDMA2000). Note: you can&#39;t use 2 Telecom cards at the same time</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The main card of 2G network system is mobile 2G (GSM) / Unicom 2G (GSM) / Telecom 2G (CDMA1X); sub card: mobile 2G (GSM) / Unicom 2G (GSM) / Telecom 2G. Note: you can&#39;t use 2 Telecom cards at the same time</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The network standard supports mobile 4G+/4G/3G/2G and supports Unicom / Telecom 4G/3G/2G. Note: card slot 1 and 2 can be arbitrarily switched to the main card and sub card, and 2 telecommunication cards cannot be used at the same time.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The main card network frequency: TDD-LTE:B38/B39/B40/B41 (2555MHz~2655MHz); FDD-LTE:B1/B3/B7; TD-SCDMA:B34/B39; WCDMA:B1/B2/B5/B8; CDMA2000/1X:BC0 (800MHz); GSM:850/900/1800/1900MHz; GSM:850/900/1800/1900MHz; vice card: Note: can support two CDMA cards at the same time, the various regions of the network and the frequency may vary, depending on the local operators and your position</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data services TDD-LTE/FDD-LTE/TD-SCDMA/WCDMA/HSPA+/DC-HSDPA/CDMA2000/CDMA1X/EDGE/GPRS; FDD-LTE:Cat4/Cat6; TDD-LTE:Cat4/Cat6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Browsers HUAWEI EMUI 4.1 browsers</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The screen size is 6.6 inches</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen color 16 million 700 thousand color</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen type Super AMOLED display</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Resolution WQHD (2K) 2560 x 1440</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Touch screen capacitive screen, multi touch control</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen pixel density PPI443</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">sensor</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gravity inductor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Light sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Distance sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fingerprint sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Holzer sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gyroscope support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Compass support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Barometer support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Running memory (RAM) 4GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fuselage memory (ROM) 128GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User available space (ROM) about the remaining storage of 110GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory card type microSD (TF) card</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Maximum support extended maximum support 128GB (non - Standard)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Entertainment function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound effect DTS</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-book support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Radio support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Built in software compass, flashlight, mirror, calendar, gallery, music, video, calculator, memorandum, tape recorder, weather, clock, file management, mobile housekeeper.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">13 million pixel optical anti shake of the main camera</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">8 million pixel camera</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sensor type CMOS</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flash lamp with double color temperature LED flash</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video shooting support 1080p Full HD video</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Continuous function support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Anti shake mode optical anti shake</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Zoom mode digital zoom, maximum support for 4X</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Streamer shutter shooting mode (including heavy traffic, light painting graffiti, silk, gorgeous Xinggui water), super night, professional camera, camera model, filter skin (the charm I), beauty video, panorama, HDR, watermark, sound, pictures, smile capture extinguished screen snapshot, voice camera, camera, touch timing photograph and document correction</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Auto focus main camera support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound control photo support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound photo support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo optimization of photo optimization ISP</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Face recognition support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smiling face and snapping support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo resolution with maximum photo resolution support 4160 x 3120 pixel photograph</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Transmission function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN support, 802.11a/b/g/n/ac, 2.4G, and 5G</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi functional support, 802.11a/b/g/n/ac, 2.4G, and 5G</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi hot spot support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WiFi Display support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN Direct support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Multi screen interactive support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth BT4.2, support BLE</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">OTG support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Skyline support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USBUSB2.0480Mbit/s. Support USB shared network, USB charging, OTG function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPSGPS/AGPS/Glonass/ Beidou</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Navigation software support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cellular network location support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN network positioning support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Call and information function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Voice support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G video calls support 4G high definition voice and video calls, and 3G networks do not support video calls</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">MMS support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Personal assistant</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cloud service cloud synchronization, cloud backup, mobile phone retrieval</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Office built-in WPS Office, support for OFFICE document view and editing, support for PDF document view, etc.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Card reading support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-mail POP3/IMAP/Exchange</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Calculator support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Alarm clock support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Recording support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Practical tools compass, flashlight, mirror, calendar, gallery, music, video, calculator, memorandum, tape recorder, weather, clock, file management, mobile housekeeper.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Features include omni directional recording / pointing playback, directional hands-free gesture, finger joint gesture, split screen multi window, voice control, situational intelligence, single handed operation, magazine lock screen, mobile phone retrieving, wireless WIFI printing, student mode, multi screen interaction, sports health.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery type Li-Polymer lithium polymer battery</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery capacity 4500mAh (typical value)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery replacement phone is built in, not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The charging time is about 150 minutes (HUAWEI 9V2A adapter)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data line interface USB TYPE-C</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Headphone interface 3.5mm headset interface</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">SIM card type Nano SIM card slot; 1 (Neca), slot 2 (wild card slot) can card, vice card by double card management interface. Slot 2 (wild card slot) support Nano SIM and microSD two.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Software upgrade HOTA online upgrade</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Font size settings support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Voice assistant support</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Mobile phone (including built-in battery) x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Quick guide x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Three package credentials x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">IPad x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('17','HUAWEI player 6X','','','Large aperture, beauty, charm, my professional camera, ten skin, HDR, camera, panoramic, shutter, streamer delicacy watermark, sound picture, document correction, slow motion','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Honor</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model BLN-AL10</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Spread a glory play 6X</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Full Netcom version</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">October 2016 market time</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p><br/></p>','55','57','64','','0','0','0','../upload/201801/1515735915.jpg','','','0','0','2018-01-16 10:29:49','2018-01-12 13:37:55','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Honor</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model BLN-AL10</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Spread a glory play 6X</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Full Netcom version</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">October 2016 market time</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smart phones are</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system HUAWEI EMUI 4.1 + Android 6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User interface HUAWEI EMUI 4.1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU model Hisilicon Kirin 655</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU core number eight core</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU master frequency 4*2.1GHz+4*1.7GHz</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPU Mali T830-MP2</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Double card support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Keyboard type virtual keyboard</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input method Baidu input method HUAWEI version, HUAWEI Swype input method, etc.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Security function harassment interception, virus killing, authority management and other functions</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Feature functions, such as big ring, theme download, power saving management, notification management, HUAWEI application market, game center and other features</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">network</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">4G network mode mobile 4G (TD-LTE) / Unicom 4G (TD-LTE/LTE FDD) / Telecom 4G (TD-LTE/LTE FDD)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G network mode mobile 3G (TD-SCDMA) / Unicom 3G (WCDMA) / telecommunication 3G (CDMA2000)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2G network mode mobile 2G (GSM) / Unicom 2G (GSM) / telecommunication 2G (CDMA 1X)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network mode supports mobile / Unicom / Telecom 4G/3G/2G. Note: the slot 1, 2 can switch to the main card and vice card arbitrarily, and can not use 2 Telecom cards at the same time.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The network frequency is TD-LTE:B39/B40/B41; LTE FDD:B1/B3; TD-SCDMA:B34/B39; WCDMA:B1/B2 (roaming) /B5 (roaming) /B8; CDMA:BC0; GSM:B2 (roaming) /B3/B8/B5 (roaming). Note: you can&#39;t support two CDMA cards at the same time; the networks and bands in each area may be different, depending on the local operators and where you are.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data services TD-LTE/LTE FDD/TD-SCDMA/WCDMA/CDMA2000/EDGE/GPRS/CDMA 1X</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Browsers HUAWEI browsers</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The screen size is 5.5 inches</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen color 16 million 700 thousand color</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen type IPS</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Resolution 1920*1080</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Touch screen support ten point touch</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen pixel density PPI 403</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">sensor</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gravity inductor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Light sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Distance sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Luminance sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Acceleration sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fingerprint sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Holzer sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Electronic compass support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Compass support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Run memory (RAM) 4GB (Note: the memory capacity that can be used is less than this value because of the space occupied by mobile software)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fuselage memory (ROM) 32GB (Note: the memory capacity that can be used is less than this value because of the space occupied by mobile software)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User available space (ROM) about 22GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory card type MicroSD (TF)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Maximum support extended maximum support 128GB (non - Standard)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Entertainment function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video playback support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound effect HUAWEI self research SWS sound effect processing technology</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-book support (third party applications need to be downloaded)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Radio support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3D image acceleration support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">MMS function support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Built-in game support (need to download third party applications)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flash playback requires users to download and install Adobe Flash Player software on their own</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Main camera 12 million +200 million</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Auxiliary camera 8 million</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sensor type CMOS</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flash support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video capture support (main camera support 1080p camera, professional video camera support; main / auxiliary beauty video, delayed photography)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Continuous function support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Zoom mode digital zoom</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting mode of large aperture, beauty, charm, my professional camera, ten skin, HDR, camera, panoramic, shutter, streamer delicacy watermark, sound picture, document correction, slow motion</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Auto focus support (main camera supports PDAF fast focus)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound control photo support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound photo support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo optimization support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Face recognition support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smiling face and snapping support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo resolution maximum support for 3968*2976 pixel photo shoot</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Transmission function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi functionality supports 2.4G, 802.11 b/g/n</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi hot spot support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN Direct support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WiFi Direct support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Multi screen interactive support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USB USB2.0</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPS support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Navigation software support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cellular network location support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN network positioning support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Call and information function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Voice VoLTE (only moving), CSFB, SrLTE</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ringtone types MIDI, MP3, AMR-NB, OGG, AAC</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">MMS support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Personal assistant</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cloud service cloud synchronization, cloud backup, mobile phone retrieval</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Office has a built-in WPS Office, supporting OFFICE document viewing and editing, supporting PDF document view, supporting zip decompression and compression, etc.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-mail support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Calculator support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Alarm clock support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Recording support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Backstage operation support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Backstage QQ support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Practical tools, mirrors, weather, calculators, flashlights, compass, etc.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Special use of large aperture photography</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery type lithium polymer battery</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery capacity 3340mAh (typical capacity) /3270mAh (rated capacity)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Theoretical standby time on standby time: 650 hours. Note: the above data are laboratory data, actual standby and call time, depending on the local actual network conditions and usage habits.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Theory call time theory call time: 23 hours. Note: the above data are laboratory data, actual standby and call time, depending on the local actual network conditions and usage habits.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The theory of time: about 12 hours of video playback (1080P, mobile phone default cancel automatically adjust the brightness, with HUAWEI mobile phone player, Headset mode); music: about 90 hours (with HUAWEI mobile phone music player, Headset mode); game time: about 7 hours (mobile phone default cancel automatically adjust brightness, Headset mode). Note: depending on the usage habits and network conditions</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data line interface USB2.0</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Headphone interface 3.5mm standard headphone hole</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">SIM card type Nano SIM card slot; 1 (Neca), slot 2 (wild card slot) can switch the main card, vice card. Slot 2 (wild card slot) support Nano SIM and microSD two.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Software upgrade HOTA online upgrade</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Single hand operation UI support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Font size settings support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Voice assistant support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Simplified Chinese language</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Mobile phone (including built-in battery) x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Quick guide x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Three package credentials x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">IPad x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('18','HUAWEI NCE-AL00','','','subjectBrand HUAWEI HUAWEIModel NCE-AL00 (full Netcom)Communication name HUAWEI enjoy 6Full network versionNovember 2016 market time','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand HUAWEI HUAWEI</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model NCE-AL00 (full Netcom)</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Communication name HUAWEI enjoy 6</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Full network version</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">November 2016 market time</span></p><p><br/></p>','55','57','63','','0','0','0','../upload/201801/1515735860.jpg','','','0','0','2018-01-16 10:29:17','2018-01-12 13:42:56','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand HUAWEI HUAWEI</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model NCE-AL00 (full Netcom)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Communication name HUAWEI enjoy 6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Full network version</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">November 2016 market time</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shell material plastic</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smart phones are</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system Android 6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User interface EMUI4.1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU model MT6750</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Eight nuclear nuclear CPU</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU main frequency 4*Cortex A53 1.5GHz + 4*Cortex A53 1.0GHz</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPUARM Mali-T860 MP2</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Double card dual card to single pass, the main and vice cards do not distinguish between the card slot Nano + Nano SIM or Nano SIM + Mirco SD</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Keyboard type virtual keyboard</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input method Baidu input method HUAWEI Edition</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Secure functional fingerprint</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operator logo or content support domestic China Mobile, China Unicom, China Telecom network</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">network</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">4G network master card: mobile 4G (TD-LTE) / Unicom 4G (TD-LTE/LTE FDD) / Telecom 4G (TD-LTE/LTE FDD)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G network master card: mobile 3G (TD-SCDMA) / Unicom 3G (WCDMA) / telecommunication 3G (CDMA2000)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2G network mode main card: mobile 2G/ Unicom 2G (GSM) / telecommunication 2G (CDMA 1X); secondary card: mobile 2G/ Unicom 2G (GSM) / telco 2G (CDMA). Note: no telecommunication card + telecommunication card is not supported</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">TD-LTE/LTE FDD/TD-SCDMA/WCDMA/CDMA/GSM network, support China Mobile 4G/3G/2G, China Unicom 4G/3G/2G, China Telecom 4G/3G/2G</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The frequency of LTE network FDD:Band1/3; TD-LTE:Band38/39/40/41 (2555~2655MHz); UMTS (WCDMA) /HSPA+/DC-HSDPA:900/2100MHz (Band8/1); TD-SCDMA:Band34/39; CDMA (3G): BC0 (800MHz); CDMA (2G): BC0 (800MHz); GSM: 900/1800/1900MHz; Vice Principal Card: Card: 900/1800/1900MHz. (Note: support for blind insertion, SIM1 or SIM2 can be set up the main card or vice card. The networks and bands in each region may be different, depending on the local operators and where you are.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data services TD-LTE/LTE FDD/TD-SCDMA/WCDMA/HSPA+/DC-HSDPA/CDMA2000/CDMA1X/EDGE/GPRS; LTE FDD:Cat4/Cat6; TD-LTE:Cat4/Cat6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Browsers HUAWEI browsers</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The screen size is 5 inches</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen color 16 million 700 thousand color</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen type AMOLED</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Resolution 1280*720 HD</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Touch screen multi touch touch screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen pixel density PPI293</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">sensor</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gravity inductor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Distance sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Luminance sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Temperature sensor does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Infrared sensors do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fingerprint sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Holzer sensor does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gyroscopes do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Compass support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">NFC does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Running memory (RAM) 3GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Fuselage memory (ROM) 16GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User available space (ROM) 9.5GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory card type Micro-SD card</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Maximum support for extended 128GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Entertainment function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video playback maximum support for 1080p playback</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound effects support DIRAC sound effect</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-book support, users can download third party e-book applications on their own</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Radio support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">TV play does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3D image acceleration support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Built in software built in hot applications, users can also download the HUAWEI application market</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flash playback support, users need to download and install Adobe Flash Player software on their own</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Main camera 13MP AF, 5P lens, F2.2 large aperture</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Auxiliary camera 5M FF, big wide angle</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sensor type CMOS</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flash support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video shooting support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Continuous function support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Anti shake mode does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Zoom mode digital zoom</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting mode panorama, HDR, coke, watermark, intelligent textiles, online translation, I, beauty, charm, extinguished screen snapshot with sound and pictures, smile capture, voice camera, camera, camera, touch timing tracking</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Autofocus support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound control photo support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound photo support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo optimization support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting scene support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Face recognition support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Smiling face and snapping support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo resolution: 5M 2592*1952 proactive (4:3) (default) 3.8M 2592*1456 (16:9) 3.8M 1952*1952 (1:1) 0.3M 640*480 (4:3) after the photo: 13M 4160*3120 (4:3) (default) 10M 4160*2336 (16:9) 10M 3104*3104 (1:1) 8M 3264*2448 (4:3) 6M 3264*1840 (16:9)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Transmission function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">HDMI does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">MHL does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN direct support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN Display does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">DLNA does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN function 802.11b/g/n, 2.4G</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN hot spot support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Multi screen interactive support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth support, BT4.0</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">OTG support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">NFC payment is not supported</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Skyline only supports skyline WLAN</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network cards support portable WLAN hotspots</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USBUSB2.0480Mbit/s. Support USB shared network, USB charging</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPSGPS/AGPS/Glonass</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Navigational software high map</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cellular network location support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN network positioning support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Call and information function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Voice support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G video calls support China Mobile VOLTE; no ViLTE support can be used to build video calls by downloading three party applications</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ringtone types MIDI, MP3, AMR-NB, OGG, AAC</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">MMS support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Personal assistant</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cloud service cloud synchronization and cloud backup</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Office preset WPS Office, and users can download Office related applications on their own</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Card reading support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-mail POP3/IMAP/Exchange, based on the features of EMUI 4.1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Calculator support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Alarm clock support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Recording support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Backstage operation support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Backstage QQ support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Value-added service support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Practical tools, such as weather clock, file management, flashlight, mirror, compass, backup, mobile phone housekeeper, calendar, gallery, music, video, calculator, memorandum, tape recorder.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Characteristic application refers to joint screenshot, recording screen, opening application; student mode; scene intelligence; single hand operation; intelligent wire control; magazine lock screen; fingerprint touch control</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Protection level</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Dustproof and waterproof &lt;span class</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Mobile phone (including built-in battery) x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Quick guide x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Three package credentials x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">IPad x 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('19','Lenovo 30600i','','','storageMemory capacity 4GBHard disk capacity 1TThe memory capacity of 2GBBasic parametersBrand Lenovo/ AssociationVideo card type independent development card','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory capacity 4GB</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Hard disk capacity 1T</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The memory capacity of 2GB</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Basic parameters</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Lenovo/ Association</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video card type independent development card</span></p><p><br/></p>','55','56','69','','0','0','0','../upload/201801/1515737072.jpg','','','0','0','2018-01-16 10:28:47','2018-01-12 13:51:48','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory capacity 4GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Hard disk capacity 1T</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The memory capacity of 2GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Basic parameters</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Lenovo/ Association</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video card type independent development card</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">display</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Display type wide screen LED</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other attributes</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Suitable brand Intel/ Intel</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory type other /other</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">7200 rotation of hard disk speed</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Optical drive type DVD-ROM</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">After-sale service in China</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 computer mainframe</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 pieces of power adapter</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 pieces of display</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Introductory guide (three package vouchers) 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('20','Xiaomi Laptop Air 13.3','','','Metal fuselage independent development card 8GB memory 256GB hard disk','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other attributes</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Package volume 375mm*115mm*292mm</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Whether or not the PC flat is double one or not</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Applicable scene women positioning light and portable students business office high definition game family entertainment</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">After-sale service in China</span></p><p><br/></p>','55','56','66','','0','0','0','../upload/201801/1515736773.jpg','','Xiaomi Laptop Air 13.3*../upload/201801/1515737315.png*400x400|Xiaomi Laptop Air 13.3*../upload/201801/1515736895.jpg*400x400|Xiaomi Laptop Air 13.3*../upload/201801/1515737342.jpg*400x400','0','0','2018-01-16 10:27:21','2018-01-12 13:55:30','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other attributes</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Package volume 375mm*115mm*292mm</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Whether or not the PC flat is double one or not</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Applicable scene women positioning light and portable students business office high definition game family entertainment</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">After-sale service in China</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Is it superpolar</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Basic parameters</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Xiaomi/ millet</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Series of millet notebook Air</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU Core/ core i5 i5-6200U</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video card type independent development card /NVIDIA GeForce 940MX</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Weight 1kg (containing) -1.5kg (no)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The number of 4 core lithium batteries for lithium battery</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Color classification 13.3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2016 market time</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Month September</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system Windows 10</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input device TouchBoard</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Additional function type-C interface HDMI interface camera function speaker USB 3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Is built-in battery built-in battery</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The memory capacity of 1GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Mechanical hard disk capacity 0</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Solid state hard disk 256GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory capacity 8g</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">display</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen type LED</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The screen size is 13.3 inches</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen ratio 16:9</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Resolution 1920x1080</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Non touch screen for touch screen</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 laptop computers</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 pieces of power adapter<br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Introductory guide (three package vouchers) 1<br/></span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('21','Lenovo All-in-one PC I5-6400T','','','Six generation of four core I5 2G only display a new 23 inch narrow frame','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Basic parameters</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Brand Lenovo/ Association</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Model AIO 510-23 series</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Graphics card interface other /other</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Video card type independent development card</span></p><p><br/></p>','55','56','67','','0','0','0','../upload/201801/1515736731.jpg','','','0','0','2018-01-16 10:26:45','2018-01-12 13:58:24','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Basic parameters</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand Lenovo/ Association</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model AIO 510-23 series</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Graphics card interface other /other</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video card type independent development card</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system WIN10</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory capacity 4GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Hard disk capacity 1TB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The memory capacity of 2GB GDDR5</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">display</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The screen size is 23 inches</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Display type LED</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Non touch screen for touch screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other attributes</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Suitable brand Intel/ Intel</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Memory type DDR4 2133</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Hard disk interface SATA</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">7200 rotation of hard disk speed</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">No CD-ROM drive type</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">After-sale service in China</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Desktop type video and audio entertainment</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 computer mainframe</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 pieces of power adapter</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Introductory guide (three package vouchers) 1</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');
INSERT INTO met_product VALUES('22','HUAWEI Tablet PC M3','','','2K 8.4 inch large screen dazzling intimate eye model; shock stereo field, Hi-Fi pure tone; 8 core 64 bit processor, 4GB large memory capacity 5100mAh battery life, durable; sensitive fingerprint unlock, intelligent fingerprint manipulation; refined metal body, holding light and comfort','<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand HUAWEI (HUAWEI)</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model BTV-W09</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">HUAWEI tablet M3</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Rihui color gold / silver moon</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Class tablet computer</span></p><p><br/></p>','55','56','68','','0','0','0','../upload/201801/1515736912.jpg','','','0','4','2018-01-16 10:26:14','2018-01-12 14:00:55','admin','0','0','','en','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">subject</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Brand HUAWEI (HUAWEI)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Model BTV-W09</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">HUAWEI tablet M3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Rihui color gold / silver moon</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Design straight</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Class tablet computer</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Operating system Android 6</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">User interface EMUI 4.1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU type 950 Hass kylin</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU core number eight core</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">CPU main frequency 4x2.3GHz + 4x1.8GHz</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPU Mali-T880</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Keyboard type soft keyboard</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input mode touch</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Intelligent reading support eye protection mode</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Voice assistant support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Font size settings support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Secure fingerprint, flatboard housekeeper, file secrecy cabinet</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Feature feature fingerprint navigation, audio and video lock screen, student mode, eye protection mode, dual task window, HUAWEI video</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The screen size is 8.4 inches</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen color 16 million color</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen type IPS screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Resolution 2560x1600</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The visual angle is 80 degrees / 80 degrees / left 80 degrees / right 80 degrees</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen ratio at 16:10</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">PPI 359 PPI</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Glass aluminum silicon glass</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Touch screen capacitive screen</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Input method HUAWEI input method, HUAWEI Swype input method, Android keyboard</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Describe the characteristics of 2K 8.4 inch large screen dazzling intimate eye model; shock stereo field, Hi-Fi pure tone; 8 core 64 bit processor, 4GB large memory capacity 5100mAh battery life, durable; sensitive fingerprint unlock, intelligent fingerprint manipulation; refined metal body, holding light and comfort</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Touch control 10 point touch control</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">network</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network type is not supported</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network mode does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network frequency does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data business does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Encryption methods do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network band does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">storage</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Running memory (RAM) 4GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Storage capacity (ROM) standard: 32GB, high 64GB, top: 128GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Extended support for Micro SD card</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Extensible capacity 128GB</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">sensor</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Light sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gravity inductor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Distance sensor does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Gyroscope support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Electronic compass support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Compass support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">NFC does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">State indicator lamp support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Acceleration sensor support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Transmission function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi standard 802.11 b/g/n/a/ac</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi working band 2.4GHz&amp;5GHz</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi encryption mode WEP/WPA/WPA2</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Wi-Fi hot spots do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WiFi Display support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN Direct support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Bluetooth transmission BT 4.1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">HDMI does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">OTG support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USB USB 2</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Network card does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">DLNA does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">GPS GPS, GLONASS, Beidou (BDS)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Camera function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">8 million pixels of the main camera</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">8 million pixel camera</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sensor type CMOS</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flashlight does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video shooting support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Zoom mode digital zoom</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Auto focus main camera support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Shooting mode support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Photo resolution master camera: maximum support 3264 x 2448, auxiliary camera: maximum support 3264 * 2448</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Entertainment function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video coding H.264</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video playback H.264/MPEG4/H.263/VP8/H.265</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Video file format MP4/3GP/3G2/ASF/AVI/MKV/WEBM</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Audio coding AMR-NB/AAC</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Audio playback AMR-NB/AAC/AAC+/EAAC+/MP3/OGG/MIDI/PCM</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Audio file format MP3/FLAC/APE/WAV/OGG/MIDI/3GP/AAC</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Sound effect SWS 3</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Picture format JPEG, GIF, BMP, PNG</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Recording support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Radio does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Streaming media support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Electronic books do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The function of MMS does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Flash playback users download and install the Adobe FlashPlayer plug-in to support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3D image acceleration support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Call and information function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Speech does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3G video calls do not support (downloadable third party applications support video calls)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Ringtone types do not support (downloadable third party applications support video calls)</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">MMS do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Navigation and positioning function</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Satellite navigation support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Navigational software high map</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cellular network location does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">WLAN network positioning support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Personal assistant</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Office support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">E-mail support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Browser support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Alarm clock support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Background instant messaging is not preset</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Unprepared stock software</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Utility calendars, calculators, recorders, memos, mirrors, and compass</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Cloud service support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Built in software Baidu search, GAD map, Microsoft Office, Outlook</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Google applications do not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Hot plug does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery type lithium polymer</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery capacity 5100mAh</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Battery replacement does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Theoretical call time does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The use of theory for 1.85 days</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Theoretical standby time of 350 hours</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3.7 hours of charging time</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Headphone interface 3.5mm</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2 loudspeakers</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1 microphones</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The receiver is not supported</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">SIM card size does not support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">SD card microSD</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">USB interface support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Other interfaces have no</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Button volume key, power key, fingerprint navigation key</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Software upgrade microSD card local upgrade, online online upgrade</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Software name HUAWEI terminal intelligent equipment human-computer interactive communication software V2.0</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The size of the fuselage 215.5mm * 124.2mm x 7.3mm</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">The weight of the fuselage is about 310G</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Charger 5V2A</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Anti fingerprint non support</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Back cover is not detachable</span></p><p><br/></p>','<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Host x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Charger x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Data line x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Screen protection film x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Instruction x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">Warranty card x 1</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">AKG headset x 1 (only version 128G)</span></p><p><br/></p>','','','','','','','','0','1','','','400x400','0','','','');

DROP TABLE IF EXISTS met_skin_table;
CREATE TABLE `met_skin_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(200) DEFAULT '',
  `skin_file` varchar(20) DEFAULT '',
  `skin_info` text,
  `devices` int(11) DEFAULT '0',
  `ver` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_skin_table VALUES('1','metv7','metv7','MetInfo v7.0正式版新推出一套全新精致免费模板！','0','');

DROP TABLE IF EXISTS met_tags;
CREATE TABLE `met_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT '',
  `tag_pinyin` varchar(255) DEFAULT '',
  `module` int(11) DEFAULT '0',
  `cid` int(11) DEFAULT '0',
  `list_id` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `tag_color` varchar(255) DEFAULT '',
  `tag_size` int(10) DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `lang` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO met_tags VALUES('1','企业','qiye','2','3','|12|','文章模块自动聚合标签','','','#f7113f','0','0','cn');
INSERT INTO met_tags VALUES('2','消费','xiaofei','2','3','|12|','','','','','','0','cn');
INSERT INTO met_tags VALUES('3','华为','huawei','3','4','','产品聚合标签','','','','0','0','cn');

DROP TABLE IF EXISTS met_templates;
CREATE TABLE `met_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(20) DEFAULT '0',
  `pos` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `style` int(11) DEFAULT '0',
  `selectd` varchar(500) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `value` text,
  `defaultvalue` text,
  `valueinfo` varchar(100) DEFAULT '',
  `tips` varchar(255) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `bigclass` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;

INSERT INTO met_templates VALUES('1','metv7','0','11','1','3','','met_foot','','','底部设置','','cn','0');
INSERT INTO met_templates VALUES('2','metv7','0','14','4','3','$M$底部$T$0$M$顶部$T$1','cn1_position','','0','简繁体切换按钮位置','','cn','1');
INSERT INTO met_templates VALUES('3','metv7','0','13','2','3','','footlink_title','','友情链接','友情链接标题','','cn','1');
INSERT INTO met_templates VALUES('4','metv7','0','12','4','3','$M$开启$T$1$M$关闭$T$0','link_ok','','1','友情链接开关','','cn','1');
INSERT INTO met_templates VALUES('5','metv7','0','15','4','3','$M$开启$T$1$M$关闭$T$0','cn1_ok','','1','简繁体切换开关','','cn','1');
INSERT INTO met_templates VALUES('6','metv7','2','9','1','3','','met_news','','','文章模块','','cn','0');
INSERT INTO met_templates VALUES('7','metv7','2','10','4','3','$M$开启$T$1$M$关闭$T$0','news_imgok','','1','图片开关','','cn','6');
INSERT INTO met_templates VALUES('8','metv7','3','8','1','3','','downlaod_bar','','','下载模块','','cn','0');
INSERT INTO met_templates VALUES('9','metv7','3','13','4','3','$M$开启$T$1$M$关闭$T$0','downloadsidebar_column_ok','','1','侧栏栏目开关','','cn','8');
INSERT INTO met_templates VALUES('10','metv7','3','14','4','3','$M$开启$T$1$M$关闭$T$0','sidebar_downloadlist_ok','','1','侧栏文章列表开关','','cn','8');
INSERT INTO met_templates VALUES('11','metv7','3','11','4','3','$M$全部$T$all$M$推荐$T$com','download_bar_list_type','','all','侧栏列表下载类型','','cn','8');
INSERT INTO met_templates VALUES('12','metv7','3','9','2','3','','download_bar_list_title','','为你推荐','侧栏下载列表标题','','cn','8');
INSERT INTO met_templates VALUES('13','metv7','3','12','4','3','$M$开启$T$1$M$关闭$T$0','download_column3_ok','','1','三级栏目开关','','cn','8');
INSERT INTO met_templates VALUES('14','metv7','3','10','2','3','','sidebar_downloadlist_num','','5','侧栏下载列表数量','','cn','8');
INSERT INTO met_templates VALUES('15','metv7','2','3','1','3','','met_img','','','图片模块','','cn','0');
INSERT INTO met_templates VALUES('16','metv7','2','4','4','3','$M$浏览模式$T$1$M$详情模式$T$0','img_listlook_style','','1','查看模式','浏览模式为在列表页浏览图片，详情模式为点击进入详情页','cn','15');
INSERT INTO met_templates VALUES('17','metv7','2','7','1','3','','subcolumn_nav','','','子栏目设置','','cn','0');
INSERT INTO met_templates VALUES('18','metv7','2','8','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_2','','1','区块开关','','cn','17');
INSERT INTO met_templates VALUES('19','metv7','0','8','1','3','','met_position','','','当前位置','','cn','0');
INSERT INTO met_templates VALUES('20','metv7','0','9','2','3','','position_text','','你的位置','当前位置标题','','cn','19');
INSERT INTO met_templates VALUES('21','metv7','0','10','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_1','','1','区域开关','','cn','19');
INSERT INTO met_templates VALUES('22','metv7','3','15','1','3','','img_bar','','','图片模块','','cn','0');
INSERT INTO met_templates VALUES('23','metv7','3','18','4','3','$M$全部$T$all$M$推荐$T$com','img_bar_list_type','','all','侧栏列表图片类型','','cn','22');
INSERT INTO met_templates VALUES('24','metv7','3','17','2','3','','img_bar_list_title','','为您推荐','侧栏图片列表标题','','cn','22');
INSERT INTO met_templates VALUES('25','metv7','3','16','4','3','$M$开启$T$1$M$关闭$T$0','img_bar_list_open','','1','侧栏图片列表开关','','cn','22');
INSERT INTO met_templates VALUES('26','metv7','3','20','4','3','$M$开启$T$1$M$关闭$T$0','imgbar_column_open','','1','侧栏栏目开关','','cn','22');
INSERT INTO met_templates VALUES('27','metv7','3','19','2','3','','img_bar_list_num','','5','侧栏列表图片数量','','cn','22');
INSERT INTO met_templates VALUES('28','metv7','3','21','4','3','$M$开启$T$1$M$关闭$T$0','img_column3_ok','','1','三级栏目开关','','cn','22');
INSERT INTO met_templates VALUES('29','metv7','3','22','1','3','','product_bar','','','产品模块侧边栏','','cn','0');
INSERT INTO met_templates VALUES('30','metv7','3','26','4','3','当前一级栏目内容列表$T$1$M$TAG标签聚合$T$0','product_sidebar_content','1','1','调用内容','默认调用当前栏目内容列表','cn','29');
INSERT INTO met_templates VALUES('31','metv7','3','23','2','3','','product_sidebar_piclist_title','相关推荐','热门推荐','区块标题','','cn','29');
INSERT INTO met_templates VALUES('32','metv7','3','24','2','3','','product_sidebar_piclist_num','3','5','调用条数','','cn','29');
INSERT INTO met_templates VALUES('33','metv7','3','25','4','3','$M$全部$T$all$M$推荐$T$com','product_sidebar_piclist_type','all','all','调用类型','','cn','29');
INSERT INTO met_templates VALUES('34','metv7','0','24','1','3','','banner','','','banner设置','','cn','0');
INSERT INTO met_templates VALUES('35','metv7','0','25','4','3','$M$提示$T$1','info','1','1','提示','此banner是图片不适合设置高度，如果觉得banner尺寸不合适请更换banner尺寸','cn','34');
INSERT INTO met_templates VALUES('36','metv7','0','26','9','3','','page_top_bgcolor','#1baadb','#ccc','内页无banner背景色','','cn','34');
INSERT INTO met_templates VALUES('37','metv7','0','27','9','3','','bannersub_color','#ffffff','#fff','内页无banner字体色','','cn','34');
INSERT INTO met_templates VALUES('38','metv7','0','28','2','3','','btn_margin','5','5','电脑端按钮之间的边距','默认为5px','cn','34');
INSERT INTO met_templates VALUES('39','metv7','0','29','2','3','','mbtn_margin','5','5','手机端按钮之间的边距','默认为5px','cn','34');
INSERT INTO met_templates VALUES('40','metv7','1','18','1','3','','met_index_news','','','首页新闻区块','','cn','0');
INSERT INTO met_templates VALUES('41','metv7','1','28','2','3','','home_product_img_h','125','125','缩略图高','默认为125px','cn','40');
INSERT INTO met_templates VALUES('42','metv7','1','27','2','3','','home_product_img_w','200','200','缩略图宽','默认为200px','cn','40');
INSERT INTO met_templates VALUES('43','metv7','1','22','2','3','','home_news_num','4','5','调用条数','','cn','40');
INSERT INTO met_templates VALUES('44','metv7','1','26','2','3','','home_news_img_maxnum','80','80','描述文字字数限制','默认为80个字符','cn','40');
INSERT INTO met_templates VALUES('45','metv7','1','21','6','3','','home_news1','3','4','调用栏目','调用当前栏目的内容列表','cn','40');
INSERT INTO met_templates VALUES('46','metv7','1','25','4','3','显示$T$1$M$隐藏$T$0','home_news_img_ok','1','1','是否显示图片','默认为显示','cn','40');
INSERT INTO met_templates VALUES('47','metv7','1','24','2','3','','home_news_more','MORE','MORE','更多文字','','cn','40');
INSERT INTO met_templates VALUES('48','metv7','1','19','2','3','','index_news_title','新闻资讯','标题','区块标题','','cn','40');
INSERT INTO met_templates VALUES('49','metv7','1','23','4','3','$M$全部$T$all$M$推荐$T$com','home_news_type','all','all','调用类型','','cn','40');
INSERT INTO met_templates VALUES('50','metv7','1','20','3','3','','index_news_desc','Latest news and information','描述','区块描述','','cn','40');
INSERT INTO met_templates VALUES('51','metv7','0','1','1','3','','met_head','','','顶部设置','','cn','0');
INSERT INTO met_templates VALUES('52','metv7','0','5','4','3','$M$鼠标经过$T$1$M$点击展开$T$0','navhoverok','1','1','下拉方式','','cn','51');
INSERT INTO met_templates VALUES('53','metv7','0','7','4','3','$M$开启$T$1$M$关闭$T$0','langlist1_icon_ok','1','1','语言国旗开关','','cn','51');
INSERT INTO met_templates VALUES('54','metv7','0','3','2','3','','nav_ml','10','10','导航间距','默认是0，仅支持5的倍数（0/5/10/15/20...最大50）<br/>不同网站的导航数量不同，根据需求适当调整间距，让网站更协调。','cn','51');
INSERT INTO met_templates VALUES('55','metv7','0','2','4','3','$M$开启$T$1$M$关闭$T$0','navbarok','1','1','下拉菜单','','cn','51');
INSERT INTO met_templates VALUES('56','metv7','0','4','2','3','','all','全部','全部','下拉菜单全部','仅在手机端显示','cn','51');
INSERT INTO met_templates VALUES('57','metv7','0','6','4','3','$M$头部$T$1$M$底部$T$0','langlist_position','1','1','多语言位置','','cn','51');
INSERT INTO met_templates VALUES('58','metv7','0','16','1','3','','global','','','全局参数','','cn','0');
INSERT INTO met_templates VALUES('59','metv7','0','21','2','3','','search_placeholder','请输入内容关键词','请输入内容关键词','搜索文字','','cn','58');
INSERT INTO met_templates VALUES('60','metv7','0','18','2','3','','sub_all','全部','全部','页面文字','','cn','58');
INSERT INTO met_templates VALUES('61','metv7','0','22','9','3','','first_color','#1baadb','#000000','模板主色调','','cn','58');
INSERT INTO met_templates VALUES('62','metv7','0','23','4','3','当前窗口打开$T$target=_self$M$新窗口打开$T$target=_blank','urlnew','target=_self','target=_self','内容列表链接打开方式','列表页链接打开方式可在栏目管理中对每个栏目进行单独设置','cn','58');
INSERT INTO met_templates VALUES('63','metv7','0','20','2','3','','nodata','没有数据了','没有数据了','无数据提示','','cn','58');
INSERT INTO met_templates VALUES('64','metv7','0','19','2','3','','page_ajax_next','加载更多','加载更多','分页文字','无刷新分页默认文字','cn','58');
INSERT INTO met_templates VALUES('65','metv7','0','17','2','3','','met_font','','','页面字体','非特殊语种，建议留空使用模板默认字体','cn','58');
INSERT INTO met_templates VALUES('66','metv7','2','5','1','3','','met_job','','','招聘模块','','cn','0');
INSERT INTO met_templates VALUES('67','metv7','2','6','2','3','','cvtitle','在线应聘','在线应聘','按钮文字','','cn','66');
INSERT INTO met_templates VALUES('68','metv7','1','1','1','3','','met_index_product','','','首页产品区块','','cn','0');
INSERT INTO met_templates VALUES('69','metv7','1','2','2','3','','index_product_title','产品中心','标题','区块标题','','cn','68');
INSERT INTO met_templates VALUES('70','metv7','1','3','3','3','','index_product_desc','Recommended products and services','描述','区块描述','','cn','68');
INSERT INTO met_templates VALUES('71','metv7','1','5','2','3','','index_product_all','全部','全部','栏目列表代表文字','','cn','68');
INSERT INTO met_templates VALUES('72','metv7','1','4','6','3','','index_product_id','4','','调用栏目','','cn','68');
INSERT INTO met_templates VALUES('73','metv7','1','7','2','3','','index_product_column_lg','4','4','普通电脑显示列数','浏览器宽度大于992像素小于1600像素时','cn','68');
INSERT INTO met_templates VALUES('74','metv7','1','6','2','3','','index_product_column_xxl','4','4','大尺寸电脑显示列数','浏览器宽度大于1600像素时','cn','68');
INSERT INTO met_templates VALUES('75','metv7','1','8','2','3','','index_product_column_md','2','2','平板显示列数','浏览器宽度大于768像素小于992像素时','cn','68');
INSERT INTO met_templates VALUES('76','metv7','1','9','2','3','','index_product_column_xs','2','2','手机显示列数','浏览器宽度小于768像素时','cn','68');
INSERT INTO met_templates VALUES('77','metv7','1','10','2','3','','index_product_allnum','8','8','调用条数','每个列表调用信息最多条数','cn','68');
INSERT INTO met_templates VALUES('78','metv7','1','11','4','3','全部$T$all$M$推荐$T$com','index_product_type','all','all','调用类型','列表信息调用类型，【推荐】可以在添加或管理文章列表时设置。','cn','68');
INSERT INTO met_templates VALUES('79','metv7','1','13','2','3','','index_product_img_h','300','300','缩略图高','默认为300px','cn','68');
INSERT INTO met_templates VALUES('80','metv7','1','12','2','3','','index_product_img_w','484','484','缩略图宽','默认为484px','cn','68');
INSERT INTO met_templates VALUES('81','metv7','1','29','1','3','','met_index_case','','','首页合作伙伴','','cn','0');
INSERT INTO met_templates VALUES('82','metv7','1','30','2','3','','home_case_title','成功案例','标题','区块标题','','cn','81');
INSERT INTO met_templates VALUES('83','metv7','1','31','2','3','','home_case_desc','Success stories and customer shows','描述','区块描述','','cn','81');
INSERT INTO met_templates VALUES('84','metv7','1','33','2','3','','home_case_num','8','8','调用条数','默认调用8条','cn','81');
INSERT INTO met_templates VALUES('85','metv7','1','32','6','3','','home_case_id','38','','栏目选择','','cn','81');
INSERT INTO met_templates VALUES('86','metv7','1','34','4','3','全部$T$all$M$推荐$T$com','home_case_type','all','all','调用类型','','cn','81');
INSERT INTO met_templates VALUES('87','metv7','1','35','4','3','纯展示$T$0$M$超链接$T$1','home_case_linkok','1','1','展示方式','默认为超链接','cn','81');
INSERT INTO met_templates VALUES('88','metv7','1','36','2','3','','home_case_imgw','320','320','缩略图宽','默认为320px','cn','81');
INSERT INTO met_templates VALUES('89','metv7','1','37','2','3','','home_case_imgh','200','200','缩略图高','默认为200px','cn','81');
INSERT INTO met_templates VALUES('90','metv7','1','14','1','3','','met_index_about','','','首页简介区块','','cn','0');
INSERT INTO met_templates VALUES('91','metv7','1','15','2','3','','home_about_title','关于我们','标题','区块标题','','cn','90');
INSERT INTO met_templates VALUES('92','metv7','1','16','2','3','','home_about_desc','About us and company introduction','描述','区块描述','','cn','90');
INSERT INTO met_templates VALUES('93','metv7','1','17','8','3','','home_about_content','<div microsoft=\"\" white-space:=\"\" style=\"text-align: left;\"><p style=\"text-align:center;\"><img src=\"../upload/201801/1516066438664023.jpg\" data-width=\"1180\" width=\"545\" data-height=\"664\" height=\"307\" alt=\"图片关键词\" border=\"0\" vspace=\"10\" hspace=\"10\" title=\"图片关键词\" style=\"width: 545px; height: 307px; float: left; display: inline-block;\"/></p><p>米拓企业建站系统（原名：MetInfo企业网站管理系统）自2009年发布至今，已成为众多企业建站的主流工具。</p><p><strong>米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站。</strong></p>米拓企业建站系统采用PHP+MySQL架构，支持SQLite数据库，全站内置了SEO搜索引擎优化机制，支持用户自定义语言（全球各种语言），支持可视化编辑管理，拥有企业网站常用的功能模块（简介模块、文章模块、产品模块、下载模块、图片模块、招聘模块、在线留言、反馈系统、在线交流、友情链接、网站地图、会员与权限管理、TAG标签），强大的SEO及伪静态设置功能，支持自定义网站颜色风格，支持按栏目自定义Banner图和数据调用，支持手机底部菜单，支持用户自主二次开发，商业模板支持在线升级。系统内置标准的应用插件开发接口，拥有丰富的免费插件和收费插件，如短信接口、robots文件修改、模板制作助手、小程序、支付接口、商城模块、系统诊所、图片加速、网站广告插件等。无论你是技术大咖还是建站小白，都可以使用MetInfo快速搭建一个功能齐全的响应式专业网站。</div>','','区块内容','','cn','90');
INSERT INTO met_templates VALUES('94','metv7','3','1','1','3','','news_bar','','','文章模块','','cn','0');
INSERT INTO met_templates VALUES('95','metv7','3','6','2','3','','news_bar_list_num','','5','侧栏列表文章数量','','cn','94');
INSERT INTO met_templates VALUES('96','metv7','3','7','4','3','$M$全部$T$all$M$推荐$T$com','news_bar_list_type','','all','侧栏列表文章类型','','cn','94');
INSERT INTO met_templates VALUES('97','metv7','3','2','4','3','$M$开启$T$1$M$关闭$T$0','bar_column3_open','','1','三级栏目开关','除开产品模块以外的侧栏','cn','94');
INSERT INTO met_templates VALUES('98','metv7','3','4','4','3','$M$开启$T$1$M$关闭$T$0','news_bar_list_open','','1','侧栏文章列表开关','','cn','94');
INSERT INTO met_templates VALUES('99','metv7','3','3','4','3','$M$开启$T$1$M$关闭$T$0','bar_column_open','','1','侧栏栏目开关','除开产品模块以外的侧栏','cn','94');
INSERT INTO met_templates VALUES('100','metv7','3','5','2','3','','news_bar_list_title','','为您推荐','侧栏文章列表标题','','cn','94');
INSERT INTO met_templates VALUES('101','metv7','2','1','1','3','','met_download','','','下载模块','','cn','0');
INSERT INTO met_templates VALUES('102','metv7','2','2','2','3','','download','','立即下载','按钮文字','','cn','101');
INSERT INTO met_templates VALUES('103','metv7','0','30','1','3','','met_contact','','','底部联系信息设置','','cn','0');
INSERT INTO met_templates VALUES('104','metv7','0','47','2','3','','footinfo_email','','','邮箱地址','','cn','103');
INSERT INTO met_templates VALUES('105','metv7','0','46','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_emailok','0','0','邮箱','','cn','103');
INSERT INTO met_templates VALUES('106','metv7','0','45','2','3','','footinfo_facebook','','','Facebook网址','','cn','103');
INSERT INTO met_templates VALUES('107','metv7','0','42','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_googleok','0','0','google+','','cn','103');
INSERT INTO met_templates VALUES('108','metv7','0','44','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_facebookok','0','0','Facebook','','cn','103');
INSERT INTO met_templates VALUES('109','metv7','0','41','2','3','','footinfo_twitter','','','twitter网址','','cn','103');
INSERT INTO met_templates VALUES('110','metv7','0','40','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_twitterok','0','0','twitter（推特）','','cn','103');
INSERT INTO met_templates VALUES('111','metv7','0','39','2','3','','footinfo_sina','','','新浪微博网址','请输入微博网址','cn','103');
INSERT INTO met_templates VALUES('112','metv7','0','38','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_sina_ok','1','1','新浪微博','','cn','103');
INSERT INTO met_templates VALUES('113','metv7','0','37','2','3','','footinfo_qq','','','QQ号码','点击QQ链接可直接对话，需要先到 shang.qq.com 免费开通。<br/>企业营销QQ 无需开通','cn','103');
INSERT INTO met_templates VALUES('114','metv7','0','36','4','3','$M$个人QQ$T$1$M$企业营销QQ$T$2','foot_info_qqtype','1','1','QQ类型','个人QQ和企业营销QQ超链接结构不一样，因此请务必选择正确。','cn','103');
INSERT INTO met_templates VALUES('115','metv7','0','35','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_qq_ok','1','1','QQ','','cn','103');
INSERT INTO met_templates VALUES('116','metv7','0','33','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_wx_ok','1','1','微信','','cn','103');
INSERT INTO met_templates VALUES('117','metv7','0','43','2','3','','footinfo_google','','','google+网址','','cn','103');
INSERT INTO met_templates VALUES('118','metv7','0','32','2','3','','footinfo_dsc','100-000-0000','','描述文字','','cn','103');
INSERT INTO met_templates VALUES('119','metv7','0','31','2','3','','footinfo_tel','服务热线','','服务热线','','cn','103');
INSERT INTO met_templates VALUES('120','metv7','0','34','7','3','','footinfo_wx','../upload/201807/1554199135.jpg','','微信二维码','','cn','103');
INSERT INTO met_templates VALUES('330','metv7','1','38','2','3','','home_case_num_xxl','8','8','大尺寸电脑显示列数','浏览器宽度大于1600像素时','cn','81');
INSERT INTO met_templates VALUES('331','metv7','1','39','2','3','','home_case_num_lg','6','6','普通电脑显示列数','浏览器宽度大于1024像素小于1600像素时','cn','81');
INSERT INTO met_templates VALUES('332','metv7','1','40','2','3','','home_case_num_md','4','4','平板显示列数','浏览器宽度大于768像素小于1024像素时','cn','81');
INSERT INTO met_templates VALUES('333','metv7','1','41','2','3','','home_case_num_xs','2','2','手机显示列数','浏览器宽度小于768像素时','cn','81');
INSERT INTO met_templates VALUES('121','metv7','0','11','1','3','','met_foot','','','底部设置','','en','0');
INSERT INTO met_templates VALUES('122','metv7','0','14','4','3','$M$底部$T$0$M$顶部$T$1','cn1_position','','0','简繁体切换按钮位置','','en','121');
INSERT INTO met_templates VALUES('123','metv7','0','13','2','3','','footlink_title','','友情链接','友情链接标题','','en','121');
INSERT INTO met_templates VALUES('124','metv7','0','12','4','3','$M$开启$T$1$M$关闭$T$0','link_ok','','1','友情链接开关','','en','121');
INSERT INTO met_templates VALUES('125','metv7','0','15','4','3','$M$开启$T$1$M$关闭$T$0','cn1_ok','','1','简繁体切换开关','','en','121');
INSERT INTO met_templates VALUES('126','metv7','2','9','1','3','','met_news','','','文章模块','','en','0');
INSERT INTO met_templates VALUES('127','metv7','2','10','4','3','$M$开启$T$1$M$关闭$T$0','news_imgok','','1','图片开关','','en','126');
INSERT INTO met_templates VALUES('128','metv7','3','8','1','3','','downlaod_bar','','','下载模块','','en','0');
INSERT INTO met_templates VALUES('129','metv7','3','13','4','3','$M$开启$T$1$M$关闭$T$0','downloadsidebar_column_ok','','1','侧栏栏目开关','','en','128');
INSERT INTO met_templates VALUES('130','metv7','3','14','4','3','$M$开启$T$1$M$关闭$T$0','sidebar_downloadlist_ok','','1','侧栏文章列表开关','','en','128');
INSERT INTO met_templates VALUES('131','metv7','3','11','4','3','$M$全部$T$all$M$推荐$T$com','download_bar_list_type','','all','侧栏列表下载类型','','en','128');
INSERT INTO met_templates VALUES('132','metv7','3','9','2','3','','download_bar_list_title','','为你推荐','侧栏下载列表标题','','en','128');
INSERT INTO met_templates VALUES('133','metv7','3','12','4','3','$M$开启$T$1$M$关闭$T$0','download_column3_ok','','1','三级栏目开关','','en','128');
INSERT INTO met_templates VALUES('134','metv7','3','10','2','3','','sidebar_downloadlist_num','','5','侧栏下载列表数量','','en','128');
INSERT INTO met_templates VALUES('135','metv7','2','3','1','3','','met_img','','','图片模块','','en','0');
INSERT INTO met_templates VALUES('136','metv7','2','4','4','3','$M$浏览模式$T$1$M$详情模式$T$0','img_listlook_style','','1','查看模式','浏览模式为在列表页浏览图片，详情模式为点击进入详情页','en','135');
INSERT INTO met_templates VALUES('137','metv7','2','7','1','3','','subcolumn_nav','','','子栏目设置','','en','0');
INSERT INTO met_templates VALUES('138','metv7','2','8','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_2','','1','区块开关','','en','137');
INSERT INTO met_templates VALUES('139','metv7','0','8','1','3','','met_position','','','当前位置','','en','0');
INSERT INTO met_templates VALUES('140','metv7','0','9','2','3','','position_text','Location','你的位置','当前位置标题','','en','139');
INSERT INTO met_templates VALUES('141','metv7','0','10','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_1','','1','区域开关','','en','139');
INSERT INTO met_templates VALUES('142','metv7','3','15','1','3','','img_bar','','','图片模块','','en','0');
INSERT INTO met_templates VALUES('143','metv7','3','18','4','3','$M$全部$T$all$M$推荐$T$com','img_bar_list_type','','all','侧栏列表图片类型','','en','142');
INSERT INTO met_templates VALUES('144','metv7','3','17','2','3','','img_bar_list_title','Recommended content','为您推荐','侧栏图片列表标题','','en','142');
INSERT INTO met_templates VALUES('145','metv7','3','16','4','3','$M$开启$T$1$M$关闭$T$0','img_bar_list_open','','1','侧栏图片列表开关','','en','142');
INSERT INTO met_templates VALUES('146','metv7','3','20','4','3','$M$开启$T$1$M$关闭$T$0','imgbar_column_open','','1','侧栏栏目开关','','en','142');
INSERT INTO met_templates VALUES('147','metv7','3','19','2','3','','img_bar_list_num','','5','侧栏列表图片数量','','en','142');
INSERT INTO met_templates VALUES('148','metv7','3','21','4','3','$M$开启$T$1$M$关闭$T$0','img_column3_ok','','1','三级栏目开关','','en','142');
INSERT INTO met_templates VALUES('149','metv7','3','22','1','3','','product_bar','','','产品模块侧边栏','','en','0');
INSERT INTO met_templates VALUES('150','metv7','3','26','4','3','当前一级栏目内容列表$T$1$M$TAG标签聚合$T$0','product_sidebar_content','1','1','调用内容','默认调用当前栏目内容列表','en','149');
INSERT INTO met_templates VALUES('151','metv7','3','23','2','3','','product_sidebar_piclist_title','Recommended content','热门推荐','区块标题','','en','149');
INSERT INTO met_templates VALUES('152','metv7','3','24','2','3','','product_sidebar_piclist_num','3','5','调用条数','','en','149');
INSERT INTO met_templates VALUES('153','metv7','3','25','4','3','$M$全部$T$all$M$推荐$T$com','product_sidebar_piclist_type','all','all','调用类型','','en','149');
INSERT INTO met_templates VALUES('154','metv7','0','24','1','3','','banner','','','banner设置','','en','0');
INSERT INTO met_templates VALUES('155','metv7','0','25','4','3','$M$提示$T$1','info','1','1','提示','此banner是图片不适合设置高度，如果觉得banner尺寸不合适请更换banner尺寸','en','154');
INSERT INTO met_templates VALUES('156','metv7','0','26','9','3','','page_top_bgcolor','#1baadb','#ccc','内页无banner背景色','','en','154');
INSERT INTO met_templates VALUES('157','metv7','0','27','9','3','','bannersub_color','#ffffff','#fff','内页无banner字体色','','en','154');
INSERT INTO met_templates VALUES('158','metv7','0','28','2','3','','btn_margin','5','5','电脑端按钮之间的边距','默认为5px','en','154');
INSERT INTO met_templates VALUES('159','metv7','0','29','2','3','','mbtn_margin','5','5','手机端按钮之间的边距','默认为5px','en','154');
INSERT INTO met_templates VALUES('160','metv7','1','18','1','3','','met_index_news','','','首页新闻区块','','en','0');
INSERT INTO met_templates VALUES('161','metv7','1','28','2','3','','home_product_img_h','125','125','缩略图高','默认为125px','en','160');
INSERT INTO met_templates VALUES('162','metv7','1','27','2','3','','home_product_img_w','200','200','缩略图宽','默认为200px','en','160');
INSERT INTO met_templates VALUES('163','metv7','1','22','2','3','','home_news_num','4','5','调用条数','','en','160');
INSERT INTO met_templates VALUES('164','metv7','1','26','2','3','','home_news_img_maxnum','80','80','描述文字字数限制','默认为80个字符','en','160');
INSERT INTO met_templates VALUES('165','metv7','1','21','6','3','','home_news1','48','4','调用栏目','调用当前栏目的内容列表','en','160');
INSERT INTO met_templates VALUES('166','metv7','1','25','4','3','显示$T$1$M$隐藏$T$0','home_news_img_ok','1','1','是否显示图片','默认为显示','en','160');
INSERT INTO met_templates VALUES('167','metv7','1','24','2','3','','home_news_more','MORE','MORE','更多文字','','en','160');
INSERT INTO met_templates VALUES('168','metv7','1','19','2','3','','index_news_title','News','标题','区块标题','','en','160');
INSERT INTO met_templates VALUES('169','metv7','1','23','4','3','$M$全部$T$all$M$推荐$T$com','home_news_type','all','all','调用类型','','en','160');
INSERT INTO met_templates VALUES('170','metv7','1','20','3','3','','index_news_desc','Latest news and information','描述','区块描述','','en','160');
INSERT INTO met_templates VALUES('171','metv7','0','1','1','3','','met_head','','','顶部设置','','en','0');
INSERT INTO met_templates VALUES('172','metv7','0','5','4','3','$M$鼠标经过$T$1$M$点击展开$T$0','navhoverok','1','1','下拉方式','','en','171');
INSERT INTO met_templates VALUES('173','metv7','0','7','4','3','$M$开启$T$1$M$关闭$T$0','langlist1_icon_ok','1','1','语言国旗开关','','en','171');
INSERT INTO met_templates VALUES('174','metv7','0','3','2','3','','nav_ml','10','10','导航间距','默认是0，仅支持5的倍数（0/5/10/15/20...最大50）<br/>不同网站的导航数量不同，根据需求适当调整间距，让网站更协调。','en','171');
INSERT INTO met_templates VALUES('175','metv7','0','2','4','3','$M$开启$T$1$M$关闭$T$0','navbarok','1','1','下拉菜单','','en','171');
INSERT INTO met_templates VALUES('176','metv7','0','4','2','3','','all','全部','全部','下拉菜单全部','仅在手机端显示','en','171');
INSERT INTO met_templates VALUES('177','metv7','0','6','4','3','$M$头部$T$1$M$底部$T$0','langlist_position','1','1','多语言位置','','en','171');
INSERT INTO met_templates VALUES('178','metv7','0','16','1','3','','global','','','全局参数','','en','0');
INSERT INTO met_templates VALUES('179','metv7','0','21','2','3','','search_placeholder','请输入内容关键词','请输入内容关键词','搜索文字','','en','178');
INSERT INTO met_templates VALUES('180','metv7','0','18','2','3','','sub_all','All','全部','页面文字','','en','178');
INSERT INTO met_templates VALUES('181','metv7','0','22','9','3','','first_color','#1baadb','#000000','模板主色调','','en','178');
INSERT INTO met_templates VALUES('182','metv7','0','23','4','3','当前窗口打开$T$target=_self$M$新窗口打开$T$target=_blank','urlnew','target=_self','target=_self','内容列表链接打开方式','列表页链接打开方式可在栏目管理中对每个栏目进行单独设置','en','178');
INSERT INTO met_templates VALUES('183','metv7','0','20','2','3','','nodata','没有数据了','没有数据了','无数据提示','','en','178');
INSERT INTO met_templates VALUES('184','metv7','0','19','2','3','','page_ajax_next','加载更多','加载更多','分页文字','无刷新分页默认文字','en','178');
INSERT INTO met_templates VALUES('185','metv7','0','17','2','3','','met_font','Arial','','页面字体','非特殊语种，建议留空使用模板默认字体','en','178');
INSERT INTO met_templates VALUES('186','metv7','2','5','1','3','','met_job','','','招聘模块','','en','0');
INSERT INTO met_templates VALUES('187','metv7','2','6','2','3','','cvtitle','Apply online','在线应聘','按钮文字','','en','186');
INSERT INTO met_templates VALUES('188','metv7','1','1','1','3','','met_index_product','','','首页产品区块','','en','0');
INSERT INTO met_templates VALUES('189','metv7','1','2','2','3','','index_product_title','Prodcut','标题','区块标题','','en','188');
INSERT INTO met_templates VALUES('190','metv7','1','3','3','3','','index_product_desc','Recommended products and services','描述','区块描述','','en','188');
INSERT INTO met_templates VALUES('191','metv7','1','5','2','3','','index_product_all','全部','全部','栏目列表代表文字','','en','188');
INSERT INTO met_templates VALUES('192','metv7','1','4','6','3','','index_product_id','55','','调用栏目','','en','188');
INSERT INTO met_templates VALUES('193','metv7','1','7','2','3','','index_product_column_lg','4','4','普通电脑显示列数','浏览器宽度大于992像素小于1600像素时','en','188');
INSERT INTO met_templates VALUES('194','metv7','1','6','2','3','','index_product_column_xxl','4','4','大尺寸电脑显示列数','浏览器宽度大于1600像素时','en','188');
INSERT INTO met_templates VALUES('195','metv7','1','8','2','3','','index_product_column_md','2','2','平板显示列数','浏览器宽度大于768像素小于992像素时','en','188');
INSERT INTO met_templates VALUES('196','metv7','1','9','2','3','','index_product_column_xs','2','2','手机显示列数','浏览器宽度小于768像素时','en','188');
INSERT INTO met_templates VALUES('197','metv7','1','10','2','3','','index_product_allnum','8','8','调用条数','每个列表调用信息最多条数','en','188');
INSERT INTO met_templates VALUES('198','metv7','1','11','4','3','全部$T$all$M$推荐$T$com','index_product_type','all','all','调用类型','列表信息调用类型，【推荐】可以在添加或管理文章列表时设置。','en','188');
INSERT INTO met_templates VALUES('199','metv7','1','13','2','3','','index_product_img_h','400','300','缩略图高','默认为300px','en','188');
INSERT INTO met_templates VALUES('200','metv7','1','12','2','3','','index_product_img_w','400','484','缩略图宽','默认为484px','en','188');
INSERT INTO met_templates VALUES('201','metv7','1','29','1','3','','met_index_case','','','首页合作伙伴','','en','0');
INSERT INTO met_templates VALUES('202','metv7','1','30','2','3','','home_case_title','Case','标题','区块标题','','en','201');
INSERT INTO met_templates VALUES('203','metv7','1','31','2','3','','home_case_desc','Success stories and customer shows','描述','区块描述','','en','201');
INSERT INTO met_templates VALUES('204','metv7','1','33','2','3','','home_case_num','8','8','调用条数','默认调用8条','en','201');
INSERT INTO met_templates VALUES('205','metv7','1','32','6','3','','home_case_id','70','','栏目选择','','en','201');
INSERT INTO met_templates VALUES('206','metv7','1','34','4','3','全部$T$all$M$推荐$T$com','home_case_type','all','all','调用类型','','en','201');
INSERT INTO met_templates VALUES('207','metv7','1','35','4','3','纯展示$T$0$M$超链接$T$1','home_case_linkok','1','1','展示方式','默认为超链接','en','201');
INSERT INTO met_templates VALUES('208','metv7','1','36','2','3','','home_case_imgw','320','320','缩略图宽','默认为320px','en','201');
INSERT INTO met_templates VALUES('209','metv7','1','37','2','3','','home_case_imgh','200','200','缩略图高','默认为200px','en','201');
INSERT INTO met_templates VALUES('210','metv7','1','14','1','3','','met_index_about','','','首页简介区块','','en','0');
INSERT INTO met_templates VALUES('211','metv7','1','15','2','3','','home_about_title','About','标题','区块标题','','en','210');
INSERT INTO met_templates VALUES('212','metv7','1','16','2','3','','home_about_desc','About us and company introduction','描述','区块描述','','en','210');
INSERT INTO met_templates VALUES('213','metv7','1','17','8','3','','home_about_content','<div microsoft=\"\" white-space:=\"\" style=\"text-align: left;\"><p style=\"text-align:center;\"><img src=\"../upload/201801/1516066438664023.jpg\" data-width=\"1180\" width=\"545\" data-height=\"664\" height=\"307\" alt=\"MetInfo enterprise content manager system | MetInfo CMS\" border=\"0\" vspace=\"10\" hspace=\"10\" title=\"图片关键词\" style=\"width: 545px; height: 307px; float: left; display: inline-block;\"/></p>MetCMS (the original name: MetInfo enterprise website management system) has been the mainstream tool for the construction of many small and medium enterprises since its release in 2009. The system uses PHP+Mysql architecture, the station built a SEO search engine optimization mechanism, user interface language support, enterprise web site commonly used function modules (profile module, news module, product module, download module, image module, recruitment module, online message, feedback system, online communication, Links, membership and rights management). Powerful and flexible background management function, visual editing function, pseudo static and static page generation function, personalized module adding function, different columns custom Banner picture function, etc., can create a beautiful and marketing quality website for enterprises.</div>','','区块内容','','en','210');
INSERT INTO met_templates VALUES('214','metv7','3','1','1','3','','news_bar','','','文章模块','','en','0');
INSERT INTO met_templates VALUES('215','metv7','3','6','2','3','','news_bar_list_num','','5','侧栏列表文章数量','','en','214');
INSERT INTO met_templates VALUES('216','metv7','3','7','4','3','$M$全部$T$all$M$推荐$T$com','news_bar_list_type','','all','侧栏列表文章类型','','en','214');
INSERT INTO met_templates VALUES('217','metv7','3','2','4','3','$M$开启$T$1$M$关闭$T$0','bar_column3_open','','1','三级栏目开关','除开产品模块以外的侧栏','en','214');
INSERT INTO met_templates VALUES('218','metv7','3','4','4','3','$M$开启$T$1$M$关闭$T$0','news_bar_list_open','','1','侧栏文章列表开关','','en','214');
INSERT INTO met_templates VALUES('219','metv7','3','3','4','3','$M$开启$T$1$M$关闭$T$0','bar_column_open','','1','侧栏栏目开关','除开产品模块以外的侧栏','en','214');
INSERT INTO met_templates VALUES('220','metv7','3','5','2','3','','news_bar_list_title','Recommended content','为您推荐','侧栏文章列表标题','','en','214');
INSERT INTO met_templates VALUES('221','metv7','2','1','1','3','','met_download','','','下载模块','','en','0');
INSERT INTO met_templates VALUES('222','metv7','2','2','2','3','','download','','立即下载','按钮文字','','en','221');
INSERT INTO met_templates VALUES('223','metv7','0','30','1','3','','met_contact','','','底部联系信息设置','','en','0');
INSERT INTO met_templates VALUES('224','metv7','0','47','2','3','','footinfo_email','sales@metinfo.cn','','邮箱地址','','en','223');
INSERT INTO met_templates VALUES('225','metv7','0','46','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_emailok','1','0','邮箱','','en','223');
INSERT INTO met_templates VALUES('226','metv7','0','45','2','3','','footinfo_facebook','https://www.metinfo.cn/','','Facebook网址','','en','223');
INSERT INTO met_templates VALUES('227','metv7','0','42','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_googleok','1','0','google+','','en','223');
INSERT INTO met_templates VALUES('228','metv7','0','44','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_facebookok','1','0','Facebook','','en','223');
INSERT INTO met_templates VALUES('229','metv7','0','41','2','3','','footinfo_twitter','https://www.metinfo.cn/','','twitter网址','','en','223');
INSERT INTO met_templates VALUES('230','metv7','0','40','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_twitterok','1','0','twitter（推特）','','en','223');
INSERT INTO met_templates VALUES('231','metv7','0','39','2','3','','footinfo_sina','','','新浪微博网址','请输入微博网址','en','223');
INSERT INTO met_templates VALUES('232','metv7','0','38','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_sina_ok','0','1','新浪微博','','en','223');
INSERT INTO met_templates VALUES('233','metv7','0','37','2','3','','footinfo_qq','','','QQ号码','点击QQ链接可直接对话，需要先到 shang.qq.com 免费开通。<br/>企业营销QQ 无需开通','en','223');
INSERT INTO met_templates VALUES('234','metv7','0','36','4','3','$M$个人QQ$T$1$M$企业营销QQ$T$2','foot_info_qqtype','1','1','QQ类型','个人QQ和企业营销QQ超链接结构不一样，因此请务必选择正确。','en','223');
INSERT INTO met_templates VALUES('235','metv7','0','35','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_qq_ok','0','1','QQ','','en','223');
INSERT INTO met_templates VALUES('236','metv7','0','33','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_wx_ok','1','1','微信','','en','223');
INSERT INTO met_templates VALUES('237','metv7','0','43','2','3','','footinfo_google','https://www.metinfo.cn/','','google+网址','','en','223');
INSERT INTO met_templates VALUES('238','metv7','0','32','2','3','','footinfo_dsc','100-000-0000','','描述文字','','en','223');
INSERT INTO met_templates VALUES('239','metv7','0','31','2','3','','footinfo_tel','Service Hotline','','服务热线','','en','223');
INSERT INTO met_templates VALUES('240','metv7','0','34','7','3','','footinfo_wx','../upload/201807/1554199135.jpg','','微信二维码','','en','223');
INSERT INTO met_templates VALUES('334','metv7','1','38','2','3','','home_case_num_xxl','8','8','大尺寸电脑显示列数','浏览器宽度大于1600像素时','en','201');
INSERT INTO met_templates VALUES('335','metv7','1','39','2','3','','home_case_num_lg','6','6','普通电脑显示列数','浏览器宽度大于1024像素小于1600像素时','en','201');
INSERT INTO met_templates VALUES('336','metv7','1','40','2','3','','home_case_num_md','4','4','平板显示列数','浏览器宽度大于768像素小于1024像素时','en','201');
INSERT INTO met_templates VALUES('337','metv7','1','41','2','3','','home_case_num_xs','2','2','手机显示列数','浏览器宽度小于768像素时','en','201');

DROP TABLE IF EXISTS met_ui_config;
CREATE TABLE `met_ui_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0',
  `parent_name` varchar(100) DEFAULT '',
  `ui_name` varchar(100) DEFAULT '',
  `skin_name` varchar(100) DEFAULT '',
  `uip_type` int(10) DEFAULT '0',
  `uip_style` tinyint(1) DEFAULT '0',
  `uip_select` varchar(500) DEFAULT '1',
  `uip_name` varchar(100) DEFAULT '',
  `uip_key` varchar(100) DEFAULT '',
  `uip_value` text,
  `uip_default` varchar(255) DEFAULT '',
  `uip_title` varchar(100) DEFAULT '',
  `uip_description` varchar(255) DEFAULT '',
  `uip_order` int(10) DEFAULT '0',
  `lang` varchar(100) DEFAULT '',
  `uip_hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ui_list;
CREATE TABLE `met_ui_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `installid` int(10) DEFAULT '0',
  `parent_name` varchar(100) DEFAULT '',
  `ui_name` varchar(100) DEFAULT '',
  `skin_name` varchar(100) DEFAULT '',
  `ui_page` varchar(200) DEFAULT '',
  `ui_title` varchar(100) DEFAULT '',
  `ui_description` varchar(500) DEFAULT '',
  `ui_order` int(10) DEFAULT '0',
  `ui_version` varchar(100) DEFAULT '',
  `ui_installtime` int(10) DEFAULT '0',
  `ui_edittime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user;
CREATE TABLE `met_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT '',
  `password` varchar(32) DEFAULT '',
  `head` varchar(100) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `tel` varchar(20) DEFAULT '',
  `groupid` int(11) DEFAULT '0',
  `register_time` int(11) DEFAULT '0',
  `register_ip` varchar(15) DEFAULT '',
  `login_time` int(11) DEFAULT '0',
  `login_count` int(11) DEFAULT '0',
  `login_ip` varchar(15) DEFAULT '',
  `valid` int(1) DEFAULT '0',
  `source` varchar(20) DEFAULT '',
  `lang` varchar(50) DEFAULT '',
  `idvalid` int(1) DEFAULT '0' COMMENT '实名认证状态',
  `reidinfo` varchar(100) DEFAULT '' COMMENT '实名信息  姓名|身份证|手机号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user_group;
CREATE TABLE `met_user_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO met_user_group VALUES('1','普通会员','1','cn');
INSERT INTO met_user_group VALUES('2','代理商','3','cn');
INSERT INTO met_user_group VALUES('4','Member','1','en');
INSERT INTO met_user_group VALUES('5','Agents','2','en');

DROP TABLE IF EXISTS met_user_group_pay;
CREATE TABLE `met_user_group_pay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT '0' COMMENT '会员组ID',
  `price` double(10,2) DEFAULT '0.00' COMMENT '购买价格',
  `recharge_price` double(10,2) DEFAULT '0.00' COMMENT '充值价格',
  `buyok` int(1) DEFAULT '0' COMMENT '付费会员',
  `rechargeok` int(50) DEFAULT '0' COMMENT '充值会员',
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user_list;
CREATE TABLE `met_user_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT '0',
  `paraid` int(11) DEFAULT '0',
  `info` text,
  `lang` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user_other;
CREATE TABLE `met_user_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `met_uid` int(11) DEFAULT '0',
  `openid` varchar(100) DEFAULT '',
  `unionid` varchar(100) DEFAULT '',
  `access_token` varchar(255) DEFAULT '',
  `expires_in` int(11) DEFAULT '0',
  `type` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`),
  KEY `met_uid` (`met_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


