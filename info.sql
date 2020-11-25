/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.1.30-MariaDB : Database - info
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`info` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `info`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `adid` INT(50) NOT NULL AUTO_INCREMENT,
  `uid` INT(50) NOT NULL,
  `uaddress` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `FK_address` (`uid`),
  CONSTRAINT `FK_address` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `address` */

INSERT  INTO `address`(`adid`,`uid`,`uaddress`) VALUES (1,2,'vismi@gmail.com');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

C`info`

/*Data for the table `user` */

INSERT  INTO `user`(`id`,`name`,`email`) VALUES (2,'Vismitha','null');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
