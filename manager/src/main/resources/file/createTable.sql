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

INSERT INTO personal.content (title, author, details, create_time) VALUES ('提莫台词', '提莫', '<p>1、提莫队长正在待命!</p><p>2、一!二!三!四……</p><p>3、是，长官!</p><p>4、我去前面探探路</p><p>5、整装待发!</p><p>6、有情况!</p><p>7、正在报告!</p><p>8、绝对不要低估迅捷斥候的威力</p><p>9、向您致敬!</p><p>10、体型并不能说明一切</p><p>11、要迅捷!</p><p><img src="https://gimg0.baidu.com/gimg/src=https%3A%2F%2Fgameplus-platform.cdn.bcebos.com%2Fgameplus-platform%2Fupload%2Ffile%2Fsource%2Fb3a7dfb26a449679481cad7033b064c7ed86c9fe_1630980307197.jpg&amp;app=2000&amp;size=f9999,10000&amp;n=0&amp;g=0n&amp;q=70&amp;fmt=jpeg?sec=0&amp;t=a4b5cf4957f7a4dca86bbef5eb9a9edc"/></p>', '2021-12-15 19:16:22');
INSERT INTO personal.content (title, author, details, create_time) VALUES ('盖伦台词', '盖伦', '<p>1、人在塔在</p><p>2、生命不息，战斗不止</p><p>3、我将带头冲锋</p><p>4、搅乱他们的阵型</p><p>5、绝不动摇!</p><p>6、正义，要么靠法律，要么靠武力!</p><p>7、德玛西亚!</p><p>8、为那些不能作战的人而战</p><p>9、德玛西亚的光辉将会照耀整个世界</p><p>10、放马过来吧，你会死的很光荣的</p><p>11、我们的行为是正义的</p><p>12、我们的功绩将载入史册</p><p>13、开大时：接受制裁吧! 正义必胜!</p><p>14、你是个屠夫，不是个将军</p><p>15、你敢伸出洛克萨斯之手，我就敢剁了他</p><p><img src="https://img0.baidu.com/it/u=4143298440,1303722830&amp;fm=26&amp;fmt=auto" style="max-width:100%;" contenteditable="false"/></p>', '2021-12-15 19:29:25');
INSERT INTO personal.content (title, author, details, create_time) VALUES ('金克丝台词', '金克丝', '<p>(1)我有——最美好的初衷</p><p>(2)让我们表现的——你被耍了<br/></p><p>(3)我是疯子——有医生开的证明!<br/></p><p>(4)她就是个小太妹，是不停地开着枪，还是最强的<br/></p><p>(5)规则——就是用来打破的<br/></p><p>(6)我现在在哪?哦对，在一场浩劫中<br/></p><p>(7)等等我在想问题，嗯……别人是怎么干这行的?<br/></p><p>(8)等等我在想问题，好吧，我想完了<br/></p><p>(9)我也试着去用心，可是我做不到哇<br/></p><p>(10)金克丝的含义?就是金克丝，笨!</p><p><img src="https://img0.baidu.com/it/u=1466642791,2489395801&amp;fm=253&amp;fmt=auto&amp;app=120&amp;f=GIF?w=577&amp;h=267" contenteditable="false" style="font-size: 14px; color: var(--el-text-color-regular); max-width: 100%;"/></p>', '2021-12-15 19:30:57');
INSERT INTO personal.content (title, author, details, create_time) VALUES ('刀妹台词', '刀妹', '<p>1、走这边</p><p>2、正义指引着我们。</p><p>3、我绝不会动摇。</p><p>4、出手要准</p><p>5、稳步前进!</p><p>6、艾欧尼亚不会灭亡。</p><p>7、我的立场非常坚定。</p><p>8、要保持敏锐。</p><p>9、真正的意志是不会被击败的!</p><p>10、为什么每个人都在问我“会不会削到自己的头发”呢?</p><p>11、没有退路了!</p><p>12、我的剑刃从不颤抖。</p><p>13、这场战斗必将获胜。</p><p>14、他们的胜利必将成为奢望!</p><p>15、这就是我收养那些流浪剑刃的结果。</p><p>16、你们太过依赖自己的武器了，要试着放手~</p><p>17、平衡，存乎万物之间。</p><p>18、我的剑刃不但准，而且狠!</p><p>19、我的剑刃愿为您效劳。</p><p>20、可怕的喘息，就像被她自己的剑刺入一样痛苦。</p><p><img src="https://gimg0.baidu.com/gimg/src=https%3A%2F%2Fgameplus-platform.cdn.bcebos.com%2Fgameplus-platform%2Fupload%2Ffile%2Fsource%2F2_1626667527186.jpg&amp;app=2000&amp;size=f9999,10000&amp;n=0&amp;g=0n&amp;q=70&amp;fmt=jpeg?sec=0&amp;t=7602c577da3dbd74830956c148fe1a36" style="max-width:100%;" contenteditable="false"/></p><br/>', '2021-12-15 19:32:05');
INSERT INTO personal.content (title, author, details, create_time) VALUES ('亚索台词', '亚索', '<p>1、死亡如风，常伴吾身。</p><p>2、长路漫漫，唯剑作伴。</p><p>3、吾之荣耀，离别已久。</p><p>4、明日安在，无人能允。</p><p>5、且随疾风前行，身后亦须留心。</p><p>6、此剑之势，愈斩愈烈。</p><p>7、仁义道德，也是一种奢侈。</p><p>8、灭亡之路，短的超乎你的想象。</p><p>9、无罪之人，方可安睡。</p><p>10、正义，好个冠冕堂皇之词。</p><p>11、回首往昔，更进一步。</p><p>12、吾虽浪迹天涯，却未迷失本心。</p><p>13、我还在寻找回家的路。</p><p>14、可久留于一处。</p><p>15、我将遵循此道，直至终结。</p><p>16、荣耀存于心，而非流于形。</p><p>17、吾之初心，永世不忘。</p><p>18、这个故事还没有完结。</p><p>19、树叶的一生，只是为了归根吧?</p><p>20、汝欲赴死，易如反掌。</p><p>21、人们一直在往我的剑上撞。</p><p>22、我会给你个痛快的!</p><p>23、蠢货是无药可治的!</p><p>24、想杀我?你可以试试。</p><p>25、死亡而已!没什么大不了的。</p><p>26、速战速决吧!</p><p>27、还是别出招了，反正是我赢。</p><p>28、想独自平静一会吗?很快你就可以了。</p><p>29、有些事绝对不会无趣。</p><p>30、有些失误无法犯两次。</p><p>31、我不会怀着耻辱而死!</p><p>32、别再逃了。</p><p>33、我命由我，不由天。</p><p>34、一剑，一念。</p><p>35、还没到死的时候。</p><p>36、亚索把他的酒瓶扔向空中并用他的剑接住。</p><p>37、我的剑，比什么都重要，除了美酒。</p><p>38、谁说我酒量不好的?</p><p>39、生命中有三件必经之事：荣誉、死亡、还有宿醉。</p><p>40、不是你死，就是我亡!</p><p>41、如果你要来杀我，希望你把朋友们也带上。</p><p>42、杀人是种恶习，但我似乎戒不掉了。</p><p><br/><img src="https://gimg0.baidu.com/gimg/src=https%3A%2F%2Fgameplus-platform.cdn.bcebos.com%2Fgameplus-platform%2Fupload%2Ffile%2Fsource%2FQQ%E5%9B%BE%E7%89%8720210903163533_1630658203553.png&amp;app=2000&amp;size=f9999,10000&amp;n=0&amp;g=0n&amp;q=70&amp;fmt=jpeg?sec=0&amp;t=5d11d322ffa135cb7fe3058c969e1fae" contenteditable="false" style="font-size: 14px; color: var(--el-text-color-regular); max-width: 100%;"/></p>', '2021-12-15 19:33:30');
INSERT INTO personal.content (title, author, details, create_time) VALUES ('小炮台词', '小炮', '<p>一日为班德尔炮手，终身为班德尔炮手</p><p>跳舞(带唱歌)：</p><p>班德尔炮手看到了什么?报告长官只有胜利</p><p>不管陆军、空军还是海军，班德尔炮手统统消灭干净</p><p>一个树桩短，十个树桩长，班德尔炮手不可阻挡</p><p>游戏中随机台词：</p><p>不顾一切的冲锋!</p><p>快让这场派对开始吧</p><p>你卖耳塞不?</p><p>只需要给我指个正确的方向</p><p>带上这些坏家伙</p><p>哈哈哈<br/><img src="https://img2.baidu.com/it/u=3770740608,1493581647&amp;fm=26&amp;fmt=auto" style="max-width:100%;" contenteditable="false"/></p>', '2021-12-15 19:53:39');