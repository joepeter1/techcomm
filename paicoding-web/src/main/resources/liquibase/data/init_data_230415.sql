-- 设置文章置顶
update article set topping_stat = 1 where id in (100, 101, 102);


-- 新增几个官方相关文章
INSERT INTO article
(id, user_id, article_type, title, short_title, picture, summary, category_id, source, source_url, offical_stat, topping_stat, cream_stat, status, deleted)
VALUES(16, 1, 1, '设计方案', '', '', '对标大厂项目方案设计，务必要看！', 1, 2, '', 1, 0, 0, 1, 0);



INSERT INTO article_detail
(article_id, version, content, deleted)
VALUES(16, 1, '## 整体介绍
### 背景
> 测试！！！

', 0);


-- 侧边栏推荐调整
delete from config where id <= 6;
INSERT INTO config
(id, `type`, name, banner_url, jump_url, content, `rank`, status, tags, extra, deleted, create_time, update_time)
VALUES(1, 5, '高并发手册', 'https://sky-thao.oss-cn-qingdao.aliyuncs.com/jssq.png', '', '内容肝、配图美、可读性高，高并发经典之作！', 1, 1, '', '{}', 0, '2023-01-13 19:15:57', '2023-04-15 15:05:22');
INSERT INTO config
(id, `type`, name, banner_url, jump_url, content, `rank`, status, tags, extra, deleted, create_time, update_time)
VALUES(2, 1, '加入社区2', '', 'https://hhui.top/', '', 2, 1, '', '{}', 0, '2023-01-13 19:15:57', '2023-01-13 19:15:57');
INSERT INTO config
(id, `type`, name, banner_url, jump_url, content, `rank`, status, tags, extra, deleted, create_time, update_time)
VALUES(5, 6, 'JVM 核心手册', ' ', '', 'JVM 手。', 2, 1, '1', '{"visit":110252,"download":12121,"rate":"9.1"}', 0, '2023-01-13 19:15:58', '2023-04-15 21:23:09');
INSERT INTO config
(id, `type`, name, banner_url, jump_url, content, `rank`, status, tags, extra, deleted, create_time, update_time)
VALUES(6, 6, 'Spring源码解析手册', '', '', 'Spring源码解读手册，硬核，带你成为 Spring 高手！', 2, 1, '1', '{"visit":120248,"download":212103,"rate":"9.3"}', 0, '2023-01-13 19:15:58', '2023-04-15 21:23:09');


update article set summary = '技术社区（paicoding）是一个前后端分离的 Java 社区项目。' where id = 1;

update article set summary = '天天说分布式分布式，那么我们是否知道什么是分布式，分布式会遇到什么问题，有哪些理论支撑，有哪些经典的应对方案，业界是如何设计并保证分布式系统的高可用呢？

1.架构设计
这一节将从一些经典的开源系统架构设计出发，来看一下，如何设计一个高质量的分布式系统；' where id = 100;

update article set summary = '你在分布式系统上工作吗？微服务，Web API，SOA，Web服务器，应用服务器，数据库服务器，缓存服务器，负载均衡器 - 如果这些描述了系统设计中的组件，那么答案是肯定的。分布式系统由许多计算机组成，这些计算机协调以实现共同的目标。

20多年前，Peter Deutsch和James Gosling定义了分布式计算的8个谬误。这些是许多开发人员对分布式系统做出的错误假设。从长远来看，这些通常被证明是错误的，导致难以修复错误。' where id = 101;



update article set summary = '分布式的概念存在年头有点久了，在正式进入我们《分布式专栏》之前，感觉有必要来聊一聊，什么是分布式，分布式特点是什么，它又有哪些问题，在了解完这个概念之后，再去看它的架构设计，理论奠基可能帮助会更大' where id = 102;

