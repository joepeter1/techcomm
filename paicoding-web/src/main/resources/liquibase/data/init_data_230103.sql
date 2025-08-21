INSERT INTO article
(id, user_id, article_type, title, short_title, picture, summary, category_id, source, source_url, status, deleted)
VALUES(1, 1, 1, '技术社区', '关于技术社区', '', '技术社区的使用说明介绍', 1, 2, '', 1, 0);


INSERT INTO article_detail
(article_id, version, content)
VALUES(1, 2, '技术社区
---
测试！！！！！！！！！！！！！
技术社区是一个基于SpringBoot实现完全开源的技术论坛社区
')
