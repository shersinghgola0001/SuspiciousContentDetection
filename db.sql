/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.38-MariaDB : Database - suspicious_content_sentiment_analysis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`suspicious_content_sentiment_analysis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `suspicious_content_sentiment_analysis`;

/*Table structure for table `lists` */

DROP TABLE IF EXISTS `lists`;

CREATE TABLE `lists` (
  `LID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ListName` varchar(50) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Descriptipn` varchar(200) DEFAULT NULL,
  `UID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `lists` */

insert  into `lists`(`LID`,`ListName`,`Language`,`Descriptipn`,`UID`) values (1,'English-List','English','Normal Words',1),(2,'Main','English-American','New List',1),(5,'Test',NULL,NULL,3),(6,'list1','English-American','',3),(7,'list1','English-American','',11),(8,'insta','English-American','',3);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PWD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`UID`,`UserName`,`Mobile`,`Email`,`PWD`) values (1,'Rishi Sharma','7007502987','admin@gmail.com','aa'),(2,'Manhar Sharma','9936872419','muni.dgr@gmail.com','aa'),(3,'a','a','a','a'),(6,'Mohit','7599339273','abc@gmail.com','aa'),(8,'New',NULL,'new@gmail.com','aa'),(9,'kirti',NULL,'k@g','kirti123'),(10,'k',NULL,'k@g','kirti123'),(11,'kirti',NULL,'kirti14yadav@gmail.com','kirti123'),(12,'bittu singh',NULL,'singhbittu068@gmail.com','bittu123');

/*Table structure for table `words` */

DROP TABLE IF EXISTS `words`;

CREATE TABLE `words` (
  `WID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Word` varchar(100) DEFAULT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'Positive',
  `LID` bigint(20) NOT NULL DEFAULT '1',
  `UID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`WID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

/*Data for the table `words` */

insert  into `words`(`WID`,`Word`,`Type`,`LID`,`UID`) values (1,'good','Positive',1,1),(2,'best','Positive',1,1),(4,'awesom','Positive',1,1),(5,'Nice','Positive',1,1),(6,'Bakwas','Negative',1,1),(8,'bakwas','Negative',1,1),(9,'Not Good','Negative',1,1),(10,'Not bad','Positive',1,1),(11,'best in all','Positive',1,1),(12,'bad','Negative',1,1),(13,'better','Positive',1,1),(14,'perfect','Positive',1,1),(15,'ok','Positive',2,1),(16,'Awesom','Positive',2,1),(18,'aweful','Negative',2,1),(19,'acid','Negative',1,1),(20,'bomb','Negative',1,1),(21,'hijack','Negative',1,1),(24,'nice','Positive',5,1),(33,'shot','Negative',6,1),(34,'attack','Negative',6,1),(35,'terror','Negative',6,1),(36,'crime','Negative',6,1),(37,'acid','Negative',6,1),(38,'threat','Negative',6,1),(39,'good','Positive',6,1),(40,'gud','Positive',6,1),(41,'best','Positive',6,1),(42,'nice','Positive',6,1),(43,'great','Positive',6,1),(44,'not bad','Positive',6,1),(45,'not good','Negative',6,1),(46,'hijack','Negative',5,1),(47,'hijack','Negative',6,1),(48,'murder','Negative',6,1),(49,'crime','Negative',7,1),(50,'shot','Negative',7,1),(51,'gun','Negative',7,1),(52,'acid','Negative',7,1),(53,'revolver','Negative',7,1),(54,'hijack','Negative',7,1),(55,'attack','Negative',7,1),(56,'good','Positive',7,1),(57,'best','Positive',7,1),(58,'best of all','Positive',7,1),(59,'bullet','Negative',7,1),(60,'murder','Negative',7,1),(61,'robbery','Negative',7,1),(62,'revenge','Negative',7,1),(63,'spy','Negative',7,1),(64,'brutal','Negative',7,1),(65,'encounter','Negative',7,1),(66,'poison','Negative',7,1),(67,'not ','Negative',7,1),(68,'','Negative',7,1),(69,'not gud','Negative',7,1),(70,'not bad','Negative',7,1),(71,'worst of worst','Negative',7,1),(72,'best of best','Negative',7,1),(73,'Bomb','Negative',5,1),(74,'very good','Positive',6,1),(75,'spy','Negative',6,1),(76,'bullet','Negative',6,1),(77,'shoot','Negative',6,1),(78,'poison','Negative',6,1),(79,'worst of worst','Negative',6,1),(80,'best of best','Positive',6,1),(81,'in','Positive',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
