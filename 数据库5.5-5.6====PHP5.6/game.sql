/*
Navicat MySQL Data Transfer

Source Server         : 寻仙+洪荒+江湖
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2024-07-04 18:41:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addim
-- ----------------------------
DROP TABLE IF EXISTS `addim`;
CREATE TABLE `addim` (
  `imuid` int(11) NOT NULL DEFAULT '0',
  `sid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `msg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addim
-- ----------------------------

-- ----------------------------
-- Table structure for boss
-- ----------------------------
DROP TABLE IF EXISTS `boss`;
CREATE TABLE `boss` (
  `bossid` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `bossname` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `bossinfo` varchar(255) NOT NULL DEFAULT '',
  `bosslv` varchar(255) NOT NULL DEFAULT '',
  `bosshp` varchar(255) NOT NULL,
  `bossmaxhp` varchar(255) NOT NULL DEFAULT '0',
  `bossgj` varchar(255) NOT NULL,
  `bossfy` varchar(255) NOT NULL,
  `bossbj` varchar(255) NOT NULL,
  `bossxx` varchar(255) NOT NULL,
  `bosszb` varchar(255) NOT NULL,
  `dljv` varchar(255) NOT NULL DEFAULT '1',
  `bossdj` varchar(255) NOT NULL,
  `djjv` varchar(255) NOT NULL DEFAULT '1',
  `bs` int(8) NOT NULL DEFAULT '0',
  `bosstime` datetime NOT NULL,
  `sid` varchar(255) NOT NULL DEFAULT '',
  `bossyp` varchar(255) NOT NULL DEFAULT '6',
  `ypjv` varchar(255) NOT NULL DEFAULT '1',
  `bossexp` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bossid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of boss
-- ----------------------------
INSERT INTO `boss` VALUES ('1', 'BOSS·魔兽', '奶妈的宠物,一般人不敢靠近，生性且凶猛，猛如新鲜男子！', '30', '25295', '25300', '1265', '470', '20', '10', '11,53,54,55,56,57,58,59', '10', '1,20', '10', '0', '2022-03-22 19:02:50', '', '9', '0', '0');
INSERT INTO `boss` VALUES ('2', 'BOSS·地狱之眼', '生活在洞穴中的BOSS，力量强悍，暴击吓人。', '60', '72200', '72200', '2623', '980', '60', '20', '4,7', '10', '1,22', '10', '0', '2022-03-22 14:01:20', '', '6', '1', '0');
INSERT INTO `boss` VALUES ('3', 'BOSS·千灵六耳', '久炼千灵缩地精称之为六耳猕猴，武功超群', '70', '83506', '94900', '3658', '1213', '30', '15', '71,72,73,74,75,76,77', '10', '1,22', '10', '0', '2022-03-22 16:20:48', '', '9', '0', '0');
INSERT INTO `boss` VALUES ('11', 'BOSS·苍穹古兽', '村长的宠物，村长私底下培养的怪物，反抗者都已经领盒饭去了，村长的宝物的守护者。', '45', '-99948340', '50600', '1720', '1562', '40', '10', '10,53,54,55,56,57,58,59', '10', '1,21', '10', '0', '2022-03-22 19:04:10', '', '9', '0', '0');

-- ----------------------------
-- Table structure for bossinfo
-- ----------------------------
DROP TABLE IF EXISTS `bossinfo`;
CREATE TABLE `bossinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bossid` varchar(11) NOT NULL DEFAULT '',
  `bossname` varchar(11) NOT NULL DEFAULT '',
  `uname` varchar(11) NOT NULL DEFAULT '',
  `msg` varchar(128) NOT NULL DEFAULT '',
  `shijian` varchar(64) NOT NULL DEFAULT '',
  `umsg` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13713 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='打boss时候的聊天';

-- ----------------------------
-- Records of bossinfo
-- ----------------------------

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club` (
  `clubname` varchar(255) NOT NULL,
  `clubinfo` varchar(255) NOT NULL,
  `clublv` varchar(255) NOT NULL,
  `clubid` int(11) NOT NULL AUTO_INCREMENT,
  `clubno1` int(11) NOT NULL,
  `clubexp` int(11) NOT NULL,
  `clubyxb` int(11) NOT NULL,
  `clubczb` int(11) NOT NULL,
  `zdsp` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clubid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club
-- ----------------------------
INSERT INTO `club` VALUES ('桃花峪', '楼外青山楼外楼', '1', '1', '422', '0', '0', '0', '1');
INSERT INTO `club` VALUES ('江湖', '江湖大盗，人才辈出！', '1', '3', '426', '0', '0', '0', '1');
INSERT INTO `club` VALUES ('玄女峰', '一路西行练本领，如今大成，恰逢女峰山下女儿城，拦山我做活神仙。', '1', '4', '457', '0', '0', '0', '0');
INSERT INTO `club` VALUES ('关宁', '', '1', '5', '479', '0', '0', '0', '0');
INSERT INTO `club` VALUES ('天门', '', '1', '6', '481', '0', '0', '0', '0');
INSERT INTO `club` VALUES ('花果山', '害害！我是你猴爷爷啊！', '1', '9', '517', '0', '0', '0', '0');
INSERT INTO `club` VALUES ('珏皇谷', '无谓生死，执着使命，一致对外，此之谓皇者！', '1', '10', '520', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for clubplayer
-- ----------------------------
DROP TABLE IF EXISTS `clubplayer`;
CREATE TABLE `clubplayer` (
  `clubid` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `uclv` int(11) NOT NULL,
  `bpsp` varchar(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clubplayer
-- ----------------------------
INSERT INTO `clubplayer` VALUES ('1', 'c52e3d1f3f84993510358e1c5d149dcb', '430', '6', '0', '1');
INSERT INTO `clubplayer` VALUES ('0', '', '0', '0', '0', '2');
INSERT INTO `clubplayer` VALUES ('3', 'a2377a650da6bb0ad4fe0514f971f858', '426', '1', '0', '3');
INSERT INTO `clubplayer` VALUES ('1', 'ad1d34062743fe68d93897d75d8c37d9', '425', '6', '0', '4');
INSERT INTO `clubplayer` VALUES ('1', '771086b453fb6d53d76bf46880cf4b41', '422', '1', '0', '5');
INSERT INTO `clubplayer` VALUES ('1', '8185f290abecda314a9e53304c84e057', '435', '6', '0', '6');
INSERT INTO `clubplayer` VALUES ('1', '63ec3c2edce55c5d00e975df61b7a9f1', '437', '6', '0', '7');
INSERT INTO `clubplayer` VALUES ('1', 'b3897bd53e13f8c92b92933d4e9b7167', '440', '6', '0', '8');
INSERT INTO `clubplayer` VALUES ('3', '08b46397b9704ed9b6230e3864dfde52', '442', '2', '0', '9');
INSERT INTO `clubplayer` VALUES ('1', '1d75409bd985acf3644f25f2a87b6552', '450', '6', '0', '10');
INSERT INTO `clubplayer` VALUES ('1', 'a0f5700982d69976ce54c08cb1c2bbb0', '448', '6', '0', '11');
INSERT INTO `clubplayer` VALUES ('1', '7f47f208d5b697de3791115ff8aecc7f', '455', '6', '0', '12');
INSERT INTO `clubplayer` VALUES ('1', '70619bdc2bdd92dcc83489657743848d', '427', '6', '0', '13');
INSERT INTO `clubplayer` VALUES ('1', '4e8fe201aac55b7ddf0a721fe2dde89d', '458', '6', '0', '14');
INSERT INTO `clubplayer` VALUES ('4', 'e8d7c6fb768be55653f7cb2f7164bd1d', '457', '1', '0', '15');
INSERT INTO `clubplayer` VALUES ('4', '39f73d46e13bed758f42d5695f3f43f0', '459', '6', '0', '16');
INSERT INTO `clubplayer` VALUES ('4', '38171773e6842eb588ccc4ec4a7f48a8', '465', '6', '0', '17');
INSERT INTO `clubplayer` VALUES ('4', 'b8a188334584e024060c33c6b3a9bbc5', '468', '6', '0', '19');
INSERT INTO `clubplayer` VALUES ('4', '0b82a8fd07dfafc237a5dcc15b332ce8', '476', '6', '0', '20');
INSERT INTO `clubplayer` VALUES ('5', 'a1cf65d31ba46d90e465db5279329470', '479', '1', '0', '21');
INSERT INTO `clubplayer` VALUES ('6', 'f52f24af276734367a122e13b0af67d2', '481', '1', '0', '22');
INSERT INTO `clubplayer` VALUES ('5', 'b6d9f0bb1852a15b241410b3b07a21f8', '483', '6', '0', '23');
INSERT INTO `clubplayer` VALUES ('6', '2584819298592ea557f2c1d6ae08bbfe', '484', '6', '0', '24');
INSERT INTO `clubplayer` VALUES ('3', '7660cbcbcfec945cbdac430361da363f', '505', '6', '0', '25');
INSERT INTO `clubplayer` VALUES ('1', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '431', '6', '0', '26');
INSERT INTO `clubplayer` VALUES ('1', '0d471de3efe5dcf749e6fa60fde8ae76', '515', '2', '0', '27');
INSERT INTO `clubplayer` VALUES ('3', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '2', '0', '28');
INSERT INTO `clubplayer` VALUES ('3', '111111', '441', '6', '0', '31');
INSERT INTO `clubplayer` VALUES ('3', '043c4eac8ffaa70af1ccb3e0eef0a364', '467', '6', '0', '32');
INSERT INTO `clubplayer` VALUES ('3', '087efeb819f49c1789df1f599ec15388', '419', '6', '0', '36');
INSERT INTO `clubplayer` VALUES ('9', 'acea4cf5bfd750233ebc90c1361cd568', '517', '1', '0', '40');
INSERT INTO `clubplayer` VALUES ('9', 'd9bc42eda8a25d32618518f4ae68b92a', '518', '2', '0', '45');
INSERT INTO `clubplayer` VALUES ('10', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '1', '0', '46');
INSERT INTO `clubplayer` VALUES ('10', '1266218ff94820df0b66c6ef60d0541f', '525', '4', '0', '47');
INSERT INTO `clubplayer` VALUES ('10', '454ac9cbdb63df840643655755078a94', '521', '2', '0', '49');
INSERT INTO `clubplayer` VALUES ('9', '0e975728648b4af97a3eb0dfaf7e303d', '522', '3', '0', '50');
INSERT INTO `clubplayer` VALUES ('3', 'b624121f7f5c40f8c6ac507f6cab45f5', '438', '6', '0', '51');
INSERT INTO `clubplayer` VALUES ('10', '1ac81512a158e2622c17a49ba9b7eaf8', '538', '6', '0', '52');
INSERT INTO `clubplayer` VALUES ('9', 'be7f41af7f2b397af5129fe5dec95e1a', '539', '3', '0', '54');
INSERT INTO `clubplayer` VALUES ('11', 'e17309aac194beac068b4383e5575918', '541', '1', '0', '55');

-- ----------------------------
-- Table structure for clubsp
-- ----------------------------
DROP TABLE IF EXISTS `clubsp`;
CREATE TABLE `clubsp` (
  `clubid` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `uclv` int(11) NOT NULL,
  `bpsp` varchar(11) NOT NULL DEFAULT '0' COMMENT '帮派审批',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='帮派审批';

-- ----------------------------
-- Records of clubsp
-- ----------------------------

-- ----------------------------
-- Table structure for copy_of_addim
-- ----------------------------
DROP TABLE IF EXISTS `copy_of_addim`;
CREATE TABLE `copy_of_addim` (
  `imuid` int(11) NOT NULL,
  `sid` text NOT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of copy_of_addim
-- ----------------------------
INSERT INTO `copy_of_addim` VALUES ('422', '111111', '1');
INSERT INTO `copy_of_addim` VALUES ('0', '771086b453fb6d53d76bf46880cf4b41', '2');

-- ----------------------------
-- Table structure for daoju
-- ----------------------------
DROP TABLE IF EXISTS `daoju`;
CREATE TABLE `daoju` (
  `djname` varchar(255) NOT NULL,
  `djzl` varchar(255) NOT NULL,
  `djinfo` varchar(255) NOT NULL,
  `djid` int(11) NOT NULL AUTO_INCREMENT,
  `djyxb` int(11) NOT NULL,
  `djjg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`djid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daoju
-- ----------------------------
INSERT INTO `daoju` VALUES ('强化石', '2', '强化装备用的道具', '1', '10', '0');
INSERT INTO `daoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '6', '15', '0');
INSERT INTO `daoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '7', '30', '0');
INSERT INTO `daoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '8', '10', '0');
INSERT INTO `daoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '9', '40', '0');
INSERT INTO `daoju` VALUES ('符箓残页-中级灵', '10', '符箓残页-中级灵', '10', '80', '0');
INSERT INTO `daoju` VALUES ('初级魔灵', '11', '初级魔灵', '11', '90', '0');
INSERT INTO `daoju` VALUES ('[神器]妖王剑碎片', '12', '[神器]妖王剑碎片', '12', '100', '0');
INSERT INTO `daoju` VALUES ('丝巾', '13', '贴身装备', '13', '100', '0');
INSERT INTO `daoju` VALUES ('残墨', '14', '可换取画册', '14', '100', '0');
INSERT INTO `daoju` VALUES ('盾土残章', '15', '可获得盾土术', '15', '100', '0');
INSERT INTO `daoju` VALUES ('筑基突破丹', '20', '突破筑基期时候使用的关键内丹', '20', '50000', '0');
INSERT INTO `daoju` VALUES ('金丹突破丹', '21', '突破金丹期时候使用的关键内丹', '21', '150000', '0');
INSERT INTO `daoju` VALUES ('元婴突破丹', '22', '突破元婴期时候使用的关键内丹', '22', '200000', '0');
INSERT INTO `daoju` VALUES ('化神突破丹', '23', '突破化神期时候使用的关键内丹', '23', '300000', '0');
INSERT INTO `daoju` VALUES ('炼虚突破丹', '24', '突破炼虚期时候使用的关键内丹', '24', '500000', '0');
INSERT INTO `daoju` VALUES ('合体突破丹', '25', '突破合体期时候使用的关键内丹', '25', '800000', '0');
INSERT INTO `daoju` VALUES ('大乘突破丹', '26', '突破大乘期时候使用的关键内丹', '26', '1000000', '0');

-- ----------------------------
-- Table structure for dlip
-- ----------------------------
DROP TABLE IF EXISTS `dlip`;
CREATE TABLE `dlip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(255) NOT NULL DEFAULT '',
  `dlip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登陆ip';

-- ----------------------------
-- Records of dlip
-- ----------------------------

-- ----------------------------
-- Table structure for duihuan
-- ----------------------------
DROP TABLE IF EXISTS `duihuan`;
CREATE TABLE `duihuan` (
  `dhm` varchar(255) NOT NULL,
  `dhzb` varchar(255) DEFAULT NULL,
  `dhdj` varchar(255) DEFAULT NULL,
  `dhyp` varchar(255) DEFAULT NULL,
  `dhyxb` int(11) NOT NULL,
  `dhczb` int(11) NOT NULL,
  `dhname` varchar(255) DEFAULT NULL,
  `dhexp` int(11) NOT NULL,
  `dhid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dhid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duihuan
-- ----------------------------
INSERT INTO `duihuan` VALUES ('vip666888', '33,53,54,55,56,57,58,59', '1|1000', '9|1000', '0', '88888888', '新手升级包', '88888888', '2');

-- ----------------------------
-- Table structure for exp
-- ----------------------------
DROP TABLE IF EXISTS `exp`;
CREATE TABLE `exp` (
  `ulv` text NOT NULL,
  `uexp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of exp
-- ----------------------------
INSERT INTO `exp` VALUES ('', '');
INSERT INTO `exp` VALUES ('', '');

-- ----------------------------
-- Table structure for fangshi_dj
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_dj`;
CREATE TABLE `fangshi_dj` (
  `djid` int(11) NOT NULL,
  `djcount` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pay` int(6) NOT NULL DEFAULT '0',
  `payid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `djname` varchar(255) NOT NULL,
  `djinfo` varchar(255) NOT NULL DEFAULT '',
  `djzl` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_dj
-- ----------------------------

-- ----------------------------
-- Table structure for fangshi_sd
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_sd`;
CREATE TABLE `fangshi_sd` (
  `zbnowid` int(11) NOT NULL,
  `zbname` varchar(255) NOT NULL,
  `qianghua` int(11) NOT NULL,
  `pay` int(9) NOT NULL DEFAULT '0',
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` int(11) NOT NULL,
  `zbfy` int(11) NOT NULL,
  `zbbj` int(11) NOT NULL,
  `zbxx` int(11) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `zbhp` int(11) NOT NULL,
  `zblv` int(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_sd
-- ----------------------------
INSERT INTO `fangshi_sd` VALUES ('75692', '百炼青刚剑', '0', '888888', '28', '百炼青刚剑', '5', '0', '0', '2', '27', '442', '8', '0', '0', null);

-- ----------------------------
-- Table structure for fangshi_zb
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_zb`;
CREATE TABLE `fangshi_zb` (
  `zbnowid` int(11) NOT NULL,
  `zbname` varchar(255) NOT NULL,
  `qianghua` int(11) NOT NULL,
  `pay` int(9) NOT NULL DEFAULT '0',
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` int(11) NOT NULL,
  `zbfy` int(11) NOT NULL,
  `zbbj` int(11) NOT NULL,
  `zbxx` int(11) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `zbhp` int(11) NOT NULL,
  `zblv` int(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `zbys` varchar(255) NOT NULL DEFAULT '#9EF18D',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_zb
-- ----------------------------
INSERT INTO `fangshi_zb` VALUES ('76629', '新手木剑', '0', '1000', '107', '新手使用的木剑', '1', '0', '0', '1', '23', '520', '0', '0', '0', null, '#509037');
INSERT INTO `fangshi_zb` VALUES ('76453', '暴雨梨花钉', '4', '400000', '109', '暗器中的一门大杀器，来自测试礼包码', '69', '10', '5', '5', '53', '520', '0', '25', '10', null, '#217f6a');
INSERT INTO `fangshi_zb` VALUES ('76608', '暴雨噬魂链', '0', '7000000', '116', '内测码获得。', '5', '15', '1', '1', '57', '525', '1266218', '5', '10', null, '#217f6a');
INSERT INTO `fangshi_zb` VALUES ('76631', '灵·七十二', '0', '600000', '117', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '525', '1266218', '50', '60', null, '#00bebf');
INSERT INTO `fangshi_zb` VALUES ('76628', '灵·黄金甲', '0', '400000', '121', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '520', '0', '50', '60', null, '#00bebf');
INSERT INTO `fangshi_zb` VALUES ('76735', '暴雨噬魂链', '0', '507662', '124', '内测码获得。', '5', '15', '1', '1', '57', '529', '214', '5', '10', null, '#217f6a');
INSERT INTO `fangshi_zb` VALUES ('76773', '黑魔匕首', '0', '502322', '127', '黑魔匕首', '14', '0', '3', '4', '33', '533', '0', '0', '6', null, '#F9F51A');
INSERT INTO `fangshi_zb` VALUES ('76822', '灵·步云履', '0', '600000', '147', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '0', '50', '60', null, '#00bebf');
INSERT INTO `fangshi_zb` VALUES ('76821', '五丁开山', '0', '1', '177', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '0', '0', '40', null, '#BC0DEF');

-- ----------------------------
-- Table structure for fb
-- ----------------------------
DROP TABLE IF EXISTS `fb`;
CREATE TABLE `fb` (
  `fbname` varchar(255) NOT NULL,
  `fbid` int(11) NOT NULL,
  `fbinfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fb
-- ----------------------------
INSERT INTO `fb` VALUES ('老王村', '11', '副本');

-- ----------------------------
-- Table structure for fbmid
-- ----------------------------
DROP TABLE IF EXISTS `fbmid`;
CREATE TABLE `fbmid` (
  `fmname` varchar(255) NOT NULL,
  `fmid` int(11) NOT NULL,
  `fminfo` varchar(255) NOT NULL,
  `fmnpc` varchar(255) NOT NULL,
  `fmgw` varchar(255) NOT NULL,
  PRIMARY KEY (`fmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fbmid
-- ----------------------------
INSERT INTO `fbmid` VALUES ('程序狗', '255', '尿床狗', '11', '11');

-- ----------------------------
-- Table structure for game1
-- ----------------------------
DROP TABLE IF EXISTS `game1`;
CREATE TABLE `game1` (
  `uid` int(6) NOT NULL AUTO_INCREMENT COMMENT '游戏ID',
  `sid` text CHARACTER SET utf8 NOT NULL COMMENT '数据库ID',
  `token` text CHARACTER SET utf8 NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '名称',
  `shenfen` varchar(255) NOT NULL DEFAULT '1',
  `ulv` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '初等级',
  `uyxb` int(11) NOT NULL DEFAULT '2000' COMMENT '初始钱',
  `uczb` int(11) NOT NULL DEFAULT '100' COMMENT '高级钱',
  `uexp` int(11) NOT NULL DEFAULT '0' COMMENT '经验',
  `vip` int(11) NOT NULL DEFAULT '0' COMMENT 'VIP等级',
  `uhp` int(11) NOT NULL DEFAULT '35' COMMENT '血量',
  `umaxhp` int(11) NOT NULL DEFAULT '35' COMMENT '最高血量',
  `ugj` int(11) NOT NULL DEFAULT '12' COMMENT '攻击力',
  `ufy` int(11) NOT NULL DEFAULT '5' COMMENT '防御',
  `usex` int(11) NOT NULL DEFAULT '1' COMMENT '男女',
  `endtime` datetime NOT NULL,
  `nowmid` int(11) NOT NULL DEFAULT '225',
  `uwx` int(11) NOT NULL DEFAULT '0',
  `nowguaiwu` int(11) NOT NULL,
  `tool1` int(11) NOT NULL,
  `tool2` int(11) NOT NULL,
  `tool3` int(11) NOT NULL,
  `tool4` int(11) NOT NULL,
  `tool5` int(11) NOT NULL,
  `tool6` int(11) NOT NULL,
  `tool7` int(11) NOT NULL DEFAULT '0',
  `ubj` int(11) NOT NULL DEFAULT '0',
  `uxx` int(11) NOT NULL DEFAULT '0',
  `sfzx` int(11) NOT NULL DEFAULT '0',
  `qandaotime` datetime DEFAULT NULL,
  `xiuliantime` datetime DEFAULT '0000-00-00 00:00:00',
  `sfxl` int(11) NOT NULL DEFAULT '0',
  `yp1` int(11) NOT NULL,
  `yp2` int(11) NOT NULL,
  `yp3` int(11) NOT NULL,
  `cw` int(11) NOT NULL,
  `jn1` int(11) NOT NULL,
  `jn2` int(11) NOT NULL,
  `jn3` int(11) NOT NULL,
  `ispvp` int(11) NOT NULL DEFAULT '0',
  `nn` int(11) NOT NULL DEFAULT '0',
  `dhvip` varchar(255) NOT NULL DEFAULT '0',
  `dhvip1` varchar(255) NOT NULL DEFAULT '0',
  `tf` varchar(255) NOT NULL DEFAULT '0',
  `tfgj` varchar(255) NOT NULL DEFAULT '0',
  `tfxy` varchar(255) NOT NULL DEFAULT '0',
  `tfsb` varchar(255) NOT NULL DEFAULT '0',
  `tfxx` varchar(255) NOT NULL DEFAULT '0',
  `tffy` varchar(255) NOT NULL DEFAULT '0',
  `tfhp` varchar(255) NOT NULL DEFAULT '0',
  `tfbj` varchar(255) NOT NULL DEFAULT '0',
  `wugong` varchar(255) NOT NULL DEFAULT '0',
  `ljczczb` varchar(255) NOT NULL DEFAULT '0',
  `ljczyxb` varchar(255) NOT NULL DEFAULT '0',
  `taozhuang` varchar(255) NOT NULL DEFAULT '' COMMENT '套装',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of game1
-- ----------------------------
INSERT INTO `game1` VALUES ('543', 'c8c35537f4a2bfa618801654b9cd1fc5', 'a98fce18aa73bc9370a7b4c9e20bea16', '艾尔资源', '1', '1000', '100001999', '100000109', '100000105', '0', '99998025', '100000034', '100000011', '100000004', '1', '2023-12-12 14:45:00', '299', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', null, '0000-00-00 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `game1` VALUES ('544', 'dc249c2d5f1cea91a8f150a1e95dc978', '68d99d7085e521e768b497dfd0ac3e9c', '源码屋', '1', '100', '96170', '99999', '0', '0', '35', '35', '12', '5', '1', '2024-04-09 22:30:35', '260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', null, '0000-00-00 00:00:00', '0', '0', '0', '0', '524', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `game1` VALUES ('545', 'f0ba894ae3cc0b3962c3950379762494', '4206ca0d52415177dd498543d7851b23', '谢幕', '1', '8', '916', '8988', '1053', '0', '218', '297', '58', '63', '1', '2024-07-03 20:40:36', '225', '14', '0', '77046', '0', '0', '0', '0', '0', '0', '0', '0', '1', null, '0000-00-00 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '35', '7', '0', '0', '0', '0', '0', '7', '0', '0', '0', '');

-- ----------------------------
-- Table structure for gameconfig
-- ----------------------------
DROP TABLE IF EXISTS `gameconfig`;
CREATE TABLE `gameconfig` (
  `firstmid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gameconfig
-- ----------------------------
INSERT INTO `gameconfig` VALUES ('225');

-- ----------------------------
-- Table structure for getplayerinfo
-- ----------------------------
DROP TABLE IF EXISTS `getplayerinfo`;
CREATE TABLE `getplayerinfo` (
  `imuid` int(11) DEFAULT NULL,
  `sid` text,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of getplayerinfo
-- ----------------------------
INSERT INTO `getplayerinfo` VALUES ('425', '771086b453fb6d53d76bf46880cf4b41', '1');
INSERT INTO `getplayerinfo` VALUES ('422', '111111', '2');
INSERT INTO `getplayerinfo` VALUES ('0', '771086b453fb6d53d76bf46880cf4b41', '3');

-- ----------------------------
-- Table structure for ggliaotian
-- ----------------------------
DROP TABLE IF EXISTS `ggliaotian`;
CREATE TABLE `ggliaotian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `sid` text NOT NULL,
  `zbqk` varchar(11) NOT NULL DEFAULT '' COMMENT '装备id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3557 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ggliaotian
-- ----------------------------
INSERT INTO `ggliaotian` VALUES ('1000', '李铁蛋', '这个游戏还得改好多 哈哈  我猜你没武功秘籍', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1001', 'Я твой ', '你怎么知道？', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1002', '【号外】', '[Я твой ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1003', '李铁蛋', '哈哈  稍等哈', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1004', 'Я твой ', '？', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1005', '李铁蛋', '手动加了一本给你哈哈 ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1006', 'Я твой ', '？？？？！', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1007', '李铁蛋', '你自己去体验获取也可以的 哈哈 我给你加点磨石', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1008', 'Я твой ', '你怎么做到的？', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1009', '李铁蛋', '在修炼里面 你去抽一下哈', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1010', '李铁蛋', '我在改游戏。。边改边测试', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1011', 'Я твой ', '牛啊', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1012', '李铁蛋', '有十来个秘籍  只是开放了三个  其他的。。属于vip。后面。。慢慢', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1013', 'Я твой ', '你是谁啊', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1014', '李铁蛋', '顺手牵羊刚改好  陆续加东西。。哈', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1015', 'Я твой ', '不会是Gm吧', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1016', '李铁蛋', '哈哈不是', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1017', 'Я твой ', '喔', '515', '', '');
INSERT INTO `ggliaotian` VALUES ('1018', '李铁蛋', '我也是玩家 ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1019', '李铁蛋', '只是有些测试功能  ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1020', '李铁蛋', '?现在乱七八糟的功能哈哈 都是隐藏的', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1021', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1022', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1023', '【号外】', '[BOSS·地狱之眼]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1024', '【号外】', '[BOSS·地狱之眼]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1025', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1026', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1027', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1028', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1029', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1030', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1031', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1032', '【最新】', '有人发现[<IMG width=\"15\" height=\"15\" src=\"./images/myj.png\">MaoYiYi]', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1033', '<IMG width=\"15\" height=\"15\" src=\"./images/myj.png\">MaoYiYi', '好久不登录了', '422', '', '');
INSERT INTO `ggliaotian` VALUES ('1034', 'GM     ', '哈哈 修改了蛮多的', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1035', '程序狗', '啧啧啧', '419', '', '');
INSERT INTO `ggliaotian` VALUES ('1036', '李铁蛋', '在修炼里面 你去抽一下哈', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1037', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1038', '【号外】', '[BOSS·魔兽]正在戏弄[凉凉唔]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1039', '凉凉唔', '。。。', '467', '', '');
INSERT INTO `ggliaotian` VALUES ('1040', 'GM     ', '你大爷', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1041', 'GM     ', '。。。', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1042', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1043', 'GM     ', '不错不错', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1044', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1045', '【号外】', '\r\n					[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jish', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1046', '【最新】', '有人发现[GM     ]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1047', '【最新】', '有人发现[GM     ]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1048', '【号外】', '[BOSS·苍穹古兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1049', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1050', 'GM     ', '傻乎乎', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1051', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1052', '【最新】', '抢BOSS了,[GM     ]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1053', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1054', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1055', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1056', '【最新】', '有人发现[GM     ]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1057', '【最新】', '有人发现[GM     ]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1058', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1059', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1060', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1061', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1062', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1063', '【最新】', '抢BOSS了,[GM     ]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1064', '【最新】', '抢BOSS了,[GM     ]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1065', '【最新】', '抢BOSS了,[GM     ]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1066', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1067', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1068', 'GM     ', '老哥你在写代码吗', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1069', '李铁蛋', '不想搞', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1070', 'GM     ', '好好写', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1071', '【号外】', '[BOSS·魔兽]正在戏弄[李铁蛋]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1072', '【号外】', '[BOSS·魔兽]正在戏弄[<IMG width=\"15\" height=\"15\" src=\"./images/myj.png\"', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1073', '【系统】', '万中无一的♂脑壳踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1074', '【系统】', '万中无一的绯·千灵踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1075', '李铁蛋', '哒哒哒', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1076', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1077', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1078', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1079', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1080', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1081', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1082', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1083', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1084', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1085', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1086', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1087', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1088', '绯·千灵', '血量变负数了怎么办', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1089', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1090', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1091', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1092', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1093', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1094', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1095', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1096', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1097', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1098', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1099', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1100', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1101', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1102', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1103', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1104', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1105', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1106', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1107', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1108', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1109', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1110', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1111', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1112', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1113', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1114', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1115', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1116', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1117', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1118', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1119', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1120', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1121', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1122', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1123', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1124', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1125', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1126', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1127', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1128', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1129', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1130', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1131', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1132', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1133', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1134', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1135', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1136', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1137', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1138', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1139', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1140', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1141', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1142', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1143', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1144', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1145', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1146', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1147', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1148', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1149', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1150', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1151', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1152', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1153', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1154', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1155', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1156', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1157', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1158', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1159', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1160', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1161', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1162', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1163', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1164', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1165', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1166', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1167', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1168', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1169', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1170', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1171', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1172', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1173', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1174', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1175', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1176', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1177', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1178', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1179', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1180', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1181', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1182', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1183', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1184', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1185', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1186', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1187', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1188', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1189', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1190', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1191', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1192', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1193', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1194', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1195', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1196', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1197', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1198', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1199', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1200', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1201', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1202', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1203', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1204', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1205', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1206', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1207', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1208', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1209', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1210', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1211', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1212', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1213', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1214', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1215', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1216', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1217', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1218', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1219', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1220', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1221', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1222', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1223', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1224', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1225', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1226', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1227', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1228', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1229', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1230', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1231', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1232', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1233', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1234', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1235', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1236', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1237', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1238', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1239', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1240', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1241', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1242', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1243', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1244', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1245', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1246', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1247', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1248', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1249', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1250', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1251', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1252', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1253', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1254', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1255', '李铁蛋', '？？？？', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1256', '李铁蛋', '我丢  这么猛嘛', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1257', '李铁蛋', '你的磨石怎么会有那么多', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1258', 'GM     ', '宝马', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1259', '李铁蛋', '二狗。那是谁小号你知道么', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1260', '李铁蛋', '真。。猛啊', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1261', '李铁蛋', '？？？？', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1262', '绯·千灵', '大号啊?', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1263', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1264', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1265', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1266', '李铁蛋', '放过boss吧，我还在筹划内丹', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1267', '【号外】', '[BOSS·魔兽]正在戏弄[李铁蛋]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1268', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1269', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1270', '李铁蛋', '宠物也没做好', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1271', '绯·千灵', '我有一个非凡的招财猪', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1272', '李铁蛋', '这个还在更新中。。有饕餮啥的  只是现在开启概率。。为o', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1273', '李铁蛋', '宠物血量。。本来准备写药品。没来得及', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1274', '绯·千灵', '物品可以转让吗', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1275', '李铁蛋', '?太猛了 升级', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1276', '绯·千灵', '给你们一点好东西玩玩', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1277', '李铁蛋', '可以啊 装备 交易就行', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1278', '绯·千灵', '龙凤双环和魔魂天咒我留着也没啥用', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1279', '绯·千灵', '给你们好了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1280', '李铁蛋', '那些现在都装备不了吧', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1281', '绯·千灵', '可以啊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1282', '绯·千灵', '就是伤害有多低', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1283', '绯·千灵', '我在用五丁开山', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1284', '李铁蛋', '...你可以拍卖掉', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1285', '绯·千灵', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1286', '绯·千灵', '金箍棒掉率太低了吧，我都打了五个六耳猕猴了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1287', '李铁蛋', '?有的需要幸运值', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1288', '绯·千灵', '加了啊?', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1289', '李铁蛋', '这个游戏是php的 所以都是延迟的页面', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1290', '绯·千灵', '私', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1291', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1292', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1293', '绯·千灵', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1294', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1295', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1296', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1297', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1298', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1299', 'GM     ', '加油啊', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1300', '【号外】', '[BOSS·苍穹古兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1301', 'GM     ', '阿西吧', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1302', '李铁蛋', '阿西吧', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1303', '绯·千灵', '害害，我来了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1304', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1305', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1306', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1307', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1308', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1309', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1310', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1311', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1312', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1313', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1314', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1315', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1316', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1317', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1318', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1319', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1320', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1321', '绯·千灵', '我草', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1322', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1323', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1324', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1325', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1326', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1327', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1328', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1329', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1330', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1331', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1332', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1333', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1334', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1335', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1336', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1337', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1338', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1339', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1340', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1341', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1342', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1343', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1344', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1345', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1346', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1347', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1348', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1349', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1350', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1351', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1352', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1353', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1354', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1355', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1356', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1357', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1358', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1359', '绯·千灵', '是不是把苍穹古兽攻击提高了？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1360', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1361', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1362', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1363', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1364', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1365', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1366', '绯·千灵', '在线的发个话', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1367', '绯·千灵', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1368', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1369', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1370', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1371', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1372', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1373', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1374', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1375', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1376', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1377', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1378', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1379', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1380', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1381', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1382', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1383', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1384', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1385', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1386', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1387', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1388', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1389', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1390', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1391', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1392', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1393', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1394', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1395', '绯·千灵', '我草', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1396', '绯·千灵', '有生之年', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1397', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1398', 'GM     ', '有个bug  我得抓紧修一下', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('1399', '绯·千灵', 'ok', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1400', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1401', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1402', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1403', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1404', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1405', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1406', '绯·千灵', '金箍棒要多少运气？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1407', '李铁蛋', '你这是不用上课的嘛', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1408', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1409', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1410', '李铁蛋', '概率很低 有些道具是设置', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1411', '绯·千灵', '我都打将近十个了，还没给', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1412', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1413', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1414', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1415', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1416', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1417', '绯·千灵', '微信私聊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1418', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1419', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1420', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1421', '绯·千灵', '啊啊啊，还不掉金箍棒', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1422', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1423', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1424', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1425', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1426', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1427', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1428', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1429', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1430', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1431', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1432', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1433', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1434', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1435', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1436', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1437', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1438', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('1439', '李铁蛋', '好了 修复完成', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1440', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1441', '绯·千灵', '害害，我来了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1442', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1443', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1444', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1445', '绯·千灵', '金箍棒的掉率能提高一点吗', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1446', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1447', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1448', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1449', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('1450', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1451', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1452', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1453', '【号外】', '[BOSS·苍穹古兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1454', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1455', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1456', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1457', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1458', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1459', '【系统】', '万中无一的青·千灵踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1460', '【号外】', '[BOSS·魔兽]正在戏弄[青·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1461', '【号外】', '[BOSS·魔兽]正在戏弄[青·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1462', '青·千灵', '开小号了', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('1463', '李铁蛋', '...不上课？', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1464', '青·千灵', '下课休息', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('1465', '【号外】', '[BOSS·魔兽]正在戏弄[青·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1466', '李铁蛋', '准备周末加个菜鸟属性，被boss击败多次后', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1467', '李铁蛋', '激活菜鸟模式..boss无视玩家攻击', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1468', '青·千灵', '哦（狗头）', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('1469', '青·千灵', '行', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('1470', '李铁蛋', '反之，boss记仇', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1471', '青·千灵', '可以', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('1472', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('1473', '青·千灵', '拍卖在哪里拍', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('1474', '李铁蛋', '交易里面就是玩家的拍卖', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1475', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1476', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('1477', '【系统】', '万中无一的我操你吗踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1478', '绯·千灵', 'xtq？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1479', '绯·千灵', '你这个昵称真的nb', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1480', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1481', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1482', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1483', '【号外】', '[BOSS·魔兽]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1484', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1485', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1486', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1487', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1488', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1489', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('1490', '【系统】', '万中无一的小珏233踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1491', '绯·千灵', '周珏？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1492', '绯·千灵', '来来来', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1493', '绯·千灵', '我带你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1494', '绯·千灵', '先点有感叹号的人', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1495', '绯·千灵', '接任务', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1496', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1497', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1498', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('1499', '绯·千灵', '周珏，来花果山', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1500', '绯·千灵', '开始上课了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1501', '绯·千灵', '上课了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1502', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1503', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1504', '绯·千灵', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1505', '绯·千灵', '上课了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1506', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1507', '绯·千灵', '点查看世界，来花果山', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1508', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1509', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1510', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1511', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('1512', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1513', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1514', '【号外】', '[绯·千灵]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1515', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1516', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1517', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1518', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1519', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1520', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1521', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1522', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1523', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1524', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1525', '绯·千灵', '针勾八肝', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1526', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1527', '绯·千灵', '来花果山', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1528', '绯·千灵', '周珏', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1529', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1530', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1531', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1532', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1533', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1534', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1535', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1536', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1537', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1538', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1539', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1540', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1541', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1542', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1543', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1544', '【最新】', '抢BOSS了,[绯·千灵]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1545', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1546', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1547', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1548', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1549', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1550', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1551', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1552', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1553', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1554', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1555', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1556', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1557', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1558', '【号外】', '[BOSS·地狱之眼]正在戏弄[绯·千灵]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1559', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1560', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1561', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1562', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1563', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1564', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1565', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1566', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1567', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1568', '绯·千灵', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1569', '绯·千灵', '周珏，不至于', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1570', '小珏233', '咋了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1571', '小珏233', '我35级了还打不过，难受了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1572', '小珏233', '看我宠物', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1573', '绯·千灵', '看看我多少级了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1574', '绯·千灵', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1575', '小珏233', '魔兽咋打呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1576', '【最新】', '有人发现[绯·千灵]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1577', '小珏233', '嗑药嗑满被一刀秒', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1578', '绯·千灵', '那玩应暴击一刀能打3000', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1579', '小珏233', '操了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1580', '小珏233', '我才2200血', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1581', '绯·千灵', '我还经常被一刀秒呢', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1582', '绯·千灵', '来花果山', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1583', '【系统】', '万中无一的周珏他儿踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1584', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1585', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1586', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1587', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1588', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1589', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1590', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1591', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1592', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1593', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1594', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1595', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1596', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1597', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('1598', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1599', '小珏233', '都向我看齐', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1600', '小珏233', '赢了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1601', '猴爷爷', '菜', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1602', '小珏233', '出装备了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1603', '猴爷爷', '弱', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1604', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1605', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1606', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1607', '猴爷爷', '弱', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1608', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1609', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1610', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1611', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1612', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1613', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1614', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1615', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1616', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1617', '【号外】', '[BOSS·魔兽]正在戏弄[周珏他儿]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1618', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1619', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1620', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1621', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1622', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1623', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1624', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1625', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1626', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1627', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1628', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1629', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('1630', '猴爷爷', '周珏，看钉钉', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1631', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1632', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1633', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1634', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1635', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1636', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1637', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1638', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('1639', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1640', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1641', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1642', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1643', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1644', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1645', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1646', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1647', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1648', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1649', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1650', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1651', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1652', '【号外】', '[BOSS·苍穹古兽]正在戏弄[周珏他儿]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1653', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1654', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1655', '小珏233', '只不是老猴子吗，我在刷100级怪，他们打我只掉7滴血，笑死了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1656', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1657', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1658', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1659', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('1660', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1661', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1662', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1663', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1664', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1665', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1666', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1667', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1668', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1669', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1670', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1671', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1672', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1673', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1674', '【最新】', '有人发现[小珏233]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1675', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1676', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1677', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1678', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1679', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('1680', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1681', '【号外】', '[BOSS·苍穹古兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1682', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('1683', '【最新】', '有人发现[小珏233]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1684', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1685', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1686', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('1687', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1688', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1689', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1690', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1691', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1692', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1693', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1694', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1695', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1696', '【最新】', '有人发现[小珏233]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1697', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1698', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1699', '【最新】', '抢BOSS了,[小珏233]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1700', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1701', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('1702', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1703', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1704', '【最新】', '有人发现[小珏233]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1705', '【号外】', '[BOSS·苍穹古兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1706', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('1707', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1708', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1709', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1710', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('1711', '小珏233', '无敌了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1712', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('1713', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1714', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1715', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1716', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1717', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1718', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1719', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1720', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1721', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1722', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('1723', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1724', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1725', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1726', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1727', '小珏233', '无敌了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1728', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1729', '【最新】', '有人发现[小珏233]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1730', '【号外】', '[BOSS·苍穹古兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1731', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('1732', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1733', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1734', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1735', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1736', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1737', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1738', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1739', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1740', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1741', '【号外】', '[BOSS·地狱之眼]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1742', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1743', '小珏233', '啥都不掉，c', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1744', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1745', '【号外】', '[BOSS·魔兽]正在戏弄[小珏233]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1746', '【号外】', '[小珏233]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('1747', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1748', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1749', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1750', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1751', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1752', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1753', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1754', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1755', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1756', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1757', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1758', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1759', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1760', '【最新】', '有人发现[珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1761', '【号外】', '[BOSS·苍穹古兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1762', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1763', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('1764', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1765', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('1766', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1767', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('1768', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1769', '【最新】', '有人发现[珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1770', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1771', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1772', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1773', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1774', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1775', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1776', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1777', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1778', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1779', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1780', '【最新】', '有人发现[珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1781', '【最新】', '有人发现[珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1782', '【最新】', '有人发现[珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1783', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1784', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1785', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1786', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1787', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1788', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1789', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1790', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1791', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1792', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1793', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1794', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1795', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1796', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1797', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1798', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1799', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1800', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1801', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('1802', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1803', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1804', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1805', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1806', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1807', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1808', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1809', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1810', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1811', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1812', '猴爷爷', '周珏以后别在钉钉里聊了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1813', '猴爷爷', '别卷了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1814', '珏皇', '咋了？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1815', '珏皇', '别抢我六耳', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1816', '珏皇', '我升级杀他', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1817', '猴爷爷', '六耳的装备你穿不了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1818', '猴爷爷', '有等级限制', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1819', '珏皇', '几级', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1820', '珏皇', '我马上52', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1821', '猴爷爷', '60', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1822', '珏皇', '你也没到呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1823', '珏皇', '五级以内都能穿', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1824', '珏皇', '看我刀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1825', '猴爷爷', '反正花果山是俺老孙的地盘', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1826', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1827', '珏皇', '后期只有这个东西掉装备呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1828', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1829', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1830', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1831', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1832', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1833', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1834', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1835', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1836', '珏皇', '猴子，你偷我零食干嘛，你要点脸，我都没有多少了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1837', '猴爷爷', '你偷零零露的', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1838', '猴爷爷', '他的多', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1839', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1840', '珏皇', '我没法投，秘籍刷不到了，只有百毒不侵和撒石灰', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1841', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1842', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1843', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1844', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1845', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('1846', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('1847', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1848', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1849', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('1850', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1851', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1852', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1853', '【传闻】', ' 猴爷爷 把 珏皇 打得生活不能自理', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1854', '【传闻】', '珏皇 被 猴爷爷 打的落花流水', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1855', '猴爷爷', '哎嘿', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1856', '珏皇', '你搞事情', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1857', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1858', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1859', '猴爷爷', '周珏！百分之一！', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1860', '猴爷爷', '金箍棒掉率为百分之一', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1861', '珏皇', '奥', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1862', '珏皇', '村长令牌也很低呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1863', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1864', '珏皇', '你也让我刷一点呀，我经验都弄不到了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1865', '珏皇', '55级了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1866', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1867', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1868', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[瑶', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1869', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('1870', '珏皇', '猴子，能把金箍棒送我吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1871', '猴爷爷', '叫猴哥', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1872', '珏皇', '猴哥', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1873', '珏皇', '我刷不动怪呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1874', '猴爷爷', '我有两把', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1875', '猴爷爷', '一把加九', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1876', '猴爷爷', '一把加零', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1877', '珏皇', '给我一把吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1878', '猴爷爷', '至少八百万零石', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1879', '珏皇', '算了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1880', '珏皇', '我就30万了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1881', '猴爷爷', '掉率只有百分之一，便宜了亏死', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1882', '珏皇', '五丁开山也不强呀，我有一吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1883', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1884', '猴爷爷', '我有三把', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1885', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1886', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1887', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1888', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('1889', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1890', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1891', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1892', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('1893', '珏皇', '我还没有刷出来，不', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1894', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1895', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1896', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1897', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1898', '珏皇', '给一吧金箍棒吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1899', '珏皇', '猴哥', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1900', '珏皇', '我刷了30多只了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1901', '珏皇', '56刷到59了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1902', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1903', '珏皇', '60', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1904', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1905', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1906', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1907', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1908', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1909', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1910', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1911', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1912', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1913', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1914', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1915', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1916', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1917', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1918', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('1919', '珏皇', '为什么我打了4次啥都不掉，你啥都掉呢', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1920', '猴爷爷', '非', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1921', '珏皇', '我吐了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1922', '猴爷爷', '你好弱', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1923', '猴爷爷', '24和38', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1924', '珏皇', '什么意思', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1925', '珏皇', '我61级了呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1926', '猴爷爷', '第八题', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1927', '珏皇', '我原来是全对，老师没批我卷子', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1928', '猴爷爷', '哦', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1929', '珏皇', '看我几级了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1930', '猴爷爷', '打不过我', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1931', '珏皇', '你装备好呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1932', '珏皇', '我都刷不到', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1933', '猴爷爷', '非', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1934', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1935', '【最新】', '有人发现[珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1936', '【最新】', '有人发现[珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1937', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1938', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1939', '【号外】', '[BOSS·魔兽]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1940', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1941', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('1942', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1943', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('1944', '猴爷爷', '草', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1945', '猴爷爷', '三巨头', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1946', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1947', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1948', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1949', '【号外】', '[李铁蛋]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1950', '猴爷爷', '出现了！', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1951', '珏皇', '咋了？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1952', '猴爷爷', '没事', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1953', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1954', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[六', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1955', '珏皇', '出了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1956', '珏皇', '100级的', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1957', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1958', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1959', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1960', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('1961', '【最新】', '有人发现[珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1962', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('1963', '【最新】', '有人发现[珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1964', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('1965', '【号外】', '[BOSS·魔兽]正在戏弄[周珏他儿]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1966', '【系统】', '万中无一的林霖踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1967', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1968', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1969', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1970', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1971', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1972', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1973', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1974', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1975', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1976', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('1977', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('1978', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1979', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1980', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('1981', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1982', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1983', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1984', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1985', '【最新】', '抢BOSS了,[珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1986', '【号外】', '[BOSS·千灵六耳]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1987', '猴爷爷', '我卖个东西，你们先别买', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1988', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1989', '李铁蛋', '天赋会影响修为获取情况.', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1990', '猴爷爷', '哦哦', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1991', '李铁蛋', '没了天赋将开启傻瓜模式..', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('1992', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1993', '猴爷爷', '做好了？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('1994', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1995', '【号外】', '[BOSS·魔兽]正在戏弄[东海龙孙]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1996', '珏皇', '猴子，那里改名字', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('1997', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1998', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('1999', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2000', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2001', '【最新】', '有人发现[珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2002', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2003', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2004', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2005', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2006', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2007', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2008', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2009', '【号外】', '[BOSS·地狱之眼]正在戏弄[珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2010', '【最新】', '有人发现[珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2011', '【号外】', '[东海龙孙]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2012', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2013', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2014', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('2015', '猴爷爷', '你要改成什么？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2016', '珏皇', '炎-千焚', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2017', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('2018', '猴爷爷', '不不不', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2019', '【最新】', '有人发现[珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2020', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2021', '珏皇', '东海，我买一件盔甲，其他人不要抢', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2022', '珏皇', '卖', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2023', '猴爷爷', '你叫太白老头吧', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2024', '珏皇', '这', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2025', '猴爷爷', '东海上课去了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2026', '珏皇', '我要不叫二郎神？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2027', '珏皇', '东海，快来买呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2028', '猴爷爷', '还是叫玉皇老哥', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2029', '【最新】', '有人发现[珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2030', '【最新】', '有人发现[珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2031', '【最新】', '有人发现[珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2032', '【号外】', '[珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[B', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('2033', '猴爷爷', '杨戬老弟吧', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2034', '珏皇', '我叫杨戬老哥', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2035', '猴爷爷', '行', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2036', '杨戬老哥', '我叫杨戬老哥', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2037', '【系统】', '万中无一的水果蛋糕踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2038', '猴爷爷', '水果蛋糕是怎么来的？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2039', '杨戬老哥', '我不到呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2040', '猴爷爷', '水果蛋糕你是怎么找的这个网站的？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2041', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2042', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2043', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2044', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2045', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2046', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2047', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2048', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2049', '猴爷爷', '水果蛋糕你是怎么找的这个网站的？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2050', '杨戬老哥', '好家伙，花果山三巨头都在呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2051', '猴爷爷', '东海去上课了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2052', '杨戬老哥', '呵呵', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2053', '杨戬老哥', '东海是我认识的人吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2054', '猴爷爷', '我怎么知道', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2055', '杨戬老哥', '他在现实中认识我吗，或者是一个学校的吗。', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2056', '啦拉拉裤', '。', '479', '', '');
INSERT INTO `ggliaotian` VALUES ('2057', '东海龙孙', '我是东北那边的', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('2058', '猴爷爷', '上课去啊，别摸鱼', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2059', '东海龙孙', '好?', '518', '', '');
INSERT INTO `ggliaotian` VALUES ('2060', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2061', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2062', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2063', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2064', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2065', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2066', '杨戬老哥', '猴子，我打算刷一把妖王剑做收藏，你觉得咋么样', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2067', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2068', '猴爷爷', '没用', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2069', '杨戬老哥', '做个纪念也还行', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2070', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2071', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2072', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2073', '猴爷爷', '杨戬，帮我刷一套大圣套', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2074', '杨戬老哥', '那里耍呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2075', '杨戬老哥', '6耳？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2076', '猴爷爷', '千灵六耳', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2077', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2078', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2079', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2080', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2081', '杨戬老哥', '我来刷就好了，你去忙去', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2082', '杨戬老哥', '我也给自己刷一套，呵呵', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2083', '杨戬老哥', '我家宠物是个废物', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2084', '猴爷爷', '不用，我去写一份杨戬套', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2085', '猴爷爷', '看拍卖', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2086', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2087', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2088', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2089', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2090', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2091', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2092', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2093', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2094', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2095', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2096', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2097', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2098', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2099', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2100', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2101', '杨戬老哥', '全体目光向我看齐', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2102', '杨戬老哥', '6不6', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2103', '杨戬老哥', '找到捷径了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2104', '猴爷爷', '快点帮我刷大圣套', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2105', '杨戬老哥', '这', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2106', '杨戬老哥', '我还要刷别的装备呀，我都没有大圣套', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2107', '杨戬老哥', '你几下就能秒杀他，我咋么大呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2108', '猴爷爷', '好好好', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2109', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2110', '杨戬老哥', '侠士永远的神', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2111', '杨戬老哥', '猴爷爷，你是那个职业，我是侠士，无敌起来了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2112', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2113', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2114', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2115', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2116', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2117', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2118', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2119', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2120', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2121', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2122', '杨戬老哥', '又出一个', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2123', '猴爷爷', '帮我刷一刷大圣套，你要什么我基本都要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2124', '杨戬老哥', '好吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2125', '杨戬老哥', '你就在六耳那里吧，这样我治疗快', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2126', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2127', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2128', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2129', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2130', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2131', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2132', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2133', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2134', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2135', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2136', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2137', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2138', '杨戬老哥', '我白打了是吧，连经验都不给我', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2139', '猴爷爷', '我忘了对不起', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2140', '杨戬老哥', '算了，你就挂机吧，刷新了跟我说，我来打', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2141', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2142', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2143', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2144', '杨戬老哥', '终于刷到妖王剑碎片了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2145', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2146', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2147', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2148', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2149', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2150', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2151', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2152', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2153', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2154', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2155', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2156', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2157', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2158', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2159', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2160', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2161', '【号外】', '[BOSS·苍穹古兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2162', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2163', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2164', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2165', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2166', '【系统】', '万中无一的很符合踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2167', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2168', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2169', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2170', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2171', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2172', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2173', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2174', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2175', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2176', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2177', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2178', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2179', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2180', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2181', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2182', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2183', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2184', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2185', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2186', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2187', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2188', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2189', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('2190', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2191', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2192', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2193', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2194', '杨戬老哥', '宠物到底有什么用处', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2195', '李铁蛋', '？你们灵石哪里来的 那么多', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2196', '杨戬老哥', '你可知100级的怪和bos', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2197', '杨戬老哥', '特别的肥', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2198', '杨戬老哥', '猴哥，你有多的大圣套吗，给我点呗', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2199', '猴爷爷', '啊这', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2200', '杨戬老哥', '你都相当于吧一个6耳占为己有了，我都刷不到了，我也要发展呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2201', '杨戬老哥', '多余的你也用不着呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2202', '猴爷爷', '买吧', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2203', '杨戬老哥', '100w太贵了，我才80w', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2204', '杨戬老哥', '买不起', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2205', '杨戬老哥', '?', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2206', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2207', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2208', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2209', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2210', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2211', '杨戬老哥', '20w行吗，我突破要横多钱', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2212', '猴爷爷', '完了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2213', '猴爷爷', '我也买不起了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2214', '杨戬老哥', '这，我把boss让给你刷吧，我去刷稀有武器去了，目标龙凤双环', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2215', '杨戬老哥', '猴哥，这样吧，我去把两个买下来，我在卖一件170w的装备，你买下来', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2216', '猴爷爷', '我有卖给你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2217', '杨戬老哥', '可以不？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2218', '杨戬老哥', '我去买了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2219', '猴爷爷', '龙凤双环', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2220', '杨戬老哥', '你去把鞋子买了，我已经买了那两件', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2221', '杨戬老哥', '龙凤我也又了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2222', '杨戬老哥', '猴哥，我花了200w你把鞋子买了就交易完成了欧?', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2223', '杨戬老哥', '666', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2224', '猴爷爷', '整完了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2225', '李铁蛋', '。。我建议你们留好灵石', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2226', '杨戬老哥', 'ok', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2227', '李铁蛋', '后面肯定要变天  ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2228', '杨戬老哥', '为什么？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2229', '猴爷爷', '主要是脸黑太可怕了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2230', '杨戬老哥', '？？？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2231', '猴爷爷', '突破的时候脸黑', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2232', '杨戬老哥', '太针对性了吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2233', '杨戬老哥', '我65级突破了2次就过了64w', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2234', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2235', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2236', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2237', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2238', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('2239', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2240', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2241', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2242', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2243', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2244', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2245', '杨戬老哥', '你偷我钱干嘛？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2246', '杨戬老哥', '我数了，五万，我也偷回来', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2247', '杨戬老哥', '偷了46万', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2248', '【系统】', '万中无一的珏仓踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2249', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2250', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2251', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2252', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2253', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2254', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2255', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2256', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2257', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2258', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2259', '【最新】', '抢BOSS了,[杨戬老哥]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2260', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '75');
INSERT INTO `ggliaotian` VALUES ('2261', '杨戬老哥', '全服通告，猴爷爷偷我500w灵石，你们都小心点，我亏大了，大家小心', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2262', '周珏他儿', '怎么偷的？', '521', '', '');
INSERT INTO `ggliaotian` VALUES ('2263', '周珏他儿', '他状态栏里也没有500w', '521', '', '');
INSERT INTO `ggliaotian` VALUES ('2264', '【号外】', '[BOSS·千灵六耳]正在戏弄[周珏他儿]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2265', '杨戬老哥', '别偷我了，我都穷了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2266', '【传闻】', ' 周珏他儿 把 珏仓 打得生活不能自理', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2267', '【号外】', '[BOSS·魔兽]正在戏弄[周珏他儿]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2268', '杨戬老哥', '？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2269', '杨戬老哥', '我的fuck', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2270', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2271', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2272', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2273', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2274', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2275', '杨戬老哥', '听说有人欺负我小号？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2276', '杨戬老哥', '张，加我宗门', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2277', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2278', '【号外】', '[BOSS·魔兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2279', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('2280', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2281', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2282', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2283', '【最新】', '有人发现[杨戬老哥]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2284', '【分享】', '[李铁蛋]向大伙愉快的分享自己的宝贝.', '0', '', '33');
INSERT INTO `ggliaotian` VALUES ('2285', '【分享】', '[GM     ]向大伙愉快的分享自己的宝贝.', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2286', '杨戬老哥', '咋么分享', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2287', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2288', '【号外】', '[BOSS·千灵六耳]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2289', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2290', '【号外】', '[BOSS·地狱之眼]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2291', '【号外】', '[BOSS·苍穹古兽]正在戏弄[杨戬老哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2292', '猴爷爷', '害害，我来了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2293', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2294', '猴爷爷', '周珏，看私', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2295', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2296', '【号外】', '[杨戬老哥]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2297', '杨戬老哥', '一次就成功了呢，突破', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2298', '杨戬老哥', '运气守恒定律', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2299', '猴爷爷', '火眼金睛卖不卖', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2300', '弑-珏皇', '买不起', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2301', '弑-珏皇', '你看我有多少钱', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2302', '猴爷爷', '改名？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2303', '猴爷爷', '我要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2304', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2305', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2306', '弑-珏皇', '狗突破系统', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2307', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2308', '弑-珏皇', '打到412血他逃了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2309', '弑-珏皇', '我套，我吃了4个人生', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2310', '【分享】', '[GM     ]向大伙愉快的分享自己的宝贝.', '0', '', '23');
INSERT INTO `ggliaotian` VALUES ('2311', '弑-珏皇', '咋么分享ya', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2312', '【分享】', '[猴爷爷]向大伙愉快的分享自己的宝贝.', '0', '', '2');
INSERT INTO `ggliaotian` VALUES ('2313', '弑-珏皇', '咋么分享', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2314', 'GM     ', '哈哈  这个是vip功能  现在只是测试一下', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2315', '弑-珏皇', '这，好吧，我也想用一下', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2316', '李铁蛋', '明天会出vip兑换的', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2317', '弑-珏皇', '顺便问一下，我秘籍搜寻搜不到了，', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2318', '李铁蛋', '因为磨石了  明天秘籍改一下，武功有调整', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2319', '弑-珏皇', 'ok', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2320', '李铁蛋', '你磨石没有了  搜寻不到的 消耗磨石', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2321', '弑-珏皇', '太棒了，天天被偷零食，都被刷屏了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2322', '弑-珏皇', '要多少魔石，我有120', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2323', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2324', '李铁蛋', '200', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2325', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2326', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2327', '李铁蛋', '明天修改武功修炼，修炼获得功力，使用武功消耗功力，', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2328', '李铁蛋', '不然顺手牵羊就快。。成。漫山遍野的泛滥', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2329', '弑-珏皇', 'ok，是不是顺手牵羊不能连续用了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2330', '李铁蛋', '对。', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2331', '弑-珏皇', '问一下，那个妖王剑碎片和残墨太难刷了，基本刷不到', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2332', '弑-珏皇', '是我运气的问题吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2333', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2334', '李铁蛋', '概率贼低', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2335', '李铁蛋', '明天我看看调试幸运。', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2336', '李铁蛋', '好了 休息', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2337', '弑-珏皇', '谢谢了，天赋里面的幸运有用吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2338', '猴爷爷', '还有大圣套', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2339', '弑-珏皇', '我有一次加到了90单没啥用呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2340', '李铁蛋', '没有幸运。boss基本不掉装备', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2341', '弑-珏皇', '大圣套有点弱了，没有吸血，难受', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2342', '李铁蛋', '哈哈 到时候大圣套装＋套装属性', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2343', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2344', '猴爷爷', '没吸血没关系', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2345', '弑-珏皇', '能不能加一个命中的天赋提升，我一个非酋，根本达不到几次就死了，否则没有怪打得过我呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2346', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2347', '弑-珏皇', '棒', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2348', '弑-珏皇', '一', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2349', '弑-珏皇', '是谁呀，是策划吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2350', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2351', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2352', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2353', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2354', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2355', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2356', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2357', '弑-珏皇', '下课', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2358', '猴爷爷', '没吸血没关系', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2359', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2360', '【号外】', '[BOSS·千灵六耳]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2361', '弑-珏皇', '无敌了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2362', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[假', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2363', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[狂', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2364', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[狂', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2365', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2366', '【号外】', '[BOSS·苍穹古兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2367', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('2368', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2369', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2370', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2371', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2372', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2373', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2374', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2375', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2376', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2377', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2378', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2379', '珏仓', '有人在吗？', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2380', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2381', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2382', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2383', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2384', '【号外】', '[BOSS·千灵六耳]正在戏弄[周珏他儿]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2385', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2386', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2387', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2388', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('2389', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2390', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2391', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2392', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2393', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2394', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2395', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2396', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2397', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2398', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2399', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2400', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2401', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('2402', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2403', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2404', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2405', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2406', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2407', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2408', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2409', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2410', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2411', '弑-珏皇', '为什么打不中呀，四联miss', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2412', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2413', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2414', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2415', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2416', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2417', '弑-珏皇', '要突破喽', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2418', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2419', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2420', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2421', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2422', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2423', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2424', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2425', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2426', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2427', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2428', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2429', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2430', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2431', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2432', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2433', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2434', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2435', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2436', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2437', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2438', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('2439', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2440', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2441', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2442', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2443', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[花', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2444', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[荷', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2445', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2446', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2447', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2448', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2449', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2450', '猴爷爷', '来我宗门，给你装备', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2451', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2452', '林霖', '可我已经加了门派啊', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2453', '猴爷爷', '你随便，可以判门的，我一个人都可以打你们一个宗门', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2454', '林霖', '这么厉害的嘛', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2455', '猴爷爷', '你看我面板', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2456', '林霖', '我看不大懂', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2457', '林霖', '叛门有什么处罚吗', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2458', '猴爷爷', '啊，就是看攻击防御', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2459', '猴爷爷', '没有处罚', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2460', '林霖', '那我进你门派吧', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2461', '林霖', '我又没看过别人的面板，怎么知道是强是弱啊', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2462', '猴爷爷', '害害', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2463', '猴爷爷', '点排行', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2464', '猴爷爷', '前三里别看我等级低', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2465', '猴爷爷', '但是第一第二都打不过我的', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2466', '林霖', '但是最强的对吗？', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2467', '猴爷爷', '不是，看排行榜“江湖传闻”', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2468', '猴爷爷', '他最牛', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2469', '猴爷爷', '我在拍卖里买几件装备，送你了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2470', '林霖', '谢谢馈赠', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2471', '林霖', '加入门派有什么义务吗', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2472', '猴爷爷', '有', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2473', '林霖', '说一下？', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2474', '猴爷爷', '努力提升自己修为', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2475', '林霖', '嗯嗯', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2476', '林霖', '我会努力的', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2477', '猴爷爷', '我先走了，我常常在水帘洞和花果山呆着，找我就来这', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2478', '林霖', '明白', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2479', '林霖', '拜拜', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2480', '弑-珏皇', '猴子，突破的时候灵石不要太多，刚好够就能一次成功，我这样成功了4次', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2481', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2482', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2483', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2484', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2485', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2486', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2487', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2488', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2489', '弑-珏皇', '林霖，我跟你告诉你一个技巧，你钱越少，突破成功率越大，至少我是这样的', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2490', '林霖', '隐藏机制吗？', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2491', '林霖', '你们有做过攻略吗', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2492', '弑-珏皇', '我也不知道', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2493', '弑-珏皇', '但是我是这样的', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2494', '林霖', '也有可能是玄学呢', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2495', '林霖', '不过可以试试', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2496', '弑-珏皇', '62级之后我把钱全都花了，结果突破很快', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2497', '弑-珏皇', '你可以见一个小号，把钱给他，钱就不会被偷', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2498', '弑-珏皇', '我的泪史?‍♂️', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2499', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2500', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2501', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2502', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2503', '林霖', '嗯嗯', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2504', '林霖', '谢谢指教', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2505', '猴爷爷', '周珏，我拿二，你亏一，咱俩互偷经济增长啊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2506', '猴爷爷', '傻吗？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2507', '猴爷爷', '来来来互偷一波', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2508', '弑-珏皇', '我有钱吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2509', '弑-珏皇', '你能偷多少', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2510', '猴爷爷', '我没有', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2511', '猴爷爷', '你偷我，我再偷你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2512', '弑-珏皇', '我有没有多少了，我马上要突破了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2513', '猴爷爷', '你先偷我，我在偷你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2514', '弑-珏皇', '我没法偷了，秘籍没了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2515', '弑-珏皇', '我修炼了好久结果秘籍没了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2516', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2517', '弑-珏皇', '哈哈哈', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2518', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2519', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2520', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2521', '猴爷爷', '你随便', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2522', '弑-珏皇', '我刷钱买秘籍', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2523', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2524', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2525', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2526', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2527', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2528', '弑-珏皇', '我刚好卡了一下✌?', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2529', '猴爷爷', '你过分了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2530', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2531', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2532', '弑-珏皇', '咋了，上次不也是我打到412血你抢了么，还有一次我打完你抢了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2533', '猴爷爷', '我死了三次', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2534', '弑-珏皇', '我一改名字运气就来了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2535', '弑-珏皇', '我死了2次，卡顿了2次，刚好抢到了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2536', '弑-珏皇', '你反正免费回血', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2537', '弑-珏皇', '我得嗑药', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2538', '林霖', '为什么啊？', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2539', '林霖', '等级原因吗', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2540', '猴爷爷', '行，我偷点灵石，不多，就一下', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2541', '弑-珏皇', '你随意', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2542', '弑-珏皇', '我就67了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2543', '弑-珏皇', '你偷得了多少', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2544', '弑-珏皇', '猴子，你偷呀，就一次我陪的起', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2545', '猴爷爷', '叫猴哥', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2546', '弑-珏皇', '猴哥你偷呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2547', '弑-珏皇', '偷不了呵呵', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2548', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2549', '猴爷爷', '来pvp', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2550', '弑-珏皇', '偷了多少？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2551', '弑-珏皇', '那里打架', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2552', '猴爷爷', '花', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2553', '猴爷爷', '果', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2554', '猴爷爷', '山', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2555', '猴爷爷', '七十二洞口', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2556', '【传闻】', '听说 猴爷爷 打死了 弑-珏皇', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2557', '猴爷爷', '弱', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2558', '弑-珏皇', '咋么打？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2559', '【传闻】', '猴爷爷 被 弑-珏皇 打的落花流水', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2560', '猴爷爷', '安全区没法打', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2561', '弑-珏皇', '只有大的人出手，哪有啥意思', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2562', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2563', '弑-珏皇', '都不能一起打，有啥意思', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2564', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[嗜', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2565', '弑-珏皇', '什么时候能组队', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2566', '猴爷爷', '我明天写写看', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2567', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2568', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2569', '猴爷爷', '林霏私聊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2570', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2571', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2572', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2573', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[百', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2574', '猴爷爷', '我装备都已经12', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2575', '猴爷爷', '页了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2576', '猴爷爷', '赶紧清一下', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2577', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2578', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2579', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2580', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2581', '【号外】', '[林霖]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[精', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2582', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2583', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2584', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2585', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2586', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2587', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2588', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2589', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2590', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('2591', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2592', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2593', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2594', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2595', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2596', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2597', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2598', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2599', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2600', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2601', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('2602', '【传闻】', '听说 周珏他儿 打死了 弑-珏皇', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2603', '【传闻】', ' 猴爷爷 把 周珏他儿 打得生活不能自理', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2604', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2605', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2606', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2607', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2608', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('2609', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2610', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2611', '【号外】', '[周珏他儿]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2612', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2613', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2614', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2615', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2616', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2617', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2618', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2619', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2620', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2621', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2622', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2623', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2624', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2625', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2626', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2627', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2628', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2629', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2630', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2631', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2632', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2633', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2634', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2635', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2636', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('2637', '猴爷爷', '周珏，火眼金睛有吗', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2638', '弑-珏皇', '有', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2639', '猴爷爷', '卖吗', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2640', '弑-珏皇', '我就一个', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2641', '猴爷爷', '我要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2642', '弑-珏皇', '我都强化加十了，不卖，买了实力会降呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2643', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2644', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2645', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2646', '【号外】', '[BOSS·苍穹古兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2647', '弑-珏皇', '6呀，收集一套了呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2648', '弑-珏皇', '我有两个重复了，卖了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2649', '猴爷爷', '没有', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2650', '猴爷爷', '太贵了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2651', '弑-珏皇', '猴哥，他掉武器吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2652', '猴爷爷', '便宜一点', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2653', '弑-珏皇', '你要？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2654', '猴爷爷', '不掉', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2655', '猴爷爷', '我要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2656', '弑-珏皇', '我寻思着我卖的都是我不要的我才卖呀', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2657', '猴爷爷', '我要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2658', '猴爷爷', '太贵了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2659', '弑-珏皇', '我打算今天收集一套', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2660', '猴爷爷', '卖我', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2661', '猴爷爷', '我要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2662', '弑-珏皇', '不卖', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2663', '猴爷爷', '太贵了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2664', '弑-珏皇', '核心装备不会卖', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2665', '猴爷爷', '便宜一点', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2666', '弑-珏皇', '那两个我能卖', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2667', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2668', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2669', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2670', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2671', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2672', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2673', '猴爷爷', '草', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2674', '弑-珏皇', '啥都不掉', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2675', '弑-珏皇', '我吐了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2676', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2677', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2678', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2679', '猴爷爷', '拍卖里面那两个便宜一点', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2680', '弑-珏皇', '好吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2681', '猴爷爷', '我要了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2682', '珏仓', '好哈', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2683', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2684', '珏仓', '等一下你们不要买东西', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2685', '猴爷爷', '。', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2686', '猴爷爷', '这么贵？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2687', '珏仓', '这', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2688', '珏仓', '30w不能在便宜了', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2689', '珏仓', '我理想价格70w', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2690', '珏仓', '我卖60w兄弟之间就60w', '525', '', '');
INSERT INTO `ggliaotian` VALUES ('2691', '猴爷爷', '.', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2692', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2693', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2694', '弑-珏皇', '要刷新了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2695', '猴爷爷', 'zhezhiwode', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2696', '弑-珏皇', 'ok', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2697', '弑-珏皇', '刷到了吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2698', '弑-珏皇', '有1400多强化石了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2699', '弑-珏皇', '无敌', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2700', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2701', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2702', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('2703', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2704', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2705', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2706', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2707', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('2708', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2709', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2710', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2711', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2712', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2713', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2714', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2715', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2716', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2717', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2718', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2719', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2720', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2721', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2722', '【号外】', '[弑-珏皇]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2723', '弑-珏皇', '出了，泪目', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2724', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2725', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2726', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('2727', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2728', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2729', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2730', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('2731', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2732', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2733', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2734', '猴爷爷', '齐了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2735', '弑-珏皇', '你武器呢？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2736', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2737', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2738', '【最新】', '抢BOSS了,[弑-珏皇]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2739', '【号外】', '[BOSS·苍穹古兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2740', '弑-珏皇', '该我刷了，干起来', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2741', '猴爷爷', '凭啥？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2742', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2743', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2744', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2745', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2746', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2747', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2748', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('2749', '弑-珏皇', '等会先不要打，我去看一下他会掉什么', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2750', '猴爷爷', '你打吧我不打了，为师让着你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2751', '猴爷爷', '有装备记得分给为师就好', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2752', '弑-珏皇', '好吧', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2753', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2754', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2755', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2756', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2757', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2758', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2759', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2760', '弑-珏皇', '拿命在打，结果啥都不掉，c', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2761', '猴爷爷', '为师来帮助你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2762', '弑-珏皇', '好的', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2763', '弑-珏皇', '谢谢师傅', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2764', '猴爷爷', '叫师傅', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2765', '弑-珏皇', '打到3000以内就好了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2766', '弑-珏皇', '我就能随便打', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2767', '猴爷爷', '叫师傅', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2768', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2769', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2770', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2771', '弑-珏皇', '偷我怪，你过分了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2772', '猴爷爷', '紧箍咒要不要？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2773', '猴爷爷', '为师帮你打了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2774', '猴爷爷', 'jin箍咒要不要？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2775', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2776', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2777', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('2778', '猴爷爷', '紧箍咒又掉了一个', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2779', '猴爷爷', '你要不要', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2780', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2781', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2782', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2783', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('2784', '【系统】', '万中无一的[我命由我]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2785', '我命由我', '这家伙更新这么快', '526', '', '');
INSERT INTO `ggliaotian` VALUES ('2786', '猴爷爷', '你好啊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2787', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2788', '猴爷爷', '你是？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2789', '我命由我', '你这么猛啊  都干几十集了', '526', '', '');
INSERT INTO `ggliaotian` VALUES ('2790', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2791', '我命由我', '我就来看看 他搞啥花样了', '526', '', '');
INSERT INTO `ggliaotian` VALUES ('2792', '猴爷爷', '谁？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2793', '我命由我', '开发那家伙', '526', '', '');
INSERT INTO `ggliaotian` VALUES ('2794', '猴爷爷', '哦', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2795', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2796', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2797', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('2798', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2799', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2800', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2801', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2802', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2803', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2804', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2805', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2806', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2807', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2808', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2809', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('2810', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2811', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2812', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2813', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2814', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2815', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2816', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2817', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2818', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2819', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2820', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2821', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2822', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2823', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2824', 'GM     ', '我日你妈', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2825', '李铁蛋', '。。看样子还是得加几个屏蔽词', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2826', '李铁蛋', '贼鸡巴开心', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2827', 'GM     ', '杀币', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2828', '林霖', '怎么氪金啊', '522', '', '');
INSERT INTO `ggliaotian` VALUES ('2829', 'GM     ', '几把', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2830', 'GM     ', '日你妈', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2831', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2832', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2833', '【系统】', '万中无一的[翎雨]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2834', '弑-珏皇', '请问大圣套有套装效果了吗？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2835', '李铁蛋', '不支持充值 克啥子金', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2836', '李铁蛋', '明天出套装 ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2837', '李铁蛋', '大伙提建议噻 ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2838', '猴爷爷', '装备技能', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2839', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2840', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2841', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2842', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2843', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2844', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('2845', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2846', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('2847', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2848', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2849', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('2850', '【系统】', '万中无一的[仪式感]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2851', '【系统】', '万中无一的[西西]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2852', '【系统】', '万中无一的[低吟浅唱]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2853', '【系统】', '万中无一的[淋雨]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2854', '【系统】', '万中无一的[轩宝]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2855', '【系统】', '万中无一的[灵均]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2856', '【系统】', '万中无一的[雪雪]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2857', '【系统】', '万中无一的[林玖]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2858', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2859', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2860', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2861', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2862', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2863', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2864', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2865', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2866', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2867', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2868', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2869', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '75');
INSERT INTO `ggliaotian` VALUES ('2870', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('2871', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2872', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2873', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2874', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2875', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('2876', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2877', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2878', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2879', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2880', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2881', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2882', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2883', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2884', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '75');
INSERT INTO `ggliaotian` VALUES ('2885', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2886', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2887', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('2888', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2889', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2890', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2891', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2892', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2893', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·地狱之眼,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2894', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2895', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2896', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('2897', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2898', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2899', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('2900', '猴爷爷', '打吧', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2901', 'GM     ', '你套装激活没', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2902', '猴爷爷', '激活了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2903', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2904', 'GM     ', '刚好剩下一丢丢血', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('2905', '猴爷爷', '幸好逃出来了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2906', '李铁蛋', '好哈哈 等会加个武功  就是 手下留情', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2907', '猴爷爷', '哈哈哈', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2908', '李铁蛋', 'gysj.xyz 就是这个游戏链接', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2909', '李铁蛋', '这个域名不常用 就拿来给这个游戏吧', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2910', '猴爷爷', '没见过这个域名', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2911', '猴爷爷', '便宜吗？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2912', '李铁蛋', '域名还是很划算的', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2913', '猴爷爷', '五十四个人参，177个回春汤了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2914', '猴爷爷', '什么样的情况回触发“请正常玩游戏”', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2915', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2916', '李铁蛋', '参数不对 还在那个被限制的位置 ', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2917', '猴爷爷', '啥参数？点击频率吗', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2918', '李铁蛋', '看具体情况  一般就是重复刷新或者修改器', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('2919', '猴爷爷', '哦', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2920', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2921', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('2922', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2923', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('2924', '猴爷爷', '啊啊啊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2925', '弑-珏皇', '我有70多人参', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2926', '猴爷爷', '就是不出筋斗云', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2927', '弑-珏皇', '鞋子卖我，30w', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2928', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2929', '弑-珏皇', '就是步云靴', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2930', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2931', '猴爷爷', '为什么', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2932', '弑-珏皇', '不卖算了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2933', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2934', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('2935', '猴爷爷', '这样，你给我筋斗云，我给你鞋', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2936', '猴爷爷', '不管你怎么搞的', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2937', '猴爷爷', '好好好卖给你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2938', '猴爷爷', '周珏', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2939', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('2940', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('2941', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('2942', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('2943', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '75');
INSERT INTO `ggliaotian` VALUES ('2944', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2945', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2946', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2947', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2948', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2949', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2950', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2951', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2952', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '76');
INSERT INTO `ggliaotian` VALUES ('2953', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2954', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2955', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2956', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2957', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2958', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2959', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2960', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2961', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2962', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2963', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '76');
INSERT INTO `ggliaotian` VALUES ('2964', '弑-珏皇', '我最近在看jojo第七部漫画解说', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2965', '弑-珏皇', '没时间上线', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2966', '猴爷爷', '卖了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2967', '弑-珏皇', 'ok', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2968', '弑-珏皇', '我去买一下', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2969', '【号外】', '[BOSS·苍穹古兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2970', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2971', '【号外】', '[BOSS·魔兽]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2972', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2973', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2974', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2975', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2976', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2977', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2978', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2979', '【最新】', '有人发现[弑-珏皇]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2980', '【号外】', '[BOSS·地狱之眼]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2981', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('2982', '弑-珏皇', '元婴突破丹？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2983', '弑-珏皇', '刷出来了结果不给', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2984', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('2985', '弑-珏皇', '为什么我加点数量很少？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2986', '弑-珏皇', '幸运加点回被消除，我幸运加了150多点，难受了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2987', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('2988', '弑-珏皇', '我加点数之后169，我55级的时候就2百多了，这不正常吧？', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('2989', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2990', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2991', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2992', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2993', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2994', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2995', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2996', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2997', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2998', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('2999', '弑-珏皇', '我跳', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('3000', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3001', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3002', '弑-珏皇', '我被削了，加点数少到离谱', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('3003', '弑-珏皇', '我得开新号了，这号废了', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('3004', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3005', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3006', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3007', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·魔兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3008', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3009', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3010', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3011', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3012', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('3013', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3014', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3015', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3016', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3017', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3018', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('3019', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3020', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('3021', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('3022', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3023', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('3024', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3025', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3026', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('3027', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3028', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3029', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·千灵六耳，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3030', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3031', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3032', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3033', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('3034', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3035', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3036', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3037', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3038', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3039', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3040', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3041', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3042', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3043', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3044', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('3045', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3046', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3047', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3048', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3049', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3050', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3051', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('3052', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3053', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3054', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('3055', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3056', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3057', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3058', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3059', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3060', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' ', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('3061', 'GM     ', '更新了账号只能一个人登录', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3062', '李铁蛋', '嗯嗯', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('3063', '【系统】', '万中无一的[天高地厚]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3064', '【系统】', '万中无一的[疯狂石头]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3065', '猴爷爷', '两位要不要来我的花果山来耍耍？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3066', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3067', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3068', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3069', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3070', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3071', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3072', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3073', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('3074', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3075', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3076', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3077', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3078', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3079', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('3080', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3081', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('3082', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('3083', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3084', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('3085', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3086', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3087', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3088', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3089', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3090', '【传闻】', '听说 GM      打死了 李铁蛋', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3091', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3092', '猴爷爷', '什么情况？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3093', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3094', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '54');
INSERT INTO `ggliaotian` VALUES ('3095', '猴爷爷', 'GM谁在登？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3096', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3097', '【传闻】', 'GM      被 猴爷爷 打的落花流水', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3098', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('3099', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3100', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3101', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3102', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3103', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('3104', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3105', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3106', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3107', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3108', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('3109', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3110', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('3111', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3112', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3113', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('3114', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3115', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('3116', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3117', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3118', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3119', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3120', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3121', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('3122', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3123', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3124', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3125', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3126', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3127', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3128', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3129', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3130', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3131', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3132', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3133', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3134', '【号外】', '[BOSS·千灵六耳]正在戏弄[弑-珏皇]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3135', '弑-珏皇', '此去经年，别无惊奇', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('3136', '【系统】', '万中无一的[灵-隐]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3137', '灵-隐', '小号', '538', '', '');
INSERT INTO `ggliaotian` VALUES ('3138', '弑-珏皇', '我小号', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('3139', '弑-珏皇', '等一下你们别买拍卖的东西，我给小号送物资', '520', '', '');
INSERT INTO `ggliaotian` VALUES ('3140', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3141', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3142', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3143', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('3144', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('3145', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3146', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·地狱之眼]获得稀有装备,令人羡慕.', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3147', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3148', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3149', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('3150', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[狂暴野狼]获得[百炼轻蕊甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3151', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[狂暴野狼]获得[百炼轻蕊甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3152', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[嗜血野狼]获得[百炼轻蕊甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3153', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[狂暴野狼]获得[百炼轻蕊甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3154', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3155', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3156', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷鹰]获得[雷鹰护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3157', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3158', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷鹰]获得[雷鹰护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3159', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3160', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3161', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3162', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3163', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[中级噬血剑]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3164', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3165', '李铁蛋', '上课了上课了', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('3166', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3167', '李铁蛋', '别玩了，该上课上课', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('3168', '李铁蛋', '??现在文游都能这么肝么', '510', '', '');
INSERT INTO `ggliaotian` VALUES ('3169', '猴爷爷', '哈哈', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3170', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3171', '【系统】', '万中无一的[遗香韵风]踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3172', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[花妖]获得[清风护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3173', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[花妖]获得[清风护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3174', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[嗜血野狼]获得[百炼轻蕊甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3175', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3176', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3177', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3178', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[中级噬血剑]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3179', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3180', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3181', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[荷花花魅]获得[轻蕊盔]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3182', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[荷花花魅]获得[轻蕊盔]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3183', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3184', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[嗜血野狼]获得[百炼轻蕊甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3185', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[赤炼蝮蛇妖]获得[缘风·墨魂靴]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3186', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3187', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3188', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[赤炼蝮蛇妖]获得[缘风·墨魂靴]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3189', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷鹰]获得[雷鹰护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3190', '【号外】', '[灵-隐]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[赤炼蝮蛇妖]获得[缘风·墨魂靴]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3191', '猴爷爷', '遗香韵风是谁的小号吗？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3192', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3193', '猴爷爷', '到现在门派里也只有三个人唉', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3194', '猴爷爷', '排行榜上除了江湖传闻，没有打得过我的，也不知道为什么人还是这么少', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3195', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3196', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3197', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3198', '猴爷爷', '都快能把boss当怪刷了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3199', '猴爷爷', '倒是来点人啊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3200', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3201', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('3202', '猴爷爷', '你哪来弄来这么多灵石？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3203', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3204', '遗香韵风', '？', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3205', '猴爷爷', '不是，说我们同学呢', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3206', '猴爷爷', '遗香韵风你是那个大佬的小号吗？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3207', '遗香韵风', '我刚van', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3208', '猴爷爷', '哦，还是个哲学家', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3209', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3210', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3211', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3212', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3213', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[血雷鹰]获得[血鹰项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3214', '猴爷爷', '看拍卖，送给装备给你，15级就可以用了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3215', '猴爷爷', '草。。。', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3216', '猴爷爷', '三巨头怎么都在家门口', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3217', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3218', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3219', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3220', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('3221', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷鹰]获得[雷鹰护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3222', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷鹰]获得[雷鹰护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3223', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[雷鹰]获得[雷鹰护甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3224', '猴爷爷', '快能不嗑药刷六耳了，主要是暴击太可怕了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3225', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3226', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[六耳猕猴]获得[金箍铁棒]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3227', '猴爷爷', '我草？百分之一又出了！', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3228', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3229', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3230', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3231', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[魔化之通臂猿]获得[陨铁武棍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3232', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3233', '猴爷爷', '淦，暴击打我三千血', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3234', '灵-隐', '还好，我大号被他暴击5200', '538', '', '');
INSERT INTO `ggliaotian` VALUES ('3235', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3236', '猴爷爷', '周珏给点灵石施舍一下', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3237', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3238', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3239', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3240', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3241', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3242', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '11');
INSERT INTO `ggliaotian` VALUES ('3243', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '53');
INSERT INTO `ggliaotian` VALUES ('3244', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[瑶瑶草]获得[圣盾术]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3245', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3246', '猴爷爷', '送你装备要不要？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3247', '遗香韵风', '送谁？', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3248', '猴爷爷', '你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3249', '遗香韵风', '我挺想要的', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3250', '猴爷爷', '来我门派', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3251', '遗香韵风', '我要！！！', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3252', '猴爷爷', '看拍卖', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3253', '猴爷爷', '神木王鼎', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3254', '遗香韵风', '申请了', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3255', '猴爷爷', 'OK', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3256', '遗香韵风', '感谢', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3257', '猴爷爷', '我还有，再买一点，你看着买', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3258', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3259', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3260', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·地狱之眼]获得稀有装备,令人羡慕.', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3261', '猴爷爷', '周珏看我修为，米4达狂喜', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3262', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[中级噬血剑]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3263', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[中级噬血剑]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3264', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3265', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3266', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('3267', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3268', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3269', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3270', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3271', '猴爷爷', 'boss残了你打', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3272', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('3273', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族祭祀]获得[普通蛮甲]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3274', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[入魔蛮族战士]获得[中级噬血剑]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3275', '猴爷爷', '遗香韵风来', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3276', '猴爷爷', 'boss给你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3277', '遗香韵风', '哪里', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3278', '遗香韵风', 'boss在哪', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3279', '猴爷爷', '村东', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3280', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3281', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3282', '猴爷爷', '不至于', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3283', '遗香韵风', '打不过', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3284', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3285', '猴爷爷', '再来，耗死他', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3286', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3287', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3288', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('3289', '猴爷爷', '啊这', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3290', '猴爷爷', '你去兑换一下', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3291', '猴爷爷', '点对换，vip666', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3292', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3293', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('3294', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3295', '遗香韵风', '我不小心把那个坐骑卖了。。。', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3296', '猴爷爷', '那个？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3297', '猴爷爷', '暴雨追风？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3298', '遗香韵风', '对', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3299', '猴爷爷', '拍卖', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3300', '遗香韵风', '感谢', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3301', '猴爷爷', '太多了，我的暴雨装备大概占了四五页了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3302', '猴爷爷', 'boss只有700血了，你看看能不能拿捏', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3303', '遗香韵风', '哪里', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3304', '猴爷爷', '还是刚才那个', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3305', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3306', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[赤炼蝮蛇妖]获得[缘风·墨魂靴]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3307', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3308', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·苍穹古兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3309', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '58');
INSERT INTO `ggliaotian` VALUES ('3310', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3311', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3312', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3313', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·地狱之眼]获得稀有装备,令人羡慕.', '0', '', '7');
INSERT INTO `ggliaotian` VALUES ('3314', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3315', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3316', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[百年穿山甲]获得[缘风·兽魂项链]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3317', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3318', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3319', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3320', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3321', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3322', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3323', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3324', '【号外】', '[BOSS·千灵六耳]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3325', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3326', '猴爷爷', '不写作业吗？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3327', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('3328', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3329', '遗香韵风', '怎么提升级别a，升级好慢', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3330', '猴爷爷', '打怪，然后你点状态', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3331', '猴爷爷', '到三十级就可以加天赋了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3332', '猴爷爷', '你不要写作业吗？还是说你已经工作了？（好奇罢了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3333', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3334', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '73');
INSERT INTO `ggliaotian` VALUES ('3335', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3336', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3337', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3338', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3339', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '76');
INSERT INTO `ggliaotian` VALUES ('3340', '遗香韵风', '作业已经写完了', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3341', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3342', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3343', '【号外】', '[BOSS·苍穹古兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3344', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3345', '【最新】', '有人发现[GM     ]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3346', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3347', '【号外】', '[李铁蛋]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3348', '【号外】', '[BOSS·魔兽]正在戏弄[李铁蛋]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3349', '【号外】', '[BOSS·魔兽]正在戏弄[GM     ]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3350', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3351', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3352', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3353', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3354', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3355', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3356', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3357', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3358', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3359', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3360', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3361', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3362', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3363', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3364', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3365', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3366', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3367', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3368', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3369', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3370', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3371', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3372', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3373', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3374', '【最新】', '有人发现[遗香韵风]正在挑战BOSS·魔兽，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3375', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3376', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3377', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3378', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3379', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3380', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3381', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3382', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3383', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3384', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3385', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3386', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3387', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3388', '遗香韵风', '谁有突破丹', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3389', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3390', '猴爷爷', '我有', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3391', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3392', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3393', '遗香韵风', '给我一些筑基丹可以吗', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3394', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3395', '猴爷爷', '我只有元婴和金丹', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3396', '猴爷爷', '?', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3397', '遗香韵风', '那我怎么突破', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3398', '猴爷爷', '我帮你刷', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3399', '猴爷爷', '爆率很高的', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3400', '遗香韵风', '谢谢！！！', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3401', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3402', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3403', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3404', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3405', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('3406', '猴爷爷', '你先刷装备', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3407', 'GM     ', '无人山洞就有', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3408', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3409', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3410', 'GM     ', '缺个提示啊 这怪我刷新', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3411', '遗香韵风', '一个都没出', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3412', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3413', 'GM     ', '我刷到一个...', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3414', '遗香韵风', '这个需要30个。。。', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3415', '猴爷爷', '我有事先走了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3416', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3417', '遗香韵风', 'GM调个爆率可以吗，爆不出一个', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3418', 'GM     ', '概率很高的', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3419', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3420', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3421', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3422', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3423', '遗香韵风', '我打了几百只，一个都没有', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3424', 'GM     ', '？？？？', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3425', 'GM     ', '不可能啊', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3426', 'GM     ', '我打了十来个就已经3个了', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3427', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3428', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3429', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3430', '猴爷爷', '幸运之不够，没到三十级，加不了幸运值', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3431', 'GM     ', '...硬伤', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3432', '猴爷爷', '。', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3433', 'GM     ', 'ying伤', '426', '', '');
INSERT INTO `ggliaotian` VALUES ('3434', '猴爷爷', '有两个了，卖给你', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3435', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3436', '猴爷爷', '又有了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3437', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3438', '猴爷爷', '买啊', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3439', '猴爷爷', '我挂售了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3440', '猴爷爷', '又有了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3441', '猴爷爷', '又有了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3442', '猴爷爷', '为什么不买？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3443', '猴爷爷', '又有了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3444', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3445', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3446', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3447', '猴爷爷', '？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3448', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3449', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '10');
INSERT INTO `ggliaotian` VALUES ('3450', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3451', '【号外】', '[GM     ]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3452', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3453', '猴爷爷', 'woc', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3454', '猴爷爷', '强化石是你买的吗？GM', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3455', '猴爷爷', '牛', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3456', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '56');
INSERT INTO `ggliaotian` VALUES ('3457', '猴爷爷', '又有了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3458', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3459', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3460', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3461', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3462', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3463', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '74');
INSERT INTO `ggliaotian` VALUES ('3464', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3465', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·地狱之眼]获得稀有装备,令人羡慕.', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3466', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[六耳猕猴]获得[金箍铁棒]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3467', '猴爷爷', '草第四个百分之一了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3468', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[怨灵]获得[嗜魂骨忍]令人羡慕。', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3469', '猴爷爷', '', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3470', '遗香韵风', '已经30个了，但突破不了', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3471', '猴爷爷', '我去问问', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3472', '遗香韵风', '怎么样，这是什么bug', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3473', '猴爷爷', '不知道', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3474', '猴爷爷', '有可能没做好', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3475', '猴爷爷', '你先点修炼，用灵石修炼，然后刷装备吧', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3476', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3477', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3478', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3479', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3480', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '76');
INSERT INTO `ggliaotian` VALUES ('3481', '【号外】', '[BOSS·魔兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3482', '猴爷爷', '来打boss只剩一滴血了！', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3483', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3484', '【号外】', '[遗香韵风]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3485', '【号外】', '[BOSS·魔兽]正在戏弄[遗香韵风]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3486', '遗香韵风', '那你们怎么突破的', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3487', '猴爷爷', '我？在突破丹出来之前突破的', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3488', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3489', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3490', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3491', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3492', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3493', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '76');
INSERT INTO `ggliaotian` VALUES ('3494', '遗香韵风', '谢谢！！！', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3495', '猴爷爷', '？怎么了', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3496', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3497', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3498', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3499', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3500', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '75');
INSERT INTO `ggliaotian` VALUES ('3501', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3502', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '55');
INSERT INTO `ggliaotian` VALUES ('3503', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3504', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3505', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3506', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3507', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3508', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3509', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3510', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '72');
INSERT INTO `ggliaotian` VALUES ('3511', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3512', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3513', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3514', '【最新】', '有人发现[猴爷爷]正在挑战BOSS·地狱之眼，谁会获胜，让我们拭目以待！', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3515', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3516', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·地狱之眼]获得稀有装备,令人羡慕.', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3517', '遗香韵风', '那把五丁山开。。。', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3518', '猴爷爷', '怎么了？', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3519', '猴爷爷', '有等级限制', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3520', '遗香韵风', '几级', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3521', '遗香韵风', '那个bug改好了吗', '539', '', '');
INSERT INTO `ggliaotian` VALUES ('3522', '猴爷爷', '卖了你买吧', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3523', '猴爷爷', '不知道', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3524', '猴爷爷', '那人不知道在不在', '517', '', '');
INSERT INTO `ggliaotian` VALUES ('3525', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3526', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3527', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3528', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3529', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·苍穹古兽]获得稀有装备,令人羡慕.', '0', '', '57');
INSERT INTO `ggliaotian` VALUES ('3530', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3531', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3532', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3533', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3534', '【号外】', '[BOSS·地狱之眼]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3535', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·地狱之眼]获得稀有装备,令人羡慕.', '0', '', '4');
INSERT INTO `ggliaotian` VALUES ('3555', '【系统】', '万中无一的源码屋踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3537', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3538', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3539', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3540', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·千灵六耳,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3541', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·千灵六耳]获得稀有装备,令人羡慕.', '0', '', '77');
INSERT INTO `ggliaotian` VALUES ('3542', '【号外】', '[BOSS·魔兽]正在戏弄[李铁蛋]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3543', '【号外】', '[猴爷爷]\r\n<IMG width=\'15\' height=\'15\' src=\'./images/jisha.png\' >\r\n[BOSS·魔兽]获得稀有装备,令人羡慕.', '0', '', '59');
INSERT INTO `ggliaotian` VALUES ('3544', '【号外】', '[BOSS·千灵六耳]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3546', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3547', '【号外】', '[BOSS·苍穹古兽]正在戏弄[猴爷爷]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3548', '【最新】', '抢BOSS了,[猴爷爷]将要击杀BOSS·苍穹古兽,会掉落什么宝物呢？', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3549', '【系统】', '万中无一的亲测源码网踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3550', '【系统】', '万中无一的悟空源码网踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3556', '【系统】', '万中无一的谢幕踏上了仙途', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3552', '【号外】', '[BOSS·魔兽]正在戏弄[仙哥]...', '0', '', '');
INSERT INTO `ggliaotian` VALUES ('3554', '【系统】', '万中无一的艾尔资源踏上了仙途', '0', '', '');

-- ----------------------------
-- Table structure for guaiwu
-- ----------------------------
DROP TABLE IF EXISTS `guaiwu`;
CREATE TABLE `guaiwu` (
  `gname` varchar(255) NOT NULL DEFAULT '',
  `glv` int(11) NOT NULL DEFAULT '0',
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `ginfo` text NOT NULL,
  `gsex` varchar(255) NOT NULL,
  `ghp` int(11) NOT NULL,
  `ggj` int(11) NOT NULL,
  `gfy` int(11) NOT NULL,
  `gbj` int(11) NOT NULL,
  `gxx` int(11) NOT NULL,
  `gzb` varchar(11) NOT NULL DEFAULT '',
  `dljv` int(11) NOT NULL,
  `gdj` text NOT NULL,
  `djjv` int(11) NOT NULL,
  `gyp` text NOT NULL,
  `ypjv` int(11) NOT NULL,
  `ms` int(11) NOT NULL DEFAULT '0',
  `gexp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of guaiwu
-- ----------------------------
INSERT INTO `guaiwu` VALUES ('假村长', '3', '52', '欺软怕硬，装腔作势的狐假虎威之人，一般在夜间出没。', '男', '500', '5', '2', '1', '1', '1', '1', '', '0', '', '0', '60', null);
INSERT INTO `guaiwu` VALUES ('狐妖', '1', '53', '100', '男', '500', '1', '1', '10', '10', '', '0', '', '0', '9,6', '60', '10', '9000');
INSERT INTO `guaiwu` VALUES ('水幽灵', '48', '54', '幽灵', '女', '1800', '500', '260', '10', '10', '', '5', '1,12', '5', '6', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('蜇人蜂', '1', '55', '公的', '男', '140', '5', '3', '0', '0', '23', '10', '8', '30', '6', '8', '0', null);
INSERT INTO `guaiwu` VALUES ('山猪', '1', '56', '山上的', '男', '240', '10', '14', '0', '0', '24', '10', '1', '2', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('老虎', '2', '57', '凶猛的老虎', '公', '170', '18', '11', '0', '0', '25', '10', '1', '3', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('花妖', '3', '58', '花妖,小妖', '女', '200', '25', '17', '0', '0', '26', '10', '1', '4', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('嗜血野狼', '5', '61', '嗜血野狼', '男', '260', '22', '32', '0', '0', '28', '20', '1', '5', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('狂暴野狼', '6', '62', '狂暴野狼', '男', '310', '23', '38', '0', '0', '28', '20', '1', '5', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('龙雀', '7', '63', '龙雀', '女', '320', '27', '44', '0', '0', '27', '20', '1,6', '8', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('百岁龙雀', '8', '64', '百岁龙雀', '男', '500', '32', '50', '0', '0', '29', '20', '1,6', '7', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('荷花花魅', '9', '65', '荷花花魅', '女', '560', '35', '56', '0', '0', '30', '21', '6', '17', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('血雷鹰', '12', '66', '血雷鹰', '男', '640', '46', '72', '0', '0', '32', '21', '1', '6', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('雷鹰', '10', '67', '雷鹰', '男', '620', '38', '61', '0', '0', '31', '21', '1', '5', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('魔修士', '13', '69', '魔修士', '男', '750', '49', '80', '0', '0', '', '22', '1', '6', '', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化之通臂猿', '16', '70', '魔化之通臂猿', '男', '909', '61', '100', '0', '0', '36', '22', '', '5', '6', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化之灵猴', '17', '71', '魔化之灵猴', '男', '1210', '65', '106', '0', '0', '', '5', '1', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化之剑魔', '18', '72', '魔化之剑魔', '男', '1320', '68', '121', '0', '0', '', '5', '7', '20', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化之幼齿猫女', '19', '73', '魔化之幼齿猫女', '女', '1260', '72', '118', '0', '0', '37', '5', '1,7', '5', '7', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化之鸦人', '20', '74', '魔化之鸦人', '男', '1220', '76', '121', '0', '0', '', '5', '7', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化山魈', '21', '75', '魔化山魈', '男', '1280', '80', '130', '0', '0', '33', '20', '1,7', '20', '7', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('入魔蛮族战士', '21', '76', '入魔的蛮族战士', '男', '1280', '80', '130', '0', '0', '34,35', '7', '1', '7', '7', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('入魔蛮族祭祀', '22', '77', '入魔的蛮族祭祀', '女', '1350', '84', '138', '0', '0', '35', '7', '1', '7', '7', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化蛮狼', '23', '78', '魔化的蛮狼', '男', '1400', '87', '137', '0', '0', '', '7', '1', '6', '', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('魔化狂狮', '24', '79', '魔化狂狮', '男', '1460', '91', '141', '0', '0', '', '7', '1', '6', '', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('魔道控兽师', '26', '80', '', '男', '1490', '99', '151', '0', '0', '', '7', '1', '6', '', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('百年蛇怪', '27', '81', '修炼百年的蛇怪', '男', '1640', '103', '168', '0', '0', '', '7', '1', '8', '', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('赤鳞兽', '28', '82', '赤鳞兽', '男', '1700', '106', '174', '0', '0', '', '7', '1,10', '7', '', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('棘鼠', '29', '83', '棘鼠', '男', '1860', '110', '180', '0', '0', '38', '7', '9', '10', '', '7', '0', null);
INSERT INTO `guaiwu` VALUES ('怨灵', '30', '84', '怨灵', '女', '1900', '968', '625', '10', '10', '39', '8', '1,20', '25', '', '8', '0', null);
INSERT INTO `guaiwu` VALUES ('岩魔', '31', '85', '岩魔', '男', '2400', '211', '189', '0', '0', '40', '8', '1', '8', '', '8', '0', null);
INSERT INTO `guaiwu` VALUES ('嗜灵鼠妖', '32', '86', '嗜灵鼠妖', '男', '2480', '218', '195', '0', '0', '41', '8', '1', '9', '', '8', '0', null);
INSERT INTO `guaiwu` VALUES ('赤炼蝮蛇妖', '33', '87', '赤炼蝮蛇妖', '女', '2590', '224', '201', '0', '0', '42', '9', '1', '9', '8', '9', '0', null);
INSERT INTO `guaiwu` VALUES ('百年穿山甲', '34', '88', '百年穿山甲\r\n皮厚气血强盛', '男', '2690', '150', '330', '0', '0', '44', '9', '1', '9', '8', '9', '0', null);
INSERT INTO `guaiwu` VALUES ('青古虎', '35', '89', '青古虎', '男', '3400', '238', '214', '0', '0', '', '5', '1', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('烈珠鹰', '37', '90', '烈珠鹰', '男', '3560', '252', '226', '0', '0', '', '5', '1', '5', '9', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('白豹妖', '38', '91', '白豹妖', '男', '3810', '258', '232', '0', '0', '43', '5', '1', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('雷萝妖', '39', '92', '雷萝妖', '女', '4210', '265', '238', '0', '0', '', '5', '1', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('血鸦', '40', '93', '血鸦', '男', '4100', '272', '244', '0', '0', '', '5', '1', '10', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('血鸦王', '55', '94', '血鸦王', '男', '5860', '594', '558', '0', '0', '', '8', '12', '1', '', '8', '0', null);
INSERT INTO `guaiwu` VALUES ('黑艳妖王', '56', '95', '黑艳妖王', '女', '4530', '653', '454', '0', '0', '', '5', '12', '1', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('劫杀者', '45', '96', '劫杀者', '男', '4810', '306', '275', '0', '0', '46', '5', '1', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('精锐叛兵', '47', '97', '精锐叛兵', '男', '4600', '320', '287', '0', '0', '47', '5', '', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('大队长', '50', '98', '叛兵队长', '男', '5800', '440', '405', '0', '0', '48', '5', '13', '5', '', '5', '0', null);
INSERT INTO `guaiwu` VALUES ('西门官人', '50', '99', '爱情狂徒，对小潘情有独钟。', '男', '6200', '480', '400', '0', '0', '', '5', '13', '4', '10', '4', '0', null);
INSERT INTO `guaiwu` VALUES ('寻宝鼠', '51', '100', '拍照一般看不见他，一直很神秘的小精灵。\n遁地是他的技能，灰藏牛P。', '男', '6000', '450', '350', '10', '50', '32', '1', '15,14', '5', '9,10', '15', '0', null);
INSERT INTO `guaiwu` VALUES ('六耳猕猴', '100', '101', '', '公猴', '100000', '1800', '1200', '10', '30', '2', '1', '1', '50', '2', '20', '600', null);
INSERT INTO `guaiwu` VALUES ('深谷蛟龙', '100', '102', '', '男', '10000', '1190', '700', '20', '10', '9', '1', '', '0', '6,1', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('洞穴老怪', '100', '103', '', '男', '15000', '900', '750', '5', '5', '7', '1', '', '0', '1', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('洞穴恶蜂', '94', '104', '', '女', '13500', '1250', '800', '5', '5', '5', '1', '', '0', '9', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('瑶瑶草', '95', '105', '', '女', '9000', '1000', '500', '5', '5', '8', '1', '', '0', '8', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('断臂麒麟', '99', '106', '', '男', '18000', '1450', '600', '5', '5', '6', '1', '', '0', '1', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('寿鹿仙狐', '105', '107', '', '男', '24500', '1000', '750', '5', '5', '5', '1', '', '0', '1', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('奇奇花', '96', '108', '', '女', '15000', '1300', '550', '5', '5', '45', '1', '', '0', '8', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('妖王?熊无二', '100', '109', '', '男', '76000', '1680', '905', '15', '15', '3', '1', '', '0', '9', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('妖王?彩凤', '100', '110', '', '女', '27000', '1580', '1100', '15', '15', '10', '1', '', '0', '1', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('修仙?树人', '97', '111', '', '男', '50000', '1100', '990', '5', '5', '11', '1', '', '0', '1', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('桃园?恶果', '93', '112', '', '男', '45800', '850', '710', '5', '4', '11', '1', '', '0', '9', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('七十二洞兽魔', '92', '113', '', '男', '12000', '950', '650', '5', '3', '4', '1', '', '0', '8', '20', '0', null);
INSERT INTO `guaiwu` VALUES ('四瞳灵狐', '51', '114', '', '男', '7800', '624', '541', '0', '0', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('黄金虎鲨', '52', '115', '', '男', '8000', '480', '651', '0', '0', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('风暴美人鱼', '53', '116', '', '男', '7500', '666', '541', '0', '0', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('冰霜蛇妖', '54', '117', '', '男', '8410', '680', '421', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('死神螳螂', '55', '118', '', '男', '6500', '840', '451', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('九幽\r\r\n地冥蟒', '56', '119', '', '男 ', '6450', '580', '490', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('天妖凰族', '57', '120', '', '女', '6687', '651', '458', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('太虚古龙', '58', '121', '', '男', '6910', '648', '480', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('青鸾', '59', '122', '', '女', '7900', '684', '450', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('墨蛟', '60', '123', '', '男', '8000', '1869', '1690', '15', '15', '', '0', '21,1', '5', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('血玉蜘蛛', '61', '124', '', '女', '8540', '860', '469', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('啼魂兽', '62', '125', '', '女', '9600', '680', '470', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('脂阳鸟', '63', '126', '', '女', '8800', '811', '480', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('青风牛', '64', '127', '', '男', '9050', '841', '499', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('雷鹏', '65', '128', '', '男', '8900', '984', '518', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('冰甲蟒', '67', '129', '', '男', '12000', '687', '529', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('冰凤', '68', '130', '', '男', '10000', '798', '550', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('马昊阳鸟', '69', '131', '', '男', '9870', '812', '560', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('土甲龙', '70', '132', '', '男', '14500', '490', '915', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('游天鲲鹏', '70', '133', '', '男', '13500', '712', '607', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('离火麒麟', '70', '134', '', '男', '14500', '811', '690', '0', '5', '', '0', '', '0', '9', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('罗?黑凤', '71', '135', '', '男', '13200', '781', '620', '0', '5', '', '0', '', '0', '1', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('金角巨兽', '72', '136', '', '男', '12200', '781', '459', '0', '5', '', '0', '', '0', '1', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('炎星巨兽', '73', '137', '', '男', '10200', '769', '681', '0', '5', '', '0', '', '0', '1', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('冰山巨兽', '74', '138', '', '男', '14500', '863', '680', '0', '5', '', '0', '', '0', '1', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('雷龙皇', '75', '139', '', '男', '16000', '841', '666', '0', '5', '', '0', '', '0', '1', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('金翅大鹏', '76', '140', '', '男', '15800', '845', '670', '0', '5', '', '0', '', '0', '1', '0', '0', null);
INSERT INTO `guaiwu` VALUES ('剑齿虎', '77', '141', '', '男', '22000', '980', '750', '20', '10', '', '0', '', '0', '1', '0', '0', null);

-- ----------------------------
-- Table structure for guanli
-- ----------------------------
DROP TABLE IF EXISTS `guanli`;
CREATE TABLE `guanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zyinfo` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业介绍',
  `zyname` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业名称',
  `sid` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业玩家',
  `zygj` varchar(255) NOT NULL DEFAULT '0',
  `zyfy` varchar(255) NOT NULL DEFAULT '0',
  `zybj` varchar(255) NOT NULL DEFAULT '0',
  `zyxy` varchar(255) NOT NULL DEFAULT '0',
  `zyxx` varchar(255) NOT NULL DEFAULT '0',
  `zysb` varchar(255) NOT NULL DEFAULT '0',
  `zyhp` varchar(255) NOT NULL DEFAULT '0',
  `zygn` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业功能，index.php',
  `zyyc` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业隐藏0开1隐藏',
  `zyys` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理或者职业';

-- ----------------------------
-- Records of guanli
-- ----------------------------
INSERT INTO `guanli` VALUES ('1', '释迦摩尼旗下的上级阶乘', '一流佛', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('2', '元始天尊', '二流仙', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('3', '皇宫贵族', '三流君', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('4', '官僚', '四流官', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('5', '酒厂', '五流烧', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('6', '当铺', '六流当', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('7', '商人', '七流商', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('8', '庄园主', '八流客', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('9', '农夫', '九庄田', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `guanli` VALUES ('10', '通过乡试的人', '中流举子', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('11', '郎中、大夫、药房先生', '中流医', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('12', '风水先生和阴阳先生', '中流风', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('13', '算命先生', '中流批', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('14', '卖画的人', '中流丹青', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('15', '看相的', '中流相', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('16', '和尚', '中流僧', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('17', '道士', '中流道', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `guanli` VALUES ('18', '喜欢琴棋诗书画的文人', '中流琴棋', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('19', '画符念咒的巫师', '流巫', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('20', '歌妓们', '流娼', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('21', '治病的神巫', '大神', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '0', '0', '0', '0', 'zhiliao.php', '0', '#379082');
INSERT INTO `guanli` VALUES ('22', '晚上打更的更夫', '流梆', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('23', '古代的理发师', '流剃', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('24', '吹鼓手、喇叭匠', '流吹手', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('25', '各类演员', '流戏子', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('26', '乞丐', '流叫街', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('27', '大街上吹糖卖糖人的', '流卖糖', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `guanli` VALUES ('28', 'pdd砍一刀？亿刀！', '相声', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#81799f');
INSERT INTO `guanli` VALUES ('29', '砍价', '砍价', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#81799f');
INSERT INTO `guanli` VALUES ('30', 'GM测试用的', '测试', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '0', '0', '0', '0', 'zhiliao.php', '0', '#81799f');

-- ----------------------------
-- Table structure for igm
-- ----------------------------
DROP TABLE IF EXISTS `igm`;
CREATE TABLE `igm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glid` varchar(64) NOT NULL DEFAULT '' COMMENT '管理id',
  `uname` varchar(64) NOT NULL DEFAULT '',
  `sid` text NOT NULL,
  `msg` varchar(32) NOT NULL DEFAULT '',
  `shijian` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `huifu` varchar(62) NOT NULL DEFAULT '',
  `glsid` varchar(64) NOT NULL DEFAULT '' COMMENT '管理sid',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `gluid` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='玩家反馈';

-- ----------------------------
-- Records of igm
-- ----------------------------
INSERT INTO `igm` VALUES ('1', '', '烤鱼丫', 'b624121f7f5c40f8c6ac507f6cab45f5', '本来打算今晚搞起', '0000-00-00 00:00:00', '好的收到。', 'a2377a650da6bb0ad4fe0514f971f858', '438', '426');
INSERT INTO `igm` VALUES ('2', '', '好久不见', '8185f290abecda314a9e53304c84e057', '王大锤在此', '0000-00-00 00:00:00', '好的收到。', 'a2377a650da6bb0ad4fe0514f971f858', '435', '426');
INSERT INTO `igm` VALUES ('3', '', '好久不见', '8185f290abecda314a9e53304c84e057', '王大锤在此', '0000-00-00 00:00:00', '好的收到。', 'a2377a650da6bb0ad4fe0514f971f858', '435', '426');
INSERT INTO `igm` VALUES ('4', '', '好久不见', '8185f290abecda314a9e53304c84e057', '本来打算今晚搞起', '0000-00-00 00:00:00', '好的收到。', 'a2377a650da6bb0ad4fe0514f971f858', '435', '426');
INSERT INTO `igm` VALUES ('5', '', '好久不见', '8185f290abecda314a9e53304c84e057', '王大锤在此', '0000-00-00 00:00:00', '强强强', 'a2377a650da6bb0ad4fe0514f971f858', '435', '426');
INSERT INTO `igm` VALUES ('6', '', '江湖传闻', '111111', '王大锤在此', '0000-00-00 00:00:00', '强强强', 'a2377a650da6bb0ad4fe0514f971f858', '441', '426');
INSERT INTO `igm` VALUES ('7', '', '江湖传闻', '111111', '都有好处超好吃', '0000-00-00 00:00:00', '好的收到。', 'a2377a650da6bb0ad4fe0514f971f858', '441', '426');
INSERT INTO `igm` VALUES ('8', '', '李铁蛋', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '铁蛋到此一游', '0000-00-00 00:00:00', '强强强', '', '510', '426');
INSERT INTO `igm` VALUES ('9', '', '李铁蛋', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '铁蛋到此二游', '0000-00-00 00:00:00', '好的收到。', '', '510', '426');
INSERT INTO `igm` VALUES ('10', '', '李铁蛋', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '铁蛋到此三游', '0000-00-00 00:00:00', '好的收到。', '', '510', '426');
INSERT INTO `igm` VALUES ('11', '', '李铁蛋', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '铁蛋到此嗷游', '0000-00-00 00:00:00', '', '', '510', '426');
INSERT INTO `igm` VALUES ('12', '', '鬼子', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '呵呵', '0000-00-00 00:00:00', '', '', '431', '426');
INSERT INTO `igm` VALUES ('13', '', '鬼子', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '哈哈', '0000-00-00 00:00:00', '', '', '431', '426');
INSERT INTO `igm` VALUES ('14', '', '鬼子', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '关不了', '0000-00-00 00:00:00', '', '', '431', '426');
INSERT INTO `igm` VALUES ('15', '', '程序狗', '087efeb819f49c1789df1f599ec15388', '快更新', '0000-00-00 00:00:00', '', '', '419', '426');
INSERT INTO `igm` VALUES ('16', '', '珏皇', 'c1a90c4939ae6e0353f41d09c2b62421', '妖王剑碎片刷不到，墨迹刷不到', '0000-00-00 00:00:00', '', '', '520', '426');
INSERT INTO `igm` VALUES ('17', '', '周珏他儿', '454ac9cbdb63df840643655755078a94', '猴爷爷一直偷我灵石，一点游戏体验都没有', '0000-00-00 00:00:00', '', '', '521', '426');
INSERT INTO `igm` VALUES ('18', '', '弑-珏皇', 'c1a90c4939ae6e0353f41d09c2b62421', '加点数在逆天改命后减少的很多', '0000-00-00 00:00:00', '', '', '520', '426');
INSERT INTO `igm` VALUES ('19', '', '猴爷爷', 'acea4cf5bfd750233ebc90c1361cd568', '套装技能', '0000-00-00 00:00:00', '', '', '517', '426');
INSERT INTO `igm` VALUES ('20', '', '猴爷爷', 'acea4cf5bfd750233ebc90c1361cd568', '每个套装有一个技能就可以了', '0000-00-00 00:00:00', '', '', '517', '426');
INSERT INTO `igm` VALUES ('21', '', '猴爷爷', 'acea4cf5bfd750233ebc90c1361cd568', '门派战，一个星期开展一次门派战', '0000-00-00 00:00:00', '', '', '517', '426');
INSERT INTO `igm` VALUES ('22', '', '遗香韵风', 'be7f41af7f2b397af5129fe5dec95e1a', '突破不了境界，但突破丹已经足够了', '0000-00-00 00:00:00', '', '', '539', '426');

-- ----------------------------
-- Table structure for igmxz
-- ----------------------------
DROP TABLE IF EXISTS `igmxz`;
CREATE TABLE `igmxz` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` text NOT NULL,
  `uname` varchar(32) NOT NULL DEFAULT '',
  `shijian` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tjcs` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='限制反馈';

-- ----------------------------
-- Records of igmxz
-- ----------------------------
INSERT INTO `igmxz` VALUES ('1', '704825b240505b4599c32a64fb882c2c', '????????????', '2022-03-04 23:41:00', '4');
INSERT INTO `igmxz` VALUES ('2', 'a2377a650da6bb0ad4fe0514f971f858', 'GM     ', '2022-03-05 01:40:00', '4');
INSERT INTO `igmxz` VALUES ('3', 'b624121f7f5c40f8c6ac507f6cab45f5', '烤鱼丫', '2022-03-05 22:55:51', '4');
INSERT INTO `igmxz` VALUES ('4', '087efeb819f49c1789df1f599ec15388', '程序狗', '2022-03-12 08:00:07', '2');
INSERT INTO `igmxz` VALUES ('5', '8185f290abecda314a9e53304c84e057', '好久不见', '2022-03-05 23:49:36', '4');
INSERT INTO `igmxz` VALUES ('6', '111111', '江湖传闻', '2022-03-06 11:34:25', '2');
INSERT INTO `igmxz` VALUES ('7', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '李铁蛋', '2022-03-08 11:33:34', '4');
INSERT INTO `igmxz` VALUES ('8', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '鬼子', '2022-03-08 18:56:55', '3');
INSERT INTO `igmxz` VALUES ('9', 'c1a90c4939ae6e0353f41d09c2b62421', '珏皇', '2022-03-20 16:17:37', '1');
INSERT INTO `igmxz` VALUES ('10', '454ac9cbdb63df840643655755078a94', '周珏他儿', '2022-03-18 15:27:48', '1');
INSERT INTO `igmxz` VALUES ('11', 'acea4cf5bfd750233ebc90c1361cd568', '猴爷爷', '2022-03-21 15:45:04', '2');
INSERT INTO `igmxz` VALUES ('12', 'be7f41af7f2b397af5129fe5dec95e1a', '遗香韵风', '2022-03-22 10:18:23', '1');

-- ----------------------------
-- Table structure for im
-- ----------------------------
DROP TABLE IF EXISTS `im`;
CREATE TABLE `im` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imuid` int(11) NOT NULL DEFAULT '0',
  `sid` text NOT NULL,
  `uId` int(11) unsigned NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im
-- ----------------------------
INSERT INTO `im` VALUES ('1', '426', 'a0f5700982d69976ce54c08cb1c2bbb0', '448', '');
INSERT INTO `im` VALUES ('2', '422', 'a0f5700982d69976ce54c08cb1c2bbb0', '448', '');
INSERT INTO `im` VALUES ('3', '441', 'a0f5700982d69976ce54c08cb1c2bbb0', '448', '');
INSERT INTO `im` VALUES ('4', '431', '70619bdc2bdd92dcc83489657743848d', '427', '');
INSERT INTO `im` VALUES ('5', '448', '70619bdc2bdd92dcc83489657743848d', '427', '');
INSERT INTO `im` VALUES ('6', '426', '70619bdc2bdd92dcc83489657743848d', '427', '');
INSERT INTO `im` VALUES ('7', '427', '111111', '441', '');
INSERT INTO `im` VALUES ('8', '455', '111111', '441', '');
INSERT INTO `im` VALUES ('9', '422', 'e8d7c6fb768be55653f7cb2f7164bd1d', '457', '');
INSERT INTO `im` VALUES ('10', '441', 'e8d7c6fb768be55653f7cb2f7164bd1d', '457', '');
INSERT INTO `im` VALUES ('11', '457', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '431', '');
INSERT INTO `im` VALUES ('12', '441', '39f73d46e13bed758f42d5695f3f43f0', '459', '');
INSERT INTO `im` VALUES ('13', '462', '7083fa1a1d41824363cd4df0ef5e5d90', '463', '');
INSERT INTO `im` VALUES ('14', '422', '111111', '441', '');
INSERT INTO `im` VALUES ('15', '457', '70619bdc2bdd92dcc83489657743848d', '427', '');
INSERT INTO `im` VALUES ('16', '422', '8361f38084bda036106506df54fcd779', '482', '');
INSERT INTO `im` VALUES ('17', '422', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('18', '481', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('19', '457', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('20', '468', 'b624121f7f5c40f8c6ac507f6cab45f5', '438', '');
INSERT INTO `im` VALUES ('21', '438', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('22', '426', '8185f290abecda314a9e53304c84e057', '435', '');
INSERT INTO `im` VALUES ('23', '426', 'b624121f7f5c40f8c6ac507f6cab45f5', '438', '');
INSERT INTO `im` VALUES ('24', '468', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('25', '441', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('26', '426', '111111', '441', '');
INSERT INTO `im` VALUES ('27', '426', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '');
INSERT INTO `im` VALUES ('28', '430', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '431', '');
INSERT INTO `im` VALUES ('29', '512', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '431', '');
INSERT INTO `im` VALUES ('30', '510', 'af976a314459ca05fc3563f0d6fd7e39', '514', '');
INSERT INTO `im` VALUES ('31', '510', 'af976a314459ca05fc3563f0d6fd7e39', '514', '');
INSERT INTO `im` VALUES ('32', '510', '111111', '441', '');
INSERT INTO `im` VALUES ('33', '510', '0d471de3efe5dcf749e6fa60fde8ae76', '515', '');
INSERT INTO `im` VALUES ('34', '422', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '');
INSERT INTO `im` VALUES ('35', '426', 'af976a314459ca05fc3563f0d6fd7e39', '514', '');
INSERT INTO `im` VALUES ('36', '426', 'af976a314459ca05fc3563f0d6fd7e39', '514', '');
INSERT INTO `im` VALUES ('37', '514', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '');
INSERT INTO `im` VALUES ('38', '426', '043c4eac8ffaa70af1ccb3e0eef0a364', '467', '');
INSERT INTO `im` VALUES ('39', '426', '087efeb819f49c1789df1f599ec15388', '419', '');
INSERT INTO `im` VALUES ('40', '515', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '');
INSERT INTO `im` VALUES ('41', '510', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('42', '517', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '');
INSERT INTO `im` VALUES ('43', '517', '771086b453fb6d53d76bf46880cf4b41', '422', '');
INSERT INTO `im` VALUES ('44', '422', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('45', '426', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('46', '427', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('47', '510', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');
INSERT INTO `im` VALUES ('48', '510', 'd9bc42eda8a25d32618518f4ae68b92a', '518', '');
INSERT INTO `im` VALUES ('49', '518', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('50', '517', 'd9bc42eda8a25d32618518f4ae68b92a', '518', '');
INSERT INTO `im` VALUES ('51', '519', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('52', '517', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('53', '520', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('54', '521', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('56', '422', '454ac9cbdb63df840643655755078a94', '521', '');
INSERT INTO `im` VALUES ('57', '520', '454ac9cbdb63df840643655755078a94', '521', '');
INSERT INTO `im` VALUES ('58', '517', '454ac9cbdb63df840643655755078a94', '521', '');
INSERT INTO `im` VALUES ('59', '426', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('60', '519', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('61', '518', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('62', '523', 'a1cf65d31ba46d90e465db5279329470', '479', '');
INSERT INTO `im` VALUES ('67', '520', '1266218ff94820df0b66c6ef60d0541f', '525', '');
INSERT INTO `im` VALUES ('68', '525', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('69', '522', 'c1a90c4939ae6e0353f41d09c2b62421', '520', '');
INSERT INTO `im` VALUES ('70', '521', '1266218ff94820df0b66c6ef60d0541f', '525', '');
INSERT INTO `im` VALUES ('71', '525', '454ac9cbdb63df840643655755078a94', '521', '');
INSERT INTO `im` VALUES ('72', '517', '0e975728648b4af97a3eb0dfaf7e303d', '522', '');
INSERT INTO `im` VALUES ('73', '522', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('74', '526', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('75', '517', '6dd9bd98618400f882c43aa6444d4948', '526', '');
INSERT INTO `im` VALUES ('76', '529', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('77', '520', '1ac81512a158e2622c17a49ba9b7eaf8', '538', '');
INSERT INTO `im` VALUES ('78', '510', 'be7f41af7f2b397af5129fe5dec95e1a', '539', '');
INSERT INTO `im` VALUES ('79', '517', 'be7f41af7f2b397af5129fe5dec95e1a', '539', '');
INSERT INTO `im` VALUES ('80', '539', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('81', '422', 'be7f41af7f2b397af5129fe5dec95e1a', '539', '');
INSERT INTO `im` VALUES ('82', '521', 'be7f41af7f2b397af5129fe5dec95e1a', '539', '');
INSERT INTO `im` VALUES ('83', '539', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '510', '');
INSERT INTO `im` VALUES ('84', '538', 'acea4cf5bfd750233ebc90c1361cd568', '517', '');
INSERT INTO `im` VALUES ('85', '426', 'be7f41af7f2b397af5129fe5dec95e1a', '539', '');
INSERT INTO `im` VALUES ('86', '517', 'a2377a650da6bb0ad4fe0514f971f858', '426', '');

-- ----------------------------
-- Table structure for imliaotian
-- ----------------------------
DROP TABLE IF EXISTS `imliaotian`;
CREATE TABLE `imliaotian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `msg` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `imuid` int(11) NOT NULL,
  `ckqk` varchar(12) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '查看情况默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of imliaotian
-- ----------------------------

-- ----------------------------
-- Table structure for jineng
-- ----------------------------
DROP TABLE IF EXISTS `jineng`;
CREATE TABLE `jineng` (
  `jnname` varchar(255) NOT NULL,
  `jnid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jngj` int(11) NOT NULL,
  `jnfy` int(11) NOT NULL,
  `jnbj` int(11) NOT NULL,
  `jnxx` int(11) NOT NULL,
  `jndj` int(11) NOT NULL,
  `djcount` int(11) NOT NULL,
  `xiaohao` int(11) NOT NULL,
  PRIMARY KEY (`jnid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jineng
-- ----------------------------
INSERT INTO `jineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '6', '5', '0');
INSERT INTO `jineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '7', '8', '0');
INSERT INTO `jineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '9', '8', '0');
INSERT INTO `jineng` VALUES ('怒血爆', '7', '12', '2', '20', '8', '10', '10', '0');
INSERT INTO `jineng` VALUES ('初级嗜血术', '8', '1', '0', '0', '20', '11', '15', '0');
INSERT INTO `jineng` VALUES ('遁地术', '9', '0', '12', '0', '30', '10', '10', '0');

-- ----------------------------
-- Table structure for mid
-- ----------------------------
DROP TABLE IF EXISTS `mid`;
CREATE TABLE `mid` (
  `mname` varchar(255) NOT NULL DEFAULT '',
  `mid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `mgid` varchar(255) NOT NULL DEFAULT '',
  `mnpc` varchar(255) NOT NULL DEFAULT '',
  `mgtime` datetime NOT NULL,
  `ms` varchar(4) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `midinfo` varchar(255) NOT NULL DEFAULT '',
  `midboss` int(11) NOT NULL,
  `mup` int(11) NOT NULL,
  `mdown` int(11) NOT NULL,
  `mleft` int(11) NOT NULL,
  `mright` int(11) NOT NULL,
  `mqy` int(11) NOT NULL,
  `playerinfo` varchar(255) NOT NULL,
  `ispvp` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of mid
-- ----------------------------
INSERT INTO `mid` VALUES ('村广场          ', '225', '53|2,52|1', '11,17', '2023-12-12 14:23:07', '0', '青青绿草地，悠悠老村长，还是熟悉的味道，勇士，欢迎你回来！', '0', '0', '0', '0', '226', '14', '源码屋向风铃镇.走去', '0');
INSERT INTO `mid` VALUES ('村东', '226', '', '18,10', '2022-03-22 19:02:51', '180', '村东大妈们正在嗑瓜子', '1', '0', '0', '225', '228', '14', '艾尔资源向村口[战斗].走去', '0');
INSERT INTO `mid` VALUES ('村口[战斗]', '228', '55|3,56|4', '9', '2022-08-22 13:40:11', '0', '村口人来人往，菏官格外引人注目。', '0', '0', '0', '226', '229', '14', '艾尔资源向千绝谷.走去', '1');
INSERT INTO `mid` VALUES ('小树林', '229', '56|2,57|5', '7', '2022-03-21 14:45:57', '0', '小树林里面好多绿色植物，好像村长媳妇很喜欢这片区域', '0', '0', '0', '228', '230', '14', '仙哥向村口[战斗].走去', '0');
INSERT INTO `mid` VALUES ('树林深处', '230', '58|4', '', '2022-03-21 14:55:42', '0', '森林深处，怪物开始多了起来', '0', '0', '0', '229', '231', '14', '仙哥向小树林.走去', '0');
INSERT INTO `mid` VALUES ('山林外围', '231', '62|3,61|2', '', '2022-03-21 15:07:51', '0', '山林外围，这里好像有狼出没', '0', '0', '0', '230', '232', '14', '仙哥向山中湖泊.走去', '0');
INSERT INTO `mid` VALUES ('山中湖泊', '232', '63|2,64|5', '', '2022-03-18 14:06:55', '0', '山中湖泊，龙雀栖息地', '0', '0', '0', '231', '233', '14', '仙哥向湖中小岛.走去', '0');
INSERT INTO `mid` VALUES ('湖中小岛', '233', '65|6', '', '2022-03-21 15:00:25', '0', '湖中小岛，花魁在这建立地盘', '0', '0', '0', '232', '235', '14', '仙哥向山脉东出口.走去', '0');
INSERT INTO `mid` VALUES ('山脉东出口', '235', '66|3,67|4', '', '2022-03-21 15:39:00', '0', '鹰的栖息地', '0', '0', '0', '233', '236', '14', '仙哥向聚仙城.走去', '0');
INSERT INTO `mid` VALUES ('城西郊', '236', '69|5', '', '2022-03-21 15:30:57', '0', '有着着魔的修士', '0', '0', '0', '235', '237', '16', '猴爷爷向聚仙城西.走去', '0');
INSERT INTO `mid` VALUES ('聚仙城西', '237', '', '13,14', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '236', '238', '16', '猴爷爷向聚仙西街.走去', '0');
INSERT INTO `mid` VALUES ('聚仙西街', '238', '', '15', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '237', '239', '16', '猴爷爷向聚仙城.走去', '0');
INSERT INTO `mid` VALUES ('聚仙城', '239', '', '16,17', '0000-00-00 00:00:00', '0', '', '0', '0', '273', '238', '240', '16', '仙哥向门派创建处.走去', '0');
INSERT INTO `mid` VALUES ('聚仙东街', '240', '', '23', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '239', '241', '16', '猴爷爷向聚仙城东.走去', '0');
INSERT INTO `mid` VALUES ('聚仙城东', '241', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '240', '242', '16', '猴爷爷向城东郊.走去', '0');
INSERT INTO `mid` VALUES ('城东郊', '242', '70|3,71|2', '', '2022-03-21 15:47:23', '0', '', '0', '0', '0', '241', '243', '16', '猴爷爷向魔化洞窟.走去', '0');
INSERT INTO `mid` VALUES ('魔化洞窟', '243', '72|6', '', '2022-03-19 20:17:50', '0', '', '0', '246', '0', '242', '244', '16', '猴爷爷向洞窟出口.走去', '0');
INSERT INTO `mid` VALUES ('洞窟出口', '244', '74|5', '', '2022-03-17 16:13:56', '0', '', '0', '0', '0', '243', '245', '17', '猴爷爷向魔化平原.走去', '0');
INSERT INTO `mid` VALUES ('魔化平原', '245', '73|4', '', '2022-03-21 15:51:07', '0', '', '0', '0', '0', '244', '247', '17', '猴爷爷向部落西郊.走去', '0');
INSERT INTO `mid` VALUES ('洞窟深处', '246', '75|3', '', '2022-03-17 20:32:44', '60', '', '0', '0', '243', '0', '0', '17', '猴爷爷向魔化洞窟.走去', '0');
INSERT INTO `mid` VALUES ('部落西郊', '247', '76|4,77|2', '', '2022-03-21 16:50:06', '0', '', '0', '0', '0', '245', '248', '17', '猴爷爷向部落西.走去', '0');
INSERT INTO `mid` VALUES ('部落西', '248', '', '20', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '247', '249', '17', '猴爷爷向部落.走去', '0');
INSERT INTO `mid` VALUES ('部落', '249', '', '15,17,21', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '248', '250', '17', '猴爷爷向部落东.走去', '0');
INSERT INTO `mid` VALUES ('部落东', '250', '', '19,22', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '249', '251', '17', '猴爷爷向部落东郊.走去', '0');
INSERT INTO `mid` VALUES ('部落东郊', '251', '78|6', '', '2022-03-10 01:18:00', '0', '', '0', '0', '0', '250', '252', '17', '猴爷爷向蛮河岸边.走去', '0');
INSERT INTO `mid` VALUES ('蛮河岸边', '252', '78|2,79|4', '', '2022-03-10 01:18:23', '0', '', '0', '0', '0', '251', '253', '17', '猴爷爷向渡河港口.走去', '0');
INSERT INTO `mid` VALUES ('渡河港口', '253', '80|5', '', '2022-03-17 17:18:22', '0', '', '0', '0', '0', '252', '254', '17', '猴爷爷向蛮河对岸.走去', '0');
INSERT INTO `mid` VALUES ('蛮河对岸', '254', '81|6', '', '2022-03-15 10:36:08', '0', '', '0', '0', '0', '253', '255', '17', '猴爷爷向未知山岭1.走去', '0');
INSERT INTO `mid` VALUES ('未知山岭1', '255', '82|7', '', '2022-03-21 17:27:29', '0', '', '0', '0', '0', '254', '256', '18', '猴爷爷向未知山岭2.走去', '0');
INSERT INTO `mid` VALUES ('未知山岭2', '256', '83|5', '', '2022-03-22 09:44:25', '30', '', '0', '257', '0', '255', '258', '18', '猴爷爷向无人山洞.走去', '0');
INSERT INTO `mid` VALUES ('无人山洞', '257', '84|6', '', '2022-03-22 10:08:54', '15', '听说该洞穴充满了灵力，但是怪物貌似很强。', '0', '0', '256', '0', '0', '18', '猴爷爷向芭蕉林.走去', '0');
INSERT INTO `mid` VALUES ('未知山岭3', '258', '85|6', '', '2022-03-21 13:52:27', '200', '', '0', '0', '0', '256', '259', '18', '源码屋向风铃镇.走去', '0');
INSERT INTO `mid` VALUES ('风铃古镇西', '259', '', '15', '2021-12-22 22:45:06', '0', '', '0', '0', '0', '258', '260', '18', '源码屋向未知山岭3.走去', '0');
INSERT INTO `mid` VALUES ('风铃镇', '260', '', '24', '2021-12-22 22:45:05', '0', '', '0', '0', '0', '259', '261', '18', '源码屋向风铃古镇东.走去', '0');
INSERT INTO `mid` VALUES ('风铃古镇东', '261', '', '19', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '260', '262', '18', '源码屋向妖兽丛林外部1.走去', '0');
INSERT INTO `mid` VALUES ('妖兽丛林外部1', '262', '86|3', '', '2022-03-21 15:07:52', '200', '', '0', '0', '0', '261', '263', '18', '源码屋向风铃镇.走去', '0');
INSERT INTO `mid` VALUES ('妖兽丛林外部2', '263', '87|7', '', '2022-03-21 17:02:51', '0', '', '0', '0', '0', '262', '264', '18', '遗香韵风向丛林深处妖兽山.走去', '0');
INSERT INTO `mid` VALUES ('丛林深处妖兽山', '264', '88|5', '', '2022-03-21 17:12:31', '100', '', '0', '0', '0', '263', '265', '18', '遗香韵风向万妖山低谷.走去', '0');
INSERT INTO `mid` VALUES ('万妖山低谷', '265', '89|2,90|2,100|1', '', '2022-03-21 17:15:53', '0', '', '0', '0', '0', '264', '266', '18', '遗香韵风向万妖山腰.走去', '0');
INSERT INTO `mid` VALUES ('万妖山腰', '266', '91|3,92|5', '', '2022-03-21 18:01:06', '0', '', '0', '268', '267', '265', '269', '18', '遗香韵风向炎阳郊外.走去', '0');
INSERT INTO `mid` VALUES ('妖王殿', '267', '94|3,95|3,99|2', '24', '2022-03-19 22:00:13', '0', '', '0', '266', '0', '0', '0', '20', '遗香韵风向万妖山腰.走去', '0');
INSERT INTO `mid` VALUES ('万妖山顶', '268', '93|7,100|1', '', '2022-03-21 18:52:52', '0', '', '0', '0', '266', '0', '0', '18', '遗香韵风向万妖山腰.走去', '0');
INSERT INTO `mid` VALUES ('炎阳郊外', '269', '96|4,97|4', '27,29', '2022-03-19 13:48:45', '0', '', '0', '0', '0', '266', '270', '21', '遗香韵风向炎阳西郊.走去', '0');
INSERT INTO `mid` VALUES ('炎阳西郊', '270', '54|5,100|1', '', '2022-03-22 10:17:34', '0', '', '0', '0', '0', '269', '271', '21', '遗香韵风向村东.走去', '0');
INSERT INTO `mid` VALUES ('炎阳西街', '271', '99|4', '29', '2022-03-19 21:58:56', '0', '', '0', '0', '0', '270', '272', '21', '遗香韵风向炎阳西郊.走去', '0');
INSERT INTO `mid` VALUES ('炎阳城', '272', '98|3', '24,28,31', '2022-03-21 17:41:51', '0', '', '0', '0', '312', '271', '311', '21', '遗香韵风向炎阳西街.走去', '0');
INSERT INTO `mid` VALUES ('门派创建处', '273', '', '26', '0000-00-00 00:00:00', '0', '', '0', '239', '0', '0', '0', '16', '仙哥向村广场          .走去', '0');
INSERT INTO `mid` VALUES ('通天小路', '274', '100|3', '', '2022-03-21 19:47:23', '0', '', '0', '275', '0', '280', '0', '22', 'GM     向通天云梯.走去', '0');
INSERT INTO `mid` VALUES ('通天云梯', '275', '', '', '0000-00-00 00:00:00', '0', '', '0', '276', '0', '0', '0', '22', '遗香韵风向登天台.走去', '0');
INSERT INTO `mid` VALUES ('登天台', '276', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '275', '277', '279', '22', '遗香韵风向龙池.走去', '0');
INSERT INTO `mid` VALUES ('观云寺', '277', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '278', '276', '22', '遗香韵风向登天台.走去', '0');
INSERT INTO `mid` VALUES ('云城', '278', '120|1,121|1', '', '2022-03-22 10:37:18', '0', '', '0', '0', '0', '0', '277', '22', '遗香韵风向观云寺.走去', '0');
INSERT INTO `mid` VALUES ('龙池', '279', '123|5', '', '2022-03-22 08:55:27', '0', '听闻这有突破丹存在。', '0', '0', '0', '276', '0', '22', '遗香韵风向武天都.走去', '0');
INSERT INTO `mid` VALUES ('三界边', '280', '', '6', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '281', '274', '22', 'GM     向通天小路.走去', '0');
INSERT INTO `mid` VALUES ('沼泽地', '281', '119|2', '', '2022-03-21 19:48:14', '0', '', '0', '282', '0', '0', '280', '22', 'GM     向三界边.走去', '0');
INSERT INTO `mid` VALUES ('流域', '282', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '281', '0', '0', '22', 'GM     向沼泽地.走去', '0');
INSERT INTO `mid` VALUES ('武天都', '283', '', '6', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '284', '23', '遗香韵风向凌霄城.走去', '0');
INSERT INTO `mid` VALUES ('凌霄城', '284', '120|3', '', '2022-03-17 20:52:00', '0', '', '0', '0', '0', '283', '285', '23', '遗香韵风向圣经城.走去', '0');
INSERT INTO `mid` VALUES ('圣经城', '285', '', '', '2021-12-22 23:35:56', '0', '', '0', '286', '287', '284', '0', '23', '遗香韵风向天帝城.走去', '0');
INSERT INTO `mid` VALUES ('天帝城', '286', '', '', '2021-12-22 23:36:04', '0', '', '0', '288', '285', '0', '0', '23', '遗香韵风向蓬莱顶.走去', '0');
INSERT INTO `mid` VALUES ('青云城', '287', '', '', '0000-00-00 00:00:00', '0', '', '0', '285', '0', '0', '0', '23', '遗香韵风向圣经城.走去', '0');
INSERT INTO `mid` VALUES ('蓬莱顶', '288', '', '', '2021-12-22 23:36:10', '0', '', '0', '289', '286', '0', '0', '23', '遗香韵风向云霄宝都.走去', '0');
INSERT INTO `mid` VALUES ('云霄宝都', '289', '122|2', '', '2022-03-15 16:26:03', '0', '', '0', '0', '288', '0', '0', '23', '遗香韵风向花果山.走去', '0');
INSERT INTO `mid` VALUES ('花果山', '290', '', '', '2022-03-22 14:32:13', '600', '', '3', '0', '291', '0', '0', '24', '猴爷爷向村广场          .走去', '0');
INSERT INTO `mid` VALUES ('水帘洞', '291', '105|3,101|1', '', '2022-03-22 10:31:57', '0', '', '0', '290', '0', '0', '292', '24', '猴爷爷向花果山.走去', '0');
INSERT INTO `mid` VALUES ('芭蕉林', '292', '', '15,24', '2021-12-22 23:37:50', '0', '', '0', '0', '0', '291', '301', '24', '猴爷爷向七十二洞口.走去', '0');
INSERT INTO `mid` VALUES ('夕阳古都', '293', '', '6', '0000-00-00 00:00:00', '0', '', '0', '294', '0', '0', '0', '25', '菜鸟阁向血色堡垒.走去', '0');
INSERT INTO `mid` VALUES ('血色堡垒', '294', '124|2', '', '2022-03-20 10:34:18', '0', '', '0', '317', '293', '318', '319', '25', '菜鸟阁向新仙界.走去', '0');
INSERT INTO `mid` VALUES ('落岩村', '295', '', '6', '0000-00-00 00:00:00', '0', '', '0', '296', '0', '0', '0', '26', '李铁蛋向龙潭穴.走去', '0');
INSERT INTO `mid` VALUES ('龙潭穴', '296', '136|2', '', '2022-03-20 11:06:04', '0', '', '0', '326', '295', '324', '325', '26', '李铁蛋向锁妖塔.走去', '0');
INSERT INTO `mid` VALUES ('八荒城', '297', '', '', '0000-00-00 00:00:00', '0', '', '0', '334', '0', '332', '333', '27', '猴爷爷向登云麓.走去', '0');
INSERT INTO `mid` VALUES ('钢铁阁', '298', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '341', '28', '猴爷爷向双溪.走去', '0');
INSERT INTO `mid` VALUES ('千绝谷', '299', '54|1,54|1,54|1', '17', '2023-12-12 14:43:42', '600', '水中幽灵遍布，平凡人不敢靠近。', '11', '0', '0', '0', '0', '29', '猴爷爷向芭蕉林.走去', '1');
INSERT INTO `mid` VALUES ('彼岸花', '300', '', '24', '0000-00-00 00:00:00', '0', '', '0', '0', '351', '348', '0', '30', '猴爷爷向芭蕉林.走去', '0');
INSERT INTO `mid` VALUES ('七十二洞口', '301', '', '', '0000-00-00 00:00:00', '0', '', '0', '305', '306', '292', '302', '24', '猴爷爷向七十二洞中.走去', '1');
INSERT INTO `mid` VALUES ('七十二洞中', '302', '', '6', '2022-03-22 14:02:25', '1200', '洞穴中传出地域幽冥的咆哮，请留意周围。', '2', '0', '0', '301', '303', '24', '猴爷爷向七十二洞尾.走去', '1');
INSERT INTO `mid` VALUES ('七十二洞尾', '303', '103|1', '', '2022-03-22 10:38:35', '0', '', '0', '308', '309', '302', '307', '24', '猴爷爷向灵鹤池.走去', '1');
INSERT INTO `mid` VALUES ('彩凤居', '304', '110|1', '', '2022-03-20 16:05:18', '0', '', '0', '0', '0', '0', '309', '24', '猴爷爷向深谷水潭.走去', '1');
INSERT INTO `mid` VALUES ('峰头居 ', '305', '104|3', '', '2022-03-22 13:57:35', '0', '', '0', '0', '301', '0', '0', '24', '猴爷爷向七十二洞口.走去', '1');
INSERT INTO `mid` VALUES ('奇花异草谷', '306', '105|1,108|1', '', '2022-03-22 15:42:51', '0', '', '0', '301', '0', '0', '0', '24', 'GM     向村广场          .走去', '1');
INSERT INTO `mid` VALUES ('灵鹤池', '307', '106|1,113|2', '', '2022-03-22 14:10:49', '0', '', '0', '0', '0', '303', '0', '24', '猴爷爷向七十二洞尾.走去', '1');
INSERT INTO `mid` VALUES ('苍天古树', '308', '104|1,111|1', '', '2022-03-22 14:05:54', '0', '', '0', '0', '303', '0', '0', '24', '猴爷爷向七十二洞尾.走去', '1');
INSERT INTO `mid` VALUES ('深谷水潭', '309', '102|1', '', '2022-03-22 14:03:44', '0', '', '0', '303', '310', '304', '0', '24', '猴爷爷向七十二洞尾.走去', '1');
INSERT INTO `mid` VALUES ('深谷桃园', '310', '112|3', '5', '2022-03-20 10:38:07', '0', '', '0', '309', '0', '0', '0', '24', '猴爷爷向深谷水潭.走去', '1');
INSERT INTO `mid` VALUES ('璧山', '311', '114|2', '', '2022-03-18 20:48:36', '0', '', '0', '0', '0', '272', '0', '21', '遗香韵风向炎阳城.走去', '0');
INSERT INTO `mid` VALUES ('九龙坡', '312', '115|3', '', '2022-03-17 20:25:35', '0', '', '0', '272', '0', '0', '313', '21', '遗香韵风向炎阳城.走去', '0');
INSERT INTO `mid` VALUES ('古藤林', '313', '116|2', '', '2022-03-16 10:26:45', '0', '', '0', '314', '0', '312', '0', '21', '遗香韵风向九龙坡.走去', '0');
INSERT INTO `mid` VALUES ('九顶山', '314', '117|2', '6', '2022-03-21 21:28:15', '0', '', '0', '316', '313', '0', '315', '21', '遗香韵风向古藤林.走去', '0');
INSERT INTO `mid` VALUES ('神魔之井', '315', '118|2,119|1', '', '2022-03-17 20:34:49', '0', '', '0', '0', '0', '314', '0', '21', '遗香韵风向九顶山.走去', '0');
INSERT INTO `mid` VALUES ('冰风谷', '316', '121|3', '', '2022-03-15 10:05:13', '0', '', '0', '0', '314', '0', '0', '21', '遗香韵风向九顶山.走去', '0');
INSERT INTO `mid` VALUES ('黄泉洞', '317', '125|3', '', '2022-03-15 10:53:27', '0', '', '0', '320', '294', '321', '0', '25', '猴爷爷向蓬莱迷宫.走去', '0');
INSERT INTO `mid` VALUES ('草海', '318', '126|3', '', '2021-12-15 23:52:02', '0', '', '0', '0', '0', '0', '294', '25', '猴爷爷向血色堡垒.走去', '0');
INSERT INTO `mid` VALUES ('江都', '319', '127|2', '', '2021-12-15 23:51:41', '0', '', '0', '0', '0', '294', '0', '25', '林霖向血色堡垒.走去', '0');
INSERT INTO `mid` VALUES ('霹雳堂', '320', '128|2,129|2,130|2', '', '2021-12-24 16:25:18', '0', '', '0', '0', '317', '0', '0', '25', '林霖向黄泉洞.走去', '0');
INSERT INTO `mid` VALUES ('蓬莱迷宫', '321', '131|2,132|2', '', '2021-12-15 23:52:14', '0', '', '0', '322', '0', '0', '317', '25', '猴爷爷向蜀山古道.走去', '0');
INSERT INTO `mid` VALUES ('蜀山古道', '322', '133|2', '24', '2022-03-21 08:53:57', '0', '', '0', '323', '321', '0', '0', '25', '猴爷爷向彼岸花.走去', '0');
INSERT INTO `mid` VALUES ('神树', '323', '133|1,134|1', '', '2022-03-16 11:56:47', '0', '', '0', '0', '322', '0', '324', '25', '林霖向蜀山古道.走去', '0');
INSERT INTO `mid` VALUES ('灵儿仙人洞', '324', '133|1,134|1,135|2', '', '2021-12-15 23:53:03', '0', '', '0', '0', '0', '323', '296', '25', '林霖向神树.走去', '0');
INSERT INTO `mid` VALUES ('锁妖塔', '325', '120|1,121|1,122|1,123|1,124|1,125|1,126|1', '', '2021-12-15 23:53:22', '0', '', '0', '0', '327', '296', '328', '26', '李铁蛋向村广场          .走去', '0');
INSERT INTO `mid` VALUES ('剑冢上层西部', '326', '136|2,137|2', '', '2022-03-17 21:45:27', '0', '', '0', '0', '296', '0', '0', '26', '李铁蛋向龙潭穴.走去', '0');
INSERT INTO `mid` VALUES ('海底城', '327', '129|1,130|1,138|2', '', '2021-12-24 16:27:50', '0', '', '0', '325', '0', '0', '0', '26', '林霖向锁妖塔.走去', '0');
INSERT INTO `mid` VALUES ('蓬莱地下迷宫', '328', '139|2', '6', '2021-12-15 23:53:28', '0', '', '0', '0', '329', '325', '330', '26', '林霖向锁妖塔.走去', '0');
INSERT INTO `mid` VALUES ('大渡口迷宫', '329', '136|1,137|1', '', '2021-12-15 23:53:30', '0', '', '0', '328', '0', '0', '0', '26', '林霖向蓬莱地下迷宫.走去', '0');
INSERT INTO `mid` VALUES ('熔岩地狱地', '330', '140|3', '', '2022-03-15 15:51:05', '0', '', '0', '0', '331', '328', '332', '26', '林霖向通天小路.走去', '0');
INSERT INTO `mid` VALUES ('新仙界', '331', '133|2,135|1,138|1', '', '2021-12-15 23:53:36', '0', '', '0', '330', '0', '0', '0', '26', '林霖向熔岩地狱地.走去', '0');
INSERT INTO `mid` VALUES ('唐家堡', '332', '141|3', '', '2022-03-15 15:50:40', '0', '', '0', '0', '0', '330', '297', '26', '林霖向熔岩地狱地.走去', '0');
INSERT INTO `mid` VALUES ('登云麓', '333', '', '', '0000-00-00 00:00:00', '0', '', '0', '338', '0', '297', '335', '27', '猴爷爷向绿萝嶂.走去', '0');
INSERT INTO `mid` VALUES ('蜀山派', '334', '', '', '0000-00-00 00:00:00', '0', '', '0', '341', '297', '0', '0', '27', '猴爷爷向八荒城.走去', '0');
INSERT INTO `mid` VALUES ('绿萝嶂', '335', '', '', '0000-00-00 00:00:00', '0', '', '0', '336', '0', '333', '337', '27', '猴爷爷向胜州.走去', '0');
INSERT INTO `mid` VALUES ('蜀山外城', '336', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '335', '0', '0', '27', '林霖向绿萝嶂.走去', '0');
INSERT INTO `mid` VALUES ('胜州', '337', '', '', '0000-00-00 00:00:00', '0', '', '0', '340', '0', '335', '339', '27', '猴爷爷向钢铁阁.走去', '0');
INSERT INTO `mid` VALUES ('河源', '338', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '333', '0', '0', '27', '林霖向登云麓.走去', '0');
INSERT INTO `mid` VALUES ('阳名百纳', '339', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '337', '0', '27', '猴爷爷向胜州.走去', '0');
INSERT INTO `mid` VALUES ('石村', '340', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '337', '0', '0', '27', '周珏他儿向胜州.走去', '0');
INSERT INTO `mid` VALUES ('双溪', '341', '', '', '0000-00-00 00:00:00', '0', '', '0', '343', '334', '298', '342', '28', '猴爷爷向锁妖塔.走去', '0');
INSERT INTO `mid` VALUES ('蜀山故道', '342', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '341', '0', '28', 'GM     向八荒城.走去', '0');
INSERT INTO `mid` VALUES ('锁妖塔', '343', '', '', '0000-00-00 00:00:00', '0', '', '0', '344', '341', '0', '345', '28', '猴爷爷向石沉溪洞.走去', '0');
INSERT INTO `mid` VALUES ('盘古之心', '344', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '343', '0', '0', '28', '猴爷爷向锁妖塔.走去', '0');
INSERT INTO `mid` VALUES ('石沉溪洞', '345', '', '', '0000-00-00 00:00:00', '0', '', '0', '347', '0', '343', '346', '28', '猴爷爷向紫云架.走去', '0');
INSERT INTO `mid` VALUES ('紫云架', '346', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '349', '345', '348', '28', '猴爷爷向八公山.走去', '0');
INSERT INTO `mid` VALUES ('巢湖', '347', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '345', '0', '0', '28', '猴爷爷向石沉溪洞.走去', '0');
INSERT INTO `mid` VALUES ('八公山', '348', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '346', '300', '28', '猴爷爷向彼岸花.走去', '0');
INSERT INTO `mid` VALUES ('女罗岩', '349', '', '', '0000-00-00 00:00:00', '0', '', '0', '346', '0', '0', '350', '28', '林霖向紫云架.走去', '0');
INSERT INTO `mid` VALUES ('淮南王陵', '350', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '349', '0', '28', '林霖向女罗岩.走去', '0');
INSERT INTO `mid` VALUES ('碗丘山', '351', '', '', '0000-00-00 00:00:00', '0', '', '0', '300', '352', '0', '0', '30', 'GM     向千佛塔.走去', '0');
INSERT INTO `mid` VALUES ('千佛塔', '352', '', '', '0000-00-00 00:00:00', '0', '', '0', '351', '353', '0', '0', '30', 'GM     向紫微道.走去', '0');
INSERT INTO `mid` VALUES ('紫微道', '353', '', '', '0000-00-00 00:00:00', '0', '', '0', '352', '0', '0', '354', '30', 'GM     向白灏道.走去', '0');
INSERT INTO `mid` VALUES ('白灏道', '354', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '353', '355', '30', 'GM     向寂玄道.走去', '0');
INSERT INTO `mid` VALUES ('寂玄道', '355', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '354', '356', '30', '源码屋向风铃镇.走去', '0');
INSERT INTO `mid` VALUES ('月牙河谷', '356', '', '', '0000-00-00 00:00:00', '0', '', '0', '358', '359', '355', '357', '30', 'GM     向仙狐居.走去', '0');
INSERT INTO `mid` VALUES ('醉花荫', '357', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '356', '0', '30', '林霖向月牙河谷.走去', '0');
INSERT INTO `mid` VALUES ('清风涧', '358', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '356', '0', '0', '30', '林霖向月牙河谷.走去', '0');
INSERT INTO `mid` VALUES ('仙狐居', '359', '', '', '0000-00-00 00:00:00', '0', '', '0', '356', '0', '0', '0', '30', 'GM     向千绝谷.走去', '0');
INSERT INTO `mid` VALUES ('炎帝神农洞', '360', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向妖王殿.走去', '0');
INSERT INTO `mid` VALUES ('百翎洲', '361', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '小珏233向九龙坡.走去', '0');
INSERT INTO `mid` VALUES ('不周山', '362', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向流域.走去', '0');
INSERT INTO `mid` VALUES ('盘龙镇柱', '363', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向不周山.走去', '0');
INSERT INTO `mid` VALUES ('无常殿', '364', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向盘龙镇柱.走去', '0');
INSERT INTO `mid` VALUES ('黄泉鬼道', '365', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向无常殿.走去', '0');
INSERT INTO `mid` VALUES ('封神陵', '366', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向黄泉鬼道.走去', '0');
INSERT INTO `mid` VALUES ('旋梦', '367', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '林霖向封神陵.走去', '0');
INSERT INTO `mid` VALUES ('琼华派', '368', '', '', '0000-00-00 00:00:00', '0', '', '0', '0', '0', '0', '0', '31', '翎雨向村广场          .走去', '0');

-- ----------------------------
-- Table structure for midguaiwu
-- ----------------------------
DROP TABLE IF EXISTS `midguaiwu`;
CREATE TABLE `midguaiwu` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `gname` text CHARACTER SET utf8mb4 NOT NULL,
  `ghp` text NOT NULL,
  `ggj` text NOT NULL,
  `gfy` text NOT NULL,
  `glv` text NOT NULL,
  `mid` int(11) NOT NULL,
  `gyid` int(11) NOT NULL,
  `gexp` text NOT NULL,
  `sid` text NOT NULL,
  `gmaxhp` varchar(255) NOT NULL,
  `gbj` int(11) NOT NULL,
  `gxx` int(11) NOT NULL,
  `ms` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2327781 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of midguaiwu
-- ----------------------------
INSERT INTO `midguaiwu` VALUES ('00002249197', '魔化蛮狼', '700', '87', '71', '23', '251', '78', '173', 'e0e644a3727f0f1671e917f7b376c66f', '700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002253163', '山猪', '40', '4', '4', '1', '228', '56', '8', '0e698c7ec2d718b658fa287c45929571', '40', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002280014', '雷萝妖', '1474', '265', '238', '39', '266', '92', '254', '099f465c0c34dd5ef59f230a21447af4', '1960', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002302474', '魔化之通臂猿', '490', '61', '50', '16', '242', '70', '136', '781a121e409741ff53f5978578067146', '490', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002313514', '狂暴野狼', '144', '23', '19', '6', '231', '62', '45', 'bb2a45b7652a7900e7810128a329597e', '190', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002316229', '青风牛', '9050', '841', '499', '64', '319', '127', '6848', '', '9050', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316230', '脂阳鸟', '8800', '811', '480', '63', '318', '126', '6741', '', '8800', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316233', '马昊阳鸟', '9870', '812', '560', '69', '321', '131', '7452', '', '9870', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316236', '土甲龙', '14500', '490', '915', '70', '321', '132', '7490', '', '14500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316241', '游天鲲鹏', '13500', '712', '607', '70', '324', '133', '7560', '', '13500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316242', '离火麒麟', '14500', '811', '690', '70', '324', '134', '7560', '', '14500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316243', '罗睺黑凤', '13200', '781', '620', '71', '324', '135', '7668', '', '13200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316244', '罗睺黑凤', '13200', '781', '620', '71', '324', '135', '7668', '', '13200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316247', '天妖凰族', '6687', '651', '458', '57', '325', '120', '6042', '', '6687', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316248', '太虚古龙', '6910', '648', '480', '58', '325', '121', '6264', '', '6910', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316249', '青鸾', '7900', '684', '450', '59', '325', '122', '6313', '', '7900', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316253', '脂阳鸟', '8800', '811', '480', '63', '325', '126', '6804', '', '8800', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316254', '雷龙皇', '16000', '841', '666', '75', '328', '139', '8025', '', '16000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316255', '雷龙皇', '16000', '841', '666', '75', '328', '139', '8025', '', '16000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316256', '金角巨兽', '12200', '781', '459', '72', '329', '136', '7776', '', '12200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316257', '炎星巨兽', '10200', '769', '681', '73', '329', '137', '7811', '', '10200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316261', '游天鲲鹏', '13500', '712', '607', '70', '331', '133', '7490', '', '13500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316262', '游天鲲鹏', '13500', '712', '607', '70', '331', '133', '7490', '', '13500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316263', '罗睺黑凤', '13200', '781', '620', '71', '331', '135', '7668', '', '13200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002316264', '冰山巨兽', '14500', '863', '680', '74', '331', '138', '7918', 'd7e14e0899708a60b1369af7ca3f7e40', '14500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317507', '雷鹏', '8900', '984', '518', '65', '320', '128', '7020', '', '8900', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317508', '雷鹏', '8900', '984', '518', '65', '320', '128', '7020', '', '8900', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317509', '冰甲蟒', '12000', '687', '529', '67', '320', '129', '7169', '', '12000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317511', '冰凤', '10000', '798', '550', '68', '320', '130', '7344', '', '10000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317512', '冰凤', '10000', '798', '550', '68', '320', '130', '7344', '', '10000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317513', '冰甲蟒', '12000', '687', '529', '67', '327', '129', '7102', '', '12000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317514', '冰凤', '10000', '798', '550', '68', '327', '130', '7344', '', '10000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317515', '冰山巨兽', '14500', '863', '680', '74', '327', '138', '7992', '', '14500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002317516', '冰山巨兽', '14500', '863', '680', '74', '327', '138', '7992', '', '14500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002318633', '魔化蛮狼', '1400', '87', '137', '23', '251', '78', '2461', '', '1400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002318636', '魔化蛮狼', '1400', '87', '137', '23', '251', '78', '2461', '', '1400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002318640', '魔化狂狮', '1460', '91', '141', '24', '252', '79', '2544', '', '1460', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002318641', '魔化狂狮', '1460', '91', '141', '24', '252', '79', '2544', '', '1460', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002319085', '太虚古龙', '6910', '648', '480', '58', '316', '121', '6264', '', '6910', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002319190', '百年蛇怪', '1640', '103', '168', '27', '254', '81', '2916', '', '1640', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002319191', '百年蛇怪', '1640', '103', '168', '27', '254', '81', '2916', '', '1640', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002319192', '百年蛇怪', '1640', '103', '168', '27', '254', '81', '2916', '', '1640', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002319224', '啼魂兽', '9600', '680', '470', '62', '317', '125', '6634', '', '9600', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002319225', '啼魂兽', '9600', '680', '470', '62', '317', '125', '6634', '', '9600', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002319530', '剑齿虎', '22000', '980', '750', '77', '332', '141', '8239', '', '22000', '20', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002319531', '剑齿虎', '22000', '980', '750', '77', '332', '141', '8239', '', '22000', '20', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002319532', '剑齿虎', '22000', '980', '750', '77', '332', '141', '8239', '', '22000', '20', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002319533', '金翅大鹏', '15800', '845', '670', '76', '330', '140', '8208', '', '15800', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002319535', '金翅大鹏', '15800', '845', '670', '76', '330', '140', '8208', '', '15800', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002319563', '青鸾', '7900', '684', '450', '59', '289', '122', '6254', '', '7900', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002319564', '青鸾', '7900', '684', '450', '59', '289', '122', '6254', '', '7900', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002320296', '风暴美人鱼', '7500', '666', '541', '53', '313', '116', '5724', '', '7500', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002320375', '游天鲲鹏', '13500', '712', '607', '70', '323', '133', '7560', '', '13500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002320376', '离火麒麟', '14500', '811', '690', '70', '323', '134', '7490', '', '14500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002321112', '魔化之鸦人', '1220', '76', '121', '20', '244', '74', '2120', '', '1220', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321113', '魔化之鸦人', '1220', '76', '121', '20', '244', '74', '2120', '', '1220', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321114', '魔化之鸦人', '1220', '76', '121', '20', '244', '74', '2120', '', '1220', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321115', '魔化之鸦人', '1220', '76', '121', '20', '244', '74', '2120', '', '1220', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321234', '魔道控兽师', '1490', '99', '151', '26', '253', '80', '2782', '', '1490', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321787', '黄金虎鲨', '8000', '480', '651', '52', '312', '115', '5512', '', '8000', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321788', '黄金虎鲨', '8000', '480', '651', '52', '312', '115', '5512', '', '8000', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321809', '魔化山魈', '1280', '80', '130', '21', '246', '75', '2247', '', '1280', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002321822', '死神螳螂', '6500', '840', '451', '55', '315', '118', '5830', '', '6500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002321823', '死神螳螂', '6500', '840', '451', '55', '315', '118', '5830', '', '6500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002321824', '九幽\r\r\n地冥蟒', '6450', '580', '490', '56', '315', '119', '6048', '', '6450', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002321948', '天妖凰族', '6687', '651', '458', '57', '284', '120', '6042', '', '6687', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002321949', '天妖凰族', '6687', '651', '458', '57', '284', '120', '6042', '', '6687', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002322018', '金角巨兽', '12200', '781', '459', '72', '326', '136', '7776', '', '12200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002323243', '龙雀', '320', '27', '44', '7', '232', '63', '756', '', '320', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002323911', '四瞳灵狐', '7800', '624', '541', '51', '311', '114', '5457', '', '7800', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002323912', '四瞳灵狐', '7800', '624', '541', '51', '311', '114', '5457', '', '7800', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002324933', '劫杀者', '4810', '306', '275', '45', '269', '96', '4860', '', '4810', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002324935', '劫杀者', '4810', '306', '275', '45', '269', '96', '4860', '', '4810', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002324936', '劫杀者', '4810', '306', '275', '45', '269', '96', '4860', '', '4810', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325286', '魔化之剑魔', '1320', '68', '121', '18', '243', '72', '1926', '', '1320', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325287', '魔化之剑魔', '1320', '68', '121', '18', '243', '72', '1926', '', '1320', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325288', '魔化之剑魔', '1320', '68', '121', '18', '243', '72', '1926', '', '1320', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325289', '魔化之剑魔', '1320', '68', '121', '18', '243', '72', '1926', '', '1320', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325365', '西门狗贼', '6200', '480', '400', '50', '271', '99', '5400', '', '6200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325366', '西门狗贼', '6200', '480', '400', '50', '271', '99', '5400', '', '6200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325367', '西门狗贼', '6200', '480', '400', '50', '271', '99', '5400', '', '6200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325368', '西门狗贼', '6200', '480', '400', '50', '271', '99', '5400', '', '6200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325376', '西门狗贼', '6200', '480', '400', '50', '267', '99', '5400', '', '6200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002325597', '血玉蜘蛛', '8540', '860', '469', '61', '294', '124', '6527', '', '8540', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002325623', '桃园?恶果', '45800', '850', '710', '93', '310', '112', '10044', '', '45800', '5', '4', '0');
INSERT INTO `midguaiwu` VALUES ('00002325689', '金角巨兽', '12200', '781', '459', '72', '296', '136', '7704', '', '12200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002325690', '金角巨兽', '12200', '781', '459', '72', '296', '136', '7704', '', '12200', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002325804', '妖王?彩凤', '27000', '1580', '1100', '100', '304', '110', '10800', '', '27000', '15', '15', '0');
INSERT INTO `midguaiwu` VALUES ('00002325839', '游天鲲鹏', '13500', '712', '607', '70', '322', '133', '7490', '', '13500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002325840', '游天鲲鹏', '13500', '712', '607', '70', '322', '133', '7490', '', '13500', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002326119', '岩魔', '2400', '211', '189', '31', '258', '85', '3317', '', '2400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326122', '岩魔', '2400', '211', '189', '31', '258', '85', '3317', '', '2400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326123', '岩魔', '2400', '211', '189', '31', '258', '85', '3317', '', '2400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326182', '老虎', '170', '18', '11', '2', '229', '57', '214', '', '170', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326183', '老虎', '170', '18', '11', '2', '229', '57', '214', '', '170', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326184', '老虎', '170', '18', '11', '2', '229', '57', '214', '', '170', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326185', '老虎', '170', '18', '11', '2', '229', '57', '214', '', '170', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326252', '花妖', '200', '25', '17', '3', '230', '58', '324', '', '200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326253', '花妖', '200', '25', '17', '3', '230', '58', '324', '', '200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326254', '花妖', '200', '25', '17', '3', '230', '58', '324', '', '200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326255', '花妖', '200', '25', '17', '3', '230', '58', '324', '', '200', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326348', '荷花花魅', '560', '35', '56', '9', '233', '65', '963', '', '560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326349', '荷花花魅', '560', '35', '56', '9', '233', '65', '963', '', '560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326350', '荷花花魅', '560', '35', '56', '9', '233', '65', '963', '', '560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326351', '荷花花魅', '560', '35', '56', '9', '233', '65', '963', '', '560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326352', '荷花花魅', '560', '35', '56', '9', '233', '65', '963', '', '560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326353', '荷花花魅', '560', '35', '56', '9', '233', '65', '963', '', '560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326436', '狂暴野狼', '310', '23', '38', '6', '231', '62', '648', '', '310', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326437', '狂暴野狼', '310', '23', '38', '6', '231', '62', '648', '', '310', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326439', '嗜血野狼', '260', '22', '32', '5', '231', '61', '530', '', '260', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326440', '嗜血野狼', '260', '22', '32', '5', '231', '61', '530', '', '260', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326441', '嗜灵鼠妖', '2480', '218', '195', '32', '262', '86', '3424', '', '2480', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326442', '嗜灵鼠妖', '2480', '218', '195', '32', '262', '86', '3424', '', '2480', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326516', '魔修士', '750', '49', '80', '13', '236', '69', '1378', '', '750', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326517', '魔修士', '750', '49', '80', '13', '236', '69', '1378', '', '750', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326518', '魔修士', '750', '49', '80', '13', '236', '69', '1378', '', '750', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326519', '魔修士', '750', '49', '80', '13', '236', '69', '1378', '', '750', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326520', '魔修士', '750', '49', '80', '13', '236', '69', '1378', '', '750', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326549', '雷鹰', '620', '38', '61', '10', '235', '67', '1080', '', '620', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326550', '雷鹰', '620', '38', '61', '10', '235', '67', '1080', '', '620', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326551', '雷鹰', '620', '38', '61', '10', '235', '67', '1080', '', '620', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326552', '雷鹰', '620', '38', '61', '10', '235', '67', '1080', '', '620', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326579', '魔化之通臂猿', '909', '61', '100', '16', '242', '70', '1728', '', '909', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326580', '魔化之通臂猿', '909', '61', '100', '16', '242', '70', '1728', '', '909', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326581', '魔化之通臂猿', '909', '61', '100', '16', '242', '70', '1728', '', '909', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326582', '魔化之灵猴', '1210', '65', '106', '17', '242', '71', '1819', '', '1210', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326583', '魔化之灵猴', '1210', '65', '106', '17', '242', '71', '1819', '', '1210', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326604', '魔化之幼齿猫女', '1260', '72', '118', '19', '245', '73', '2052', '', '1260', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326605', '魔化之幼齿猫女', '1260', '72', '118', '19', '245', '73', '2052', '', '1260', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326606', '魔化之幼齿猫女', '1260', '72', '118', '19', '245', '73', '2052', '', '1260', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326607', '魔化之幼齿猫女', '1260', '72', '118', '19', '245', '73', '2052', '', '1260', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326859', '入魔蛮族战士', '1280', '80', '130', '21', '247', '76', '2226', '', '1280', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326860', '入魔蛮族战士', '1280', '80', '130', '21', '247', '76', '2226', '', '1280', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326861', '入魔蛮族战士', '1280', '80', '130', '21', '247', '76', '2226', '', '1280', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326862', '入魔蛮族战士', '1280', '80', '130', '21', '247', '76', '2226', '', '1280', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326893', '赤炼蝮蛇妖', '2590', '224', '201', '33', '263', '87', '3498', '', '2590', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326898', '赤炼蝮蛇妖', '2590', '224', '201', '33', '263', '87', '3498', '', '2590', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326899', '赤炼蝮蛇妖', '2590', '224', '201', '33', '263', '87', '3498', '', '2590', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327779', '水幽灵', '1800', '500', '260', '48', '299', '54', '5184', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002326914', '百年穿山甲', '2690', '150', '330', '34', '264', '88', '3672', '', '2690', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326916', '百年穿山甲', '2690', '150', '330', '34', '264', '88', '3672', '', '2690', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326917', '百年穿山甲', '2690', '150', '330', '34', '264', '88', '3672', '', '2690', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326923', '青古虎', '3400', '238', '214', '35', '265', '89', '3710', '', '3400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326924', '青古虎', '3400', '238', '214', '35', '265', '89', '3710', '', '3400', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326925', '烈珠鹰', '3560', '252', '226', '37', '265', '90', '3922', '', '3560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326926', '烈珠鹰', '3560', '252', '226', '37', '265', '90', '3922', '', '3560', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326956', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326957', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326958', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326959', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326960', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326961', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326962', '赤鳞兽', '1700', '106', '174', '28', '255', '82', '3024', '', '1700', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002326998', '大队长', '5800', '440', '405', '50', '272', '98', '5400', '', '5800', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327042', '白豹妖', '3810', '258', '232', '38', '266', '91', '4066', '', '3810', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327043', '白豹妖', '3810', '258', '232', '38', '266', '91', '4066', '', '3810', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327046', '雷萝妖', '4210', '265', '238', '39', '266', '92', '4173', '', '4210', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327052', '血鸦', '4100', '272', '244', '40', '268', '93', '4240', '', '4100', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327053', '血鸦', '4100', '272', '244', '40', '268', '93', '4240', '', '4100', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327054', '血鸦', '4100', '272', '244', '40', '268', '93', '4240', '', '4100', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327057', '寻宝鼠', '6000', '450', '350', '51', '274', '100', '5508', '', '6000', '10', '50', '0');
INSERT INTO `midguaiwu` VALUES ('00002327058', '寻宝鼠', '6000', '450', '350', '51', '274', '100', '5508', '', '6000', '10', '50', '0');
INSERT INTO `midguaiwu` VALUES ('00002327059', '寻宝鼠', '6000', '450', '350', '51', '274', '100', '5508', '', '6000', '10', '50', '0');
INSERT INTO `midguaiwu` VALUES ('00002327060', '九幽\r\r\n地冥蟒', '6450', '580', '490', '56', '281', '119', '5936', '', '6450', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327061', '九幽\r\r\n地冥蟒', '6450', '580', '490', '56', '281', '119', '5936', '', '6450', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327074', '冰霜蛇妖', '8410', '680', '421', '54', '314', '117', '5778', '', '8410', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327075', '冰霜蛇妖', '8410', '680', '421', '54', '314', '117', '5778', '', '8410', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327288', '墨蛟', '8000', '578', '400', '60', '279', '123', '6420', '', '8000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327289', '墨蛟', '8000', '578', '400', '60', '279', '123', '6420', '', '8000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327290', '墨蛟', '8000', '578', '400', '60', '279', '123', '6420', '', '8000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327291', '墨蛟', '8000', '578', '400', '60', '279', '123', '6420', '', '8000', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327473', '棘鼠', '1860', '110', '180', '29', '256', '83', '3103', '', '1860', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327474', '棘鼠', '1860', '110', '180', '29', '256', '83', '3103', '', '1860', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327475', '棘鼠', '1860', '110', '180', '29', '256', '83', '3103', '', '1860', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327476', '棘鼠', '1860', '110', '180', '29', '256', '83', '3103', '', '1860', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327477', '棘鼠', '1860', '110', '180', '29', '256', '83', '3103', '', '1860', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327600', '怨灵', '1900', '968', '625', '30', '257', '84', '3180', '', '1900', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327601', '怨灵', '1900', '968', '625', '30', '257', '84', '3180', '', '1900', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327602', '怨灵', '1900', '968', '625', '30', '257', '84', '3180', '', '1900', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327603', '怨灵', '1900', '968', '625', '30', '257', '84', '3180', '', '1900', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327604', '怨灵', '1900', '968', '625', '30', '257', '84', '3180', '', '1900', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327605', '怨灵', '1900', '968', '625', '30', '257', '84', '3180', '', '1900', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327622', '水幽灵', '1800', '500', '260', '48', '270', '54', '5088', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327623', '水幽灵', '1800', '500', '260', '48', '270', '54', '5088', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327624', '水幽灵', '1800', '500', '260', '48', '270', '54', '5088', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327625', '水幽灵', '1800', '500', '260', '48', '270', '54', '5088', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327626', '水幽灵', '1800', '500', '260', '48', '270', '54', '5088', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327627', '寻宝鼠', '6000', '450', '350', '51', '270', '100', '5508', '', '6000', '10', '50', '0');
INSERT INTO `midguaiwu` VALUES ('00002327630', '瑶瑶草', '9000', '1000', '500', '95', '291', '105', '10070', '', '9000', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327632', '天妖凰族', '6687', '651', '458', '57', '278', '120', '6156', '', '6687', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327633', '太虚古龙', '6910', '648', '480', '58', '278', '121', '6206', '', '6910', '0', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327634', '洞穴老怪', '15000', '900', '750', '100', '303', '103', '10600', '', '15000', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327740', '洞穴恶蜂', '13500', '1250', '800', '94', '305', '104', '9964', '', '13500', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327749', '深谷蛟龙', '10000', '1190', '700', '100', '309', '102', '10700', '', '10000', '20', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327750', '洞穴恶蜂', '13500', '1250', '800', '94', '308', '104', '10058', '', '13500', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327751', '修仙?树人', '50000', '1100', '990', '97', '308', '111', '10379', '', '50000', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327753', '七十二洞兽魔', '12000', '950', '650', '92', '307', '113', '9936', '', '12000', '5', '3', '0');
INSERT INTO `midguaiwu` VALUES ('00002327754', '七十二洞兽魔', '12000', '950', '650', '92', '307', '113', '9936', '', '12000', '5', '3', '0');
INSERT INTO `midguaiwu` VALUES ('00002327759', '瑶瑶草', '9000', '1000', '500', '95', '306', '105', '10260', '', '9000', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327760', '奇奇花', '15000', '1300', '550', '96', '306', '108', '10368', '', '15000', '5', '5', '0');
INSERT INTO `midguaiwu` VALUES ('00002327774', '山猪', '240', '10', '14', '1', '228', '56', '108', '', '240', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327773', '山猪', '240', '10', '14', '1', '228', '56', '108', '', '240', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327772', '山猪', '240', '10', '14', '1', '228', '56', '108', '', '240', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327771', '山猪', '240', '10', '14', '1', '228', '56', '108', '', '240', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('00002327778', '水幽灵', '1800', '500', '260', '48', '299', '54', '5088', '', '1800', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327775', '狐妖', '500', '1', '1', '1', '225', '53', '107', '', '500', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327776', '狐妖', '500', '1', '1', '1', '225', '53', '107', '', '500', '10', '10', '0');
INSERT INTO `midguaiwu` VALUES ('00002327780', '水幽灵', '1800', '500', '260', '48', '299', '54', '5184', '', '1800', '10', '10', '0');

-- ----------------------------
-- Table structure for npc
-- ----------------------------
DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nname` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nsex` varchar(255) NOT NULL,
  `ninfo` text CHARACTER SET utf8 NOT NULL,
  `muban` varchar(255) NOT NULL DEFAULT '',
  `taskid` varchar(255) NOT NULL DEFAULT '',
  `mz` text CHARACTER SET utf8mb4 NOT NULL,
  `rwqy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of npc
-- ----------------------------
INSERT INTO `npc` VALUES ('5', '神秘人', '未知', '一个神秘的商人？魔王？', 'gaiming.php', '', '', null);
INSERT INTO `npc` VALUES ('6', '深谷土地', '男', '深谷的土地管理者，洞悉这一带情况。', 'zl3.php', '39,40', '', null);
INSERT INTO `npc` VALUES ('7', '村长老婆', '女', '好无聊啊，有没有人。', 'tanchu.php', '', '', null);
INSERT INTO `npc` VALUES ('8', '矛十八', '男', '武功平庸，忠勇而精明不足。', 'zhuanpan.php', '', '', null);
INSERT INTO `npc` VALUES ('9', '菏官', '女', '年芳十八，城市一绝。', 'aomen.php', '34,35,36', '', null);
INSERT INTO `npc` VALUES ('10', '奶妈', '女', '奶妈就是有超能力，啵啵啵', 'cs.php<br>cs.php暂停', '35', '奶妈.png', null);
INSERT INTO `npc` VALUES ('11', '村长', '男', '村长', '', '13,23,24,28,33', '奶妈.png', null);
INSERT INTO `npc` VALUES ('13', '王老五', '男', '唉……一个人的日子，真的好难。', '', '24,37,38', '', null);
INSERT INTO `npc` VALUES ('14', '赫炳', '男', '唉，整天站在这里真是无聊。', '', '28', '', null);
INSERT INTO `npc` VALUES ('15', '周富贵[商人]', '男', '来来来   便宜', 'sd.php', '36,37', '', null);
INSERT INTO `npc` VALUES ('16', '聚仙城主[符箓]', '男', '聚仙城城主', 'jndh.php', '40', '', null);
INSERT INTO `npc` VALUES ('17', '云游仙医[治疗]', '男', '云游的仙医，似乎在哪都能看见他', 'zl.php', '', '', null);
INSERT INTO `npc` VALUES ('18', '王大妈', '女', '王大妈', '', '24,29,34', '', null);
INSERT INTO `npc` VALUES ('19', '符箓大师', '男', '技能大师，负责兑换技能', 'jndh.php', '', '', null);
INSERT INTO `npc` VALUES ('20', '小蛮', '女', '小蛮好怕...', '', '20', '', null);
INSERT INTO `npc` VALUES ('21', '蛮族长老', '男', '蛮族长老', '', '19', '', null);
INSERT INTO `npc` VALUES ('22', '蛮族猎手', '男', '老了,干不动了', '', '21', '', null);
INSERT INTO `npc` VALUES ('23', '兑换大使', '男', '兑换大使', '', '27', '', null);
INSERT INTO `npc` VALUES ('24', '正规仙医', '男', '正规仙医\r\n比云游的更在行', 'zl1.php', '', '', null);
INSERT INTO `npc` VALUES ('25', '城主雪琴', '女', '城炎阳城的城主,雪琴', '', '', '', null);
INSERT INTO `npc` VALUES ('26', '门派管理员', '男', '门派管理', 'mpgly.php', '38,39', '', null);
INSERT INTO `npc` VALUES ('27', '张三', '男', '法外狂徒', '', '30', '', null);
INSERT INTO `npc` VALUES ('28', '张大妈', '女', '高级顾问', '', '33', '', null);
INSERT INTO `npc` VALUES ('29', '小潘', '女', 'CDK活动', '', '32', '', null);
INSERT INTO `npc` VALUES ('30', '西公子', '男', '正经人，可不是装de！', '', '', '', null);
INSERT INTO `npc` VALUES ('31', '唐寅', '男', '太难了，肚子里没有墨水了', 'zhuanpan.php', '31', '', null);

-- ----------------------------
-- Table structure for playerchongwu
-- ----------------------------
DROP TABLE IF EXISTS `playerchongwu`;
CREATE TABLE `playerchongwu` (
  `cwid` int(11) NOT NULL AUTO_INCREMENT,
  `cwname` varchar(255) NOT NULL,
  `cwhp` int(11) NOT NULL,
  `cwmaxhp` int(11) NOT NULL,
  `cwgj` int(11) NOT NULL,
  `cwfy` int(11) NOT NULL,
  `cwbj` int(11) NOT NULL,
  `cwxx` int(11) NOT NULL,
  `cwlv` int(11) NOT NULL,
  `cwexp` int(11) NOT NULL,
  `tool1` int(11) NOT NULL,
  `tool2` int(11) NOT NULL,
  `tool3` int(11) NOT NULL,
  `tool4` int(11) NOT NULL,
  `tool5` int(11) NOT NULL,
  `tool6` int(11) NOT NULL,
  `tool7` int(11) NOT NULL DEFAULT '0',
  `sid` varchar(255) NOT NULL,
  `uphp` int(11) NOT NULL,
  `upgj` int(11) NOT NULL,
  `upfy` int(11) NOT NULL,
  `cwpz` int(11) NOT NULL,
  `cwmaxexp` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cwid`)
) ENGINE=MyISAM AUTO_INCREMENT=526 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of playerchongwu
-- ----------------------------
INSERT INTO `playerchongwu` VALUES ('2', '笨笨牛', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a0f5700982d69976ce54c08cb1c2bbb0', '21', '3', '3', '0', '');
INSERT INTO `playerchongwu` VALUES ('14', '乖乖狗', '300', '300', '30', '36', '0', '0', '9', '10014', '0', '0', '0', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '18', '2', '3', '4', '');
INSERT INTO `playerchongwu` VALUES ('17', '蛋蛋鸡', '-22560', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '15', '3', '7', '4', '');
INSERT INTO `playerchongwu` VALUES ('64', '酷酷龙', '274', '478', '96', '166', '0', '0', '19', '8624', '0', '0', '0', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '16', '4', '7', '3', '');
INSERT INTO `playerchongwu` VALUES ('73', '笨笨牛', '-67353', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '25', '5', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('74', '跳跳兔', '-67353', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '12', '2', '5', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('75', '酷酷龙', '176', '188', '20', '22', '0', '0', '5', '2156', '0', '0', '0', '0', '0', '0', '0', '8090f13824dc62c1bdd7b3db5a101fd7', '17', '2', '4', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('76', '招财猪', '-108', '160', '32', '46', '0', '0', '6', '5509', '0', '0', '0', '0', '0', '0', '0', 'd1d51188e1fb089f7ad442c257683417', '11', '4', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('77', '笨笨牛', '190', '190', '30', '49', '0', '0', '6', '1300', '0', '0', '0', '0', '0', '0', '0', '70619bdc2bdd92dcc83489657743848d', '13', '2', '6', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('78', '威威虎', '-5591', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '70619bdc2bdd92dcc83489657743848d', '18', '5', '7', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('79', '威威虎', '86', '100', '10', '4', '0', '0', '1', '195', '0', '0', '0', '0', '0', '0', '0', '8db89ecf31a6a27cf2d3f68c095843b9', '22', '4', '5', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('80', '招财猪', '-466', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8db89ecf31a6a27cf2d3f68c095843b9', '20', '2', '8', '5', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('81', '花花蛇', '128', '142', '26', '28', '0', '0', '3', '2114', '0', '0', '0', '0', '0', '0', '0', 'd580de813e3c794d847c3cd35dfe5fb0', '16', '4', '7', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('83', '威威虎', '-1295', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'd580de813e3c794d847c3cd35dfe5fb0', '11', '3', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('85', '蛋蛋鸡', '-13297', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '22', '3', '3', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('86', '招财猪', '-13297', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '9', '3', '6', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('87', '招财猪', '-13297', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '23', '3', '6', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('88', '招财猪', '190', '400', '42', '120', '0', '0', '13', '24807', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '23', '2', '8', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('89', '乖乖狗', '-13297', '100', '14', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '21', '5', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('90', '花花蛇', '-13297', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '24', '2', '7', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('91', '乖乖狗', '-13297', '100', '17', '11', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '17', '3', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('92', '咩咩羊', '-13297', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '12', '5', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('93', '咩咩羊', '-13297', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '20', '4', '6', '5', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('94', '帅帅猴', '-8743', '163', '32', '54', '0', '0', '8', '3728', '0', '0', '0', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '8', '3', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('95', '笨笨牛', '-4432', '496', '102', '162', '0', '0', '23', '69651', '0', '0', '0', '0', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '18', '4', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('96', '帅帅猴', '-1496', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b6d9f0bb1852a15b241410b3b07a21f8', '16', '2', '3', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('97', '跳跳兔', '-1923', '146', '16', '10', '0', '0', '3', '1076', '0', '0', '0', '0', '0', '0', '0', '08b46397b9704ed9b6230e3864dfde52', '23', '4', '4', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('98', '乖乖狗', '-36539', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '18', '2', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('99', '咩咩羊', '-36539', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '18', '4', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('100', '伶俐鼠', '-810', '100', '8', '2', '0', '0', '1', '119', '0', '0', '0', '0', '0', '0', '0', '2584819298592ea557f2c1d6ae08bbfe', '22', '2', '6', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('101', '帅帅猴', '242', '271', '26', '65', '0', '0', '10', '11407', '0', '0', '0', '0', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '16', '2', '6', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('102', '乖乖狗', '-22793', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '23', '4', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('103', '溜溜马', '-454', '151', '28', '28', '0', '0', '4', '43', '0', '0', '0', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '12', '3', '4', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('109', '跳跳兔', '-16253', '550', '123', '153', '0', '0', '19', '51490', '0', '0', '0', '0', '0', '0', '0', '929610ec747f6e087aebb1af550673fa', '18', '4', '6', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('123', '花花蛇', '236', '238', '24', '42', '0', '0', '7', '8324', '0', '0', '0', '0', '0', '0', '0', 'f991c4f27c28fb7eae2cbc3f80d00245', '19', '2', '5', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('124', '咩咩羊', '-49473', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '929610ec747f6e087aebb1af550673fa', '21', '2', '6', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('125', '伶俐鼠', '-49473', '100', '14', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '929610ec747f6e087aebb1af550673fa', '8', '4', '8', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('131', '威威虎', '-1580', '828', '147', '115', '0', '0', '27', '7721', '0', '0', '0', '0', '0', '0', '0', '111111', '23', '4', '3', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('132', '招财猪', '-44407', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '111111', '23', '3', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('133', '乖乖狗', '100', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '08b46397b9704ed9b6230e3864dfde52', '19', '4', '5', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('134', '乖乖狗', '126', '130', '19', '15', '0', '0', '3', '2232', '0', '0', '0', '0', '0', '0', '0', '98e3c23a97294ce8109186ba55d8530f', '14', '5', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('135', '跳跳兔', '-5429', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '98e3c23a97294ce8109186ba55d8530f', '18', '3', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('136', '跳跳兔', '148', '152', '15', '21', '0', '0', '3', '2212', '0', '0', '0', '0', '0', '0', '0', '77584b0fdec3e5bbf4f256da2fc3fc09', '22', '2', '7', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('137', '乖乖狗', '-776', '117', '22', '17', '0', '0', '2', '89', '0', '0', '0', '0', '0', '0', '0', 'b624121f7f5c40f8c6ac507f6cab45f5', '15', '2', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('150', '咩咩羊', '-1152', '564', '83', '141', '0', '0', '17', '23454', '0', '0', '0', '0', '0', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '21', '3', '6', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('180', '酷酷龙', '46', '100', '8', '2', '0', '0', '1', '318', '0', '0', '0', '0', '0', '0', '0', '7660cbcbcfec945cbdac430361da363f', '12', '4', '3', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('187', '招财猪', '160', '160', '37', '55', '0', '0', '5', '3491', '0', '0', '0', '0', '0', '0', '0', '72e2a2bb613ef6ed768ba27a20fbe7de', '11', '3', '7', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('188', '威威虎', '94', '100', '19', '13', '0', '0', '1', '216', '0', '0', '0', '0', '0', '0', '0', 'a86db6a86e4d32c7b409d3822ed5bba2', '14', '2', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('189', '跳跳兔', '-38', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a86db6a86e4d32c7b409d3822ed5bba2', '14', '4', '8', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('190', '溜溜马', '100', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '704825b240505b4599c32a64fb882c2c', '20', '3', '6', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('200', '跳跳兔', '233', '235', '56', '77', '0', '0', '10', '1631', '0', '0', '0', '0', '0', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '10', '3', '5', '5', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('205', '伶俐鼠', '334', '386', '77', '71', '0', '0', '14', '20096', '0', '0', '0', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '22', '5', '5', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('214', '咩咩羊', '100', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '15', '4', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('215', '溜溜马', '100', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '19', '2', '6', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('216', '花花蛇', '100', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '18', '2', '8', '5', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('217', '酷酷龙', '100', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '16', '5', '5', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('228', '威威虎', '-19481', '113', '18', '12', '0', '0', '2', '904', '0', '0', '0', '0', '0', '0', '0', '771086b453fb6d53d76bf46880cf4b41', '10', '3', '3', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('232', '花花蛇', '100', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '14', '4', '7', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('238', '笨笨牛', '100', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '16', '2', '5', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('261', '乖乖狗', '100', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '16', '3', '3', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('265', '蛋蛋鸡', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '923eb396db35867b31b310d8fb8260d2', '21', '5', '4', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('266', '招财猪', '-25811212', '1519', '227', '436', '0', '0', '44', '10539', '0', '0', '0', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '25', '4', '8', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('274', '花花蛇', '-25808763', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '20', '3', '3', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('278', '酷酷龙', '584', '1526', '288', '374', '0', '0', '47', '68658', '0', '0', '0', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '22', '4', '6', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('298', '花花蛇', '75', '180', '38', '32', '0', '0', '5', '5276', '0', '0', '0', '0', '0', '0', '0', 'd9bc42eda8a25d32618518f4ae68b92a', '17', '4', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('300', '帅帅猴', '100', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'f7fed9ff73c268ee01eaa000afd54d6f', '11', '3', '5', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('301', '伶俐鼠', '100', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'f7fed9ff73c268ee01eaa000afd54d6f', '24', '2', '4', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('302', '酷酷龙', '-24519368', '287', '32', '59', '0', '0', '12', '15484', '0', '0', '0', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '14', '2', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('316', '跳跳兔', '-12413', '1572', '250', '428', '0', '0', '47', '588194', '0', '0', '0', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '21', '3', '6', '5', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('332', '帅帅猴', '-13729', '364', '87', '105', '0', '0', '25', '23475', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '8', '2', '3', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('341', '笨笨牛', '-1921181', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '17', '2', '4', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('342', '乖乖狗', '-1921181', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '12', '3', '8', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('343', '酷酷龙', '-1921181', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '9', '2', '4', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('347', '蛋蛋鸡', '100', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a1cf65d31ba46d90e465db5279329470', '10', '5', '3', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('352', '溜溜马', '-1833581', '100', '17', '11', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '18', '2', '5', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('355', '蛋蛋鸡', '-1833581', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '21', '5', '3', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('357', '蛋蛋鸡', '-1833581', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '22', '3', '8', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('360', '伶俐鼠', '-78084', '276', '31', '57', '0', '0', '9', '6255', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '20', '3', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('362', '跳跳兔', '10', '166', '19', '13', '0', '0', '4', '1099', '0', '0', '0', '0', '0', '0', '0', '6dd9bd98618400f882c43aa6444d4948', '20', '3', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('371', '咩咩羊', '-472142', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '16', '5', '8', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('373', '咩咩羊', '-75400', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '16', '3', '5', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('374', '咩咩羊', '-45555', '220', '91', '85', '0', '0', '13', '11154', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '8', '5', '5', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('376', '伶俐鼠', '-44325', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '13', '3', '3', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('377', '威威虎', '-44325', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '16', '4', '8', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('378', '跳跳兔', '-722', '478', '77', '113', '0', '0', '15', '29548', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '21', '3', '5', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('382', '伶俐鼠', '100', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '25', '2', '6', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('383', '溜溜马', '100', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '20', '2', '6', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('384', '帅帅猴', '100', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '25', '4', '3', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('388', '笨笨牛', '100', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '25', '3', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('389', '花花蛇', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '17', '2', '3', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('390', '蛋蛋鸡', '100', '100', '14', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '11', '5', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('391', '乖乖狗', '100', '100', '12', '6', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '11', '4', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('392', '伶俐鼠', '100', '100', '20', '14', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '24', '4', '8', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('393', '乖乖狗', '100', '100', '12', '6', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '24', '2', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('394', '蛋蛋鸡', '100', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '23', '5', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('397', '招财猪', '100', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '17', '4', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('398', '威威虎', '100', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '22', '5', '5', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('399', '帅帅猴', '100', '100', '12', '6', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '20', '3', '5', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('400', '酷酷龙', '100', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '12', '5', '8', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('402', '威威虎', '100', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '16', '3', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('403', '伶俐鼠', '100', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '11', '5', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('404', '咩咩羊', '100', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '8', '5', '3', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('406', '笨笨牛', '100', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '22', '5', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('408', '乖乖狗', '100', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '24', '4', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('409', '伶俐鼠', '100', '100', '17', '11', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '19', '5', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('412', '溜溜马', '100', '100', '14', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '15', '5', '7', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('413', '威威虎', '100', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '23', '3', '3', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('416', '威威虎', '100', '100', '12', '6', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '16', '4', '7', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('417', '溜溜马', '100', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '17', '3', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('418', '蛋蛋鸡', '100', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '9', '3', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('420', '帅帅猴', '100', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '21', '3', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('421', '酷酷龙', '100', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '16', '5', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('423', '溜溜马', '100', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '8', '2', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('426', '笨笨牛', '100', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '23', '4', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('428', '乖乖狗', '100', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '19', '3', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('429', '跳跳兔', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '16', '3', '4', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('431', '花花蛇', '100', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '25', '3', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('433', '招财猪', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '12', '4', '8', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('434', '咩咩羊', '100', '100', '20', '14', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '25', '4', '8', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('435', '笨笨牛', '100', '100', '17', '11', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '10', '3', '5', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('438', '跳跳兔', '100', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '22', '2', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('439', '蛋蛋鸡', '100', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '20', '5', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('440', '笨笨牛', '100', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '11', '4', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('443', '乖乖狗', '100', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '18', '4', '3', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('444', '乖乖狗', '100', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '12', '4', '6', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('445', '伶俐鼠', '100', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '25', '5', '5', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('448', '花花蛇', '100', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '24', '2', '8', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('450', '伶俐鼠', '100', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '12', '3', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('451', '乖乖狗', '100', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '16', '4', '6', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('452', '帅帅猴', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '15', '3', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('455', '帅帅猴', '-161', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '12', '4', '6', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('456', '跳跳兔', '-161', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '24', '5', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('457', '跳跳兔', '-161', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '9', '2', '4', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('458', '溜溜马', '117', '131', '12', '13', '0', '0', '2', '210', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '22', '3', '8', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('459', '蛋蛋鸡', '-161', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '20', '2', '5', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('460', '笨笨牛', '-161', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '12', '5', '3', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('461', '招财猪', '-161', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '13', '5', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('463', '乖乖狗', '-161', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '20', '2', '3', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('465', '溜溜马', '100', '100', '14', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '13ca4b7ef4d57e20f442a787cf8c88ac', '23', '4', '7', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('471', '咩咩羊', '100', '100', '14', '8', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '13ca4b7ef4d57e20f442a787cf8c88ac', '10', '4', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('473', '咩咩羊', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '13ca4b7ef4d57e20f442a787cf8c88ac', '21', '4', '5', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('477', '笨笨牛', '100', '100', '12', '6', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '14', '5', '8', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('478', '酷酷龙', '100', '100', '19', '13', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '12', '5', '5', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('479', '跳跳兔', '100', '100', '20', '14', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '16', '5', '3', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('480', '笨笨牛', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '11', '3', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('481', '跳跳兔', '100', '100', '9', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '10', '4', '5', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('483', '跳跳兔', '100', '100', '18', '12', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '10', '5', '7', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('485', '蛋蛋鸡', '100', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '25', '2', '7', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('486', '咩咩羊', '100', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '9', '2', '8', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('488', '招财猪', '100', '100', '13', '7', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '13', '4', '6', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('501', '酷酷龙', '-3388', '148', '24', '18', '0', '0', '4', '2666', '0', '0', '0', '0', '0', '0', '0', '1ac81512a158e2622c17a49ba9b7eaf8', '13', '4', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('503', '蛋蛋鸡', '-1078107', '205', '60', '40', '0', '0', '8', '5843', '0', '0', '0', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '14', '5', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('505', '笨笨牛', '-7673', '738', '171', '143', '0', '0', '23', '55595', '0', '0', '0', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '21', '5', '4', '4', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('508', '花花蛇', '-1078125', '100', '11', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '17', '3', '8', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('509', '伶俐鼠', '-1078125', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '16', '3', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('514', '酷酷龙', '-2771', '100', '10', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '23', '4', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('515', '咩咩羊', '-2771', '100', '20', '14', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '23', '5', '5', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('516', '帅帅猴', '-2771', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '12', '5', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('517', '蛋蛋鸡', '-2771', '100', '16', '10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '20', '2', '5', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('518', '威威虎', '-2747', '100', '16', '10', '0', '0', '1', '268', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '21', '3', '6', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('519', '伶俐鼠', '-2771', '100', '15', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '22', '2', '6', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('520', '帅帅猴', '-2771', '100', '21', '15', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '20', '4', '7', '0', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('521', '威威虎', '100', '100', '8', '2', '0', '0', '1', '108', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '20', '5', '4', '2', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('522', '跳跳兔', '-2723', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '23', '4', '7', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('523', '招财猪', '100', '100', '8', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'd7e14e0899708a60b1369af7ca3f7e40', '12', '2', '4', '1', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('524', '乖乖狗', '-371', '100', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'dc249c2d5f1cea91a8f150a1e95dc978', '9', '5', '8', '3', 'cwmaxexp');
INSERT INTO `playerchongwu` VALUES ('525', '笨笨牛', '-826', '100', '6', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'dc249c2d5f1cea91a8f150a1e95dc978', '15', '3', '8', '1', 'cwmaxexp');

-- ----------------------------
-- Table structure for playerdaoju
-- ----------------------------
DROP TABLE IF EXISTS `playerdaoju`;
CREATE TABLE `playerdaoju` (
  `djname` varchar(255) NOT NULL,
  `djzl` varchar(255) NOT NULL,
  `djinfo` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` text NOT NULL,
  `djsum` int(11) NOT NULL,
  `djid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`djid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerdaoju
-- ----------------------------
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '0', '111111', '346', '1');
INSERT INTO `playerdaoju` VALUES ('初级残页符箓', '', '换东西', '0', '111111', '150', '6');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '419', '087efeb819f49c1789df1f599ec15388', '0', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '422', '771086b453fb6d53d76bf46880cf4b41', '505', '1');
INSERT INTO `playerdaoju` VALUES ('初级残页符箓', '', '换东西', '422', '771086b453fb6d53d76bf46880cf4b41', '6', '6');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '426', 'a2377a650da6bb0ad4fe0514f971f858', '10', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '426', 'a2377a650da6bb0ad4fe0514f971f858', '1', '7');
INSERT INTO `playerdaoju` VALUES ('筑基突破丹', '20', '突破筑基期时候使用的关键内丹', '426', 'a2377a650da6bb0ad4fe0514f971f858', '28', '20');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '427', '70619bdc2bdd92dcc83489657743848d', '13', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '427', '70619bdc2bdd92dcc83489657743848d', '2', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '427', '70619bdc2bdd92dcc83489657743848d', '2', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '431', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '20', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '438', 'b624121f7f5c40f8c6ac507f6cab45f5', '230', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '440', 'b3897bd53e13f8c92b92933d4e9b7167', '50', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '441', '111111', '347', '1');
INSERT INTO `playerdaoju` VALUES ('初级残页符箓', '', '换东西', '441', '111111', '151', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '441', '111111', '6', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '441', '111111', '6', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '442', '08b46397b9704ed9b6230e3864dfde52', '395', '1');
INSERT INTO `playerdaoju` VALUES ('初级残页符箓', '', '换东西', '442', '08b46397b9704ed9b6230e3864dfde52', '0', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '442', '08b46397b9704ed9b6230e3864dfde52', '1', '7');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '448', 'a0f5700982d69976ce54c08cb1c2bbb0', '200', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '448', 'a0f5700982d69976ce54c08cb1c2bbb0', '100', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '448', 'a0f5700982d69976ce54c08cb1c2bbb0', '100', '7');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '450', '1d75409bd985acf3644f25f2a87b6552', '4', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '457', 'e8d7c6fb768be55653f7cb2f7164bd1d', '280', '1');
INSERT INTO `playerdaoju` VALUES ('初级残页符箓', '', '换东西', '457', 'e8d7c6fb768be55653f7cb2f7164bd1d', '100', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '457', 'e8d7c6fb768be55653f7cb2f7164bd1d', '52', '7');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '457', 'e8d7c6fb768be55653f7cb2f7164bd1d', '1', '9');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '458', '4e8fe201aac55b7ddf0a721fe2dde89d', '19', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '459', '39f73d46e13bed758f42d5695f3f43f0', '148', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '459', '39f73d46e13bed758f42d5695f3f43f0', '150', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '459', '39f73d46e13bed758f42d5695f3f43f0', '150', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '459', '39f73d46e13bed758f42d5695f3f43f0', '5', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '462', 'a86db6a86e4d32c7b409d3822ed5bba2', '6', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '463', '7083fa1a1d41824363cd4df0ef5e5d90', '51', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '463', '7083fa1a1d41824363cd4df0ef5e5d90', '2', '6');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '464', '54b9e0e2999c06a210aff10c2bd70578', '50', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '465', '38171773e6842eb588ccc4ec4a7f48a8', '74', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '465', '38171773e6842eb588ccc4ec4a7f48a8', '3', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '465', '38171773e6842eb588ccc4ec4a7f48a8', '2', '7');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '467', '043c4eac8ffaa70af1ccb3e0eef0a364', '284', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '467', '043c4eac8ffaa70af1ccb3e0eef0a364', '100', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '467', '043c4eac8ffaa70af1ccb3e0eef0a364', '100', '7');
INSERT INTO `playerdaoju` VALUES ('丝巾', '13', '贴身装备', '467', '043c4eac8ffaa70af1ccb3e0eef0a364', '2', '13');
INSERT INTO `playerdaoju` VALUES ('盾土残章', '15', '可获得盾土术', '467', '043c4eac8ffaa70af1ccb3e0eef0a364', '1', '15');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '468', 'b8a188334584e024060c33c6b3a9bbc5', '419', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '468', 'b8a188334584e024060c33c6b3a9bbc5', '44', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '468', 'b8a188334584e024060c33c6b3a9bbc5', '100', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '468', 'b8a188334584e024060c33c6b3a9bbc5', '6', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '468', 'b8a188334584e024060c33c6b3a9bbc5', '1', '9');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '469', '8090f13824dc62c1bdd7b3db5a101fd7', '55', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '470', 'd1d51188e1fb089f7ad442c257683417', '38', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '470', 'd1d51188e1fb089f7ad442c257683417', '3', '6');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '473', '8db89ecf31a6a27cf2d3f68c095843b9', '17', '1');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '473', '8db89ecf31a6a27cf2d3f68c095843b9', '2', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '475', 'd580de813e3c794d847c3cd35dfe5fb0', '9', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '475', 'd580de813e3c794d847c3cd35dfe5fb0', '100', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '475', 'd580de813e3c794d847c3cd35dfe5fb0', '100', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '475', 'd580de813e3c794d847c3cd35dfe5fb0', '5', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '476', '0b82a8fd07dfafc237a5dcc15b332ce8', '14', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '479', 'a1cf65d31ba46d90e465db5279329470', '10', '1');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '480', 'cb5927f98eb22d2870b0547c6ab6f7f1', '1', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '481', 'f52f24af276734367a122e13b0af67d2', '264', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '481', 'f52f24af276734367a122e13b0af67d2', '0', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '481', 'f52f24af276734367a122e13b0af67d2', '4', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '481', 'f52f24af276734367a122e13b0af67d2', '7', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '482', '8361f38084bda036106506df54fcd779', '62', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '483', 'b6d9f0bb1852a15b241410b3b07a21f8', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '484', '2584819298592ea557f2c1d6ae08bbfe', '105', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '485', '929610ec747f6e087aebb1af550673fa', '64', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '485', '929610ec747f6e087aebb1af550673fa', '2', '6');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '485', '929610ec747f6e087aebb1af550673fa', '2', '8');
INSERT INTO `playerdaoju` VALUES ('残墨', '14', '可换取画册', '485', '929610ec747f6e087aebb1af550673fa', '2', '14');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '487', 'f991c4f27c28fb7eae2cbc3f80d00245', '296', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '487', 'f991c4f27c28fb7eae2cbc3f80d00245', '300', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '487', 'f991c4f27c28fb7eae2cbc3f80d00245', '300', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '487', 'f991c4f27c28fb7eae2cbc3f80d00245', '1', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '488', '98e3c23a97294ce8109186ba55d8530f', '100', '1');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '488', '98e3c23a97294ce8109186ba55d8530f', '2', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '489', '77584b0fdec3e5bbf4f256da2fc3fc09', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '492', '1d3b7593022084ce21637b975b82a533', '397', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '492', '1d3b7593022084ce21637b975b82a533', '135', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '492', '1d3b7593022084ce21637b975b82a533', '151', '7');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '494', 'fce6f2da3b931558b5ec44dfa71b0646', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '498', '3fbbf11bd57912b4677e195e091fc41a', '3', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '503', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '504', '6f6b750a6a23e083c483f9f2885440e0', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '505', '7660cbcbcfec945cbdac430361da363f', '100', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '506', '72e2a2bb613ef6ed768ba27a20fbe7de', '2', '6');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '506', '72e2a2bb613ef6ed768ba27a20fbe7de', '1', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '509', 'ded62d071f32ba11a20f5c75cc36153f', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '510', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '361', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '514', 'af976a314459ca05fc3563f0d6fd7e39', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '515', '0d471de3efe5dcf749e6fa60fde8ae76', '19', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '515', '0d471de3efe5dcf749e6fa60fde8ae76', '151', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '515', '0d471de3efe5dcf749e6fa60fde8ae76', '152', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '515', '0d471de3efe5dcf749e6fa60fde8ae76', '10', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '516', '923eb396db35867b31b310d8fb8260d2', '200', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '517', 'acea4cf5bfd750233ebc90c1361cd568', '52', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '517', 'acea4cf5bfd750233ebc90c1361cd568', '0', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '517', 'acea4cf5bfd750233ebc90c1361cd568', '6', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '517', 'acea4cf5bfd750233ebc90c1361cd568', '10', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '517', 'acea4cf5bfd750233ebc90c1361cd568', '6', '9');
INSERT INTO `playerdaoju` VALUES ('符箓残页-中级灵', '10', '符箓残页-中级灵', '517', 'acea4cf5bfd750233ebc90c1361cd568', '2', '10');
INSERT INTO `playerdaoju` VALUES ('[神器]妖王剑碎片', '12', '[神器]妖王剑碎片', '517', 'acea4cf5bfd750233ebc90c1361cd568', '7', '12');
INSERT INTO `playerdaoju` VALUES ('盾土残章', '15', '可获得盾土术', '517', 'acea4cf5bfd750233ebc90c1361cd568', '1', '15');
INSERT INTO `playerdaoju` VALUES ('筑基突破丹', '', '突破筑基期时候使用的关键内丹', '517', 'acea4cf5bfd750233ebc90c1361cd568', '1', '20');
INSERT INTO `playerdaoju` VALUES ('金丹突破丹', '21', '突破金丹期时候使用的关键内丹', '517', 'acea4cf5bfd750233ebc90c1361cd568', '0', '21');
INSERT INTO `playerdaoju` VALUES ('元婴突破丹', '22', '突破元婴期时候使用的关键内丹', '517', 'acea4cf5bfd750233ebc90c1361cd568', '5', '22');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '518', 'd9bc42eda8a25d32618518f4ae68b92a', '163', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '518', 'd9bc42eda8a25d32618518f4ae68b92a', '102', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '518', 'd9bc42eda8a25d32618518f4ae68b92a', '100', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '518', 'd9bc42eda8a25d32618518f4ae68b92a', '4', '8');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '1');
INSERT INTO `playerdaoju` VALUES ('初级残页符箓', '', '换东西', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '8', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '11', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '4', '9');
INSERT INTO `playerdaoju` VALUES ('符箓残页-中级灵', '10', '符箓残页-中级灵', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '10');
INSERT INTO `playerdaoju` VALUES ('[神器]妖王剑碎片', '12', '[神器]妖王剑碎片', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '12');
INSERT INTO `playerdaoju` VALUES ('盾土残章', '15', '可获得盾土术', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '2', '15');
INSERT INTO `playerdaoju` VALUES ('元婴突破丹', '22', '突破元婴期时候使用的关键内丹', '520', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '22');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '521', '454ac9cbdb63df840643655755078a94', '0', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '521', '454ac9cbdb63df840643655755078a94', '125', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '521', '454ac9cbdb63df840643655755078a94', '152', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '', '硬翅蜂的蜂蜜', '521', '454ac9cbdb63df840643655755078a94', '7', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '521', '454ac9cbdb63df840643655755078a94', '100', '9');
INSERT INTO `playerdaoju` VALUES ('符箓残页-中级灵', '10', '符箓残页-中级灵', '521', '454ac9cbdb63df840643655755078a94', '50', '10');
INSERT INTO `playerdaoju` VALUES ('丝巾', '13', '贴身装备', '521', '454ac9cbdb63df840643655755078a94', '2', '13');
INSERT INTO `playerdaoju` VALUES ('残墨', '14', '可换取画册', '521', '454ac9cbdb63df840643655755078a94', '2', '14');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '522', '0e975728648b4af97a3eb0dfaf7e303d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '522', '0e975728648b4af97a3eb0dfaf7e303d', '145', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '522', '0e975728648b4af97a3eb0dfaf7e303d', '134', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '522', '0e975728648b4af97a3eb0dfaf7e303d', '5', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '522', '0e975728648b4af97a3eb0dfaf7e303d', '100', '9');
INSERT INTO `playerdaoju` VALUES ('符箓残页-中级灵', '10', '符箓残页-中级灵', '522', '0e975728648b4af97a3eb0dfaf7e303d', '50', '10');
INSERT INTO `playerdaoju` VALUES ('[神器]妖王剑碎片', '', '[神器]妖王剑碎片', '522', '0e975728648b4af97a3eb0dfaf7e303d', '0', '12');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '525', '1266218ff94820df0b66c6ef60d0541f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '526', '6dd9bd98618400f882c43aa6444d4948', '107', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '526', '6dd9bd98618400f882c43aa6444d4948', '2', '7');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '527', 'a76e665e8322cccdfd421deb60d63a3b', '759', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '528', 'b83a15ae83b0f866411ae82d4da8b32a', '7', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '529', '214efa2220dcfa302d616be486c7788b', '150', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '530', '69a7a5ae8235caef07c21001c326fa75', '376', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '531', 'fc77607e4a6912b43841336a2b25f3f2', '151', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '532', '9a6da705ba923ca7752d634d2826caff', '150', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '533', 'eb66dc52f48cb910d5cf8243ba14a4db', '30', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '533', 'eb66dc52f48cb910d5cf8243ba14a4db', '100', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '533', 'eb66dc52f48cb910d5cf8243ba14a4db', '100', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '533', 'eb66dc52f48cb910d5cf8243ba14a4db', '9', '8');
INSERT INTO `playerdaoju` VALUES ('[神器]妖王剑碎片', '', '[神器]妖王剑碎片', '533', 'eb66dc52f48cb910d5cf8243ba14a4db', '2', '12');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '534', '13ca4b7ef4d57e20f442a787cf8c88ac', '379', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '535', '4ada08fae36224a94fc8fade80bab37b', '376', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '', '强化装备用的道具', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '1157', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '150', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '150', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '4', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '100', '9');
INSERT INTO `playerdaoju` VALUES ('符箓残页-中级灵', '', '符箓残页-中级灵', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '101', '10');
INSERT INTO `playerdaoju` VALUES ('丝巾', '13', '贴身装备', '538', '1ac81512a158e2622c17a49ba9b7eaf8', '1', '13');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '1', '1');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级灵', '6', '兑换符箓用的', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '0', '6');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级魔', '7', '兑换符箓', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '6', '7');
INSERT INTO `playerdaoju` VALUES ('硬翅蜂蜜', '8', '硬翅蜂的蜂蜜', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '5', '8');
INSERT INTO `playerdaoju` VALUES ('符箓残页-初级蛮', '9', '符箓残页-初级蛮', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '7', '9');
INSERT INTO `playerdaoju` VALUES ('符箓残页-中级灵', '10', '符箓残页-中级灵', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '0', '10');
INSERT INTO `playerdaoju` VALUES ('[神器]妖王剑碎片', '12', '[神器]妖王剑碎片', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '5', '12');
INSERT INTO `playerdaoju` VALUES ('残墨', '14', '可换取画册', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '2', '14');
INSERT INTO `playerdaoju` VALUES ('盾土残章', '15', '可获得盾土术', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '5', '15');
INSERT INTO `playerdaoju` VALUES ('筑基突破丹', '', '突破筑基期时候使用的关键内丹', '539', 'be7f41af7f2b397af5129fe5dec95e1a', '30', '20');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '541', 'e17309aac194beac068b4383e5575918', '100', '1');
INSERT INTO `playerdaoju` VALUES ('强化石', '2', '强化装备用的道具', '545', 'f0ba894ae3cc0b3962c3950379762494', '100', '1');

-- ----------------------------
-- Table structure for playerjineng
-- ----------------------------
DROP TABLE IF EXISTS `playerjineng`;
CREATE TABLE `playerjineng` (
  `jnname` varchar(255) NOT NULL,
  `jnid` int(11) NOT NULL,
  `jngj` int(11) NOT NULL,
  `jnfy` int(11) NOT NULL,
  `jnbj` int(11) NOT NULL,
  `jnxx` int(11) NOT NULL,
  `sid` text NOT NULL,
  `jncount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerjineng
-- ----------------------------
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'c9879e4c3738297c06b0b14d78dc39d6', '15');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'c9879e4c3738297c06b0b14d78dc39d6', '25');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '781a121e409741ff53f5978578067146', '12');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'eb61a0b08b9bfdfda961d64410eba5bc', '3');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'eb61a0b08b9bfdfda961d64410eba5bc', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '77099dca8f67b65ca91af53d0461ac2f', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '77099dca8f67b65ca91af53d0461ac2f', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '775c0ff651b405a676fc9ee1729302f4', '10');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '775c0ff651b405a676fc9ee1729302f4', '23');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'ad8f4d8e577f50deae4492bd03c96b56', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ad8f4d8e577f50deae4492bd03c96b56', '3');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'bb2a45b7652a7900e7810128a329597e', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'bb2a45b7652a7900e7810128a329597e', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '4e079b4084dcdd84cf4393a003a38283', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ce13ba86e509d2fab5ed13c2cddf00c9', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'ce13ba86e509d2fab5ed13c2cddf00c9', '8');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ea5a17b7f6c42320f7c242f2871a0f8d', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '7159624dfdba178c848da03a6ffefec9', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '7159624dfdba178c848da03a6ffefec9', '3');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '771086b453fb6d53d76bf46880cf4b41', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '771086b453fb6d53d76bf46880cf4b41', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'e8d7c6fb768be55653f7cb2f7164bd1d', '6');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'b8a188334584e024060c33c6b3a9bbc5', '5');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'f52f24af276734367a122e13b0af67d2', '20');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'f52f24af276734367a122e13b0af67d2', '8');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '111111', '16');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '1d3b7593022084ce21637b975b82a533', '3');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'acea4cf5bfd750233ebc90c1361cd568', '8');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'acea4cf5bfd750233ebc90c1361cd568', '0');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '8', 'acea4cf5bfd750233ebc90c1361cd568', '4');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'c1a90c4939ae6e0353f41d09c2b62421', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'c1a90c4939ae6e0353f41d09c2b62421', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '454ac9cbdb63df840643655755078a94', '4');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', 'c1a90c4939ae6e0353f41d09c2b62421', '12');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '8', 'c1a90c4939ae6e0353f41d09c2b62421', '5');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '0e975728648b4af97a3eb0dfaf7e303d', '1');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '0e975728648b4af97a3eb0dfaf7e303d', '1');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', 'acea4cf5bfd750233ebc90c1361cd568', '12');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'be7f41af7f2b397af5129fe5dec95e1a', '10');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'be7f41af7f2b397af5129fe5dec95e1a', '5');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', 'be7f41af7f2b397af5129fe5dec95e1a', '10');
INSERT INTO `playerjineng` VALUES ('遁地术', '9', '0', '12', '0', '30', 'be7f41af7f2b397af5129fe5dec95e1a', '5');

-- ----------------------------
-- Table structure for playerrenwu
-- ----------------------------
DROP TABLE IF EXISTS `playerrenwu`;
CREATE TABLE `playerrenwu` (
  `rwname` varchar(255) NOT NULL,
  `rwzl` int(11) NOT NULL,
  `rwdj` varchar(255) NOT NULL,
  `rwzb` varchar(255) NOT NULL,
  `rwexp` varchar(255) NOT NULL,
  `rwyxb` varchar(255) NOT NULL,
  `sid` text NOT NULL,
  `rwzt` int(11) NOT NULL,
  `rwid` int(11) NOT NULL,
  `rwyq` int(11) NOT NULL,
  `rwcount` int(11) NOT NULL,
  `rwnowcount` int(11) NOT NULL,
  `rwlx` int(11) NOT NULL,
  `rwyp` text NOT NULL,
  `data` int(11) NOT NULL,
  `rwjineng` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerrenwu
-- ----------------------------
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '929610ec747f6e087aebb1af550673fa', '1', '23', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '98e3c23a97294ce8109186ba55d8530f', '2', '13', '56', '5', '5', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '929610ec747f6e087aebb1af550673fa', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '929610ec747f6e087aebb1af550673fa', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '929610ec747f6e087aebb1af550673fa', '3', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '39f73d46e13bed758f42d5695f3f43f0', '1', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'a2377a650da6bb0ad4fe0514f971f858', '1', '23', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '39f73d46e13bed758f42d5695f3f43f0', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '39f73d46e13bed758f42d5695f3f43f0', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '39f73d46e13bed758f42d5695f3f43f0', '1', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '39f73d46e13bed758f42d5695f3f43f0', '1', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '98e3c23a97294ce8109186ba55d8530f', '1', '23', '55', '20', '6', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '111111', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '111111', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '111111', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '111111', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '111111', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '111111', '1', '30', '98', '10', '1', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '111111', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', '111111', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', '111111', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', '111111', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', '111111', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', '111111', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', '111111', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', '111111', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '98e3c23a97294ce8109186ba55d8530f', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '77584b0fdec3e5bbf4f256da2fc3fc09', '1', '23', '55', '20', '4', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '77584b0fdec3e5bbf4f256da2fc3fc09', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'a86db6a86e4d32c7b409d3822ed5bba2', '2', '13', '56', '5', '5', '2', '', '3', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'a86db6a86e4d32c7b409d3822ed5bba2', '1', '23', '55', '20', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'a86db6a86e4d32c7b409d3822ed5bba2', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '1d3b7593022084ce21637b975b82a533', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '1d3b7593022084ce21637b975b82a533', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '1d3b7593022084ce21637b975b82a533', '3', '13', '56', '5', '0', '2', '', '13', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '4721b25faef7b79a4e9062b0856cee1e', '1', '23', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '1d3b7593022084ce21637b975b82a533', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '1d3b7593022084ce21637b975b82a533', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', '1d3b7593022084ce21637b975b82a533', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', '1d3b7593022084ce21637b975b82a533', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', '1d3b7593022084ce21637b975b82a533', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', '1d3b7593022084ce21637b975b82a533', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', '1d3b7593022084ce21637b975b82a533', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', '1d3b7593022084ce21637b975b82a533', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', '1d3b7593022084ce21637b975b82a533', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '1d3b7593022084ce21637b975b82a533', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('寻老伴', '3', '1|20', '', '500', '500', '1d3b7593022084ce21637b975b82a533', '3', '33', '28', '11', '0', '2', '', '13', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '1d3b7593022084ce21637b975b82a533', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '1d3b7593022084ce21637b975b82a533', '1', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '1d3b7593022084ce21637b975b82a533', '1', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '1d3b7593022084ce21637b975b82a533', '1', '21', '82', '30', '0', '2', '', '13', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '1d3b7593022084ce21637b975b82a533', '1', '19', '76', '50', '18', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '1d3b7593022084ce21637b975b82a533', '1', '20', '77', '50', '7', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '7660cbcbcfec945cbdac430361da363f', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '1d05b0d3a5ffa94de8a51fa17e2a55ea', '1', '23', '55', '20', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '1d05b0d3a5ffa94de8a51fa17e2a55ea', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '1d05b0d3a5ffa94de8a51fa17e2a55ea', '1', '13', '56', '5', '0', '2', '', '8', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '0d471de3efe5dcf749e6fa60fde8ae76', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'a2377a650da6bb0ad4fe0514f971f858', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '0d471de3efe5dcf749e6fa60fde8ae76', '1', '20', '77', '50', '20', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '0d471de3efe5dcf749e6fa60fde8ae76', '1', '19', '76', '50', '39', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '0d471de3efe5dcf749e6fa60fde8ae76', '1', '21', '82', '30', '1', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '1', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '1', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', '0d471de3efe5dcf749e6fa60fde8ae76', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'd9bc42eda8a25d32618518f4ae68b92a', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'acea4cf5bfd750233ebc90c1361cd568', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'acea4cf5bfd750233ebc90c1361cd568', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'acea4cf5bfd750233ebc90c1361cd568', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'acea4cf5bfd750233ebc90c1361cd568', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', 'acea4cf5bfd750233ebc90c1361cd568', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', 'acea4cf5bfd750233ebc90c1361cd568', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', 'acea4cf5bfd750233ebc90c1361cd568', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', 'acea4cf5bfd750233ebc90c1361cd568', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', 'acea4cf5bfd750233ebc90c1361cd568', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', 'acea4cf5bfd750233ebc90c1361cd568', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', 'acea4cf5bfd750233ebc90c1361cd568', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'acea4cf5bfd750233ebc90c1361cd568', '1', '27', '12', '150', '7', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', 'acea4cf5bfd750233ebc90c1361cd568', '3', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', 'acea4cf5bfd750233ebc90c1361cd568', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'd9bc42eda8a25d32618518f4ae68b92a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'acea4cf5bfd750233ebc90c1361cd568', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'acea4cf5bfd750233ebc90c1361cd568', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'a2377a650da6bb0ad4fe0514f971f858', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'd9bc42eda8a25d32618518f4ae68b92a', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', 'acea4cf5bfd750233ebc90c1361cd568', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', '0e975728648b4af97a3eb0dfaf7e303d', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'd9bc42eda8a25d32618518f4ae68b92a', '3', '13', '56', '5', '0', '2', '', '18', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'f7fed9ff73c268ee01eaa000afd54d6f', '1', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '69a7a5ae8235caef07c21001c326fa75', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'c1a90c4939ae6e0353f41d09c2b62421', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', '0e975728648b4af97a3eb0dfaf7e303d', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', 'c1a90c4939ae6e0353f41d09c2b62421', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', '0e975728648b4af97a3eb0dfaf7e303d', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '0e975728648b4af97a3eb0dfaf7e303d', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', 'c1a90c4939ae6e0353f41d09c2b62421', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '454ac9cbdb63df840643655755078a94', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '0e975728648b4af97a3eb0dfaf7e303d', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '454ac9cbdb63df840643655755078a94', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '454ac9cbdb63df840643655755078a94', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '454ac9cbdb63df840643655755078a94', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', '454ac9cbdb63df840643655755078a94', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', '454ac9cbdb63df840643655755078a94', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', '454ac9cbdb63df840643655755078a94', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', '454ac9cbdb63df840643655755078a94', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', '454ac9cbdb63df840643655755078a94', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', '454ac9cbdb63df840643655755078a94', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', '454ac9cbdb63df840643655755078a94', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '454ac9cbdb63df840643655755078a94', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '454ac9cbdb63df840643655755078a94', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '454ac9cbdb63df840643655755078a94', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '454ac9cbdb63df840643655755078a94', '1', '21', '82', '30', '0', '2', '', '19', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '454ac9cbdb63df840643655755078a94', '3', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '454ac9cbdb63df840643655755078a94', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '454ac9cbdb63df840643655755078a94', '1', '31', '14', '10', '2', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '0e975728648b4af97a3eb0dfaf7e303d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '0e975728648b4af97a3eb0dfaf7e303d', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'd9bc42eda8a25d32618518f4ae68b92a', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', 'd9bc42eda8a25d32618518f4ae68b92a', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', 'd9bc42eda8a25d32618518f4ae68b92a', '1', '35', '66', '15', '9', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '0e975728648b4af97a3eb0dfaf7e303d', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '0e975728648b4af97a3eb0dfaf7e303d', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '0e975728648b4af97a3eb0dfaf7e303d', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'a76e665e8322cccdfd421deb60d63a3b', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', '0e975728648b4af97a3eb0dfaf7e303d', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', '0e975728648b4af97a3eb0dfaf7e303d', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', '0e975728648b4af97a3eb0dfaf7e303d', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', '0e975728648b4af97a3eb0dfaf7e303d', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '0e975728648b4af97a3eb0dfaf7e303d', '3', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '214efa2220dcfa302d616be486c7788b', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '0e975728648b4af97a3eb0dfaf7e303d', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'b83a15ae83b0f866411ae82d4da8b32a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '0e975728648b4af97a3eb0dfaf7e303d', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'fc77607e4a6912b43841336a2b25f3f2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '9a6da705ba923ca7752d634d2826caff', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'eb66dc52f48cb910d5cf8243ba14a4db', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '13ca4b7ef4d57e20f442a787cf8c88ac', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '4ada08fae36224a94fc8fade80bab37b', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'eb66dc52f48cb910d5cf8243ba14a4db', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'eb66dc52f48cb910d5cf8243ba14a4db', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'eb66dc52f48cb910d5cf8243ba14a4db', '1', '29', '62', '10', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '1ac81512a158e2622c17a49ba9b7eaf8', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '21', '82', '30', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '1ac81512a158e2622c17a49ba9b7eaf8', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('菏官魅惑', '3', '1|20', '', '500', '1000', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '34', '18', '9', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '23', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('击杀血雷鹰', '2', '1|50', '', '500', '1000', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '35', '66', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('购买药品', '3', '1|30', '', '800', '1800', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '36', '9', '15', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', '1ac81512a158e2622c17a49ba9b7eaf8', '1', '30', '98', '10', '3', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', '1ac81512a158e2622c17a49ba9b7eaf8', '1', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', '1ac81512a158e2622c17a49ba9b7eaf8', '1', '31', '14', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('寻老伴', '3', '1|20', '', '500', '500', '1ac81512a158e2622c17a49ba9b7eaf8', '2', '33', '28', '11', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'be7f41af7f2b397af5129fe5dec95e1a', '1', '27', '12', '150', '5', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('王老五有事要说', '3', '1|20', '', '1000', '1500', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '37', '15', '13', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('门派管理员有什么权限？', '3', '1|50', '', '1000', '1500', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '38', '13', '26', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('花果山有情况', '3', '1|30', '', '1000', '1500', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '39', '26', '6', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('符箓兑换', '3', '1|30,6|50,7|50', '34', '2000', '2000', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '40', '6', '16', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('法外狂徒', '2', '1|100', '49', '5', '5', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '30', '98', '10', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('水鬼闹事', '2', '1|100', '51', '1000', '1500', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '32', '54', '5', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'be7f41af7f2b397af5129fe5dec95e1a', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('残墨收集', '1', '1|100', '49', '2500', '1500', 'be7f41af7f2b397af5129fe5dec95e1a', '1', '31', '14', '10', '2', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'e17309aac194beac068b4383e5575918', '1', '23', '55', '20', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'e17309aac194beac068b4383e5575918', '1', '13', '56', '5', '2', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'c8c35537f4a2bfa618801654b9cd1fc5', '1', '23', '55', '20', '3', '3', '', '0', '');

-- ----------------------------
-- Table structure for playertaozhuang
-- ----------------------------
DROP TABLE IF EXISTS `playertaozhuang`;
CREATE TABLE `playertaozhuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tzid` varchar(255) NOT NULL DEFAULT '' COMMENT '套装ID',
  `sid` varchar(255) NOT NULL DEFAULT '',
  `tzinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '套装介绍',
  `tzgj` varchar(255) NOT NULL DEFAULT '',
  `tzfy` varchar(255) NOT NULL DEFAULT '',
  `tzbj` varchar(255) NOT NULL DEFAULT '',
  `tzsb` varchar(255) NOT NULL DEFAULT '',
  `tzxx` varchar(255) NOT NULL DEFAULT '',
  `tzxy` varchar(255) NOT NULL DEFAULT '',
  `tzmaxhp` varchar(255) NOT NULL DEFAULT '',
  `tzys` varchar(255) NOT NULL DEFAULT '' COMMENT '套装颜色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='测试';

-- ----------------------------
-- Records of playertaozhuang
-- ----------------------------
INSERT INTO `playertaozhuang` VALUES ('1', '1', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '内测码装备套装，专属内测玩家用。', '123', '123', '5', '5', '5', '5', '123', '#217f6a');
INSERT INTO `playertaozhuang` VALUES ('2', '10', 'acea4cf5bfd750233ebc90c1361cd568', '灵套装激活获得的装备加成', '350', '200', '30', '10', '10', '10', '500', '#00bebf');
INSERT INTO `playertaozhuang` VALUES ('3', '1', 'a2377a650da6bb0ad4fe0514f971f858', '内测码装备套装，专属内测玩家用。', '123', '123', '5', '5', '5', '5', '123', '#217f6a');
INSERT INTO `playertaozhuang` VALUES ('4', '1', '1ac81512a158e2622c17a49ba9b7eaf8', '内测码装备套装，专属内测玩家用。', '123', '123', '5', '5', '5', '5', '123', '#217f6a');

-- ----------------------------
-- Table structure for playerwugong
-- ----------------------------
DROP TABLE IF EXISTS `playerwugong`;
CREATE TABLE `playerwugong` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `wgname` varchar(255) NOT NULL DEFAULT '',
  `wgys` varchar(255) NOT NULL DEFAULT '',
  `wginfo` varchar(255) NOT NULL DEFAULT '',
  `wgid` varchar(11) NOT NULL DEFAULT '',
  `wglx` varchar(255) NOT NULL DEFAULT '' COMMENT '0是功能1是属性',
  `uid` int(11) NOT NULL DEFAULT '0',
  `sid` text NOT NULL,
  `wgdj` varchar(255) NOT NULL DEFAULT '0',
  `wgsum` varchar(255) NOT NULL DEFAULT '' COMMENT '修炼使用',
  `wgxl` varchar(255) NOT NULL DEFAULT '0',
  `wgxlmax` varchar(255) NOT NULL DEFAULT '0',
  `xlzt` varchar(255) NOT NULL DEFAULT '0',
  `xlsj` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wghl` varchar(255) NOT NULL DEFAULT '20' COMMENT '武功魂力',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of playerwugong
-- ----------------------------
INSERT INTO `playerwugong` VALUES ('1', '顺手牵羊', '#39b512', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '3', '0', '0', '0', '1899-12-30 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('2', '百毒不侵', '#ff3100', '听闻能提高丹药成功率', '3', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '5', '0', '0', '0', '1899-12-30 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('3', '撒石灰', '#647b5d', '逃跑专用99%成功', '1', '1', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '2', '0', '0', '0', '1899-12-30 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('4', '百毒不侵', '#ff3100', '听闻能提高丹药成功率', '3', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '2', '15', '681', '5550', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('5', '撒石灰', '#647b5d', '逃跑专用99%成功', '1', '1', '0', 'a2377a650da6bb0ad4fe0514f971f858', '2', '13', '681', '5550', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('6', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '0', '6', '0', '0', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('7', '百毒不侵', '#f9c508', '听说该武功对服用丹药有奇效', '3', '0', '0', '111111', '0', '10', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('8', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', '111111', '0', '6', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('9', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', '111111', '0', '4', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('10', '手下留情', '#f9c508', '该武功可对boss留下致命一击，对友好建交有极大好处。', '4', '1', '0', 'a2377a650da6bb0ad4fe0514f971f858', '1', '1', '42', '59', '1', '2022-03-08 19:02:55', '17');
INSERT INTO `playerwugong` VALUES ('11', '易筋经', '#f9c508', '配合《易筋经》搏击术同时练习可达到无坚不摧的神功威力', '9', '1', '0', 'a2377a650da6bb0ad4fe0514f971f858', '0', '2', '0', '0', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('12', '蹶张心法', '#f9c508', '武术古籍，蹶张心法（弩法）《厥张心法》又称《弩法》，是《手下留情》组成部分之一', '5', '1', '0', 'a2377a650da6bb0ad4fe0514f971f858', '0', '3', '0', '0', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('13', '沾衣十八跌', '#f9c508', '“沾衣十八跌”又名“跌拳”、“擒跌拳”，俗称“跌法”、“快跌法”或“摔跌法”，是一种非常注重实用的、以单式练习为主的，并赋以“文”、“武”两种方法为修练形式的，以跌为主、一大助跌，跌打兼施，打就是跌，跌就是打，寓跌打为一体的防守反击拳。', '8', '1', '0', 'a2377a650da6bb0ad4fe0514f971f858', '0', '2', '0', '0', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('14', '长枪法选', '#f9c508', '手下留情之一，少林寺在棍法的基础上，吸收各家枪法之精华，融会贯通，创出以枪为主，兼用棍法，枪棍合一，风格独特的少林枪法。少林寺的第一代枪法，便是少林寺...', '6', '1', '0', 'a2377a650da6bb0ad4fe0514f971f858', '0', '2', '0', '0', '1', '2022-03-08 19:02:55', '20');
INSERT INTO `playerwugong` VALUES ('15', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '0', '6', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('16', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '0', '4', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('17', '百毒不侵', '#f9c508', '听说该武功对服用丹药有奇效', '3', '0', '0', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '0', '3', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('18', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', '7660cbcbcfec945cbdac430361da363f', '0', '1', '0', '0', '1', '2022-02-27 21:54:55', '20');
INSERT INTO `playerwugong` VALUES ('19', '百毒不侵', '#f9c508', '听说该武功对服用丹药有奇效', '3', '0', '0', '7660cbcbcfec945cbdac430361da363f', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('20', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '1', '3', '1086', '1313', '1', '2022-03-18 23:22:09', '20');
INSERT INTO `playerwugong` VALUES ('21', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '8', '0', '0', '1', '2022-03-18 23:22:09', '20');
INSERT INTO `playerwugong` VALUES ('22', '百毒不侵', '#f9c508', '听说该武功对服用丹药有奇效', '3', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '5', '0', '0', '1', '2022-03-18 23:22:09', '20');
INSERT INTO `playerwugong` VALUES ('23', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'af976a314459ca05fc3563f0d6fd7e39', '0', '2', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('24', '百毒不侵', '#f9c508', '听说该武功对服用丹药有奇效', '3', '0', '0', 'af976a314459ca05fc3563f0d6fd7e39', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('25', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', 'af976a314459ca05fc3563f0d6fd7e39', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('26', '百毒不侵', '#f9c508', '听闻学习该武功对服用丹药有奇效', '3', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '1', '0', '0', '1', '2022-03-10 19:49:14', '20');
INSERT INTO `playerwugong` VALUES ('27', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('28', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '3', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('29', '百毒不侵', '#f9c508', '听闻该武功对吃丹药有奇效', '3', '0', '0', '771086b453fb6d53d76bf46880cf4b41', '0', '7', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('30', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', '771086b453fb6d53d76bf46880cf4b41', '0', '2', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('31', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', '771086b453fb6d53d76bf46880cf4b41', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('32', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', '087efeb819f49c1789df1f599ec15388', '0', '3', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('33', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', '087efeb819f49c1789df1f599ec15388', '0', '2', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('34', '百毒不侵', '#f9c508', '听闻该武功对吃丹药有奇效', '3', '0', '0', '087efeb819f49c1789df1f599ec15388', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('35', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '4', '0', '753', '1936', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('36', '百毒不侵', '#f9c508', '听闻该武功对吃丹药有奇效', '3', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '3', '0', '0', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('37', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '4', '0', '0', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('38', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '1', '0', '0', '1', '2022-03-19 08:22:49', '20');
INSERT INTO `playerwugong` VALUES ('39', '百毒不侵', '#f9c508', '听闻该武功对吃丹药有奇效', '3', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '2', '0', '0', '1', '2022-03-19 08:22:49', '20');
INSERT INTO `playerwugong` VALUES ('40', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '1', '0', '127', '162', '1', '2022-03-19 08:22:49', '20');
INSERT INTO `playerwugong` VALUES ('41', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', '454ac9cbdb63df840643655755078a94', '1', '0', '9', '16', '0', '2022-03-18 11:21:13', '20');
INSERT INTO `playerwugong` VALUES ('42', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '2', '0', '0', '1266218ff94820df0b66c6ef60d0541f', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('43', '百毒不侵', '#f9c508', '听闻该武功对吃丹药有奇效', '3', '0', '0', '1266218ff94820df0b66c6ef60d0541f', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '20');
INSERT INTO `playerwugong` VALUES ('44', '手下留情', '#f9c508', '该武功可对boss留下致命一击，对友好建交有极大好处。', '4', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '1', '0', '0', '1', '2022-03-21 17:03:15', '8');
INSERT INTO `playerwugong` VALUES ('45', '易筋经', '#f9c508', '配合《易筋经》搏击术同时练习可达到无坚不摧的神功威力', '9', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '1', '1', '10', '22', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('46', '沾衣十八跌', '#f9c508', '“沾衣十八跌”又名“跌拳”、“擒跌拳”，俗称“跌法”、“快跌法”或“摔跌法”，是一种非常注重实用的、以单式练习为主的，并赋以“文”、“武”两种方法为修练形式的，以跌为主、一大助跌，跌打兼施，打就是跌，跌就是打，寓跌打为一体的防守反击拳。', '8', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '1', '0', '0', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('47', '蹶张心法', '#f9c508', '武术古籍，蹶张心法（弩法）《厥张心法》又称《弩法》，是《手下留情》组成部分之一', '5', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '1', '0', '0', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('48', '九阴真经', '#f9c508', '阴极在六，何以言九。太极生两仪，天地初刨判。六阴已极，逢七归元太素，太素西方金德，阴之清纯，寒之渊源。', '10', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '2', '0', '0', '1', '2022-03-21 17:03:15', '20');
INSERT INTO `playerwugong` VALUES ('49', '长枪法选', '#f9c508', '手下留情之一，少林寺在棍法的基础上，吸收各家枪法之精华，融会贯通，创出以枪为主，兼用棍法，枪棍合一，风格独特的少林枪法。少林寺的第一代枪法，便是少林寺...', '6', '1', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '2', '0', '0', '1', '2022-03-21 17:03:15', '20');

-- ----------------------------
-- Table structure for playeryaodan
-- ----------------------------
DROP TABLE IF EXISTS `playeryaodan`;
CREATE TABLE `playeryaodan` (
  `ydname` varchar(255) NOT NULL,
  `ydid` int(11) NOT NULL,
  `ydhp` int(11) NOT NULL,
  `ydgj` int(11) NOT NULL,
  `ydfy` int(11) NOT NULL,
  `ydxx` int(11) NOT NULL,
  `ydbj` int(11) NOT NULL,
  `sid` text NOT NULL,
  `ydsum` int(11) NOT NULL,
  `ydjg` int(11) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `ydjgm` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of playeryaodan
-- ----------------------------
INSERT INTO `playeryaodan` VALUES ('易筋经', '1', '0', '10', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '4', '5000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真经', '3', '0', '100', '-100', '0', '2', '39f73d46e13bed758f42d5695f3f43f0', '1', '20000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('42章经残卷A', '2', '0', '15', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '0', '8000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋经', '1', '0', '10', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '0', '5000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真经', '3', '0', '100', '-100', '0', '2', '111111', '0', '20000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('金刚经', '4', '0', '-100', '100', '0', '1', '39f73d46e13bed758f42d5695f3f43f0', '4', '20000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('南拳洪拳', '16', '0', '28', '18', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '0', '32000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('残金缺玉', '10', '0', '25', '25', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '0', '100000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八掌A', '5', '0', '80', '50', '5', '5', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('心意六合', '13', '0', '26', '26', '6', '6', '38171773e6842eb588ccc4ec4a7f48a8', '0', '380000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋经', '1', '0', '10', '0', '0', '0', '38171773e6842eb588ccc4ec4a7f48a8', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('心意六合', '13', '0', '26', '26', '6', '6', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '380000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('侠门内功', '14', '0', '33', '32', '3', '3', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '380000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真经', '3', '0', '100', '-100', '2', '2', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八掌A', '5', '0', '80', '50', '5', '5', '043c4eac8ffaa70af1ccb3e0eef0a364', '29', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真经', '3', '0', '100', '-100', '2', '2', 'b8a188334584e024060c33c6b3a9bbc5', '1', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋经', '1', '0', '10', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真经', '3', '0', '100', '-100', '2', '2', 'd1d51188e1fb089f7ad442c257683417', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('泰拳忍术', '12', '0', '30', '30', '0', '0', 'd1d51188e1fb089f7ad442c257683417', '0', '150000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八掌A', '5', '0', '80', '50', '5', '5', 'd580de813e3c794d847c3cd35dfe5fb0', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太极内功', '11', '0', '10', '80', '10', '0', 'd580de813e3c794d847c3cd35dfe5fb0', '0', '1000000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('神照经A', '6', '0', '40', '-5', '5', '1', '0b82a8fd07dfafc237a5dcc15b332ce8', '1', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('残金缺玉', '10', '0', '25', '25', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '1', '100000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋经', '1', '0', '10', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '1', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋经', '1', '0', '10', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八掌A', '5', '0', '80', '50', '5', '5', 'f52f24af276734367a122e13b0af67d2', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太极内功', '11', '0', '10', '80', '10', '0', 'f52f24af276734367a122e13b0af67d2', '0', '1000000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('神照经A', '6', '0', '40', '-5', '5', '1', 'f52f24af276734367a122e13b0af67d2', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太玄经A', '7', '0', '45', '5', '0', '1', 'f52f24af276734367a122e13b0af67d2', '0', '400000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阳真经', '8', '0', '20', '50', '10', '0', 'f52f24af276734367a122e13b0af67d2', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八掌A', '5', '0', '80', '50', '5', '5', '929610ec747f6e087aebb1af550673fa', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阳真经', '8', '0', '20', '50', '10', '0', '929610ec747f6e087aebb1af550673fa', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真经', '3', '0', '100', '-100', '2', '2', '929610ec747f6e087aebb1af550673fa', '3', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', '111111', '3', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '1', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太极内丹', '11', '0', '10', '80', '10', '0', '3fbbf11bd57912b4677e195e091fc41a', '0', '1000000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', '3fbbf11bd57912b4677e195e091fc41a', '1', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太极内丹', '11', '0', '10', '80', '10', '0', '72e2a2bb613ef6ed768ba27a20fbe7de', '0', '1000000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八丹', '5', '0', '80', '50', '5', '5', '72e2a2bb613ef6ed768ba27a20fbe7de', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('42章经丹', '2', '0', '15', '0', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '25000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('金刚丹', '4', '0', '-100', '100', '1', '1', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '1', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阳真丹', '8', '0', '20', '50', '10', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八丹', '5', '0', '80', '50', '5', '5', '771086b453fb6d53d76bf46880cf4b41', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('降龙十八丹', '5', '0', '80', '50', '5', '5', 'acea4cf5bfd750233ebc90c1361cd568', '0', '800000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太极内丹', '11', '0', '10', '80', '10', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '1000000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', 'acea4cf5bfd750233ebc90c1361cd568', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阳真丹', '8', '0', '20', '50', '10', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('南拳丹', '16', '0', '28', '18', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '32000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('42章经丹', '2', '0', '15', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '25000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('南拳丹', '16', '0', '28', '18', '0', '0', '454ac9cbdb63df840643655755078a94', '0', '32000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('神照丹', '6', '0', '40', '-5', '5', '1', '454ac9cbdb63df840643655755078a94', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太极内丹', '11', '0', '10', '80', '10', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '1000000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('神照丹', '6', '0', '40', '-5', '5', '1', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('心意六丹', '13', '0', '26', '26', '6', '6', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '380000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阳真丹', '8', '0', '20', '50', '10', '0', '454ac9cbdb63df840643655755078a94', '0', '500000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('42章经丹', '2', '0', '15', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '0', '25000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', '454ac9cbdb63df840643655755078a94', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('金刚丹', '4', '0', '-100', '100', '1', '1', '454ac9cbdb63df840643655755078a94', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('太玄丹', '7', '0', '45', '5', '0', '1', '454ac9cbdb63df840643655755078a94', '0', '400000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('残金缺丹', '10', '0', '25', '25', '0', '0', '345155a30691b5c495e1efa12cf5ed96', '4', '100000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('金刚丹', '4', '0', '-100', '100', '1', '1', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('南拳丹', '16', '0', '28', '18', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '32000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '15000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('42章经丹', '2', '0', '15', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '25000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('心意六丹', '13', '0', '26', '26', '6', '6', 'eb66dc52f48cb910d5cf8243ba14a4db', '0', '380000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '200000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('南拳丹', '16', '0', '28', '18', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '0', '32000', '0', '0');
INSERT INTO `playeryaodan` VALUES ('42章经丹', '2', '0', '15', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '1', '25000', '0', '0');

-- ----------------------------
-- Table structure for playeryaopin
-- ----------------------------
DROP TABLE IF EXISTS `playeryaopin`;
CREATE TABLE `playeryaopin` (
  `ypname` varchar(255) NOT NULL,
  `ypid` int(11) NOT NULL,
  `yphp` int(11) NOT NULL,
  `ypgj` int(11) NOT NULL,
  `ypfy` int(11) NOT NULL,
  `ypxx` int(11) NOT NULL,
  `ypbj` int(11) NOT NULL,
  `sid` text NOT NULL,
  `ypsum` int(11) NOT NULL,
  `ypjg` int(11) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playeryaopin
-- ----------------------------
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '69', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '11', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b4dd3b4ff25c3cdd67b858d5fed146fa', '10', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '7e9ab9a48f33d0f31ce4cfc1512ba0b8', '7', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '11', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '0820a45ab816fb9c222a84c6546581b7', '3', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a80e37407282b5feae841dd75b4dc7b7', '7', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ea5ea2d157d97045153a82e5a342ec8b', '3', '10', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '81', '15', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '118', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '0', '15', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '15', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '705', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '2', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '197', '15', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '0', '55', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e0e644a3727f0f1671e917f7b376c66f', '8', '15', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c5cb7c746b98e872e69f0a5ef8e2d386', '8', '15', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '26', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '81', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '115', '55', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '33619221f61feb039c524037c50aeb95', '3', '15', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '03a4c698ec11e112036183c308cfb94c', '15', '15', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ea5a17b7f6c42320f7c242f2871a0f8d', '21', '15', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4f49b5eb675277e6401832966f112262', '3', '15', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1385c8e98187fabdc04a600693e0ae8f', '2', '15', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '869', '55', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ca0904a308346c194ff8ec780ccf6736', '3', '15', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '0', '55', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'aa0b823f483b02cc5a7516cab09c4f92', '7', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '80', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1b10aad87b70a90c7514b3aa2feb52d1', '6', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ca083d233cbca174c1dec911b9c91e42', '3', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c4339dfb63d53dbe95ff3f1297cd889d', '6', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e2c3b13624da53a64bfd36596e04227b', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '2', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '49a77fab810b41f76e378df436869254', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4ab5e4638b035213c341b7d4706ded4f', '7', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '36', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '0', '155', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a805c97cc13e0d4a7e07c7552cf101f9', '24', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '12b77bc3aa3cdf5b2283684271bc916c', '3', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '32', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '146', '80', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '5f2f53403bda85d4fee078d944dd6d7e', '24', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '8bf2c38ba9d08fd609a3d40b35ea659c', '4', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '6', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '592857bc812f813ed52fa8b187582fc2', '0', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'eb61a0b08b9bfdfda961d64410eba5bc', '38', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ad8f4d8e577f50deae4492bd03c96b56', '27', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '127260b5602737d7ca8a56f3ff47cfde', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1de67183872072ed605030a8bf3059be', '37', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '77099dca8f67b65ca91af53d0461ac2f', '31', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0', '155', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c9879e4c3738297c06b0b14d78dc39d6', '33', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '10', '80', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ba5b232ca920fefa398ae123afcc87eb', '15', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '2de0f1d3eca04c1a8aff5354db0874ed', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ce13ba86e509d2fab5ed13c2cddf00c9', '24', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4e079b4084dcdd84cf4393a003a38283', '23', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'aa588ffcf27da87551c01d7c88b24829', '16', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a71dfe5ae44c6f0d4c4be100a2e85748', '28', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '98c04e5c0946bf13d399e8577f181912', '2', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '377b01fca16375319e1d921b89f66604', '13', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '2007608a6942d33ec38e7c3d870fa674', '29', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '15', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'dd58b4170ec8d6d20f876405b4b1265d', '22', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'd4cd8bac31b76768226bd72adc430ab9', '25', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '97563ab1d73bbb1e071ec933b5b06e6c', '3', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e777555550491c15e506da8cafb60086', '29', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '7159624dfdba178c848da03a6ffefec9', '23', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '34', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '45ab8af3305f70a9e14037d5e3cb474c', '3', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '771086b453fb6d53d76bf46880cf4b41', '16', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '771086b453fb6d53d76bf46880cf4b41', '0', '80', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ad1d34062743fe68d93897d75d8c37d9', '25', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '771086b453fb6d53d76bf46880cf4b41', '4959', '310', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '50', '771086b453fb6d53d76bf46880cf4b41', '1', '25', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '16', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '111111', '30', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '12', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '328', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'b624121f7f5c40f8c6ac507f6cab45f5', '109', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'b3897bd53e13f8c92b92933d4e9b7167', '2', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b3897bd53e13f8c92b92933d4e9b7167', '5', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '08b46397b9704ed9b6230e3864dfde52', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '08b46397b9704ed9b6230e3864dfde52', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '50', '08b46397b9704ed9b6230e3864dfde52', '1', '25', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b624121f7f5c40f8c6ac507f6cab45f5', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1d75409bd985acf3644f25f2a87b6552', '13', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '776a11c3614307517b39e381c89aafc1', '1', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a0f5700982d69976ce54c08cb1c2bbb0', '24', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b8e2bbf8273ee643a807becfac3cfe14', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '7f47f208d5b697de3791115ff8aecc7f', '1', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'a0f5700982d69976ce54c08cb1c2bbb0', '4', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '70619bdc2bdd92dcc83489657743848d', '3', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '70619bdc2bdd92dcc83489657743848d', '14', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '70619bdc2bdd92dcc83489657743848d', '2', '80', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '111111', '92', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '704825b240505b4599c32a64fb882c2c', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '25', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '4', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '4', '155', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '50', 'e8d7c6fb768be55653f7cb2f7164bd1d', '7', '25', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '1', '80', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '17', '30', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '50', '39f73d46e13bed758f42d5695f3f43f0', '1', '25', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '105', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '0', '155', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '3', '80', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', '39f73d46e13bed758f42d5695f3f43f0', '3', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a86db6a86e4d32c7b409d3822ed5bba2', '5', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '7083fa1a1d41824363cd4df0ef5e5d90', '16', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '7083fa1a1d41824363cd4df0ef5e5d90', '1', '310', '0');
INSERT INTO `playeryaopin` VALUES ('千年人参', '2', '5000', '0', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '1', '2000', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', 'e8d7c6fb768be55653f7cb2f7164bd1d', '4', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '54b9e0e2999c06a210aff10c2bd70578', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '38171773e6842eb588ccc4ec4a7f48a8', '4', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '38171773e6842eb588ccc4ec4a7f48a8', '10', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '38171773e6842eb588ccc4ec4a7f48a8', '1', '155', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '111111', '37', '155', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', '111111', '1', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '13', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '043c4eac8ffaa70af1ccb3e0eef0a364', '3', '155', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '1', '043c4eac8ffaa70af1ccb3e0eef0a364', '1', '20000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '20', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '7', '155', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '3', '80', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '8090f13824dc62c1bdd7b3db5a101fd7', '13', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'd1d51188e1fb089f7ad442c257683417', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'b8a188334584e024060c33c6b3a9bbc5', '103', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'd580de813e3c794d847c3cd35dfe5fb0', '18', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '0b82a8fd07dfafc237a5dcc15b332ce8', '2', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'cb5927f98eb22d2870b0547c6ab6f7f1', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '27', '30', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '0', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '1', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'b6d9f0bb1852a15b241410b3b07a21f8', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '188', '310', '0');
INSERT INTO `playeryaopin` VALUES ('千年人参', '2', '5000', '0', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '5', '2000', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'f52f24af276734367a122e13b0af67d2', '5', '155', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '8361f38084bda036106506df54fcd779', '10', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '2584819298592ea557f2c1d6ae08bbfe', '101', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '2584819298592ea557f2c1d6ae08bbfe', '3', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '929610ec747f6e087aebb1af550673fa', '305', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '929610ec747f6e087aebb1af550673fa', '14', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '929610ec747f6e087aebb1af550673fa', '10', '155', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'f991c4f27c28fb7eae2cbc3f80d00245', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'f991c4f27c28fb7eae2cbc3f80d00245', '37', '30', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'f991c4f27c28fb7eae2cbc3f80d00245', '2', '80', '0');
INSERT INTO `playeryaopin` VALUES ('千年人参', '2', '5000', '0', '0', '0', '0', '111111', '2', '2000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '98e3c23a97294ce8109186ba55d8530f', '103', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '98e3c23a97294ce8109186ba55d8530f', '2', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '77584b0fdec3e5bbf4f256da2fc3fc09', '104', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '77584b0fdec3e5bbf4f256da2fc3fc09', '1', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '8db89ecf31a6a27cf2d3f68c095843b9', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '1d3b7593022084ce21637b975b82a533', '95', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1d3b7593022084ce21637b975b82a533', '29', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'fce6f2da3b931558b5ec44dfa71b0646', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '1d3b7593022084ce21637b975b82a533', '4', '80', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '6f6b750a6a23e083c483f9f2885440e0', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '7660cbcbcfec945cbdac430361da363f', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '72e2a2bb613ef6ed768ba27a20fbe7de', '2', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '23eeb3fcd2a7e1875c37b09540c01ba9', '2', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'ded62d071f32ba11a20f5c75cc36153f', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '87', '310', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'af976a314459ca05fc3563f0d6fd7e39', '100', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '26', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '92', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '0d471de3efe5dcf749e6fa60fde8ae76', '12', '80', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '1', '155', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '2', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '923eb396db35867b31b310d8fb8260d2', '200', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '51', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '19', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '80', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '1', 'acea4cf5bfd750233ebc90c1361cd568', '0', '20000', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '279', '155', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '0', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('千年人参', '2', '5000', '0', '0', '0', '0', 'acea4cf5bfd750233ebc90c1361cd568', '77', '2000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'd9bc42eda8a25d32618518f4ae68b92a', '105', '310', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'd9bc42eda8a25d32618518f4ae68b92a', '27', '30', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '23', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '90', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '17', '80', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '162', '155', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '1', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '20000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '32', '30', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '94', '310', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '5', '80', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '61', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('千年人参', '2', '5000', '0', '0', '0', '0', 'c1a90c4939ae6e0353f41d09c2b62421', '72', '2000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '95', '310', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-50', '1', '1', '0', '1', '454ac9cbdb63df840643655755078a94', '2', '20000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '1266218ff94820df0b66c6ef60d0541f', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '46', '500', '0');
INSERT INTO `playeryaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', '454ac9cbdb63df840643655755078a94', '6', '5000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '100', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1266218ff94820df0b66c6ef60d0541f', '1', '100', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '400', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '500', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '6dd9bd98618400f882c43aa6444d4948', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '6dd9bd98618400f882c43aa6444d4948', '1', '100', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-200', '0', '1', '0', '0', '0e975728648b4af97a3eb0dfaf7e303d', '0', '50000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b83a15ae83b0f866411ae82d4da8b32a', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a76e665e8322cccdfd421deb60d63a3b', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '69a7a5ae8235caef07c21001c326fa75', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'fc77607e4a6912b43841336a2b25f3f2', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '9a6da705ba923ca7752d634d2826caff', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'eb66dc52f48cb910d5cf8243ba14a4db', '29', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '13ca4b7ef4d57e20f442a787cf8c88ac', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '13ca4b7ef4d57e20f442a787cf8c88ac', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '4ada08fae36224a94fc8fade80bab37b', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '214efa2220dcfa302d616be486c7788b', '10', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '1ac81512a158e2622c17a49ba9b7eaf8', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1ac81512a158e2622c17a49ba9b7eaf8', '26', '100', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '1ac81512a158e2622c17a49ba9b7eaf8', '7', '400', '0');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '23', '100', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '51', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '500', '0');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '0', '400', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '47', '500', '0');
INSERT INTO `playeryaopin` VALUES ('大朗饼', '10', '-200', '0', '1', '0', '0', 'be7f41af7f2b397af5129fe5dec95e1a', '0', '50000', '0');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'a2377a650da6bb0ad4fe0514f971f858', '2', '500', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'e17309aac194beac068b4383e5575918', '100', '1000', '0');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', 'f0ba894ae3cc0b3962c3950379762494', '100', '1000', '0');

-- ----------------------------
-- Table structure for playerzhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `playerzhuangbei`;
CREATE TABLE `playerzhuangbei` (
  `zbname` varchar(255) NOT NULL,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` varchar(255) NOT NULL,
  `zbfy` varchar(255) NOT NULL,
  `zbbj` varchar(255) NOT NULL,
  `zbxx` varchar(255) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `zbnowid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` text NOT NULL,
  `zbhp` varchar(255) NOT NULL,
  `qianghua` int(11) NOT NULL,
  `zblv` int(11) NOT NULL,
  `zbtool` int(11) NOT NULL,
  `zbys` varchar(255) NOT NULL DEFAULT '#9EF18D',
  `taozhuang` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zbnowid`)
) ENGINE=MyISAM AUTO_INCREMENT=77047 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerzhuangbei
-- ----------------------------
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '0', '75612', '', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '423', '75624', '45ab8af3305f70a9e14037d5e3cb474c', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '423', '75625', '45ab8af3305f70a9e14037d5e3cb474c', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '423', '75627', '45ab8af3305f70a9e14037d5e3cb474c', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '423', '75628', '45ab8af3305f70a9e14037d5e3cb474c', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '423', '75629', '45ab8af3305f70a9e14037d5e3cb474c', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '5', '8', '0', '0', '28', '425', '75636', 'ad1d34062743fe68d93897d75d8c37d9', '40', '5', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '11', '0', '0', '2', '27', '442', '75639', '08b46397b9704ed9b6230e3864dfde52', '0', '6', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '0', '75640', '', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '0', '75641', '', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '2', '8', '1', '0', '31', '419', '75643', '087efeb819f49c1789df1f599ec15388', '55', '2', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '23', '4', '3', '5', '32', '422', '75644', '771086b453fb6d53d76bf46880cf4b41', '20', '24', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '0', '75645', '', '55', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '425', '75648', 'ad1d34062743fe68d93897d75d8c37d9', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '0', '75649', '', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '425', '75650', 'ad1d34062743fe68d93897d75d8c37d9', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '425', '75651', 'ad1d34062743fe68d93897d75d8c37d9', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '425', '75652', 'ad1d34062743fe68d93897d75d8c37d9', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '425', '75653', 'ad1d34062743fe68d93897d75d8c37d9', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '425', '75654', 'ad1d34062743fe68d93897d75d8c37d9', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '24', '10', '0', '0', '41', '422', '75659', '771086b453fb6d53d76bf46880cf4b41', '150', '24', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '12', '10', '3', '0', '42', '422', '75660', '771086b453fb6d53d76bf46880cf4b41', '155', '12', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·破军腰带', '缘风·破军腰带', '17', '16', '0', '0', '43', '422', '75661', '771086b453fb6d53d76bf46880cf4b41', '188', '21', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('<font color=#F5851E>神器·妖</font><font color=#F3761F>王</font><font color=#F16720>剑</font>', '[神器]妖王剑\r\n妖王剑碎片合成', '130', '3', '13', '11', '45', '422', '75663', '771086b453fb6d53d76bf46880cf4b41', '0', '25', '50', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '0', '75664', '', '38', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('防毒面具', '其实就是一块布', '50', '10', '1', '10', '50', '422', '75666', '771086b453fb6d53d76bf46880cf4b41', '160', '25', '10', '5', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '419', '75667', '087efeb819f49c1789df1f599ec15388', '38', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '12', '3', '3', '20', '49', '422', '75668', '771086b453fb6d53d76bf46880cf4b41', '84', '10', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '0', '75675', '', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '0', '75676', '', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '10', '0', '0', '28', '0', '75677', '', '40', '2', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '0', '75678', '', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '419', '75679', '087efeb819f49c1789df1f599ec15388', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '419', '75682', '087efeb819f49c1789df1f599ec15388', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '431', '75683', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '440', '75686', 'b3897bd53e13f8c92b92933d4e9b7167', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '434', '75687', '704825b240505b4599c32a64fb882c2c', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('狐头令牌', '假村长的令牌', '10', '10', '10', '10', '1', '442', '75690', '08b46397b9704ed9b6230e3864dfde52', '5', '0', '0', '6', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '426', '75691', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('月轮枪', '月轮枪', '10', '0', '0', '2', '37', '442', '75693', '08b46397b9704ed9b6230e3864dfde52', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('月轮枪', '月轮枪', '10', '0', '0', '2', '37', '442', '75694', '08b46397b9704ed9b6230e3864dfde52', '1', '1', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('月轮枪', '月轮枪', '10', '0', '0', '2', '37', '442', '75695', '08b46397b9704ed9b6230e3864dfde52', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '442', '75696', '08b46397b9704ed9b6230e3864dfde52', '155', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '442', '75697', '08b46397b9704ed9b6230e3864dfde52', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '442', '75698', '08b46397b9704ed9b6230e3864dfde52', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '442', '75699', '08b46397b9704ed9b6230e3864dfde52', '38', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '444', '75700', '2b293a1ea9e0c16aec54004196b8c2c3', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '438', '75701', 'b624121f7f5c40f8c6ac507f6cab45f5', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '1', '2', '0', '0', '24', '450', '75702', '1d75409bd985acf3644f25f2a87b6552', '10', '1', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '7', '0', '1', '3', '29', '450', '75704', '1d75409bd985acf3644f25f2a87b6552', '0', '5', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '448', '75705', 'a0f5700982d69976ce54c08cb1c2bbb0', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '448', '75706', 'a0f5700982d69976ce54c08cb1c2bbb0', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75707', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75708', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75709', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75710', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75711', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75712', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75713', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75714', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '448', '75715', 'a0f5700982d69976ce54c08cb1c2bbb0', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75716', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75717', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '448', '75718', 'a0f5700982d69976ce54c08cb1c2bbb0', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75719', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75720', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '448', '75721', 'a0f5700982d69976ce54c08cb1c2bbb0', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '448', '75722', 'a0f5700982d69976ce54c08cb1c2bbb0', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '448', '75723', 'a0f5700982d69976ce54c08cb1c2bbb0', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '448', '75724', 'a0f5700982d69976ce54c08cb1c2bbb0', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '3', '0', '1', '3', '29', '427', '75726', '70619bdc2bdd92dcc83489657743848d', '0', '1', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '9', '3', '1', '1', '36', '427', '75727', '70619bdc2bdd92dcc83489657743848d', '0', '1', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '427', '75728', '70619bdc2bdd92dcc83489657743848d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '427', '75729', '70619bdc2bdd92dcc83489657743848d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '458', '75730', '4e8fe201aac55b7ddf0a721fe2dde89d', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '427', '75731', '70619bdc2bdd92dcc83489657743848d', '1', '1', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '458', '75732', '4e8fe201aac55b7ddf0a721fe2dde89d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '427', '75733', '70619bdc2bdd92dcc83489657743848d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '427', '75734', '70619bdc2bdd92dcc83489657743848d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('村长令牌', '假村长的令牌', '16', '10', '10', '10', '1', '427', '75735', '70619bdc2bdd92dcc83489657743848d', '5', '6', '0', '6', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '434', '75736', '704825b240505b4599c32a64fb882c2c', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '0', '75737', '', '25', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '0', '75738', '', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '457', '75740', 'e8d7c6fb768be55653f7cb2f7164bd1d', '55', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '10', '0', '1', '3', '29', '464', '75741', '54b9e0e2999c06a210aff10c2bd70578', '0', '8', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '457', '75742', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '457', '75743', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '0', '75750', '', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '457', '75753', 'e8d7c6fb768be55653f7cb2f7164bd1d', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '0', '10', '0', '0', '41', '457', '75755', 'e8d7c6fb768be55653f7cb2f7164bd1d', '150', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '0', '75758', '', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '3', '3', '3', '20', '49', '459', '75762', '39f73d46e13bed758f42d5695f3f43f0', '80', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '4', '4', '3', '20', '49', '457', '75763', 'e8d7c6fb768be55653f7cb2f7164bd1d', '84', '3', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '462', '75764', 'a86db6a86e4d32c7b409d3822ed5bba2', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '462', '75765', 'a86db6a86e4d32c7b409d3822ed5bba2', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '462', '75766', 'a86db6a86e4d32c7b409d3822ed5bba2', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '462', '75767', 'a86db6a86e4d32c7b409d3822ed5bba2', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '463', '75768', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '2', '0', '1', '25', '463', '75769', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '2', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '463', '75770', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '463', '75771', '7083fa1a1d41824363cd4df0ef5e5d90', '10', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '463', '75772', '7083fa1a1d41824363cd4df0ef5e5d90', '25', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '463', '75773', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '463', '75774', '7083fa1a1d41824363cd4df0ef5e5d90', '40', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '463', '75775', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '463', '75776', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('轻蕊盔', '轻蕊盔', '0', '7', '1', '0', '30', '463', '75777', '7083fa1a1d41824363cd4df0ef5e5d90', '50', '0', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '463', '75778', '7083fa1a1d41824363cd4df0ef5e5d90', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '463', '75779', '7083fa1a1d41824363cd4df0ef5e5d90', '20', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '463', '75780', '7083fa1a1d41824363cd4df0ef5e5d90', '20', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '457', '75781', 'e8d7c6fb768be55653f7cb2f7164bd1d', '38', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '464', '75782', '54b9e0e2999c06a210aff10c2bd70578', '0', '0', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '1', '2', '0', '0', '24', '0', '75784', '', '10', '1', '0', '2', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '465', '75786', '38171773e6842eb588ccc4ec4a7f48a8', '20', '0', '0', '0', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '476', '75787', '0b82a8fd07dfafc237a5dcc15b332ce8', '25', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '476', '75788', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('轻蕊盔', '轻蕊盔', '0', '7', '1', '0', '30', '465', '75789', '38171773e6842eb588ccc4ec4a7f48a8', '50', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '465', '75791', '38171773e6842eb588ccc4ec4a7f48a8', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '465', '75792', '38171773e6842eb588ccc4ec4a7f48a8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '441', '75793', '111111', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '467', '75794', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '467', '75795', '043c4eac8ffaa70af1ccb3e0eef0a364', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '467', '75796', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '467', '75797', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '467', '75798', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '467', '75799', '043c4eac8ffaa70af1ccb3e0eef0a364', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '467', '75800', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '476', '75801', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '467', '75803', '043c4eac8ffaa70af1ccb3e0eef0a364', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '467', '75804', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '467', '75805', '043c4eac8ffaa70af1ccb3e0eef0a364', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '18', '12', '4', '4', '44', '467', '75806', '043c4eac8ffaa70af1ccb3e0eef0a364', '55', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '18', '12', '4', '4', '44', '467', '75807', '043c4eac8ffaa70af1ccb3e0eef0a364', '55', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '10', '9', '12', '11', '51', '467', '75808', '043c4eac8ffaa70af1ccb3e0eef0a364', '41', '3', '0', '1', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '1', '3', '3', '5', '32', '467', '75809', '043c4eac8ffaa70af1ccb3e0eef0a364', '20', '1', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '3', '3', '3', '20', '49', '467', '75810', '043c4eac8ffaa70af1ccb3e0eef0a364', '80', '0', '0', '0', '#FD3702', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '467', '75811', '043c4eac8ffaa70af1ccb3e0eef0a364', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '467', '75812', '043c4eac8ffaa70af1ccb3e0eef0a364', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '467', '75813', '043c4eac8ffaa70af1ccb3e0eef0a364', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '476', '75814', '0b82a8fd07dfafc237a5dcc15b332ce8', '25', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '468', '75815', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '468', '75816', 'b8a188334584e024060c33c6b3a9bbc5', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '468', '75817', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('轻蕊盔', '轻蕊盔', '0', '7', '1', '0', '30', '468', '75818', 'b8a188334584e024060c33c6b3a9bbc5', '50', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '468', '75819', 'b8a188334584e024060c33c6b3a9bbc5', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '468', '75820', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '468', '75821', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('月轮枪', '月轮枪', '10', '0', '0', '2', '37', '468', '75822', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '468', '75823', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '468', '75824', 'b8a188334584e024060c33c6b3a9bbc5', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '468', '75825', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '468', '75827', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('百斩狂澜枪', '百斩狂澜', '21', '0', '0', '5', '40', '468', '75828', 'b8a188334584e024060c33c6b3a9bbc5', '0', '1', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '506', '75829', '72e2a2bb613ef6ed768ba27a20fbe7de', '38', '0', '0', '1', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('百斩狂澜枪', '百斩狂澜', '27', '0', '0', '5', '40', '476', '75832', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '7', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('百斩狂澜枪', '百斩狂澜', '20', '0', '0', '5', '40', '476', '75833', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '469', '75834', '8090f13824dc62c1bdd7b3db5a101fd7', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '469', '75835', '8090f13824dc62c1bdd7b3db5a101fd7', '25', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '5', '0', '1', '3', '29', '470', '75836', 'd1d51188e1fb089f7ad442c257683417', '0', '3', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '470', '75837', 'd1d51188e1fb089f7ad442c257683417', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '470', '75838', 'd1d51188e1fb089f7ad442c257683417', '25', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '470', '75839', 'd1d51188e1fb089f7ad442c257683417', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '470', '75840', 'd1d51188e1fb089f7ad442c257683417', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '470', '75841', 'd1d51188e1fb089f7ad442c257683417', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '427', '75842', '70619bdc2bdd92dcc83489657743848d', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '427', '75843', '70619bdc2bdd92dcc83489657743848d', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('轻蕊盔', '轻蕊盔', '0', '7', '1', '0', '30', '427', '75844', '70619bdc2bdd92dcc83489657743848d', '50', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·破军腰带', '缘风·破军腰带', '5', '14', '0', '0', '43', '476', '75845', '0b82a8fd07dfafc237a5dcc15b332ce8', '170', '5', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '468', '75846', 'b8a188334584e024060c33c6b3a9bbc5', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '476', '75847', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '468', '75848', 'b8a188334584e024060c33c6b3a9bbc5', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '468', '75849', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('劫刀', '劫刀', '25', '0', '4', '5', '46', '468', '75851', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '0', '#F88C0A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '469', '75852', '8090f13824dc62c1bdd7b3db5a101fd7', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '468', '75853', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '468', '75854', 'b8a188334584e024060c33c6b3a9bbc5', '25', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '9', '0', '1', '3', '29', '475', '75855', 'd580de813e3c794d847c3cd35dfe5fb0', '0', '7', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '476', '75867', '0b82a8fd07dfafc237a5dcc15b332ce8', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '476', '75868', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '476', '75869', '0b82a8fd07dfafc237a5dcc15b332ce8', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '476', '75870', '0b82a8fd07dfafc237a5dcc15b332ce8', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '476', '75871', '0b82a8fd07dfafc237a5dcc15b332ce8', '25', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '476', '75872', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '476', '75873', '0b82a8fd07dfafc237a5dcc15b332ce8', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('轻蕊盔', '轻蕊盔', '2', '7', '1', '0', '30', '476', '75874', '0b82a8fd07dfafc237a5dcc15b332ce8', '50', '2', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '476', '75875', '0b82a8fd07dfafc237a5dcc15b332ce8', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '468', '75876', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '441', '75877', '111111', '0', '0', '0', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '468', '75878', 'b8a188334584e024060c33c6b3a9bbc5', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '468', '75879', 'b8a188334584e024060c33c6b3a9bbc5', '25', '0', '0', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '468', '75880', 'b8a188334584e024060c33c6b3a9bbc5', '5', '0', '0', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '468', '75881', 'b8a188334584e024060c33c6b3a9bbc5', '50', '0', '0', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '468', '75882', 'b8a188334584e024060c33c6b3a9bbc5', '5', '0', '0', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '468', '75883', 'b8a188334584e024060c33c6b3a9bbc5', '5', '0', '0', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '468', '75884', 'b8a188334584e024060c33c6b3a9bbc5', '150', '0', '0', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '468', '75885', 'b8a188334584e024060c33c6b3a9bbc5', '50', '0', '0', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '55', '10', '5', '5', '53', '482', '75886', '8361f38084bda036106506df54fcd779', '25', '1', '0', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '482', '75887', '8361f38084bda036106506df54fcd779', '5', '0', '0', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '482', '75888', '8361f38084bda036106506df54fcd779', '50', '0', '0', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '482', '75889', '8361f38084bda036106506df54fcd779', '5', '0', '0', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '482', '75890', '8361f38084bda036106506df54fcd779', '5', '0', '0', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '160', '0', '5', '58', '482', '75891', '8361f38084bda036106506df54fcd779', '150', '4', '0', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '271', '5', '8', '3', '59', '482', '75892', '8361f38084bda036106506df54fcd779', '50', '10', '0', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '481', '75903', 'f52f24af276734367a122e13b0af67d2', '0', '0', '0', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '483', '75904', 'b6d9f0bb1852a15b241410b3b07a21f8', '0', '0', '0', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '481', '75906', 'f52f24af276734367a122e13b0af67d2', '0', '0', '0', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75907', '8361f38084bda036106506df54fcd779', '0', '0', '30', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '483', '75908', 'b6d9f0bb1852a15b241410b3b07a21f8', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '483', '75909', 'b6d9f0bb1852a15b241410b3b07a21f8', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '483', '75910', 'b6d9f0bb1852a15b241410b3b07a21f8', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '483', '75911', 'b6d9f0bb1852a15b241410b3b07a21f8', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '483', '75912', 'b6d9f0bb1852a15b241410b3b07a21f8', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '483', '75913', 'b6d9f0bb1852a15b241410b3b07a21f8', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '483', '75914', 'b6d9f0bb1852a15b241410b3b07a21f8', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '483', '75915', 'b6d9f0bb1852a15b241410b3b07a21f8', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75916', '8361f38084bda036106506df54fcd779', '0', '0', '30', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '482', '75917', '8361f38084bda036106506df54fcd779', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75918', '8361f38084bda036106506df54fcd779', '0', '0', '30', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '481', '75922', 'f52f24af276734367a122e13b0af67d2', '0', '0', '50', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75923', '8361f38084bda036106506df54fcd779', '0', '0', '30', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75924', '8361f38084bda036106506df54fcd779', '0', '0', '30', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75925', '8361f38084bda036106506df54fcd779', '0', '0', '30', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '151', '60', '15', '10', '10', '482', '75926', '8361f38084bda036106506df54fcd779', '0', '1', '50', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75928', '8361f38084bda036106506df54fcd779', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '482', '75929', '8361f38084bda036106506df54fcd779', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '441', '75930', '111111', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '441', '75931', '111111', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '441', '75932', '111111', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '441', '75933', '111111', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '482', '75934', '8361f38084bda036106506df54fcd779', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '484', '75935', '2584819298592ea557f2c1d6ae08bbfe', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '484', '75936', '2584819298592ea557f2c1d6ae08bbfe', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '459', '75937', '39f73d46e13bed758f42d5695f3f43f0', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '459', '75938', '39f73d46e13bed758f42d5695f3f43f0', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '459', '75939', '39f73d46e13bed758f42d5695f3f43f0', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '459', '75941', '39f73d46e13bed758f42d5695f3f43f0', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '459', '75942', '39f73d46e13bed758f42d5695f3f43f0', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '348', '5', '8', '3', '59', '459', '75943', '39f73d46e13bed758f42d5695f3f43f0', '63', '16', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '482', '75945', '8361f38084bda036106506df54fcd779', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '482', '75946', '8361f38084bda036106506df54fcd779', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '482', '75947', '8361f38084bda036106506df54fcd779', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '482', '75948', '8361f38084bda036106506df54fcd779', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '485', '75949', '929610ec747f6e087aebb1af550673fa', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '485', '75950', '929610ec747f6e087aebb1af550673fa', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '485', '75951', '929610ec747f6e087aebb1af550673fa', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '485', '75952', '929610ec747f6e087aebb1af550673fa', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '485', '75953', '929610ec747f6e087aebb1af550673fa', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '459', '75957', '39f73d46e13bed758f42d5695f3f43f0', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '127', '0', '5', '58', '485', '75962', '929610ec747f6e087aebb1af550673fa', '324', '11', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '481', '75978', 'f52f24af276734367a122e13b0af67d2', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '442', '76012', '08b46397b9704ed9b6230e3864dfde52', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '409', '50', '12', '9', '11', '485', '76013', '929610ec747f6e087aebb1af550673fa', '0', '16', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '459', '76015', '39f73d46e13bed758f42d5695f3f43f0', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '459', '76016', '39f73d46e13bed758f42d5695f3f43f0', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '459', '76017', '39f73d46e13bed758f42d5695f3f43f0', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '459', '76018', '39f73d46e13bed758f42d5695f3f43f0', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '459', '76019', '39f73d46e13bed758f42d5695f3f43f0', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '459', '76020', '39f73d46e13bed758f42d5695f3f43f0', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '459', '76021', '39f73d46e13bed758f42d5695f3f43f0', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '459', '76022', '39f73d46e13bed758f42d5695f3f43f0', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '459', '76024', '39f73d46e13bed758f42d5695f3f43f0', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '459', '76025', '39f73d46e13bed758f42d5695f3f43f0', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '459', '76026', '39f73d46e13bed758f42d5695f3f43f0', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '487', '76029', 'f991c4f27c28fb7eae2cbc3f80d00245', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '487', '76030', 'f991c4f27c28fb7eae2cbc3f80d00245', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '487', '76031', 'f991c4f27c28fb7eae2cbc3f80d00245', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '487', '76032', 'f991c4f27c28fb7eae2cbc3f80d00245', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '487', '76033', 'f991c4f27c28fb7eae2cbc3f80d00245', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '487', '76034', 'f991c4f27c28fb7eae2cbc3f80d00245', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '487', '76035', 'f991c4f27c28fb7eae2cbc3f80d00245', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '485', '76038', '929610ec747f6e087aebb1af550673fa', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '485', '76039', '929610ec747f6e087aebb1af550673fa', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '487', '76040', 'f991c4f27c28fb7eae2cbc3f80d00245', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '487', '76041', 'f991c4f27c28fb7eae2cbc3f80d00245', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '485', '76042', '929610ec747f6e087aebb1af550673fa', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '485', '76043', '929610ec747f6e087aebb1af550673fa', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '485', '76044', '929610ec747f6e087aebb1af550673fa', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '485', '76045', '929610ec747f6e087aebb1af550673fa', '38', '0', '13', '1', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('军官陌刀', '军官陌刀', '30', '0', '5', '4', '48', '485', '76046', '929610ec747f6e087aebb1af550673fa', '0', '0', '0', '0', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '3', '3', '3', '20', '49', '485', '76047', '929610ec747f6e087aebb1af550673fa', '80', '0', '0', '0', '#FD3702', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '485', '76048', '929610ec747f6e087aebb1af550673fa', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '426', '76050', 'a2377a650da6bb0ad4fe0514f971f858', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '426', '76051', 'a2377a650da6bb0ad4fe0514f971f858', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '426', '76057', 'a2377a650da6bb0ad4fe0514f971f858', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '441', '76059', '111111', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '441', '76060', '111111', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '441', '76061', '111111', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '441', '76062', '111111', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '441', '76063', '111111', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '441', '76064', '111111', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '441', '76065', '111111', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '276', '5', '8', '3', '59', '441', '76066', '111111', '50', '10', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '441', '76067', '111111', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '441', '76068', '111111', '0', '0', '25', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '455', '50', '10', '15', '4', '441', '76069', '111111', '0', '10', '40', '1', '#BC0DEF', '0');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '441', '76071', '111111', '0', '0', '40', '1', '#BC0DEF', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '441', '76072', '111111', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '459', '76073', '39f73d46e13bed758f42d5695f3f43f0', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '441', '76074', '111111', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '441', '76075', '111111', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '441', '76076', '111111', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '441', '76077', '111111', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '441', '76078', '111111', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '441', '76079', '111111', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '441', '76080', '111111', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '441', '76081', '111111', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '441', '76082', '111111', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '441', '76083', '111111', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '441', '76084', '111111', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '441', '76085', '111111', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '441', '76086', '111111', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '441', '76087', '111111', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '441', '76088', '111111', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '441', '76089', '111111', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '441', '76090', '111111', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '441', '76091', '111111', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '441', '76092', '111111', '0', '0', '40', '1', '#BC0DEF', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '485', '76093', '929610ec747f6e087aebb1af550673fa', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '441', '76094', '111111', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '441', '76095', '111111', '38', '0', '13', '1', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '441', '76096', '111111', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '441', '76097', '111111', '0', '0', '25', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '441', '76098', '111111', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '441', '76099', '111111', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '', '180', '80', '10', '8', '7', '441', '76100', '111111', '0', '0', '55', '1', '#B61D16', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '441', '76101', '111111', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '488', '76102', '98e3c23a97294ce8109186ba55d8530f', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '488', '76103', '98e3c23a97294ce8109186ba55d8530f', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '488', '76104', '98e3c23a97294ce8109186ba55d8530f', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '488', '76105', '98e3c23a97294ce8109186ba55d8530f', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '488', '76106', '98e3c23a97294ce8109186ba55d8530f', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '488', '76107', '98e3c23a97294ce8109186ba55d8530f', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '488', '76108', '98e3c23a97294ce8109186ba55d8530f', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '441', '76109', '111111', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '489', '76110', '77584b0fdec3e5bbf4f256da2fc3fc09', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '489', '76111', '77584b0fdec3e5bbf4f256da2fc3fc09', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '489', '76112', '77584b0fdec3e5bbf4f256da2fc3fc09', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '489', '76113', '77584b0fdec3e5bbf4f256da2fc3fc09', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '489', '76114', '77584b0fdec3e5bbf4f256da2fc3fc09', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '489', '76115', '77584b0fdec3e5bbf4f256da2fc3fc09', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '489', '76116', '77584b0fdec3e5bbf4f256da2fc3fc09', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '489', '76117', '77584b0fdec3e5bbf4f256da2fc3fc09', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '489', '76118', '77584b0fdec3e5bbf4f256da2fc3fc09', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '21', '0', '3', '4', '33', '473', '76119', '8db89ecf31a6a27cf2d3f68c095843b9', '0', '6', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '473', '76120', '8db89ecf31a6a27cf2d3f68c095843b9', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '492', '76121', '1d3b7593022084ce21637b975b82a533', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '492', '76132', '1d3b7593022084ce21637b975b82a533', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '494', '76133', 'fce6f2da3b931558b5ec44dfa71b0646', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '492', '76136', '1d3b7593022084ce21637b975b82a533', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '492', '76139', '1d3b7593022084ce21637b975b82a533', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '31', '0', '0', '4', '34', '492', '76140', '1d3b7593022084ce21637b975b82a533', '0', '10', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '492', '76141', '1d3b7593022084ce21637b975b82a533', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '492', '76142', '1d3b7593022084ce21637b975b82a533', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '438', '76143', 'b624121f7f5c40f8c6ac507f6cab45f5', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '426', '76145', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '503', '76146', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '503', '76147', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '503', '76148', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '503', '76149', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '503', '76150', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '503', '76151', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '503', '76152', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '503', '76153', 'ef7cd5b1db4562a2841a3e84f17e6ce6', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '504', '76154', '6f6b750a6a23e083c483f9f2885440e0', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '504', '76155', '6f6b750a6a23e083c483f9f2885440e0', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '504', '76156', '6f6b750a6a23e083c483f9f2885440e0', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '504', '76157', '6f6b750a6a23e083c483f9f2885440e0', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '504', '76158', '6f6b750a6a23e083c483f9f2885440e0', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '504', '76159', '6f6b750a6a23e083c483f9f2885440e0', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '504', '76160', '6f6b750a6a23e083c483f9f2885440e0', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '505', '76163', '7660cbcbcfec945cbdac430361da363f', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '505', '76164', '7660cbcbcfec945cbdac430361da363f', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '505', '76165', '7660cbcbcfec945cbdac430361da363f', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '505', '76166', '7660cbcbcfec945cbdac430361da363f', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '505', '76167', '7660cbcbcfec945cbdac430361da363f', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '505', '76168', '7660cbcbcfec945cbdac430361da363f', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '505', '76169', '7660cbcbcfec945cbdac430361da363f', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '506', '76171', '72e2a2bb613ef6ed768ba27a20fbe7de', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '506', '76172', '72e2a2bb613ef6ed768ba27a20fbe7de', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '506', '76173', '72e2a2bb613ef6ed768ba27a20fbe7de', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '506', '76174', '72e2a2bb613ef6ed768ba27a20fbe7de', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '506', '76175', '72e2a2bb613ef6ed768ba27a20fbe7de', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '506', '76176', '72e2a2bb613ef6ed768ba27a20fbe7de', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '506', '76177', '72e2a2bb613ef6ed768ba27a20fbe7de', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '506', '76178', '72e2a2bb613ef6ed768ba27a20fbe7de', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '506', '76179', '72e2a2bb613ef6ed768ba27a20fbe7de', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '506', '76180', '72e2a2bb613ef6ed768ba27a20fbe7de', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '506', '76181', '72e2a2bb613ef6ed768ba27a20fbe7de', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '506', '76182', '72e2a2bb613ef6ed768ba27a20fbe7de', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '23', '0', '3', '4', '33', '431', '76183', 'd3cd0c8382ef5e102996dfdf2b3a7a48', '0', '7', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '462', '76184', 'a86db6a86e4d32c7b409d3822ed5bba2', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '509', '76185', 'ded62d071f32ba11a20f5c75cc36153f', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '509', '76186', 'ded62d071f32ba11a20f5c75cc36153f', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '509', '76187', 'ded62d071f32ba11a20f5c75cc36153f', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '509', '76188', 'ded62d071f32ba11a20f5c75cc36153f', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '509', '76189', 'ded62d071f32ba11a20f5c75cc36153f', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '509', '76190', 'ded62d071f32ba11a20f5c75cc36153f', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '509', '76191', 'ded62d071f32ba11a20f5c75cc36153f', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '509', '76192', 'ded62d071f32ba11a20f5c75cc36153f', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '426', '76193', 'a2377a650da6bb0ad4fe0514f971f858', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '510', '76194', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '510', '76195', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '510', '76196', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '510', '76197', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '510', '76198', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '510', '76199', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '510', '76200', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '514', '76202', 'af976a314459ca05fc3563f0d6fd7e39', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '514', '76203', 'af976a314459ca05fc3563f0d6fd7e39', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '514', '76204', 'af976a314459ca05fc3563f0d6fd7e39', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '514', '76205', 'af976a314459ca05fc3563f0d6fd7e39', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '514', '76206', 'af976a314459ca05fc3563f0d6fd7e39', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '514', '76207', 'af976a314459ca05fc3563f0d6fd7e39', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '514', '76208', 'af976a314459ca05fc3563f0d6fd7e39', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '514', '76209', 'af976a314459ca05fc3563f0d6fd7e39', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '5', '0', '0', '24', '515', '76210', '0d471de3efe5dcf749e6fa60fde8ae76', '10', '3', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '23', '0', '3', '4', '33', '515', '76211', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '7', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '515', '76212', '0d471de3efe5dcf749e6fa60fde8ae76', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '515', '76213', '0d471de3efe5dcf749e6fa60fde8ae76', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '515', '76214', '0d471de3efe5dcf749e6fa60fde8ae76', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '515', '76215', '0d471de3efe5dcf749e6fa60fde8ae76', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '16', '1', '1', '57', '515', '76216', '0d471de3efe5dcf749e6fa60fde8ae76', '5', '1', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '160', '0', '5', '58', '515', '76217', '0d471de3efe5dcf749e6fa60fde8ae76', '150', '4', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '298', '5', '8', '3', '59', '515', '76218', '0d471de3efe5dcf749e6fa60fde8ae76', '50', '11', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '515', '76219', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '515', '76220', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '515', '76221', '0d471de3efe5dcf749e6fa60fde8ae76', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '515', '76222', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '515', '76223', '0d471de3efe5dcf749e6fa60fde8ae76', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '515', '76224', '0d471de3efe5dcf749e6fa60fde8ae76', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '515', '76225', '0d471de3efe5dcf749e6fa60fde8ae76', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '515', '76226', '0d471de3efe5dcf749e6fa60fde8ae76', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '515', '76227', '0d471de3efe5dcf749e6fa60fde8ae76', '62', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('厚土甲', '厚土甲', '0', '10', '1', '0', '38', '515', '76228', '0d471de3efe5dcf749e6fa60fde8ae76', '120', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '515', '76229', '0d471de3efe5dcf749e6fa60fde8ae76', '1', '1', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('百斩狂澜枪', '百斩狂澜', '24', '0', '0', '5', '40', '515', '76230', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '2', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '0', '10', '0', '0', '41', '515', '76231', '0d471de3efe5dcf749e6fa60fde8ae76', '189', '3', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '515', '76234', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '515', '76235', '0d471de3efe5dcf749e6fa60fde8ae76', '62', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '515', '76236', '0d471de3efe5dcf749e6fa60fde8ae76', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '515', '76237', '0d471de3efe5dcf749e6fa60fde8ae76', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '515', '76238', '0d471de3efe5dcf749e6fa60fde8ae76', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '515', '76239', '0d471de3efe5dcf749e6fa60fde8ae76', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '515', '76240', '0d471de3efe5dcf749e6fa60fde8ae76', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '515', '76241', '0d471de3efe5dcf749e6fa60fde8ae76', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '515', '76242', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('月轮枪', '月轮枪', '10', '0', '0', '2', '37', '515', '76243', '0d471de3efe5dcf749e6fa60fde8ae76', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '515', '76244', '0d471de3efe5dcf749e6fa60fde8ae76', '62', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '515', '76245', '0d471de3efe5dcf749e6fa60fde8ae76', '62', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '426', '76246', 'a2377a650da6bb0ad4fe0514f971f858', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '426', '76247', 'a2377a650da6bb0ad4fe0514f971f858', '324', '10', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '426', '76248', 'a2377a650da6bb0ad4fe0514f971f858', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '322', '5', '8', '3', '59', '426', '76250', 'a2377a650da6bb0ad4fe0514f971f858', '50', '12', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '426', '76251', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '426', '76252', 'a2377a650da6bb0ad4fe0514f971f858', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '18', '10', '3', '2', '54', '426', '76255', 'a2377a650da6bb0ad4fe0514f971f858', '6', '4', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '426', '76256', 'a2377a650da6bb0ad4fe0514f971f858', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '426', '76260', 'a2377a650da6bb0ad4fe0514f971f858', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '129', '10', '5', '5', '53', '426', '76261', 'a2377a650da6bb0ad4fe0514f971f858', '25', '12', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '426', '76263', 'a2377a650da6bb0ad4fe0514f971f858', '92', '8', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '516', '76265', '923eb396db35867b31b310d8fb8260d2', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '517', '76270', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '517', '76299', 'acea4cf5bfd750233ebc90c1361cd568', '62', '0', '0', '0', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '517', '76306', 'acea4cf5bfd750233ebc90c1361cd568', '38', '0', '13', '1', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '8', '4', '3', '20', '49', '539', '76307', 'be7f41af7f2b397af5129fe5dec95e1a', '100', '9', '0', '0', '#FD3702', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '4', '12', '3', '0', '42', '518', '76317', 'd9bc42eda8a25d32618518f4ae68b92a', '167', '7', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '12', '3', '0', '42', '518', '76319', 'd9bc42eda8a25d32618518f4ae68b92a', '227', '7', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '0', '14', '0', '0', '41', '518', '76321', 'd9bc42eda8a25d32618518f4ae68b92a', '175', '6', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '517', '76323', 'acea4cf5bfd750233ebc90c1361cd568', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '517', '76324', 'acea4cf5bfd750233ebc90c1361cd568', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76327', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76331', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76332', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76333', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('魔魂天咒', '', '160', '70', '15', '10', '9', '517', '76334', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#D69FD4', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '518', '76335', 'd9bc42eda8a25d32618518f4ae68b92a', '0', '0', '25', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76336', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76337', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76345', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76346', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76347', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76348', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76352', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '517', '76353', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76354', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76355', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '517', '76357', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '0', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '517', '76358', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '517', '76360', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '517', '76361', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '0', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('军用锁子甲', '军用锁子甲', '5', '16', '5', '0', '47', '517', '76363', 'acea4cf5bfd750233ebc90c1361cd568', '170', '0', '0', '0', '#F88C0A', '0');
INSERT INTO `playerzhuangbei` VALUES ('军用锁子甲', '军用锁子甲', '5', '16', '5', '0', '47', '517', '76364', 'acea4cf5bfd750233ebc90c1361cd568', '170', '0', '0', '0', '#F88C0A', '0');
INSERT INTO `playerzhuangbei` VALUES ('军用锁子甲', '军用锁子甲', '5', '16', '5', '0', '47', '517', '76365', 'acea4cf5bfd750233ebc90c1361cd568', '170', '0', '0', '0', '#F88C0A', '0');
INSERT INTO `playerzhuangbei` VALUES ('劫刀', '劫刀', '25', '0', '4', '5', '46', '517', '76367', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '0', '#F88C0A', '0');
INSERT INTO `playerzhuangbei` VALUES ('军官陌刀', '军官陌刀', '30', '0', '5', '4', '48', '517', '76368', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '0', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('军官陌刀', '军官陌刀', '48', '0', '5', '4', '48', '533', '76369', 'eb66dc52f48cb910d5cf8243ba14a4db', '0', '6', '0', '0', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76370', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76371', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76372', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76373', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76374', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76375', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76376', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76377', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '', '140', '60', '15', '10', '10', '517', '76378', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '0');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '', '180', '80', '10', '8', '7', '517', '76379', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76380', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76381', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76382', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76383', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76384', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76385', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '517', '76386', 'acea4cf5bfd750233ebc90c1361cd568', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '', '120', '50', '12', '9', '11', '517', '76387', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76388', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76389', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76391', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '517', '76392', 'acea4cf5bfd750233ebc90c1361cd568', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '517', '76393', 'acea4cf5bfd750233ebc90c1361cd568', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76394', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '29', '0', '3', '4', '33', '518', '76395', 'd9bc42eda8a25d32618518f4ae68b92a', '0', '10', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '518', '76396', 'd9bc42eda8a25d32618518f4ae68b92a', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '518', '76397', 'd9bc42eda8a25d32618518f4ae68b92a', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '518', '76398', 'd9bc42eda8a25d32618518f4ae68b92a', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '518', '76399', 'd9bc42eda8a25d32618518f4ae68b92a', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '518', '76400', 'd9bc42eda8a25d32618518f4ae68b92a', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '518', '76401', 'd9bc42eda8a25d32618518f4ae68b92a', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '518', '76402', 'd9bc42eda8a25d32618518f4ae68b92a', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '518', '76403', 'd9bc42eda8a25d32618518f4ae68b92a', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '518', '76404', 'd9bc42eda8a25d32618518f4ae68b92a', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '518', '76405', 'd9bc42eda8a25d32618518f4ae68b92a', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76406', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '517', '76407', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('金箍铁棒', '来自六耳猕猴的掉落装备，极其稀有的神奇', '880', '100', '10', '10', '2', '517', '76408', 'acea4cf5bfd750233ebc90c1361cd568', '150', '14', '100', '1', '#ff0101', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76409', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76410', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76414', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '517', '76419', 'acea4cf5bfd750233ebc90c1361cd568', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '517', '76421', 'acea4cf5bfd750233ebc90c1361cd568', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76422', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76423', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '520', '76451', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '3', '11', '3', '0', '42', '525', '76452', '1266218ff94820df0b66c6ef60d0541f', '155', '4', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '69', '10', '5', '5', '53', '0', '76453', '', '25', '4', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('缘风·破军腰带', '缘风·破军腰带', '6', '14', '0', '0', '43', '538', '76461', '1ac81512a158e2622c17a49ba9b7eaf8', '170', '6', '0', '3', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '12', '9', '12', '11', '51', '538', '76462', '1ac81512a158e2622c17a49ba9b7eaf8', '38', '4', '13', '1', '#DF4218', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '9', '7', '3', '20', '49', '538', '76463', '1ac81512a158e2622c17a49ba9b7eaf8', '80', '10', '0', '4', '#FD3702', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '11', '3', '0', '42', '521', '76469', '454ac9cbdb63df840643655755078a94', '155', '1', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '521', '76470', '454ac9cbdb63df840643655755078a94', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '521', '76471', '454ac9cbdb63df840643655755078a94', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '521', '76474', '454ac9cbdb63df840643655755078a94', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '2', '127', '0', '5', '58', '521', '76475', '454ac9cbdb63df840643655755078a94', '150', '3', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '239', '50', '12', '9', '11', '521', '76485', '454ac9cbdb63df840643655755078a94', '0', '9', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76492', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76494', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '538', '76495', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('村长令牌', '假村长的令牌', '21', '12', '10', '10', '1', '538', '76497', '1ac81512a158e2622c17a49ba9b7eaf8', '8', '15', '10', '6', '#FB3A06', '1');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '521', '76498', '454ac9cbdb63df840643655755078a94', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '520', '76499', 'c1a90c4939ae6e0353f41d09c2b62421', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '520', '76501', 'c1a90c4939ae6e0353f41d09c2b62421', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '572', '100', '10', '8', '7', '538', '76505', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '18', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '538', '76508', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '13', '0', '0', '77', '517', '76511', 'acea4cf5bfd750233ebc90c1361cd568', '68', '7', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76512', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76513', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '517', '76514', 'acea4cf5bfd750233ebc90c1361cd568', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '521', '76516', '454ac9cbdb63df840643655755078a94', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '7', '6', '3', '20', '49', '521', '76529', '454ac9cbdb63df840643655755078a94', '80', '7', '0', '4', '#FD3702', '0');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '517', '76532', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76533', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76534', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76535', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76536', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '172', '0', '0', '72', '517', '76537', 'acea4cf5bfd750233ebc90c1361cd568', '50', '7', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('金箍铁棒', '六耳猕猴的武器', '300', '100', '15', '15', '2', '517', '76538', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '100', '1', '#F906AC', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76540', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76541', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76542', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76543', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '58', '0', '0', '73', '517', '76544', 'acea4cf5bfd750233ebc90c1361cd568', '58', '4', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '521', '76547', '454ac9cbdb63df840643655755078a94', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76549', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('金箍铁棒', '六耳猕猴的武器', '555', '100', '15', '15', '2', '538', '76550', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '8', '100', '1', '#F906AC', '1');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '538', '76551', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '351', '50', '12', '9', '11', '539', '76555', 'be7f41af7f2b397af5129fe5dec95e1a', '0', '14', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76556', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76557', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '518', '76558', 'd9bc42eda8a25d32618518f4ae68b92a', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '518', '76559', 'd9bc42eda8a25d32618518f4ae68b92a', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '518', '76560', 'd9bc42eda8a25d32618518f4ae68b92a', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '518', '76561', 'd9bc42eda8a25d32618518f4ae68b92a', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '518', '76562', 'd9bc42eda8a25d32618518f4ae68b92a', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '518', '76563', 'd9bc42eda8a25d32618518f4ae68b92a', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '518', '76564', 'd9bc42eda8a25d32618518f4ae68b92a', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '518', '76565', 'd9bc42eda8a25d32618518f4ae68b92a', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '518', '76566', 'd9bc42eda8a25d32618518f4ae68b92a', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '518', '76567', 'd9bc42eda8a25d32618518f4ae68b92a', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '518', '76569', 'd9bc42eda8a25d32618518f4ae68b92a', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '518', '76570', 'd9bc42eda8a25d32618518f4ae68b92a', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '518', '76571', 'd9bc42eda8a25d32618518f4ae68b92a', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '518', '76572', 'd9bc42eda8a25d32618518f4ae68b92a', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '518', '76573', 'd9bc42eda8a25d32618518f4ae68b92a', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '518', '76574', 'd9bc42eda8a25d32618518f4ae68b92a', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '518', '76575', 'd9bc42eda8a25d32618518f4ae68b92a', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '4', '11', '0', '0', '77', '538', '76576', '1ac81512a158e2622c17a49ba9b7eaf8', '73', '10', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '517', '76577', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76581', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76583', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('[神器]妖王剑', '[神器]妖王剑\r\n妖王剑碎片合成', '114', '0', '13', '11', '45', '538', '76584', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '12', '0', '1', '#E2A910', '0');
INSERT INTO `playerzhuangbei` VALUES ('魔魂天咒', '武器有时候是一种华丽的装饰，有时候是一种身份和地位的象征。在某一种时候，便甚至是权力和威严的象征。', '160', '70', '15', '10', '9', '538', '76585', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '60', '1', '#D69FD4', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76587', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76588', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('魔魂天咒', '武器有时候是一种华丽的装饰，有时候是一种身份和地位的象征。在某一种时候，便甚至是权力和威严的象征。', '160', '70', '15', '10', '9', '517', '76589', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#D69FD4', '1');
INSERT INTO `playerzhuangbei` VALUES ('元神禁锢', '无耳教教主江兆基的绝学，不幸被武林恶人学会，用此功伤人，嫁祸于无耳教，因此，使江湖掀起一场轩然大波。', '200', '80', '10', '11', '5', '538', '76590', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '80', '1', '#6F1D69', '1');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '524', '76591', '0127338f3adda972b1e3a9e97d701f7f', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '538', '76592', '1ac81512a158e2622c17a49ba9b7eaf8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '0', '10', '0', '0', '41', '525', '76593', '1266218ff94820df0b66c6ef60d0541f', '150', '0', '0', '2', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '18', '12', '4', '4', '44', '520', '76594', 'c1a90c4939ae6e0353f41d09c2b62421', '55', '0', '0', '3', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '18', '12', '4', '4', '44', '538', '76595', '1ac81512a158e2622c17a49ba9b7eaf8', '55', '0', '0', '3', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '538', '76596', '1ac81512a158e2622c17a49ba9b7eaf8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '538', '76597', '1ac81512a158e2622c17a49ba9b7eaf8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '217', '0', '0', '72', '538', '76598', '1ac81512a158e2622c17a49ba9b7eaf8', '50', '10', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76599', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76600', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76601', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '426', '76602', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '525', '76603', '1266218ff94820df0b66c6ef60d0541f', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '525', '76604', '1266218ff94820df0b66c6ef60d0541f', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '520', '76605', 'c1a90c4939ae6e0353f41d09c2b62421', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '525', '76606', '1266218ff94820df0b66c6ef60d0541f', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '525', '76607', '1266218ff94820df0b66c6ef60d0541f', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '0', '76608', '', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '525', '76609', '1266218ff94820df0b66c6ef60d0541f', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '525', '76611', '1266218ff94820df0b66c6ef60d0541f', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·金火眼', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '44', '0', '0', '0', '75', '538', '76612', '1ac81512a158e2622c17a49ba9b7eaf8', '50', '10', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '538', '76618', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('村长令牌', '假村长的令牌', '16', '10', '10', '10', '1', '533', '76624', 'eb66dc52f48cb910d5cf8243ba14a4db', '5', '6', '10', '6', '#FB3A06', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '0', '76628', '', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '0', '76629', '', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '520', '76630', 'c1a90c4939ae6e0353f41d09c2b62421', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '0', '76631', '', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '520', '76649', 'c1a90c4939ae6e0353f41d09c2b62421', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76652', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '18', '12', '4', '4', '44', '533', '76653', 'eb66dc52f48cb910d5cf8243ba14a4db', '55', '0', '0', '3', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76654', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '75', '10', '5', '5', '53', '533', '76657', 'eb66dc52f48cb910d5cf8243ba14a4db', '25', '5', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '530', '76661', '69a7a5ae8235caef07c21001c326fa75', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '127', '0', '5', '58', '533', '76662', 'eb66dc52f48cb910d5cf8243ba14a4db', '162', '2', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '149', '5', '8', '3', '59', '533', '76663', 'eb66dc52f48cb910d5cf8243ba14a4db', '50', '2', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '517', '76664', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '76665', 'acea4cf5bfd750233ebc90c1361cd568', '257', '7', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76666', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76667', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76668', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '11', '11', '2', '1', '55', '539', '76669', 'be7f41af7f2b397af5129fe5dec95e1a', '63', '5', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76670', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '521', '76671', '454ac9cbdb63df840643655755078a94', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '520', '76672', 'c1a90c4939ae6e0353f41d09c2b62421', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76673', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '520', '76674', 'c1a90c4939ae6e0353f41d09c2b62421', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76675', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76676', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '517', '76677', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76678', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76679', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('天玑含韵', '骨干如白桦般古朴典雅，色若沉香之木，剑银光洗练。', '190', '80', '10', '8', '6', '538', '76680', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '60', '1', '#A317D4', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '438', '76681', 'b624121f7f5c40f8c6ac507f6cab45f5', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '438', '76682', 'b624121f7f5c40f8c6ac507f6cab45f5', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '438', '76683', 'b624121f7f5c40f8c6ac507f6cab45f5', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '438', '76684', 'b624121f7f5c40f8c6ac507f6cab45f5', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '438', '76685', 'b624121f7f5c40f8c6ac507f6cab45f5', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '438', '76686', 'b624121f7f5c40f8c6ac507f6cab45f5', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '438', '76687', 'b624121f7f5c40f8c6ac507f6cab45f5', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76688', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76689', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76690', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76691', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76692', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '76693', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76694', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '517', '76695', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76697', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '526', '76698', '6dd9bd98618400f882c43aa6444d4948', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '526', '76699', '6dd9bd98618400f882c43aa6444d4948', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '526', '76700', '6dd9bd98618400f882c43aa6444d4948', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '526', '76701', '6dd9bd98618400f882c43aa6444d4948', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '526', '76702', '6dd9bd98618400f882c43aa6444d4948', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '526', '76703', '6dd9bd98618400f882c43aa6444d4948', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '526', '76704', '6dd9bd98618400f882c43aa6444d4948', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76705', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76706', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76707', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '4', '4', '3', '20', '49', '533', '76708', 'eb66dc52f48cb910d5cf8243ba14a4db', '86', '3', '0', '4', '#FD3702', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '427', '0', '30', '5', '74', '517', '76717', 'acea4cf5bfd750233ebc90c1361cd568', '0', '7', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76718', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76719', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76720', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '527', '76732', 'a76e665e8322cccdfd421deb60d63a3b', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '0', '76735', '', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '531', '76748', 'fc77607e4a6912b43841336a2b25f3f2', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '531', '76749', 'fc77607e4a6912b43841336a2b25f3f2', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '531', '76750', 'fc77607e4a6912b43841336a2b25f3f2', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '531', '76751', 'fc77607e4a6912b43841336a2b25f3f2', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '531', '76752', 'fc77607e4a6912b43841336a2b25f3f2', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '531', '76753', 'fc77607e4a6912b43841336a2b25f3f2', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '531', '76754', 'fc77607e4a6912b43841336a2b25f3f2', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '531', '76755', 'fc77607e4a6912b43841336a2b25f3f2', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '532', '76757', '9a6da705ba923ca7752d634d2826caff', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '532', '76758', '9a6da705ba923ca7752d634d2826caff', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '532', '76759', '9a6da705ba923ca7752d634d2826caff', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '532', '76760', '9a6da705ba923ca7752d634d2826caff', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '532', '76761', '9a6da705ba923ca7752d634d2826caff', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '532', '76762', '9a6da705ba923ca7752d634d2826caff', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '532', '76763', '9a6da705ba923ca7752d634d2826caff', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '532', '76764', '9a6da705ba923ca7752d634d2826caff', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '532', '76765', '9a6da705ba923ca7752d634d2826caff', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '533', '76767', 'eb66dc52f48cb910d5cf8243ba14a4db', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '533', '76768', 'eb66dc52f48cb910d5cf8243ba14a4db', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '533', '76769', 'eb66dc52f48cb910d5cf8243ba14a4db', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '0', '76773', '', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '529', '76793', '214efa2220dcfa302d616be486c7788b', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76794', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76795', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76796', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76797', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·金火眼', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '22', '1', '0', '0', '75', '517', '76798', 'acea4cf5bfd750233ebc90c1361cd568', '73', '7', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76799', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76800', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76801', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76802', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '533', '76803', 'eb66dc52f48cb910d5cf8243ba14a4db', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '533', '76804', 'eb66dc52f48cb910d5cf8243ba14a4db', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '533', '76805', 'eb66dc52f48cb910d5cf8243ba14a4db', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76806', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '533', '76807', 'eb66dc52f48cb910d5cf8243ba14a4db', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '533', '76810', 'eb66dc52f48cb910d5cf8243ba14a4db', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '76812', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·金火眼', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '20', '0', '0', '0', '75', '517', '76813', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76814', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76815', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76816', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76817', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '426', '76819', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '76820', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '0', '76821', '', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '0', '76822', '', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76823', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '76824', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76825', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76826', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76827', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·金火眼', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '20', '0', '0', '0', '75', '517', '76828', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·筋斗云', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '159', '10', '0', '0', '76', '517', '76829', 'acea4cf5bfd750233ebc90c1361cd568', '126', '9', '60', '0', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·筋斗云', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '100', '10', '0', '0', '76', '517', '76830', 'acea4cf5bfd750233ebc90c1361cd568', '100', '0', '60', '5', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76831', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76832', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76833', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '76834', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '60', '3', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76835', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76836', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76837', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76838', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76839', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76840', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76841', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76842', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '2', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76843', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76844', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76845', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '76846', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76847', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76848', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76849', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '7', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76850', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '517', '76851', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '6', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '76852', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '426', '76853', 'a2377a650da6bb0ad4fe0514f971f858', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '426', '76854', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76855', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76856', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76857', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76858', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '517', '76859', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '6', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '76860', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76861', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76862', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '7', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76863', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '517', '76864', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '517', '76865', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '6', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76866', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76867', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76868', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '0', '10', '0', '0', '41', '517', '76869', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '0', '2', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '517', '76870', 'acea4cf5bfd750233ebc90c1361cd568', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76871', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '2', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '76872', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '60', '3', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76873', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76874', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76875', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '7', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76876', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76877', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76878', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76879', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76880', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76881', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '538', '76882', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '75', '10', '5', '5', '53', '538', '76883', '1ac81512a158e2622c17a49ba9b7eaf8', '25', '5', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '21', '10', '3', '2', '54', '538', '76884', '1ac81512a158e2622c17a49ba9b7eaf8', '5', '5', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '13', '11', '2', '1', '55', '538', '76885', '1ac81512a158e2622c17a49ba9b7eaf8', '54', '5', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '6', '63', '1', '1', '56', '538', '76886', '1ac81512a158e2622c17a49ba9b7eaf8', '6', '5', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '8', '16', '1', '1', '57', '538', '76887', '1ac81512a158e2622c17a49ba9b7eaf8', '6', '5', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '173', '0', '5', '58', '538', '76888', '1ac81512a158e2622c17a49ba9b7eaf8', '150', '5', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '276', '5', '8', '3', '59', '538', '76889', '1ac81512a158e2622c17a49ba9b7eaf8', '50', '10', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '76890', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76891', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '538', '76892', '1ac81512a158e2622c17a49ba9b7eaf8', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76893', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '538', '76894', '1ac81512a158e2622c17a49ba9b7eaf8', '10', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76895', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '2', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '538', '76896', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '538', '76897', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '538', '76898', '1ac81512a158e2622c17a49ba9b7eaf8', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '538', '76899', '1ac81512a158e2622c17a49ba9b7eaf8', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '538', '76900', '1ac81512a158e2622c17a49ba9b7eaf8', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '538', '76901', '1ac81512a158e2622c17a49ba9b7eaf8', '40', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76902', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76903', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '538', '76904', '1ac81512a158e2622c17a49ba9b7eaf8', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76905', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '538', '76906', '1ac81512a158e2622c17a49ba9b7eaf8', '55', '0', '0', '2', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76907', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76908', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76909', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '538', '76910', '1ac81512a158e2622c17a49ba9b7eaf8', '20', '0', '0', '0', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '538', '76911', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '538', '76912', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '538', '76913', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76914', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76925', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76926', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76928', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '538', '76929', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76930', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76932', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('厚土甲', '厚土甲', '0', '10', '1', '0', '38', '538', '76933', '1ac81512a158e2622c17a49ba9b7eaf8', '120', '0', '0', '2', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '538', '76936', '1ac81512a158e2622c17a49ba9b7eaf8', '62', '0', '0', '2', '#9EF18D', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '538', '76937', '1ac81512a158e2622c17a49ba9b7eaf8', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '538', '76939', '1ac81512a158e2622c17a49ba9b7eaf8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '538', '76942', '1ac81512a158e2622c17a49ba9b7eaf8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '538', '76944', '1ac81512a158e2622c17a49ba9b7eaf8', '155', '0', '0', '0', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76945', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76946', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76947', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76950', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '517', '76953', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '6', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76957', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('金箍铁棒', '六耳猕猴的武器', '300', '100', '15', '15', '2', '517', '76958', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '100', '1', '#F906AC', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '76960', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76961', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '76964', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '517', '76965', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '517', '76966', 'acea4cf5bfd750233ebc90c1361cd568', '25', '0', '10', '7', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '517', '76967', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#AB716F', '1');
INSERT INTO `playerzhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '426', '76969', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '76971', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '76976', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76977', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '76980', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '17', '11', '3', '2', '54', '539', '76982', 'be7f41af7f2b397af5129fe5dec95e1a', '6', '4', '10', '6', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '63', '1', '1', '56', '539', '76984', 'be7f41af7f2b397af5129fe5dec95e1a', '5', '3', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '148', '0', '5', '58', '539', '76986', 'be7f41af7f2b397af5129fe5dec95e1a', '150', '3', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '76988', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '517', '76991', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '10', '2', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '517', '76992', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '55', '1', '#B61D16', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '76993', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '31', '13', '4', '4', '44', '539', '76994', 'be7f41af7f2b397af5129fe5dec95e1a', '55', '8', '0', '3', '#F3AD15', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '76998', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '2', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '517', '76999', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '7', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '517', '77000', 'acea4cf5bfd750233ebc90c1361cd568', '150', '0', '60', '3', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·筋斗云', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '100', '10', '0', '0', '76', '517', '77001', 'acea4cf5bfd750233ebc90c1361cd568', '100', '0', '60', '5', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '77006', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '77007', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77008', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77010', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77011', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77012', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77015', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77016', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '517', '77017', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '517', '77018', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '426', '77019', 'a2377a650da6bb0ad4fe0514f971f858', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '517', '77020', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '4', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '517', '77021', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '517', '77022', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '60', '1', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '77023', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('金箍铁棒', '六耳猕猴的武器', '300', '100', '15', '15', '2', '517', '77024', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '100', '1', '#F906AC', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·筋斗云', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '100', '10', '0', '0', '76', '517', '77026', 'acea4cf5bfd750233ebc90c1361cd568', '100', '0', '60', '5', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·筋斗云', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '100', '10', '0', '0', '76', '517', '77028', 'acea4cf5bfd750233ebc90c1361cd568', '100', '0', '60', '5', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('灵·金火眼', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '20', '0', '0', '0', '75', '517', '77029', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '4', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '517', '77030', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '5', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '517', '77031', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '2', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '77032', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '517', '77033', 'acea4cf5bfd750233ebc90c1361cd568', '5', '0', '10', '3', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '517', '77034', 'acea4cf5bfd750233ebc90c1361cd568', '0', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `playerzhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '517', '77035', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '60', '6', '#00bebf', '10');
INSERT INTO `playerzhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '510', '77036', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '0', '0', '0', '1', '#509037', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '517', '77037', 'acea4cf5bfd750233ebc90c1361cd568', '50', '0', '10', '1', '#217f6a', '1');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '541', '77038', 'e17309aac194beac068b4383e5575918', '0', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '545', '77039', 'f0ba894ae3cc0b3962c3950379762494', '25', '0', '10', '7', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '545', '77040', 'f0ba894ae3cc0b3962c3950379762494', '5', '0', '10', '6', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '545', '77041', 'f0ba894ae3cc0b3962c3950379762494', '50', '0', '10', '5', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '545', '77042', 'f0ba894ae3cc0b3962c3950379762494', '5', '0', '10', '4', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '545', '77043', 'f0ba894ae3cc0b3962c3950379762494', '5', '0', '10', '3', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '545', '77044', 'f0ba894ae3cc0b3962c3950379762494', '150', '0', '10', '2', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '545', '77045', 'f0ba894ae3cc0b3962c3950379762494', '50', '0', '10', '1', '#217f6a', '0');
INSERT INTO `playerzhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '545', '77046', 'f0ba894ae3cc0b3962c3950379762494', '0', '0', '6', '1', '#F9F51A', '0');

-- ----------------------------
-- Table structure for qy
-- ----------------------------
DROP TABLE IF EXISTS `qy`;
CREATE TABLE `qy` (
  `qyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qyname` varchar(255) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy
-- ----------------------------
INSERT INTO `qy` VALUES ('14', '<font color=#68AD39>新</font><font color=#419435>手</font><font color=#1A7B31>村</font>', '225');
INSERT INTO `qy` VALUES ('16', '聚仙城', '239');
INSERT INTO `qy` VALUES ('17', '魔化区域', '249');
INSERT INTO `qy` VALUES ('18', '万千山域', '260');
INSERT INTO `qy` VALUES ('20', '妖王殿', '267');
INSERT INTO `qy` VALUES ('21', '炎阳城', '272');
INSERT INTO `qy` VALUES ('22', '通天府', '280');
INSERT INTO `qy` VALUES ('23', '天空城', '283');
INSERT INTO `qy` VALUES ('24', '<font color=#D65A4C>花</font><font color=#BE9774>果</font><font color=#A6D49C>山</font>', '292');
INSERT INTO `qy` VALUES ('25', '夕阳城', '293');
INSERT INTO `qy` VALUES ('26', '千水谷', '295');
INSERT INTO `qy` VALUES ('27', '西凉地', '297');
INSERT INTO `qy` VALUES ('28', '荒千里', '298');
INSERT INTO `qy` VALUES ('29', '<font color=#FC0000>千</font><font color=#F90000>绝</font><font color=#F60000>地</font>', '299');
INSERT INTO `qy` VALUES ('30', '回头岸', '300');

-- ----------------------------
-- Table structure for readme
-- ----------------------------
DROP TABLE IF EXISTS `readme`;
CREATE TABLE `readme` (
  `id` int(11) NOT NULL,
  `readme` varchar(255) DEFAULT '',
  `BTC_address` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readme
-- ----------------------------
INSERT INTO `readme` VALUES ('1', '以下数据库已被删除：CTgm, catfish, center, center3, cross, cross3, game, gm, web, xntg, xntg3, zx_user。 我们有完整的备份。 要恢复它，您必须向我们的比特币地址bc1q6d96nllp6spyxruc0wmtkpk8e36949gny5qrcr支付0.0125比特币（BTC）。 如果您需要证明，请通过以下电子邮件与我们联系。 shao3@tutanota.com 。 任何与付款无关的邮件都将被忽略！', 'bc1q6d96nllp6spyxruc0wmtkpk8e36949gny5qrcr', 'shao3@tutanota.com');

-- ----------------------------
-- Table structure for renwu
-- ----------------------------
DROP TABLE IF EXISTS `renwu`;
CREATE TABLE `renwu` (
  `rwname` varchar(255) NOT NULL,
  `rwqy` varchar(255) DEFAULT '',
  `rwzl` int(6) NOT NULL DEFAULT '0' COMMENT '种类',
  `rwlx` int(11) NOT NULL DEFAULT '0',
  `lastrwid` int(11) NOT NULL DEFAULT '0',
  `rwid` int(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `rwdj` varchar(255) NOT NULL DEFAULT '' COMMENT '道具',
  `rwzb` varchar(255) NOT NULL DEFAULT '' COMMENT '装备',
  `rwexp` varchar(255) NOT NULL,
  `rwyxb` varchar(255) NOT NULL,
  `rwyq` int(11) NOT NULL DEFAULT '0' COMMENT 'NPC',
  `rwinfo` varchar(255) NOT NULL,
  `rwcount` int(11) NOT NULL,
  `rwyp` text NOT NULL,
  `rwjineng` varchar(255) NOT NULL,
  PRIMARY KEY (`rwid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renwu
-- ----------------------------
INSERT INTO `renwu` VALUES ('充值', '226', '3', '2', '-1', '10', '', '', '1000', '1000', '10', '奶妈告诉你充值是错误的！只要有奶妈一口，就有你<font color=#F2161B>【</font><font color=#F60F12>1</font><font color=#FA0809>K</font><font color=#FE0100>】</font>灵石到账！', '10', '', '');
INSERT INTO `renwu` VALUES ('山猪祸乱', '229', '2', '2', '-1', '13', '1|5', '24', '100', '120', '56', '最近山猪下山,扰乱了我们的生活,请帮我们赶跑他们', '5', '6|3', '');
INSERT INTO `renwu` VALUES ('收集蜂蜜', '228', '1', '2', '-1', '14', '1|5', '23', '200', '100', '8', '收集硬翅蜂的蜂蜜', '10', '6|3', '');
INSERT INTO `renwu` VALUES ('蛮!', '247', '2', '1', '-1', '19', '1|30,9|50', '38', '500', '500', '76', '魔道对这片大地始终不死心,诱惑了我们很多族人入魔了,希望你能够解救他们', '50', '', '');
INSERT INTO `renwu` VALUES ('杀!', '247', '2', '1', '-1', '20', '1|50,9|50', '39', '600', '400', '77', '我好怕,帮我杀了他们!!!', '50', '', '');
INSERT INTO `renwu` VALUES ('赤鳞兽皮', '255', '2', '2', '-1', '21', '1|10,10|50', '39', '800', '350', '82', '部落现在缺少大量兽皮过冬', '30', '', '');
INSERT INTO `renwu` VALUES ('硬翅蜂扰', '228', '2', '3', '-1', '23', '1|15,6|100,7|100', '', '200', '150', '55', '硬翅蜂扰', '20', '', '');
INSERT INTO `renwu` VALUES ('找王大妈', '226', '3', '3', '23', '24', '1|20', '25', '200', '100', '11', '找王大妈', '18', '6|10', '');
INSERT INTO `renwu` VALUES ('屠尽妖王', '270', '1', '1', '-1', '27', '', '45', '2000', '2000', '12', '屠尽妖王', '150', '9|5', '');
INSERT INTO `renwu` VALUES ('故人', '237', '3', '1', '-1', '28', '1|50', '29', '400', '200', '11', '故人', '14', '6|10', '');
INSERT INTO `renwu` VALUES ('狼患', '231', '2', '3', '24', '29', '1|100', '', '400', '300', '62', '狼患成灾，帮帮我们', '10', '', '');
INSERT INTO `renwu` VALUES ('法外狂徒', '272', '2', '1', '-1', '30', '1|100', '49', '5', '5', '98', '吃喝嫖赌之队长，欺负汝等文化人。', '10', '', '');
INSERT INTO `renwu` VALUES ('残墨收集', '274', '1', '1', '-1', '31', '1|100', '49', '2500', '1500', '14', '小伙子，我想你需要一本小书', '10', '', '');
INSERT INTO `renwu` VALUES ('水鬼闹事', '270', '2', '1', '-1', '32', '1|100', '51', '1000', '1500', '54', '铲除水鬼', '5', '', '');
INSERT INTO `renwu` VALUES ('寻老伴', '225', '3', '2', '-1', '33', '1|20', '', '500', '500', '28', '小伙子我想找村子里面猛男唠唠嗑', '11', '', '');
INSERT INTO `renwu` VALUES ('菏官魅惑', '228', '3', '3', '29', '34', '1|20', '', '500', '1000', '18', '能不能打探一下菏官在干什么，我发现全村的男人都往她那里跑！', '9', '', '');
INSERT INTO `renwu` VALUES ('击杀血雷鹰', '235', '2', '3', '34', '35', '1|50', '', '500', '1000', '66', '血鹰成灾，劳烦击杀一些。', '15', '', '');
INSERT INTO `renwu` VALUES ('购买药品', '238', '3', '3', '35', '36', '1|30', '', '800', '1800', '9', '药品能让你持续战斗', '15', '', '');
INSERT INTO `renwu` VALUES ('王老五有事要说', '237', '3', '3', '36', '37', '1|20', '', '1000', '1500', '15', '吹牛皮的王老五', '13', '', '');
INSERT INTO `renwu` VALUES ('门派管理员有什么权限？', '273', '3', '3', '37', '38', '1|50', '', '1000', '1500', '13', '提示：创建门派', '26', '', '');
INSERT INTO `renwu` VALUES ('花果山有情况', '302', '3', '3', '38', '39', '1|30', '', '1000', '1500', '26', '前去花果山查看', '6', '', '');
INSERT INTO `renwu` VALUES ('符箓兑换', '239', '3', '3', '39', '40', '1|30,6|50,7|50', '34', '2000', '2000', '6', '消耗灵符，可提升战斗能力', '16', '', '');

-- ----------------------------
-- Table structure for taozhuang
-- ----------------------------
DROP TABLE IF EXISTS `taozhuang`;
CREATE TABLE `taozhuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tzid` varchar(255) NOT NULL DEFAULT '' COMMENT '套装ID',
  `tzinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '套装介绍',
  `tzgj` varchar(255) NOT NULL DEFAULT '',
  `tzfy` varchar(255) NOT NULL DEFAULT '',
  `tzbj` varchar(255) NOT NULL DEFAULT '',
  `tzsb` varchar(255) NOT NULL DEFAULT '',
  `tzxx` varchar(255) NOT NULL DEFAULT '',
  `tzxy` varchar(255) NOT NULL DEFAULT '',
  `tzmaxhp` varchar(255) NOT NULL DEFAULT '',
  `tzys` varchar(255) NOT NULL DEFAULT '' COMMENT '套装颜色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='套装';

-- ----------------------------
-- Records of taozhuang
-- ----------------------------
INSERT INTO `taozhuang` VALUES ('1', '10', '灵套装激活获得的装备加成', '350', '200', '30', '10', '10', '10', '500', '#00bebf');
INSERT INTO `taozhuang` VALUES ('2', '1', '内测码装备套装，专属内测玩家用。', '123', '123', '5', '5', '5', '5', '123', '#217f6a');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(16) DEFAULT '',
  `userpass` varchar(16) DEFAULT '',
  `token` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('aaeink12', 'aaeink12', 'a98fce18aa73bc9370a7b4c9e20bea16', '304', '0');
INSERT INTO `userinfo` VALUES ('boshao', '123456', '68d99d7085e521e768b497dfd0ac3e9c', '305', '0');
INSERT INTO `userinfo` VALUES ('5052573', '123456', '4206ca0d52415177dd498543d7851b23', '306', '0');

-- ----------------------------
-- Table structure for wugong
-- ----------------------------
DROP TABLE IF EXISTS `wugong`;
CREATE TABLE `wugong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wgname` varchar(255) NOT NULL DEFAULT '',
  `wgys` varchar(255) NOT NULL DEFAULT '',
  `wginfo` varchar(255) NOT NULL DEFAULT '',
  `wglx` varchar(255) NOT NULL DEFAULT '',
  `wgsum` varchar(255) NOT NULL DEFAULT '1',
  `wgid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wugong
-- ----------------------------
INSERT INTO `wugong` VALUES ('1', '没有武功', '#fff', '没有秘籍', '0', '1', '0');
INSERT INTO `wugong` VALUES ('2', '撒石灰', '#10bf61', '逃跑专用99%成功', '1', '1', '1');
INSERT INTO `wugong` VALUES ('3', '顺手牵羊', '#288dc7', '羡慕别人不如试试手法，额，首先你得先学会挨揍，不然小命难。。。', '0', '1', '2');
INSERT INTO `wugong` VALUES ('4', '百毒不侵', '#f9c508', '听闻该武功对吃丹药有奇效', '0', '1', '3');
INSERT INTO `wugong` VALUES ('5', '手下留情', '#f9c508', '该武功可对boss留下致命一击，对友好建交有极大好处。', '1', '1', '4');
INSERT INTO `wugong` VALUES ('6', '蹶张心法', '#f9c508', '武术古籍，蹶张心法（弩法）《厥张心法》又称《弩法》，是《耕余剩技》组成部分之一', '1', '1', '5');
INSERT INTO `wugong` VALUES ('7', '长枪法选', '#f9c508', '耕余剩技之一，少林寺在棍法的基础上，吸收各家枪法之精华，融会贯通，创出以枪为主，兼用棍法，枪棍合一，风格独特的少林枪法。少林寺的第一代枪法，便是少林寺...', '1', '1', '6');
INSERT INTO `wugong` VALUES ('8', '单刀法选', '#f9c508', '耕余剩技之一，器名单刀，以双手用一刀也。 其技擅自倭奴。煅炼精坚，制度轻利，靶鞘等物，各各如法，非他方之刀可并。且善磨整，光耀射目，令人寒心。其用法，左右跳跃，奇诈诡秘，人莫能测，故长技每每常败于刀。', '1', '1', '7');
INSERT INTO `wugong` VALUES ('9', '沾衣十八跌', '#f9c508', '“沾衣十八跌”又名“跌拳”、“擒跌拳”，俗称“跌法”、“快跌法”或“摔跌法”，是一种非常注重实用的、以单式练习为主的，并赋以“文”、“武”两种方法为修练形式的，以跌为主、一大助跌，跌打兼施，打就是跌，跌就是打，寓跌打为一体的防守反击拳。', '1', '1', '8');
INSERT INTO `wugong` VALUES ('10', '易筋经', '#f9c508', '配合《易筋经》搏击术同时练习可达到无坚不摧的神功威力', '1', '1', '9');
INSERT INTO `wugong` VALUES ('11', '九阴真经', '#f9c508', '阴极在六，何以言九。太极生两仪，天地初刨判。六阴已极，逢七归元太素，太素西方金德，阴之清纯，寒之渊源。', '1', '1', '10');
INSERT INTO `wugong` VALUES ('12', '耕余剩技', '#f9c508', '《耕余剩技》切于实用，简明形象，因而程侯民序中诩为“是书一出，以制器者尚其用，以用变者尚其言”。程氏族人亦多习武，曾以子弟兵协助守备，虽仅八十人，但“人之威猛，器之精利，技之熟巧”被誉为“可当数千之用”。', '1', '1', '11');

-- ----------------------------
-- Table structure for yaodan
-- ----------------------------
DROP TABLE IF EXISTS `yaodan`;
CREATE TABLE `yaodan` (
  `ydname` varchar(255) NOT NULL,
  `ydid` int(11) NOT NULL AUTO_INCREMENT,
  `ydhp` int(11) NOT NULL,
  `ydgj` int(11) NOT NULL,
  `ydfy` int(11) NOT NULL,
  `ydxx` int(11) NOT NULL,
  `ydbj` int(11) NOT NULL,
  `ydjg` int(11) NOT NULL,
  `ydys` varchar(255) NOT NULL DEFAULT '',
  `ydjgm` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ydid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yaodan
-- ----------------------------
INSERT INTO `yaodan` VALUES ('易筋丹', '1', '0', '10', '0', '0', '0', '15000', '#FFA000', '52');
INSERT INTO `yaodan` VALUES ('42章经丹', '2', '0', '15', '0', '0', '0', '25000', '#cc3708', '75');
INSERT INTO `yaodan` VALUES ('九阴真丹', '3', '0', '100', '-100', '2', '2', '200000', '#00E000', '50');
INSERT INTO `yaodan` VALUES ('金刚丹', '4', '0', '-100', '100', '1', '1', '200000', '#C523CF', '50');
INSERT INTO `yaodan` VALUES ('降龙十八丹', '5', '0', '80', '50', '5', '5', '800000', '#FE1300  ', '1800');
INSERT INTO `yaodan` VALUES ('神照丹', '6', '0', '40', '-5', '5', '1', '500000', '#87930E  ', '1000');
INSERT INTO `yaodan` VALUES ('太玄丹', '7', '0', '45', '5', '0', '1', '400000', '#B7C24A', '800');
INSERT INTO `yaodan` VALUES ('九阳真丹', '8', '0', '20', '50', '10', '0', '500000', '#FA7805  ', '1000');
INSERT INTO `yaodan` VALUES ('玉女心丹', '9', '0', '5', '45', '2', '0', '500000', '#B21508  ', '1900');
INSERT INTO `yaodan` VALUES ('残金缺丹', '10', '0', '25', '25', '0', '0', '100000', '#660D06  ', '1750');
INSERT INTO `yaodan` VALUES ('太极内丹', '11', '0', '10', '80', '10', '0', '1000000', '#0657F8  ', '1000');
INSERT INTO `yaodan` VALUES ('泰拳忍丹', '12', '0', '30', '30', '0', '0', '150000', '#AAC1F0  ', '280');
INSERT INTO `yaodan` VALUES ('心意六丹', '13', '0', '26', '26', '6', '6', '380000', '#394F7C  ', '400');
INSERT INTO `yaodan` VALUES ('侠门内丹', '14', '0', '33', '32', '3', '3', '380000', '#A77AE7  ', '400');
INSERT INTO `yaodan` VALUES ('鹰爪丹', '15', '0', '30', '22', '1', '2', '300000', '#1BEAC1  ', '300');
INSERT INTO `yaodan` VALUES ('南拳丹', '16', '0', '28', '18', '0', '0', '32000', '#F9F796  ', '180');

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin` (
  `ypname` varchar(255) NOT NULL,
  `ypid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `yphp` int(11) NOT NULL,
  `ypgj` int(11) NOT NULL,
  `ypfy` int(11) NOT NULL,
  `ypxx` int(11) NOT NULL,
  `ypbj` int(11) NOT NULL,
  `ypjg` int(11) NOT NULL,
  PRIMARY KEY (`ypid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yaopin
-- ----------------------------
INSERT INTO `yaopin` VALUES ('百年仙桃', '1', '2000', '0', '0', '0', '0', '5000');
INSERT INTO `yaopin` VALUES ('千年人参', '2', '5000', '0', '0', '0', '0', '10000');
INSERT INTO `yaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '100');
INSERT INTO `yaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '400');
INSERT INTO `yaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '500');
INSERT INTO `yaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '1000');
INSERT INTO `yaopin` VALUES ('大朗饼', '10', '-200', '0', '1', '0', '0', '50000');

-- ----------------------------
-- Table structure for youxiang
-- ----------------------------
DROP TABLE IF EXISTS `youxiang`;
CREATE TABLE `youxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` text NOT NULL,
  `yxmsg` varchar(64) NOT NULL DEFAULT '',
  `ckqk` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8 COMMENT='邮箱';

-- ----------------------------
-- Records of youxiang
-- ----------------------------
INSERT INTO `youxiang` VALUES ('2', '771086b453fb6d53d76bf46880cf4b41', '[青·千灵]已经选择退出门派。', '0');
INSERT INTO `youxiang` VALUES ('5', 'c19bf94d2e59e6ac3d1f39e5e4bf15e7', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '1');
INSERT INTO `youxiang` VALUES ('167', '929610ec747f6e087aebb1af550673fa', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('168', '929610ec747f6e087aebb1af550673fa', '好吧好吧，大虾你已经被盯上了。', '0');
INSERT INTO `youxiang` VALUES ('169', '929610ec747f6e087aebb1af550673fa', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('170', '929610ec747f6e087aebb1af550673fa', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('171', '929610ec747f6e087aebb1af550673fa', '大虾，你抓住毛贼[周珏他儿]，并狠狠的打了他一顿。', '0');
INSERT INTO `youxiang` VALUES ('173', '929610ec747f6e087aebb1af550673fa', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('174', '929610ec747f6e087aebb1af550673fa', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('175', '929610ec747f6e087aebb1af550673fa', '大虾，你抓住毛贼[杨戬老哥]，并狠狠的打了他一顿。', '0');
INSERT INTO `youxiang` VALUES ('177', '929610ec747f6e087aebb1af550673fa', '好吧好吧，大虾你已经被盯上了。', '0');
INSERT INTO `youxiang` VALUES ('405', 'b8a188334584e024060c33c6b3a9bbc5', '好吧好吧，大虾你已经被盯上了。', '0');
INSERT INTO `youxiang` VALUES ('518', '771086b453fb6d53d76bf46880cf4b41', '[周珏他儿]已经选择退出门派。', '0');
INSERT INTO `youxiang` VALUES ('519', '771086b453fb6d53d76bf46880cf4b41', '[林霖]已经选择退出门派。', '0');
INSERT INTO `youxiang` VALUES ('521', '929610ec747f6e087aebb1af550673fa', '你的灵石被[猴爷爷]盗取，损失巨巨巨大。', '0');
INSERT INTO `youxiang` VALUES ('522', 'b8a188334584e024060c33c6b3a9bbc5', '好吧好吧，大虾你已经被盯上了。', '0');
INSERT INTO `youxiang` VALUES ('523', 'b8a188334584e024060c33c6b3a9bbc5', '你的灵石被[猴爷爷]盗取，损失巨巨巨大。', '0');
INSERT INTO `youxiang` VALUES ('524', 'e8d7c6fb768be55653f7cb2f7164bd1d', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('525', 'b624121f7f5c40f8c6ac507f6cab45f5', '欢迎你加入门派,门派将蓬荜生辉！[江湖]', '0');
INSERT INTO `youxiang` VALUES ('536', 'a2377a650da6bb0ad4fe0514f971f858', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '1');
INSERT INTO `youxiang` VALUES ('537', 'a2377a650da6bb0ad4fe0514f971f858', '大虾，你抓住毛贼[猴爷爷]，并狠狠的打了他一顿。', '1');
INSERT INTO `youxiang` VALUES ('542', 'b8a188334584e024060c33c6b3a9bbc5', '财不外露，果然你又被偷了，很遗憾没发现是谁。', '0');
INSERT INTO `youxiang` VALUES ('543', '771086b453fb6d53d76bf46880cf4b41', '[遗香韵风]已经选择退出门派。', '0');
INSERT INTO `youxiang` VALUES ('544', 'be7f41af7f2b397af5129fe5dec95e1a', '欢迎你加入门派,门派将蓬荜生辉！[花果山]', '1');

-- ----------------------------
-- Table structure for zcip
-- ----------------------------
DROP TABLE IF EXISTS `zcip`;
CREATE TABLE `zcip` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `yzm` varchar(8) NOT NULL DEFAULT '',
  `zcsj` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zcip
-- ----------------------------
INSERT INTO `zcip` VALUES ('1', '112.224.74.130', '9675', '2022-03-02 14:54:13');
INSERT INTO `zcip` VALUES ('2', '221.0.185.74', '7753', '2022-03-08 10:41:57');
INSERT INTO `zcip` VALUES ('3', '112.254.13.49', '2206', '2022-03-08 21:56:05');
INSERT INTO `zcip` VALUES ('4', '112.224.70.96', '8038', '2022-03-03 11:26:01');
INSERT INTO `zcip` VALUES ('5', '171.116.194.124', '5617', '2022-03-03 11:29:20');
INSERT INTO `zcip` VALUES ('6', '112.224.69.61', '9850', '2022-03-03 20:49:22');
INSERT INTO `zcip` VALUES ('7', '117.136.39.99', '9023', '2022-03-03 19:34:16');
INSERT INTO `zcip` VALUES ('8', '112.224.71.56', '7278', '2022-03-04 18:41:01');
INSERT INTO `zcip` VALUES ('9', '171.117.131.251', '7980', '2022-03-05 20:14:41');
INSERT INTO `zcip` VALUES ('10', '171.120.48.100', '3990', '2022-03-05 20:17:00');
INSERT INTO `zcip` VALUES ('11', '112.224.75.112', '8100', '2022-03-05 21:11:33');
INSERT INTO `zcip` VALUES ('12', '118.126.124.74', '7904', '2022-03-06 02:21:49');
INSERT INTO `zcip` VALUES ('13', '113.129.57.107', '7150', '2022-03-08 08:35:38');
INSERT INTO `zcip` VALUES ('14', '125.127.50.218', '3140', '2022-03-08 11:22:48');
INSERT INTO `zcip` VALUES ('15', '223.246.120.242', '5171', '2022-03-08 11:24:29');
INSERT INTO `zcip` VALUES ('16', '125.122.222.35', '4474', '2022-03-08 11:24:57');
INSERT INTO `zcip` VALUES ('17', '115.173.85.18', '7292', '2022-03-08 11:25:30');
INSERT INTO `zcip` VALUES ('18', '14.150.142.37', '1402', '2022-03-08 11:26:04');
INSERT INTO `zcip` VALUES ('19', '183.129.9.182', '6061', '2022-03-08 11:54:01');
INSERT INTO `zcip` VALUES ('20', '221.205.134.150', '5052', '2022-03-08 17:53:17');
INSERT INTO `zcip` VALUES ('21', '223.104.189.51', '7898', '2022-03-09 17:32:00');
INSERT INTO `zcip` VALUES ('22', '219.232.72.146', '7440', '2022-03-09 19:43:17');
INSERT INTO `zcip` VALUES ('23', '111.20.125.170', '2582', '2022-03-14 16:40:09');
INSERT INTO `zcip` VALUES ('24', '183.195.29.225', '9626', '2022-03-14 16:46:43');
INSERT INTO `zcip` VALUES ('25', '39.77.88.168', '4625', '2022-03-21 00:42:54');
INSERT INTO `zcip` VALUES ('26', '183.204.155.88', '8756', '2022-03-16 09:24:26');
INSERT INTO `zcip` VALUES ('27', '113.116.224.184', '4922', '2022-03-16 10:25:41');
INSERT INTO `zcip` VALUES ('28', '36.61.32.214', '4253', '2022-03-16 11:28:15');
INSERT INTO `zcip` VALUES ('29', '183.195.30.125', '8263', '2022-03-17 10:36:49');
INSERT INTO `zcip` VALUES ('30', '101.80.159.113', '7339', '2022-03-17 13:39:30');
INSERT INTO `zcip` VALUES ('31', '139.226.155.227', '1715', '2022-03-21 13:05:03');
INSERT INTO `zcip` VALUES ('32', '101.93.168.86', '8144', '2022-03-18 16:31:36');
INSERT INTO `zcip` VALUES ('33', '111.36.3.222', '4996', '2022-03-18 02:58:58');
INSERT INTO `zcip` VALUES ('34', '218.26.55.233', '5267', '2022-03-18 10:49:28');
INSERT INTO `zcip` VALUES ('35', '117.136.116.116', '6950', '2022-03-18 12:06:45');
INSERT INTO `zcip` VALUES ('36', '60.175.123.151', '2325', '2022-03-18 14:25:57');
INSERT INTO `zcip` VALUES ('37', '171.120.47.138', '4951', '2022-03-18 14:29:05');
INSERT INTO `zcip` VALUES ('38', '27.128.11.176', '3357', '2022-03-18 14:29:16');
INSERT INTO `zcip` VALUES ('39', '43.227.138.174', '7442', '2022-03-18 18:43:13');
INSERT INTO `zcip` VALUES ('40', '43.227.136.234', '3975', '2022-03-18 18:43:20');
INSERT INTO `zcip` VALUES ('41', '117.136.116.53', '3730', '2022-03-19 13:50:43');
INSERT INTO `zcip` VALUES ('42', '117.136.116.248', '4611', '2022-03-19 22:16:19');
INSERT INTO `zcip` VALUES ('43', '118.126.124.172', '2540', '2022-03-19 23:35:04');
INSERT INTO `zcip` VALUES ('44', '117.136.116.16', '3317', '2022-03-20 05:50:39');
INSERT INTO `zcip` VALUES ('45', '27.154.202.142', '8185', '2022-03-21 14:29:37');

-- ----------------------------
-- Table structure for zhiye
-- ----------------------------
DROP TABLE IF EXISTS `zhiye`;
CREATE TABLE `zhiye` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `zyinfo` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业介绍',
  `zyname` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业名称',
  `sid` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业玩家',
  `zygj` varchar(255) NOT NULL DEFAULT '0',
  `zyfy` varchar(255) NOT NULL DEFAULT '0',
  `zybj` varchar(255) NOT NULL DEFAULT '0',
  `zyxy` varchar(255) NOT NULL DEFAULT '0',
  `zysb` varchar(255) NOT NULL DEFAULT '0',
  `zyhp` varchar(255) NOT NULL DEFAULT '0',
  `zygn` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业功能，index.php',
  `zyyc` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业隐藏0开1隐藏',
  `zyys` varchar(255) NOT NULL DEFAULT '0' COMMENT '职业颜色',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhiye
-- ----------------------------
INSERT INTO `zhiye` VALUES ('1', '释迦摩尼旗下的上级阶乘', '一流佛', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('2', '元始天尊', '二流仙', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('3', '皇宫贵族', '三流君', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('4', '官僚', '四流官', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('5', '酒厂', '五流烧', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('6', '当铺', '六流当', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('7', '商人', '七流商', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('8', '庄园主', '八流客', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('9', '农夫', '九庄田', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff0000');
INSERT INTO `zhiye` VALUES ('10', '通过乡试的人', '中流举子', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('11', '郎中、大夫、药房先生', '中流医', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('12', '风水先生和阴阳先生', '中流风', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('13', '算命先生', '中流批', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('14', '卖画的人', '中流丹青', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('15', '看相的', '中流相', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('16', '和尚', '中流僧', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('17', '道士', '中流道', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#ff9900');
INSERT INTO `zhiye` VALUES ('18', '喜欢琴棋诗书画的文人', '中流琴棋', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('19', '画符念咒的巫师', '流巫', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('20', '歌妓们', '流娼', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('21', '以跳唱形式治病的神巫', '流大神', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('22', '晚上打更的更夫', '流梆', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('23', '古代的理发师', '流剃', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('24', '吹鼓手、喇叭匠', '流吹手', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('25', '各类演员', '流戏子', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('26', '乞丐', '流叫街', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('27', '大街上吹糖卖糖人的', '流卖糖', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#379082');
INSERT INTO `zhiye` VALUES ('28', 'pdd砍一刀？', '相声', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#81799f');
INSERT INTO `zhiye` VALUES ('29', '砍价', '砍价', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#81799f');
INSERT INTO `zhiye` VALUES ('30', 'GM回复用的', '情报', '0', '0', '0', '0', '0', '0', '0', '0', '0', '#81799f');

-- ----------------------------
-- Table structure for zhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `zhuangbei`;
CREATE TABLE `zhuangbei` (
  `zbname` varchar(255) NOT NULL,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` varchar(255) NOT NULL,
  `zbfy` varchar(255) NOT NULL,
  `zbbj` varchar(255) NOT NULL,
  `zbxx` varchar(255) NOT NULL,
  `zbid` int(11) NOT NULL AUTO_INCREMENT,
  `zbhp` varchar(255) DEFAULT '0',
  `zblv` int(11) NOT NULL,
  `zbtool` int(11) NOT NULL,
  `zbys` varchar(255) NOT NULL DEFAULT '#9EF18D',
  `taozhuang` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zbid`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuangbei
-- ----------------------------
INSERT INTO `zhuangbei` VALUES ('村长令牌', '假村长的令牌', '10', '10', '10', '10', '1', '5', '10', '6', '#FB3A06', '1');
INSERT INTO `zhuangbei` VALUES ('金箍铁棒', '六耳猕猴的武器', '300', '100', '15', '15', '2', '0', '100', '1', '#F906AC', '1');
INSERT INTO `zhuangbei` VALUES ('护法灭魔', '中空，内藏三粒“华佗度厄金丹”。此丹药效如神，受伤者，只要脏腑未腐，便可度厄。', '180', '90', '5', '5', '3', '0', '80', '1', '#6F1D69', '1');
INSERT INTO `zhuangbei` VALUES ('五丁开山', 'boss地狱之眼掉落的装备，有他你就站起来了。', '210', '50', '10', '15', '4', '0', '40', '1', '#BC0DEF', '1');
INSERT INTO `zhuangbei` VALUES ('元神禁锢', '无耳教教主江兆基的绝学，不幸被武林恶人学会，用此功伤人，嫁祸于无耳教，因此，使江湖掀起一场轩然大波。', '200', '80', '10', '11', '5', '0', '80', '1', '#6F1D69', '1');
INSERT INTO `zhuangbei` VALUES ('天玑含韵', '骨干如白桦般古朴典雅，色若沉香之木，剑银光洗练。', '190', '80', '10', '8', '6', '0', '60', '1', '#A317D4', '1');
INSERT INTO `zhuangbei` VALUES ('开阳双仪', '挥起剑来如清风拂柳，风与剑锋谐音，在潇洒中暗藏杀机。', '180', '80', '10', '8', '7', '0', '55', '1', '#B61D16', '1');
INSERT INTO `zhuangbei` VALUES ('圣盾术', '墨色晶石的古秘籍身之上刻着若隐若现的文字，来源不明。', '170', '75', '10', '12', '8', '0', '55', '1', '#AB716F', '1');
INSERT INTO `zhuangbei` VALUES ('魔魂天咒', '武器有时候是一种华丽的装饰，有时候是一种身份和地位的象征。在某一种时候，便甚至是权力和威严的象征。', '160', '70', '15', '10', '9', '0', '60', '1', '#D69FD4', '1');
INSERT INTO `zhuangbei` VALUES ('龙凤双环', '用百炼钢做刀身，纯钢做刀刃做到整体刚柔并济。', '140', '60', '15', '10', '10', '0', '25', '1', '#F88F6E', '1');
INSERT INTO `zhuangbei` VALUES ('神木王鼎', '从狭长的长条形，改成刀头前锐后斜形，并有护手，去掉了扁圆大环。', '120', '50', '12', '9', '11', '0', '15', '1', '#F04C3F', '1');
INSERT INTO `zhuangbei` VALUES ('七星绝命剑', '一把三尺长的软剑。剑刃上嵌着七颗星状的暗器，一剑刺出，使剑人的内力劲透剑身之时，那七颗星状的暗器便飞脱疾出，出其不意地取人性命。此剑为江湖名宿玄机子祖传之宝，玄机子死后无嗣，七星绝命剑便落入其关门弟子崔北海的手中。但崔北海手持此剑多行不义，卒为大侠护花所败。（见古龙《吸血蛾》）', '', '', '', '', '12', '0', '0', '0', '#ae11bf', '2');
INSERT INTO `zhuangbei` VALUES ('七星透骨针', '江湖中威力仅次于孔雀翎的霸道暗器，系暗器大家七巧童子打造。据说七巧童子一生熬白了头发，一共也不过制成了七对。其外表是一只钢筒，里面装有机簧，机簧上附有七根带银针，发射时劲道奇强。练七星透骨针的人，都是左右双手联发，两筒共十四根银针激射而出，快且杀伤面大，令人猝难躲避。（见古龙《七种武器》）', '', '', '', '', '13', '0', '0', '0', '#ae11bf', '2');
INSERT INTO `zhuangbei` VALUES ('七修剑', '大西国王张献忠使用的杀人利器，七杀是“杀杀杀杀杀杀杀”的意思。这是一把神刀、宝刀，也是一把凶刀、魔刀。传说七杀刀杀人太多，已经着魔，“神刀出鞘，无血不归”。后由冷面魔君贺通天传给恨天生。（见欧阳云飞《小流浪》）', '', '', '', '', '14', '0', '0', '0', '#ae11bf', '2');
INSERT INTO `zhuangbei` VALUES ('七杀刀', '大西国王张献忠使用的杀人利器，七杀是“杀杀杀杀杀杀杀”的意思。这是一把神刀、宝刀，也是一把凶刀、魔刀。传说七杀刀杀人太多，已经着魔，“神刀出鞘，无血不归”。后由冷面魔君贺通天传给恨天生。（见欧阳云飞《小流浪》）', '', '', '', '', '15', '0', '0', '0', '#ae11bf', '2');
INSERT INTO `zhuangbei` VALUES ('七煞天罗', '奇门兵器。通体乌黑，柔软发带，顶端尖锐似剑，主体浑圆似棍。看去似鞭非鞭，似剑非剑。此兵器厉害之处，在于七种奇巧恶毒的装置，按动机关，可发出轻丝大网、白雾、红雨、毒针、天雷、地火、化形砂七种暗器毒药，有如天罗地网，罩向敌人，故名七煞天罗。', '', '', '', '', '16', '0', '0', '0', '#ae11bf', '2');
INSERT INTO `zhuangbei` VALUES ('七绝魔剑', '太极剑李清尘的祖传宝剑。七绝剑剑法奇诡，去如闪电，削铁如泥。此剑出手必伤人，几招一出，剑势便无法控制，素有“招不过十”之称。七绝魔剑之下，从无幸免者，不是死亡，就是残废。（见卧龙生《七绝魔剑》）', '', '', '', '', '17', '0', '0', '0', '#ae11bf', '2');
INSERT INTO `zhuangbei` VALUES ('神龙鬼见愁', '一条江湖上罕见的金龙鞭，一眼看去，酷似金龙，龙的角左右伸出，张开的龙嘴里，吐出一条碧绿色的舌头。它的可怕之处，是它兼具九种妙用：其全身反鳞，不但可粘住暗器；龙角分犄，专制天上各门各派的软兵刃；', '', '', '', '', '18', '0', '0', '0', '#ae11bf', '3');
INSERT INTO `zhuangbei` VALUES ('三绝拐', '铁拐医圣赛华佗的遗物。百毒夜叉端木珏从一古墓中无意中得到，将此神物赠于韦虎头。所谓三绝，就是这根尺来长的短拐，具有攻敌，防身、度厄三种妙用，拐身是寒铁所铸，弯柄则。', '', '', '', '', '19', '0', '0', '0', '#ae11bf', '3');
INSERT INTO `zhuangbei` VALUES ('工尺镖', '江湖暗器。为一枚枚大小厚薄不同的银钱。练就工尺镖的人，能将银钱准确地射中对方的要害部位。', '', '', '', '', '20', '0', '0', '0', '#ae11bf', '3');
INSERT INTO `zhuangbei` VALUES ('万字夺', '东海龙王司空阔所用兵器。长七尺，上部似矛，下部似护手，似戟非戟，似钺非钺，性可克刀剑。', '', '', '', '', '21', '0', '0', '0', '#ae11bf', '3');
INSERT INTO `zhuangbei` VALUES ('飞剑', '以口吐出可以远距离伤人的小型剑器，非修行至剑仙不能为之。多见于旧派武侠小说中，新派作品以其荒诞落套，极少出现。', '', '', '', '', '22', '0', '0', '0', '#ae11bf', '3');
INSERT INTO `zhuangbei` VALUES ('新手木剑', '新手使用的木剑', '1', '0', '0', '1', '23', '0', '0', '1', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('新手布衣', '新手使用的布衣', '0', '2', '0', '0', '24', '10', '0', '2', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('明月之剑', '明月  明月', '3', '0', '0', '1', '25', '0', '0', '1', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('清风护甲', '取自清风常伴', '0', '5', '1', '0', '26', '25', '0', '2', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('百炼青刚剑', '百炼青刚剑', '5', '0', '0', '2', '27', '0', '0', '1', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('百炼轻蕊甲', '百炼轻蕊甲', '0', '8', '0', '0', '28', '40', '0', '2', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('初级嗜血剑', '初级嗜血剑', '2', '0', '1', '3', '29', '0', '0', '1', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('轻蕊盔', '轻蕊盔', '0', '7', '1', '0', '30', '50', '0', '2', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('雷鹰护甲', '雷鹰护甲', '0', '8', '1', '0', '31', '55', '0', '2', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('血鹰项链', '血鹰项链', '0', '3', '3', '5', '32', '20', '0', '0', '#509037', '0');
INSERT INTO `zhuangbei` VALUES ('黑魔匕首', '黑魔匕首', '14', '0', '3', '4', '33', '0', '6', '1', '#F9F51A', '0');
INSERT INTO `zhuangbei` VALUES ('中级噬血剑', '中级噬血剑', '15', '0', '0', '4', '34', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `zhuangbei` VALUES ('普通蛮甲', '普通蛮甲', '0', '9', '2', '0', '35', '62', '0', '2', '#9EF18D', '0');
INSERT INTO `zhuangbei` VALUES ('陨铁武棍', '陨铁武棍', '8', '3', '1', '1', '36', '0', '0', '1', '#E2A910', '0');
INSERT INTO `zhuangbei` VALUES ('月轮枪', '月轮枪', '10', '0', '0', '2', '37', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `zhuangbei` VALUES ('厚土甲', '厚土甲', '0', '10', '1', '0', '38', '120', '0', '2', '#F9F51A', '0');
INSERT INTO `zhuangbei` VALUES ('嗜魂骨忍', '嗜魂骨忍', '17', '0', '5', '3', '39', '0', '0', '1', '#F9F51A', '0');
INSERT INTO `zhuangbei` VALUES ('百斩狂澜枪', '百斩狂澜', '20', '0', '0', '5', '40', '0', '0', '1', '#F3AD15', '0');
INSERT INTO `zhuangbei` VALUES ('缘风·虬雷衣', '缘风·虬雷衣', '0', '10', '0', '0', '41', '150', '0', '2', '#F3AD15', '0');
INSERT INTO `zhuangbei` VALUES ('缘风·墨魂靴', '缘风·墨魂靴', '0', '10', '3', '0', '42', '155', '0', '0', '#F3AD15', '0');
INSERT INTO `zhuangbei` VALUES ('缘风·破军腰带', '缘风·破军腰带', '0', '14', '0', '0', '43', '170', '0', '3', '#F3AD15', '0');
INSERT INTO `zhuangbei` VALUES ('缘风·兽魂项链', '缘风·兽魂项链', '18', '12', '4', '4', '44', '55', '0', '3', '#F3AD15', '0');
INSERT INTO `zhuangbei` VALUES ('[神器]妖王剑', '[神器]妖王剑\r\n妖王剑碎片合成', '45', '0', '13', '11', '45', '0', '0', '1', '#E2A910', '0');
INSERT INTO `zhuangbei` VALUES ('劫刀', '劫刀', '25', '0', '4', '5', '46', '0', '0', '1', '#F88C0A', '0');
INSERT INTO `zhuangbei` VALUES ('军用锁子甲', '军用锁子甲', '5', '16', '5', '0', '47', '170', '0', '2', '#F88C0A', '0');
INSERT INTO `zhuangbei` VALUES ('军官陌刀', '军官陌刀', '30', '0', '5', '4', '48', '0', '0', '1', '#DF4218', '0');
INSERT INTO `zhuangbei` VALUES ('白虎册', '唐寅画册，毕生心血，读者喷鼻血。', '3', '3', '3', '20', '49', '80', '0', '4', '#FD3702', '0');
INSERT INTO `zhuangbei` VALUES ('防毒面具', '其实就是一块布', '0', '10', '1', '10', '50', '160', '0', '3', '#FD3702', '0');
INSERT INTO `zhuangbei` VALUES ('打狗棍', '隔壁老王媳妇弟弟二柱子的三姑表妹的弟弟的棍子。', '8', '9', '12', '11', '51', '38', '13', '1', '#DF4218', '0');
INSERT INTO `zhuangbei` VALUES ('暴雨梨花钉', '暗器中的一门大杀器，来自测试礼包码', '51', '10', '5', '5', '53', '25', '10', '7', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('暴雨梨花令', '黄花梨木制成的令牌，内测码获得。', '15', '10', '3', '2', '54', '5', '10', '6', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('暴雨追风', '风雨无阻的铁骑，内测码获得。', '10', '10', '2', '1', '55', '50', '10', '5', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('暴雨秘法', '古老的秘术，内测码获得。', '5', '50', '1', '1', '56', '5', '10', '4', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('暴雨噬魂链', '内测码获得。', '5', '15', '1', '1', '57', '5', '10', '3', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('暴雨铁甲', '经历无数日月洗礼，在暴雨战场上幸存不多的铠甲，内测码获得。', '0', '118', '0', '5', '58', '150', '10', '2', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('暴雨霸王枪', '冲锋在前的勇士之枪，锋利无比，内测码获得。', '128', '5', '8', '3', '59', '50', '10', '1', '#217f6a', '1');
INSERT INTO `zhuangbei` VALUES ('天魔雨', '四川唐门的奇毒暗器。能把奇毒的汁液由腕底特制的筒中打出，到了敌人面前或头顶，才突然爆开为伞，向下猛洒。这种毒雨毒性极强，如被沾上，骨肉尽烂。', '', '', '', '', '60', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('五殃针', '阴山派始祖谢五殃采取阴山绝壑寒铁，炼制而成的暗器。这种针长不逾寸，细如牛毛，装在筒中，筒上装有一个活闩和两个机钮', '', '', '', '', '61', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('五毒霹雳珠', '江湖下五门中最的兵器。形状酷似流星锤，施展起来和普通流星锤也并无不同，只是那由铜铸成的圆球内还藏有厉害暗器', '', '', '', '', '62', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('太乙神钩', '奇形兵刃。形如乙字，以象牙为手柄，雕镂极精。钩身非一般精铁铸成，共分七节，机括相连，最后一节刃尖，长约二寸有余，锋利异常。', '', '', '', '', '63', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('太阴魔铃', '太湖三煞胡云天、胡云地、胡云人三兄弟的成名兵刃。魔铃一般成对使用，双铃各有机关，右铃可发无色无味的毒气，人中之无药可解；左铃频生异响，扰人耳目，功力弱者闻之则失去丹田功力。', '', '', '', '', '64', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('双龙虬龙棒', '一种软中有硬的奇形兵器，为燕赵双侠中的老二矮金刚蓝和所持。', '', '', '', '', '65', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('孔雀翎', '孔雀翎系孔雀山庄主人耗尽心血打造而成。当年，三十六名黑道高手联手攻击孔雀山庄，结果全部丧生在孔雀翎下，可见其威力', '', '', '', '', '66', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('小李的飞刀', '百晓生兵器谱排名第三，刀是普通的刀，但是到了李探花的手里就成了一把神奇的刀。“小李飞刀，例无虚发”，没有人知道刀是怎么发出来的，刀光一现，敌人就已经翘辫子了。', '', '', '', '', '67', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('生死符', '金庸的小说里对暗器描写的不多，生死符值得一提。生死符可控制人的生死，其实只是一片圆圆的薄冰，小指头大小，边缘锋锐，其薄如纸。', '', '', '', '', '68', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('无情的轿', '温瑞安的四大名捕系列中无情的轿子，处处机关，暗器层出不穷。无情身体残疾，虽以暗器和轻功成名，轿子仍是他的护身宝贝。', '', '', '', '', '69', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('毒雾金针', '厉家最歹毒的暗器。此种暗器是在弹丸里包着无数细如牛毛的梅花针，并且藏有火药。暗器打出之后，即自行炸裂', '', '', '', '', '70', '0', '0', '0', '#ae11bf', '0');
INSERT INTO `zhuangbei` VALUES ('灵·紧箍咒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '-170', '0', '0', '71', '150', '60', '3', '#00bebf', '10');
INSERT INTO `zhuangbei` VALUES ('灵·黄金甲', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '100', '0', '0', '72', '50', '60', '2', '#00bebf', '10');
INSERT INTO `zhuangbei` VALUES ('灵·步云履', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '50', '0', '0', '73', '50', '60', '7', '#00bebf', '10');
INSERT INTO `zhuangbei` VALUES ('灵·金箍棒', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '249', '0', '30', '5', '74', '0', '60', '1', '#00bebf', '10');
INSERT INTO `zhuangbei` VALUES ('灵·金火眼', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '20', '0', '0', '0', '75', '50', '60', '4', '#00bebf', '10');
INSERT INTO `zhuangbei` VALUES ('灵·筋斗云', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '100', '10', '0', '0', '76', '100', '60', '5', '#00bebf', '10');
INSERT INTO `zhuangbei` VALUES ('灵·七十二', '稀有装备，掉落于BOSS千灵六耳。设计者：[517]', '0', '10', '0', '0', '77', '50', '60', '6', '#00bebf', '10');

-- ----------------------------
-- Table structure for zhurenwu
-- ----------------------------
DROP TABLE IF EXISTS `zhurenwu`;
CREATE TABLE `zhurenwu` (
  `zrwname` varchar(255) NOT NULL,
  `zrwid` int(11) NOT NULL,
  `zrwyq` varchar(255) NOT NULL,
  `yqcount` varchar(255) NOT NULL,
  `zrwjldj` varchar(255) NOT NULL,
  `zrwjlzb` varchar(255) NOT NULL,
  `zrwjlyp` varchar(255) NOT NULL,
  `zrwjljn` varchar(255) NOT NULL,
  `lastid` int(11) NOT NULL,
  `zrwexp` int(11) NOT NULL,
  `zrwyxb` int(11) NOT NULL,
  PRIMARY KEY (`zrwid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhurenwu
-- ----------------------------
INSERT INTO `zhurenwu` VALUES ('007', '1', '30', '31', '0', '51', '6', '0', '11', '100', '100');

-- ----------------------------
-- Table structure for zudui
-- ----------------------------
DROP TABLE IF EXISTS `zudui`;
CREATE TABLE `zudui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '当前三个组队',
  `zduid1` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `zdsid1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `zduid2` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `zdsid2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `zduid3` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `zdsid3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `zdcys` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '组队成员数',
  `zdtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='组队';

-- ----------------------------
-- Records of zudui
-- ----------------------------
