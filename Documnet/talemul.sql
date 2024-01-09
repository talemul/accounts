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
/*Table structure for table `admin_menu` */

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_menu` */

insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL);
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (23,0,8,'Helpers','fas fa-cogs','',NULL,'2020-11-20 19:53:27','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (24,23,9,'Scaffold','fas fa-keyboard','helpers/scaffold',NULL,'2020-11-20 19:53:27','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (25,23,10,'Database terminal','fas fa-database','helpers/terminal/database',NULL,'2020-11-20 19:53:27','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (26,23,11,'Laravel artisan','fas fa-terminal','helpers/terminal/artisan',NULL,'2020-11-20 19:53:27','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (27,23,12,'Routes','fas fa-list-alt','helpers/routes',NULL,'2020-11-20 19:53:27','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (28,0,13,'Backup','fa-copy','backup',NULL,'2020-11-20 19:54:45','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (34,0,14,'Log viewer','fa-database','logs',NULL,'2020-11-20 19:56:02','2020-11-20 20:44:08');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (38,0,0,'BuildingInformation','fa-bars','building_information',NULL,'2020-11-27 16:06:32','2020-11-27 16:06:32');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (39,0,0,'UnitInformation','fa-bars','unit_information',NULL,'2020-11-27 16:06:54','2020-11-27 16:06:54');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (40,0,0,'ShiftInformation','fa-bars','shift_information',NULL,'2020-11-27 16:07:28','2020-11-27 16:07:28');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (41,0,0,'SectionInformation','fa-bars','section_information',NULL,'2020-11-27 16:08:03','2020-11-27 16:08:03');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (42,0,0,'ReligionInformation','fa-bars','religion_information',NULL,'2020-11-27 16:08:21','2020-11-27 16:08:21');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (43,0,0,'DistrictInformation','fa-bars','district_information',NULL,'2020-11-27 16:08:40','2020-11-27 16:08:40');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (44,0,0,'DesignationInformation','fa-bars','designation_information',NULL,'2020-11-27 16:08:58','2020-11-27 16:08:58');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (45,0,0,'ProjectInformation','fa-bars','project_information',NULL,'2020-11-27 16:09:21','2020-11-27 16:09:21');
insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (46,0,0,'DepartmentInformation','fa-bars','department_information',NULL,'2020-11-27 16:09:36','2020-11-27 16:09:36');

/*Table structure for table `admin_operation_log` */

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_operation_log` */

insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (1,1,'admin','GET','127.0.0.1','[]','2020-11-20 19:29:44','2020-11-20 19:29:44');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (2,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 19:30:26','2020-11-20 19:30:26');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (3,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 19:30:44','2020-11-20 19:30:44');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (4,1,'admin/auth/permissions','GET','127.0.0.1','[]','2020-11-20 20:40:41','2020-11-20 20:40:41');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (5,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:40:57','2020-11-20 20:40:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (6,1,'admin/helpers/terminal/database','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:41:01','2020-11-20 20:41:01');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (7,1,'admin/helpers/terminal/artisan','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:41:03','2020-11-20 20:41:03');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (8,1,'admin/helpers/routes','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:41:04','2020-11-20 20:41:04');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (9,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:41:40','2020-11-20 20:41:40');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (10,1,'admin/helpers/routes','GET','127.0.0.1','[]','2020-11-20 20:41:41','2020-11-20 20:41:41');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (11,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:41:58','2020-11-20 20:41:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (12,1,'admin/helpers/routes','GET','127.0.0.1','[]','2020-11-20 20:41:58','2020-11-20 20:41:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (13,1,'admin/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:42:00','2020-11-20 20:42:00');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (14,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:43:17','2020-11-20 20:43:17');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (15,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:43:26','2020-11-20 20:43:26');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (16,1,'admin/auth/menu/35','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:43:39','2020-11-20 20:43:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (17,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:43:39','2020-11-20 20:43:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (18,1,'admin/auth/menu/29','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:43:43','2020-11-20 20:43:43');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (19,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:43:44','2020-11-20 20:43:44');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (20,1,'admin/auth/menu/18','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:43:51','2020-11-20 20:43:51');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (21,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:43:52','2020-11-20 20:43:52');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (22,1,'admin/auth/menu/8','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:43:57','2020-11-20 20:43:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (23,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:43:57','2020-11-20 20:43:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (24,1,'admin/auth/menu/13','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:44:02','2020-11-20 20:44:02');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (25,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:44:02','2020-11-20 20:44:02');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (26,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":23,\\\"children\\\":[{\\\"id\\\":24},{\\\"id\\\":25},{\\\"id\\\":26},{\\\"id\\\":27}]},{\\\"id\\\":28},{\\\"id\\\":34}]\"}','2020-11-20 20:44:08','2020-11-20 20:44:08');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (27,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:44:09','2020-11-20 20:44:09');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (28,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-20 20:44:10','2020-11-20 20:44:10');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (29,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:44:18','2020-11-20 20:44:18');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (30,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-20 20:44:18','2020-11-20 20:44:18');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (31,1,'admin/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:44:20','2020-11-20 20:44:20');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (32,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:53:00','2020-11-20 20:53:00');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (33,1,'admin/logs','GET','127.0.0.1','[]','2020-11-20 20:53:00','2020-11-20 20:53:00');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (34,1,'admin/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:53:18','2020-11-20 20:53:18');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (35,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:58:07','2020-11-20 20:58:07');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (36,1,'admin/logs','GET','127.0.0.1','[]','2020-11-20 20:58:08','2020-11-20 20:58:08');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (37,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 20:59:27','2020-11-20 20:59:27');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (38,1,'admin/backup/run','POST','127.0.0.1','{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:59:35','2020-11-20 20:59:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (39,1,'admin/backup/run','POST','127.0.0.1','{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 20:59:46','2020-11-20 20:59:46');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (40,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 20:59:57','2020-11-20 20:59:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (41,1,'admin/backup/run','POST','127.0.0.1','{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 21:00:47','2020-11-20 21:00:47');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (42,1,'admin/backup/run','POST','127.0.0.1','{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 21:01:37','2020-11-20 21:01:37');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (43,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:06:14','2020-11-20 21:06:14');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (44,1,'admin/logs','GET','127.0.0.1','[]','2020-11-20 21:06:52','2020-11-20 21:06:52');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (45,1,'admin/logs','GET','127.0.0.1','[]','2020-11-20 21:06:57','2020-11-20 21:06:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (46,1,'admin/logs','GET','127.0.0.1','[]','2020-11-20 21:08:16','2020-11-20 21:08:16');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (47,1,'admin/logs','GET','127.0.0.1','[]','2020-11-20 21:08:19','2020-11-20 21:08:19');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (48,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:08:23','2020-11-20 21:08:23');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (49,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:08:24','2020-11-20 21:08:24');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (50,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:08:57','2020-11-20 21:08:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (51,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:10:05','2020-11-20 21:10:05');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (52,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 21:12:11','2020-11-20 21:12:11');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (53,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:12','2020-11-20 21:12:12');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (54,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:12','2020-11-20 21:12:12');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (55,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:13','2020-11-20 21:12:13');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (56,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:14','2020-11-20 21:12:14');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (57,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:14','2020-11-20 21:12:14');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (58,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:15','2020-11-20 21:12:15');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (59,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:16','2020-11-20 21:12:16');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (60,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:16','2020-11-20 21:12:16');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (61,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:17','2020-11-20 21:12:17');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (62,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:17','2020-11-20 21:12:17');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (63,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:18','2020-11-20 21:12:18');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (64,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:19','2020-11-20 21:12:19');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (65,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:20','2020-11-20 21:12:20');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (66,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:20','2020-11-20 21:12:20');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (67,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:21','2020-11-20 21:12:21');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (68,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:21','2020-11-20 21:12:21');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (69,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:22','2020-11-20 21:12:22');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (70,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:23','2020-11-20 21:12:23');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (71,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:24','2020-11-20 21:12:24');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (72,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:24','2020-11-20 21:12:24');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (73,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:12:25','2020-11-20 21:12:25');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (74,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:12:46','2020-11-20 21:12:46');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (75,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:18:58','2020-11-20 21:18:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (76,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 21:20:34','2020-11-20 21:20:34');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (77,1,'admin','GET','127.0.0.1','[]','2020-11-20 21:20:34','2020-11-20 21:20:34');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (78,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 21:20:35','2020-11-20 21:20:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (79,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:35','2020-11-20 21:20:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (80,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:35','2020-11-20 21:20:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (81,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:36','2020-11-20 21:20:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (82,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:36','2020-11-20 21:20:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (83,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:36','2020-11-20 21:20:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (84,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:36','2020-11-20 21:20:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (85,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:36','2020-11-20 21:20:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (86,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:37','2020-11-20 21:20:37');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (87,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:37','2020-11-20 21:20:37');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (88,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:37','2020-11-20 21:20:37');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (89,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:38','2020-11-20 21:20:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (90,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:38','2020-11-20 21:20:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (91,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:38','2020-11-20 21:20:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (92,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:38','2020-11-20 21:20:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (93,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:38','2020-11-20 21:20:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (94,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:39','2020-11-20 21:20:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (95,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:39','2020-11-20 21:20:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (96,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:39','2020-11-20 21:20:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (97,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:39','2020-11-20 21:20:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (98,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:40','2020-11-20 21:20:40');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (99,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:20:40','2020-11-20 21:20:40');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (100,1,'admin/backup','GET','127.0.0.1','[]','2020-11-20 21:21:13','2020-11-20 21:21:13');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (101,1,'admin/backup/run','POST','127.0.0.1','{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 21:21:21','2020-11-20 21:21:21');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (102,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 21:41:58','2020-11-20 21:41:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (103,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"test_table\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"column_name\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 21:43:26','2020-11-20 21:43:26');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (104,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-20 21:43:26','2020-11-20 21:43:26');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (105,1,'admin/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 21:43:44','2020-11-20 21:43:44');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (106,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 21:52:45','2020-11-20 21:52:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (107,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"banglas\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"Name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 21:52:55','2020-11-20 21:52:55');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (108,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-20 21:52:55','2020-11-20 21:52:55');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (109,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"test_table\",\"model_name\":\"App\\\\Models\\\\TestTable\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TestTableController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"column_name\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 21:54:33','2020-11-20 21:54:33');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (110,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-20 21:54:33','2020-11-20 21:54:33');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (111,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:01:06','2020-11-20 22:01:06');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (112,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:01:54','2020-11-20 22:01:54');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (113,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:02:00','2020-11-20 22:02:00');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (114,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-20 22:02:28','2020-11-20 22:02:28');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (115,1,'admin/test_table','POST','127.0.0.1','{\"name\":\"Talemul Islam\",\"column_name\":{\"new_1\":{\"key\":\"sdf\",\"value\":\"ewr\",\"desc\":null,\"_remove_\":\"0\"},\"new_2\":{\"key\":null,\"value\":\"ewr\",\"desc\":null,\"_remove_\":\"0\"},\"new_3\":{\"key\":null,\"value\":\"ewt\",\"desc\":\"ewt\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}','2020-11-20 22:02:47','2020-11-20 22:02:47');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (116,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:02:47','2020-11-20 22:02:47');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (117,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:02:54','2020-11-20 22:02:54');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (118,1,'admin/test_table','POST','127.0.0.1','{\"name\":\"Bangla\",\"column_name\":{\"new_1\":{\"key\":\"fds\",\"value\":\"sdf\",\"desc\":\"fds\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"sdf\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"sfd\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}','2020-11-20 22:03:10','2020-11-20 22:03:10');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (119,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:03:10','2020-11-20 22:03:10');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (120,1,'admin/test_table/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:03:30','2020-11-20 22:03:30');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (121,1,'admin/test_table/2','PUT','127.0.0.1','{\"name\":\"Bangla\",\"column_name\":[{\"key\":\"fds\",\"value\":\"sdf\",\"desc\":\"fds\",\"_remove_\":\"0\"},{\"key\":\"sdf\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"1\"},{\"key\":\"sfd\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"0\"}],\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}','2020-11-20 22:03:38','2020-11-20 22:03:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (122,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:03:38','2020-11-20 22:03:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (123,1,'admin/test_table/2','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:03:45','2020-11-20 22:03:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (124,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:03:46','2020-11-20 22:03:46');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (125,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:04:45','2020-11-20 22:04:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (126,1,'admin/test_table/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:04:51','2020-11-20 22:04:51');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (127,1,'admin/test_table','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:04:54','2020-11-20 22:04:54');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (128,1,'admin/_handle_action_','POST','127.0.0.1','{\"_key\":\"1\",\"_model\":\"App_Models_TestTable\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2020-11-20 22:04:59','2020-11-20 22:04:59');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (129,1,'admin/test_table','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:04:59','2020-11-20 22:04:59');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (130,1,'admin/test_table/2','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 22:05:08','2020-11-20 22:05:08');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (131,1,'admin/test_table','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:05:08','2020-11-20 22:05:08');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (132,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:05:15','2020-11-20 22:05:15');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (133,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:05:41','2020-11-20 22:05:41');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (134,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:05:53','2020-11-20 22:05:53');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (135,1,'admin/test_table/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:10:20','2020-11-20 22:10:20');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (136,1,'admin/test_table','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:10:30','2020-11-20 22:10:30');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (137,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:10:33','2020-11-20 22:10:33');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (138,1,'admin/test_table','POST','127.0.0.1','{\"name\":\"Talemul Islam\",\"column_name\":{\"new_1\":{\"key\":\"fee\",\"value\":\"jnj\",\"desc\":\"jnjn\",\"_remove_\":\"0\"},\"new_2\":{\"key\":null,\"value\":\"jnnj\",\"desc\":\"njn\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"jn\",\"value\":\"jn\",\"desc\":\"k,\",\"_remove_\":\"0\"},\"new_4\":{\"key\":\"m,\",\"value\":\"m,\",\"desc\":\"mm,\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}','2020-11-20 22:11:03','2020-11-20 22:11:03');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (139,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:11:04','2020-11-20 22:11:04');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (140,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:11:46','2020-11-20 22:11:46');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (141,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-20 22:14:07','2020-11-20 22:14:07');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (142,1,'admin/test_table','POST','127.0.0.1','{\"name\":null,\"column_name\":{\"new_1\":{\"key\":\"532\",\"selectbox\":\"val\",\"value\":\"324\",\"desc\":\"32\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"325\",\"selectbox\":\"2\",\"value\":\"325\",\"desc\":\"352\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"325\",\"selectbox\":\"1\",\"value\":\"325\",\"desc\":\"325\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}','2020-11-20 22:14:34','2020-11-20 22:14:34');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (143,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-20 22:14:35','2020-11-20 22:14:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (144,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:14:51','2020-11-20 22:14:51');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (145,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-20 22:15:11','2020-11-20 22:15:11');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (146,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-20 22:18:24','2020-11-20 22:18:24');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (147,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:19:02','2020-11-20 22:19:02');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (148,1,'admin/auth/menu/37','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 22:19:07','2020-11-20 22:19:07');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (149,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:19:07','2020-11-20 22:19:07');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (150,1,'admin/auth/menu/36','DELETE','127.0.0.1','{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}','2020-11-20 22:19:12','2020-11-20 22:19:12');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (151,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:19:12','2020-11-20 22:19:12');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (152,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-20 22:20:05','2020-11-20 22:20:05');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (153,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-20 22:21:38','2020-11-20 22:21:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (154,1,'admin','GET','127.0.0.1','[]','2020-11-23 17:09:28','2020-11-23 17:09:28');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (155,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:09:38','2020-11-23 17:09:38');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (156,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:10:45','2020-11-23 17:10:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (157,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:10:55','2020-11-23 17:10:55');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (158,1,'admin/auth/roles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:11:00','2020-11-23 17:11:00');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (159,1,'admin/auth/roles','POST','127.0.0.1','{\"slug\":\"backup\",\"name\":\"backup\",\"permissions\":[\"11\",null],\"_token\":\"WL4SRG9ZEZenSiVvGjsaFgnosHBVP46Xz0EEWm3a\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}','2020-11-23 17:11:31','2020-11-23 17:11:31');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (160,1,'admin/auth/roles','GET','127.0.0.1','[]','2020-11-23 17:11:31','2020-11-23 17:11:31');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (161,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:11:35','2020-11-23 17:11:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (162,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:11:37','2020-11-23 17:11:37');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (163,1,'admin/backup','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:12:20','2020-11-23 17:12:20');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (164,1,'admin/backup/run','POST','127.0.0.1','{\"_token\":\"WL4SRG9ZEZenSiVvGjsaFgnosHBVP46Xz0EEWm3a\"}','2020-11-23 17:12:22','2020-11-23 17:12:22');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (165,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:12:31','2020-11-23 17:12:31');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (166,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-23 17:23:45','2020-11-23 17:23:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (167,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-23 17:23:55','2020-11-23 17:23:55');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (168,1,'admin','GET','127.0.0.1','[]','2020-11-25 15:07:40','2020-11-25 15:07:40');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (169,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-25 15:08:01','2020-11-25 15:08:01');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (170,1,'admin/test_table/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-25 15:08:12','2020-11-25 15:08:12');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (171,1,'admin/test_table/3/edit','GET','127.0.0.1','[]','2020-11-25 15:37:46','2020-11-25 15:37:46');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (172,1,'admin/test_table','GET','127.0.0.1','[]','2020-11-25 15:39:28','2020-11-25 15:39:28');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (173,1,'admin/test_table/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-25 15:39:31','2020-11-25 15:39:31');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (174,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:40:48','2020-11-25 15:40:48');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (175,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:46:11','2020-11-25 15:46:11');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (176,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:54:39','2020-11-25 15:54:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (177,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:54:39','2020-11-25 15:54:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (178,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:54:39','2020-11-25 15:54:39');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (179,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:54:40','2020-11-25 15:54:40');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (180,1,'admin/test_table/create','GET','127.0.0.1','[]','2020-11-25 15:54:49','2020-11-25 15:54:49');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (181,1,'admin','GET','127.0.0.1','[]','2020-11-27 15:32:51','2020-11-27 15:32:51');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (182,1,'admin/helpers/scaffold','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 15:33:10','2020-11-27 15:33:10');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (183,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"project_informations\",\"model_name\":\"App\\\\Models\\\\ProjectInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectInformationController\",\"create\":[\"migration\",\"model\",\"controller\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"projecr_address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 15:36:01','2020-11-27 15:36:01');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (184,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-27 15:36:02','2020-11-27 15:36:02');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (185,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"project_informations\",\"model_name\":\"App\\\\Models\\\\ProjectInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectInformationController\",\"create\":[\"migration\",\"migrate\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"projecr_address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 15:42:30','2020-11-27 15:42:30');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (186,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-27 15:42:31','2020-11-27 15:42:31');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (187,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"section_informations\",\"model_name\":\"App\\\\Models\\\\SectionInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SectionInformationController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"others_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 15:45:57','2020-11-27 15:45:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (188,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-27 15:45:58','2020-11-27 15:45:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (189,1,'admin/helpers/scaffold','POST','127.0.0.1','{\"table_name\":\"department_informations\",\"model_name\":\"App\\\\Models\\\\DepartmentInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DepartmentInformationController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"other_descriptions\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 15:47:35','2020-11-27 15:47:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (190,1,'admin/helpers/scaffold','GET','127.0.0.1','[]','2020-11-27 15:47:35','2020-11-27 15:47:35');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (191,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:05:57','2020-11-27 16:05:57');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (192,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"BuildingInformation\",\"icon\":\"fa-bars\",\"uri\":\"building_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:06:32','2020-11-27 16:06:32');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (193,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:06:33','2020-11-27 16:06:33');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (194,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"UnitInformation\",\"icon\":\"fa-bars\",\"uri\":\"unit_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:06:54','2020-11-27 16:06:54');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (195,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:06:55','2020-11-27 16:06:55');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (196,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"ShiftInformation\",\"icon\":\"fa-bars\",\"uri\":\"shift_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:07:28','2020-11-27 16:07:28');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (197,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:07:29','2020-11-27 16:07:29');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (198,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"SectionInformation\",\"icon\":\"fa-bars\",\"uri\":\"section_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:08:03','2020-11-27 16:08:03');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (199,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:08:04','2020-11-27 16:08:04');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (200,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"ReligionInformation\",\"icon\":\"fa-bars\",\"uri\":\"religion_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:08:21','2020-11-27 16:08:21');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (201,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:08:22','2020-11-27 16:08:22');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (202,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"DistrictInformation\",\"icon\":\"fa-bars\",\"uri\":\"district_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:08:40','2020-11-27 16:08:40');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (203,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:08:41','2020-11-27 16:08:41');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (204,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"DesignationInformation\",\"icon\":\"fa-bars\",\"uri\":\"designation_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:08:58','2020-11-27 16:08:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (205,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:08:58','2020-11-27 16:08:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (206,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"ProjectInformation\",\"icon\":\"fa-bars\",\"uri\":\"project_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:09:21','2020-11-27 16:09:21');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (207,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:09:22','2020-11-27 16:09:22');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (208,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"DepartmentInformation\",\"icon\":\"fa-bars\",\"uri\":\"department_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}','2020-11-27 16:09:36','2020-11-27 16:09:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (209,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:09:36','2020-11-27 16:09:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (210,1,'admin/auth/menu','GET','127.0.0.1','[]','2020-11-27 16:10:25','2020-11-27 16:10:25');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (211,1,'admin/building_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:10:36','2020-11-27 16:10:36');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (212,1,'admin/building_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:09','2020-11-27 16:12:09');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (213,1,'admin/unit_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:11','2020-11-27 16:12:11');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (214,1,'admin/shift_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:13','2020-11-27 16:12:13');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (215,1,'admin/section_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:14','2020-11-27 16:12:14');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (216,1,'admin/religion_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:15','2020-11-27 16:12:15');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (217,1,'admin/religion_information/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:17','2020-11-27 16:12:17');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (218,1,'admin/project_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:22','2020-11-27 16:12:22');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (219,1,'admin/project_information/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:12:24','2020-11-27 16:12:24');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (220,1,'admin/project_information','POST','127.0.0.1','{\"description\":\"CRM\",\"projecr_address\":\"badda\",\"address2\":\"badda, dhaka\",\"level\":\"1\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}','2020-11-27 16:13:16','2020-11-27 16:13:16');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (221,1,'admin/project_information','GET','127.0.0.1','[]','2020-11-27 16:13:16','2020-11-27 16:13:16');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (222,1,'admin/project_information/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:13:22','2020-11-27 16:13:22');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (223,1,'admin/project_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:13:26','2020-11-27 16:13:26');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (224,1,'admin/project_information/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:13:29','2020-11-27 16:13:29');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (225,1,'admin/project_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:13:33','2020-11-27 16:13:33');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (226,1,'admin/project_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:14:06','2020-11-27 16:14:06');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (227,1,'admin/project_information','GET','127.0.0.1','[]','2020-11-27 16:17:45','2020-11-27 16:17:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (228,1,'admin/project_information/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:18:00','2020-11-27 16:18:00');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (229,1,'admin/project_information','POST','127.0.0.1','{\"name\":\"HRM\",\"description\":\"HRM project\",\"projecr_address\":\"Highway Homes \\u2013 2nd floor KA \\u2013 32\\/6 Shahjadpur, Pragoti Sharoni, Gulshan\",\"address2\":\"Dhaka\",\"level\":\"2\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}','2020-11-27 16:18:49','2020-11-27 16:18:49');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (230,1,'admin/project_information','GET','127.0.0.1','[]','2020-11-27 16:18:49','2020-11-27 16:18:49');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (231,1,'admin/project_information/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:18:55','2020-11-27 16:18:55');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (232,1,'admin/project_information/1','PUT','127.0.0.1','{\"name\":\"CRM\",\"description\":\"CRM project\",\"projecr_address\":\"badda\",\"address2\":\"badda, dhaka\",\"level\":\"1\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}','2020-11-27 16:19:05','2020-11-27 16:19:05');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (233,1,'admin/project_information','GET','127.0.0.1','[]','2020-11-27 16:19:05','2020-11-27 16:19:05');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (234,1,'admin/project_information/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:21:54','2020-11-27 16:21:54');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (235,1,'admin/project_information','POST','127.0.0.1','{\"name\":\"Bangladesh Thai\",\"description\":\"Bangladesh Thai\",\"projecr_address\":\"Badda Dhaka\",\"address2\":\"Banani Dhaka\",\"level\":\"1\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}','2020-11-27 16:22:51','2020-11-27 16:22:51');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (236,1,'admin/project_information','GET','127.0.0.1','[]','2020-11-27 16:22:51','2020-11-27 16:22:51');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (237,1,'admin/project_information/3','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:22:56','2020-11-27 16:22:56');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (238,1,'admin/project_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:22:58','2020-11-27 16:22:58');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (239,1,'admin/project_information/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:23:01','2020-11-27 16:23:01');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (240,1,'admin/project_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:23:04','2020-11-27 16:23:04');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (241,1,'admin/department_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:23:17','2020-11-27 16:23:17');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (242,1,'admin/department_information/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:23:19','2020-11-27 16:23:19');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (243,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:23:50','2020-11-27 16:23:50');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (244,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:24:02','2020-11-27 16:24:02');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (245,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:24:05','2020-11-27 16:24:05');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (246,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:24:11','2020-11-27 16:24:11');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (247,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:24:19','2020-11-27 16:24:19');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (248,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:24:46','2020-11-27 16:24:46');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (249,1,'admin/building_information','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:25:45','2020-11-27 16:25:45');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (250,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:26:07','2020-11-27 16:26:07');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (251,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:26:10','2020-11-27 16:26:10');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (252,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:26:27','2020-11-27 16:26:27');
insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values (253,1,'admin/logs','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2020-11-27 16:26:40','2020-11-27 16:26:40');

/*Table structure for table `admin_permissions` */

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_permissions` */

insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (1,'All permission','*','','*',NULL,NULL);
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (2,'Dashboard','dashboard','GET','/',NULL,NULL);
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL);
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL);
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (7,'Admin helpers','ext.helpers','','/helpers/*','2020-11-20 19:55:45','2020-11-20 19:55:45');
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (8,'Logs','ext.log-viewer','','/logs*','2020-11-20 19:56:02','2020-11-20 19:56:02');
insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (11,'Backup','ext.backup','','/backup*','2020-11-20 21:20:10','2020-11-20 21:20:10');

/*Table structure for table `admin_role_menu` */

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_menu` */

insert  into `admin_role_menu`(`role_id`,`menu_id`,`created_at`,`updated_at`) values (1,2,NULL,NULL);

/*Table structure for table `admin_role_permissions` */

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_permissions` */

insert  into `admin_role_permissions`(`role_id`,`permission_id`,`created_at`,`updated_at`) values (1,1,NULL,NULL);
insert  into `admin_role_permissions`(`role_id`,`permission_id`,`created_at`,`updated_at`) values (2,11,NULL,NULL);

/*Table structure for table `admin_role_users` */

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_users` */

insert  into `admin_role_users`(`role_id`,`user_id`,`created_at`,`updated_at`) values (1,1,NULL,NULL);

/*Table structure for table `admin_roles` */

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_roles` */

insert  into `admin_roles`(`id`,`name`,`slug`,`created_at`,`updated_at`) values (1,'Administrator','administrator','2020-11-20 19:24:48','2020-11-20 19:24:48');
insert  into `admin_roles`(`id`,`name`,`slug`,`created_at`,`updated_at`) values (2,'backup','backup','2020-11-23 17:11:31','2020-11-23 17:11:31');

/*Table structure for table `admin_user_permissions` */

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_user_permissions` */

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`username`,`password`,`name`,`avatar`,`remember_token`,`created_at`,`updated_at`) values (1,'admin','$2y$10$uWjs/EjATf/LsevM2StTr.C..NzJ.gpGmpkevG8BTKckl0A1D1NXi','Administrator',NULL,'g4tsbgKYIJ9FUNpKytkqnsG4HlsVKWc86R6EStdzTfmr6SrdVFNqb6uFUznT','2020-11-20 19:24:48','2020-11-20 19:24:48');

/*Table structure for table `building_informations` */

DROP TABLE IF EXISTS `building_informations`;

CREATE TABLE `building_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `building_informations` */

/*Table structure for table `department_informations` */

DROP TABLE IF EXISTS `department_informations`;

CREATE TABLE `department_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `department_informations` */

/*Table structure for table `designation_informations` */

DROP TABLE IF EXISTS `designation_informations`;

CREATE TABLE `designation_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `designation_informations` */

/*Table structure for table `district_informations` */

DROP TABLE IF EXISTS `district_informations`;

CREATE TABLE `district_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `district_informations` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (2,'2014_10_12_100000_create_password_resets_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (3,'2016_01_04_173148_create_admin_tables',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (4,'2019_08_19_000000_create_failed_jobs_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (5,'2020_11_27_154230_create_project_informations_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (6,'2020_11_27_154557_create_section_informations_table',3);
insert  into `migrations`(`id`,`migration`,`batch`) values (7,'2020_11_27_154735_create_department_informations_table',4);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `project_informations` */

DROP TABLE IF EXISTS `project_informations`;

CREATE TABLE `project_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projecr_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_informations` */

insert  into `project_informations`(`id`,`name`,`description`,`projecr_address`,`address2`,`level`,`created_at`,`updated_at`,`deleted_at`) values (1,'CRM','CRM project','badda','badda, dhaka','1','2020-11-27 16:13:16','2020-11-27 16:19:05',NULL);
insert  into `project_informations`(`id`,`name`,`description`,`projecr_address`,`address2`,`level`,`created_at`,`updated_at`,`deleted_at`) values (2,'HRM','HRM project','Highway Homes – 2nd floor KA – 32/6 Shahjadpur, Pragoti Sharoni, Gulshan','Dhaka','2','2020-11-27 16:18:49','2020-11-27 16:18:49',NULL);
insert  into `project_informations`(`id`,`name`,`description`,`projecr_address`,`address2`,`level`,`created_at`,`updated_at`,`deleted_at`) values (3,'Bangladesh Thai','Bangladesh Thai','Badda Dhaka','Banani Dhaka','1','2020-11-27 16:22:51','2020-11-27 16:22:51',NULL);

/*Table structure for table `religion_informations` */

DROP TABLE IF EXISTS `religion_informations`;

CREATE TABLE `religion_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `religion_informations` */

/*Table structure for table `section_informations` */

DROP TABLE IF EXISTS `section_informations`;

CREATE TABLE `section_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `section_informations` */

/*Table structure for table `shift_informations` */

DROP TABLE IF EXISTS `shift_informations`;

CREATE TABLE `shift_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `shift_informations` */

/*Table structure for table `test_table` */

DROP TABLE IF EXISTS `test_table`;

CREATE TABLE `test_table` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `column_name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_table` */

insert  into `test_table`(`id`,`name`,`column_name`,`created_at`,`updated_at`,`deleted_at`) values (1,'Talemul Islam','[{\"key\":\"sdf\",\"value\":\"ewr\"},{\"value\":\"ewr\"},{\"value\":\"ewt\",\"desc\":\"ewt\"}]','2020-11-21 04:04:59','2020-11-20 22:04:59','2020-11-20 22:04:59');
insert  into `test_table`(`id`,`name`,`column_name`,`created_at`,`updated_at`,`deleted_at`) values (2,'Bangla','[{\"key\":\"fds\",\"value\":\"sdf\",\"desc\":\"fds\"},{\"key\":\"sfd\",\"value\":\"dsf\",\"desc\":\"dsf\"}]','2020-11-21 04:05:51','2020-11-20 22:05:08',NULL);
insert  into `test_table`(`id`,`name`,`column_name`,`created_at`,`updated_at`,`deleted_at`) values (3,'Talemul Islam','[{\"key\":\"fee\",\"value\":\"jnj\",\"desc\":\"jnjn\"},{\"value\":\"jnnj\",\"desc\":\"njn\"},{\"key\":\"jn\",\"value\":\"jn\",\"desc\":\"k,\"},{\"key\":\"m,\",\"value\":\"m,\",\"desc\":\"mm,\"}]','2020-11-20 22:11:03','2020-11-20 22:11:03',NULL);
insert  into `test_table`(`id`,`name`,`column_name`,`created_at`,`updated_at`,`deleted_at`) values (4,NULL,'[{\"key\":\"532\",\"selectbox\":\"val\",\"value\":\"324\",\"desc\":\"32\"},{\"key\":\"325\",\"selectbox\":\"2\",\"value\":\"325\",\"desc\":\"352\"},{\"key\":\"325\",\"selectbox\":\"1\",\"value\":\"325\",\"desc\":\"325\"}]','2020-11-20 22:14:34','2020-11-20 22:14:34',NULL);

/*Table structure for table `unit_informations` */

DROP TABLE IF EXISTS `unit_informations`;

CREATE TABLE `unit_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `unit_informations` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
