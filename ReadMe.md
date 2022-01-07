# springboot + vue 前端端分离后台管理系统
## ——技术栈
- springboot
- mybatisPlus
- mysql
- 阿里支付SDK接入
- vue
- element-plus
- wangEditor 富文本编辑器接入
- highCharts 可视化数据折线图接入
## ——功能模块
### 用户管理
- CRUD
- 分页查询
- session权限控制
### 商品管理
- CRUD
- 分页查询
- 图片上传和展示
- 购买支付扣库存
### 订单管理
- RD
- 分页查询
- 支付订单状态更新
### 内容管理
- CRUD
- 分页查询
- 批量删除
- wangEditor 富文本编辑器集成
    - 本地图片上传
- 内容详情图片展示
### 可视化数据
- 爬虫获取大蒜每日价格数据
- highCharts 数据视图集成
- 界面展示一年&三年内价格趋势图
- 点击趋势图获取查看当天数据详情
- 原文链接跳转
- 数据详情编辑
## ——项目启动
- 需安装nodeJs
- 在vue-demo文件下运行 `npm install`
- IDEA 可通过debug运行添加参数
  - package.json：选择vue-demo下的 package.json
  - Command：run
  - Script：server
  - Arguments：-- --port 8095
## ——框架集成
- element-plus： `npm install element-plus --save`
- wangEditor： `npm i wangeditor --save`
- highCharts: `npm install highcharts --save`
## ——注意事项
- 支付宝支付通知接口回调需要公网域名（ip），要用到内网穿透，可使用natapp内网映射工具
- 详细文档参考：[https://blog.csdn.net/weixin_43842853/article/details/121991966](https://blog.csdn.net/weixin_43842853/article/details/121991966)
## ——技术知识点
- 防抖：前面所有的触发都会被取消，最后一次执行在规定的时间内才会被触发（如果连续快速触发，只执行一次）
  - 案例：输入内容进行搜索，当搜索框内容发生改变1s后才触发回调，而不是一有改变就触发
- 节流：在规定间隔时间内不会重复触发回调，大于的时间间隔才会触发回调（频繁触发变为少量触发）
  - 案例：即使快速点击按钮，而只会大于时间间隔才触发一次，而不是点击一次就触发一次
- 使用 lodash 工具库可实现，底层运用 闭包+延时
## ——Linux
- 项目部署到服务器，后端启动命令：`nohup java -jar manager-0.0.1-SNAPSHOT.jar --spring.profiles.active=prod &`
- 查找进程号：`ps -ef|grep manager`
- 杀死进程：`kill （root 后的进程号）`
- 商品管理图片展示显示加载失败问题：
  - 由于图片是放置在/resources/file文件夹下，部署到linux为jar包，故找不到改目录
