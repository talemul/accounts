/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.7.28-log : Database - wp1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `chart_of_accounts` */

DROP TABLE IF EXISTS `chart_of_accounts`;

CREATE TABLE `chart_of_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '000',
  `code_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_tech_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `chart_of_accounts` */

insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (1,'1','Asset','Asset',NULL,'1','1',NULL,'1',NULL,'Asset','1','1','0','2020-11-28 16:00:50','2020-11-28 16:20:40',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (2,'2','Liability','Liability',NULL,'1','2',NULL,'1',NULL,'Liability','1','1','0','2020-11-28 16:19:11','2020-11-28 16:20:44',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (3,'3','Expenses','Expenses',NULL,'1','3',NULL,'1',NULL,'Expenses','1','1','0','2020-11-28 16:19:41','2020-11-28 16:20:47',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (4,'4','Income','Income',NULL,'1','4',NULL,'1',NULL,'Income','1','1','0','2020-11-28 16:20:18','2020-11-28 16:20:18',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (5,'5','Equity','Equity',NULL,'1','5',NULL,'1',NULL,'Equity','1','1','0','2020-11-28 16:20:33','2020-11-28 16:20:33',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (6,'1001','Account Receivable','Account Receivable',NULL,'1','1',NULL,'2',NULL,'Asset>Account Receivable','1','1','1','2020-11-28 17:01:04','2020-11-28 17:01:04',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (7,'1002','Current Asset','Current Asset',NULL,'1','1',NULL,'2',NULL,'Asset>Current Asset','1','1','1','2020-11-28 17:01:30','2020-11-28 17:01:30',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (8,'1003','Investment','Investment',NULL,'1','1',NULL,'2',NULL,'Asset>Investment','1','1','1','2020-11-28 17:02:55','2020-11-28 17:02:55',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (9,'1001001','Sworana Rice Agency','Sworana Rice Agency',NULL,'1','1001',NULL,'3',NULL,'Asset>Account Receivable>Sworana Rice Agency','1','1','6','2020-11-28 17:03:16','2020-11-28 17:03:46',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (10,'1001002','Rajshahi Co-operatives','Rajshahi Co-operatives',NULL,'1','1001',NULL,'3',NULL,'Asset>Account Receivable>Rajshahi Co-operatives','1','1','6','2020-11-28 17:03:35','2020-11-28 17:07:45',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (11,'1001003','Bengal corporation','Bengal corporation',NULL,'1','1001',NULL,'3',NULL,'Asset>Account Receivable>Bengal corporation','1','1','6','2020-11-28 17:08:06','2020-11-28 17:11:05',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (12,'1001004','Alal Traders','Alal Traders',NULL,'1','1001',NULL,'3',NULL,'Asset>Account Receivable>Alal Traders','1','1','6','2020-11-28 17:11:36','2020-11-28 17:11:36',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (13,'1001005','Rahim Traders','Rahim Traders',NULL,'1','1001',NULL,'3',NULL,'Asset>Account Receivable>Rahim Traders','1','1','6','2020-11-28 17:13:28','2020-11-28 17:13:28',NULL);
insert  into `chart_of_accounts`(`id`,`code`,`code_desc`,`other_desc`,`code_tech_desc`,`code_level`,`p_code`,`b_code`,`acc_level`,`g_code`,`origin`,`created_by`,`updated_by`,`p_id`,`created_at`,`updated_at`,`deleted_at`) values (14,'2001','Account Payable','Account Payable',NULL,'1','2',NULL,'2',NULL,'Liability>Account Payable','1','1','2','2020-11-28 17:14:44','2020-11-28 17:14:44',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
