CREATE DATABASE  IF NOT EXISTS `team-b` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `team-b`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: team-b
-- ------------------------------------------------------
-- Server version	5.6.34-log

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `content` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (49,24,5,'私のお墓の前で泣かないでください！<br />by  秋川雅史'),(50,24,1,'こんにちは。<br />by  秋川雅史'),(51,26,4,'よろしくお願いします！<br />by  アイス食べたい'),(52,26,2,'僕もわからないです…一緒に頑張りましょう！<br />by  アイス食べたい'),(53,24,36,'オーナー<br />by  秋川雅史'),(54,24,45,'ことりん！<br />by  秋川雅史'),(56,25,38,'誰かいないのか！！<br />by  鯖缶太郎'),(57,26,46,'お願いします<br />by  アイス食べたい'),(63,28,46,'こんにちは！<br />by  王様プリン'),(65,NULL,38,'こんにちは<br />by  '),(66,35,38,'message<br />by  test_account'),(67,28,38,'こんにちは<br />by  王様プリン'),(68,NULL,4,'ttt<br />by  '),(69,NULL,38,'aaa<br />by  '),(70,NULL,38,'“><textarea>aaa<br />by  '),(71,NULL,39,'高まる<br />by  ');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `detail` varchar(2048) DEFAULT NULL,
  `categories` varchar(1028) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'python勉強しませんか？','2018-09-13 13:00:00','2018-09-13 17:00:00','python初めて見たけどよくわからんって感じなのでいっしょにもくもくしませんか','python, ai, deeplearning',1),(2,'phpがわからんので仲間を募集！','2018-09-13 15:00:00','2018-09-13 17:00:00','php初めて見たけどlaravelが難しい！最近プロゲート始めたんですけど助けてください！！！！！！！！！','php, laravel, slim',1),(3,'ジャンル問わず！みんなでまったり勉強しませんか？','2018-09-13 19:00:00','2018-09-13 22:30:00','自分はrailsやってます！Webに興味ある人だけでなくとも機械学習とかでも歓迎です！一緒にもくもくしましょう！','python, ai, deeplearning, web, rails, ruby, git',1),(4,'javascriptの楽しさに気づいてしまった人！wanted!!!','2018-09-15 13:00:00','2018-09-15 17:00:00','javascirptたのしいです！一緒にreactとかvue.jsしませんか？','javascript, typescript, es6, vue, react',1),(5,'みんなでゆるっとgitの勉強しませんか？','2018-09-14 13:00:00','2018-09-14 17:00:00','git。概念とかメリットはわかったんですけど、なんかイマイチわからんって感じなんです！適当なアプリで一緒にチーム開発しませんか？','git, github, gitlab',1),(7,'デザインもくもく会','2018-09-14 12:30:00','2018-09-14 19:00:00','ノンデザイナーズデザインブックを一緒によみませんか？？？','デザイン, スケッチ, イラスト',1),(36,'iOSアプリ開発教えてください','2018-09-14 22:00:00','0000-00-00 00:00:00','iPhoneアプリ作りたいです！\r\n詳しい方教えてください！','iOS, Swift, XCode, JS',24),(37,'もくもくゲーム開発会','2018-09-15 18:00:00','2018-09-15 21:00:00','ゲームアプリもくもく作りませんか？初心者も歓迎です！！','もくもく会, ゲーム',25),(38,'誰か俺の嫁を3Dで作ってください！','2019-01-01 00:00:00','2019-01-01 00:00:00',' 作れない人はおよびでない！！金はいくらでも出す！ ','3D, VR, AR',25),(39,'人生相談の会','2018-09-26 23:00:00','2018-09-26 23:10:00','今後のキャリアについて話し合いましょう','キャリア相談',26),(40,'夏休みの課題が終わらないので助けてください','2018-09-22 10:00:00','2018-09-22 20:00:00','PHP得意な人！課題手伝ってください！！！','PHP',28),(41,'Ruby教えてー！','2018-09-13 22:00:00','0000-00-00 00:00:00','proになるためのRuby入門を買ったけどむずかしい >< ! 助けてください！','ruby, プロになるためのruby',29),(42,'みんなでもくもく','2018-09-14 00:00:00','2018-09-14 01:00:00','みんなでもくもくしましょう！','PHP, もくもく, VR, Ruby,Rails  ',29),(43,'Androidでアプリを作ろう','2018-09-14 23:00:00','2018-09-16 00:00:00','初心者でも大丈夫！みんなでわいわいアプリ作り！','Android, Kotlin',30),(44,'はじめてのRuby講座','2018-09-18 20:00:00','2018-09-18 23:00:00','Rubyの書き方教えます！','Ruby, 初心者歓迎',30),(45,'Kotlinを愛でる会','2018-09-24 23:59:00','2018-09-30 23:59:00','生まれてきてくれてありがとう！！！','Kotlin',31),(46,'GitHubの使い方講座','2018-10-03 00:00:00','2018-10-03 22:00:00','GitHubを使ったことがないあなたに','GitHub',31),(47,'機械学習について考える','2018-09-09 00:00:00','2018-09-10 00:00:00','機械学習ってなに？','機械学習',28),(48,'２徹で課題追い込み','2018-09-29 00:00:00','2018-10-01 00:00:00','何としても夏休み中に課題を終わらせるのだ','PHP',28),(49,'Python布教','2018-09-21 00:00:00','2018-09-22 00:00:00','Pythonの魅力について語ります','Python',28),(50,'秋の夜長の読書会','2018-09-26 22:00:00','2018-09-27 01:00:00','読書の秋ですね','読書会',26),(53,'test','2018-09-20 01:01:00','2018-09-20 01:30:00','てすと','iOS, Swift',35),(54,'高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高まる高ま','2018-12-01 00:00:00','2018-12-31 23:59:00','     高まりの彼方へ たかまるううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう','高まりの彼方へ, 高まる',36);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_user`
--

DROP TABLE IF EXISTS `event_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_user`
--

LOCK TABLES `event_user` WRITE;
/*!40000 ALTER TABLE `event_user` DISABLE KEYS */;
INSERT INTO `event_user` VALUES (24,24,5),(25,24,1),(26,26,4),(27,26,2),(28,24,36),(29,25,38),(30,28,38),(31,28,4),(32,30,38),(33,29,38),(34,24,46),(35,32,38),(36,26,46),(37,25,39),(38,26,37),(39,25,46),(40,26,5),(41,34,51),(42,35,48),(43,32,4),(44,32,48),(45,32,45),(46,32,44),(47,27,38),(48,27,45),(49,35,46),(50,1,38),(51,1,46),(52,1,48),(53,28,5),(54,28,46),(55,35,38),(56,36,54);
/*!40000 ALTER TABLE `event_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(512) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `profile` varchar(2048) DEFAULT NULL,
  `twitter_id` varchar(512) DEFAULT NULL,
  `github_id` varchar(512) DEFAULT NULL,
  `qiita_id` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'fumi@gmail.com','hogehoge','fumihumi','123123123','123123123','12312312312','rubyが大好き！！！！！！！！！！','yukos_kawaii','fumihumi','fumihumi'),(24,'akikawa@gmail.com','aa','秋川雅史',NULL,NULL,NULL,'テノール歌手の秋川雅史です．\r\nプログラミング始めました．','akikawa-chan','masahumi-chan',NULL),(25,'ore_no_yome@gmail.com','password','鯖缶太郎',NULL,NULL,NULL,'よろしくううううううううううううううううううう',NULL,NULL,NULL),(26,'abc@def','abc@def','アイス食べたい',NULL,NULL,NULL,'チョコモナカジャンボ','@abcdef','ayumi0611',NULL),(27,'k.ktm0813@icloud.com','1111','asa',NULL,NULL,NULL,'syomin_sample','syomin_sample ',NULL,NULL),(28,'ghi@jkl','ghi@jkl','王様プリン',NULL,NULL,NULL,'世界の平和はプリンが守る','ghi@jkl','ghi@jkl',NULL),(29,'ooo@ooo','ooo','ぷひょ',NULL,NULL,NULL,'男！！！！！！！！！！！！！！','awertu','1527q',NULL),(30,'mno@pqr','mno@pqr','コバヤシ2570',NULL,NULL,NULL,'森へお帰り','@mnopqr','mno@pqr',NULL),(31,'stu@vwx','stu@vwx','塩カルビ',NULL,NULL,NULL,'お腹すいた','@stuvwx','stuvwx',NULL),(32,'qwert@qwert.com','1111','Opam',NULL,NULL,NULL,'おじいちゃんプログラマー','wadavm','agauoaj',NULL),(33,'aa@a','a','te',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'a@aaaa','a','aa',NULL,NULL,NULL,'a','aa','a',NULL),(35,'test@test.test','a','test_account',NULL,NULL,NULL,'testアカウントです','test_twi','test_git',NULL),(36,'s-nakao@ceres-inc.jp','s-nakao!','s-nakao',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-12 21:43:29
