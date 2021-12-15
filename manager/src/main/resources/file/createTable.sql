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
-- product: table
CREATE TABLE `product`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `name`        varchar(100)   DEFAULT NULL COMMENT '商品名称',
    `price`       decimal(10, 0) DEFAULT NULL COMMENT '价格',
    `stock`       varchar(255)   DEFAULT NULL COMMENT '库存',
    `path`        varchar(255)   DEFAULT NULL COMMENT '图片路径',
    `create_time` datetime       DEFAULT NULL COMMENT '时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
-- 插入数据
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('盖伦', '123456', '德玛西亚之力', 20, '男', '德玛西亚');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('菲奥娜', '123456', '无双剑姬', 22, '女', '德玛西亚');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('爆爆', '123456', '暴走萝莉', 16, '女', '祖安');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('蔚', '123456', '皮城执法官', 22, '女', '皮尔特沃夫');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('亚索', '123456', '疾风剑豪', 30, '男', '艾欧尼亚');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('艾瑞莉娅', '123456', '刀锋舞者', 23, '女', '艾欧尼亚');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('诺手', '123456', '诺克萨斯之手', 35, '男', '诺克萨斯');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('提莫', '123456', '迅捷斥候', 22, '男', '班德尔城');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('艾希', '123456', '寒冰射手', 28, '女', '弗雷尔卓德');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('蕾欧娜', '123456', '曙光女神', 999, '女', '巨神峰');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('死歌', '123456', '死亡颂唱者', 999, '男', '暗影岛');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('派克', '123456', '血港鬼影', 36, '男', '比尔吉沃特');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('沙皇', '123456', '沙漠皇帝', 99, '男', '恕瑞玛');
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address) VALUES ('大虫子', '123456', '虚空恐惧', 76, '男', '虚空之地');

INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('小米8屏幕指纹版', 2699, '0', 'http://localhost:8096/product/download/5b509adbfc1c47f4b8b7e3924b67dcd8', '2021-12-12 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('膳魔师保温杯', 169, '12', 'http://localhost:8096/product/download/415037a89d6e4be5b61496b8cbacb6f9', '2021-12-13 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('马克杯', 12, '88', 'http://localhost:8096/product/download/ff942ca3318840f1a1a24cfeda36b6b6', '2021-12-07 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('Lenovo无线鼠标', 88, '102', 'http://localhost:8096/product/download/c097ae5873114ff89a9146f26775f749', '2021-12-14 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('ThinkPad笔记本', 6999, '123', 'http://localhost:8096/product/download/db1429526d3544078c6896dd94a497bf', '2021-12-14 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('ThinkVison显示器', 799, '14', null, '2021-12-14 09:40:17');
INSERT INTO personal.product (name, price, stock, path, create_time) VALUES ('李宁跑鞋', 399, '786', null, '2021-12-14 09:40:59');