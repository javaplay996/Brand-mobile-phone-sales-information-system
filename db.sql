/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shoujixiaoshouguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoujixiaoshouguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shoujixiaoshouguanli`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618972960944 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1618924040821,'2021-04-20 21:07:20',1614430386281,'河南省郑州市金水区人民路街道工一街黄河水利科学研究院','张1','17703786901','否'),(1618924057573,'2021-04-20 21:07:37',1614430386281,'河南省郑州市管城回族区北下街街道二七路49-2号光彩商场(东太康路)','a2','17703786932','是'),(1618969240494,'2021-04-21 09:40:40',1615339905628,'河南省郑州市管城回族区北下街街道湾仔台球大上海城','a3的联系人','17703786933','是'),(1618972960943,'2021-04-21 10:42:40',1618972584207,'河南省郑州市金水区杜岭街道张砦南街1号院','账户5的联系人1','17703786935','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618972912880 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (22,'picture2','http://localhost:8080/shoujixiaoshouguanli/upload/1618923852925.webp'),(23,'picture2','http://localhost:8080/shoujixiaoshouguanli/upload/1618923859726.jpg'),(24,'picture2','http://localhost:8080/shoujixiaoshouguanli/upload/1618972842445.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (47,1614430386281,1618923270512,'添加',10,'2021-04-20 21:10:14','2021-04-20 21:10:14'),(48,1614430386281,1618923270512,'使用',112,'2021-04-20 21:10:14','2021-04-20 21:10:14'),(49,1614430386281,1618923498892,'使用',10,'2021-04-20 21:13:09','2021-04-20 21:13:09'),(50,1614430386281,1618923498892,'添加',24,'2021-04-20 21:13:09','2021-04-20 21:13:09'),(51,1615339905628,1618923553578,'添加',26,'2021-04-21 09:45:35','2021-04-21 09:45:35'),(52,1618972584207,1618923383627,'添加',40,'2021-04-21 10:43:29','2021-04-21 10:43:30'),(53,1618972584207,1618923498892,'添加',12,'2021-04-21 10:43:29','2021-04-21 10:43:30'),(54,1618972584207,1618923498892,'使用',52,'2021-04-21 10:44:48','2021-04-21 10:44:48'),(55,1618972584207,1618923498892,'添加',12,'2021-04-21 10:44:48','2021-04-21 10:44:48');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618972800127 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-04-19 11:17:48','新闻标题1','http://localhost:8080/shoujixiaoshouguanli/upload/news_picture1.jpg','内容1'),(82,'2021-04-19 11:17:48','新闻标题2','http://localhost:8080/shoujixiaoshouguanli/upload/news_picture2.jpg','内容2'),(83,'2021-04-19 11:17:48','新闻标题3','http://localhost:8080/shoujixiaoshouguanli/upload/news_picture3.jpg','内容3'),(84,'2021-04-19 11:17:48','新闻标题4','http://localhost:8080/shoujixiaoshouguanli/upload/news_picture4.jpg','内容4'),(85,'2021-04-19 11:17:48','新闻标题5','http://localhost:8080/shoujixiaoshouguanli/upload/news_picture5.jpg','内容5'),(1618972800126,'2021-04-21 10:39:59','新闻标题6','http://localhost:8080/shoujixiaoshouguanli/upload/1618972794462.jpg','新闻内容6\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618973087934 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1618924184604,'2020-11-20 21:09:44','20214202194446468185','shangpinxinxi',1614430386281,1618923383627,'VIVO S9','http://localhost:8080/shoujixiaoshouguanli/upload/1618923354866.webp',1,1999,1899,1999,1899,1,'未支付','河南省郑州市金水区人民路街道工一街黄河水利科学研究院'),(1618924214619,'2021-04-20 21:10:14','202142021101447974836','shangpinxinxi',1614430386281,1618923270512,'OPPO Find X3','http://localhost:8080/shoujixiaoshouguanli/upload/1618923206152.webp',1,1999,1699,1999,1699,1,'已完成','河南省郑州市管城回族区北下街街道二七路49-2号光彩商场(东太康路)'),(1618924389704,'2021-04-20 21:13:09','20214202113955714903','shangpinxinxi',1614430386281,1618923498892,'华为P30','http://localhost:8080/shoujixiaoshouguanli/upload/1618923436795.webp',2,2666,2366,5332,4732,1,'已完成','河南省郑州市管城回族区北下街街道二七路49-2号光彩商场(东太康路)'),(1618969253550,'2021-04-21 09:40:53','20214219405341673736','shangpinxinxi',1615339905628,1618923553578,'华为P40','http://localhost:8080/shoujixiaoshouguanli/upload/1618923508709.webp',2,2000,1988,4000,3976,1,'未支付','河南省郑州市管城回族区北下街街道湾仔台球大上海城'),(1618969535532,'2021-04-21 09:45:35','20214219453527315501','shangpinxinxi',1615339905628,1618923553578,'华为P40','http://localhost:8080/shoujixiaoshouguanli/upload/1618923508709.webp',2,2000,1988,4000,3976,1,'已完成','河南省郑州市管城回族区北下街街道湾仔台球大上海城'),(1618972977387,'2021-04-21 10:42:57','202142110425615144420','shangpinxinxi',1618972584207,1618923383627,'VIVO S9','http://localhost:8080/shoujixiaoshouguanli/upload/1618923354866.webp',2,1999,1899,3998,3798,1,'已完成','河南省郑州市金水区杜岭街道张砦南街1号院'),(1618972977910,'2021-04-21 10:42:57','202142110425616852440','shangpinxinxi',1618972584207,1618923498892,'华为P30','http://localhost:8080/shoujixiaoshouguanli/upload/1618923436795.webp',1,2666,2366,2666,2366,1,'已完成','河南省郑州市金水区杜岭街道张砦南街1号院'),(1618973009690,'2021-04-21 10:43:29','202142110432940842772','shangpinxinxi',1618972584207,1618923383627,'VIVO S9','http://localhost:8080/shoujixiaoshouguanli/upload/1618923354866.webp',2,1999,1899,3998,3798,1,'已发货','河南省郑州市金水区杜岭街道张砦南街1号院'),(1618973010390,'2021-04-21 10:43:29','202142110432941902110','shangpinxinxi',1618972584207,1618923498892,'华为P30','http://localhost:8080/shoujixiaoshouguanli/upload/1618923436795.webp',1,2666,2366,2666,2366,1,'已退款','河南省郑州市金水区杜岭街道张砦南街1号院'),(1618973049481,'2021-04-21 10:44:09','20214211044880070019','shangpinxinxi',1618972584207,1618923383627,'VIVO S9','http://localhost:8080/shoujixiaoshouguanli/upload/1618923354866.webp',1,1999,1899,1999,1899,1,'未支付','河南省郑州市金水区杜岭街道张砦南街1号院'),(1618973087933,'2021-04-21 10:44:47','202142110444765469129','shangpinxinxi',1618972584207,1618923498892,'华为P30','http://localhost:8080/shoujixiaoshouguanli/upload/1618923436795.webp',1,2666,2366,2666,2366,1,'已支付','河南省郑州市金水区杜岭街道张砦南街1号院');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618972602311 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-04-19 11:17:48','华为'),(22,'2021-04-19 11:17:48','小米'),(23,'2021-04-19 11:17:48','OPPO'),(24,'2021-04-19 11:17:48','VIVO'),(25,'2021-04-19 11:17:48','苹果'),(26,'2021-04-19 11:17:48','荣耀'),(1618972602310,'2021-04-21 10:36:41','红米');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618972674295 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1618923270512,'2021-04-20 20:54:30','1618923127','OPPO Find X3','OPPO','999','OPPO','32g','OPPO Find X3 的详情\r\n','http://localhost:8080/shoujixiaoshouguanli/upload/1618923206152.webp','2021-04-21 10:41:31',5,1999,1699,10,1),(1618923383627,'2021-04-20 20:56:23','1618923279','VIVO S9','VIVO','994','VIVO','128G','VIVO S9的详情\r\n','http://localhost:8080/shoujixiaoshouguanli/upload/1618923354866.webp','2021-04-21 10:44:08',9,1999,1899,20,1),(1618923498892,'2021-04-20 20:58:18','1618923431','华为P30','华为','661','华为','64G','华为P30的详情\r\n','http://localhost:8080/shoujixiaoshouguanli/upload/1618923436795.webp','2021-04-21 10:45:55',11,2666,2366,12,1),(1618923553578,'2021-04-20 20:59:12','1618923504','华为P40','华为','996','华为','128G','华为P40的详情\r\n','http://localhost:8080/shoujixiaoshouguanli/upload/1618923508709.webp','2021-04-21 09:45:35',5,2000,1988,13,1),(1618923656538,'2021-04-20 21:00:55','1618923557','小米 GT Neo','小米','1000','小米','64G','小米 GT Neo的详情\r\n','http://localhost:8080/shoujixiaoshouguanli/upload/1618923563617.webp','2021-04-20 21:06:42',1,2500,2388,14,1),(1618972674294,'2021-04-21 10:37:54','1618972617','小米p40','小米','1001','小米','128G','小米p40的详情\r\n','http://localhost:8080/shoujixiaoshouguanli/upload/1618972624532.webp','2021-04-21 10:39:00',2,4000,3888,18,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618972882607 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618924005927,'2021-04-20 21:06:44',1614430386281,1618923656538,'shangpinxinxi','小米 GT Neo','http://localhost:8080/shoujixiaoshouguanli/upload/1618923563617.webp'),(1618972882606,'2021-04-21 10:41:21',1618972584207,1618923270512,'shangpinxinxi','OPPO Find X3','http://localhost:8080/shoujixiaoshouguanli/upload/1618923206152.webp');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (15,1,'admin','users','管理员','bc6sxy3fkzs5l4w8yb94d5tzxruc8hhj','2021-04-20 20:36:19','2021-04-21 11:35:48'),(16,1614430386281,'a2','yonghu','用户','nbr4ojrmmqspluzdt150l7oukthy65qh','2021-04-20 21:05:21','2021-04-20 22:14:16'),(17,1615339905628,'a3','yonghu','用户','zi5kloy9s44jhifp3ylhj31uu69s12um','2021-04-21 09:39:39','2021-04-21 10:39:39'),(18,1618972584207,'a5','yonghu','用户','6ifo4o86u11qpiy1jdjeqxc50oujtej0','2021-04-21 10:38:02','2021-04-21 11:47:14'),(19,1618973207733,'a6','yonghu','用户','opo5voxt3aup2v942qgigryk7rj3r7br','2021-04-21 10:46:54','2021-04-21 11:46:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-04-19 11:17:48');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618973207734 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','123456','女','13823888883','229992@qq.ccom',4978,24),(1614431342348,'2021-02-27 21:09:02','a4','a4','123456','男','a41','22850@qq.com',0,0),(1615339905628,'2021-03-10 09:31:45','a3','a3','123456','男','13823888883','77389000222@qq.com',6024,26),(1618972584207,'2021-04-21 10:36:24','a5','张5','123456','女','17703786965','22@qq.com',99358,12),(1618973207733,'2021-04-21 10:46:47','a6','张6','123456',NULL,'17703783666','229@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
