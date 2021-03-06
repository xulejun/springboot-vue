-- vue_user: table
DROP TABLE IF EXISTS vue_user;
CREATE TABLE `vue_user`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `username`  varchar(100) DEFAULT NULL COMMENT '用户名',
    `password`  varchar(100) DEFAULT NULL COMMENT '密码',
    `nick_name` varchar(100) DEFAULT NULL COMMENT '昵称',
    `age`       int(11) DEFAULT NULL COMMENT '年龄',
    `sex`       varchar(2)   DEFAULT NULL COMMENT '性别',
    `address`   varchar(100) DEFAULT NULL COMMENT '地址',
    `role`      varchar(10)  DEFAULT '2' COMMENT '角色：1-管理员，2-普通用户',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 0
  DEFAULT CHARSET = utf8 COMMENT ='前后端分离的用户表';
-- product: table
DROP TABLE IF EXISTS product;
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
  AUTO_INCREMENT = 0
  DEFAULT CHARSET = utf8;
-- content: table
DROP TABLE IF EXISTS content;
CREATE TABLE `content`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `title`       varchar(100) DEFAULT NULL COMMENT '标题',
    `author`      varchar(100) DEFAULT NULL COMMENT '作者',
    `details`     text COMMENT '内容',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 0
  DEFAULT CHARSET = utf8 COMMENT ='内容管理（富文本编辑器集成）';
-- order_info: table
DROP TABLE IF EXISTS order_info;
CREATE TABLE `order_info`
(
    `id`           int(11) NOT NULL AUTO_INCREMENT,
    `subject`      varchar(100) DEFAULT NULL COMMENT '交易名称',
    `trade_no`     varchar(100) DEFAULT NULL COMMENT '支付宝交易凭证号',
    `buyer_id`     varchar(100) DEFAULT NULL COMMENT '买家在支付宝唯一id',
    `sku_trade_no` varchar(100) DEFAULT NULL COMMENT '商品订单号',
    `status`       tinyint(2) DEFAULT '0' COMMENT '交易状态：0-未支付，1-已支付',
    `payer`        varchar(10)  DEFAULT NULL COMMENT '支付人',
    `pay_amount`   varchar(10)  DEFAULT NULL COMMENT '买家付款金额',
    `pay_time`     varchar(50)  DEFAULT NULL COMMENT '买家付款时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 0
  DEFAULT CHARSET = utf8 COMMENT ='订单详情表';
-- garlic: table
DROP TABLE IF EXISTS garlic;
CREATE TABLE `garlic`
(
    `id`           int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `title`        varchar(100)  DEFAULT NULL COMMENT '标题',
    `detail_url`   varchar(255)  DEFAULT NULL COMMENT '详情Url',
    `article_time` varchar(100)  DEFAULT NULL COMMENT '文章发布时间',
    `price`        decimal(6, 2) DEFAULT NULL COMMENT '价格',
    `crawler_time` datetime      DEFAULT NULL COMMENT '文章采集时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `garlic_article_time_uindex` (`article_time`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1447
  DEFAULT CHARSET = utf8 COMMENT ='大蒜行情价格';

-- 插入数据
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('盖伦', '123456', '德玛西亚之力', 18, '男', '德玛西亚', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('刀妹', '123456', '刀锋舞者', 19, '女', '艾欧尼亚', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('金克丝', '123456', '暴走萝莉', 17, '女', '祖安', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('提莫', '123456', '迅捷斥候', 15, '男', '班德尔城', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('亚索', '123456', '疾风剑豪', 25, '男', '艾欧尼亚', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('男刀', '123456', '刀锋之影', 30, '男', '诺克萨斯', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('艾希', '123456', '寒冰射手', 28, '女', '弗雷尔卓德', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('蕾欧娜', '123456', '曙光女神', 999, '女', '巨神峰', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('死歌', '123456', '死亡颂唱者', 999, '男', '暗影岛', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('派克', '123456', '血港鬼影', 36, '男', '比尔吉沃特', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('沙皇', '123456', '沙漠皇帝', 99, '男', '恕瑞玛', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('大虫子', '123456', '虚空恐惧', 76, '男', '虚空之地', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('小炮', '123456', '麦林炮手', 19, '女', '班德尔城', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('露露', '123456', '仙灵女巫', 46, '女', '班德尔城', 2);
INSERT INTO personal.vue_user (username, password, nick_name, age, sex, address, role)
VALUES ('admin', '123456', '管理员', 18, '男', '拳头', 1);

INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('小米8屏幕指纹版', 2699, '0', 'http://localhost:8096/product/download/5b509adbfc1c47f4b8b7e3924b67dcd8',
        '2021-12-12 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('膳魔师保温杯', 169, '12', 'http://localhost:8096/product/download/415037a89d6e4be5b61496b8cbacb6f9',
        '2021-12-13 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('马克杯', 12, '88', 'http://localhost:8096/product/download/ff942ca3318840f1a1a24cfeda36b6b6',
        '2021-12-07 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('Lenovo无线鼠标', 88, '102', 'http://localhost:8096/product/download/c097ae5873114ff89a9146f26775f749',
        '2021-12-14 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('ThinkPad笔记本', 6999, '123', 'http://localhost:8096/product/download/db1429526d3544078c6896dd94a497bf',
        '2021-12-14 08:00:00');
INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('ThinkVison显示器', 799, '14', null, '2021-12-14 09:40:17');
INSERT INTO personal.product (name, price, stock, path, create_time)
VALUES ('李宁跑鞋', 399, '786', null, '2021-12-14 09:40:59');

INSERT INTO personal.content (title, author, details, create_time)
VALUES ('提莫台词', '提莫',
        '<p>1、提莫队长正在待命!</p><p>2、一!二!三!四……</p><p>3、是，长官!</p><p>4、我去前面探探路</p><p>5、整装待发!</p><p>6、有情况!</p><p>7、正在报告!</p><p>8、绝对不要低估迅捷斥候的威力</p><p>9、向您致敬!</p><p>10、体型并不能说明一切</p><p>11、要迅捷!</p><p><img src="https://gimg0.baidu.com/gimg/src=https%3A%2F%2Fgameplus-platform.cdn.bcebos.com%2Fgameplus-platform%2Fupload%2Ffile%2Fsource%2Fb3a7dfb26a449679481cad7033b064c7ed86c9fe_1630980307197.jpg&amp;app=2000&amp;size=f9999,10000&amp;n=0&amp;g=0n&amp;q=70&amp;fmt=jpeg?sec=0&amp;t=a4b5cf4957f7a4dca86bbef5eb9a9edc"/></p>',
        '2021-12-15 19:16:22');
INSERT INTO personal.content (title, author, details, create_time)
VALUES ('盖伦台词', '盖伦',
        '<p>1、人在塔在</p><p>2、生命不息，战斗不止</p><p>3、我将带头冲锋</p><p>4、搅乱他们的阵型</p><p>5、绝不动摇!</p><p>6、正义，要么靠法律，要么靠武力!</p><p>7、德玛西亚!</p><p>8、为那些不能作战的人而战</p><p>9、德玛西亚的光辉将会照耀整个世界</p><p>10、放马过来吧，你会死的很光荣的</p><p>11、我们的行为是正义的</p><p>12、我们的功绩将载入史册</p><p>13、开大时：接受制裁吧! 正义必胜!</p><p>14、你是个屠夫，不是个将军</p><p>15、你敢伸出洛克萨斯之手，我就敢剁了他</p><p><img src="https://img0.baidu.com/it/u=4143298440,1303722830&amp;fm=26&amp;fmt=auto" style="max-width:100%;" contenteditable="false"/></p>',
        '2021-12-15 19:29:25');
INSERT INTO personal.content (title, author, details, create_time)
VALUES ('金克丝台词', '金克丝',
        '<p>(1)我有——最美好的初衷</p><p>(2)让我们表现的——你被耍了<br/></p><p>(3)我是疯子——有医生开的证明!<br/></p><p>(4)她就是个小太妹，是不停地开着枪，还是最强的<br/></p><p>(5)规则——就是用来打破的<br/></p><p>(6)我现在在哪?哦对，在一场浩劫中<br/></p><p>(7)等等我在想问题，嗯……别人是怎么干这行的?<br/></p><p>(8)等等我在想问题，好吧，我想完了<br/></p><p>(9)我也试着去用心，可是我做不到哇<br/></p><p>(10)金克丝的含义?就是金克丝，笨!</p><p><img src="https://img0.baidu.com/it/u=1466642791,2489395801&amp;fm=253&amp;fmt=auto&amp;app=120&amp;f=GIF?w=577&amp;h=267" contenteditable="false" style="font-size: 14px; color: var(--el-text-color-regular); max-width: 100%;"/></p>',
        '2021-12-15 19:30:57');
INSERT INTO personal.content (title, author, details, create_time)
VALUES ('刀妹台词', '刀妹',
        '<p>1、走这边</p><p>2、正义指引着我们。</p><p>3、我绝不会动摇。</p><p>4、出手要准</p><p>5、稳步前进!</p><p>6、艾欧尼亚不会灭亡。</p><p>7、我的立场非常坚定。</p><p>8、要保持敏锐。</p><p>9、真正的意志是不会被击败的!</p><p>10、为什么每个人都在问我“会不会削到自己的头发”呢?</p><p>11、没有退路了!</p><p>12、我的剑刃从不颤抖。</p><p>13、这场战斗必将获胜。</p><p>14、他们的胜利必将成为奢望!</p><p>15、这就是我收养那些流浪剑刃的结果。</p><p>16、你们太过依赖自己的武器了，要试着放手~</p><p>17、平衡，存乎万物之间。</p><p>18、我的剑刃不但准，而且狠!</p><p>19、我的剑刃愿为您效劳。</p><p>20、可怕的喘息，就像被她自己的剑刺入一样痛苦。</p><p><img src="https://gimg0.baidu.com/gimg/src=https%3A%2F%2Fgameplus-platform.cdn.bcebos.com%2Fgameplus-platform%2Fupload%2Ffile%2Fsource%2F2_1626667527186.jpg&amp;app=2000&amp;size=f9999,10000&amp;n=0&amp;g=0n&amp;q=70&amp;fmt=jpeg?sec=0&amp;t=7602c577da3dbd74830956c148fe1a36" style="max-width:100%;" contenteditable="false"/></p><br/>',
        '2021-12-15 19:32:05');
INSERT INTO personal.content (title, author, details, create_time)
VALUES ('亚索台词', '亚索',
        '<p>1、死亡如风，常伴吾身。</p><p>2、长路漫漫，唯剑作伴。</p><p>3、吾之荣耀，离别已久。</p><p>4、明日安在，无人能允。</p><p>5、且随疾风前行，身后亦须留心。</p><p>6、此剑之势，愈斩愈烈。</p><p>7、仁义道德，也是一种奢侈。</p><p>8、灭亡之路，短的超乎你的想象。</p><p>9、无罪之人，方可安睡。</p><p>10、正义，好个冠冕堂皇之词。</p><p>11、回首往昔，更进一步。</p><p>12、吾虽浪迹天涯，却未迷失本心。</p><p>13、我还在寻找回家的路。</p><p>14、可久留于一处。</p><p>15、我将遵循此道，直至终结。</p><p>16、荣耀存于心，而非流于形。</p><p>17、吾之初心，永世不忘。</p><p>18、这个故事还没有完结。</p><p>19、树叶的一生，只是为了归根吧?</p><p>20、汝欲赴死，易如反掌。</p><p>21、人们一直在往我的剑上撞。</p><p>22、我会给你个痛快的!</p><p>23、蠢货是无药可治的!</p><p>24、想杀我?你可以试试。</p><p>25、死亡而已!没什么大不了的。</p><p>26、速战速决吧!</p><p>27、还是别出招了，反正是我赢。</p><p>28、想独自平静一会吗?很快你就可以了。</p><p>29、有些事绝对不会无趣。</p><p>30、有些失误无法犯两次。</p><p>31、我不会怀着耻辱而死!</p><p>32、别再逃了。</p><p>33、我命由我，不由天。</p><p>34、一剑，一念。</p><p>35、还没到死的时候。</p><p>36、亚索把他的酒瓶扔向空中并用他的剑接住。</p><p>37、我的剑，比什么都重要，除了美酒。</p><p>38、谁说我酒量不好的?</p><p>39、生命中有三件必经之事：荣誉、死亡、还有宿醉。</p><p>40、不是你死，就是我亡!</p><p>41、如果你要来杀我，希望你把朋友们也带上。</p><p>42、杀人是种恶习，但我似乎戒不掉了。</p><p><br/><img src="https://gimg0.baidu.com/gimg/src=https%3A%2F%2Fgameplus-platform.cdn.bcebos.com%2Fgameplus-platform%2Fupload%2Ffile%2Fsource%2FQQ%E5%9B%BE%E7%89%8720210903163533_1630658203553.png&amp;app=2000&amp;size=f9999,10000&amp;n=0&amp;g=0n&amp;q=70&amp;fmt=jpeg?sec=0&amp;t=5d11d322ffa135cb7fe3058c969e1fae" contenteditable="false" style="font-size: 14px; color: var(--el-text-color-regular); max-width: 100%;"/></p>',
        '2021-12-15 19:33:30');
INSERT INTO personal.content (title, author, details, create_time)
VALUES ('小炮台词', '小炮',
        '<p>一日为班德尔炮手，终身为班德尔炮手</p><p>跳舞(带唱歌)：</p><p>班德尔炮手看到了什么?报告长官只有胜利</p><p>不管陆军、空军还是海军，班德尔炮手统统消灭干净</p><p>一个树桩短，十个树桩长，班德尔炮手不可阻挡</p><p>游戏中随机台词：</p><p>不顾一切的冲锋!</p><p>快让这场派对开始吧</p><p>你卖耳塞不?</p><p>只需要给我指个正确的方向</p><p>带上这些坏家伙</p><p>哈哈哈<br/><img src="https://img2.baidu.com/it/u=3770740608,1493581647&amp;fm=26&amp;fmt=auto" style="max-width:100%;" contenteditable="false"/></p>',
        '2021-12-15 19:53:39');

INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('小米8屏幕指纹版', '2021122022001430870501672392', '2088622957430877', '1472839834904035328', 1, 'admin', '2699.00',
        '2021-12-20 16:02:51');
INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('膳魔师保温杯', '2021122022001430870501672696', '2088622957430877', '1472840313713197056', 1, 'admin', '169.00',
        '2021-12-20 16:04:56');
INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('马克杯', '2021122022001430870501672393', '2088622957430877', '1472840598200254464', 1, 'admin', '12.00',
        '2021-12-20 16:05:52');
INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('Lenovo无线鼠标', '2021122022001430870501672394', '2088622957430877', '1472840760943443968', 1, 'admin', '88.00',
        '2021-12-20 16:06:31');
INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('ThinkPad笔记本', '2021122022001430870501672395', '2088622957430877', '1472840854392537088', 1, 'admin', '6999.00',
        '2021-12-20 16:06:51');
INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('ThinkVison显示器', '2021122022001430870501672396', '2088622957430877', '1472841174514401280', 1, 'admin',
        '799.00', '2021-12-20 16:08:22');
INSERT INTO personal.order_info (subject, trade_no, buyer_id, sku_trade_no, status, payer, pay_amount, pay_time)
VALUES ('李宁跑鞋', null, null, '1472841372686876672', 0, 'admin', '399', null);

INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (41, '11月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102905.html', '2021-11-20 09:35', 2.55,
        '2021-12-17 11:28:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (42, '11月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102849.html', '2021-11-19 09:40', 2.57,
        '2021-12-17 11:31:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (43, '11月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102793.html', '2021-11-18 09:45', 2.57,
        '2021-12-17 11:35:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (44, '11月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102737.html', '2021-11-17 09:45', 2.60,
        '2021-12-17 11:41:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (45, '11月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102681.html', '2021-11-16 09:35', 2.60,
        '2021-12-17 11:44:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (46, '11月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102622.html', '2021-11-15 09:55', 2.60,
        '2021-12-17 11:47:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (47, '11月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102568.html', '2021-11-14 10:44', 2.60,
        '2021-12-17 11:52:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (48, '11月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102507.html', '2021-11-13 09:50', 2.60,
        '2021-12-17 11:56:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (49, '11月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102451.html', '2021-11-12 09:40', 2.65,
        '2021-12-17 11:58:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (50, '11月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102394.html', '2021-11-11 09:50', 2.65,
        '2021-12-17 12:02:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (51, '11月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102338.html', '2021-11-10 09:35', 2.65,
        '2021-12-17 12:06:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (52, '11月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102282.html', '2021-11-09 09:55', 2.65,
        '2021-12-17 12:08:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (53, '11月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102227.html', '2021-11-08 09:51', 2.65,
        '2021-12-17 12:09:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (54, '11月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102172.html', '2021-11-07 11:10', 2.65,
        '2021-12-17 12:15:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (55, '11月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102114.html', '2021-11-06 09:30', 2.65,
        '2021-12-17 12:17:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (56, '11月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102057.html', '2021-11-05 09:50', 2.62,
        '2021-12-17 12:21:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (57, '11月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102001.html', '2021-11-04 09:40', 2.62,
        '2021-12-17 12:29:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (58, '11月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101945.html', '2021-11-03 09:40', 2.62,
        '2021-12-17 12:30:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (59, '11月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101889.html', '2021-11-02 09:40', 2.60,
        '2021-12-17 12:31:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (60, '11月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101833.html', '2021-11-01 09:46', 2.60,
        '2021-12-17 12:36:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (61, '10月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101781.html', '2021-10-31 10:46', 2.60,
        '2021-12-17 12:38:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (62, '10月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101723.html', '2021-10-30 09:40', 2.60,
        '2021-12-17 12:40:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (63, '10月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101667.html', '2021-10-29 09:40', 2.60,
        '2021-12-17 12:43:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (64, '10月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101612.html', '2021-10-28 09:40', 2.60,
        '2021-12-17 12:47:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (65, '10月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101557.html', '2021-10-27 09:40', 2.60,
        '2021-12-17 12:50:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (66, '10月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101501.html', '2021-10-26 09:40', 2.60,
        '2021-12-17 12:54:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (67, '10月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101444.html', '2021-10-25 09:50', 2.60,
        '2021-12-17 12:57:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (68, '10月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101387.html', '2021-10-24 10:41', 2.62,
        '2021-12-17 13:01:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (69, '10月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101330.html', '2021-10-23 09:50', 2.62,
        '2021-12-17 13:07:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (70, '10月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101273.html', '2021-10-22 09:40', 2.63,
        '2021-12-17 13:10:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (71, '10月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101215.html', '2021-10-21 09:50', 2.65,
        '2021-12-17 13:13:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (72, '10月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101158.html', '2021-10-20 09:50', 2.65,
        '2021-12-17 13:18:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (73, '10月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101101.html', '2021-10-19 09:45', 2.65,
        '2021-12-17 13:20:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (74, '10月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-101045.html', '2021-10-18 09:45', 2.65,
        '2021-12-17 13:25:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (75, '10月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100989.html', '2021-10-17 10:20', 2.65,
        '2021-12-17 13:28:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (76, '10月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100930.html', '2021-10-16 09:45', 2.65,
        '2021-12-17 13:30:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (77, '10月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100872.html', '2021-10-15 09:50', 2.65,
        '2021-12-17 13:35:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (78, '10月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100815.html', '2021-10-14 09:40', 2.63,
        '2021-12-17 13:36:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (79, '10月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100758.html', '2021-10-13 09:50', 2.63,
        '2021-12-17 13:41:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (80, '10月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100701.html', '2021-10-12 09:40', 2.63,
        '2021-12-17 13:45:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (81, '10月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100644.html', '2021-10-11 09:40', 2.63,
        '2021-12-17 13:48:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (82, '10月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100587.html', '2021-10-10 10:02', 2.63,
        '2021-12-17 13:50:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (83, '10月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100529.html', '2021-10-09 09:40', 2.63,
        '2021-12-17 13:54:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (84, '10月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100472.html', '2021-10-08 09:40', 2.63,
        '2021-12-17 13:58:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (85, '10月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100415.html', '2021-10-07 09:50', 2.63,
        '2021-12-17 13:59:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (86, '10月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100358.html', '2021-10-06 09:50', 2.63,
        '2021-12-17 14:01:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (87, '10月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100301.html', '2021-10-05 09:50', 2.63,
        '2021-12-17 14:07:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (88, '10月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100244.html', '2021-10-04 10:00', 2.65,
        '2021-12-17 14:11:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (89, '10月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100138.html', '2021-10-02 09:51', 2.65,
        '2021-12-17 14:16:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (90, '10月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100082.html', '2021-10-01 10:00', 2.65,
        '2021-12-17 14:17:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (91, '9月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-100024.html', '2021-09-30 09:30', 2.60,
        '2021-12-17 14:21:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (92, '9月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99968.html', '2021-09-29 09:40', 2.60,
        '2021-12-17 14:26:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (93, '9月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99910.html', '2021-09-28 09:40', 2.60,
        '2021-12-17 14:28:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (94, '9月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99853.html', '2021-09-27 09:45', 2.63,
        '2021-12-17 14:33:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (95, '9月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99795.html', '2021-09-26 10:05', 2.63,
        '2021-12-17 14:34:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (96, '9月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99737.html', '2021-09-25 10:05', 2.63,
        '2021-12-17 14:37:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (97, '9月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99680.html', '2021-09-24 09:45', 2.60,
        '2021-12-17 14:44:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (98, '9月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99623.html', '2021-09-23 09:55', 1.93,
        '2021-12-17 14:46:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (99, '9月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99566.html', '2021-09-22 09:55', 1.93,
        '2021-12-17 14:52:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (100, '9月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99509.html', '2021-09-21 09:45', 1.90,
        '2021-12-17 14:53:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (101, '9月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99452.html', '2021-09-20 10:20', 1.90,
        '2021-12-17 14:56:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (102, '9月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99395.html', '2021-09-19 10:42', 1.90,
        '2021-12-17 15:02:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (103, '9月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99338.html', '2021-09-18 09:45', 1.90,
        '2021-12-17 15:05:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (104, '9月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99280.html', '2021-09-17 10:00', 1.90,
        '2021-12-17 15:10:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (105, '9月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99223.html', '2021-09-16 09:45', 1.90,
        '2021-12-17 15:12:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (106, '9月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99166.html', '2021-09-15 09:45', 1.90,
        '2021-12-17 15:15:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (107, '9月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99109.html', '2021-09-14 09:35', 1.90,
        '2021-12-17 15:18:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (108, '9月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-99052.html', '2021-09-13 09:35', 1.90,
        '2021-12-17 15:21:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (109, '9月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98991.html', '2021-09-12 10:26', 1.90,
        '2021-12-17 15:26:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (110, '9月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98935.html', '2021-09-11 09:35', 1.90,
        '2021-12-17 15:29:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (111, '9月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98877.html', '2021-09-10 10:00', 1.93,
        '2021-12-17 15:31:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (112, '9月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98819.html', '2021-09-09 09:20', 1.95,
        '2021-12-17 15:36:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (113, '9月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98760.html', '2021-09-08 09:40', 1.95,
        '2021-12-17 15:39:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (114, '9月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98702.html', '2021-09-07 09:45', 2.00,
        '2021-12-17 15:45:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (115, '9月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98645.html', '2021-09-06 09:59', 2.00,
        '2021-12-17 15:48:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (116, '9月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98586.html', '2021-09-05 10:07', 2.00,
        '2021-12-17 15:52:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (117, '9月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98527.html', '2021-09-04 09:40', 2.00,
        '2021-12-17 15:58:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (118, '9月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98469.html', '2021-09-03 09:45', 2.05,
        '2021-12-17 16:01:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (119, '9月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98411.html', '2021-09-02 09:45', 2.07,
        '2021-12-17 16:06:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (120, '9月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98353.html', '2021-09-01 09:40', 2.10,
        '2021-12-17 16:08:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (121, '8月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98295.html', '2021-08-31 09:48', 2.10,
        '2021-12-17 16:09:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (122, '8月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98237.html', '2021-08-30 09:35', 2.10,
        '2021-12-17 16:17:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (123, '8月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98179.html', '2021-08-29 10:19', 2.10,
        '2021-12-17 16:20:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (124, '8月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98122.html', '2021-08-28 09:40', 2.10,
        '2021-12-17 16:23:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (125, '8月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-98063.html', '2021-08-27 09:40', 2.20,
        '2021-12-17 16:24:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (126, '8月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-97005.html', '2021-08-09 09:35', 2.07,
        '2021-12-17 17:20:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (127, '8月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96945.html', '2021-08-08 10:56', 2.07,
        '2021-12-17 17:24:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (128, '8月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96887.html', '2021-08-07 09:40', 2.07,
        '2021-12-17 17:25:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (129, '8月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96886.html', '2021-08-06 09:40', 2.07,
        '2021-12-17 17:28:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (130, '8月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96769.html', '2021-08-05 09:40', 2.07,
        '2021-12-17 17:33:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (131, '8月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96711.html', '2021-08-04 09:40', 2.07,
        '2021-12-17 17:36:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (132, '8月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96653.html', '2021-08-03 09:50', 2.07,
        '2021-12-17 17:38:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (133, '8月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96595.html', '2021-08-02 09:50', 2.07,
        '2021-12-17 17:39:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (134, '8月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96536.html', '2021-08-01 10:49', 2.10,
        '2021-12-17 17:40:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (135, '7月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96479.html', '2021-07-31 09:45', 2.10,
        '2021-12-17 17:43:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (136, '7月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96417.html', '2021-07-30 09:40', 2.10,
        '2021-12-17 17:44:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (137, '7月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96355.html', '2021-07-29 09:42', 2.10,
        '2021-12-17 17:49:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (138, '7月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96300.html', '2021-07-28 09:25', 2.05,
        '2021-12-17 17:52:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (139, '7月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96240.html', '2021-07-27 09:40', 2.05,
        '2021-12-17 17:56:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (140, '7月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96181.html', '2021-07-26 09:45', 2.05,
        '2021-12-17 18:01:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (141, '7月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96122.html', '2021-07-25 10:41', 2.03,
        '2021-12-17 18:05:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (142, '7月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96065.html', '2021-07-24 09:25', 2.03,
        '2021-12-17 18:08:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (143, '7月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-96003.html', '2021-07-23 09:45', 2.03,
        '2021-12-17 18:09:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (144, '7月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95944.html', '2021-07-22 09:40', 2.03,
        '2021-12-17 18:12:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (145, '7月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95886.html', '2021-07-21 10:15', 2.03,
        '2021-12-17 18:19:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (146, '7月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95826.html', '2021-07-20 09:40', 2.03,
        '2021-12-17 18:22:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (147, '7月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95767.html', '2021-07-19 09:40', 2.03,
        '2021-12-17 18:28:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (148, '7月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95708.html', '2021-07-18 10:21', 2.03,
        '2021-12-17 18:31:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (149, '7月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95649.html', '2021-07-17 09:40', 2.03,
        '2021-12-17 18:35:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (150, '7月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95589.html', '2021-07-16 09:43', 2.00,
        '2021-12-17 18:40:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (151, '7月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95532.html', '2021-07-15 09:40', 1.95,
        '2021-12-17 18:43:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (152, '7月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95471.html', '2021-07-14 09:40', 1.95,
        '2021-12-17 18:49:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (153, '7月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95412.html', '2021-07-13 09:40', 1.95,
        '2021-12-17 18:50:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (154, '7月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95353.html', '2021-07-12 09:45', 1.95,
        '2021-12-17 18:52:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (155, '7月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95293.html', '2021-07-11 10:21', 2.05,
        '2021-12-17 18:58:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (156, '7月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95237.html', '2021-07-10 09:40', 2.05,
        '2021-12-17 19:01:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (157, '7月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95179.html', '2021-07-09 09:40', 2.05,
        '2021-12-17 19:09:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (158, '7月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95120.html', '2021-07-08 09:40', 2.05,
        '2021-12-17 19:12:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (159, '7月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95062.html', '2021-07-07 09:30', 2.10,
        '2021-12-17 19:16:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (160, '7月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-95007.html', '2021-07-06 09:45', 2.12,
        '2021-12-17 19:21:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (161, '7月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94947.html', '2021-07-05 09:45', 2.20,
        '2021-12-17 19:24:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (162, '7月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94871.html', '2021-07-04 10:01', 2.20,
        '2021-12-17 19:32:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (163, '7月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94801.html', '2021-07-03 09:33', 2.22,
        '2021-12-17 19:35:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (164, '7月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94741.html', '2021-07-02 09:45', 2.20,
        '2021-12-17 19:37:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (165, '7月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94684.html', '2021-07-01 09:25', 2.18,
        '2021-12-17 19:43:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (166, '6月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94626.html', '2021-06-30 09:40', 2.15,
        '2021-12-17 19:46:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (167, '6月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94568.html', '2021-06-29 09:43', 2.15,
        '2021-12-17 19:52:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (168, '6月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94187.html', '2021-06-23 09:50', 2.35,
        '2021-12-17 20:14:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (169, '6月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94129.html', '2021-06-22 09:45', 2.35,
        '2021-12-17 20:18:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (170, '6月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94071.html', '2021-06-21 09:50', 2.35,
        '2021-12-17 20:24:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (171, '6月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-94009.html', '2021-06-20 10:18', 2.35,
        '2021-12-17 20:27:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (172, '6月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93955.html', '2021-06-19 09:30', 2.35,
        '2021-12-17 20:31:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (173, '6月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93897.html', '2021-06-18 09:45', 2.35,
        '2021-12-17 20:33:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (174, '6月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93840.html', '2021-06-17 09:39', 2.35,
        '2021-12-17 20:37:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (175, '6月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93781.html', '2021-06-16 09:45', 2.35,
        '2021-12-17 20:42:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (176, '6月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93722.html', '2021-06-15 09:30', 2.35,
        '2021-12-17 20:43:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (177, '6月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93666.html', '2021-06-14 09:35', 2.35,
        '2021-12-17 20:49:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (178, '6月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93604.html', '2021-06-13 10:00', 2.35,
        '2021-12-17 20:50:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (179, '6月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93550.html', '2021-06-12 09:45', 2.35,
        '2021-12-17 20:54:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (180, '6月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93491.html', '2021-06-11 09:50', 2.35,
        '2021-12-17 20:57:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (181, '6月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93431.html', '2021-06-10 09:40', 2.35,
        '2021-12-17 21:01:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (182, '6月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93374.html', '2021-06-09 09:45', 2.35,
        '2021-12-17 21:06:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (183, '6月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93316.html', '2021-06-08 09:55', 2.35,
        '2021-12-17 21:08:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (184, '6月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93259.html', '2021-06-07 10:05', 2.35,
        '2021-12-17 21:12:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (185, '6月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93199.html', '2021-06-06 10:02', 2.35,
        '2021-12-17 21:20:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (186, '6月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93146.html', '2021-06-05 09:45', 2.35,
        '2021-12-17 21:21:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (187, '6月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93088.html', '2021-06-04 09:40', 2.35,
        '2021-12-17 21:25:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (188, '6月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-93031.html', '2021-06-03 10:00', 2.35,
        '2021-12-17 21:28:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (189, '6月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92973.html', '2021-06-02 10:00', 2.35,
        '2021-12-17 21:30:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (190, '6月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92917.html', '2021-06-01 10:00', 2.35,
        '2021-12-17 21:34:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (191, '5月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92861.html', '2021-05-31 10:00', 2.35,
        '2021-12-17 21:37:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (192, '5月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92788.html', '2021-05-30 09:49', 2.35,
        '2021-12-17 21:41:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (193, '5月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92731.html', '2021-05-29 09:50', 2.35,
        '2021-12-17 21:43:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (194, '5月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92672.html', '2021-05-28 10:00', 2.35,
        '2021-12-17 21:46:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (195, '5月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92612.html', '2021-05-27 10:47', 2.35,
        '2021-12-17 21:51:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (196, '5月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92557.html', '2021-05-26 10:00', 2.35,
        '2021-12-17 21:53:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (197, '5月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92498.html', '2021-05-25 09:50', 2.35,
        '2021-12-17 21:58:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (198, '5月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92439.html', '2021-05-24 10:00', 2.38,
        '2021-12-17 22:01:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (199, '5月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92381.html', '2021-05-23 10:16', 2.40,
        '2021-12-17 22:04:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (200, '5月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92323.html', '2021-05-22 09:55', 2.40,
        '2021-12-17 22:08:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (201, '5月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92262.html', '2021-05-21 09:45', 2.40,
        '2021-12-17 22:12:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (202, '5月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92204.html', '2021-05-20 09:45', 2.40,
        '2021-12-17 22:19:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (203, '5月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92144.html', '2021-05-19 10:04', 2.37,
        '2021-12-17 22:20:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (204, '5月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92088.html', '2021-05-18 09:55', 2.35,
        '2021-12-17 22:21:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (205, '5月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-92030.html', '2021-05-17 10:01', 2.30,
        '2021-12-17 22:23:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (206, '5月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91972.html', '2021-05-16 10:25', 2.25,
        '2021-12-17 22:25:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (207, '5月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91914.html', '2021-05-15 09:45', 2.25,
        '2021-12-17 22:32:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (208, '5月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91855.html', '2021-05-14 09:50', 2.25,
        '2021-12-17 22:35:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (209, '5月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91797.html', '2021-05-13 10:03', 2.25,
        '2021-12-17 22:38:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (210, '5月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91738.html', '2021-05-12 10:00', 2.25,
        '2021-12-17 22:41:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (211, '5月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91679.html', '2021-05-11 09:45', 2.10,
        '2021-12-17 22:43:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (212, '5月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91621.html', '2021-05-10 09:50', 2.10,
        '2021-12-17 22:48:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (213, '5月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91566.html', '2021-05-09 11:40', 2.10,
        '2021-12-17 22:52:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (214, '5月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91504.html', '2021-05-08 15:45', 2.28,
        '2021-12-17 22:55:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (215, '5月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91445.html', '2021-05-07 09:55', 2.28,
        '2021-12-17 22:59:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (216, '5月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91388.html', '2021-05-06 09:50', 2.25,
        '2021-12-17 23:00:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (217, '5月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91331.html', '2021-05-05 09:50', 2.22,
        '2021-12-17 23:04:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (218, '5月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91275.html', '2021-05-04 09:50', 2.20,
        '2021-12-17 23:06:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (219, '5月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91218.html', '2021-05-03 09:50', 2.20,
        '2021-12-17 23:09:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (220, '5月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91156.html', '2021-05-02 09:56', 2.20,
        '2021-12-17 23:13:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (221, '5月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91102.html', '2021-05-01 10:24', 2.15,
        '2021-12-17 23:14:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (222, '4月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-91045.html', '2021-04-30 09:50', 2.10,
        '2021-12-17 23:20:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (223, '4月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90988.html', '2021-04-29 09:50', 2.10,
        '2021-12-17 23:23:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (224, '4月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90932.html', '2021-04-28 09:50', 2.10,
        '2021-12-17 23:26:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (225, '4月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90875.html', '2021-04-27 09:50', 2.10,
        '2021-12-17 23:28:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (226, '4月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90818.html', '2021-04-26 10:00', 2.18,
        '2021-12-17 23:32:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (227, '4月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90760.html', '2021-04-25 10:27', 2.22,
        '2021-12-17 23:36:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (228, '4月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90702.html', '2021-04-24 09:55', 2.23,
        '2021-12-17 23:39:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (229, '4月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90646.html', '2021-04-23 09:45', 2.23,
        '2021-12-17 23:43:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (230, '4月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90587.html', '2021-04-22 09:55', 2.23,
        '2021-12-17 23:50:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (231, '4月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90531.html', '2021-04-21 09:50', 2.23,
        '2021-12-17 23:53:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (232, '4月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90475.html', '2021-04-20 09:55', 2.25,
        '2021-12-17 23:59:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (233, '4月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90419.html', '2021-04-19 09:55', 2.25,
        '2021-12-18 00:03:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (234, '4月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90362.html', '2021-04-18 10:58', 2.25,
        '2021-12-18 00:05:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (235, '4月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90307.html', '2021-04-17 10:07', 2.25,
        '2021-12-18 00:12:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (236, '4月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90248.html', '2021-04-16 10:00', 2.25,
        '2021-12-18 00:15:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (237, '4月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90193.html', '2021-04-15 09:59', 2.23,
        '2021-12-18 00:20:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (238, '4月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90137.html', '2021-04-14 10:00', 2.23,
        '2021-12-18 00:21:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (239, '4月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90082.html', '2021-04-13 10:30', 2.18,
        '2021-12-18 00:23:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (240, '4月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-90025.html', '2021-04-12 10:55', 2.18,
        '2021-12-18 00:27:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (241, '4月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89968.html', '2021-04-11 10:17', 2.25,
        '2021-12-18 00:28:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (242, '4月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89916.html', '2021-04-10 10:10', 2.18,
        '2021-12-18 00:36:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (243, '4月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89859.html', '2021-04-09 10:26', 2.18,
        '2021-12-18 00:38:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (244, '4月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89802.html', '2021-04-08 10:20', 2.18,
        '2021-12-18 00:42:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (245, '4月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89747.html', '2021-04-07 10:00', 2.18,
        '2021-12-18 00:46:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (246, '4月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89692.html', '2021-04-06 09:55', 2.20,
        '2021-12-18 00:48:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (247, '4月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89634.html', '2021-04-05 10:05', 2.22,
        '2021-12-18 00:56:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (248, '4月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89578.html', '2021-04-04 10:18', 2.22,
        '2021-12-18 01:00:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (249, '4月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89521.html', '2021-04-03 10:11', 2.22,
        '2021-12-18 01:03:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (250, '4月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89466.html', '2021-04-02 10:00', 2.22,
        '2021-12-18 01:11:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (251, '4月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89409.html', '2021-04-01 09:45', 2.22,
        '2021-12-18 01:13:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (252, '3月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89352.html', '2021-03-31 10:03', 2.20,
        '2021-12-18 01:19:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (253, '3月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89297.html', '2021-03-30 09:50', 2.20,
        '2021-12-18 01:23:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (254, '3月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89241.html', '2021-03-29 09:55', 2.20,
        '2021-12-18 01:26:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (255, '3月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89185.html', '2021-03-28 09:50', 2.15,
        '2021-12-18 01:29:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (256, '3月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89129.html', '2021-03-27 09:55', 2.15,
        '2021-12-18 01:31:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (257, '3月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89072.html', '2021-03-26 09:45', 2.10,
        '2021-12-18 01:39:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (258, '3月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-89016.html', '2021-03-25 09:40', 2.13,
        '2021-12-18 01:40:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (259, '3月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88960.html', '2021-03-24 09:50', 2.13,
        '2021-12-18 01:42:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (260, '3月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88905.html', '2021-03-23 10:15', 2.13,
        '2021-12-18 01:47:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (261, '3月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88849.html', '2021-03-22 09:50', 2.15,
        '2021-12-18 01:50:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (262, '3月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88792.html', '2021-03-21 10:19', 2.15,
        '2021-12-18 01:53:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (263, '3月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88736.html', '2021-03-20 09:50', 2.15,
        '2021-12-18 01:57:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (264, '3月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88680.html', '2021-03-19 10:00', 2.15,
        '2021-12-18 01:59:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (265, '3月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88624.html', '2021-03-18 09:50', 2.20,
        '2021-12-18 02:01:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (266, '3月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88568.html', '2021-03-17 09:54', 2.20,
        '2021-12-18 02:04:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (267, '3月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88512.html', '2021-03-16 09:50', 2.20,
        '2021-12-18 02:11:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (268, '3月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88455.html', '2021-03-15 09:50', 2.20,
        '2021-12-18 02:15:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (269, '3月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88402.html', '2021-03-14 09:49', 2.15,
        '2021-12-18 02:19:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (270, '3月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88344.html', '2021-03-13 09:56', 2.15,
        '2021-12-18 02:25:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (271, '3月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88287.html', '2021-03-12 09:51', 2.15,
        '2021-12-18 02:29:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (272, '3月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88231.html', '2021-03-11 09:50', 2.15,
        '2021-12-18 02:35:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (273, '3月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88174.html', '2021-03-10 09:50', 2.15,
        '2021-12-18 02:36:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (274, '3月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88119.html', '2021-03-09 10:00', 2.15,
        '2021-12-18 02:39:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (275, '3月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88062.html', '2021-03-08 10:00', 2.18,
        '2021-12-18 02:41:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (276, '3月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-88008.html', '2021-03-07 10:17', 2.18,
        '2021-12-18 02:42:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (277, '3月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87951.html', '2021-03-06 09:50', 2.18,
        '2021-12-18 02:48:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (278, '3月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87870.html', '2021-03-05 10:00', 2.20,
        '2021-12-18 02:49:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (279, '3月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87794.html', '2021-03-04 10:00', 2.18,
        '2021-12-18 02:51:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (280, '3月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87723.html', '2021-03-03 10:00', 2.18,
        '2021-12-18 02:57:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (281, '3月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87649.html', '2021-03-02 10:17', 2.18,
        '2021-12-18 02:59:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (282, '3月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87584.html', '2021-03-01 09:43', 2.20,
        '2021-12-18 03:07:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (283, '2月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87502.html', '2021-02-28 10:52', 2.35,
        '2021-12-18 03:11:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (284, '2月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87435.html', '2021-02-27 10:00', 2.35,
        '2021-12-18 03:14:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (285, '2月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87377.html', '2021-02-26 09:55', 2.35,
        '2021-12-18 03:18:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (286, '2月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87321.html', '2021-02-25 09:45', 2.38,
        '2021-12-18 03:20:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (287, '2月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87265.html', '2021-02-24 09:45', 2.38,
        '2021-12-18 03:23:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (288, '2月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87210.html', '2021-02-23 09:50', 2.42,
        '2021-12-18 03:25:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (289, '2月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87153.html', '2021-02-22 09:55', 2.42,
        '2021-12-18 03:29:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (290, '2月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87097.html', '2021-02-21 10:41', 2.48,
        '2021-12-18 03:35:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (291, '2月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-87042.html', '2021-02-20 09:50', 2.50,
        '2021-12-18 03:36:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (292, '2月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86985.html', '2021-02-19 09:55', 2.53,
        '2021-12-18 03:39:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (293, '2月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86929.html', '2021-02-18 09:59', 2.55,
        '2021-12-18 03:41:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (294, '2月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86872.html', '2021-02-17 10:20', 2.55,
        '2021-12-18 03:42:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (295, '2月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86816.html', '2021-02-16 10:25', 2.55,
        '2021-12-18 03:48:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (296, '2月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86414.html', '2021-02-08 09:30', 2.55,
        '2021-12-18 03:50:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (297, '2月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86357.html', '2021-02-07 09:34', 2.55,
        '2021-12-18 03:56:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (298, '2月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86297.html', '2021-02-06 09:57', 2.55,
        '2021-12-18 03:59:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (299, '2月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86243.html', '2021-02-05 09:50', 2.57,
        '2021-12-18 04:01:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (300, '2月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86186.html', '2021-02-04 09:50', 2.52,
        '2021-12-18 04:08:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (301, '2月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86128.html', '2021-02-03 09:50', 2.47,
        '2021-12-18 04:11:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (302, '2月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-86071.html', '2021-02-02 09:41', 2.44,
        '2021-12-18 04:15:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (303, '2月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85956.html', '2021-02-01 09:51', 2.44,
        '2021-12-18 04:18:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (304, '1月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85879.html', '2021-01-31 10:59', 2.46,
        '2021-12-18 04:19:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (305, '1月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85796.html', '2021-01-30 09:45', 2.46,
        '2021-12-18 04:23:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (306, '1月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85740.html', '2021-01-29 09:50', 2.46,
        '2021-12-18 04:27:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (307, '1月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85684.html', '2021-01-28 09:50', 2.46,
        '2021-12-18 04:32:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (308, '1月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85628.html', '2021-01-27 09:50', 2.46,
        '2021-12-18 04:36:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (309, '1月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85569.html', '2021-01-26 10:15', 2.48,
        '2021-12-18 04:39:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (310, '1月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85516.html', '2021-01-25 09:50', 2.50,
        '2021-12-18 04:46:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (311, '1月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85459.html', '2021-01-24 10:36', 2.46,
        '2021-12-18 04:49:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (312, '1月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85403.html', '2021-01-23 09:50', 2.46,
        '2021-12-18 04:55:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (313, '1月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85347.html', '2021-01-22 09:50', 2.43,
        '2021-12-18 04:59:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (314, '1月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85291.html', '2021-01-21 09:50', 2.38,
        '2021-12-18 05:02:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (315, '1月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85235.html', '2021-01-20 09:50', 2.38,
        '2021-12-18 05:08:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (316, '1月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85179.html', '2021-01-19 09:50', 2.38,
        '2021-12-18 05:10:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (317, '1月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85175.html', '2021-01-18 09:50', 2.28,
        '2021-12-18 05:18:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (318, '1月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-85051.html', '2021-01-17 10:29', 2.28,
        '2021-12-18 05:21:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (319, '1月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84996.html', '2021-01-16 10:00', 2.28,
        '2021-12-18 05:22:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (320, '1月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84942.html', '2021-01-15 09:42', 2.25,
        '2021-12-18 05:26:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (321, '1月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84881.html', '2021-01-14 09:40', 2.25,
        '2021-12-18 05:28:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (322, '1月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84825.html', '2021-01-13 10:00', 2.25,
        '2021-12-18 05:34:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (323, '1月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84767.html', '2021-01-12 09:58', 2.25,
        '2021-12-18 05:36:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (324, '1月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84709.html', '2021-01-11 10:00', 2.25,
        '2021-12-18 05:38:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (325, '1月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84649.html', '2021-01-10 10:17', 2.18,
        '2021-12-18 05:42:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (326, '1月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84590.html', '2021-01-09 09:50', 2.18,
        '2021-12-18 05:46:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (327, '1月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84531.html', '2021-01-08 09:50', 2.22,
        '2021-12-18 05:53:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (328, '1月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84472.html', '2021-01-07 10:10', 2.25,
        '2021-12-18 05:57:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (329, '1月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84403.html', '2021-01-06 09:50', 2.25,
        '2021-12-18 05:58:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (330, '1月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84333.html', '2021-01-05 09:55', 2.27,
        '2021-12-18 06:06:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (331, '1月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84274.html', '2021-01-04 10:07', 2.25,
        '2021-12-18 06:07:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (332, '1月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84214.html', '2021-01-03 11:49', 2.23,
        '2021-12-18 06:11:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (333, '1月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84146.html', '2021-01-02 09:50', 2.23,
        '2021-12-18 06:12:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (334, '1月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84086.html', '2021-01-01 10:00', 2.23,
        '2021-12-18 06:16:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (335, '12月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-84028.html', '2020-12-31 09:50', 2.23,
        '2021-12-18 06:21:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (336, '12月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83968.html', '2020-12-30 09:50', 2.23,
        '2021-12-18 06:23:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (337, '12月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83910.html', '2020-12-29 09:50', 2.25,
        '2021-12-18 06:29:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (338, '12月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83851.html', '2020-12-28 09:50', 2.22,
        '2021-12-18 06:31:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (339, '12月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83788.html', '2020-12-27 10:19', 2.20,
        '2021-12-18 06:32:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (340, '12月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83735.html', '2020-12-26 09:45', 2.20,
        '2021-12-18 06:36:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (341, '12月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83679.html', '2020-12-25 09:55', 2.18,
        '2021-12-18 06:38:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (342, '12月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83622.html', '2020-12-24 09:50', 2.18,
        '2021-12-18 06:41:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (343, '12月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83567.html', '2020-12-23 09:50', 2.18,
        '2021-12-18 06:45:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (344, '12月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83500.html', '2020-12-22 09:45', 2.18,
        '2021-12-18 06:47:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (345, '12月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83433.html', '2020-12-21 10:00', 2.18,
        '2021-12-18 06:50:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (346, '12月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83377.html', '2020-12-20 10:57', 2.15,
        '2021-12-18 06:53:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (347, '12月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83320.html', '2020-12-19 09:50', 2.15,
        '2021-12-18 06:57:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (348, '12月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83264.html', '2020-12-18 09:45', 2.15,
        '2021-12-18 06:59:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (349, '12月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83207.html', '2020-12-17 09:47', 2.15,
        '2021-12-18 07:01:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (350, '12月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83140.html', '2020-12-16 10:16', 2.15,
        '2021-12-18 07:07:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (351, '12月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83086.html', '2020-12-15 09:50', 2.20,
        '2021-12-18 07:09:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (352, '12月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-83031.html', '2020-12-14 09:50', 2.20,
        '2021-12-18 07:14:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (353, '12月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82937.html', '2020-12-13 09:30', 2.20,
        '2021-12-18 07:15:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (354, '12月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82879.html', '2020-12-12 09:45', 2.20,
        '2021-12-18 07:20:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (355, '12月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82823.html', '2020-12-11 10:00', 2.20,
        '2021-12-18 07:23:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (356, '12月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82766.html', '2020-12-10 09:50', 2.17,
        '2021-12-18 07:24:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (357, '12月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82711.html', '2020-12-09 09:50', 2.17,
        '2021-12-18 07:27:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (358, '12月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82644.html', '2020-12-08 10:00', 2.17,
        '2021-12-18 07:30:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (359, '12月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82588.html', '2020-12-07 09:50', 2.17,
        '2021-12-18 07:35:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (360, '12月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82531.html', '2020-12-06 10:47', 2.20,
        '2021-12-18 07:36:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (361, '12月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82476.html', '2020-12-05 09:40', 2.20,
        '2021-12-18 07:40:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (362, '12月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82419.html', '2020-12-04 09:45', 2.20,
        '2021-12-18 07:48:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (363, '12月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82362.html', '2020-12-03 09:43', 2.17,
        '2021-12-18 07:51:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (364, '12月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82307.html', '2020-12-02 09:40', 2.17,
        '2021-12-18 07:56:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (365, '12月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82249.html', '2020-12-01 09:40', 2.17,
        '2021-12-18 07:57:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (366, '11月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82192.html', '2020-11-30 09:45', 2.20,
        '2021-12-18 07:59:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (367, '11月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82135.html', '2020-11-29 09:39', 2.20,
        '2021-12-18 08:04:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (368, '11月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82079.html', '2020-11-28 09:45', 2.20,
        '2021-12-18 08:08:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (369, '11月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-82021.html', '2020-11-27 09:46', 2.20,
        '2021-12-18 08:10:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (370, '11月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81964.html', '2020-11-26 09:45', 2.20,
        '2021-12-18 08:13:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (371, '11月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81906.html', '2020-11-25 09:50', 2.20,
        '2021-12-18 08:17:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (372, '11月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81849.html', '2020-11-24 09:50', 2.23,
        '2021-12-18 08:20:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (373, '11月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81792.html', '2020-11-23 10:00', 2.23,
        '2021-12-18 08:23:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (374, '11月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81737.html', '2020-11-22 11:27', 2.23,
        '2021-12-18 08:27:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (375, '11月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81676.html', '2020-11-21 09:45', 2.23,
        '2021-12-18 08:28:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (376, '11月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81619.html', '2020-11-20 09:09', 2.23,
        '2021-12-18 08:33:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (377, '11月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81563.html', '2020-11-19 09:58', 2.23,
        '2021-12-18 08:37:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (378, '11月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81505.html', '2020-11-18 09:47', 2.23,
        '2021-12-18 08:41:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (379, '11月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81448.html', '2020-11-17 09:55', 2.23,
        '2021-12-18 08:48:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (380, '11月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81389.html', '2020-11-16 10:03', 2.23,
        '2021-12-18 08:52:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (381, '11月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81319.html', '2020-11-15 10:06', 2.20,
        '2021-12-18 08:56:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (382, '11月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81262.html', '2020-11-14 09:50', 2.20,
        '2021-12-18 09:01:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (383, '11月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81198.html', '2020-11-13 09:50', 2.20,
        '2021-12-18 09:03:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (384, '11月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81100.html', '2020-11-12 09:50', 2.20,
        '2021-12-18 09:10:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (385, '11月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-81026.html', '2020-11-11 09:45', 2.20,
        '2021-12-18 09:13:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (386, '11月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80952.html', '2020-11-10 09:50', 2.23,
        '2021-12-18 09:15:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (387, '11月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80878.html', '2020-11-09 09:55', 2.23,
        '2021-12-18 09:21:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (388, '11月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80804.html', '2020-11-08 09:55', 2.23,
        '2021-12-18 09:25:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (389, '11月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80729.html', '2020-11-07 09:52', 2.25,
        '2021-12-18 09:30:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (390, '11月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80673.html', '2020-11-06 09:40', 2.25,
        '2021-12-18 09:32:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (391, '11月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80615.html', '2020-11-05 09:50', 2.25,
        '2021-12-18 09:36:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (392, '11月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80558.html', '2020-11-04 09:50', 2.25,
        '2021-12-18 09:42:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (393, '11月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80501.html', '2020-11-03 09:45', 2.25,
        '2021-12-18 09:45:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (394, '11月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80442.html', '2020-11-02 10:26', 2.25,
        '2021-12-18 09:48:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (395, '11月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80387.html', '2020-11-01 10:06', 2.23,
        '2021-12-18 09:51:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (396, '10月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80330.html', '2020-10-31 09:50', 2.23,
        '2021-12-18 09:53:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (397, '10月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80274.html', '2020-10-30 09:50', 2.23,
        '2021-12-18 09:57:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (398, '10月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80217.html', '2020-10-29 09:55', 2.23,
        '2021-12-18 10:01:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (399, '10月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80160.html', '2020-10-28 09:45', 2.23,
        '2021-12-18 10:05:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (400, '10月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80103.html', '2020-10-27 09:50', 2.23,
        '2021-12-18 10:09:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (401, '10月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-80046.html', '2020-10-26 09:55', 2.23,
        '2021-12-18 10:11:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (402, '10月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79988.html', '2020-10-25 10:25', 2.20,
        '2021-12-18 10:15:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (403, '10月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79932.html', '2020-10-24 10:00', 2.20,
        '2021-12-18 10:18:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (404, '10月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79875.html', '2020-10-23 09:45', 2.10,
        '2021-12-18 10:20:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (405, '10月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79818.html', '2020-10-22 09:45', 2.10,
        '2021-12-18 10:22:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (406, '10月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79761.html', '2020-10-21 09:45', 2.10,
        '2021-12-18 10:24:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (407, '10月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79703.html', '2020-10-20 09:50', 2.00,
        '2021-12-18 10:26:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (408, '10月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79646.html', '2020-10-19 09:50', 2.00,
        '2021-12-18 10:27:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (409, '10月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79587.html', '2020-10-18 10:28', 1.94,
        '2021-12-18 10:35:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (410, '10月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79531.html', '2020-10-17 10:00', 1.94,
        '2021-12-18 10:37:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (411, '10月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79473.html', '2020-10-16 09:50', 1.94,
        '2021-12-18 10:43:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (412, '10月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79416.html', '2020-10-15 10:00', 1.92,
        '2021-12-18 10:45:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (413, '10月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79335.html', '2020-10-14 09:50', 1.90,
        '2021-12-18 10:46:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (414, '10月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79278.html', '2020-10-13 09:50', 1.90,
        '2021-12-18 10:49:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (415, '10月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79221.html', '2020-10-12 09:50', 1.90,
        '2021-12-18 10:53:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (416, '10月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79156.html', '2020-10-11 10:15', 1.90,
        '2021-12-18 11:01:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (417, '10月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79084.html', '2020-10-10 10:00', 1.90,
        '2021-12-18 11:02:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (418, '10月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-79016.html', '2020-10-09 10:00', 1.90,
        '2021-12-18 11:04:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (419, '10月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78947.html', '2020-10-08 10:15', 1.90,
        '2021-12-18 11:06:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (420, '10月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78946.html', '2020-10-07 10:00', 1.90,
        '2021-12-18 11:09:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (421, '10月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78836.html', '2020-10-06 10:00', 1.90,
        '2021-12-18 11:14:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (422, '10月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78767.html', '2020-10-05 11:15', 1.90,
        '2021-12-18 11:16:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (423, '10月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78708.html', '2020-10-04 09:07', 1.95,
        '2021-12-18 11:19:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (424, '10月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78649.html', '2020-10-03 09:07', 1.95,
        '2021-12-18 11:26:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (425, '10月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78595.html', '2020-10-02 09:07', 1.95,
        '2021-12-18 11:30:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (426, '10月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78536.html', '2020-10-01 09:48', 1.95,
        '2021-12-18 11:34:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (427, '9月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78484.html', '2020-09-30 09:50', 1.95,
        '2021-12-18 11:35:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (428, '9月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78427.html', '2020-09-29 09:53', 1.95,
        '2021-12-18 11:37:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (429, '9月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78371.html', '2020-09-28 09:55', 1.95,
        '2021-12-18 11:44:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (430, '9月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78311.html', '2020-09-27 10:23', 2.00,
        '2021-12-18 11:46:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (431, '9月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78259.html', '2020-09-26 09:47', 2.00,
        '2021-12-18 11:49:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (432, '9月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78174.html', '2020-09-25 09:50', 1.95,
        '2021-12-18 11:50:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (433, '9月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78117.html', '2020-09-24 09:50', 1.95,
        '2021-12-18 11:52:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (434, '9月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78060.html', '2020-09-23 10:00', 1.95,
        '2021-12-18 11:57:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (435, '9月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-78002.html', '2020-09-22 09:45', 1.95,
        '2021-12-18 11:58:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (436, '9月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77943.html', '2020-09-21 09:55', 1.95,
        '2021-12-18 12:06:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (437, '9月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77884.html', '2020-09-20 10:28', 1.95,
        '2021-12-18 12:09:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (438, '9月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77827.html', '2020-09-19 09:45', 1.95,
        '2021-12-18 12:11:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (439, '9月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77768.html', '2020-09-18 09:45', 1.95,
        '2021-12-18 12:18:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (440, '9月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77682.html', '2020-09-17 10:00', 1.95,
        '2021-12-18 12:21:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (441, '9月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77597.html', '2020-09-16 10:05', 1.95,
        '2021-12-18 12:27:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (442, '9月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77504.html', '2020-09-15 09:55', 1.95,
        '2021-12-18 12:28:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (443, '9月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77447.html', '2020-09-14 10:05', 1.95,
        '2021-12-18 12:29:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (444, '9月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77387.html', '2020-09-13 11:18', 1.95,
        '2021-12-18 12:35:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (445, '9月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77330.html', '2020-09-12 09:30', 1.95,
        '2021-12-18 12:39:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (446, '9月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77268.html', '2020-09-11 10:00', 1.95,
        '2021-12-18 12:44:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (447, '9月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77209.html', '2020-09-10 09:50', 1.95,
        '2021-12-18 12:46:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (448, '9月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77149.html', '2020-09-09 09:50', 1.95,
        '2021-12-18 12:48:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (449, '9月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77089.html', '2020-09-08 10:00', 1.95,
        '2021-12-18 12:55:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (450, '9月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-77029.html', '2020-09-07 10:11', 1.95,
        '2021-12-18 12:58:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (451, '9月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76969.html', '2020-09-06 10:21', 1.95,
        '2021-12-18 13:01:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (452, '9月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76909.html', '2020-09-05 09:45', 1.95,
        '2021-12-18 13:04:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (453, '9月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76848.html', '2020-09-04 09:55', 1.95,
        '2021-12-18 13:07:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (454, '9月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76788.html', '2020-09-03 09:45', 2.00,
        '2021-12-18 13:12:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (455, '9月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76728.html', '2020-09-02 09:55', 2.00,
        '2021-12-18 13:16:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (456, '9月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76671.html', '2020-09-01 09:47', 2.00,
        '2021-12-18 13:21:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (457, '8月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76606.html', '2020-08-31 09:45', 2.00,
        '2021-12-18 13:23:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (458, '8月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76545.html', '2020-08-30 10:18', 2.00,
        '2021-12-18 13:27:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (459, '8月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76484.html', '2020-08-29 10:00', 1.90,
        '2021-12-18 13:32:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (460, '8月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76422.html', '2020-08-28 09:55', 1.85,
        '2021-12-18 13:36:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (461, '8月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76361.html', '2020-08-27 09:50', 1.85,
        '2021-12-18 13:41:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (462, '8月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76300.html', '2020-08-26 09:45', 1.85,
        '2021-12-18 13:45:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (463, '8月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76239.html', '2020-08-25 09:45', 1.90,
        '2021-12-18 13:46:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (464, '8月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76179.html', '2020-08-24 10:00', 1.90,
        '2021-12-18 13:52:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (465, '8月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76117.html', '2020-08-23 10:47', 1.95,
        '2021-12-18 13:53:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (466, '8月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-76056.html', '2020-08-22 09:55', 1.95,
        '2021-12-18 13:59:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (467, '8月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75994.html', '2020-08-21 09:55', 1.95,
        '2021-12-18 14:03:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (468, '8月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75933.html', '2020-08-20 09:44', 1.95,
        '2021-12-18 14:07:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (469, '8月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75872.html', '2020-08-19 09:55', 1.95,
        '2021-12-18 14:12:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (470, '8月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75813.html', '2020-08-18 09:55', 1.90,
        '2021-12-18 14:16:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (471, '8月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75751.html', '2020-08-17 10:00', 1.90,
        '2021-12-18 14:23:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (472, '8月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75689.html', '2020-08-16 10:06', 1.90,
        '2021-12-18 14:27:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (473, '8月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75625.html', '2020-08-15 09:53', 1.90,
        '2021-12-18 14:30:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (474, '8月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75566.html', '2020-08-14 09:43', 1.90,
        '2021-12-18 14:36:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (475, '8月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75502.html', '2020-08-13 10:03', 1.90,
        '2021-12-18 14:38:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (476, '8月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75444.html', '2020-08-12 09:45', 1.90,
        '2021-12-18 14:42:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (477, '8月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75383.html', '2020-08-11 09:50', 1.90,
        '2021-12-18 14:44:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (478, '8月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75322.html', '2020-08-10 09:43', 1.90,
        '2021-12-18 14:45:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (479, '8月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75261.html', '2020-08-09 10:20', 1.90,
        '2021-12-18 14:49:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (480, '8月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75199.html', '2020-08-08 09:50', 1.90,
        '2021-12-18 14:51:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (481, '8月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75138.html', '2020-08-07 09:40', 1.90,
        '2021-12-18 14:55:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (482, '8月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75077.html', '2020-08-06 09:50', 1.90,
        '2021-12-18 14:58:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (483, '8月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-75016.html', '2020-08-05 10:00', 1.90,
        '2021-12-18 15:02:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (484, '8月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74955.html', '2020-08-04 09:55', 1.80,
        '2021-12-18 15:08:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (485, '8月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74893.html', '2020-08-03 10:10', 1.80,
        '2021-12-18 15:12:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (486, '8月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74831.html', '2020-08-02 11:00', 1.75,
        '2021-12-18 15:17:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (487, '8月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74769.html', '2020-08-01 09:45', 1.70,
        '2021-12-18 15:18:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (488, '7月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74768.html', '2020-07-31 09:50', 1.70,
        '2021-12-18 15:22:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (489, '7月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74644.html', '2020-07-30 09:48', 1.70,
        '2021-12-18 15:27:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (490, '7月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74583.html', '2020-07-29 09:48', 1.65,
        '2021-12-18 15:30:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (491, '7月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74521.html', '2020-07-28 09:50', 1.60,
        '2021-12-18 15:37:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (492, '7月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74459.html', '2020-07-27 10:00', 1.65,
        '2021-12-18 15:40:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (493, '7月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74397.html', '2020-07-26 10:36', 1.65,
        '2021-12-18 15:42:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (494, '7月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74334.html', '2020-07-25 09:55', 1.65,
        '2021-12-18 15:50:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (495, '7月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74272.html', '2020-07-24 09:50', 1.65,
        '2021-12-18 15:52:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (599, '3月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65968.html', '2020-03-11 10:29', 2.75,
        '2021-12-18 23:41:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (722, '6月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29583.html', '2018-06-12 11:04', 0.85,
        '2021-12-20 10:59:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (723, '6月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29526.html', '2018-06-11 11:06', 0.85,
        '2021-12-20 11:02:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (724, '6月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29468.html', '2018-06-10 10:43', 0.85,
        '2021-12-20 11:04:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (725, '6月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29410.html', '2018-06-09 10:22', 0.85,
        '2021-12-20 11:09:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (726, '6月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29348.html', '2018-06-08 11:07', 0.85,
        '2021-12-20 11:10:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (727, '6月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29295.html', '2018-06-07 10:32', 0.85,
        '2021-12-20 11:14:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (728, '6月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29234.html', '2018-06-06 11:27', 0.85,
        '2021-12-20 11:16:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (729, '6月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29175.html', '2018-06-05 11:16', 0.85,
        '2021-12-20 11:18:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (730, '6月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29117.html', '2018-06-04 12:02', 0.85,
        '2021-12-20 11:21:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (731, '6月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29059.html', '2018-06-03 11:16', 0.85,
        '2021-12-20 11:22:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (732, '6月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-29002.html', '2018-06-02 10:46', 0.85,
        '2021-12-20 11:26:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (733, '6月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28943.html', '2018-06-01 11:01', 0.85,
        '2021-12-20 11:30:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (734, '5月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28883.html', '2018-05-31 11:17', 0.85,
        '2021-12-20 11:34:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (735, '5月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28826.html', '2018-05-30 11:37', 0.80,
        '2021-12-20 11:35:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (736, '5月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28769.html', '2018-05-29 11:48', 0.80,
        '2021-12-20 11:41:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (737, '5月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28712.html', '2018-05-28 11:57', 0.80,
        '2021-12-20 11:42:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (738, '5月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28655.html', '2018-05-27 10:25', 0.80,
        '2021-12-20 11:44:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (739, '5月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28595.html', '2018-05-26 11:09', 0.80,
        '2021-12-20 11:49:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (740, '5月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28537.html', '2018-05-25 11:40', 0.80,
        '2021-12-20 11:50:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (741, '5月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28480.html', '2018-05-24 11:30', 0.80,
        '2021-12-20 11:52:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (742, '5月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28424.html', '2018-05-23 11:51', 0.80,
        '2021-12-20 11:59:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (743, '5月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28368.html', '2018-05-22 11:33', 0.80,
        '2021-12-20 12:02:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (744, '5月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28311.html', '2018-05-21 11:21', 0.80,
        '2021-12-20 12:06:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (745, '5月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28255.html', '2018-05-20 10:36', 0.85,
        '2021-12-20 12:07:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (746, '5月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28199.html', '2018-05-19 11:31', 0.90,
        '2021-12-20 12:08:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (747, '5月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28142.html', '2018-05-18 11:04', 0.95,
        '2021-12-20 12:12:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (748, '5月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28087.html', '2018-05-17 10:43', 0.95,
        '2021-12-20 12:15:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (749, '5月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-28031.html', '2018-05-16 11:44', 0.95,
        '2021-12-20 12:17:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (750, '5月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27975.html', '2018-05-15 11:43', 0.95,
        '2021-12-20 12:19:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (751, '5月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27899.html', '2018-05-14 10:56', 0.95,
        '2021-12-20 12:23:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (752, '5月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27863.html', '2018-05-13 09:33', 1.00,
        '2021-12-20 12:27:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (753, '5月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27803.html', '2018-05-12 10:07', 1.05,
        '2021-12-20 12:30:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (754, '5月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27745.html', '2018-05-11 10:42', 1.05,
        '2021-12-20 12:32:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (755, '5月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27689.html', '2018-05-10 10:45', 1.10,
        '2021-12-20 12:34:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (756, '5月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27633.html', '2018-05-09 11:46', 1.10,
        '2021-12-20 12:38:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (757, '5月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27567.html', '2018-05-08 11:35', 1.12,
        '2021-12-20 12:39:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (758, '5月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27510.html', '2018-05-07 11:09', 1.12,
        '2021-12-20 12:41:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (759, '5月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27451.html', '2018-05-06 11:02', 1.10,
        '2021-12-20 12:45:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (760, '5月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27391.html', '2018-05-05 11:28', 1.10,
        '2021-12-20 12:48:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (761, '5月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27325.html', '2018-05-04 10:32', 1.05,
        '2021-12-20 12:51:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (762, '5月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27263.html', '2018-05-03 10:59', 1.10,
        '2021-12-20 12:53:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (763, '5月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27202.html', '2018-05-02 11:27', 1.10,
        '2021-12-20 12:54:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (764, '5月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27140.html', '2018-05-01 11:32', 1.10,
        '2021-12-20 12:57:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (765, '4月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27077.html', '2018-04-30 09:07', 1.10,
        '2021-12-20 13:00:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (766, '4月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-27013.html', '2018-04-29 11:21', 1.10,
        '2021-12-20 13:03:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (767, '4月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26954.html', '2018-04-28 10:27', 1.10,
        '2021-12-20 13:07:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (768, '4月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26890.html', '2018-04-27 10:33', 1.10,
        '2021-12-20 13:09:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (769, '4月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26830.html', '2018-04-26 10:52', 1.10,
        '2021-12-20 13:12:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (770, '4月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26766.html', '2018-04-25 11:12', 1.10,
        '2021-12-20 13:17:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (771, '4月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26703.html', '2018-04-24 10:47', 1.10,
        '2021-12-20 13:19:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (772, '4月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26642.html', '2018-04-23 11:08', 1.10,
        '2021-12-20 13:20:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (773, '4月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26579.html', '2018-04-22 11:03', 1.10,
        '2021-12-20 13:24:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (774, '4月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26519.html', '2018-04-21 11:30', 1.10,
        '2021-12-20 13:26:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (775, '4月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26454.html', '2018-04-20 10:56', 1.10,
        '2021-12-20 13:27:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (776, '4月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26395.html', '2018-04-19 11:56', 1.10,
        '2021-12-20 13:31:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (777, '4月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26328.html', '2018-04-18 11:14', 1.10,
        '2021-12-20 13:35:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (778, '4月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26265.html', '2018-04-17 10:29', 1.10,
        '2021-12-20 13:36:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (779, '4月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26206.html', '2018-04-16 10:53', 1.10,
        '2021-12-20 13:41:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (780, '4月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26091.html', '2018-04-15 10:29', 1.10,
        '2021-12-20 13:42:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (781, '4月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26080.html', '2018-04-14 11:14', 1.10,
        '2021-12-20 13:43:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (782, '4月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-26020.html', '2018-04-13 10:53', 1.10,
        '2021-12-20 13:49:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (783, '4月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25956.html', '2018-04-12 11:22', 1.10,
        '2021-12-20 13:50:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (784, '4月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25894.html', '2018-04-11 11:41', 1.10,
        '2021-12-20 13:51:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (785, '4月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25832.html', '2018-04-10 11:21', 1.10,
        '2021-12-20 13:53:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (786, '4月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25753.html', '2018-04-09 10:40', 1.10,
        '2021-12-20 13:54:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (787, '4月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25707.html', '2018-04-08 09:36', 1.10,
        '2021-12-20 13:57:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (788, '4月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25645.html', '2018-04-07 09:40', 1.10,
        '2021-12-20 13:59:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (789, '4月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25582.html', '2018-04-06 10:37', 1.10,
        '2021-12-20 14:03:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (790, '4月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25518.html', '2018-04-05 10:53', 1.10,
        '2021-12-20 14:08:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (791, '4月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25458.html', '2018-04-04 11:15', 1.10,
        '2021-12-20 14:10:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (792, '4月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25396.html', '2018-04-03 10:21', 1.10,
        '2021-12-20 14:12:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (793, '4月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25334.html', '2018-04-02 10:54', 1.10,
        '2021-12-20 14:21:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (794, '4月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25256.html', '2018-04-01 11:10', 1.10,
        '2021-12-20 14:23:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (795, '3月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25209.html', '2018-03-31 10:26', 1.10,
        '2021-12-20 14:26:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (796, '3月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25146.html', '2018-03-30 11:08', 1.10,
        '2021-12-20 14:31:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (797, '3月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25085.html', '2018-03-29 11:22', 1.10,
        '2021-12-20 14:33:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (798, '3月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-25021.html', '2018-03-28 10:49', 1.10,
        '2021-12-20 14:36:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (799, '3月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24958.html', '2018-03-27 10:06', 1.10,
        '2021-12-20 14:41:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (800, '3月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24897.html', '2018-03-26 10:46', 1.20,
        '2021-12-20 14:44:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (801, '3月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24835.html', '2018-03-25 10:22', 1.20,
        '2021-12-20 14:45:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (802, '3月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24774.html', '2018-03-24 10:53', 1.20,
        '2021-12-20 14:51:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (803, '3月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24707.html', '2018-03-23 11:40', 1.20,
        '2021-12-20 14:52:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (804, '3月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24645.html', '2018-03-22 10:46', 1.20,
        '2021-12-20 14:54:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (805, '3月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24584.html', '2018-03-21 11:06', 1.20,
        '2021-12-20 14:55:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (806, '3月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-24525.html', '2018-03-20 11:19', 1.20,
        '2021-12-20 14:57:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (810, '7月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74024.html', '2020-07-20 10:00', 1.65,
        '2021-12-20 19:39:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (811, '7月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73961.html', '2020-07-19 10:27', 1.70,
        '2021-12-20 19:40:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (812, '7月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73902.html', '2020-07-18 09:50', 1.60,
        '2021-12-20 19:43:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (813, '7月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73840.html', '2020-07-17 09:45', 1.60,
        '2021-12-20 19:48:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (814, '7月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73777.html', '2020-07-16 10:00', 1.65,
        '2021-12-20 19:49:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (815, '7月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73716.html', '2020-07-15 09:50', 1.65,
        '2021-12-20 19:54:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (816, '7月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73658.html', '2020-07-14 09:40', 1.60,
        '2021-12-20 19:56:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (817, '7月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73594.html', '2020-07-13 09:40', 1.35,
        '2021-12-20 20:00:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (818, '7月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73534.html', '2020-07-12 09:16', 1.35,
        '2021-12-20 20:05:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (819, '7月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73474.html', '2020-07-11 09:50', 1.35,
        '2021-12-20 20:09:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (820, '7月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73412.html', '2020-07-10 09:55', 1.40,
        '2021-12-20 20:14:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (821, '7月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73349.html', '2020-07-09 09:45', 1.35,
        '2021-12-20 20:15:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (822, '7月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73289.html', '2020-07-08 09:50', 1.35,
        '2021-12-20 20:17:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (823, '7月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73225.html', '2020-07-07 10:16', 1.35,
        '2021-12-20 20:24:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (824, '7月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73164.html', '2020-07-06 10:02', 1.28,
        '2021-12-20 20:26:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (825, '7月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73105.html', '2020-07-05 10:26', 1.28,
        '2021-12-20 20:30:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (826, '7月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-73042.html', '2020-07-04 10:21', 1.28,
        '2021-12-20 20:32:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (827, '7月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72980.html', '2020-07-03 10:10', 1.25,
        '2021-12-20 20:35:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (828, '7月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72918.html', '2020-07-02 10:12', 0.00,
        '2021-12-20 20:40:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (829, '7月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72857.html', '2020-07-01 10:47', 0.00,
        '2021-12-20 20:41:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (830, '6月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72796.html', '2020-06-30 10:08', 0.00,
        '2021-12-20 20:48:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (831, '6月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72738.html', '2020-06-29 10:20', 0.00,
        '2021-12-20 20:52:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (832, '6月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72679.html', '2020-06-28 10:27', 0.00,
        '2021-12-20 20:55:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (833, '6月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72616.html', '2020-06-27 09:40', 0.00,
        '2021-12-20 20:59:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (834, '6月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72550.html', '2020-06-26 09:52', 0.00,
        '2021-12-20 21:01:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (835, '6月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72490.html', '2020-06-25 10:04', 0.00,
        '2021-12-20 21:07:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (836, '6月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72428.html', '2020-06-24 10:04', 0.00,
        '2021-12-20 21:09:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (837, '6月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72368.html', '2020-06-23 10:20', 0.00,
        '2021-12-20 21:11:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (838, '6月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72307.html', '2020-06-22 10:16', 0.00,
        '2021-12-20 21:13:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (839, '6月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72248.html', '2020-06-21 10:19', 0.00,
        '2021-12-20 21:17:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (840, '6月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72186.html', '2020-06-20 09:47', 0.00,
        '2021-12-20 21:18:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (841, '6月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72124.html', '2020-06-19 10:30', 0.00,
        '2021-12-20 21:22:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (842, '6月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-72060.html', '2020-06-18 09:59', 0.00,
        '2021-12-20 21:26:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (843, '6月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71999.html', '2020-06-17 10:08', 0.00,
        '2021-12-20 21:30:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (844, '6月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71936.html', '2020-06-16 09:38', 0.00,
        '2021-12-20 21:34:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (845, '6月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71880.html', '2020-06-15 10:25', 0.00,
        '2021-12-20 21:37:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (846, '6月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71818.html', '2020-06-14 09:31', 0.00,
        '2021-12-20 21:43:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (847, '6月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71753.html', '2020-06-13 09:57', 0.00,
        '2021-12-20 21:46:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (848, '6月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71696.html', '2020-06-12 10:15', 0.00,
        '2021-12-20 21:51:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (849, '6月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71636.html', '2020-06-11 10:20', 0.00,
        '2021-12-20 21:54:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (850, '6月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71574.html', '2020-06-10 10:20', 0.00,
        '2021-12-20 21:57:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (851, '6月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71511.html', '2020-06-09 10:32', 0.00,
        '2021-12-20 22:00:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (852, '6月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71449.html', '2020-06-08 10:54', 0.00,
        '2021-12-20 22:04:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (853, '6月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71390.html', '2020-06-07 09:37', 0.00,
        '2021-12-20 22:08:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (854, '6月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71331.html', '2020-06-06 10:10', 0.00,
        '2021-12-20 22:12:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (855, '6月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71269.html', '2020-06-05 10:20', 0.00,
        '2021-12-20 22:15:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (856, '6月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71208.html', '2020-06-04 10:21', 0.00,
        '2021-12-20 22:20:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (857, '6月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71148.html', '2020-06-03 10:26', 0.00,
        '2021-12-20 22:22:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (858, '6月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71086.html', '2020-06-02 10:26', 0.00,
        '2021-12-20 22:27:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (859, '6月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-71025.html', '2020-06-01 10:29', 0.90,
        '2021-12-20 22:31:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (860, '5月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70963.html', '2020-05-31 10:35', 0.90,
        '2021-12-20 22:32:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (861, '5月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70905.html', '2020-05-30 10:17', 0.90,
        '2021-12-20 22:38:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (862, '5月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70845.html', '2020-05-29 10:28', 0.90,
        '2021-12-20 22:42:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (863, '5月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70782.html', '2020-05-28 10:31', 1.00,
        '2021-12-20 22:47:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (864, '5月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70721.html', '2020-05-27 10:36', 1.00,
        '2021-12-20 22:49:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (865, '5月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70660.html', '2020-05-26 10:40', 0.90,
        '2021-12-20 22:51:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (866, '5月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70606.html', '2020-05-25 09:25', 0.90,
        '2021-12-20 22:54:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (867, '5月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70543.html', '2020-05-24 11:08', 0.90,
        '2021-12-20 22:56:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (868, '5月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70483.html', '2020-05-23 10:30', 0.90,
        '2021-12-20 23:00:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (869, '5月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70423.html', '2020-05-22 10:26', 0.90,
        '2021-12-20 23:02:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (870, '5月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70364.html', '2020-05-21 10:32', 0.90,
        '2021-12-20 23:06:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (871, '5月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70303.html', '2020-05-20 10:28', 0.85,
        '2021-12-20 23:10:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (872, '5月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70240.html', '2020-05-19 10:47', 0.85,
        '2021-12-20 23:11:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (873, '5月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70183.html', '2020-05-18 10:28', 0.85,
        '2021-12-20 23:17:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (874, '5月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70121.html', '2020-05-17 10:16', 0.90,
        '2021-12-20 23:19:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (875, '5月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-70063.html', '2020-05-16 10:26', 0.90,
        '2021-12-20 23:23:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (876, '5月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69999.html', '2020-05-15 10:28', 0.90,
        '2021-12-20 23:26:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (877, '5月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69938.html', '2020-05-14 10:26', 1.00,
        '2021-12-20 23:30:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (878, '5月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69877.html', '2020-05-13 11:00', 1.10,
        '2021-12-20 23:36:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (879, '5月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69818.html', '2020-05-12 10:21', 1.20,
        '2021-12-20 23:38:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (880, '5月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69754.html', '2020-05-11 10:29', 1.20,
        '2021-12-20 23:42:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (881, '5月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69690.html', '2020-05-10 10:54', 1.30,
        '2021-12-20 23:48:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (882, '5月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69629.html', '2020-05-09 10:26', 1.40,
        '2021-12-20 23:49:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (883, '5月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69561.html', '2020-05-08 10:30', 1.50,
        '2021-12-20 23:54:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (884, '5月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69502.html', '2020-05-07 10:26', 1.50,
        '2021-12-20 23:58:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (885, '5月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69438.html', '2020-05-06 10:29', 1.55,
        '2021-12-20 23:59:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (886, '5月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69375.html', '2020-05-05 10:29', 1.55,
        '2021-12-21 00:04:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (887, '5月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69312.html', '2020-05-04 10:36', 1.65,
        '2021-12-21 00:08:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (888, '5月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69247.html', '2020-05-03 10:52', 1.65,
        '2021-12-21 00:14:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (889, '5月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69187.html', '2020-05-02 10:50', 1.75,
        '2021-12-21 00:17:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (890, '5月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69125.html', '2020-05-01 10:40', 1.90,
        '2021-12-21 00:19:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (891, '4月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-69061.html', '2020-04-30 10:27', 2.00,
        '2021-12-21 00:21:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (892, '4月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68994.html', '2020-04-29 10:29', 2.00,
        '2021-12-21 00:24:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (893, '4月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68929.html', '2020-04-28 10:36', 2.30,
        '2021-12-21 00:29:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (894, '4月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68863.html', '2020-04-27 10:16', 2.40,
        '2021-12-21 00:31:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (895, '4月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68791.html', '2020-04-26 10:30', 2.25,
        '2021-12-21 00:35:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (896, '4月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68730.html', '2020-04-25 10:18', 2.40,
        '2021-12-21 00:38:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (897, '4月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68660.html', '2020-04-24 10:00', 2.40,
        '2021-12-21 00:41:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (898, '4月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68595.html', '2020-04-23 11:05', 2.70,
        '2021-12-21 00:44:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (899, '4月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68532.html', '2020-04-22 10:20', 2.75,
        '2021-12-21 00:45:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (900, '4月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68465.html', '2020-04-21 10:01', 2.75,
        '2021-12-21 00:49:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (901, '4月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68401.html', '2020-04-20 10:12', 2.85,
        '2021-12-21 00:53:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (902, '4月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68333.html', '2020-04-19 10:50', 3.00,
        '2021-12-21 00:57:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (903, '4月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68271.html', '2020-04-18 10:02', 3.10,
        '2021-12-21 01:01:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (904, '4月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68202.html', '2020-04-17 10:23', 3.20,
        '2021-12-21 01:03:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (905, '4月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68141.html', '2020-04-16 10:11', 3.20,
        '2021-12-21 01:08:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (906, '4月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68077.html', '2020-04-15 10:20', 3.20,
        '2021-12-21 01:11:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (907, '4月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-68016.html', '2020-04-14 10:23', 3.20,
        '2021-12-21 01:15:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (908, '4月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67956.html', '2020-04-13 10:11', 3.20,
        '2021-12-21 01:19:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (909, '4月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67894.html', '2020-04-12 11:02', 3.30,
        '2021-12-21 01:23:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (910, '4月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67833.html', '2020-04-11 10:14', 3.40,
        '2021-12-21 01:25:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (911, '4月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67775.html', '2020-04-10 10:23', 3.40,
        '2021-12-21 01:32:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (912, '4月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67712.html', '2020-04-09 10:06', 3.40,
        '2021-12-21 01:34:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (913, '4月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67652.html', '2020-04-08 10:31', 3.40,
        '2021-12-21 01:37:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (914, '4月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67592.html', '2020-04-07 10:07', 3.50,
        '2021-12-21 01:42:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (915, '4月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67532.html', '2020-04-06 10:04', 3.55,
        '2021-12-21 01:46:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (916, '4月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67474.html', '2020-04-05 10:24', 3.50,
        '2021-12-21 01:49:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (917, '4月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67412.html', '2020-04-04 10:27', 3.50,
        '2021-12-21 01:54:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (918, '4月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67351.html', '2020-04-03 10:11', 3.50,
        '2021-12-21 01:58:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (919, '4月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67293.html', '2020-04-02 10:26', 3.50,
        '2021-12-21 02:04:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (920, '4月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67233.html', '2020-04-01 10:38', 3.50,
        '2021-12-21 02:07:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (921, '3月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67173.html', '2020-03-31 10:26', 3.55,
        '2021-12-21 02:09:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (922, '3月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67112.html', '2020-03-30 10:30', 3.55,
        '2021-12-21 02:15:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (923, '3月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-67053.html', '2020-03-29 09:54', 3.55,
        '2021-12-21 02:17:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (924, '3月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66990.html', '2020-03-28 10:53', 3.55,
        '2021-12-21 02:21:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (925, '3月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66934.html', '2020-03-27 10:46', 3.45,
        '2021-12-21 02:26:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (926, '3月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66873.html', '2020-03-26 10:26', 3.35,
        '2021-12-21 02:30:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (927, '3月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66813.html', '2020-03-25 10:26', 3.25,
        '2021-12-21 02:31:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (928, '3月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66753.html', '2020-03-24 10:17', 3.25,
        '2021-12-21 02:34:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (929, '3月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66691.html', '2020-03-23 10:10', 3.10,
        '2021-12-21 02:35:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (930, '3月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66632.html', '2020-03-22 10:12', 3.25,
        '2021-12-21 02:37:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (931, '3月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66572.html', '2020-03-21 10:00', 3.25,
        '2021-12-21 02:43:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (932, '3月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66508.html', '2020-03-20 10:26', 3.00,
        '2021-12-21 02:44:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (933, '3月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66449.html', '2020-03-19 10:42', 2.80,
        '2021-12-21 02:46:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (934, '3月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66393.html', '2020-03-18 10:12', 2.80,
        '2021-12-21 02:51:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (935, '3月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66330.html', '2020-03-17 10:06', 2.80,
        '2021-12-21 02:52:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (936, '3月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66269.html', '2020-03-16 10:22', 2.75,
        '2021-12-21 02:53:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (937, '3月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66211.html', '2020-03-15 10:17', 2.70,
        '2021-12-21 02:58:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (938, '3月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66152.html', '2020-03-14 10:38', 2.70,
        '2021-12-21 03:02:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (939, '3月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66088.html', '2020-03-13 10:27', 2.75,
        '2021-12-21 03:08:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (940, '3月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-66028.html', '2020-03-12 10:14', 2.75,
        '2021-12-21 03:09:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (941, '3月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65902.html', '2020-03-10 10:27', 2.75,
        '2021-12-21 03:19:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (942, '3月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65841.html', '2020-03-09 10:27', 2.75,
        '2021-12-21 03:22:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (943, '3月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65778.html', '2020-03-08 10:15', 2.60,
        '2021-12-21 03:26:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (944, '3月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65718.html', '2020-03-07 10:24', 2.80,
        '2021-12-21 03:31:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (945, '3月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65657.html', '2020-03-06 10:41', 2.80,
        '2021-12-21 03:32:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (946, '3月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65596.html', '2020-03-05 10:26', 2.80,
        '2021-12-21 03:35:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (947, '3月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65536.html', '2020-03-04 10:28', 3.00,
        '2021-12-21 03:39:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (948, '3月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65471.html', '2020-03-03 10:26', 3.00,
        '2021-12-21 03:43:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (949, '3月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65410.html', '2020-03-02 10:43', 3.00,
        '2021-12-21 03:48:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (950, '3月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65349.html', '2020-03-01 11:41', 3.25,
        '2021-12-21 03:51:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (951, '2月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65286.html', '2020-02-29 10:40', 3.25,
        '2021-12-21 03:55:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (952, '2月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65224.html', '2020-02-28 10:55', 3.30,
        '2021-12-21 03:57:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (953, '2月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65162.html', '2020-02-27 10:55', 3.30,
        '2021-12-21 03:59:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (954, '2月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65100.html', '2020-02-26 11:40', 3.30,
        '2021-12-21 04:05:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (955, '2月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-65038.html', '2020-02-25 11:17', 3.30,
        '2021-12-21 04:08:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (956, '2月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64976.html', '2020-02-24 11:13', 3.45,
        '2021-12-21 04:13:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (957, '2月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64913.html', '2020-02-23 10:55', 3.45,
        '2021-12-21 04:16:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (958, '2月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64855.html', '2020-02-22 10:54', 3.45,
        '2021-12-21 04:18:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (959, '2月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64789.html', '2020-02-21 11:12', 3.45,
        '2021-12-21 04:24:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (960, '2月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64727.html', '2020-02-20 10:50', 3.55,
        '2021-12-21 04:28:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (961, '2月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64667.html', '2020-02-19 11:08', 3.55,
        '2021-12-21 04:31:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (962, '2月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64605.html', '2020-02-18 11:42', 3.60,
        '2021-12-21 04:34:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (963, '2月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64545.html', '2020-02-17 10:49', 3.60,
        '2021-12-21 04:38:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (964, '2月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64480.html', '2020-02-16 09:23', 3.65,
        '2021-12-21 04:41:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (965, '2月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64416.html', '2020-02-15 10:45', 3.65,
        '2021-12-21 04:45:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (966, '2月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64354.html', '2020-02-14 10:16', 3.65,
        '2021-12-21 04:52:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (967, '2月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64292.html', '2020-02-13 11:15', 3.65,
        '2021-12-21 04:56:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (968, '2月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64230.html', '2020-02-12 10:51', 3.60,
        '2021-12-21 05:00:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (969, '2月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64171.html', '2020-02-11 11:00', 3.60,
        '2021-12-21 05:06:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (970, '2月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64106.html', '2020-02-10 10:43', 3.60,
        '2021-12-21 05:10:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (971, '2月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-64046.html', '2020-02-09 09:51', 3.60,
        '2021-12-21 05:13:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (972, '2月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63986.html', '2020-02-08 11:26', 3.60,
        '2021-12-21 05:14:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (973, '2月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63923.html', '2020-02-07 11:24', 3.60,
        '2021-12-21 05:16:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (974, '2月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63862.html', '2020-02-06 11:01', 3.60,
        '2021-12-21 05:21:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (975, '2月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63797.html', '2020-02-05 10:42', 3.60,
        '2021-12-21 05:25:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (976, '2月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63737.html', '2020-02-04 10:16', 3.60,
        '2021-12-21 05:33:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (977, '2月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63672.html', '2020-02-03 11:06', 3.60,
        '2021-12-21 05:35:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (978, '2月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63612.html', '2020-02-02 10:33', 3.60,
        '2021-12-21 05:38:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (979, '2月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63550.html', '2020-02-01 10:22', 3.60,
        '2021-12-21 05:45:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (980, '1月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63485.html', '2020-01-31 09:58', 3.60,
        '2021-12-21 05:48:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (981, '1月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63425.html', '2020-01-30 10:41', 3.75,
        '2021-12-21 05:56:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (982, '1月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-63361.html', '2020-01-29 12:22', 3.75,
        '2021-12-21 05:57:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (983, '1月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62923.html', '2020-01-21 10:56', 3.50,
        '2021-12-21 05:58:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (984, '1月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62862.html', '2020-01-20 10:16', 3.50,
        '2021-12-21 06:03:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (985, '1月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62799.html', '2020-01-19 10:53', 3.50,
        '2021-12-21 06:05:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (986, '1月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62738.html', '2020-01-18 09:53', 3.50,
        '2021-12-21 06:12:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (987, '1月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62675.html', '2020-01-17 10:11', 3.60,
        '2021-12-21 06:16:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (988, '1月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62615.html', '2020-01-16 10:46', 3.60,
        '2021-12-21 06:19:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (989, '1月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62551.html', '2020-01-15 10:02', 3.60,
        '2021-12-21 06:23:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (990, '1月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62489.html', '2020-01-14 10:19', 3.60,
        '2021-12-21 06:25:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (991, '1月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62427.html', '2020-01-13 10:33', 3.60,
        '2021-12-21 06:31:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (992, '1月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62257.html', '2020-01-10 10:29', 3.60,
        '2021-12-21 06:33:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (993, '1月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62195.html', '2020-01-09 10:16', 3.60,
        '2021-12-21 06:34:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (994, '1月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62133.html', '2020-01-08 10:00', 3.65,
        '2021-12-21 06:39:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (995, '1月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62071.html', '2020-01-07 10:00', 3.65,
        '2021-12-21 06:40:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (996, '1月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-62009.html', '2020-01-06 10:11', 3.65,
        '2021-12-21 06:45:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (997, '1月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61947.html', '2020-01-05 11:05', 3.65,
        '2021-12-21 06:48:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (998, '1月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61884.html', '2020-01-04 10:00', 3.65,
        '2021-12-21 06:50:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (999, '1月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61821.html', '2020-01-03 11:07', 3.65,
        '2021-12-21 06:53:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1000, '1月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61762.html', '2020-01-02 10:30', 3.65,
        '2021-12-21 06:55:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1001, '1月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61700.html', '2020-01-01 10:00', 3.65,
        '2021-12-21 06:57:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1002, '12月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61638.html', '2019-12-31 10:10', 3.65,
        '2021-12-21 07:03:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1003, '12月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61576.html', '2019-12-30 10:18', 3.65,
        '2021-12-21 07:05:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1004, '12月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61513.html', '2019-12-29 10:34', 3.65,
        '2021-12-21 07:13:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1005, '12月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61451.html', '2019-12-28 10:24', 3.65,
        '2021-12-21 07:17:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1006, '12月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61389.html', '2019-12-27 10:28', 3.65,
        '2021-12-21 07:18:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1007, '12月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61327.html', '2019-12-26 10:00', 3.65,
        '2021-12-21 07:24:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1008, '12月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61262.html', '2019-12-25 10:45', 3.60,
        '2021-12-21 07:25:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1009, '12月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61202.html', '2019-12-24 10:13', 3.60,
        '2021-12-21 07:29:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1010, '12月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61141.html', '2019-12-23 10:29', 3.60,
        '2021-12-21 07:33:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1011, '12月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61077.html', '2019-12-22 11:00', 3.60,
        '2021-12-21 07:34:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1012, '12月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-61017.html', '2019-12-21 10:18', 3.60,
        '2021-12-21 07:37:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1013, '12月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60955.html', '2019-12-20 10:12', 3.60,
        '2021-12-21 07:41:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1014, '12月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60889.html', '2019-12-19 10:32', 3.55,
        '2021-12-21 07:48:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1015, '12月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60827.html', '2019-12-18 10:29', 3.50,
        '2021-12-21 07:50:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1016, '12月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60768.html', '2019-12-17 10:16', 3.50,
        '2021-12-21 07:54:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1017, '12月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60705.html', '2019-12-16 10:26', 3.50,
        '2021-12-21 07:59:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1018, '12月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60640.html', '2019-12-15 10:30', 3.60,
        '2021-12-21 08:01:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1019, '12月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60574.html', '2019-12-14 10:40', 3.60,
        '2021-12-21 08:04:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1020, '12月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60511.html', '2019-12-13 10:37', 3.60,
        '2021-12-21 08:06:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1021, '12月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60448.html', '2019-12-12 10:31', 3.60,
        '2021-12-21 08:08:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1022, '12月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60385.html', '2019-12-11 10:30', 3.60,
        '2021-12-21 08:11:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1023, '12月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60325.html', '2019-12-10 10:16', 3.60,
        '2021-12-21 08:15:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1024, '12月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60259.html', '2019-12-09 10:26', 3.60,
        '2021-12-21 08:21:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1025, '12月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60199.html', '2019-12-08 10:50', 3.65,
        '2021-12-21 08:24:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1026, '12月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60137.html', '2019-12-07 10:38', 3.65,
        '2021-12-21 08:26:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1027, '12月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60070.html', '2019-12-06 10:55', 3.65,
        '2021-12-21 08:33:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1028, '12月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-60010.html', '2019-12-05 10:26', 3.65,
        '2021-12-21 08:37:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1029, '12月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59947.html', '2019-12-04 10:00', 3.65,
        '2021-12-21 08:40:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1030, '12月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59881.html', '2019-12-03 10:36', 3.65,
        '2021-12-21 08:44:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1031, '12月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59821.html', '2019-12-02 10:23', 3.65,
        '2021-12-21 08:46:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1032, '12月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59756.html', '2019-12-01 10:09', 3.70,
        '2021-12-21 08:50:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1033, '11月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59690.html', '2019-11-30 10:14', 3.70,
        '2021-12-21 08:53:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1034, '11月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59626.html', '2019-11-29 10:40', 3.70,
        '2021-12-21 08:55:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1035, '11月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59564.html', '2019-11-28 10:04', 3.70,
        '2021-12-21 08:58:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1036, '11月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59500.html', '2019-11-27 09:59', 3.70,
        '2021-12-21 08:59:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1037, '11月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59433.html', '2019-11-26 10:39', 3.70,
        '2021-12-21 09:02:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1038, '11月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59372.html', '2019-11-25 10:23', 3.70,
        '2021-12-21 09:06:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1039, '11月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59307.html', '2019-11-24 11:40', 3.70,
        '2021-12-21 09:13:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1040, '11月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59245.html', '2019-11-23 10:11', 3.70,
        '2021-12-21 09:17:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1048, '7月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74146.html', '2020-07-22 09:31', 1.65,
        '2021-12-21 10:41:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1049, '7月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74085.html', '2020-07-21 09:55', 1.65,
        '2021-12-21 10:43:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1050, '7月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-74210.html', '2020-07-23 09:50', 1.65,
        '2021-12-21 11:08:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1051, '11月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59180.html', '2019-11-22 09:51', 3.70,
        '2021-12-21 11:11:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1052, '11月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59112.html', '2019-11-21 10:32', 3.70,
        '2021-12-21 11:13:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1053, '11月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-59050.html', '2019-11-20 10:10', 3.70,
        '2021-12-21 11:16:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1054, '11月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58984.html', '2019-11-19 11:12', 3.70,
        '2021-12-21 11:18:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1055, '11月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58919.html', '2019-11-18 10:26', 3.70,
        '2021-12-21 11:22:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1056, '11月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58860.html', '2019-11-17 10:42', 3.65,
        '2021-12-21 11:26:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1057, '11月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58795.html', '2019-11-16 09:50', 3.65,
        '2021-12-21 11:28:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1058, '11月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58728.html', '2019-11-15 10:30', 3.60,
        '2021-12-21 11:33:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1059, '11月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58668.html', '2019-11-14 10:43', 3.55,
        '2021-12-21 11:35:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1060, '11月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58601.html', '2019-11-13 10:13', 3.55,
        '2021-12-21 11:38:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1061, '11月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58537.html', '2019-11-12 09:56', 3.55,
        '2021-12-21 11:45:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1062, '11月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58473.html', '2019-11-11 10:19', 3.55,
        '2021-12-21 11:48:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1063, '11月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58411.html', '2019-11-10 16:34', 3.55,
        '2021-12-21 11:50:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1064, '11月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58346.html', '2019-11-09 10:28', 3.55,
        '2021-12-21 11:56:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1065, '11月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58277.html', '2019-11-08 10:41', 3.55,
        '2021-12-21 11:57:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1066, '11月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58216.html', '2019-11-07 10:23', 3.55,
        '2021-12-21 12:02:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1067, '11月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58153.html', '2019-11-06 10:24', 3.55,
        '2021-12-21 12:03:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1068, '11月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58087.html', '2019-11-05 10:16', 3.55,
        '2021-12-21 12:09:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1069, '11月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-58024.html', '2019-11-04 10:00', 3.50,
        '2021-12-21 12:13:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1070, '11月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57960.html', '2019-11-03 09:49', 3.45,
        '2021-12-21 12:15:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1071, '11月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57900.html', '2019-11-02 10:26', 3.45,
        '2021-12-21 12:19:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1072, '11月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57834.html', '2019-11-01 10:16', 3.45,
        '2021-12-21 12:21:14');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1073, '10月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57770.html', '2019-10-31 10:16', 0.00,
        '2021-12-21 12:25:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1074, '10月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57708.html', '2019-10-30 10:00', 0.00,
        '2021-12-21 12:29:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1075, '10月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57642.html', '2019-10-29 10:19', 0.00,
        '2021-12-21 12:31:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1076, '10月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57582.html', '2019-10-28 10:19', 0.00,
        '2021-12-21 12:35:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1077, '10月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57518.html', '2019-10-27 11:02', 0.00,
        '2021-12-21 12:36:15');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1078, '10月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57453.html', '2019-10-26 10:19', 0.00,
        '2021-12-21 12:41:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1079, '10月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57393.html', '2019-10-25 10:00', 0.00,
        '2021-12-21 12:42:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1080, '10月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57329.html', '2019-10-24 09:56', 0.00,
        '2021-12-21 12:46:16');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1081, '10月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57262.html', '2019-10-23 10:57', 0.00,
        '2021-12-21 12:51:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1082, '10月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57199.html', '2019-10-22 10:20', 0.00,
        '2021-12-21 12:53:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1083, '10月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57134.html', '2019-10-21 10:26', 0.00,
        '2021-12-21 13:00:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1084, '10月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57070.html', '2019-10-20 10:41', 0.00,
        '2021-12-21 13:02:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1085, '10月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-57008.html', '2019-10-19 10:00', 0.00,
        '2021-12-21 13:06:17');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1086, '10月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56944.html', '2019-10-18 10:18', 0.00,
        '2021-12-21 13:11:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1087, '10月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56878.html', '2019-10-17 10:01', 0.00,
        '2021-12-21 13:12:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1088, '10月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56812.html', '2019-10-16 10:47', 0.00,
        '2021-12-21 13:17:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1089, '10月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56751.html', '2019-10-15 10:16', 0.00,
        '2021-12-21 13:19:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1090, '10月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56675.html', '2019-10-14 10:30', 0.00,
        '2021-12-21 13:20:18');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1091, '10月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56606.html', '2019-10-13 10:37', 0.00,
        '2021-12-21 13:27:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1092, '10月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56532.html', '2019-10-12 10:11', 0.00,
        '2021-12-21 13:30:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1093, '10月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56463.html', '2019-10-11 10:23', 0.00,
        '2021-12-21 13:35:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1094, '10月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56388.html', '2019-10-10 11:10', 0.00,
        '2021-12-21 13:38:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1095, '10月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56315.html', '2019-10-09 10:45', 0.00,
        '2021-12-21 13:40:19');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1096, '10月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56245.html', '2019-10-08 10:22', 0.00,
        '2021-12-21 13:44:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1097, '10月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56173.html', '2019-10-07 10:19', 0.00,
        '2021-12-21 13:48:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1098, '10月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56099.html', '2019-10-06 11:10', 0.00,
        '2021-12-21 13:56:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1099, '10月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-56027.html', '2019-10-05 11:06', 0.00,
        '2021-12-21 13:58:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1100, '10月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55955.html', '2019-10-04 11:10', 0.00,
        '2021-12-21 14:00:20');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1101, '10月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55886.html', '2019-10-03 11:00', 0.00,
        '2021-12-21 14:05:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1102, '10月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55817.html', '2019-10-02 10:55', 0.00,
        '2021-12-21 14:07:21');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1103, '10月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55749.html', '2019-10-01 11:20', 0.00,
        '2021-12-21 14:10:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1104, '9月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55689.html', '2019-09-30 11:23', 0.00,
        '2021-12-21 14:12:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1105, '9月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55623.html', '2019-09-29 09:55', 0.00,
        '2021-12-21 14:16:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1106, '9月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55559.html', '2019-09-28 10:44', 0.00,
        '2021-12-21 14:19:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1107, '9月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55495.html', '2019-09-27 10:28', 0.00,
        '2021-12-21 14:23:22');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1108, '9月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55427.html', '2019-09-26 10:37', 0.00,
        '2021-12-21 14:26:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1109, '9月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55364.html', '2019-09-25 10:13', 0.00,
        '2021-12-21 14:29:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1110, '9月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55299.html', '2019-09-24 10:50', 0.00,
        '2021-12-21 14:33:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1111, '9月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55239.html', '2019-09-23 10:38', 0.00,
        '2021-12-21 14:38:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1112, '9月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55197.html', '2019-09-22 08:45', 0.00,
        '2021-12-21 14:42:23');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1113, '9月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55110.html', '2019-09-21 10:17', 0.00,
        '2021-12-21 14:45:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1114, '9月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-55047.html', '2019-09-20 09:56', 0.00,
        '2021-12-21 14:47:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1115, '9月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54977.html', '2019-09-19 10:07', 0.00,
        '2021-12-21 14:48:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1116, '9月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54917.html', '2019-09-18 10:46', 0.00,
        '2021-12-21 14:55:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1117, '9月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54851.html', '2019-09-17 10:02', 0.00,
        '2021-12-21 14:57:24');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1118, '9月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54787.html', '2019-09-16 10:42', 0.00,
        '2021-12-21 14:59:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1119, '9月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54722.html', '2019-09-15 10:43', 0.00,
        '2021-12-21 15:03:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1120, '9月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54663.html', '2019-09-14 10:22', 0.00,
        '2021-12-21 15:07:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1121, '9月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54594.html', '2019-09-13 10:08', 0.00,
        '2021-12-21 15:12:25');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1122, '9月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54529.html', '2019-09-12 10:21', 0.00,
        '2021-12-21 15:14:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1123, '9月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54465.html', '2019-09-11 10:20', 0.00,
        '2021-12-21 15:22:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1124, '9月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54403.html', '2019-09-10 10:26', 0.00,
        '2021-12-21 15:23:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1125, '9月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54323.html', '2019-09-09 09:07', 0.00,
        '2021-12-21 15:25:26');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1126, '9月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54259.html', '2019-09-08 09:07', 0.00,
        '2021-12-21 15:28:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1127, '9月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54208.html', '2019-09-07 10:09', 0.00,
        '2021-12-21 15:32:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1128, '9月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54146.html', '2019-09-06 10:30', 0.00,
        '2021-12-21 15:36:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1129, '9月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54079.html', '2019-09-05 10:07', 0.00,
        '2021-12-21 15:40:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1130, '9月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-54015.html', '2019-09-04 10:08', 0.00,
        '2021-12-21 15:41:27');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1131, '9月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53956.html', '2019-09-03 10:16', 0.00,
        '2021-12-21 15:44:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1132, '9月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53889.html', '2019-09-02 10:48', 0.00,
        '2021-12-21 15:48:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1133, '9月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53827.html', '2019-09-01 10:24', 0.00,
        '2021-12-21 15:55:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1134, '8月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53731.html', '2019-08-31 08:35', 0.00,
        '2021-12-21 15:58:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1135, '8月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53700.html', '2019-08-30 11:46', 0.00,
        '2021-12-21 16:02:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1136, '8月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53699.html', '2019-08-30 11:23', 0.00,
        '2021-12-21 16:04:28');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1137, '8月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53632.html', '2019-08-29 10:31', 0.00,
        '2021-12-21 16:10:29');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1138, '8月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53567.html', '2019-08-28 10:36', 0.00,
        '2021-12-21 16:12:30');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1139, '8月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53503.html', '2019-08-27 10:36', 0.00,
        '2021-12-21 16:18:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1140, '8月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53441.html', '2019-08-26 10:22', 0.00,
        '2021-12-21 16:22:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1141, '8月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53442.html', '2019-08-26 10:00', 0.00,
        '2021-12-21 16:26:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1142, '8月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53375.html', '2019-08-25 11:18', 0.00,
        '2021-12-21 16:30:31');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1143, '8月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53309.html', '2019-08-24 10:11', 0.00,
        '2021-12-21 16:35:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1144, '8月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53244.html', '2019-08-23 10:01', 0.00,
        '2021-12-21 16:37:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1145, '8月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53184.html', '2019-08-22 10:00', 0.00,
        '2021-12-21 16:40:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1146, '8月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53115.html', '2019-08-21 10:04', 0.00,
        '2021-12-21 16:41:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1147, '8月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-53056.html', '2019-08-20 09:56', 0.00,
        '2021-12-21 16:45:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1148, '8月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52992.html', '2019-08-19 10:16', 0.00,
        '2021-12-21 16:52:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1149, '8月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52927.html', '2019-08-18 10:48', 0.00,
        '2021-12-21 16:55:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1150, '8月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52864.html', '2019-08-17 10:12', 0.00,
        '2021-12-21 16:58:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1151, '8月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52800.html', '2019-08-16 10:31', 0.00,
        '2021-12-21 17:01:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1152, '8月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52733.html', '2019-08-15 10:20', 0.00,
        '2021-12-21 17:03:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1153, '8月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52669.html', '2019-08-14 09:51', 0.00,
        '2021-12-21 17:08:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1154, '8月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52602.html', '2019-08-13 09:40', 0.00,
        '2021-12-21 17:09:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1155, '8月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52539.html', '2019-08-12 10:33', 0.00,
        '2021-12-21 17:17:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1156, '8月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52478.html', '2019-08-11 09:45', 0.00,
        '2021-12-21 17:20:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1157, '8月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52413.html', '2019-08-10 10:13', 0.00,
        '2021-12-21 17:21:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1158, '8月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52350.html', '2019-08-09 10:08', 0.00,
        '2021-12-21 17:25:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1159, '8月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52286.html', '2019-08-08 10:29', 0.00,
        '2021-12-21 17:29:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1160, '8月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52221.html', '2019-08-07 10:17', 0.00,
        '2021-12-21 17:36:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1161, '8月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52158.html', '2019-08-06 10:45', 0.00,
        '2021-12-21 17:39:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1162, '8月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52095.html', '2019-08-05 09:46', 0.00,
        '2021-12-21 17:43:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1163, '8月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-52031.html', '2019-08-04 11:03', 0.00,
        '2021-12-21 17:49:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1164, '8月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51968.html', '2019-08-03 10:11', 0.00,
        '2021-12-21 17:51:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1165, '8月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51900.html', '2019-08-02 10:28', 0.00,
        '2021-12-21 17:56:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1166, '8月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51831.html', '2019-08-01 09:58', 0.00,
        '2021-12-21 17:58:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1167, '7月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51769.html', '2019-07-31 11:22', 0.00,
        '2021-12-21 18:00:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1168, '7月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51706.html', '2019-07-30 11:21', 0.00,
        '2021-12-21 18:04:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1169, '7月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51639.html', '2019-07-29 10:53', 0.00,
        '2021-12-21 18:05:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1170, '7月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51635.html', '2019-07-29 09:38', 0.00,
        '2021-12-21 18:07:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1171, '7月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51573.html', '2019-07-28 10:03', 0.00,
        '2021-12-21 18:11:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1172, '7月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51508.html', '2019-07-27 10:11', 0.00,
        '2021-12-21 18:14:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1173, '7月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51444.html', '2019-07-26 10:37', 0.00,
        '2021-12-21 18:17:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1174, '7月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51378.html', '2019-07-25 10:15', 0.00,
        '2021-12-21 18:20:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1175, '7月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51311.html', '2019-07-24 10:10', 0.00,
        '2021-12-21 18:24:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1176, '7月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51246.html', '2019-07-23 10:06', 0.00,
        '2021-12-21 18:30:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1177, '7月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51179.html', '2019-07-22 10:17', 0.00,
        '2021-12-21 18:31:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1178, '7月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51116.html', '2019-07-21 10:55', 0.00,
        '2021-12-21 18:36:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1179, '7月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-51053.html', '2019-07-20 10:16', 0.00,
        '2021-12-21 18:37:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1180, '7月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50982.html', '2019-07-19 10:07', 0.00,
        '2021-12-21 18:38:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1181, '7月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50922.html', '2019-07-18 10:18', 0.00,
        '2021-12-21 18:40:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1182, '7月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50856.html', '2019-07-17 10:11', 0.00,
        '2021-12-21 18:41:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1183, '7月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50789.html', '2019-07-16 09:28', 0.00,
        '2021-12-21 18:46:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1184, '7月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50721.html', '2019-07-15 09:21', 0.00,
        '2021-12-21 18:48:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1185, '7月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50662.html', '2019-07-14 10:07', 0.00,
        '2021-12-21 18:51:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1186, '7月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50595.html', '2019-07-13 10:14', 0.00,
        '2021-12-21 18:59:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1187, '7月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50531.html', '2019-07-12 10:12', 0.00,
        '2021-12-21 19:00:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1188, '7月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50417.html', '2019-07-11 08:04', 0.00,
        '2021-12-21 19:05:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1189, '7月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50411.html', '2019-07-10 10:12', 0.00,
        '2021-12-21 19:07:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1190, '7月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50348.html', '2019-07-09 10:01', 0.00,
        '2021-12-21 19:09:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1191, '7月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50252.html', '2019-07-08 08:48', 0.00,
        '2021-12-21 19:13:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1192, '7月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50224.html', '2019-07-07 09:47', 0.00,
        '2021-12-21 19:16:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1193, '7月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50162.html', '2019-07-06 11:03', 0.00,
        '2021-12-21 19:18:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1194, '7月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50100.html', '2019-07-05 09:51', 0.00,
        '2021-12-21 19:22:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1195, '7月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-50020.html', '2019-07-04 08:55', 0.00,
        '2021-12-21 19:24:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1196, '7月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49976.html', '2019-07-03 10:39', 0.00,
        '2021-12-21 19:27:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1197, '7月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49914.html', '2019-07-02 11:07', 0.00,
        '2021-12-21 19:30:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1198, '7月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49820.html', '2019-07-01 09:42', 0.00,
        '2021-12-21 19:33:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1199, '6月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49791.html', '2019-06-30 09:24', 0.00,
        '2021-12-21 19:36:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1200, '6月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49726.html', '2019-06-29 09:51', 0.00,
        '2021-12-21 19:40:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1201, '6月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49671.html', '2019-06-28 10:29', 0.00,
        '2021-12-21 19:46:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1202, '6月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49604.html', '2019-06-27 10:17', 0.00,
        '2021-12-21 19:50:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1203, '6月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49547.html', '2019-06-26 09:54', 0.00,
        '2021-12-21 19:58:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1204, '6月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49488.html', '2019-06-25 10:22', 0.00,
        '2021-12-21 20:00:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1205, '6月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49408.html', '2019-06-24 08:51', 0.00,
        '2021-12-21 20:03:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1206, '6月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49364.html', '2019-06-23 11:08', 0.00,
        '2021-12-21 20:09:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1207, '6月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49305.html', '2019-06-22 09:59', 0.00,
        '2021-12-21 20:11:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1208, '6月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49237.html', '2019-06-21 09:48', 0.00,
        '2021-12-21 20:17:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1209, '6月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49181.html', '2019-06-20 10:22', 0.00,
        '2021-12-21 20:20:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1210, '6月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49119.html', '2019-06-19 10:08', 0.00,
        '2021-12-21 20:24:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1211, '6月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-49060.html', '2019-06-18 10:31', 0.00,
        '2021-12-21 20:29:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1212, '6月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48992.html', '2019-06-17 10:25', 0.00,
        '2021-12-21 20:31:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1213, '6月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48932.html', '2019-06-16 10:31', 0.00,
        '2021-12-21 20:35:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1214, '6月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48872.html', '2019-06-15 10:22', 0.00,
        '2021-12-21 20:37:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1215, '6月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48791.html', '2019-06-14 10:35', 0.00,
        '2021-12-21 20:41:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1216, '6月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48743.html', '2019-06-13 10:25', 0.00,
        '2021-12-21 20:47:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1217, '6月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48684.html', '2019-06-12 10:57', 0.00,
        '2021-12-21 20:48:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1218, '6月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48625.html', '2019-06-11 10:45', 0.00,
        '2021-12-21 20:52:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1219, '6月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48544.html', '2019-06-10 09:07', 0.00,
        '2021-12-21 20:56:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1220, '6月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48499.html', '2019-06-09 10:50', 0.00,
        '2021-12-21 20:57:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1221, '6月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48438.html', '2019-06-08 10:39', 0.00,
        '2021-12-21 20:59:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1222, '6月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48380.html', '2019-06-07 10:29', 0.00,
        '2021-12-21 21:03:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1223, '6月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48320.html', '2019-06-06 10:31', 0.00,
        '2021-12-21 21:10:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1224, '6月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48259.html', '2019-06-05 10:17', 0.00,
        '2021-12-21 21:14:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1225, '6月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48198.html', '2019-06-04 10:23', 0.00,
        '2021-12-21 21:15:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1226, '6月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48134.html', '2019-06-03 11:32', 0.00,
        '2021-12-21 21:19:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1227, '6月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48076.html', '2019-06-02 09:54', 0.00,
        '2021-12-21 21:21:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1228, '6月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-48018.html', '2019-06-01 11:19', 0.00,
        '2021-12-21 21:25:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1229, '5月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47957.html', '2019-05-31 10:14', 0.00,
        '2021-12-21 21:29:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1230, '5月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47897.html', '2019-05-30 10:46', 0.00,
        '2021-12-21 21:32:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1231, '5月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47818.html', '2019-05-29 10:49', 0.00,
        '2021-12-21 21:36:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1232, '5月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47777.html', '2019-05-28 10:49', 0.00,
        '2021-12-21 21:43:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1233, '5月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47717.html', '2019-05-27 11:15', 0.00,
        '2021-12-21 21:45:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1234, '5月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47716.html', '2019-05-27 10:18', 0.00,
        '2021-12-21 21:46:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1235, '5月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47650.html', '2019-05-26 10:29', 0.00,
        '2021-12-21 21:51:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1236, '5月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47596.html', '2019-05-25 10:00', 0.00,
        '2021-12-21 21:55:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1237, '5月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47535.html', '2019-05-24 10:33', 0.00,
        '2021-12-21 21:58:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1238, '5月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47474.html', '2019-05-23 10:39', 0.00,
        '2021-12-21 22:04:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1239, '5月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47413.html', '2019-05-22 10:39', 0.00,
        '2021-12-21 22:06:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1240, '5月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47351.html', '2019-05-21 10:32', 0.00,
        '2021-12-21 22:09:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1241, '5月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47291.html', '2019-05-20 10:58', 0.00,
        '2021-12-21 22:17:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1242, '5月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47228.html', '2019-05-19 10:51', 0.00,
        '2021-12-21 22:19:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1243, '5月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47169.html', '2019-05-18 11:08', 0.00,
        '2021-12-21 22:21:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1244, '5月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47106.html', '2019-05-17 10:33', 0.00,
        '2021-12-21 22:26:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1245, '5月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-47045.html', '2019-05-16 10:46', 0.00,
        '2021-12-21 22:28:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1246, '5月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46983.html', '2019-05-15 10:38', 0.00,
        '2021-12-21 22:32:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1247, '5月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46924.html', '2019-05-14 10:32', 0.00,
        '2021-12-21 22:37:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1248, '5月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46852.html', '2019-05-13 10:41', 0.00,
        '2021-12-21 22:40:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1249, '5月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46790.html', '2019-05-12 10:12', 0.00,
        '2021-12-21 22:43:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1250, '5月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46719.html', '2019-05-11 10:49', 0.00,
        '2021-12-21 22:48:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1251, '5月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46658.html', '2019-05-10 10:40', 0.00,
        '2021-12-21 22:50:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1252, '5月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46588.html', '2019-05-09 10:48', 0.00,
        '2021-12-21 22:55:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1253, '5月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46529.html', '2019-05-08 10:45', 0.00,
        '2021-12-21 22:59:57');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1254, '5月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46470.html', '2019-05-07 10:37', 0.00,
        '2021-12-21 23:01:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1255, '5月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46467.html', '2019-05-06 10:44', 0.00,
        '2021-12-21 23:05:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1256, '5月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46349.html', '2019-05-05 10:51', 0.00,
        '2021-12-21 23:07:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1257, '5月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46290.html', '2019-05-04 11:13', 0.00,
        '2021-12-21 23:08:58');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1258, '5月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46233.html', '2019-05-03 11:29', 0.00,
        '2021-12-21 23:13:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1259, '5月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46172.html', '2019-05-02 11:11', 0.00,
        '2021-12-21 23:16:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1260, '5月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46113.html', '2019-05-01 11:00', 0.00,
        '2021-12-21 23:17:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1261, '4月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-46054.html', '2019-04-30 10:44', 0.00,
        '2021-12-21 23:22:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1262, '4月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45996.html', '2019-04-29 10:53', 0.00,
        '2021-12-21 23:23:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1263, '4月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45938.html', '2019-04-28 11:00', 0.00,
        '2021-12-21 23:26:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1264, '4月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45881.html', '2019-04-27 10:38', 0.00,
        '2021-12-21 23:32:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1265, '4月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45823.html', '2019-04-26 10:35', 0.00,
        '2021-12-21 23:36:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1266, '4月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45765.html', '2019-04-25 10:49', 0.00,
        '2021-12-21 23:37:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1267, '4月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45708.html', '2019-04-24 10:33', 0.00,
        '2021-12-21 23:45:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1268, '4月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45651.html', '2019-04-23 10:45', 0.00,
        '2021-12-21 23:46:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1269, '4月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45591.html', '2019-04-22 11:22', 0.00,
        '2021-12-21 23:47:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1270, '4月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45535.html', '2019-04-21 09:59', 0.00,
        '2021-12-21 23:52:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1271, '4月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45479.html', '2019-04-20 11:02', 0.00,
        '2021-12-21 23:55:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1272, '4月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45419.html', '2019-04-19 11:01', 0.00,
        '2021-12-22 00:01:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1273, '4月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45361.html', '2019-04-18 11:03', 0.00,
        '2021-12-22 00:02:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1274, '4月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45307.html', '2019-04-17 10:23', 0.00,
        '2021-12-22 00:05:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1275, '4月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45252.html', '2019-04-16 10:23', 0.00,
        '2021-12-22 00:10:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1276, '4月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45193.html', '2019-04-15 11:17', 0.00,
        '2021-12-22 00:13:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1277, '4月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45139.html', '2019-04-14 10:22', 0.00,
        '2021-12-22 00:15:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1278, '4月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45084.html', '2019-04-13 10:49', 0.00,
        '2021-12-22 00:22:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1279, '4月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-45028.html', '2019-04-12 11:48', 0.00,
        '2021-12-22 00:26:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1280, '4月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44973.html', '2019-04-11 10:46', 0.00,
        '2021-12-22 00:30:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1281, '4月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44918.html', '2019-04-10 11:10', 0.00,
        '2021-12-22 00:38:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1282, '4月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44862.html', '2019-04-09 10:39', 0.00,
        '2021-12-22 00:39:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1283, '4月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44808.html', '2019-04-08 10:42', 0.00,
        '2021-12-22 00:43:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1284, '4月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44756.html', '2019-04-07 11:03', 0.00,
        '2021-12-22 00:50:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1285, '4月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44704.html', '2019-04-06 10:56', 0.00,
        '2021-12-22 00:51:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1286, '4月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44652.html', '2019-04-05 10:50', 0.00,
        '2021-12-22 00:53:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1287, '4月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44598.html', '2019-04-04 10:13', 0.00,
        '2021-12-22 00:58:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1288, '4月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44547.html', '2019-04-03 10:53', 0.00,
        '2021-12-22 01:01:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1289, '4月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44494.html', '2019-04-02 11:00', 0.00,
        '2021-12-22 01:04:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1290, '4月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44441.html', '2019-04-01 11:16', 0.00,
        '2021-12-22 01:09:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1291, '3月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44386.html', '2019-03-31 11:16', 0.00,
        '2021-12-22 01:11:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1292, '3月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44333.html', '2019-03-30 09:31', 0.00,
        '2021-12-22 01:16:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1293, '3月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44281.html', '2019-03-29 10:21', 0.00,
        '2021-12-22 01:20:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1294, '3月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44228.html', '2019-03-28 11:31', 0.00,
        '2021-12-22 01:23:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1295, '3月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44175.html', '2019-03-27 10:38', 0.00,
        '2021-12-22 01:28:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1296, '3月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44122.html', '2019-03-26 10:58', 0.00,
        '2021-12-22 01:29:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1297, '3月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44069.html', '2019-03-25 11:01', 0.00,
        '2021-12-22 01:32:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1298, '3月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-44011.html', '2019-03-24 11:24', 0.00,
        '2021-12-22 01:37:06');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1299, '3月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43963.html', '2019-03-23 11:03', 0.00,
        '2021-12-22 01:38:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1300, '3月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43909.html', '2019-03-22 10:46', 0.00,
        '2021-12-22 01:40:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1301, '3月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43854.html', '2019-03-21 11:19', 0.00,
        '2021-12-22 01:47:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1302, '3月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43802.html', '2019-03-20 11:16', 0.00,
        '2021-12-22 01:49:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1303, '3月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43803.html', '2019-03-19 10:36', 0.00,
        '2021-12-22 01:52:07');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1304, '3月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43697.html', '2019-03-18 11:00', 0.00,
        '2021-12-22 02:00:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1305, '3月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43640.html', '2019-03-17 10:05', 0.00,
        '2021-12-22 02:04:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1306, '3月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43589.html', '2019-03-16 10:42', 0.00,
        '2021-12-22 02:08:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1307, '3月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43535.html', '2019-03-15 10:58', 0.00,
        '2021-12-22 02:15:08');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1308, '3月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43480.html', '2019-03-14 10:51', 0.00,
        '2021-12-22 02:17:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1309, '3月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43427.html', '2019-03-13 11:57', 0.00,
        '2021-12-22 02:20:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1310, '3月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43376.html', '2019-03-12 11:17', 0.00,
        '2021-12-22 02:28:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1311, '3月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43323.html', '2019-03-11 10:46', 0.00,
        '2021-12-22 02:29:09');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1312, '3月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43268.html', '2019-03-10 11:19', 0.00,
        '2021-12-22 02:35:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1313, '3月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43217.html', '2019-03-09 11:20', 0.00,
        '2021-12-22 02:36:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1314, '3月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43161.html', '2019-03-08 11:22', 0.00,
        '2021-12-22 02:38:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1315, '3月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43110.html', '2019-03-07 11:37', 0.00,
        '2021-12-22 02:41:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1316, '3月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43054.html', '2019-03-06 11:26', 0.00,
        '2021-12-22 02:43:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1317, '3月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-43001.html', '2019-03-05 11:04', 0.00,
        '2021-12-22 02:44:10');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1318, '3月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42949.html', '2019-03-04 11:48', 0.00,
        '2021-12-22 02:51:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1319, '3月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42898.html', '2019-03-03 11:10', 0.00,
        '2021-12-22 02:52:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1320, '3月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42842.html', '2019-03-02 11:21', 0.00,
        '2021-12-22 02:53:11');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1321, '3月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42791.html', '2019-03-01 11:28', 0.00,
        '2021-12-22 02:59:12');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1322, '2月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42738.html', '2019-02-28 10:47', 0.00,
        '2021-12-22 03:03:13');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1323, '2月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42682.html', '2019-02-27 10:41', 0.00,
        '2021-12-22 03:06:32');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1324, '2月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42632.html', '2019-02-26 11:16', 0.00,
        '2021-12-22 03:14:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1325, '2月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42578.html', '2019-02-25 11:01', 0.00,
        '2021-12-22 03:16:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1326, '2月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42526.html', '2019-02-24 10:40', 0.00,
        '2021-12-22 03:18:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1327, '2月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42470.html', '2019-02-23 10:37', 0.00,
        '2021-12-22 03:23:33');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1328, '2月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42419.html', '2019-02-22 11:07', 0.00,
        '2021-12-22 03:27:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1329, '2月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42364.html', '2019-02-21 10:34', 0.00,
        '2021-12-22 03:30:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1330, '2月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42316.html', '2019-02-20 10:56', 0.00,
        '2021-12-22 03:38:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1331, '2月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42264.html', '2019-02-19 10:44', 0.00,
        '2021-12-22 03:40:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1332, '2月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42214.html', '2019-02-18 11:09', 0.00,
        '2021-12-22 03:41:34');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1333, '2月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42160.html', '2019-02-17 10:39', 0.00,
        '2021-12-22 03:47:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1334, '2月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42113.html', '2019-02-16 10:21', 0.00,
        '2021-12-22 03:49:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1335, '2月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42059.html', '2019-02-15 11:06', 0.00,
        '2021-12-22 03:51:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1336, '2月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-42009.html', '2019-02-14 10:48', 0.00,
        '2021-12-22 03:56:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1337, '2月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41956.html', '2019-02-13 11:18', 0.00,
        '2021-12-22 03:57:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1338, '2月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41906.html', '2019-02-12 10:50', 0.00,
        '2021-12-22 03:59:35');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1339, '2月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41811.html', '2019-02-11 10:44', 0.00,
        '2021-12-22 04:00:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1340, '2月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41790.html', '2019-02-10 08:35', 0.00,
        '2021-12-22 04:04:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1341, '2月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41732.html', '2019-02-02 09:09', 0.00,
        '2021-12-22 04:07:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1342, '2月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41681.html', '2019-02-01 09:47', 0.00,
        '2021-12-22 04:11:36');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1343, '1月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41630.html', '2019-01-31 09:57', 0.00,
        '2021-12-22 04:17:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1344, '1月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41580.html', '2019-01-30 11:17', 0.00,
        '2021-12-22 04:20:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1345, '1月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41529.html', '2019-01-29 10:39', 0.00,
        '2021-12-22 04:24:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1346, '1月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41478.html', '2019-01-28 10:59', 0.00,
        '2021-12-22 04:29:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1347, '1月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41426.html', '2019-01-27 09:19', 0.00,
        '2021-12-22 04:30:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1348, '1月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41374.html', '2019-01-26 10:43', 0.00,
        '2021-12-22 04:32:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1349, '1月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41323.html', '2019-01-25 10:48', 0.00,
        '2021-12-22 04:35:37');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1350, '1月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41273.html', '2019-01-24 10:45', 0.00,
        '2021-12-22 04:40:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1351, '1月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41221.html', '2019-01-23 10:14', 0.00,
        '2021-12-22 04:43:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1352, '1月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41171.html', '2019-01-22 10:22', 0.00,
        '2021-12-22 04:47:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1353, '1月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41120.html', '2019-01-21 10:37', 0.00,
        '2021-12-22 04:53:38');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1354, '1月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41068.html', '2019-01-20 11:15', 0.00,
        '2021-12-22 04:57:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1355, '1月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-41018.html', '2019-01-19 10:50', 0.00,
        '2021-12-22 04:58:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1356, '1月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40962.html', '2019-01-18 11:10', 0.00,
        '2021-12-22 05:03:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1357, '1月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40915.html', '2019-01-17 11:47', 0.00,
        '2021-12-22 05:04:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1358, '1月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40862.html', '2019-01-16 10:23', 0.00,
        '2021-12-22 05:07:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1359, '1月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40810.html', '2019-01-15 10:22', 0.00,
        '2021-12-22 05:11:39');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1360, '1月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40760.html', '2019-01-14 10:40', 0.00,
        '2021-12-22 05:16:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1361, '1月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40710.html', '2019-01-13 09:36', 0.00,
        '2021-12-22 05:17:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1362, '1月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40659.html', '2019-01-12 11:06', 0.00,
        '2021-12-22 05:20:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1363, '1月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40608.html', '2019-01-11 10:38', 0.00,
        '2021-12-22 05:28:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1364, '1月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40557.html', '2019-01-10 10:36', 0.00,
        '2021-12-22 05:31:40');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1365, '1月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40505.html', '2019-01-09 11:26', 0.00,
        '2021-12-22 05:34:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1366, '1月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40455.html', '2019-01-08 10:53', 0.00,
        '2021-12-22 05:37:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1367, '1月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40405.html', '2019-01-07 11:00', 0.00,
        '2021-12-22 05:39:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1368, '1月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40399.html', '2019-01-07 10:14', 0.00,
        '2021-12-22 05:43:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1369, '1月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40304.html', '2019-01-05 11:18', 0.00,
        '2021-12-22 05:46:41');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1370, '1月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40255.html', '2019-01-04 10:32', 0.00,
        '2021-12-22 05:51:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1371, '1月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40205.html', '2019-01-03 10:34', 0.00,
        '2021-12-22 05:54:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1372, '1月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40154.html', '2019-01-02 10:50', 0.00,
        '2021-12-22 05:57:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1373, '1月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40105.html', '2019-01-01 10:42', 0.00,
        '2021-12-22 06:00:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1374, '12月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40055.html', '2018-12-31 10:17', 0.00,
        '2021-12-22 06:02:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1375, '12月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-40049.html', '2018-12-31 09:36', 0.00,
        '2021-12-22 06:05:42');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1376, '12月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39957.html', '2018-12-29 11:10', 0.00,
        '2021-12-22 06:09:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1377, '12月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39907.html', '2018-12-28 10:26', 0.00,
        '2021-12-22 06:11:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1378, '12月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39858.html', '2018-12-27 11:00', 0.00,
        '2021-12-22 06:13:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1379, '12月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39809.html', '2018-12-26 10:26', 0.00,
        '2021-12-22 06:15:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1380, '12月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39761.html', '2018-12-25 10:11', 0.00,
        '2021-12-22 06:18:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1381, '12月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39712.html', '2018-12-24 11:01', 0.00,
        '2021-12-22 06:19:43');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1382, '12月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39705.html', '2018-12-24 10:04', 0.00,
        '2021-12-22 06:20:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1383, '12月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39613.html', '2018-12-22 10:40', 0.00,
        '2021-12-22 06:22:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1384, '12月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39563.html', '2018-12-21 10:30', 0.00,
        '2021-12-22 06:26:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1385, '12月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39513.html', '2018-12-20 10:27', 0.00,
        '2021-12-22 06:30:44');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1386, '12月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39464.html', '2018-12-19 10:14', 0.00,
        '2021-12-22 06:35:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1387, '12月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39415.html', '2018-12-18 10:25', 0.00,
        '2021-12-22 06:36:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1388, '12月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39363.html', '2018-12-17 10:25', 0.00,
        '2021-12-22 06:39:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1389, '12月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39316.html', '2018-12-16 09:21', 0.00,
        '2021-12-22 06:43:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1390, '12月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39268.html', '2018-12-15 10:38', 0.00,
        '2021-12-22 06:46:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1391, '12月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39216.html', '2018-12-14 10:18', 0.00,
        '2021-12-22 06:47:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1392, '12月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39169.html', '2018-12-13 10:42', 0.00,
        '2021-12-22 06:50:45');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1393, '12月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39120.html', '2018-12-12 10:48', 0.00,
        '2021-12-22 06:55:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1394, '12月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39071.html', '2018-12-11 11:06', 0.00,
        '2021-12-22 06:58:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1395, '12月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-39022.html', '2018-12-10 10:47', 0.00,
        '2021-12-22 07:00:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1396, '12月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38972.html', '2018-12-09 11:01', 0.00,
        '2021-12-22 07:02:46');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1397, '12月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38924.html', '2018-12-08 10:26', 0.00,
        '2021-12-22 07:04:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1398, '12月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38872.html', '2018-12-07 10:36', 0.00,
        '2021-12-22 07:05:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1399, '12月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38825.html', '2018-12-06 10:22', 0.00,
        '2021-12-22 07:09:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1400, '12月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38776.html', '2018-12-05 11:17', 0.00,
        '2021-12-22 07:13:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1401, '12月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38727.html', '2018-12-04 11:01', 0.00,
        '2021-12-22 07:14:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1402, '12月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38678.html', '2018-12-03 10:36', 0.00,
        '2021-12-22 07:18:47');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1403, '12月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38629.html', '2018-12-02 10:42', 0.00,
        '2021-12-22 07:24:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1404, '12月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38580.html', '2018-12-01 11:18', 0.00,
        '2021-12-22 07:28:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1405, '11月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38530.html', '2018-11-30 10:46', 0.00,
        '2021-12-22 07:29:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1406, '11月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38481.html', '2018-11-29 10:48', 0.00,
        '2021-12-22 07:33:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1407, '11月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38432.html', '2018-11-28 10:07', 0.00,
        '2021-12-22 07:35:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1408, '11月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38383.html', '2018-11-27 10:00', 0.00,
        '2021-12-22 07:38:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1409, '11月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38334.html', '2018-11-26 10:36', 0.00,
        '2021-12-22 07:41:48');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1410, '11月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38284.html', '2018-11-25 10:43', 0.00,
        '2021-12-22 07:47:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1411, '11月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38236.html', '2018-11-24 11:00', 0.00,
        '2021-12-22 07:51:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1412, '11月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38186.html', '2018-11-23 11:12', 0.00,
        '2021-12-22 07:54:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1413, '11月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38137.html', '2018-11-22 10:43', 0.00,
        '2021-12-22 07:58:49');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1414, '11月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38088.html', '2018-11-21 10:54', 0.00,
        '2021-12-22 08:02:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1415, '11月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-38039.html', '2018-11-20 11:22', 0.00,
        '2021-12-22 08:05:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1416, '11月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37989.html', '2018-11-19 11:06', 0.00,
        '2021-12-22 08:08:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1417, '11月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37940.html', '2018-11-18 09:56', 0.00,
        '2021-12-22 08:12:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1418, '11月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37892.html', '2018-11-17 10:19', 0.00,
        '2021-12-22 08:14:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1419, '11月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37842.html', '2018-11-16 10:27', 0.00,
        '2021-12-22 08:17:50');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1420, '11月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37793.html', '2018-11-15 10:15', 0.00,
        '2021-12-22 08:25:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1421, '11月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37744.html', '2018-11-14 10:22', 0.00,
        '2021-12-22 08:29:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1422, '11月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37695.html', '2018-11-13 10:12', 0.00,
        '2021-12-22 08:30:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1423, '11月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37646.html', '2018-11-12 10:14', 0.00,
        '2021-12-22 08:33:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1424, '11月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37596.html', '2018-11-11 10:34', 0.00,
        '2021-12-22 08:37:51');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1425, '11月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37548.html', '2018-11-10 10:19', 0.00,
        '2021-12-22 08:40:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1426, '11月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37498.html', '2018-11-09 10:49', 0.00,
        '2021-12-22 08:45:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1427, '11月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37449.html', '2018-11-08 10:26', 0.00,
        '2021-12-22 08:46:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1428, '11月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37400.html', '2018-11-07 11:00', 0.00,
        '2021-12-22 08:50:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1429, '11月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37351.html', '2018-11-06 10:26', 0.00,
        '2021-12-22 08:52:52');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1430, '11月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37302.html', '2018-11-05 10:23', 0.00,
        '2021-12-22 08:59:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1431, '11月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37253.html', '2018-11-04 10:40', 0.00,
        '2021-12-22 09:01:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1432, '11月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37204.html', '2018-11-03 10:24', 0.00,
        '2021-12-22 09:04:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1433, '11月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37154.html', '2018-11-02 10:29', 0.00,
        '2021-12-22 09:08:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1434, '11月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37105.html', '2018-11-01 10:30', 0.00,
        '2021-12-22 09:12:53');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1435, '10月31日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37055.html', '2018-10-31 10:23', 0.00,
        '2021-12-22 09:13:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1436, '10月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-37005.html', '2018-10-30 10:47', 0.00,
        '2021-12-22 09:19:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1437, '10月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36955.html', '2018-10-29 10:18', 0.00,
        '2021-12-22 09:23:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1438, '10月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36905.html', '2018-10-28 10:56', 0.00,
        '2021-12-22 09:26:54');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1439, '10月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36855.html', '2018-10-27 10:44', 0.00,
        '2021-12-22 09:30:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1440, '10月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36804.html', '2018-10-26 10:22', 0.00,
        '2021-12-22 09:32:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1441, '10月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36754.html', '2018-10-25 10:24', 0.00,
        '2021-12-22 09:33:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1442, '10月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36704.html', '2018-10-24 10:49', 0.00,
        '2021-12-22 09:38:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1443, '10月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36653.html', '2018-10-23 10:12', 0.00,
        '2021-12-22 09:40:55');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1444, '10月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36602.html', '2018-10-22 10:29', 0.00,
        '2021-12-22 09:46:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1445, '10月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-36549.html', '2018-10-21 11:11', 0.00,
        '2021-12-22 09:47:56');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1446, '12月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104665.html', '2021-12-21 09:50', 2.00,
        '2021-12-22 09:58:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1447, '12月20日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104606.html', '2021-12-20 09:50', 2.00,
        '2021-12-22 10:02:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1448, '12月19日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104548.html', '2021-12-19 10:04', 2.04,
        '2021-12-22 10:06:59');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1449, '12月18日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104488.html', '2021-12-18 09:50', 2.08,
        '2021-12-22 10:09:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1450, '12月17日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104428.html', '2021-12-17 09:59', 2.08,
        '2021-12-22 10:12:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1451, '12月16日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104369.html', '2021-12-16 09:50', 2.12,
        '2021-12-22 10:18:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1452, '12月15日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104310.html', '2021-12-15 09:50', 2.18,
        '2021-12-22 10:20:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1453, '12月14日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104251.html', '2021-12-14 09:50', 2.23,
        '2021-12-22 10:22:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1454, '12月13日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104192.html', '2021-12-13 09:40', 2.28,
        '2021-12-22 10:26:00');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1455, '12月12日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104137.html', '2021-12-12 10:03', 2.28,
        '2021-12-22 10:30:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1456, '12月11日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104080.html', '2021-12-11 09:40', 2.28,
        '2021-12-22 10:32:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1457, '12月10日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-104024.html', '2021-12-10 09:40', 2.33,
        '2021-12-22 10:38:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1458, '12月9日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103967.html', '2021-12-09 09:50', 2.33,
        '2021-12-22 10:41:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1459, '12月8日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103911.html', '2021-12-08 09:45', 2.33,
        '2021-12-22 10:45:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1460, '12月7日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103855.html', '2021-12-07 09:50', 2.33,
        '2021-12-22 10:49:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1461, '12月6日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103799.html', '2021-12-06 09:40', 2.36,
        '2021-12-22 10:53:01');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1462, '12月5日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103743.html', '2021-12-05 09:46', 2.43,
        '2021-12-22 11:01:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1463, '12月4日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103687.html', '2021-12-04 09:40', 2.43,
        '2021-12-22 11:05:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1464, '12月3日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103630.html', '2021-12-03 09:45', 2.48,
        '2021-12-22 11:09:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1465, '12月2日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103574.html', '2021-12-02 09:50', 2.48,
        '2021-12-22 11:15:02');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1466, '12月1日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103518.html', '2021-12-01 09:45', 2.50,
        '2021-12-22 11:19:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1467, '11月30日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103462.html', '2021-11-30 09:40', 2.50,
        '2021-12-22 11:21:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1468, '11月29日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103406.html', '2021-11-29 09:50', 2.50,
        '2021-12-22 11:27:03');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1469, '11月28日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103351.html', '2021-11-28 11:29', 2.50,
        '2021-12-22 11:28:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1470, '11月27日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103292.html', '2021-11-27 10:14', 2.50,
        '2021-12-22 11:30:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1471, '11月26日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103238.html', '2021-11-26 09:40', 2.53,
        '2021-12-22 11:36:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1472, '11月25日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103181.html', '2021-11-25 09:45', 2.53,
        '2021-12-22 11:40:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1473, '11月24日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103125.html', '2021-11-24 09:40', 2.55,
        '2021-12-22 11:43:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1474, '11月23日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103069.html', '2021-11-23 09:40', 2.55,
        '2021-12-22 11:47:04');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1475, '11月22日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-103014.html', '2021-11-22 09:40', 2.55,
        '2021-12-22 11:49:05');
INSERT INTO personal.garlic (id, title, detail_url, article_time, price, crawler_time)
VALUES (1476, '11月21日杞县大蒜价格', 'http://www.51garlic.com/jg/show-htm-itemid-102962.html', '2021-11-21 11:41', 2.55,
        '2021-12-22 11:52:05');