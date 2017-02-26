#
# TABLE STRUCTURE FOR: stb_comments
#

DROP TABLE IF EXISTS stb_comments;

CREATE TABLE `stb_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `replytime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`topic_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO stb_comments (`id`, `topic_id`, `uid`, `content`, `replytime`) VALUES (1, 1, 1, '<img src=\"http://localhost/yccauto/uploads/image/201702/20170224125115_62424.png\" alt=\"\"><br />\n<br />\n能不能做成这种风格的UI呢', '1487911911');


#
# TABLE STRUCTURE FOR: stb_favorites
#

DROP TABLE IF EXISTS stb_favorites;

CREATE TABLE `stb_favorites` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `favorites` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: stb_links
#

DROP TABLE IF EXISTS stb_links;

CREATE TABLE `stb_links` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO stb_links (`id`, `name`, `url`, `logo`, `is_hidden`) VALUES (1, 'StartBBS', 'http://www.startbbs.com', '', 0);
INSERT INTO stb_links (`id`, `name`, `url`, `logo`, `is_hidden`) VALUES (2, '腾讯车联', 'http://tas.qq.com/', NULL, 0);
INSERT INTO stb_links (`id`, `name`, `url`, `logo`, `is_hidden`) VALUES (3, '阿里云OS', 'http://www.yunos.com/', NULL, 0);


#
# TABLE STRUCTURE FOR: stb_message
#

DROP TABLE IF EXISTS stb_message;

CREATE TABLE `stb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dialog_id` int(11) NOT NULL,
  `sender_uid` int(11) NOT NULL,
  `receiver_uid` int(11) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dialog_id` (`dialog_id`),
  KEY `sender_uid` (`sender_uid`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: stb_message_dialog
#

DROP TABLE IF EXISTS stb_message_dialog;

CREATE TABLE `stb_message_dialog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_uid` int(11) NOT NULL,
  `receiver_uid` int(11) NOT NULL,
  `last_content` text NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `sender_remove` tinyint(1) NOT NULL DEFAULT '0',
  `receiver_remove` tinyint(1) NOT NULL DEFAULT '0',
  `sender_read` tinyint(1) NOT NULL DEFAULT '1',
  `receiver_read` tinyint(1) NOT NULL DEFAULT '0',
  `messages` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`sender_uid`,`receiver_uid`),
  KEY `update_time` (`update_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: stb_nodes
#

DROP TABLE IF EXISTS stb_nodes;

CREATE TABLE `stb_nodes` (
  `node_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '0',
  `cname` varchar(30) DEFAULT NULL COMMENT '分类名称',
  `content` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `ico` varchar(128) NOT NULL DEFAULT 'uploads/ico/default.png',
  `master` varchar(100) NOT NULL,
  `permit` varchar(255) DEFAULT NULL,
  `listnum` mediumint(8) unsigned DEFAULT '0',
  `clevel` varchar(25) DEFAULT NULL,
  `cord` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`node_id`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (1, 0, '大众品牌', '', '大众', 'uploads/ico/default.png', 'yinan', '2', 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (2, 1, '捷达', '捷达', '捷达', 'uploads/ico/default.png', 'yinan', '2', 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (3, 1, '途观', '途观', '途观', 'uploads/ico/default.png', 'yinan', NULL, 1, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (4, 1, '迈腾', '迈腾', '迈腾', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (5, 0, '丰田品牌', '丰田', '丰田', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (6, 5, '雷凌', '雷凌', '雷凌', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (7, 0, '本田品牌', '本田', '本田', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (8, 0, '日产品牌', '日产', '日产', 'uploads/ico/default.png', 'yinan', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (9, 0, '福特品牌', '福特', '福特', 'uploads/ico/default.png', '', '2', 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (10, 9, '福克斯', '福克斯', '福克斯', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (11, 9, '蒙迪欧', '蒙迪欧', '蒙迪欧', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (12, 8, '逍客', '逍客', '逍客', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (13, 8, '奇骏', '奇骏', '奇骏', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (14, 8, '天籁', '天籁', '天籁', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (15, 8, '轩逸', '轩逸', '轩逸', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (16, 7, 'CRV', 'CRV', 'CRV', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (17, 7, '思域', '思域', '思域', 'uploads/ico/default.png', '', NULL, 0, NULL, NULL);
INSERT INTO stb_nodes (`node_id`, `pid`, `cname`, `content`, `keywords`, `ico`, `master`, `permit`, `listnum`, `clevel`, `cord`) VALUES (18, 1, '车型通用性功能', '车型通用性功能', '车型通用性功能', 'uploads/ico/default.png', '', NULL, 1, NULL, NULL);


#
# TABLE STRUCTURE FOR: stb_notifications
#

DROP TABLE IF EXISTS stb_notifications;

CREATE TABLE `stb_notifications` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `suid` int(11) DEFAULT NULL,
  `nuid` int(11) NOT NULL DEFAULT '0',
  `ntype` tinyint(1) DEFAULT NULL,
  `ntime` int(10) DEFAULT NULL,
  PRIMARY KEY (`nid`,`nuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: stb_page
#

DROP TABLE IF EXISTS stb_page;

CREATE TABLE `stb_page` (
  `pid` tinyint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `go_url` varchar(100) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `is_hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO stb_page (`pid`, `title`, `content`, `go_url`, `add_time`, `is_hidden`) VALUES (1, '众品牌车机拆装指导说明书', '众品牌车机拆装指导说明书', 'baidu.com', 1487851045, 0);


#
# TABLE STRUCTURE FOR: stb_settings
#

DROP TABLE IF EXISTS stb_settings;

CREATE TABLE `stb_settings` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`title`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (1, 'site_name', '车载 •  原车功能 • 设计', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (2, 'welcome_tip', '欢迎访问  原车功能微社区', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (3, 'short_intro', '新一代  车载 • 原车功能 设计 简洁社区', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (4, 'show_captcha', 'on', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (5, 'site_run', '0', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (6, 'site_stats', '统计代码																																																																																																																																																																																																																																																																																																																																																																																			', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (7, 'site_keywords', '汽车 •  车载  •  娱乐  •  智能', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (8, 'site_description', '汽车 auto 导航 , 新一代  车载 • 原车功能 设计 简洁社区', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (9, 'money_title', '银币', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (10, 'per_page_num', '20', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (11, 'is_rewrite', 'off', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (12, 'show_editor', 'on', 0);
INSERT INTO stb_settings (`id`, `title`, `value`, `type`) VALUES (13, 'comment_order', 'desc', 0);


#
# TABLE STRUCTURE FOR: stb_site_stats
#

DROP TABLE IF EXISTS stb_site_stats;

CREATE TABLE `stb_site_stats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(20) NOT NULL,
  `value` int(10) DEFAULT '0',
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (1, 'last_uid', 3, NULL);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (2, 'total_users', 3, NULL);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (3, 'today_topics', 2, 1487930470);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (4, 'yesterday_topics', 1, 1487911911);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (5, 'total_topics', 2, NULL);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (6, 'total_comments', 1, NULL);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (7, 'total_nodes', 0, NULL);
INSERT INTO stb_site_stats (`id`, `item`, `value`, `update_time`) VALUES (8, 'total_tags', 0, NULL);


#
# TABLE STRUCTURE FOR: stb_tags
#

DROP TABLE IF EXISTS stb_tags;

CREATE TABLE `stb_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `tag_title` varchar(30) NOT NULL,
  `topics` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_title` (`tag_title`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (1, '大众途观', 1);
INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (2, '螺丝刀', 1);
INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (3, '示意图', 1);
INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (4, '照片', 1);
INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (5, '黄色', 1);
INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (6, '大众', 1);
INSERT INTO stb_tags (`tag_id`, `tag_title`, `topics`) VALUES (7, '信息', 1);


#
# TABLE STRUCTURE FOR: stb_tags_relation
#

DROP TABLE IF EXISTS stb_tags_relation;

CREATE TABLE `stb_tags_relation` (
  `tag_id` int(10) NOT NULL DEFAULT '0',
  `topic_id` int(10) DEFAULT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `fid` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (1, 1);
INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (2, 1);
INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (3, 1);
INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (4, 1);
INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (5, 1);
INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (6, 2);
INSERT INTO stb_tags_relation (`tag_id`, `topic_id`) VALUES (7, 2);


#
# TABLE STRUCTURE FOR: stb_topics
#

DROP TABLE IF EXISTS stb_topics;

CREATE TABLE `stb_topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` smallint(5) NOT NULL DEFAULT '0',
  `uid` mediumint(8) NOT NULL DEFAULT '0',
  `ruid` mediumint(8) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `content` text,
  `addtime` int(10) DEFAULT NULL,
  `updatetime` int(10) DEFAULT NULL,
  `lastreply` int(10) DEFAULT NULL,
  `views` int(10) DEFAULT '0',
  `comments` smallint(8) DEFAULT '0',
  `favorites` int(10) unsigned DEFAULT '0',
  `closecomment` tinyint(1) DEFAULT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `ord` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`node_id`,`uid`),
  KEY `updatetime` (`updatetime`),
  KEY `ord` (`ord`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO stb_topics (`topic_id`, `node_id`, `uid`, `ruid`, `title`, `keywords`, `content`, `addtime`, `updatetime`, `lastreply`, `views`, `comments`, `favorites`, `closecomment`, `is_top`, `is_hidden`, `ord`) VALUES (1, 3, 1, 1, '大众途观中控拆装指导说明', '大众途观,螺丝刀,示意图,照片,黄色', '用电动扭力可调螺丝刀拆装螺丝：<br />\r\n<br />\r\n先示意一下拆解部位和着力点，这只是示意图，实际拆解时，因为太专注忘记拍照片了，装好后再如实拆一遍又太可惜，所以请见谅：<br />\r\n如图拆机头的关键其实是拆卡片架，这个架的受力点是先是从中间将撬板用力塞进去（白色撬板），这时一定要用大力塞，卡片架的质量弹性很好，会变形容下撬板的，接着如图黄色撬板由卡片架的如图示位置插入以便将此处的卡扣顶开，接着向外用力，听到卡扣脱开的声音后可停止撬板动作，但要保持住，以免卡扣重新扣上。<br />\r\n<br />\r\n<br />\r\n接着如图撬卡片盒的左上角，部位、受力点及操作步骤同上，然后用黄色的撬板在听到卡扣脱开后用力一撬，卡片架随之就撬开了。', 1487851477, 1487911911, 1487911911, 7, 1, 0, NULL, 0, 0, 1487911911);
INSERT INTO stb_topics (`topic_id`, `node_id`, `uid`, `ruid`, `title`, `keywords`, `content`, `addtime`, `updatetime`, `lastreply`, `views`, `comments`, `favorites`, `closecomment`, `is_top`, `is_hidden`, `ord`) VALUES (2, 18, 1, NULL, '大众非MQD原车信息-界面UI 颜色刺眼的问题', '大众,信息', '优化前：<br />\r\n<br />\r\n <img src=\"http://localhost/yccauto/uploads/image/201702/20170224180058_87249.jpg\" alt=\"\"><br />\r\n<br />\r\n优化后：<br />\r\n <img src=\"http://localhost/yccauto/uploads/image/201702/20170224175507_87625.jpg\" alt=\"\"><br />\r\n<br />\r\n还有意见的主主们，来吐曹吧', 1487930470, 1487930520, 1487930470, 9, 0, 0, NULL, 0, 0, 1487930470);


