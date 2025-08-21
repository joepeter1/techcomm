/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80001
 Source Host           : localhost
 Source Database       : pai_coding

 Target Server Type    : MySQL
 Target Server Version : 80001
 File Encoding         : utf-8

 Date: 04/15/2023 21:33:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `article_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '文章类型：1-博文，2-问答',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '文章标题',
  `short_title` varchar(120) NOT NULL DEFAULT '' COMMENT '短标题',
  `picture` varchar(128) NOT NULL DEFAULT '' COMMENT '文章头图',
  `summary` varchar(300) NOT NULL DEFAULT '' COMMENT '文章摘要',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类目ID',
  `source` tinyint(4) NOT NULL DEFAULT '1' COMMENT '来源：1-转载，2-原创，3-翻译',
  `source_url` varchar(128) NOT NULL DEFAULT '1' COMMENT '原文链接',
  `offical_stat` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '官方状态：0-非官方，1-官方',
  `topping_stat` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '置顶状态：0-不置顶，1-置顶',
  `cream_stat` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加精状态：0-不加精，1-加精',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-未发布，1-已发布',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_title` (`title`),
  KEY `idx_short_title` (`short_title`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';

-- ----------------------------
--  Records of `article`
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES ('1', '1', '1', '技术社区全方位视角解读', '关于技术社区', '', '技术社区的使用说明介绍', '1', '2', '', '0', '0', '0', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('100', '1', '1', '分布式系统的38个知识点', '38个知识点', '', '天天说分布式分布式，那么我们是否知道什么是分布式，分布式会遇到什么问题，有哪些理论支撑，有哪些经典的应对方案，业界是如何设计并保证分布式系统的高可用呢？\n\n1.架构设计\n这一节将从一些经典的开源系统架构设计出发，来看一下，如何设计一个高质量的分布式系统；', '1', '2', '', '0', '1', '0', '1', '0', '2022-10-08 19:12:32', '2023-04-15 20:12:47'), ('101', '1', '1', '分布式系统的8个谬误', '8个经典谬误', '', '你在分布式系统上工作吗？微服务，Web API，SOA，Web服务器，应用服务器，数据库服务器，缓存服务器，负载均衡器 - 如果这些描述了系统设计中的组件，那么答案是肯定的。分布式系统由许多计算机组成，这些计算机协调以实现共同的目标。\n\n20多年前，Peter Deutsch和James Gosling定义了分布式计算的8个谬误。这些是许多开发人员对分布式系统做出的错误假设。从长远来看，这些通常被证明是错误的，导致难以修复错误。', '1', '2', '', '0', '1', '0', '1', '0', '2022-10-08 19:13:38', '2023-04-15 20:13:31'), ('102', '1', '1', '分布式系统的特征、瓶颈以及性能指标介绍', '分布式系统概要', 'https://spring.hhui.top/spring-blog/imgs/220819/logo.jpg', '分布式的概念存在年头有点久了，在正式进入我们《分布式专栏》之前，感觉有必要来聊一聊，什么是分布式，分布式特点是什么，它又有哪些问题，在了解完这个概念之后，再去看它的架构设计，理论奠基可能帮助会更大', '1', '2', '', '0', '1', '0', '1', '0', '2022-10-08 19:14:17', '2023-04-15 20:14:07'), ('103', '2', '1', 'ceshibug', '', '', '>整体阅读时间，在40分钟左右。大家好，我是楼仔！常见的消息队列很多，主要包括RabbitMQ、Kafka、RocketMQ和ActiveMQ，相关的选型可以看我之前的系列，这篇文章只讲RabbitMQ，先讲原理，后搞实战。文章很长，如果你能一次性看完，“', '1', '2', '', '0', '0', '0', '1', '0', '2023-01-13 19:54:17', '2023-01-13 19:54:17'), ('104', '4', '1', '二哥的 Java 进阶之路.pdf 开放下载了，GitHub 星标 7700+，太赞了！', '', '', '小册名字：二哥的Java进阶之路小册作者：沉默王二小册品质：能在GitHub取得7600star自认为品质是有目共睹的，尤其是国内还有不少小伙伴在访问GitHub的时候很不顺利。小册风格：通俗易懂、风趣幽默、深度解析，新手可以拿来入门，老手可以拿来进阶，重要的知识，比如说面试高频的内容会从应用到源码挖个底朝天，还会穿插介绍一些计算机底层知识，力求讲个明白）小册简介：这是一份通俗易懂、风趣幽默的Java学习指南，内容涵', '1', '2', '', '1', '0', '0', '1', '0', '2023-04-15 15:25:17', '2023-04-15 16:00:32'), ('105', '4', '1', '官宣：技术社区上线了！⭐️一款好用又强大的开源社区，学编程，就上技术社区?', '', '/forum/image/20230415081529547_1.jpg', '一个基于 Spring Boot、MyBatis-Plus、MySQL、Redis、ElasticSearch、MongoDB、Docker、RabbitMQ 等技术栈实现的社区系统，采用主流的互联网技术架构、全新的UI设计、支持一键源码部署，拥有完整的文章&教程发布/搜索/评论/统计流程等，代码完全开源，没有任何二次封装，是一个非常适合二次开发/实战的现代化社区项目? ', '1', '2', '', '1', '0', '0', '1', '0', '2023-04-15 16:03:43', '2023-04-15 20:15:31'), ('106', '4', '1', '对标大厂的技术社区详细方案设计，务必要看', '', '', '这个项目诞生的背景和企业内生的需求不太一样，主要是某一天二哥说，“我们一起搞事吧”，楼仔问，“搞什么”，然后这个项目的需求就来了言归正传，我们主要的目的是希望打造一个切实可用的项目，依托于这个项目，将java从业者所用到的技术栈真实的展现出来，对于经验不是那么足的小伙伴，可以在一个真实的系统上，理解到自己学习的知识点是如何落地的，同时也能真实的了解一个项目是从0到1实现的全过程系统模块介绍系统架构基于社区系统的分层特点，将整个系统架构划分为展示层，应用层，服务层，如下图展示层其中展示层主要为用', '1', '2', '', '1', '0', '0', '1', '0', '2023-04-15 20:00:49', '2023-04-15 20:00:49'), ('107', '4', '1', '技术社区的知识星球，开通啦！附 120 篇技术社区的详细教程！', '', '', '大家好呀，我是楼仔。上周推出了我们的开源项目技术社区，大家好评如潮，很多同学都想学习这个项目，为了更好带大家一起飞，我们今天正式推出技术社区的知识星球。什么是知识星球呢？你可以理解为高品质社群，方便大家跟着我们一起学习。01星球介绍先来介绍下星球的三位联合创始人：楼仔：8年一线大厂后端经验（百度/小米/美团），技术社区团队负责人，擅长高并发、架构、源码，有很强的项目/团队管理、职业规划能力。沉默王二：GitHub星标6400k开源知识库《Java程序员进阶之路》作者，CSDN两届博客之星，掘金/知乎Java领域优', '1', '2', '', '1', '0', '0', '1', '0', '2023-04-15 20:07:49', '2023-04-15 20:07:49');
COMMIT;

-- ----------------------------
--  Table structure for `article_detail`
-- ----------------------------
DROP TABLE IF EXISTS `article_detail`;
CREATE TABLE `article_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章ID',
  `version` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版本号',
  `content` longtext COMMENT '文章内容',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_article_version` (`article_id`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='文章详情表';

-- ----------------------------
--  Records of `article_detail`
-- ----------------------------

-- ----------------------------
--  Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章ID',
  `tag_id` int(11) NOT NULL DEFAULT '0' COMMENT '标签',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_tag_id` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='文章标签映射';

-- ----------------------------
--  Records of `article_tag`
-- ----------------------------
BEGIN;
INSERT INTO `article_tag` VALUES ('1', '100', '1', '0', '2022-10-08 19:23:14', '2022-10-08 19:23:14'), ('2', '101', '1', '0', '2022-10-08 19:23:35', '2022-10-08 19:23:35'), ('3', '102', '1', '0', '2022-10-08 19:23:43', '2022-10-08 19:23:43'), ('4', '103', '135', '0', '2023-01-13 19:54:17', '2023-01-13 19:54:17'), ('5', '104', '1', '0', '2023-04-15 15:25:17', '2023-04-15 15:25:17'), ('6', '104', '5', '0', '2023-04-15 15:25:17', '2023-04-15 15:25:17'), ('7', '104', '6', '0', '2023-04-15 15:25:17', '2023-04-15 15:25:17'), ('8', '105', '1', '0', '2023-04-15 16:03:43', '2023-04-15 16:03:43'), ('9', '105', '5', '0', '2023-04-15 16:03:43', '2023-04-15 16:03:43'), ('10', '106', '1', '0', '2023-04-15 20:00:49', '2023-04-15 20:00:49'), ('11', '107', '137', '0', '2023-04-15 20:07:49', '2023-04-15 20:07:49');
COMMIT;

-- ----------------------------
--  Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `banner_name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `banner_url` varchar(256) NOT NULL DEFAULT '' COMMENT '图片url',
  `banner_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型：1-首页，2-侧边栏，3-广告位',
  `rank` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-未发布，1-已发布',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='banner表';

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `category_name` varchar(64) NOT NULL DEFAULT '' COMMENT '类目名称',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-未发布，1-已发布',
  `rank` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='类目管理表';

-- ----------------------------
--  Records of `category`
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('1', '后端', '1', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('2', '前端', '1', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('3', '大数据', '0', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('4', 'Android', '0', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('5', 'IOS', '0', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('6', '人工智能', '1', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('7', '开发工具', '1', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('8', '代码人生', '0', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('9', '阅读', '1', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('10', '技术社区', '0', '1', '0', '2023-04-15 19:59:51', '2023-04-15 19:59:51');
COMMIT;

-- ----------------------------
--  Table structure for `column_article`
-- ----------------------------
DROP TABLE IF EXISTS `column_article`;
CREATE TABLE `column_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `column_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专栏ID',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章ID',
  `section` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '章节顺序，越小越靠前',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `column_id` (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='专栏文章列表';

-- ----------------------------
--  Records of `column_article`
-- ----------------------------
BEGIN;
INSERT INTO `column_article` VALUES ('1', '1', '100', '1', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('2', '1', '101', '2', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('3', '1', '102', '3', '2023-01-13 19:15:57', '2023-01-13 19:15:57');
COMMIT;

-- ----------------------------
--  Table structure for `column_info`
-- ----------------------------
DROP TABLE IF EXISTS `column_info`;
CREATE TABLE `column_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专栏ID',
  `column_name` varchar(64) NOT NULL DEFAULT '' COMMENT '专栏名',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '作者id',
  `introduction` varchar(256) NOT NULL DEFAULT '' COMMENT '专栏简述',
  `cover` varchar(128) NOT NULL DEFAULT '' COMMENT '专栏封面',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态: 0-审核中，1-连载，2-完结',
  `publish_time` timestamp NOT NULL DEFAULT '1970-01-02 00:00:00' COMMENT '上线时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `section` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `nums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专栏预计的更新的文章数',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专栏类型 0-免费 1-登录阅读 2-限时免费',
  `free_start_time` timestamp NOT NULL DEFAULT '1970-01-02 00:00:00' COMMENT '限时免费开始时间',
  `free_end_time` timestamp NOT NULL DEFAULT '1970-01-02 00:00:00' COMMENT '限时免费结束时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='专栏';

-- ----------------------------
--  Records of `column_info`
-- ----------------------------
BEGIN;
INSERT INTO `column_info` VALUES ('1', '技术社区一灰的分布式专栏', '1', '天天说分布式分布式，那么我们是否知道什么是分布式，分布式会遇到什么问题，有哪些理论支撑，有哪些经典的应对方案，业界是如何设计并保证分布式系统的高可用呢？', 'https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/4ba0bc79579c488eb79df93cecd12390~tplv-k3u1fbpfcp-watermark.image', '1', '2022-09-15 01:00:00', '2022-09-15 01:00:00', '2023-04-15 20:18:48', '0', '100', '2', '2022-12-22 10:00:00', '2024-08-07 20:18:40');
COMMIT;

-- ----------------------------
--  Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` varchar(300) NOT NULL DEFAULT '' COMMENT '评论内容',
  `top_comment_id` int(11) NOT NULL DEFAULT '0' COMMENT '顶级评论ID',
  `parent_comment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父评论ID',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_article_id` (`article_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

-- ----------------------------
--  Records of `comment`
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES ('1', '102', '4', '真不错啊', '0', '0', '0', '2023-04-15 20:11:28', '2023-04-15 20:11:28'), ('2', '102', '4', '二级回复！', '1', '1', '0', '2023-04-15 20:11:34', '2023-04-15 20:11:34');
COMMIT;

-- ----------------------------
--  Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '配置类型：1-首页，2-侧边栏，3-广告位，4-公告',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `banner_url` varchar(256) NOT NULL DEFAULT '' COMMENT '图片链接',
  `jump_url` varchar(256) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `content` varchar(256) NOT NULL DEFAULT '' COMMENT '内容',
  `rank` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-未发布，1-已发布',
  `tags` varchar(64) NOT NULL DEFAULT '' COMMENT '配置关联标签，英文逗号分隔 1 火 2 官方 3 推荐',
  `extra` varchar(1024) NOT NULL DEFAULT '{}' COMMENT '扩展信息',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='配置表';

-- ----------------------------
--  Records of `config`
-- ----------------------------
BEGIN;
INSERT INTO `config` VALUES ('1', '5', '高并发手册', 'https://img11.360buyimg.com/ddimg/jfs/t1/159287/38/34144/95370/63c7ee9aFc184be3d/94e07dc5dd5b573f.png', '', '内容肝、配图美、可读性高，高并发经典之作！', '1', '1', '', '{}', '0', '2023-01-13 19:15:57', '2023-04-15 15:05:22'), ('2', '1', '加入社区2', 'https://imgs.hhui.top/forum/banner/01.png', 'https://hhui.top/', '', '2', '1', '', '{}', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('3', '4', '官宣：技术社区上线了！', '11', '', '学编程，就上技术社区?！', '1', '1', '2', '{}', '0', '2023-01-13 19:15:57', '2023-04-15 14:55:38'), ('4', '4', 'Java进阶之路.pdf来了！', ' 2', '', '学 Java，就认准二哥的 Java 进阶之路。第一版 PDF 开放下载了！技术社区团队出品。', '2', '1', '2', '{}', '0', '2023-01-13 19:15:57', '2023-04-15 16:04:49'), ('5', '6', 'JVM 核心手册', ' https://img14.360buyimg.com/ddimg/jfs/t1/184999/39/32111/443189/63c7fbbbF78e720ff/7e878308d3d27dff.png', '', '楼仔原创的 JVM 手册，带你成为 Java 高手！技术社区团队出品。', '2', '1', '1', '{\"visit\":110252,\"download\":12121,\"rate\":\"9.1\"}', '0', '2023-01-13 19:15:58', '2023-04-15 21:23:09'), ('6', '6', 'Spring源码解析手册', 'https://img13.360buyimg.com/ddimg/jfs/t1/114223/5/31528/3308443/63c7f65eFdb3a20f2/91c8c191152d82c2.png', '', '楼仔原创的 Spring 源码解读手册，硬核，带你成为 Spring 高手！技术社区团队出品。', '2', '1', '1', '{\"visit\":120248,\"download\":212103,\"rate\":\"9.3\"}', '0', '2023-01-13 19:15:58', '2023-04-15 21:23:09');
COMMIT;

-- ----------------------------
--  Table structure for `DATABASECHANGELOG`
-- ----------------------------
DROP TABLE IF EXISTS `DATABASECHANGELOG`;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `DATABASECHANGELOG`
-- ----------------------------
BEGIN;
INSERT INTO `DATABASECHANGELOG` VALUES ('00000000000001', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:57', '1', 'EXECUTED', '8:27df66428e4e8a1e062252001839111c', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000002', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:57', '2', 'EXECUTED', '8:309587867464eab15bbb5c3f243f4e67', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000003', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:57', '3', 'EXECUTED', '8:a4bb54c99c92ce7759ad5c4b251478cf', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000005', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:57', '4', 'EXECUTED', '8:ec762e3ec5e942f87d4b435e589b2dba', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000006', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:58', '5', 'EXECUTED', '8:6526c241c8372135104562f54f989c8f', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000007', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:58', '6', 'EXECUTED', '8:fb78c1877cb530742cf1bb8186af1d4d', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000008', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:58', '7', 'EXECUTED', '8:5ce14ccabec076b26946697cb7e9ebc0', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000009', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:58', '8', 'EXECUTED', '8:28c54222fe1b92e9332b30ebe4726ed4', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000012', 'LouZai', 'liquibase/changelog/000_initial_schema.xml', '2023-01-13 19:15:58', '9', 'EXECUTED', '8:2149aff824bb0b032bc51b18abbf03a5', 'sqlFile', '', null, '4.9.1', null, null, '3608557412'), ('00000000000013', 'LouZai', 'liquibase/changelog/000_initial_schema.xml', '2023-02-10 21:38:31', '10', 'EXECUTED', '8:19255eb5a705d2d7e870b19fbd57804c', 'sqlFile', '', null, '4.9.1', null, null, '6036310763'), ('00000000000014', 'YiHui', 'liquibase/changelog/000_initial_schema.xml', '2023-02-10 21:38:31', '11', 'EXECUTED', '8:353578c1070a57ef76a6cb7e52a71b55', 'sqlFile', '', null, '4.9.1', null, null, '6036310763');
COMMIT;

-- ----------------------------
--  Table structure for `DATABASECHANGELOGLOCK`
-- ----------------------------
DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `DATABASECHANGELOGLOCK`
-- ----------------------------
BEGIN;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES ('1', b'0', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `dict_common`
-- ----------------------------
DROP TABLE IF EXISTS `dict_common`;
CREATE TABLE `dict_common` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type_code` varchar(100) NOT NULL DEFAULT '' COMMENT '字典类型，sex, status 等',
  `dict_code` varchar(100) NOT NULL DEFAULT '' COMMENT '字典类型的值编码',
  `dict_desc` varchar(200) NOT NULL DEFAULT '' COMMENT '字典类型的值描述',
  `sort_no` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序编号',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_type_code_dict_code` (`type_code`,`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='通用数据字典';

-- ----------------------------
--  Records of `dict_common`
-- ----------------------------
BEGIN;
INSERT INTO `dict_common` VALUES ('1', 'ConfigType', '1', '首页Banner', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('2', 'ConfigType', '2', '侧边Banner', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('3', 'ConfigType', '3', '广告Banner', '3', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('4', 'ConfigType', '4', '公告', '4', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('5', 'ConfigType', '5', '教程', '5', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('6', 'ConfigType', '6', '电子书', '6', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('7', 'PushStatus', '0', '未发布', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('8', 'PushStatus', '1', '已发布', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('9', 'ArticleTag', '1', '热门', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('10', 'ArticleTag', '2', '官方', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('11', 'ArticleTag', '3', '推荐', '3', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('12', 'ArticleSource', '1', '转载', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('13', 'ArticleSource', '2', '原创', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('14', 'ArticleSource', '3', '翻译', '3', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('15', 'OfficalStatus', '0', '非官方', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('16', 'OfficalStatus', '1', '官方', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('17', 'ToppingStatus', '0', '不置顶', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('18', 'ToppingStatus', '1', '置顶', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('19', 'CreamStatus', '0', '不加精', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('20', 'CreamStatus', '1', '加精', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('21', 'ColumnStatus', '0', '未发布', '1', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('22', 'ColumnStatus', '1', '连载', '2', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('23', 'ColumnStatus', '2', '已完结', '3', '', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('24', 'ColumnType', '0', '免费', '1', '', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('25', 'ColumnType', '1', '登录阅读', '2', '', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('26', 'ColumnType', '2', '限时免费', '3', '', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('27', 'PushStatus', '2', '审核中', '3', '', '2023-02-10 21:38:30', '2023-02-10 21:38:30');
COMMIT;

-- ----------------------------
--  Table structure for `notify_msg`
-- ----------------------------
DROP TABLE IF EXISTS `notify_msg`;
CREATE TABLE `notify_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `related_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联的主键',
  `notify_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通知的用户id',
  `operate_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '触发这个通知的用户id',
  `msg` varchar(1024) NOT NULL DEFAULT '' COMMENT '消息内容',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型: 0-默认，1-评论，2-回复 3-点赞 4-收藏 5-关注 6-系统',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读状态: 0-未读，1-已读',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `key_notify_user_id_type_state` (`notify_user_id`,`type`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='消息通知列表';

-- ----------------------------
--  Records of `notify_msg`
-- ----------------------------
BEGIN;
INSERT INTO `notify_msg` VALUES ('1', '0', '2', '1', '欢迎来到技术社区，戳<a href=\"/article/detail/1\">技术社区全方位视角解读</a>了解我们', '6', '0', '2023-01-13 19:53:23', '2023-01-13 19:53:23'), ('2', '0', '3', '1', '欢迎来到技术社区，戳<a href=\"/article/detail/1\">技术社区全方位视角解读</a>了解我们', '6', '0', '2023-04-14 22:26:28', '2023-04-14 22:26:28'), ('3', '0', '4', '1', '欢迎来到技术社区，戳<a href=\"/article/detail/1\">技术社区全方位视角解读</a>了解我们', '6', '0', '2023-04-14 22:26:40', '2023-04-14 22:26:40'), ('4', '0', '5', '1', '欢迎来到技术社区，戳<a href=\"/article/detail/1\">技术社区全方位视角解读</a>了解我们', '6', '0', '2023-04-14 22:26:49', '2023-04-14 22:26:49'), ('5', '0', '6', '1', '欢迎来到技术社区，戳<a href=\"/article/detail/1\">技术社区全方位视角解读</a>了解我们', '6', '0', '2023-04-14 22:27:25', '2023-04-14 22:27:25'), ('6', '102', '1', '4', '', '3', '0', '2023-04-15 20:11:22', '2023-04-15 20:11:22'), ('7', '102', '1', '4', '真不错啊', '1', '0', '2023-04-15 20:11:28', '2023-04-15 20:11:28'), ('8', '102', '1', '4', '二级回复！', '1', '0', '2023-04-15 20:11:34', '2023-04-15 20:11:34'), ('9', '102', '4', '4', '二级回复！', '2', '0', '2023-04-15 20:11:34', '2023-04-15 20:11:34'), ('10', '102', '1', '4', '', '4', '0', '2023-04-15 20:11:38', '2023-04-15 20:11:38');
COMMIT;

-- ----------------------------
--  Table structure for `read_count`
-- ----------------------------
DROP TABLE IF EXISTS `read_count`;
CREATE TABLE `read_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `document_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID（文章/评论）',
  `document_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '文档类型：1-文章，2-评论',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问计数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_document_id_type` (`document_id`,`document_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='计数表';

-- ----------------------------
--  Records of `read_count`
-- ----------------------------
BEGIN;
INSERT INTO `read_count` VALUES ('1', '103', '1', '4', '2023-01-13 19:54:17', '2023-01-13 19:54:17'), ('2', '102', '1', '7', '2023-02-10 22:35:50', '2023-02-10 22:35:50'), ('3', '104', '1', '5', '2023-04-15 15:25:17', '2023-04-15 15:25:17'), ('4', '105', '1', '3', '2023-04-15 16:03:44', '2023-04-15 16:03:44'), ('5', '101', '1', '16', '2023-04-15 19:48:24', '2023-04-15 19:48:24'), ('6', '106', '1', '1', '2023-04-15 20:00:49', '2023-04-15 20:00:49'), ('7', '107', '1', '1', '2023-04-15 20:07:49', '2023-04-15 20:07:49'), ('8', '100', '1', '4', '2023-04-15 20:12:11', '2023-04-15 20:12:11');
COMMIT;

-- ----------------------------
--  Table structure for `request_count`
-- ----------------------------
DROP TABLE IF EXISTS `request_count`;
CREATE TABLE `request_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `host` varchar(32) NOT NULL DEFAULT '' COMMENT '机器IP',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问计数',
  `date` date NOT NULL COMMENT '当前日期',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_unique_id_date` (`date`,`host`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='请求计数表';

-- ----------------------------
--  Records of `request_count`
-- ----------------------------
BEGIN;
INSERT INTO `request_count` VALUES ('1', '0.0.0.0', '49', '2023-01-13', '2023-01-13 19:53:17', '2023-01-13 19:53:17'), ('4', '0.0.0.0', '30', '2023-01-15', '2023-01-15 14:30:45', '2023-01-15 14:30:45'), ('5', '0.0.0.0', '2', '2023-01-18', '2023-01-18 22:45:05', '2023-01-18 22:45:05'), ('6', '0.0.0.0', '34', '2023-02-10', '2023-02-10 21:38:42', '2023-02-10 21:38:42'), ('7', '0.0.0.0', '121', '2023-04-14', '2023-04-14 22:25:53', '2023-04-14 22:25:53'), ('9', '0.0.0.0', '680', '2023-04-15', '2023-04-15 00:27:44', '2023-04-15 00:27:44');
COMMIT;

-- ----------------------------
--  Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tag_name` varchar(120) NOT NULL COMMENT '标签名称',
  `tag_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '标签类型：1-系统标签，2-自定义标签',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类目ID',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-未发布，1-已发布',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COMMENT='标签管理表';

-- ----------------------------
--  Records of `tag`
-- ----------------------------
BEGIN;
INSERT INTO `tag` VALUES ('1', 'Java', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('2', 'Go', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('3', '算法', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('4', 'Python', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('5', 'Spring Boot', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('6', '面试', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('7', 'MySQL', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('8', '数据库', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('9', 'Spring', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('10', '架构', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('11', 'LeetCode', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('12', 'Redis', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('14', 'Linux', '1', '1', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('15', 'JavaScript', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('16', 'Vue.js', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('17', 'React.js', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('18', 'CSS', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('20', 'TypeScript', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('21', '后端', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('22', 'Node.js', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('23', '前端框架', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('25', 'Webpack', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('27', '微信小程序', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('28', 'GitHub', '1', '2', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('29', 'Kotlin', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('30', 'Flutter', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('33', 'Android Jetpack', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('34', 'APP', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('35', 'Android Studio', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('36', '源码', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('37', '性能优化', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('40', 'gradle', '1', '4', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('42', 'Swift', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('43', 'SwiftUI', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('48', 'Xcode', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('49', 'Objective-C', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('50', 'Mac', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('51', 'WWDC', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('52', '计算机视觉', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('53', 'Apple', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('54', '音视频开发', '1', '5', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('55', '深度学习', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('57', '机器学习', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('61', 'PyTorch', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('62', 'NLP', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('63', '数据分析', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('64', '神经网络', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('65', 'TensorFlow', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('66', '数据可视化', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('67', '程序员', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('68', '数据挖掘', '1', '6', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('70', '前端', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('71', '开源', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('72', 'Git', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('75', '测试', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('78', '设计', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('81', 'Unity3D', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('82', 'Rust', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('83', '大数据', '1', '7', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('94', '年终总结', '1', '8', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('97', '数据结构', '1', '8', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('99', '云原生', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('100', '笔记', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('104', 'Serverless', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('106', '容器', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('107', '微服务', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('109', '产品', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('110', '产品经理', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('112', 'RocketMQ', '1', '9', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('114', 'sqlite', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('115', 'sql', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('116', 'spark', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('117', 'hive', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('118', 'hbase', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('119', 'hdfs', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('121', 'hadoop', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('122', 'rabbitmq', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('123', 'postgresql', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('125', '数据仓库', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('127', 'oracle', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('128', 'flink', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('129', 'nosql', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('131', 'eureka', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('132', 'mongodb', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('133', 'zookeeper', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('134', 'elasticsearch', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('135', 'kafka', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('136', 'json', '1', '3', '1', '0', '2023-01-13 19:15:58', '2023-01-13 19:15:58'), ('137', '技术社区', '1', '0', '1', '0', '2023-04-15 20:07:24', '2023-04-15 20:07:24');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `third_account_id` varchar(128) NOT NULL DEFAULT '' COMMENT '第三方用户ID',
  `user_name` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '密码',
  `login_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '登录方式: 0-微信登录，1-账号密码登录',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `key_third_account_id` (`third_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户登录表';

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'a7cb7228-0f85-4dd5-845c-7c5df3746e92', 'admin', 'df3a4143b663a086d1c006c8084db1b1', '0', '0', '2023-01-13 19:15:57', '2023-01-13 19:15:57'), ('2', 'ojfU95x47r52Jtsl9q6tuljq85Pk', 'guest', '168128f21e4702eb07d39b7478602e64', '0', '0', '2023-02-10 21:38:31', '2023-02-10 21:38:31'), ('3', 'demoUser_8', '', '', '0', '0', '2023-04-14 22:26:28', '2023-04-14 22:26:28'), ('4', 'demoUser1234', '', '', '0', '0', '2023-04-14 22:26:40', '2023-04-14 22:26:40'), ('5', 'demoUser_40', '', '', '0', '0', '2023-04-14 22:26:49', '2023-04-14 22:26:49'), ('6', 'demoUser_41', '', '', '0', '0', '2023-04-14 22:27:25', '2023-04-14 22:27:25');
COMMIT;

-- ----------------------------
--  Table structure for `user_foot`
-- ----------------------------
DROP TABLE IF EXISTS `user_foot`;
CREATE TABLE `user_foot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `document_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID（文章/评论）',
  `document_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '文档类型：1-文章，2-评论',
  `document_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布该文档的用户ID',
  `collection_stat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '收藏状态: 0-未收藏，1-已收藏，2-取消收藏',
  `read_stat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读状态: 0-未读，1-已读',
  `comment_stat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '评论状态: 0-未评论，1-已评论，2-删除评论',
  `praise_stat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '点赞状态: 0-未点赞，1-已点赞，2-取消点赞',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_doucument` (`user_id`,`document_id`,`document_type`),
  KEY `idx_doucument_id` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='用户足迹表';

-- ----------------------------
--  Records of `user_foot`
-- ----------------------------
BEGIN;
INSERT INTO `user_foot` VALUES ('1', '2', '103', '1', '2', '0', '1', '0', '0', '2023-01-13 19:54:17', '2023-01-15 14:48:06'), ('2', '4', '104', '1', '4', '0', '1', '0', '0', '2023-04-15 15:25:17', '2023-04-15 16:00:33'), ('3', '4', '105', '1', '4', '0', '1', '0', '0', '2023-04-15 16:03:43', '2023-04-15 20:15:31'), ('4', '4', '101', '1', '1', '0', '1', '0', '0', '2023-04-15 19:48:24', '2023-04-15 21:27:45'), ('5', '4', '106', '1', '4', '0', '1', '0', '0', '2023-04-15 20:00:49', '2023-04-15 20:00:50'), ('6', '4', '107', '1', '4', '0', '1', '0', '0', '2023-04-15 20:07:49', '2023-04-15 20:07:50'), ('7', '4', '102', '1', '1', '1', '1', '1', '1', '2023-04-15 20:09:48', '2023-04-15 20:14:11'), ('8', '4', '1', '2', '4', '0', '0', '1', '0', '2023-04-15 20:11:34', '2023-04-15 20:11:34'), ('9', '4', '100', '1', '1', '0', '1', '0', '0', '2023-04-15 20:12:11', '2023-04-15 21:26:51');
COMMIT;

-- ----------------------------
--  Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `photo` varchar(128) NOT NULL DEFAULT '' COMMENT '用户图像',
  `position` varchar(50) NOT NULL DEFAULT '' COMMENT '职位',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司',
  `profile` varchar(225) NOT NULL DEFAULT '' COMMENT '个人简介',
  `user_role` int(4) NOT NULL DEFAULT '0' COMMENT '0 普通用户 1 超管',
  `extend` varchar(1024) NOT NULL DEFAULT '' COMMENT '扩展字段',
  `ip` json NOT NULL COMMENT '用户的ip信息',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `key_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户个人信息表';

-- ----------------------------
--  Records of `user_info`
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES ('1', '1', '管理员', 'https://imgs.hhui.top/forum/avatar/0066.png', 'java', 'xm', '码农', '1', '', '{\"firstIp\": \"202.196.64.1\", \"latestIp\": \"0.0.0.0\", \"firstRegion\": \"四川·成都\", \"latestRegion\": \"\"}', '0', '2023-01-13 19:15:57', '2023-02-10 21:38:31'), ('2', '2', '游客', 'https://cdn.tobebetterjavaer.com/paicoding/avatar/0010.png', '首席', 'sc', '我的简介', '0', '', '{\"firstIp\": \"121.40.134.96\", \"latestIp\": \"58.48.23.111\", \"firstRegion\": \"四川·成都\", \"latestRegion\": \"河南·郑州\"}', '0', '2023-02-10 21:38:31', '2023-02-10 21:38:31'), ('3', '3', '欣喜的百合', 'https://cdn.tobebetterjavaer.com/paicoding/avatar/0015.png', '', '', '', '0', '', '{\"firstIp\": null, \"latestIp\": null, \"firstRegion\": null, \"latestRegion\": null}', '0', '2023-04-14 22:26:28', '2023-04-14 22:26:28'), ('4', '4', 'tttghao', 'https://cdn.tobebetterjavaer.com/paicoding/bb7a4c1c48b9aae3b35574d99da0108c.png', ' CEO', 'zzu', '', '0', '', '{\"firstIp\": \"0.0.0.0\", \"latestIp\": \"0.0.0.0\", \"firstRegion\": \"\", \"latestRegion\": \"\"}', '0', '2023-04-14 22:26:40', '2023-04-15 15:52:21'), ('5', '5', '雪白的树叶', 'https://cdn.tobebetterjavaer.com/paicoding/avatar/0048.png', '', '', '', '0', '', '{\"firstIp\": null, \"latestIp\": null, \"firstRegion\": null, \"latestRegion\": null}', '0', '2023-04-14 22:26:49', '2023-04-14 22:26:49'), ('6', '6', '冷酷的荔枝', 'https://cdn.tobebetterjavaer.com/paicoding/avatar/0015.png', '', '', '', '0', '', '{\"firstIp\": null, \"latestIp\": null, \"firstRegion\": null, \"latestRegion\": null}', '0', '2023-04-14 22:27:25', '2023-04-14 22:27:25');
COMMIT;

-- ----------------------------
--  Table structure for `user_relation`
-- ----------------------------
DROP TABLE IF EXISTS `user_relation`;
CREATE TABLE `user_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `follow_user_id` int(10) unsigned NOT NULL COMMENT '关注userId的用户id，即粉丝userId',
  `follow_state` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '阅读状态: 0-未关注，1-已关注，2-取消关注',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_follow` (`user_id`,`follow_user_id`),
  KEY `key_follow_user_id` (`follow_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户关系表';

SET FOREIGN_KEY_CHECKS = 1;
