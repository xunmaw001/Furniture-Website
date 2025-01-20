-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot4f4p4
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836888959 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-27 09:12:15',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-27 09:12:15',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-27 09:12:15',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-27 09:12:15',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-27 09:12:15',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-27 09:12:15',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616836888958,'2021-03-27 09:21:28',1616836836029,'河南省开封市杞县葛岗镇童乐幼儿园东云分园','xxxxx','12345678910','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'jiajuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836918833 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot4f4p4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot4f4p4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot4f4p4/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiajuxinxi`
--

DROP TABLE IF EXISTS `discussjiajuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiajuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836910625 DEFAULT CHARSET=utf8 COMMENT='家具信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiajuxinxi`
--

LOCK TABLES `discussjiajuxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiajuxinxi` DISABLE KEYS */;
INSERT INTO `discussjiajuxinxi` VALUES (101,'2021-03-27 09:12:15',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-27 09:12:15',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-27 09:12:15',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-27 09:12:15',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-27 09:12:15',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-27 09:12:15',6,6,'用户名6','评论内容6','回复内容6'),(1616836910624,'2021-03-27 09:21:49',1616836798658,1616836836029,'2','评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论','回复回复回复');
/*!40000 ALTER TABLE `discussjiajuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiajuleixing`
--

DROP TABLE IF EXISTS `jiajuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiajuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiajuleixing` varchar(200) DEFAULT NULL COMMENT '家具类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836722987 DEFAULT CHARSET=utf8 COMMENT='家具类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiajuleixing`
--

LOCK TABLES `jiajuleixing` WRITE;
/*!40000 ALTER TABLE `jiajuleixing` DISABLE KEYS */;
INSERT INTO `jiajuleixing` VALUES (31,'2021-03-27 09:12:15','家具类型1'),(32,'2021-03-27 09:12:15','家具类型2'),(33,'2021-03-27 09:12:15','家具类型3'),(34,'2021-03-27 09:12:15','家具类型4'),(35,'2021-03-27 09:12:15','家具类型5'),(36,'2021-03-27 09:12:15','家具类型6'),(1616836722986,'2021-03-27 09:18:42','红木');
/*!40000 ALTER TABLE `jiajuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiajuxinxi`
--

DROP TABLE IF EXISTS `jiajuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiajuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiajumingcheng` varchar(200) NOT NULL COMMENT '家具名称',
  `jiajuleixing` varchar(200) DEFAULT NULL COMMENT '家具类型',
  `jiajupinpai` varchar(200) DEFAULT NULL COMMENT '家具品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiajufengge` varchar(200) DEFAULT NULL COMMENT '家具风格',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `zhongliang` varchar(200) DEFAULT NULL COMMENT '重量',
  `jiajuxiangqing` longtext COMMENT '家具详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836798659 DEFAULT CHARSET=utf8 COMMENT='家具信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiajuxinxi`
--

LOCK TABLES `jiajuxinxi` WRITE;
/*!40000 ALTER TABLE `jiajuxinxi` DISABLE KEYS */;
INSERT INTO `jiajuxinxi` VALUES (41,'2021-03-27 09:12:15','家具名称1','家具类型1','家具品牌1','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian1.jpg','家具风格1','大','重量1','家具详情1','商家账号1','店铺名称1','店铺地址1','联系方式1',99.9),(42,'2021-03-27 09:12:15','家具名称2','家具类型2','家具品牌2','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian2.jpg','家具风格2','大','重量2','家具详情2','商家账号2','店铺名称2','店铺地址2','联系方式2',99.9),(43,'2021-03-27 09:12:15','家具名称3','家具类型3','家具品牌3','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian3.jpg','家具风格3','大','重量3','家具详情3','商家账号3','店铺名称3','店铺地址3','联系方式3',99.9),(44,'2021-03-27 09:12:15','家具名称4','家具类型4','家具品牌4','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian4.jpg','家具风格4','大','重量4','家具详情4','商家账号4','店铺名称4','店铺地址4','联系方式4',99.9),(45,'2021-03-27 09:12:15','家具名称5','家具类型5','家具品牌5','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian5.jpg','家具风格5','大','重量5','家具详情5','商家账号5','店铺名称5','店铺地址5','联系方式5',99.9),(46,'2021-03-27 09:12:15','家具名称6','家具类型6','家具品牌6','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian6.jpg','家具风格6','大','重量6','家具详情6','商家账号6','店铺名称6','店铺地址6','联系方式6',99.9),(1616836798658,'2021-03-27 09:19:58','xxx家具','红木','xxxx','http://localhost:8080/springboot4f4p4/upload/1616836781160.jpg','xxxxx','大','100','<h1>测试</h1><h1>测试测试</h1><h1>测试测试</h1><h1>测试</h1><h1>测试</h1><h1>测试</h1><h1>测试</h1><h1><br></h1>','1','店铺名称1','店铺地址1','联系方式1',200);
/*!40000 ALTER TABLE `jiajuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='家具资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-27 09:12:15','标题1','简介1','http://localhost:8080/springboot4f4p4/upload/news_picture1.jpg','<h1>内容1</h1><p>阿萨达萨达萨达是大三</p><h1>内容1</h1><p>阿萨达萨达萨达是大三</p><h1>内容1</h1><p>阿萨达萨达萨达是大三</p>'),(92,'2021-03-27 09:12:15','标题2','简介2','http://localhost:8080/springboot4f4p4/upload/news_picture2.jpg','内容2'),(93,'2021-03-27 09:12:15','标题3','简介3','http://localhost:8080/springboot4f4p4/upload/news_picture3.jpg','内容3'),(94,'2021-03-27 09:12:15','标题4','简介4','http://localhost:8080/springboot4f4p4/upload/news_picture4.jpg','内容4'),(95,'2021-03-27 09:12:15','标题5','简介5','http://localhost:8080/springboot4f4p4/upload/news_picture5.jpg','内容5'),(96,'2021-03-27 09:12:15','标题6','简介6','http://localhost:8080/springboot4f4p4/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jiajuxinxi' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1616836924894 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616836924783,'2021-03-27 09:22:04','20213271721264927886','jiajuxinxi',1616836836029,1616836798658,'xxx家具','http://localhost:8080/springboot4f4p4/upload/1616836781160.jpg',1,200,200,299.9,200,1,'已完成','河南省开封市杞县葛岗镇童乐幼儿园东云分园'),(1616836924893,'2021-03-27 09:22:04','20213271721265549035','jiajuxinxi',1616836836029,42,'家具名称2','http://localhost:8080/springboot4f4p4/upload/jiajuxinxi_tupian2.jpg',1,99.9,99.9,299.9,99.9,1,'已支付','河南省开封市杞县葛岗镇童乐幼儿园东云分园');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `jingyingneirong` varchar(200) DEFAULT NULL COMMENT '经营内容',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2021-03-27 09:12:15','1','1','店铺名称1','店铺地址1','联系方式1','联系人1','http://localhost:8080/springboot4f4p4/upload/shangjia_shangjiatupian1.jpg','经营内容1','<h1>商家介绍1</h1><p>asdas</p>',100),(22,'2021-03-27 09:12:15','商家2','123456','店铺名称2','店铺地址2','联系方式2','联系人2','http://localhost:8080/springboot4f4p4/upload/shangjia_shangjiatupian2.jpg','经营内容2','商家介绍2',100),(23,'2021-03-27 09:12:15','商家3','123456','店铺名称3','店铺地址3','联系方式3','联系人3','http://localhost:8080/springboot4f4p4/upload/shangjia_shangjiatupian3.jpg','经营内容3','商家介绍3',100),(24,'2021-03-27 09:12:15','商家4','123456','店铺名称4','店铺地址4','联系方式4','联系人4','http://localhost:8080/springboot4f4p4/upload/shangjia_shangjiatupian4.jpg','经营内容4','商家介绍4',100),(25,'2021-03-27 09:12:15','商家5','123456','店铺名称5','店铺地址5','联系方式5','联系人5','http://localhost:8080/springboot4f4p4/upload/shangjia_shangjiatupian5.jpg','经营内容5','商家介绍5',100),(26,'2021-03-27 09:12:15','商家6','123456','店铺名称6','店铺地址6','联系方式6','联系人6','http://localhost:8080/springboot4f4p4/upload/shangjia_shangjiatupian6.jpg','经营内容6','商家介绍6',100);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836897999 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616836897998,'2021-03-27 09:21:37',1616836836029,1616836798658,'jiajuxinxi','xxx家具','http://localhost:8080/springboot4f4p4/upload/1616836781160.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','ok455zvqoo6dqj02v93j45begm6wosyy','2021-03-27 09:18:14','2021-03-27 10:22:22'),(2,21,'1','shangjia','商家','p9u22xb8w1eyycikuq7tjged8zamo3dg','2021-03-27 09:19:24','2021-03-27 10:19:24'),(3,1616836836029,'2','yonghu','用户','ucu9hrb8kk35yd7alm7hspqwypkml8ef','2021-03-27 09:20:40','2021-03-27 10:20:40');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-27 09:12:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616836836030 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-27 09:12:15','1','1','用户姓名1','男',1,'http://localhost:8080/springboot4f4p4/upload/yonghu_touxiang1.jpg',100),(12,'2021-03-27 09:12:15','用户2','123456','用户姓名2','男',2,'http://localhost:8080/springboot4f4p4/upload/yonghu_touxiang2.jpg',100),(13,'2021-03-27 09:12:15','用户3','123456','用户姓名3','男',3,'http://localhost:8080/springboot4f4p4/upload/yonghu_touxiang3.jpg',100),(14,'2021-03-27 09:12:15','用户4','123456','用户姓名4','男',4,'http://localhost:8080/springboot4f4p4/upload/yonghu_touxiang4.jpg',100),(15,'2021-03-27 09:12:15','用户5','123456','用户姓名5','男',5,'http://localhost:8080/springboot4f4p4/upload/yonghu_touxiang5.jpg',100),(16,'2021-03-27 09:12:15','用户6','123456','用户姓名6','男',6,'http://localhost:8080/springboot4f4p4/upload/yonghu_touxiang6.jpg',100),(1616836836029,'2021-03-27 09:20:36','2','2','xxx用户','男',22,'http://localhost:8080/springboot4f4p4/upload/1616836847639.png',19400.2);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-06 21:00:39
