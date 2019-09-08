BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `users` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT,
	`age`	INTEGER NOT NULL,
	`country`	TEXT NOT NULL
);
INSERT INTO `users` VALUES (1,'赵匡胤',44,'北宋');
INSERT INTO `users` VALUES (2,'钱百万',33,'大明');
INSERT INTO `users` VALUES (3,'孙权',22,'东吴');
INSERT INTO `users` VALUES (4,'李渊',62,'大唐');
INSERT INTO `users` VALUES (6,'周伯通',66,'南宋');
INSERT INTO `users` VALUES (7,'吴三桂',43,'大清');
INSERT INTO `users` VALUES (9,'郑成功',37,'大明');
INSERT INTO `users` VALUES (10,'王昭君',22,'西汉');
INSERT INTO `users` VALUES (11,'冯国璋',54,'民国');
INSERT INTO `users` VALUES (12,'陈圆圆',21,'大明');
INSERT INTO `users` VALUES (13,'卫央',30,'秦国');
INSERT INTO `users` VALUES (14,'蒋中正',80,'台湾');
INSERT INTO `users` VALUES (15,'沈从文',30,'民国');
INSERT INTO `users` VALUES (16,'韩非子',42,'韩国');
INSERT INTO `users` VALUES (17,'杨铁心',30,'北宋');
COMMIT;
