CREATE TABLE `vue_user`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `username`  varchar(100) DEFAULT NULL COMMENT '用户名',
    `password`  varchar(100) DEFAULT NULL COMMENT '密码',
    `nick_name` varchar(100) DEFAULT NULL COMMENT '昵称',
    `age`       int(11)      DEFAULT NULL COMMENT '年龄',
    `sex`       varchar(2)   DEFAULT NULL COMMENT '性别',
    `address`   varchar(100) DEFAULT NULL COMMENT '地址',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8 COMMENT ='前后端分离的用户表';
-- 插入数据
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (1, '盖伦', '123456', '德玛西亚之力', 20, '男', '德玛西亚');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (2, '菲奥娜', '123456', '无双剑姬', 22, '女', '德玛西亚');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (3, '爆爆', '123456', '暴走萝莉', 16, '女', '祖安');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (4, '蔚', '123456', '皮城执法官', 22, '女', '皮尔特沃夫');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (5, '亚索', '123456', '疾风剑豪', 30, '男', '艾欧尼亚');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (6, '艾瑞莉娅', '123456', '刀锋舞者', 23, '女', '艾欧尼亚');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (7, '诺手', '123456', '诺克萨斯之手', 35, '男', '诺克萨斯');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (8, '提莫', '123456', '迅捷斥候', 22, '男', '班德尔城');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (9, '艾希', '123456', '寒冰射手', 28, '女', '弗雷尔卓德');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (10, '蕾欧娜', '123456', '曙光女神', 999, '女', '巨神峰');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (11, '死歌', '123456', '死亡颂唱者', 999, '男', '暗影岛');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (12, '派克', '123456', '血港鬼影', 36, '男', '比尔吉沃特');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (13, '沙皇', '123456', '沙漠皇帝', 99, '男', '恕瑞玛');
INSERT INTO personal.vue_user (id, username, password, nick_name, age, sex, address) VALUES (14, '大虫子', '123456', '虚空恐惧', 76, '男', '虚空之地');