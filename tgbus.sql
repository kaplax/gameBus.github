/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tgbus

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-02-12 21:56:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dwtittle
-- ----------------------------
DROP TABLE IF EXISTS `dwtittle`;
CREATE TABLE `dwtittle` (
  `infoTittle` varchar(255) DEFAULT NULL,
  `infoTittle_con` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dwtittle
-- ----------------------------
INSERT INTO `dwtittle` VALUES ('过年玩啥好？春节向的欢乐游戏大推荐', '[《神之战》新demo][宝可梦虚拟银行1月开启]');
INSERT INTO `dwtittle` VALUES ('《复仇者联盟》新作！SE与漫威将长期合作', '[《铁拳7》中文版6约1日发售][《掠食》5月5日发售]');
INSERT INTO `dwtittle` VALUES ('电玩巴士年度专题 2016年带给我们的7大情绪', null);

-- ----------------------------
-- Table structure for gamesale
-- ----------------------------
DROP TABLE IF EXISTS `gamesale`;
CREATE TABLE `gamesale` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL,
  `gtype` varchar(255) NOT NULL,
  `gplatform` varchar(255) NOT NULL,
  `date` varchar(5) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gamesale
-- ----------------------------
INSERT INTO `gamesale` VALUES ('1', '质量效应 仙女座', 'RPG', 'MUL', '03-21', 'dianwan');
INSERT INTO `gamesale` VALUES ('2', '地平线 零点黎明', 'ARPG', 'PS4', '02-28', 'dianwan');
INSERT INTO `gamesale` VALUES ('3', '荣耀战魂', 'ARPG', 'MUL', '02-14', 'dianwan');
INSERT INTO `gamesale` VALUES ('4', '数码宝贝世界 新秩序', 'RPG', 'PS4', '02-09', 'dianwan');
INSERT INTO `gamesale` VALUES ('5', '生化危机7', 'FPS', 'MUL', '01-24', 'dianwan');
INSERT INTO `gamesale` VALUES ('6', '火影:博人之路', 'FTG', 'MUL', '01-24', 'dianwan');
INSERT INTO `gamesale` VALUES ('7', '沧澜革命之女武神', 'ARPG', 'MUL', '01-19', 'dianwan');
INSERT INTO `gamesale` VALUES ('8', '重力异想世界2', 'ACT', 'PS4', '01-18', 'dianwan');
INSERT INTO `gamesale` VALUES ('9', '兽人必须死', 'TOBA', 'img/ling.jpg', '11-01', 'wangyou');
INSERT INTO `gamesale` VALUES ('10', 'HEX', 'TCG', 'img/ling.jpg', '11-23', 'wangyou');
INSERT INTO `gamesale` VALUES ('11', '九重天', 'MMO', 'img/ling.jpg', '12-16', 'wangyou');
INSERT INTO `gamesale` VALUES ('12', '诸神世纪', 'MMO', 'img/ling.jpg', '12-22', 'wangyou');
INSERT INTO `gamesale` VALUES ('13', '天衍录', 'MMO', 'img/ling.jpg', '11-21', 'wangyou');
INSERT INTO `gamesale` VALUES ('14', '新流星蝴蝶剑', 'MMO', 'img/ling.jpg', '12-01', 'wangyou');
INSERT INTO `gamesale` VALUES ('15', '神鬼传奇', 'MMO', 'img/ling.jpg', '12-05', 'wangyou');
INSERT INTO `gamesale` VALUES ('16', '剑灵', 'MMO', 'img/ling.jpg', '11-30', 'wangyou');

-- ----------------------------
-- Table structure for hotgame
-- ----------------------------
DROP TABLE IF EXISTS `hotgame`;
CREATE TABLE `hotgame` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hgName` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotgame
-- ----------------------------
INSERT INTO `hotgame` VALUES ('1', '生化危机7', '我可能完了假的生化危机', 'img/12.jpg');
INSERT INTO `hotgame` VALUES ('2', '如龙6 命之诗', '传奇背锅侠的最终章', 'img/11.jpg');
INSERT INTO `hotgame` VALUES ('3', '最后的守护者', '不枉老子苦等七年', 'img/10.jpg');
INSERT INTO `hotgame` VALUES ('4', '最终幻想15', '王子报仇十年不晚', 'img/9.jpg');
INSERT INTO `hotgame` VALUES ('5', '精灵宝可梦 太阳/月亮', '终于有官方中文版啦', 'img/8.gif');
INSERT INTO `hotgame` VALUES ('6', '看门狗2', '来旧金山黑个痛快', 'img/1.jpg');
INSERT INTO `hotgame` VALUES ('7', '耻辱2', '吾家有女初长成', 'img/2.jpg');

-- ----------------------------
-- Table structure for inforcontent
-- ----------------------------
DROP TABLE IF EXISTS `inforcontent`;
CREATE TABLE `inforcontent` (
  `infoId` int(11) NOT NULL AUTO_INCREMENT,
  `infoContent` varchar(255) NOT NULL,
  `infoType` varchar(255) NOT NULL,
  `infoName` varchar(255) NOT NULL,
  PRIMARY KEY (`infoId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inforcontent
-- ----------------------------
INSERT INTO `inforcontent` VALUES ('1', ' 鼻血喷射 《突击仙子》特典插画完成版大公开', 'PSV', 'dianwan');
INSERT INTO `inforcontent` VALUES ('2', ' 《生化危机7》目标400万 《街头霸王5》拖后腿', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('3', ' 君岛达己:3DS还有很长的路 不会被Switch取代', '3DS', 'dianwan');
INSERT INTO `inforcontent` VALUES ('4', ' 任天堂公开2016-2017财年前三季度财报！', 'NS', 'dianwan');
INSERT INTO `inforcontent` VALUES ('5', '粗心酿大祸！任天堂Switch开发机画面遭曝光', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('6', ' 来看看 PSVR版《生化危机7》画面到底有多糊', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('7', ' 《生化危机4》HD计划民间版 画面很棒很还原', 'PC', 'dianwan');
INSERT INTO `inforcontent` VALUES ('8', ' 《最终幻想15》：PC版或拥有任务和Mod制作功能', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('9', ' 《生化危机7》全成就心得 全成就达成攻略', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('10', ' 《最终幻想》新作确认开发 日后朝多方向发展', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('11', ' 《最终幻想12：黄道时代》7月发售 简中同步！', 'PC', 'dianwan');
INSERT INTO `inforcontent` VALUES ('12', ' 《极品飞车》最新作明年春季发售 史上最好画面', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('13', ' 《地平线：零点黎明》制作完成 女主配音曝光', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('14', ' 画质升级 Pro版《辐射4》将支持1440P分辨率', 'PS4', 'dianwan');
INSERT INTO `inforcontent` VALUES ('15', ' 《蜡烛人》正式登陆海外 英语配音字幕支持', 'XB1', 'dianwan');
INSERT INTO `inforcontent` VALUES ('16', ' 让英国陷入恐惧！ 《生化危机7》登顶英国销量榜', 'PC', 'dianwan');
INSERT INTO `inforcontent` VALUES ('17', ' DNF数字解密进行中 第一周密码数字大揭秘', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('18', ' 《神武2》手游活动 与许嵩合照赢演唱会门票', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('19', ' 暗黑3PTR上线2.5补丁 军械库系统与太古装备', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('20', ' 国外大神自制《英雄联盟》皮肤 死兆星泽拉斯', '趣闻', 'wangyou');
INSERT INTO `inforcontent` VALUES ('21', ' 《怪物猎人OL》开启水瓶黄金弩、星盘占卜活动', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('22', ' 《守望先锋》蓝帖PTR翻译 英雄堡垒有关改动', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('23', ' 英雄联盟设计师：小丑蛮王将重做 索尔即将改动', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('24', ' 相知莫问！《剑网3》萝莉贺岁卡之长歌弟子', '热点', 'wangyou');
INSERT INTO `inforcontent` VALUES ('25', ' 站街吸引无数眼球 DNF外形出色的武器盘点', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('26', ' 剑网3苍云PVE各流派输出宏 一键轻松输出', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('27', ' 流放之路2.5秘术家邪恶BD旋涡正火一发秒', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('28', ' 我的世界照进现实 点击右键亮起桌边红石灯', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('29', ' 流放之路爷爷图腾DPS提高 先祖卫士长攻略', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('30', ' 《英雄联盟》欧洲联赛宣布禁止姐妹战队', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('31', ' 《冒险岛2》雷系符文剑士 宝石副本开荒', '专区', 'wangyou');
INSERT INTO `inforcontent` VALUES ('32', ' 魔兽7.2第六外观条件 开花弓开花矛即将上线', '专区', 'wangyou');

-- ----------------------------
-- Table structure for registeemail
-- ----------------------------
DROP TABLE IF EXISTS `registeemail`;
CREATE TABLE `registeemail` (
  `eid` int(225) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registeemail
-- ----------------------------
INSERT INTO `registeemail` VALUES ('1', '302721132@qq.com');

-- ----------------------------
-- Table structure for registephone
-- ----------------------------
DROP TABLE IF EXISTS `registephone`;
CREATE TABLE `registephone` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `userphone` varchar(255) NOT NULL,
  `regTime` bigint(225) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registephone
-- ----------------------------
INSERT INTO `registephone` VALUES ('1', 'xiaoming', '123456', '13572070257', '12312312312');
INSERT INTO `registephone` VALUES ('3', 'xiaohong', '321321', '13335436966', '1486900460000');
INSERT INTO `registephone` VALUES ('4', 'xiaoli', '123123', '13335436965', '1486900883000');
INSERT INTO `registephone` VALUES ('6', 'xiaom', '123123', '13335436962', '1486901134000');
INSERT INTO `registephone` VALUES ('7', 'xiaomm', '123123', '13335436933', '1486902890000');
INSERT INTO `registephone` VALUES ('8', 'asdasd', 'asdasd', '13333333333', '1486904988000');
INSERT INTO `registephone` VALUES ('9', 'asdqwe', 'asdasd', '13333333332', '1486905084000');
INSERT INTO `registephone` VALUES ('10', 'zxcasd', 'asdasd', '13333333331', '1486906984000');

-- ----------------------------
-- Table structure for scorelist
-- ----------------------------
DROP TABLE IF EXISTS `scorelist`;
CREATE TABLE `scorelist` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `score` float(255,1) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scorelist
-- ----------------------------
INSERT INTO `scorelist` VALUES ('1', 'img/mediaImg-1.jpg', '生化危机7', '我可能玩到了假的生化危机', '7.5');
INSERT INTO `scorelist` VALUES ('2', 'img/mediaImg-2.jpg', '重力异想世界2', '重力公主的完美谢幕', '9.0');
INSERT INTO `scorelist` VALUES ('3', 'img/mediaImg-3.jpg', '返校', '人性的恶才是最深的恐怖', '8.0');
INSERT INTO `scorelist` VALUES ('4', 'img/mediaImg-4.jpg', '圣女之歌零', '妹控的世界 萌即是正义', '7.5');
INSERT INTO `scorelist` VALUES ('5', 'img/mediaImg-5.jpg', '究极雷电', '老牌STG的次世代冲击', '7.5');

-- ----------------------------
-- Table structure for tg-information
-- ----------------------------
DROP TABLE IF EXISTS `tg-information`;
CREATE TABLE `tg-information` (
  `inf-id` int(11) NOT NULL AUTO_INCREMENT,
  `inf-name` varchar(255) NOT NULL,
  PRIMARY KEY (`inf-id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tg-information
-- ----------------------------
INSERT INTO `tg-information` VALUES ('1', 'dianwan');
INSERT INTO `tg-information` VALUES ('2', 'wangyou');
INSERT INTO `tg-information` VALUES ('3', 'shouyou');
