-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2020 at 05:53 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_talemul`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 17, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2020-12-04 18:08:15'),
(2, 0, 18, 'Admin', 'fa-tasks', '', NULL, NULL, '2020-12-04 18:08:15'),
(3, 2, 19, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-12-04 18:08:15'),
(4, 2, 20, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-12-04 18:08:15'),
(5, 2, 21, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-12-04 18:08:15'),
(6, 2, 22, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-12-04 18:08:15'),
(7, 2, 23, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-12-04 18:08:15'),
(28, 0, 24, 'Backup', 'fa-copy', 'backup', NULL, '2020-11-21 01:54:45', '2020-12-04 18:08:15'),
(34, 0, 25, 'Log viewer', 'fa-database', 'logs', NULL, '2020-11-21 01:56:02', '2020-12-04 18:08:15'),
(38, 48, 9, 'BuildingInformation', 'fa-bars', 'building_information', NULL, '2020-11-27 22:06:32', '2020-12-04 18:08:15'),
(39, 50, 5, 'UnitInformation', 'fa-bars', 'unit_information', NULL, '2020-11-27 22:06:54', '2020-12-04 18:08:15'),
(40, 48, 10, 'ShiftInformation', 'fa-bars', 'shift_information', NULL, '2020-11-27 22:07:28', '2020-12-04 18:08:15'),
(41, 48, 11, 'SectionInformation', 'fa-bars', 'section_information', NULL, '2020-11-27 22:08:03', '2020-12-04 18:08:15'),
(42, 48, 12, 'ReligionInformation', 'fa-bars', 'religion_information', NULL, '2020-11-27 22:08:21', '2020-12-04 18:08:15'),
(43, 48, 13, 'DistrictInformation', 'fa-bars', 'district_information', NULL, '2020-11-27 22:08:40', '2020-12-04 18:08:15'),
(44, 48, 14, 'DesignationInformation', 'fa-bars', 'designation_information', NULL, '2020-11-27 22:08:58', '2020-12-04 18:08:15'),
(45, 48, 15, 'ProjectInformation', 'fa-bars', 'project_information', NULL, '2020-11-27 22:09:21', '2020-12-04 18:08:15'),
(46, 48, 16, 'DepartmentInformation', 'fa-bars', 'department_information', NULL, '2020-11-27 22:09:36', '2020-12-04 18:08:15'),
(47, 49, 7, 'ChartOfAccount', 'fa-bars', 'chart_of_accounts', NULL, '2020-11-28 23:24:02', '2020-12-04 18:08:15'),
(48, 0, 8, 'System Information', 'fa-bars', NULL, NULL, '2020-12-04 15:07:14', '2020-12-04 18:08:15'),
(49, 0, 6, 'Accounts', 'fa-bars', NULL, NULL, '2020-12-04 15:08:29', '2020-12-04 18:08:15'),
(50, 0, 1, 'Inventory', 'fa-bars', NULL, NULL, '2020-12-04 18:06:41', '2020-12-04 18:08:15'),
(51, 50, 2, 'Item', 'fa-bars', 'iteams', NULL, '2020-12-04 18:07:09', '2020-12-04 18:08:15'),
(52, 50, 3, 'Size Information', 'fa-bars', 'size_information', NULL, '2020-12-04 18:07:35', '2020-12-04 18:08:15'),
(53, 50, 4, 'Packing Information', 'fa-bars', 'packing_information', NULL, '2020-12-04 18:07:56', '2020-12-04 18:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 01:29:44', '2020-11-21 01:29:44'),
(2, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 01:30:26', '2020-11-21 01:30:26'),
(3, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 01:30:44', '2020-11-21 01:30:44'),
(4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-11-21 02:40:41', '2020-11-21 02:40:41'),
(5, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:40:57', '2020-11-21 02:40:57'),
(6, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:41:01', '2020-11-21 02:41:01'),
(7, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:41:03', '2020-11-21 02:41:03'),
(8, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:41:04', '2020-11-21 02:41:04'),
(9, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:41:40', '2020-11-21 02:41:40'),
(10, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2020-11-21 02:41:41', '2020-11-21 02:41:41'),
(11, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:41:58', '2020-11-21 02:41:58'),
(12, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2020-11-21 02:41:58', '2020-11-21 02:41:58'),
(13, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:42:00', '2020-11-21 02:42:00'),
(14, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:43:17', '2020-11-21 02:43:17'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:43:26', '2020-11-21 02:43:26'),
(16, 1, 'admin/auth/menu/35', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:43:39', '2020-11-21 02:43:39'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:43:39', '2020-11-21 02:43:39'),
(18, 1, 'admin/auth/menu/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:43:43', '2020-11-21 02:43:43'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:43:44', '2020-11-21 02:43:44'),
(20, 1, 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:43:51', '2020-11-21 02:43:51'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:43:52', '2020-11-21 02:43:52'),
(22, 1, 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:43:57', '2020-11-21 02:43:57'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:43:57', '2020-11-21 02:43:57'),
(24, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:44:02', '2020-11-21 02:44:02'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:44:02', '2020-11-21 02:44:02'),
(26, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":23,\\\"children\\\":[{\\\"id\\\":24},{\\\"id\\\":25},{\\\"id\\\":26},{\\\"id\\\":27}]},{\\\"id\\\":28},{\\\"id\\\":34}]\"}', '2020-11-21 02:44:08', '2020-11-21 02:44:08'),
(27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:44:09', '2020-11-21 02:44:09'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-21 02:44:10', '2020-11-21 02:44:10'),
(29, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:44:18', '2020-11-21 02:44:18'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-21 02:44:18', '2020-11-21 02:44:18'),
(31, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:44:20', '2020-11-21 02:44:20'),
(32, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:53:00', '2020-11-21 02:53:00'),
(33, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2020-11-21 02:53:00', '2020-11-21 02:53:00'),
(34, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:53:18', '2020-11-21 02:53:18'),
(35, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:58:07', '2020-11-21 02:58:07'),
(36, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2020-11-21 02:58:08', '2020-11-21 02:58:08'),
(37, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 02:59:27', '2020-11-21 02:59:27'),
(38, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:59:35', '2020-11-21 02:59:35'),
(39, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 02:59:46', '2020-11-21 02:59:46'),
(40, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 02:59:57', '2020-11-21 02:59:57'),
(41, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 03:00:47', '2020-11-21 03:00:47'),
(42, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 03:01:37', '2020-11-21 03:01:37'),
(43, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:06:14', '2020-11-21 03:06:14'),
(44, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2020-11-21 03:06:52', '2020-11-21 03:06:52'),
(45, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2020-11-21 03:06:57', '2020-11-21 03:06:57'),
(46, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2020-11-21 03:08:16', '2020-11-21 03:08:16'),
(47, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2020-11-21 03:08:19', '2020-11-21 03:08:19'),
(48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:08:23', '2020-11-21 03:08:23'),
(49, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:08:24', '2020-11-21 03:08:24'),
(50, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:08:57', '2020-11-21 03:08:57'),
(51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:10:05', '2020-11-21 03:10:05'),
(52, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 03:12:11', '2020-11-21 03:12:11'),
(53, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:12', '2020-11-21 03:12:12'),
(54, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:12', '2020-11-21 03:12:12'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:13', '2020-11-21 03:12:13'),
(56, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:14', '2020-11-21 03:12:14'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:14', '2020-11-21 03:12:14'),
(58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:15', '2020-11-21 03:12:15'),
(59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:16', '2020-11-21 03:12:16'),
(60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:16', '2020-11-21 03:12:16'),
(61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:17', '2020-11-21 03:12:17'),
(62, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:17', '2020-11-21 03:12:17'),
(63, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:18', '2020-11-21 03:12:18'),
(64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:19', '2020-11-21 03:12:19'),
(65, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:20', '2020-11-21 03:12:20'),
(66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:20', '2020-11-21 03:12:20'),
(67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:21', '2020-11-21 03:12:21'),
(68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:21', '2020-11-21 03:12:21'),
(69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:22', '2020-11-21 03:12:22'),
(70, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:23', '2020-11-21 03:12:23'),
(71, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:24', '2020-11-21 03:12:24'),
(72, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:24', '2020-11-21 03:12:24'),
(73, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:25', '2020-11-21 03:12:25'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:12:46', '2020-11-21 03:12:46'),
(75, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:18:58', '2020-11-21 03:18:58'),
(76, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 03:20:34', '2020-11-21 03:20:34'),
(77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:34', '2020-11-21 03:20:34'),
(78, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 03:20:35', '2020-11-21 03:20:35'),
(79, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:35', '2020-11-21 03:20:35'),
(80, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:35', '2020-11-21 03:20:35'),
(81, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:36', '2020-11-21 03:20:36'),
(82, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:36', '2020-11-21 03:20:36'),
(83, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:36', '2020-11-21 03:20:36'),
(84, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:36', '2020-11-21 03:20:36'),
(85, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:36', '2020-11-21 03:20:36'),
(86, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:37', '2020-11-21 03:20:37'),
(87, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:37', '2020-11-21 03:20:37'),
(88, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:37', '2020-11-21 03:20:37'),
(89, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:38', '2020-11-21 03:20:38'),
(90, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:38', '2020-11-21 03:20:38'),
(91, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:38', '2020-11-21 03:20:38'),
(92, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:38', '2020-11-21 03:20:38'),
(93, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:38', '2020-11-21 03:20:38'),
(94, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:39', '2020-11-21 03:20:39'),
(95, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:39', '2020-11-21 03:20:39'),
(96, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:39', '2020-11-21 03:20:39'),
(97, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:39', '2020-11-21 03:20:39'),
(98, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:40', '2020-11-21 03:20:40'),
(99, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:20:40', '2020-11-21 03:20:40'),
(100, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2020-11-21 03:21:13', '2020-11-21 03:21:13'),
(101, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 03:21:21', '2020-11-21 03:21:21'),
(102, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 03:41:58', '2020-11-21 03:41:58'),
(103, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"test_table\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"column_name\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 03:43:26', '2020-11-21 03:43:26'),
(104, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-21 03:43:26', '2020-11-21 03:43:26'),
(105, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 03:43:44', '2020-11-21 03:43:44'),
(106, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 03:52:45', '2020-11-21 03:52:45'),
(107, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"banglas\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"Name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 03:52:55', '2020-11-21 03:52:55'),
(108, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-21 03:52:55', '2020-11-21 03:52:55'),
(109, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"test_table\",\"model_name\":\"App\\\\Models\\\\TestTable\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TestTableController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"column_name\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 03:54:33', '2020-11-21 03:54:33'),
(110, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-21 03:54:33', '2020-11-21 03:54:33'),
(111, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:01:06', '2020-11-21 04:01:06'),
(112, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:01:54', '2020-11-21 04:01:54'),
(113, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:02:00', '2020-11-21 04:02:00'),
(114, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-21 04:02:28', '2020-11-21 04:02:28'),
(115, 1, 'admin/test_table', 'POST', '127.0.0.1', '{\"name\":\"Talemul Islam\",\"column_name\":{\"new_1\":{\"key\":\"sdf\",\"value\":\"ewr\",\"desc\":null,\"_remove_\":\"0\"},\"new_2\":{\"key\":null,\"value\":\"ewr\",\"desc\":null,\"_remove_\":\"0\"},\"new_3\":{\"key\":null,\"value\":\"ewt\",\"desc\":\"ewt\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}', '2020-11-21 04:02:47', '2020-11-21 04:02:47'),
(116, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:02:47', '2020-11-21 04:02:47'),
(117, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:02:54', '2020-11-21 04:02:54'),
(118, 1, 'admin/test_table', 'POST', '127.0.0.1', '{\"name\":\"Bangla\",\"column_name\":{\"new_1\":{\"key\":\"fds\",\"value\":\"sdf\",\"desc\":\"fds\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"sdf\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"sfd\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}', '2020-11-21 04:03:10', '2020-11-21 04:03:10'),
(119, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:03:10', '2020-11-21 04:03:10'),
(120, 1, 'admin/test_table/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:03:30', '2020-11-21 04:03:30'),
(121, 1, 'admin/test_table/2', 'PUT', '127.0.0.1', '{\"name\":\"Bangla\",\"column_name\":[{\"key\":\"fds\",\"value\":\"sdf\",\"desc\":\"fds\",\"_remove_\":\"0\"},{\"key\":\"sdf\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"1\"},{\"key\":\"sfd\",\"value\":\"dsf\",\"desc\":\"dsf\",\"_remove_\":\"0\"}],\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}', '2020-11-21 04:03:38', '2020-11-21 04:03:38'),
(122, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:03:38', '2020-11-21 04:03:38'),
(123, 1, 'admin/test_table/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:03:45', '2020-11-21 04:03:45'),
(124, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:03:46', '2020-11-21 04:03:46'),
(125, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:04:45', '2020-11-21 04:04:45'),
(126, 1, 'admin/test_table/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:04:51', '2020-11-21 04:04:51'),
(127, 1, 'admin/test_table', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:04:54', '2020-11-21 04:04:54'),
(128, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_TestTable\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-21 04:04:59', '2020-11-21 04:04:59'),
(129, 1, 'admin/test_table', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:04:59', '2020-11-21 04:04:59'),
(130, 1, 'admin/test_table/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 04:05:08', '2020-11-21 04:05:08'),
(131, 1, 'admin/test_table', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:05:08', '2020-11-21 04:05:08'),
(132, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:05:15', '2020-11-21 04:05:15'),
(133, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:05:41', '2020-11-21 04:05:41'),
(134, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:05:53', '2020-11-21 04:05:53'),
(135, 1, 'admin/test_table/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:10:20', '2020-11-21 04:10:20'),
(136, 1, 'admin/test_table', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:10:30', '2020-11-21 04:10:30'),
(137, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:10:33', '2020-11-21 04:10:33'),
(138, 1, 'admin/test_table', 'POST', '127.0.0.1', '{\"name\":\"Talemul Islam\",\"column_name\":{\"new_1\":{\"key\":\"fee\",\"value\":\"jnj\",\"desc\":\"jnjn\",\"_remove_\":\"0\"},\"new_2\":{\"key\":null,\"value\":\"jnnj\",\"desc\":\"njn\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"jn\",\"value\":\"jn\",\"desc\":\"k,\",\"_remove_\":\"0\"},\"new_4\":{\"key\":\"m,\",\"value\":\"m,\",\"desc\":\"mm,\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}', '2020-11-21 04:11:03', '2020-11-21 04:11:03'),
(139, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:11:04', '2020-11-21 04:11:04'),
(140, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:11:46', '2020-11-21 04:11:46'),
(141, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-21 04:14:07', '2020-11-21 04:14:07'),
(142, 1, 'admin/test_table', 'POST', '127.0.0.1', '{\"name\":null,\"column_name\":{\"new_1\":{\"key\":\"532\",\"selectbox\":\"val\",\"value\":\"324\",\"desc\":\"32\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"325\",\"selectbox\":\"2\",\"value\":\"325\",\"desc\":\"352\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"325\",\"selectbox\":\"1\",\"value\":\"325\",\"desc\":\"325\",\"_remove_\":\"0\"}},\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test_table\"}', '2020-11-21 04:14:34', '2020-11-21 04:14:34'),
(143, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-21 04:14:35', '2020-11-21 04:14:35'),
(144, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:14:51', '2020-11-21 04:14:51'),
(145, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-21 04:15:11', '2020-11-21 04:15:11'),
(146, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-21 04:18:24', '2020-11-21 04:18:24'),
(147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:19:02', '2020-11-21 04:19:02'),
(148, 1, 'admin/auth/menu/37', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 04:19:07', '2020-11-21 04:19:07'),
(149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:19:07', '2020-11-21 04:19:07'),
(150, 1, 'admin/auth/menu/36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"j4K2pJEoDNvndzRfA1WVUFRAZZAtGYXzZk3jcLcd\"}', '2020-11-21 04:19:12', '2020-11-21 04:19:12'),
(151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:19:12', '2020-11-21 04:19:12'),
(152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-21 04:20:05', '2020-11-21 04:20:05'),
(153, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-21 04:21:38', '2020-11-21 04:21:38'),
(154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-23 23:09:28', '2020-11-23 23:09:28'),
(155, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:09:38', '2020-11-23 23:09:38'),
(156, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:10:45', '2020-11-23 23:10:45'),
(157, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:10:55', '2020-11-23 23:10:55'),
(158, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:11:00', '2020-11-23 23:11:00'),
(159, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"backup\",\"name\":\"backup\",\"permissions\":[\"11\",null],\"_token\":\"WL4SRG9ZEZenSiVvGjsaFgnosHBVP46Xz0EEWm3a\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/roles\"}', '2020-11-23 23:11:31', '2020-11-23 23:11:31'),
(160, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-11-23 23:11:31', '2020-11-23 23:11:31'),
(161, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:11:35', '2020-11-23 23:11:35'),
(162, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:11:37', '2020-11-23 23:11:37'),
(163, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:12:20', '2020-11-23 23:12:20'),
(164, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"WL4SRG9ZEZenSiVvGjsaFgnosHBVP46Xz0EEWm3a\"}', '2020-11-23 23:12:22', '2020-11-23 23:12:22'),
(165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:12:31', '2020-11-23 23:12:31'),
(166, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-23 23:23:45', '2020-11-23 23:23:45'),
(167, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-23 23:23:55', '2020-11-23 23:23:55'),
(168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-25 21:07:40', '2020-11-25 21:07:40'),
(169, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-25 21:08:01', '2020-11-25 21:08:01'),
(170, 1, 'admin/test_table/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 21:08:12', '2020-11-25 21:08:12'),
(171, 1, 'admin/test_table/3/edit', 'GET', '127.0.0.1', '[]', '2020-11-25 21:37:46', '2020-11-25 21:37:46'),
(172, 1, 'admin/test_table', 'GET', '127.0.0.1', '[]', '2020-11-25 21:39:28', '2020-11-25 21:39:28'),
(173, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-25 21:39:31', '2020-11-25 21:39:31'),
(174, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:40:48', '2020-11-25 21:40:48'),
(175, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:46:11', '2020-11-25 21:46:11'),
(176, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:54:39', '2020-11-25 21:54:39'),
(177, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:54:39', '2020-11-25 21:54:39'),
(178, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:54:39', '2020-11-25 21:54:39'),
(179, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:54:40', '2020-11-25 21:54:40'),
(180, 1, 'admin/test_table/create', 'GET', '127.0.0.1', '[]', '2020-11-25 21:54:49', '2020-11-25 21:54:49'),
(181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-27 21:32:51', '2020-11-27 21:32:51'),
(182, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 21:33:10', '2020-11-27 21:33:10'),
(183, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"project_informations\",\"model_name\":\"App\\\\Models\\\\ProjectInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectInformationController\",\"create\":[\"migration\",\"model\",\"controller\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"projecr_address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 21:36:01', '2020-11-27 21:36:01'),
(184, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-27 21:36:02', '2020-11-27 21:36:02'),
(185, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"project_informations\",\"model_name\":\"App\\\\Models\\\\ProjectInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectInformationController\",\"create\":[\"migration\",\"migrate\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"projecr_address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 21:42:30', '2020-11-27 21:42:30'),
(186, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-27 21:42:31', '2020-11-27 21:42:31'),
(187, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"section_informations\",\"model_name\":\"App\\\\Models\\\\SectionInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SectionInformationController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"others_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 21:45:57', '2020-11-27 21:45:57'),
(188, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-27 21:45:58', '2020-11-27 21:45:58'),
(189, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"department_informations\",\"model_name\":\"App\\\\Models\\\\DepartmentInformation\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DepartmentInformationController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\"],\"fields\":[{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"other_descriptions\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 21:47:35', '2020-11-27 21:47:35'),
(190, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-27 21:47:35', '2020-11-27 21:47:35'),
(191, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:05:57', '2020-11-27 22:05:57'),
(192, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"BuildingInformation\",\"icon\":\"fa-bars\",\"uri\":\"building_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:06:32', '2020-11-27 22:06:32'),
(193, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:06:33', '2020-11-27 22:06:33'),
(194, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"UnitInformation\",\"icon\":\"fa-bars\",\"uri\":\"unit_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:06:54', '2020-11-27 22:06:54'),
(195, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:06:55', '2020-11-27 22:06:55'),
(196, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"ShiftInformation\",\"icon\":\"fa-bars\",\"uri\":\"shift_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:07:28', '2020-11-27 22:07:28'),
(197, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:07:29', '2020-11-27 22:07:29'),
(198, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"SectionInformation\",\"icon\":\"fa-bars\",\"uri\":\"section_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:08:03', '2020-11-27 22:08:03'),
(199, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:08:04', '2020-11-27 22:08:04'),
(200, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"ReligionInformation\",\"icon\":\"fa-bars\",\"uri\":\"religion_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:08:21', '2020-11-27 22:08:21'),
(201, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:08:22', '2020-11-27 22:08:22'),
(202, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"DistrictInformation\",\"icon\":\"fa-bars\",\"uri\":\"district_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:08:40', '2020-11-27 22:08:40'),
(203, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:08:41', '2020-11-27 22:08:41'),
(204, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"DesignationInformation\",\"icon\":\"fa-bars\",\"uri\":\"designation_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:08:58', '2020-11-27 22:08:58'),
(205, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:08:58', '2020-11-27 22:08:58'),
(206, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"ProjectInformation\",\"icon\":\"fa-bars\",\"uri\":\"project_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:09:21', '2020-11-27 22:09:21'),
(207, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:09:22', '2020-11-27 22:09:22'),
(208, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"DepartmentInformation\",\"icon\":\"fa-bars\",\"uri\":\"department_information\",\"roles\":[null],\"permission\":null,\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\"}', '2020-11-27 22:09:36', '2020-11-27 22:09:36'),
(209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:09:36', '2020-11-27 22:09:36'),
(210, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-27 22:10:25', '2020-11-27 22:10:25'),
(211, 1, 'admin/building_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:10:36', '2020-11-27 22:10:36'),
(212, 1, 'admin/building_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:09', '2020-11-27 22:12:09'),
(213, 1, 'admin/unit_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:11', '2020-11-27 22:12:11'),
(214, 1, 'admin/shift_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:13', '2020-11-27 22:12:13'),
(215, 1, 'admin/section_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:14', '2020-11-27 22:12:14'),
(216, 1, 'admin/religion_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:15', '2020-11-27 22:12:15'),
(217, 1, 'admin/religion_information/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:17', '2020-11-27 22:12:17'),
(218, 1, 'admin/project_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:22', '2020-11-27 22:12:22'),
(219, 1, 'admin/project_information/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:12:24', '2020-11-27 22:12:24'),
(220, 1, 'admin/project_information', 'POST', '127.0.0.1', '{\"description\":\"CRM\",\"projecr_address\":\"badda\",\"address2\":\"badda, dhaka\",\"level\":\"1\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}', '2020-11-27 22:13:16', '2020-11-27 22:13:16'),
(221, 1, 'admin/project_information', 'GET', '127.0.0.1', '[]', '2020-11-27 22:13:16', '2020-11-27 22:13:16'),
(222, 1, 'admin/project_information/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:13:22', '2020-11-27 22:13:22'),
(223, 1, 'admin/project_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:13:26', '2020-11-27 22:13:26'),
(224, 1, 'admin/project_information/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:13:29', '2020-11-27 22:13:29'),
(225, 1, 'admin/project_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:13:33', '2020-11-27 22:13:33'),
(226, 1, 'admin/project_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:14:06', '2020-11-27 22:14:06'),
(227, 1, 'admin/project_information', 'GET', '127.0.0.1', '[]', '2020-11-27 22:17:45', '2020-11-27 22:17:45'),
(228, 1, 'admin/project_information/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:18:00', '2020-11-27 22:18:00'),
(229, 1, 'admin/project_information', 'POST', '127.0.0.1', '{\"name\":\"HRM\",\"description\":\"HRM project\",\"projecr_address\":\"Highway Homes \\u2013 2nd floor KA \\u2013 32\\/6 Shahjadpur, Pragoti Sharoni, Gulshan\",\"address2\":\"Dhaka\",\"level\":\"2\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}', '2020-11-27 22:18:49', '2020-11-27 22:18:49'),
(230, 1, 'admin/project_information', 'GET', '127.0.0.1', '[]', '2020-11-27 22:18:49', '2020-11-27 22:18:49'),
(231, 1, 'admin/project_information/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:18:55', '2020-11-27 22:18:55'),
(232, 1, 'admin/project_information/1', 'PUT', '127.0.0.1', '{\"name\":\"CRM\",\"description\":\"CRM project\",\"projecr_address\":\"badda\",\"address2\":\"badda, dhaka\",\"level\":\"1\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}', '2020-11-27 22:19:05', '2020-11-27 22:19:05'),
(233, 1, 'admin/project_information', 'GET', '127.0.0.1', '[]', '2020-11-27 22:19:05', '2020-11-27 22:19:05'),
(234, 1, 'admin/project_information/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:21:54', '2020-11-27 22:21:54'),
(235, 1, 'admin/project_information', 'POST', '127.0.0.1', '{\"name\":\"Bangladesh Thai\",\"description\":\"Bangladesh Thai\",\"projecr_address\":\"Badda Dhaka\",\"address2\":\"Banani Dhaka\",\"level\":\"1\",\"_token\":\"FuGM6ggFXhbdNbJmO7ScMDItwXQkoyONdpX4v8zr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/project_information\"}', '2020-11-27 22:22:51', '2020-11-27 22:22:51'),
(236, 1, 'admin/project_information', 'GET', '127.0.0.1', '[]', '2020-11-27 22:22:51', '2020-11-27 22:22:51'),
(237, 1, 'admin/project_information/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:22:56', '2020-11-27 22:22:56'),
(238, 1, 'admin/project_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:22:58', '2020-11-27 22:22:58'),
(239, 1, 'admin/project_information/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:23:01', '2020-11-27 22:23:01'),
(240, 1, 'admin/project_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:23:04', '2020-11-27 22:23:04'),
(241, 1, 'admin/department_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:23:17', '2020-11-27 22:23:17'),
(242, 1, 'admin/department_information/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:23:19', '2020-11-27 22:23:19'),
(243, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:23:50', '2020-11-27 22:23:50'),
(244, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:24:02', '2020-11-27 22:24:02'),
(245, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:24:05', '2020-11-27 22:24:05'),
(246, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:24:11', '2020-11-27 22:24:11'),
(247, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:24:19', '2020-11-27 22:24:19'),
(248, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:24:46', '2020-11-27 22:24:46'),
(249, 1, 'admin/building_information', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:25:45', '2020-11-27 22:25:45'),
(250, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:26:07', '2020-11-27 22:26:07'),
(251, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:26:10', '2020-11-27 22:26:10'),
(252, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:26:27', '2020-11-27 22:26:27'),
(253, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-27 22:26:40', '2020-11-27 22:26:40'),
(254, 1, 'admin', 'GET', '103.106.237.121', '[]', '2020-11-28 00:25:19', '2020-11-28 00:25:19'),
(255, 1, 'admin/auth/menu', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:25:33', '2020-11-28 00:25:33'),
(256, 1, 'admin/auth/menu/3/edit', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:25:47', '2020-11-28 00:25:47'),
(257, 1, 'admin/auth/menu', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:26:03', '2020-11-28 00:26:03'),
(258, 1, 'admin/auth/menu/1/edit', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:26:07', '2020-11-28 00:26:07'),
(259, 1, 'admin', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:26:20', '2020-11-28 00:26:20'),
(260, 1, 'admin', 'GET', '103.106.237.121', '[]', '2020-11-28 00:28:51', '2020-11-28 00:28:51'),
(261, 1, 'admin', 'GET', '103.106.237.121', '[]', '2020-11-28 00:29:09', '2020-11-28 00:29:09'),
(262, 1, 'admin', 'GET', '103.106.237.121', '[]', '2020-11-28 00:29:15', '2020-11-28 00:29:15'),
(263, 1, 'admin/auth/menu', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:30:15', '2020-11-28 00:30:15'),
(264, 1, 'admin/helpers/terminal/database', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:30:29', '2020-11-28 00:30:29'),
(265, 1, 'admin/helpers/terminal/artisan', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:30:39', '2020-11-28 00:30:39'),
(266, 1, 'admin/helpers/scaffold', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:30:44', '2020-11-28 00:30:44'),
(267, 1, 'admin/auth/menu', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:30:56', '2020-11-28 00:30:56'),
(268, 1, 'admin/auth/menu/23', 'DELETE', '103.106.237.121', '{\"_method\":\"delete\",\"_token\":\"fcG2MRkcqvx8im8mQu6o94IjaK54iidBL4CcXagk\"}', '2020-11-28 00:31:06', '2020-11-28 00:31:06'),
(269, 1, 'admin/auth/menu', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:31:07', '2020-11-28 00:31:07'),
(270, 1, 'admin/backup', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:31:09', '2020-11-28 00:31:09'),
(271, 1, 'admin/backup/run', 'POST', '103.106.237.121', '{\"_token\":\"fcG2MRkcqvx8im8mQu6o94IjaK54iidBL4CcXagk\"}', '2020-11-28 00:31:14', '2020-11-28 00:31:14'),
(272, 1, 'admin/logs', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:33:42', '2020-11-28 00:33:42'),
(273, 1, 'admin/logs', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:34:33', '2020-11-28 00:34:33'),
(274, 1, 'admin', 'GET', '103.106.237.121', '[]', '2020-11-28 00:35:02', '2020-11-28 00:35:02'),
(275, 1, 'admin/logs', 'GET', '103.106.237.121', '[]', '2020-11-28 00:35:40', '2020-11-28 00:35:40'),
(276, 1, 'admin', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:35:44', '2020-11-28 00:35:44'),
(277, 1, 'admin/backup', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:36:08', '2020-11-28 00:36:08'),
(278, 1, 'admin/backup/run', 'POST', '103.106.237.121', '{\"_token\":\"fcG2MRkcqvx8im8mQu6o94IjaK54iidBL4CcXagk\"}', '2020-11-28 00:36:13', '2020-11-28 00:36:13'),
(279, 1, 'admin', 'GET', '103.143.138.248', '[]', '2020-11-28 00:49:47', '2020-11-28 00:49:47'),
(280, 1, 'admin/building_information', 'GET', '103.143.138.248', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:50:05', '2020-11-28 00:50:05'),
(281, 1, 'admin/building_information', 'GET', '103.143.138.248', '{\"_columns_\":\"created_at,level,other_descriptions,updated_at\",\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:50:19', '2020-11-28 00:50:19'),
(282, 1, 'admin/building_information', 'GET', '103.143.138.248', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:50:24', '2020-11-28 00:50:24'),
(283, 1, 'admin/backup/run', 'POST', '103.106.237.121', '{\"_token\":\"fcG2MRkcqvx8im8mQu6o94IjaK54iidBL4CcXagk\"}', '2020-11-28 00:53:47', '2020-11-28 00:53:47'),
(284, 1, 'admin/backup/run', 'POST', '103.106.237.121', '{\"_token\":\"fcG2MRkcqvx8im8mQu6o94IjaK54iidBL4CcXagk\"}', '2020-11-28 00:54:01', '2020-11-28 00:54:01'),
(285, 1, 'admin/backup', 'GET', '103.106.237.121', '[]', '2020-11-28 00:54:05', '2020-11-28 00:54:05'),
(286, 1, 'admin/backup', 'GET', '103.106.237.121', '[]', '2020-11-28 00:54:08', '2020-11-28 00:54:08'),
(287, 1, 'admin/shift_information', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:55:35', '2020-11-28 00:55:35'),
(288, 1, 'admin/logs', 'GET', '103.106.237.121', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:55:49', '2020-11-28 00:55:49'),
(289, 1, 'admin/logs/laravel.log', 'GET', '103.106.237.121', '{\"offset\":\"-928803\",\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:56:06', '2020-11-28 00:56:06'),
(290, 1, 'admin/logs/laravel.log', 'GET', '103.106.237.121', '{\"offset\":\"-928803\",\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:56:09', '2020-11-28 00:56:09'),
(291, 1, 'admin/logs/laravel.log', 'GET', '103.106.237.121', '{\"offset\":\"928803\",\"_pjax\":\"#pjax-container\"}', '2020-11-28 00:56:13', '2020-11-28 00:56:13'),
(292, 1, 'admin', 'GET', '103.106.237.169', '[]', '2020-11-28 13:20:58', '2020-11-28 13:20:58'),
(293, 1, 'admin/building_information', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 13:22:42', '2020-11-28 13:22:42'),
(294, 1, 'admin', 'GET', '203.83.189.226', '[]', '2020-11-28 14:31:51', '2020-11-28 14:31:51'),
(295, 1, 'admin/district_information', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:32:16', '2020-11-28 14:32:16'),
(296, 1, 'admin/district_information/create', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:32:21', '2020-11-28 14:32:21'),
(297, 1, 'admin/district_information', 'POST', '203.83.189.226', '{\"description\":\"DHAKA\",\"other_descriptions\":null,\"level\":null,\"_token\":\"YgZCFcNUEATYgISlPChcTyg5ThUS73WNz2Df9v8W\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/district_information\"}', '2020-11-28 14:32:38', '2020-11-28 14:32:38'),
(298, 1, 'admin/district_information', 'GET', '203.83.189.226', '[]', '2020-11-28 14:32:38', '2020-11-28 14:32:38'),
(299, 1, 'admin/district_information/create', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:32:41', '2020-11-28 14:32:41'),
(300, 1, 'admin/district_information', 'POST', '203.83.189.226', '{\"description\":\"BARISAL\",\"other_descriptions\":null,\"level\":null,\"_token\":\"YgZCFcNUEATYgISlPChcTyg5ThUS73WNz2Df9v8W\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/district_information\"}', '2020-11-28 14:32:50', '2020-11-28 14:32:50'),
(301, 1, 'admin/district_information', 'GET', '203.83.189.226', '[]', '2020-11-28 14:32:51', '2020-11-28 14:32:51'),
(302, 1, 'admin/designation_information', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:33:50', '2020-11-28 14:33:50'),
(303, 1, 'admin/project_information', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:34:02', '2020-11-28 14:34:02'),
(304, 1, 'admin/project_information/create', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:34:09', '2020-11-28 14:34:09'),
(305, 1, 'admin/project_information', 'POST', '203.83.189.226', '{\"name\":\"Paradise Cables Limited\",\"description\":\"128 Gulshan Avenue, Dhaka , Banagladesh\",\"projecr_address\":null,\"address2\":null,\"level\":\"1\",\"_token\":\"YgZCFcNUEATYgISlPChcTyg5ThUS73WNz2Df9v8W\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/project_information\"}', '2020-11-28 14:35:02', '2020-11-28 14:35:02'),
(306, 1, 'admin/project_information', 'GET', '203.83.189.226', '[]', '2020-11-28 14:35:03', '2020-11-28 14:35:03'),
(307, 1, 'admin/project_information/2/edit', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:35:14', '2020-11-28 14:35:14'),
(308, 1, 'admin/project_information/2', 'PUT', '203.83.189.226', '{\"name\":\"Belcon Company Pvt. Limited\",\"description\":\"HRM project\",\"projecr_address\":\"Highway Homes \\u2013 2nd floor KA \\u2013 32\\/6 Shahjadpur, Pragoti Sharoni, Gulshan\",\"address2\":\"Dhaka\",\"level\":\"2\",\"_token\":\"YgZCFcNUEATYgISlPChcTyg5ThUS73WNz2Df9v8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/project_information\"}', '2020-11-28 14:35:29', '2020-11-28 14:35:29'),
(309, 1, 'admin/project_information', 'GET', '203.83.189.226', '[]', '2020-11-28 14:35:29', '2020-11-28 14:35:29'),
(310, 1, 'admin/project_information/1/edit', 'GET', '203.83.189.226', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 14:35:35', '2020-11-28 14:35:35'),
(311, 1, 'admin/project_information/1', 'PUT', '203.83.189.226', '{\"name\":\"Asian Textile Mills Limited\",\"description\":\"Head office\",\"projecr_address\":\"road-1, House-1, Block-C , Banasree project, Rampura, Dhaka\",\"address2\":\"badda, dhaka\",\"level\":\"1\",\"_token\":\"YgZCFcNUEATYgISlPChcTyg5ThUS73WNz2Df9v8W\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/project_information\"}', '2020-11-28 14:36:32', '2020-11-28 14:36:32'),
(312, 1, 'admin/project_information', 'GET', '203.83.189.226', '[]', '2020-11-28 14:36:33', '2020-11-28 14:36:33'),
(313, 1, 'admin', 'GET', '103.101.199.100', '[]', '2020-11-28 23:23:23', '2020-11-28 23:23:23'),
(314, 1, 'admin/auth/menu', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:23:36', '2020-11-28 23:23:36'),
(315, 1, 'admin/auth/menu', 'POST', '103.101.199.100', '{\"parent_id\":\"0\",\"title\":\"ChartOfAccount\",\"icon\":\"fa-bars\",\"uri\":\"chart_of_accounts\",\"roles\":[null],\"permission\":null,\"_token\":\"JfgzUBuztM6xibdX5YZK6PBAzcKffYZJkYDUVIwM\"}', '2020-11-28 23:24:02', '2020-11-28 23:24:02'),
(316, 1, 'admin/auth/menu', 'GET', '103.101.199.100', '[]', '2020-11-28 23:24:03', '2020-11-28 23:24:03'),
(317, 1, 'admin/auth/menu', 'GET', '103.101.199.100', '[]', '2020-11-28 23:24:07', '2020-11-28 23:24:07'),
(318, 1, 'admin/auth/menu', 'POST', '103.101.199.100', '{\"_token\":\"JfgzUBuztM6xibdX5YZK6PBAzcKffYZJkYDUVIwM\",\"_order\":\"[{\\\"id\\\":47},{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40},{\\\"id\\\":41},{\\\"id\\\":42},{\\\"id\\\":43},{\\\"id\\\":44},{\\\"id\\\":45},{\\\"id\\\":46},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":28},{\\\"id\\\":34}]\"}', '2020-11-28 23:24:28', '2020-11-28 23:24:28');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(319, 1, 'admin/auth/menu', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:24:29', '2020-11-28 23:24:29'),
(320, 1, 'admin/auth/menu', 'GET', '103.101.199.100', '[]', '2020-11-28 23:24:33', '2020-11-28 23:24:33'),
(321, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:24:37', '2020-11-28 23:24:37'),
(322, 1, 'admin/chart_of_accounts/create', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:24:56', '2020-11-28 23:24:56'),
(323, 1, 'admin/chart_of_accounts', 'POST', '103.101.199.100', '{\"code\":\"0\",\"code_desc\":\"Asset\",\"other_desc\":\"Asset\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"JfgzUBuztM6xibdX5YZK6PBAzcKffYZJkYDUVIwM\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-28 23:25:03', '2020-11-28 23:25:03'),
(324, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-28 23:25:04', '2020-11-28 23:25:04'),
(325, 1, 'admin/chart_of_accounts/create', 'GET', '103.101.199.100', '{\"p\":\"15\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:25:34', '2020-11-28 23:25:34'),
(326, 1, 'admin/chart_of_accounts', 'POST', '103.101.199.100', '{\"code\":\"1001\",\"code_desc\":\"Account Receivable\",\"other_desc\":\"Account Receivable\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"15\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"JfgzUBuztM6xibdX5YZK6PBAzcKffYZJkYDUVIwM\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-28 23:25:40', '2020-11-28 23:25:40'),
(327, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-28 23:25:41', '2020-11-28 23:25:41'),
(328, 1, 'admin/chart_of_accounts/create', 'GET', '103.101.199.100', '{\"p\":\"16\",\"l\":\"3\",\"c\":\"1001\",\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:25:45', '2020-11-28 23:25:45'),
(329, 1, 'admin/chart_of_accounts', 'POST', '103.101.199.100', '{\"code\":\"1001001\",\"code_desc\":\"Sworana Rice Agency\",\"other_desc\":\"Sworana Rice Agency\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"p_id\":\"16\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"JfgzUBuztM6xibdX5YZK6PBAzcKffYZJkYDUVIwM\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-28 23:25:59', '2020-11-28 23:25:59'),
(330, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-28 23:25:59', '2020-11-28 23:25:59'),
(331, 1, 'admin', 'GET', '103.195.2.54', '[]', '2020-11-28 23:39:50', '2020-11-28 23:39:50'),
(332, 1, 'admin/chart_of_accounts', 'GET', '103.195.2.54', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:40:06', '2020-11-28 23:40:06'),
(333, 1, 'admin/chart_of_accounts', 'GET', '103.195.2.54', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:40:09', '2020-11-28 23:40:09'),
(334, 1, 'admin/chart_of_accounts/create', 'GET', '103.195.2.54', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:40:25', '2020-11-28 23:40:25'),
(335, 1, 'admin/chart_of_accounts', 'POST', '103.195.2.54', '{\"code\":\"0\",\"code_desc\":\"hhhhh\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"ZaItZHpWhhUkDPhajaK379age9HJ2N0OI0xxWngM\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-28 23:40:42', '2020-11-28 23:40:42'),
(336, 1, 'admin/chart_of_accounts', 'GET', '103.195.2.54', '[]', '2020-11-28 23:40:43', '2020-11-28 23:40:43'),
(337, 1, 'admin/chart_of_accounts/15/edit', 'GET', '103.195.2.54', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:40:53', '2020-11-28 23:40:53'),
(338, 1, 'admin/chart_of_accounts', 'GET', '103.195.2.54', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:41:00', '2020-11-28 23:41:00'),
(339, 1, 'admin/chart_of_accounts/create', 'GET', '103.195.2.54', '{\"_pjax\":\"#pjax-container\"}', '2020-11-28 23:41:26', '2020-11-28 23:41:26'),
(340, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-29 08:37:14', '2020-11-29 08:37:14'),
(341, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-29 08:37:20', '2020-11-29 08:37:20'),
(342, 1, 'admin/chart_of_accounts/18/edit', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 08:37:23', '2020-11-29 08:37:23'),
(343, 1, 'admin/chart_of_accounts/18', 'PUT', '103.101.199.100', '{\"code\":\"2\",\"code_desc\":\"hhhhh\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"t3OJ0F1wIObrEBem5ETHCjFu2VPHZxCJmAUXnNiO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-29 08:37:26', '2020-11-29 08:37:26'),
(344, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-29 08:37:27', '2020-11-29 08:37:27'),
(345, 1, 'admin/chart_of_accounts/create', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 08:44:30', '2020-11-29 08:44:30'),
(346, 1, 'admin/chart_of_accounts', 'POST', '103.101.199.100', '{\"code\":\"3\",\"code_desc\":\"Liability\",\"other_desc\":\"Liability\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"t3OJ0F1wIObrEBem5ETHCjFu2VPHZxCJmAUXnNiO\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-29 08:44:40', '2020-11-29 08:44:40'),
(347, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-29 08:44:41', '2020-11-29 08:44:41'),
(348, 1, 'admin/chart_of_accounts/19/edit', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 08:44:50', '2020-11-29 08:44:50'),
(349, 1, 'admin/chart_of_accounts/19', 'PUT', '103.101.199.100', '{\"code\":\"3\",\"code_desc\":\"Liability\",\"other_desc\":\"Liability\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"3\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"t3OJ0F1wIObrEBem5ETHCjFu2VPHZxCJmAUXnNiO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-29 08:44:52', '2020-11-29 08:44:52'),
(350, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-29 08:44:53', '2020-11-29 08:44:53'),
(351, 1, 'admin/_handle_action_', 'POST', '103.101.199.100', '{\"_key\":\"19\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"t3OJ0F1wIObrEBem5ETHCjFu2VPHZxCJmAUXnNiO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-11-29 08:44:59', '2020-11-29 08:44:59'),
(352, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 08:44:59', '2020-11-29 08:44:59'),
(353, 1, 'admin/chart_of_accounts/create', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 08:45:02', '2020-11-29 08:45:02'),
(354, 1, 'admin/chart_of_accounts', 'POST', '103.101.199.100', '{\"code\":\"3\",\"code_desc\":\"Liability\",\"other_desc\":\"Liability\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"t3OJ0F1wIObrEBem5ETHCjFu2VPHZxCJmAUXnNiO\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-11-29 08:45:08', '2020-11-29 08:45:08'),
(355, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '[]', '2020-11-29 08:45:09', '2020-11-29 08:45:09'),
(356, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 11:56:55', '2020-11-29 11:56:55'),
(357, 1, 'admin/chart_of_accounts/16/edit', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:05:26', '2020-11-29 12:05:26'),
(358, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:05:29', '2020-11-29 12:05:29'),
(359, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:08:14', '2020-11-29 12:08:14'),
(360, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:08:26', '2020-11-29 12:08:26'),
(361, 1, 'admin/chart_of_accounts/18/edit', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:08:36', '2020-11-29 12:08:36'),
(362, 1, 'admin/chart_of_accounts/18', 'PUT', '103.106.237.169', '{\"code\":\"2\",\"code_desc\":\"Income\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:08:44', '2020-11-29 12:08:44'),
(363, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:08:44', '2020-11-29 12:08:44'),
(364, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"18\",\"l\":\"2\",\"c\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:08:55', '2020-11-29 12:08:55'),
(365, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"2001\",\"code_desc\":null,\"other_desc\":\"Sales Revenue\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"18\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:22:00', '2020-11-29 12:22:00'),
(366, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:22:01', '2020-11-29 12:22:01'),
(367, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"21\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:22:38', '2020-11-29 12:22:38'),
(368, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"2001001\",\"code_desc\":\"Bag sales\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"p_id\":\"21\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:22:59', '2020-11-29 12:22:59'),
(369, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:22:59', '2020-11-29 12:22:59'),
(370, 1, 'admin/chart_of_accounts/21/edit', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:23:04', '2020-11-29 12:23:04'),
(371, 1, 'admin/chart_of_accounts/21', 'PUT', '103.106.237.169', '{\"code\":\"2001\",\"code_desc\":\"Sales Revenue\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"18\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:23:08', '2020-11-29 12:23:08'),
(372, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:23:09', '2020-11-29 12:23:09'),
(373, 1, 'admin/chart_of_accounts/22/edit', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:23:27', '2020-11-29 12:23:27'),
(374, 1, 'admin/chart_of_accounts/22', 'PUT', '103.106.237.169', '{\"code\":\"2001001\",\"code_desc\":\"Bag sales\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2001\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"p_id\":\"21\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:23:32', '2020-11-29 12:23:32'),
(375, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:23:33', '2020-11-29 12:23:33'),
(376, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:26:51', '2020-11-29 12:26:51'),
(377, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\",\"_pjax\":\"#pjax-container\",\"id\":\"sales\"}', '2020-11-29 12:26:57', '2020-11-29 12:26:57'),
(378, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:27:00', '2020-11-29 12:27:00'),
(379, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:27:05', '2020-11-29 12:27:05'),
(380, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:27:11', '2020-11-29 12:27:11'),
(381, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"22\",\"l\":\"4\",\"c\":\"2001001\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:27:32', '2020-11-29 12:27:32'),
(382, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"2001001001\",\"code_desc\":\"Jute Bag\",\"other_desc\":\"Hessian\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"4\",\"g_code\":null,\"p_id\":\"22\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:27:45', '2020-11-29 12:27:45'),
(383, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:27:46', '2020-11-29 12:27:46'),
(384, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"22\",\"l\":\"4\",\"c\":\"2001001\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 12:27:51', '2020-11-29 12:27:51'),
(385, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"2001001002\",\"code_desc\":\"Woven Bag\",\"other_desc\":\"PP 150 GSM\",\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"4\",\"g_code\":null,\"p_id\":\"22\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:28:04', '2020-11-29 12:28:04'),
(386, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR3v51BbaiffNHT5UzmW2YabPj4ikbliTnG_LnuyFrHJqXbwDTiGHjXoEh4\"}', '2020-11-29 12:28:05', '2020-11-29 12:28:05'),
(387, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:22:20', '2020-11-29 13:22:20'),
(388, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:22:50', '2020-11-29 13:22:50'),
(389, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:23:02', '2020-11-29 13:23:02'),
(390, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"20\",\"l\":\"2\",\"c\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:26:13', '2020-11-29 13:26:13'),
(391, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:26:29', '2020-11-29 13:26:29'),
(392, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"20\",\"l\":\"2\",\"c\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:27:00', '2020-11-29 13:27:00'),
(393, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"3001\",\"code_desc\":\"Sundry Creditors\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"20\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:27:14', '2020-11-29 13:27:14'),
(394, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:27:15', '2020-11-29 13:27:15'),
(395, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"25\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:27:40', '2020-11-29 13:27:40'),
(396, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"3001001\",\"code_desc\":\"jamal housing  limed\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"p_id\":\"25\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:28:00', '2020-11-29 13:28:00'),
(397, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:28:01', '2020-11-29 13:28:01'),
(398, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"25\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:28:09', '2020-11-29 13:28:09'),
(399, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"3001002\",\"code_desc\":\"kamal clothing\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"p_id\":\"25\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:28:24', '2020-11-29 13:28:24'),
(400, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:28:25', '2020-11-29 13:28:25'),
(401, 1, 'admin/chart_of_accounts/create', 'GET', '103.106.237.169', '{\"p\":\"25\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:28:31', '2020-11-29 13:28:31'),
(402, 1, 'admin/chart_of_accounts', 'POST', '103.106.237.169', '{\"code\":\"3001003\",\"code_desc\":\"rms sweaters limited\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"p_id\":\"25\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"RwA1Ef1ytpq392eaSoJsgljdFthpNOcEUaoYdUW6\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?fbclid=IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:28:45', '2020-11-29 13:28:45'),
(403, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\"}', '2020-11-29 13:28:45', '2020-11-29 13:28:45'),
(404, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\",\"_columns_\":\"code_desc,origin\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:30:08', '2020-11-29 13:30:08'),
(405, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\",\"_columns_\":\"code_desc,id,origin\",\"_pjax\":\"#pjax-container\"}', '2020-11-29 13:39:34', '2020-11-29 13:39:34'),
(406, 1, 'admin/chart_of_accounts', 'GET', '103.106.237.169', '{\"fbclid\":\"IwAR0p6FlvaJBo0fCRQYk7XYLv3dfHN5_rzwIL_b4fgvNrxTbeN1bLkvDO-28\",\"_columns_\":\"code_desc,id,origin\",\"_pjax\":\"#pjax-container\",\"id\":null}', '2020-11-29 13:40:29', '2020-11-29 13:40:29'),
(407, 1, 'admin', 'GET', '27.147.203.195', '[]', '2020-12-02 11:44:28', '2020-12-02 11:44:28'),
(408, 1, 'admin/chart_of_accounts', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-02 11:44:35', '2020-12-02 11:44:35'),
(409, 1, 'admin/chart_of_accounts/create', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-02 11:44:46', '2020-12-02 11:44:46'),
(410, 1, 'admin/chart_of_accounts', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-02 11:44:48', '2020-12-02 11:44:48'),
(411, 1, 'admin', 'GET', '27.147.203.195', '[]', '2020-12-03 20:49:53', '2020-12-03 20:49:53'),
(412, 1, 'admin/chart_of_accounts', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-03 20:50:04', '2020-12-03 20:50:04'),
(413, 1, 'admin/auth/menu', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-03 20:50:14', '2020-12-03 20:50:14'),
(414, 1, 'admin', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-03 20:50:34', '2020-12-03 20:50:34'),
(415, 1, 'admin', 'GET', '103.86.111.195', '[]', '2020-12-04 10:47:32', '2020-12-04 10:47:32'),
(416, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 10:54:49', '2020-12-04 10:54:49'),
(417, 1, 'admin/_handle_action_', 'POST', '103.86.111.195', '{\"_key\":\"17\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 10:57:29', '2020-12-04 10:57:29'),
(418, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 10:57:29', '2020-12-04 10:57:29'),
(419, 1, 'admin/_handle_action_', 'POST', '103.86.111.195', '{\"_key\":\"23\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 10:58:23', '2020-12-04 10:58:23'),
(420, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 10:58:23', '2020-12-04 10:58:23'),
(421, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:00:14', '2020-12-04 11:00:14'),
(422, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:00:17', '2020-12-04 11:00:17'),
(423, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.195', '[]', '2020-12-04 11:05:59', '2020-12-04 11:05:59'),
(424, 1, 'admin/project_information', 'GET', '103.86.111.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:06:04', '2020-12-04 11:06:04'),
(425, 1, 'admin', 'GET', '103.86.111.196', '[]', '2020-12-04 11:43:08', '2020-12-04 11:43:08'),
(426, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:45:08', '2020-12-04 11:45:08'),
(427, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"16\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:45:19', '2020-12-04 11:45:19'),
(428, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:45:20', '2020-12-04 11:45:20'),
(429, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"21\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:45:34', '2020-12-04 11:45:34'),
(430, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:45:34', '2020-12-04 11:45:34'),
(431, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"22\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:45:49', '2020-12-04 11:45:49'),
(432, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:45:50', '2020-12-04 11:45:50'),
(433, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"24\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:45:58', '2020-12-04 11:45:58'),
(434, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:45:59', '2020-12-04 11:45:59'),
(435, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"25\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:46:09', '2020-12-04 11:46:09'),
(436, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:46:10', '2020-12-04 11:46:10'),
(437, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"26\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:47:47', '2020-12-04 11:47:47'),
(438, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:47:48', '2020-12-04 11:47:48'),
(439, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"27\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:47:59', '2020-12-04 11:47:59'),
(440, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:48:00', '2020-12-04 11:48:00'),
(441, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"28\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:48:14', '2020-12-04 11:48:14'),
(442, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:48:14', '2020-12-04 11:48:14'),
(443, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"15\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:49:02', '2020-12-04 11:49:02'),
(444, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:49:03', '2020-12-04 11:49:03'),
(445, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"18\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:49:11', '2020-12-04 11:49:11'),
(446, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:49:12', '2020-12-04 11:49:12'),
(447, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"20\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 11:49:19', '2020-12-04 11:49:19'),
(448, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:49:20', '2020-12-04 11:49:20'),
(449, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:49:23', '2020-12-04 11:49:23'),
(450, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"1\",\"code_desc\":\"INCOME\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:49:56', '2020-12-04 11:49:56'),
(451, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:49:57', '2020-12-04 11:49:57'),
(452, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:50:10', '2020-12-04 11:50:10'),
(453, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2\",\"code_desc\":\"EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:50:19', '2020-12-04 11:50:19'),
(454, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:50:19', '2020-12-04 11:50:19'),
(455, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:50:22', '2020-12-04 11:50:22'),
(456, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3\",\"code_desc\":\"ASSETS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:50:36', '2020-12-04 11:50:36'),
(457, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:50:37', '2020-12-04 11:50:37'),
(458, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:50:40', '2020-12-04 11:50:40'),
(459, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"4\",\"code_desc\":\"LIABILITIES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:50:54', '2020-12-04 11:50:54'),
(460, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:50:54', '2020-12-04 11:50:54'),
(461, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:50:59', '2020-12-04 11:50:59'),
(462, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"5\",\"code_desc\":\"CASH IN HAND\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:51:08', '2020-12-04 11:51:08'),
(463, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:51:09', '2020-12-04 11:51:09'),
(464, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:51:12', '2020-12-04 11:51:12'),
(465, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"6\",\"code_desc\":\"CASH AT BANK\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"p_id\":\"0\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:51:21', '2020-12-04 11:51:21'),
(466, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:51:22', '2020-12-04 11:51:22'),
(467, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:51:40', '2020-12-04 11:51:40'),
(468, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"1001\",\"code_desc\":\"Sales  Medicine\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"29\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:52:10', '2020-12-04 11:52:10'),
(469, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:52:11', '2020-12-04 11:52:11'),
(470, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:52:15', '2020-12-04 11:52:15'),
(471, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"1002\",\"code_desc\":\"Sales Strips\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"29\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:52:27', '2020-12-04 11:52:27'),
(472, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:52:28', '2020-12-04 11:52:28'),
(473, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:52:32', '2020-12-04 11:52:32'),
(474, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"1003\",\"code_desc\":\"Sales Machine\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"29\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:52:42', '2020-12-04 11:52:42'),
(475, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:52:43', '2020-12-04 11:52:43'),
(476, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:52:46', '2020-12-04 11:52:46'),
(477, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"1004\",\"code_desc\":\"Sales ( Miscelleneous)\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"29\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:53:00', '2020-12-04 11:53:00'),
(478, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:53:01', '2020-12-04 11:53:01'),
(479, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"30\",\"l\":\"2\",\"c\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:53:34', '2020-12-04 11:53:34'),
(480, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001\",\"code_desc\":\"DIRECT EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"30\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:53:49', '2020-12-04 11:53:49'),
(481, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:53:49', '2020-12-04 11:53:49'),
(482, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"30\",\"l\":\"2\",\"c\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:53:57', '2020-12-04 11:53:57'),
(483, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:54:54', '2020-12-04 11:54:54'),
(484, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"30\",\"l\":\"2\",\"c\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:54:56', '2020-12-04 11:54:56'),
(485, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:55:00', '2020-12-04 11:55:00'),
(486, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"30\",\"l\":\"2\",\"c\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:55:11', '2020-12-04 11:55:11'),
(487, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002\",\"code_desc\":\"INDIRECT EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"30\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:55:23', '2020-12-04 11:55:23'),
(488, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:55:23', '2020-12-04 11:55:23'),
(489, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"31\",\"l\":\"2\",\"c\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:55:38', '2020-12-04 11:55:38'),
(490, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3001\",\"code_desc\":\"FIXED ASSETS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"31\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:55:49', '2020-12-04 11:55:49'),
(491, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:55:50', '2020-12-04 11:55:50'),
(492, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"31\",\"l\":\"2\",\"c\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:55:58', '2020-12-04 11:55:58'),
(493, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3002\",\"code_desc\":\"CURRENT ASSETS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"p_id\":\"31\",\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 11:56:15', '2020-12-04 11:56:15'),
(494, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 11:56:16', '2020-12-04 11:56:16'),
(495, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:57:35', '2020-12-04 11:57:35'),
(496, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:57:41', '2020-12-04 11:57:41'),
(497, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:57:52', '2020-12-04 11:57:52'),
(498, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:57:55', '2020-12-04 11:57:55'),
(499, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:57:58', '2020-12-04 11:57:58'),
(500, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:59:26', '2020-12-04 11:59:26'),
(501, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:59:41', '2020-12-04 11:59:41'),
(502, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:59:47', '2020-12-04 11:59:47'),
(503, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:59:52', '2020-12-04 11:59:52'),
(504, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 11:59:55', '2020-12-04 11:59:55'),
(505, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:00:15', '2020-12-04 12:00:15'),
(506, 1, 'admin', 'GET', '103.86.111.196', '[]', '2020-12-04 12:00:27', '2020-12-04 12:00:27'),
(507, 1, 'admin/chart_of_accounts/29/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:00:27', '2020-12-04 12:00:27'),
(508, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:00:32', '2020-12-04 12:00:32'),
(509, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:00:35', '2020-12-04 12:00:35'),
(510, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:00:47', '2020-12-04 12:00:47'),
(511, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:00', '2020-12-04 12:01:00'),
(512, 1, 'admin/chart_of_accounts/29/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:22', '2020-12-04 12:01:22'),
(513, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:30', '2020-12-04 12:01:30'),
(514, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"31\",\"l\":\"2\",\"c\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:33', '2020-12-04 12:01:33'),
(515, 1, 'admin/chart_of_accounts/35/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:35', '2020-12-04 12:01:35'),
(516, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:38', '2020-12-04 12:01:38'),
(517, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:42', '2020-12-04 12:01:42'),
(518, 1, 'admin/chart_of_accounts/35/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:47', '2020-12-04 12:01:47'),
(519, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:01:52', '2020-12-04 12:01:52'),
(520, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:02:02', '2020-12-04 12:02:02'),
(521, 1, 'admin/chart_of_accounts/35/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:02:11', '2020-12-04 12:02:11'),
(522, 1, 'admin/chart_of_accounts/35', 'PUT', '103.86.111.196', '{\"code\":\"1001\",\"project_id\":\"2\",\"code_desc\":\"Sales  Medicine\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:02:24', '2020-12-04 12:02:24'),
(523, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:02:25', '2020-12-04 12:02:25'),
(524, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:02:32', '2020-12-04 12:02:32'),
(525, 1, 'admin/chart_of_accounts/36/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:05:37', '2020-12-04 12:05:37'),
(526, 1, 'admin/chart_of_accounts/36', 'PUT', '103.86.111.196', '{\"code\":\"1002\",\"project_id\":\"2\",\"code_desc\":\"Sales Strips\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:05:45', '2020-12-04 12:05:45'),
(527, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:05:45', '2020-12-04 12:05:45'),
(528, 1, 'admin/chart_of_accounts/39/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:05:58', '2020-12-04 12:05:58'),
(529, 1, 'admin/chart_of_accounts/39', 'PUT', '103.86.111.196', '{\"code\":\"2001\",\"project_id\":\"2\",\"code_desc\":\"DIRECT EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"30\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:06:06', '2020-12-04 12:06:06'),
(530, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:06:07', '2020-12-04 12:06:07'),
(531, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:07:08', '2020-12-04 12:07:08'),
(532, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3001001\",\"project_id\":\"2\",\"code_desc\":null,\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"41\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:07:15', '2020-12-04 12:07:15'),
(533, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:07:16', '2020-12-04 12:07:16'),
(534, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"43\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 12:07:32', '2020-12-04 12:07:32'),
(535, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:07:33', '2020-12-04 12:07:33'),
(536, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:07:40', '2020-12-04 12:07:40'),
(537, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3001001\",\"project_id\":\"2\",\"code_desc\":null,\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"41\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:07:47', '2020-12-04 12:07:47'),
(538, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:07:47', '2020-12-04 12:07:47'),
(539, 1, 'admin/chart_of_accounts/40', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:07:59', '2020-12-04 12:07:59');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(540, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:08:04', '2020-12-04 12:08:04'),
(541, 1, 'admin/chart_of_accounts/36', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:08:55', '2020-12-04 12:08:55'),
(542, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:09:02', '2020-12-04 12:09:02'),
(543, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:09:06', '2020-12-04 12:09:06'),
(544, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:09:13', '2020-12-04 12:09:13'),
(545, 1, 'admin/chart_of_accounts/39/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:09:40', '2020-12-04 12:09:40'),
(546, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:09:48', '2020-12-04 12:09:48'),
(547, 1, 'admin/chart_of_accounts/38', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:09:59', '2020-12-04 12:09:59'),
(548, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:10:03', '2020-12-04 12:10:03'),
(549, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:10:06', '2020-12-04 12:10:06'),
(550, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:10:51', '2020-12-04 12:10:51'),
(551, 1, 'admin/chart_of_accounts/41/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:11:14', '2020-12-04 12:11:14'),
(552, 1, 'admin/chart_of_accounts/41', 'PUT', '103.86.111.196', '{\"code\":\"3001\",\"project_id\":\"2\",\"code_desc\":\"FIXED ASSETS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"3\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"31\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:11:23', '2020-12-04 12:11:23'),
(553, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:11:23', '2020-12-04 12:11:23'),
(554, 1, 'admin/chart_of_accounts/38/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:12:21', '2020-12-04 12:12:21'),
(555, 1, 'admin/chart_of_accounts/38', 'PUT', '103.86.111.196', '{\"code\":\"1004\",\"project_id\":\"2\",\"code_desc\":\"Sales ( Miscelleneous)\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:12:29', '2020-12-04 12:12:29'),
(556, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:12:30', '2020-12-04 12:12:30'),
(557, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:12:42', '2020-12-04 12:12:42'),
(558, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001001\",\"project_id\":\"2\",\"code_desc\":\"Wages\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:13:07', '2020-12-04 12:13:07'),
(559, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:13:08', '2020-12-04 12:13:08'),
(560, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:13:15', '2020-12-04 12:13:15'),
(561, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001002\",\"project_id\":\"2\",\"code_desc\":\"Overtime\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:13:30', '2020-12-04 12:13:30'),
(562, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:13:31', '2020-12-04 12:13:31'),
(563, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:13:38', '2020-12-04 12:13:38'),
(564, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001003\",\"project_id\":\"2\",\"code_desc\":\"Factory Rent\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:13:53', '2020-12-04 12:13:53'),
(565, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:13:54', '2020-12-04 12:13:54'),
(566, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:13:59', '2020-12-04 12:13:59'),
(567, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001004\",\"project_id\":\"2\",\"code_desc\":\"Carriage inwards\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:14:32', '2020-12-04 12:14:32'),
(568, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:14:33', '2020-12-04 12:14:33'),
(569, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:14:40', '2020-12-04 12:14:40'),
(570, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001005\",\"project_id\":\"2\",\"code_desc\":\"Loading unloading charge\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:15:06', '2020-12-04 12:15:06'),
(571, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:15:07', '2020-12-04 12:15:07'),
(572, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:15:13', '2020-12-04 12:15:13'),
(573, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001006\",\"project_id\":\"2\",\"code_desc\":\"Factory Electricity Bill\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:15:36', '2020-12-04 12:15:36'),
(574, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:15:36', '2020-12-04 12:15:36'),
(575, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:15:59', '2020-12-04 12:15:59'),
(576, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001007\",\"project_id\":\"2\",\"code_desc\":\"Tiffin bill\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:20:08', '2020-12-04 12:20:08'),
(577, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:20:08', '2020-12-04 12:20:08'),
(578, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:27:47', '2020-12-04 12:27:47'),
(579, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2020-12-04 12:27:56', '2020-12-04 12:27:56'),
(580, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 12:28:35', '2020-12-04 12:28:35'),
(581, 1, 'admin/chart_of_accounts/44/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:31:43', '2020-12-04 12:31:43'),
(582, 1, 'admin/chart_of_accounts/44', 'PUT', '103.86.111.196', '{\"code\":\"3001001\",\"project_id\":\"2\",\"code_desc\":\"Building\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"3001\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"41\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts\"}', '2020-12-04 12:31:55', '2020-12-04 12:31:55'),
(583, 1, 'admin/chart_of_accounts/44/edit', 'GET', '103.86.111.196', '[]', '2020-12-04 12:31:56', '2020-12-04 12:31:56'),
(584, 1, 'admin/chart_of_accounts/44/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:32:02', '2020-12-04 12:32:02'),
(585, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:32:22', '2020-12-04 12:32:22'),
(586, 1, 'admin/building_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:32:28', '2020-12-04 12:32:28'),
(587, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:32:33', '2020-12-04 12:32:33'),
(588, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:32:39', '2020-12-04 12:32:39'),
(589, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:33:02', '2020-12-04 12:33:02'),
(590, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:33:17', '2020-12-04 12:33:17'),
(591, 1, 'admin/religion_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:33:39', '2020-12-04 12:33:39'),
(592, 1, 'admin/religion_information', 'POST', '103.86.111.196', '{\"description\":\"Muslim\",\"other_descriptions\":null,\"level\":null,\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/religion_information\"}', '2020-12-04 12:33:52', '2020-12-04 12:33:52'),
(593, 1, 'admin/religion_information', 'GET', '103.86.111.196', '[]', '2020-12-04 12:33:52', '2020-12-04 12:33:52'),
(594, 1, 'admin/religion_information/1/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:34:01', '2020-12-04 12:34:01'),
(595, 1, 'admin/religion_information/1', 'PUT', '103.86.111.196', '{\"description\":\"Hindu\",\"other_descriptions\":null,\"level\":null,\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/religion_information\"}', '2020-12-04 12:34:09', '2020-12-04 12:34:09'),
(596, 1, 'admin/religion_information', 'GET', '103.86.111.196', '[]', '2020-12-04 12:34:10', '2020-12-04 12:34:10'),
(597, 1, 'admin/religion_information/2/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:34:25', '2020-12-04 12:34:25'),
(598, 1, 'admin/religion_information/2', 'PUT', '103.86.111.196', '{\"description\":\"Christian\",\"other_descriptions\":null,\"level\":null,\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/religion_information\"}', '2020-12-04 12:34:52', '2020-12-04 12:34:52'),
(599, 1, 'admin/religion_information', 'GET', '103.86.111.196', '[]', '2020-12-04 12:34:53', '2020-12-04 12:34:53'),
(600, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:34:58', '2020-12-04 12:34:58'),
(601, 1, 'admin/religion_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:35:08', '2020-12-04 12:35:08'),
(602, 1, 'admin/religion_information', 'POST', '103.86.111.196', '{\"description\":\"Budhist\",\"other_descriptions\":null,\"level\":null,\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/religion_information\"}', '2020-12-04 12:35:21', '2020-12-04 12:35:21'),
(603, 1, 'admin/religion_information', 'GET', '103.86.111.196', '[]', '2020-12-04 12:35:22', '2020-12-04 12:35:22'),
(604, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:02', '2020-12-04 12:36:02'),
(605, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:06', '2020-12-04 12:36:06'),
(606, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:06', '2020-12-04 12:36:06'),
(607, 1, 'admin/designation_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:10', '2020-12-04 12:36:10'),
(608, 1, 'admin/designation_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:11', '2020-12-04 12:36:11'),
(609, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:14', '2020-12-04 12:36:14'),
(610, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:19', '2020-12-04 12:36:19'),
(611, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:45', '2020-12-04 12:36:45'),
(612, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:49', '2020-12-04 12:36:49'),
(613, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:50', '2020-12-04 12:36:50'),
(614, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:53', '2020-12-04 12:36:53'),
(615, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:53', '2020-12-04 12:36:53'),
(616, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:57', '2020-12-04 12:36:57'),
(617, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:36:58', '2020-12-04 12:36:58'),
(618, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:01', '2020-12-04 12:37:01'),
(619, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:03', '2020-12-04 12:37:03'),
(620, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:03', '2020-12-04 12:37:03'),
(621, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:06', '2020-12-04 12:37:06'),
(622, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:06', '2020-12-04 12:37:06'),
(623, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:13', '2020-12-04 12:37:13'),
(624, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:21', '2020-12-04 12:37:21'),
(625, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:21', '2020-12-04 12:37:21'),
(626, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:28', '2020-12-04 12:37:28'),
(627, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:28', '2020-12-04 12:37:28'),
(628, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:37:35', '2020-12-04 12:37:35'),
(629, 1, 'admin/district_information', 'GET', '103.86.111.196', '[]', '2020-12-04 12:38:00', '2020-12-04 12:38:00'),
(630, 1, 'admin/designation_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:38:10', '2020-12-04 12:38:10'),
(631, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:38:19', '2020-12-04 12:38:19'),
(632, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:38:23', '2020-12-04 12:38:23'),
(633, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:38:27', '2020-12-04 12:38:27'),
(634, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:38:31', '2020-12-04 12:38:31'),
(635, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:41:10', '2020-12-04 12:41:10'),
(636, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\"}', '2020-12-04 12:41:11', '2020-12-04 12:41:11'),
(637, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\"}', '2020-12-04 12:46:43', '2020-12-04 12:46:43'),
(638, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_sort\":{\"column\":\"code\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:46:49', '2020-12-04 12:46:49'),
(639, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:46:52', '2020-12-04 12:46:52'),
(640, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:47:12', '2020-12-04 12:47:12'),
(641, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"code\",\"type\":\"desc\"}}', '2020-12-04 12:47:21', '2020-12-04 12:47:21'),
(642, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"code\",\"type\":\"asc\"}}', '2020-12-04 12:47:33', '2020-12-04 12:47:33'),
(643, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:49:06', '2020-12-04 12:49:06'),
(644, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:49:09', '2020-12-04 12:49:09'),
(645, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:49:12', '2020-12-04 12:49:12'),
(646, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:49:18', '2020-12-04 12:49:18'),
(647, 1, 'admin/designation_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:49:30', '2020-12-04 12:49:30'),
(648, 1, 'admin/project_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:49:34', '2020-12-04 12:49:34'),
(649, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:55:03', '2020-12-04 12:55:03'),
(650, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 12:55:16', '2020-12-04 12:55:16'),
(651, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_sort\":{\"column\":\"code\",\"type\":\"asc\"}}', '2020-12-04 13:01:07', '2020-12-04 13:01:07'),
(652, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:21', '2020-12-04 13:01:21'),
(653, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:24', '2020-12-04 13:01:24'),
(654, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:25', '2020-12-04 13:01:25'),
(655, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:27', '2020-12-04 13:01:27'),
(656, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:29', '2020-12-04 13:01:29'),
(657, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:31', '2020-12-04 13:01:31'),
(658, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:32', '2020-12-04 13:01:32'),
(659, 1, 'admin/designation_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:35', '2020-12-04 13:01:35'),
(660, 1, 'admin/project_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:39', '2020-12-04 13:01:39'),
(661, 1, 'admin/project_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:39', '2020-12-04 13:01:39'),
(662, 1, 'admin/department_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:42', '2020-12-04 13:01:42'),
(663, 1, 'admin/department_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:42', '2020-12-04 13:01:42'),
(664, 1, 'admin/department_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:51', '2020-12-04 13:01:51'),
(665, 1, 'admin/project_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:55', '2020-12-04 13:01:55'),
(666, 1, 'admin/designation_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:58', '2020-12-04 13:01:58'),
(667, 1, 'admin/district_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:01:59', '2020-12-04 13:01:59'),
(668, 1, 'admin/religion_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:02:01', '2020-12-04 13:02:01'),
(669, 1, 'admin/section_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:02:03', '2020-12-04 13:02:03'),
(670, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:02:04', '2020-12-04 13:02:04'),
(671, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:02:05', '2020-12-04 13:02:05'),
(672, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:02:06', '2020-12-04 13:02:06'),
(673, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:02:09', '2020-12-04 13:02:09'),
(674, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:04:22', '2020-12-04 13:04:22'),
(675, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"code\",\"type\":\"desc\"}}', '2020-12-04 13:04:30', '2020-12-04 13:04:30'),
(676, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"code\",\"type\":\"asc\"}}', '2020-12-04 13:04:35', '2020-12-04 13:04:35'),
(677, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:05:04', '2020-12-04 13:05:04'),
(678, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 13:05:14', '2020-12-04 13:05:14'),
(679, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 13:05:25', '2020-12-04 13:05:25'),
(680, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3001002\",\"project_id\":\"2\",\"code_desc\":\"Furniture and fixture\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"41\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?&_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc\"}', '2020-12-04 13:05:27', '2020-12-04 13:05:27'),
(681, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"}}', '2020-12-04 13:05:27', '2020-12-04 13:05:27'),
(682, 1, 'admin/chart_of_accounts/40/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:06:28', '2020-12-04 13:06:28'),
(683, 1, 'admin/chart_of_accounts/40', 'PUT', '103.86.111.196', '{\"code\":\"2002\",\"project_id\":\"2\",\"code_desc\":\"INDIRECT EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"30\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?&_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc\"}', '2020-12-04 13:06:33', '2020-12-04 13:06:33'),
(684, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"}}', '2020-12-04 13:06:34', '2020-12-04 13:06:34'),
(685, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:07:03', '2020-12-04 13:07:03'),
(686, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2020-12-04 13:07:11', '2020-12-04 13:07:11'),
(687, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:07:41', '2020-12-04 13:07:41'),
(688, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3001003\",\"project_id\":\"2\",\"code_desc\":\"Generator\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"41\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:07:52', '2020-12-04 13:07:52'),
(689, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:07:53', '2020-12-04 13:07:53'),
(690, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"41\",\"l\":\"3\",\"c\":\"3001\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:08:01', '2020-12-04 13:08:01'),
(691, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"3001004\",\"project_id\":\"2\",\"code_desc\":\"Plant and Machinery\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"41\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:08:20', '2020-12-04 13:08:20'),
(692, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:08:20', '2020-12-04 13:08:20'),
(693, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"40\",\"l\":\"3\",\"c\":\"2002\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:08:35', '2020-12-04 13:08:35'),
(694, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002001\",\"project_id\":\"2\",\"code_desc\":\"Salary\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"40\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:08:45', '2020-12-04 13:08:45'),
(695, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:08:46', '2020-12-04 13:08:46'),
(696, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"40\",\"l\":\"3\",\"c\":\"2002\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:09:29', '2020-12-04 13:09:29'),
(697, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002002\",\"project_id\":\"2\",\"code_desc\":\"Office Rent\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"40\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:09:46', '2020-12-04 13:09:46'),
(698, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:09:47', '2020-12-04 13:09:47'),
(699, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"40\",\"l\":\"3\",\"c\":\"2002\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:10:12', '2020-12-04 13:10:12'),
(700, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002003\",\"project_id\":\"2\",\"code_desc\":\"Conveyance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"40\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:10:28', '2020-12-04 13:10:28'),
(701, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:10:28', '2020-12-04 13:10:28'),
(702, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"57\",\"l\":\"4\",\"c\":\"2002003\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:11:08', '2020-12-04 13:11:08'),
(703, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"29\",\"l\":\"2\",\"c\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:11:16', '2020-12-04 13:11:16'),
(704, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002003001\",\"project_id\":\"2\",\"code_desc\":\"Mr. Jamal Conveyance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"4\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"57\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:11:25', '2020-12-04 13:11:25'),
(705, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:11:26', '2020-12-04 13:11:26'),
(706, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:11:29', '2020-12-04 13:11:29'),
(707, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"57\",\"l\":\"4\",\"c\":\"2002003\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:11:35', '2020-12-04 13:11:35'),
(708, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002003002\",\"project_id\":\"2\",\"code_desc\":\"Mr. kamal  Conveyance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"4\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"57\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:11:48', '2020-12-04 13:11:48'),
(709, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:11:48', '2020-12-04 13:11:48'),
(710, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"57\",\"l\":\"4\",\"c\":\"2002003\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:11:56', '2020-12-04 13:11:56'),
(711, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:12:08', '2020-12-04 13:12:08'),
(712, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002003003\",\"project_id\":\"3\",\"code_desc\":\"Sabrina  Conveyance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"4\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"57\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 13:12:12', '2020-12-04 13:12:12'),
(713, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 13:12:13', '2020-12-04 13:12:13'),
(714, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:12:18', '2020-12-04 13:12:18'),
(715, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2020-12-04 13:12:43', '2020-12-04 13:12:43'),
(716, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:13:24', '2020-12-04 13:13:24'),
(717, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 13:13:29', '2020-12-04 13:13:29'),
(718, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 14:43:41', '2020-12-04 14:43:41'),
(719, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"40\",\"l\":\"3\",\"c\":\"2002\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:44:26', '2020-12-04 14:44:26'),
(720, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002004\",\"project_id\":\"2\",\"code_desc\":\"Maintenance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"40\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 14:44:42', '2020-12-04 14:44:42'),
(721, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 14:44:43', '2020-12-04 14:44:43'),
(722, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:44:50', '2020-12-04 14:44:50'),
(723, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"61\",\"l\":\"4\",\"c\":\"2002004\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:45:01', '2020-12-04 14:45:01'),
(724, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2002004001\",\"project_id\":\"2\",\"code_desc\":\"Photocopy Maintenance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"4\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"61\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=2\"}', '2020-12-04 14:45:24', '2020-12-04 14:45:24'),
(725, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"2\"}', '2020-12-04 14:45:24', '2020-12-04 14:45:24'),
(726, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:46:04', '2020-12-04 14:46:04'),
(727, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"33\",\"l\":\"2\",\"c\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:46:05', '2020-12-04 14:46:05'),
(728, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"5001\",\"project_id\":\"1\",\"code_desc\":\"Cash in hand\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"33\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1\"}', '2020-12-04 14:46:25', '2020-12-04 14:46:25'),
(729, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\"}', '2020-12-04 14:46:26', '2020-12-04 14:46:26'),
(730, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:46:36', '2020-12-04 14:46:36'),
(731, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:46:46', '2020-12-04 14:46:46'),
(732, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"6001\",\"project_id\":\"2\",\"code_desc\":\"Islami Bank Limited, CD 236674859, Dilkhsha Brance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=2\"}', '2020-12-04 14:47:16', '2020-12-04 14:47:16'),
(733, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"2\"}', '2020-12-04 14:47:17', '2020-12-04 14:47:17'),
(734, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"2\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:47:44', '2020-12-04 14:47:44'),
(735, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:47:45', '2020-12-04 14:47:45'),
(736, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:47:56', '2020-12-04 14:47:56'),
(737, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"6002\",\"project_id\":\"2\",\"code_desc\":\"Sonali Bank Limited, Banani Branch , CD 2388711\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100\"}', '2020-12-04 14:49:36', '2020-12-04 14:49:36'),
(738, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\"}', '2020-12-04 14:49:37', '2020-12-04 14:49:37'),
(739, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:50:07', '2020-12-04 14:50:07'),
(740, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\"}', '2020-12-04 14:50:11', '2020-12-04 14:50:11'),
(741, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"35\",\"l\":\"3\",\"c\":\"1001\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:50:22', '2020-12-04 14:50:22'),
(742, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:50:29', '2020-12-04 14:50:29'),
(743, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"6003\",\"project_id\":\"2\",\"code_desc\":\"Uttara  Bank Limited, CA No 4955069\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100\"}', '2020-12-04 14:50:31', '2020-12-04 14:50:31'),
(744, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\"}', '2020-12-04 14:50:31', '2020-12-04 14:50:31'),
(745, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"pi\":null,\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:50:41', '2020-12-04 14:50:41'),
(746, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:50:52', '2020-12-04 14:50:52'),
(747, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\"}', '2020-12-04 14:51:06', '2020-12-04 14:51:06'),
(748, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"pi\":null,\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:51:13', '2020-12-04 14:51:13'),
(749, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:51:42', '2020-12-04 14:51:42'),
(750, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:51:46', '2020-12-04 14:51:46'),
(751, 1, 'admin/chart_of_accounts/34/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:51:59', '2020-12-04 14:51:59'),
(752, 1, 'admin/chart_of_accounts/34', 'PUT', '103.86.111.196', '{\"code\":\"6\",\"project_id\":\"2\",\"code_desc\":\"CASH AT BANK\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100\"}', '2020-12-04 14:52:12', '2020-12-04 14:52:12'),
(753, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\"}', '2020-12-04 14:52:12', '2020-12-04 14:52:12'),
(754, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:52:26', '2020-12-04 14:52:26'),
(755, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:53:08', '2020-12-04 14:53:08'),
(756, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"6004\",\"project_id\":\"2\",\"code_desc\":\"AB Bank Limited, Karwan Bazar Branch , CD 00987654\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100\"}', '2020-12-04 14:53:23', '2020-12-04 14:53:23'),
(757, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '[]', '2020-12-04 14:53:24', '2020-12-04 14:53:24'),
(758, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"2001008\",\"project_id\":\"2\",\"code_desc\":null,\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?&per_page=100\"}', '2020-12-04 14:53:25', '2020-12-04 14:53:25'),
(759, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '[]', '2020-12-04 14:53:26', '2020-12-04 14:53:26'),
(760, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"39\",\"l\":\"3\",\"c\":\"2001\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:53:31', '2020-12-04 14:53:31'),
(761, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:53:41', '2020-12-04 14:53:41'),
(762, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:53:51', '2020-12-04 14:53:51'),
(763, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\"}', '2020-12-04 14:53:51', '2020-12-04 14:53:51'),
(764, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 14:53:57', '2020-12-04 14:53:57'),
(765, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:53:58', '2020-12-04 14:53:58'),
(766, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"34\",\"l\":\"2\",\"c\":\"6\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:54:24', '2020-12-04 14:54:24'),
(767, 1, 'admin/chart_of_accounts', 'POST', '103.86.111.196', '{\"code\":\"6005\",\"project_id\":\"2\",\"code_desc\":\"Southeast Bankl Limited, CD 884475586\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100\"}', '2020-12-04 14:54:42', '2020-12-04 14:54:42'),
(768, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\"}', '2020-12-04 14:54:42', '2020-12-04 14:54:42'),
(769, 1, 'admin/_handle_action_', 'POST', '103.86.111.196', '{\"_key\":\"68\",\"_model\":\"App_Models_ChartOfAccount\",\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-12-04 14:54:48', '2020-12-04 14:54:48'),
(770, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:54:49', '2020-12-04 14:54:49'),
(771, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '[]', '2020-12-04 14:55:03', '2020-12-04 14:55:03'),
(772, 1, 'admin/chart_of_accounts/31/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:55:15', '2020-12-04 14:55:15');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(773, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:55:19', '2020-12-04 14:55:19'),
(774, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-04 14:55:56', '2020-12-04 14:55:56'),
(775, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:56:02', '2020-12-04 14:56:02'),
(776, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2020-12-04 14:56:21', '2020-12-04 14:56:21'),
(777, 1, 'admin', 'GET', '103.86.111.196', '[]', '2020-12-04 14:56:24', '2020-12-04 14:56:24'),
(778, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:56:33', '2020-12-04 14:56:33'),
(779, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_columns_\":\"code,code_desc\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 14:57:34', '2020-12-04 14:57:34'),
(780, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_columns_\":\"code,code_desc\",\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-04 14:57:47', '2020-12-04 14:57:47'),
(781, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_columns_\":\"code,code_desc,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:00:32', '2020-12-04 15:00:32'),
(782, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_columns_\":\"code,code_desc,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:00:44', '2020-12-04 15:00:44'),
(783, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_columns_\":\"origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:01:47', '2020-12-04 15:01:47'),
(784, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_columns_\":\"origin\",\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-04 15:02:19', '2020-12-04 15:02:19'),
(785, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_columns_\":\"origin\",\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2020-12-04 15:02:46', '2020-12-04 15:02:46'),
(786, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_columns_\":\"origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:03:36', '2020-12-04 15:03:36'),
(787, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:05:37', '2020-12-04 15:05:37'),
(788, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:05:43', '2020-12-04 15:05:43'),
(789, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"parent_id\":\"0\",\"title\":\"System Information\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\"}', '2020-12-04 15:07:14', '2020-12-04 15:07:14'),
(790, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 15:07:14', '2020-12-04 15:07:14'),
(791, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_order\":\"[{\\\"id\\\":48,\\\"children\\\":[{\\\"id\\\":47},{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40},{\\\"id\\\":41},{\\\"id\\\":42},{\\\"id\\\":43},{\\\"id\\\":44},{\\\"id\\\":45},{\\\"id\\\":46}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":28},{\\\"id\\\":34}]\"}', '2020-12-04 15:07:44', '2020-12-04 15:07:44'),
(792, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 15:08:00', '2020-12-04 15:08:00'),
(793, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"parent_id\":\"0\",\"title\":\"Accounts\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\"}', '2020-12-04 15:08:29', '2020-12-04 15:08:29'),
(794, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 15:08:34', '2020-12-04 15:08:34'),
(795, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_order\":\"[{\\\"id\\\":49,\\\"children\\\":[{\\\"id\\\":47}]},{\\\"id\\\":48,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40},{\\\"id\\\":41},{\\\"id\\\":42},{\\\"id\\\":43},{\\\"id\\\":44},{\\\"id\\\":45},{\\\"id\\\":46}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":28},{\\\"id\\\":34}]\"}', '2020-12-04 15:08:43', '2020-12-04 15:08:43'),
(796, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:08:44', '2020-12-04 15:08:44'),
(797, 1, 'admin/auth/menu/47/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:08:55', '2020-12-04 15:08:55'),
(798, 1, 'admin/auth/menu/47/edit', 'GET', '103.86.111.196', '[]', '2020-12-04 15:09:06', '2020-12-04 15:09:06'),
(799, 1, 'admin/building_information', 'GET', '103.86.111.196', '[]', '2020-12-04 15:09:25', '2020-12-04 15:09:25'),
(800, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-04 15:12:42', '2020-12-04 15:12:42'),
(801, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,code_level,id,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:13:12', '2020-12-04 15:13:12'),
(802, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:13:34', '2020-12-04 15:13:34'),
(803, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:50:26', '2020-12-04 15:50:26'),
(804, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_columns_\":\"origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 15:50:39', '2020-12-04 15:50:39'),
(805, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_columns_\":\"origin\",\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-04 15:52:01', '2020-12-04 15:52:01'),
(806, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:27:39', '2020-12-04 16:27:39'),
(807, 1, 'admin/chart_of_accounts/35/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:30:16', '2020-12-04 16:30:16'),
(808, 1, 'admin/chart_of_accounts/35/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:30:34', '2020-12-04 16:30:34'),
(809, 1, 'admin/chart_of_accounts/35', 'PUT', '103.86.111.196', '{\"code\":\"1001\",\"project_id\":\"2\",\"code_desc\":\"Sales  Medicine\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:30:37', '2020-12-04 16:30:37'),
(810, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:30:38', '2020-12-04 16:30:38'),
(811, 1, 'admin/chart_of_accounts/36/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:30:51', '2020-12-04 16:30:51'),
(812, 1, 'admin/chart_of_accounts/36', 'PUT', '103.86.111.196', '{\"code\":\"1002\",\"project_id\":\"2\",\"code_desc\":\"Sales Strips\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:30:54', '2020-12-04 16:30:54'),
(813, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:30:55', '2020-12-04 16:30:55'),
(814, 1, 'admin/chart_of_accounts/35/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:31:38', '2020-12-04 16:31:38'),
(815, 1, 'admin/chart_of_accounts/35', 'PUT', '103.86.111.196', '{\"code\":\"1001\",\"project_id\":\"2\",\"code_desc\":\"Sales  Medicine\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:31:41', '2020-12-04 16:31:41'),
(816, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:31:42', '2020-12-04 16:31:42'),
(817, 1, 'admin/chart_of_accounts/36/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:31:52', '2020-12-04 16:31:52'),
(818, 1, 'admin/chart_of_accounts/36', 'PUT', '103.86.111.196', '{\"code\":\"1002\",\"project_id\":\"2\",\"code_desc\":\"Sales Strips\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:31:56', '2020-12-04 16:31:56'),
(819, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:31:56', '2020-12-04 16:31:56'),
(820, 1, 'admin/chart_of_accounts/49/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:32:05', '2020-12-04 16:32:05'),
(821, 1, 'admin/chart_of_accounts/49', 'PUT', '103.86.111.196', '{\"code\":\"2001005\",\"project_id\":\"2\",\"code_desc\":\"Loading unloading charge\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2001\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:32:08', '2020-12-04 16:32:08'),
(822, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:32:09', '2020-12-04 16:32:09'),
(823, 1, 'admin/chart_of_accounts/30/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:32:26', '2020-12-04 16:32:26'),
(824, 1, 'admin/chart_of_accounts/30', 'PUT', '103.86.111.196', '{\"code\":\"2\",\"project_id\":\"0\",\"code_desc\":\"EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:32:30', '2020-12-04 16:32:30'),
(825, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:32:30', '2020-12-04 16:32:30'),
(826, 1, 'admin/chart_of_accounts/30/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:32:46', '2020-12-04 16:32:46'),
(827, 1, 'admin/chart_of_accounts/30', 'PUT', '103.86.111.196', '{\"code\":\"2\",\"project_id\":\"2\",\"code_desc\":\"EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:32:52', '2020-12-04 16:32:52'),
(828, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:32:52', '2020-12-04 16:32:52'),
(829, 1, 'admin/chart_of_accounts/39/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:33:02', '2020-12-04 16:33:02'),
(830, 1, 'admin/chart_of_accounts/39', 'PUT', '103.86.111.196', '{\"code\":\"2001\",\"project_id\":\"2\",\"code_desc\":\"DIRECT EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"30\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:33:04', '2020-12-04 16:33:04'),
(831, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:33:05', '2020-12-04 16:33:05'),
(832, 1, 'admin/chart_of_accounts/49/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:33:15', '2020-12-04 16:33:15'),
(833, 1, 'admin/chart_of_accounts/49', 'PUT', '103.86.111.196', '{\"code\":\"2001005\",\"project_id\":\"2\",\"code_desc\":\"Loading unloading charge\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2001\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:33:18', '2020-12-04 16:33:18'),
(834, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:33:19', '2020-12-04 16:33:19'),
(835, 1, 'admin/chart_of_accounts/37/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:34:43', '2020-12-04 16:34:43'),
(836, 1, 'admin/chart_of_accounts/37', 'PUT', '103.86.111.196', '{\"code\":\"1003\",\"project_id\":\"2\",\"code_desc\":\"Sales Machine\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:34:50', '2020-12-04 16:34:50'),
(837, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:34:51', '2020-12-04 16:34:51'),
(838, 1, 'admin/chart_of_accounts/31/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:35:08', '2020-12-04 16:35:08'),
(839, 1, 'admin/chart_of_accounts/31', 'PUT', '103.86.111.196', '{\"code\":\"3\",\"project_id\":\"2\",\"code_desc\":\"ASSETS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"3\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:35:16', '2020-12-04 16:35:16'),
(840, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:35:17', '2020-12-04 16:35:17'),
(841, 1, 'admin/chart_of_accounts/64/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:35:43', '2020-12-04 16:35:43'),
(842, 1, 'admin/chart_of_accounts/64', 'PUT', '103.86.111.196', '{\"code\":\"6001\",\"project_id\":\"2\",\"code_desc\":\"Islami Bank Limited, CD 236674859, Dilkhsha Brance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:35:47', '2020-12-04 16:35:47'),
(843, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:35:48', '2020-12-04 16:35:48'),
(844, 1, 'admin/chart_of_accounts/69/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:35:59', '2020-12-04 16:35:59'),
(845, 1, 'admin/chart_of_accounts/69', 'PUT', '103.86.111.196', '{\"code\":\"6005\",\"project_id\":\"2\",\"code_desc\":\"Southeast Bankl Limited, CD 884475586\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:36:01', '2020-12-04 16:36:01'),
(846, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:36:02', '2020-12-04 16:36:02'),
(847, 1, 'admin/chart_of_accounts/67/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:36:09', '2020-12-04 16:36:09'),
(848, 1, 'admin/chart_of_accounts/67', 'PUT', '103.86.111.196', '{\"code\":\"6004\",\"project_id\":\"2\",\"code_desc\":\"AB Bank Limited, Karwan Bazar Branch , CD 00987654\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:36:12', '2020-12-04 16:36:12'),
(849, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:36:13', '2020-12-04 16:36:13'),
(850, 1, 'admin/chart_of_accounts/66/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:36:27', '2020-12-04 16:36:27'),
(851, 1, 'admin/chart_of_accounts/66', 'PUT', '103.86.111.196', '{\"code\":\"6003\",\"project_id\":\"2\",\"code_desc\":\"Uttara  Bank Limited, CA No 4955069\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:36:30', '2020-12-04 16:36:30'),
(852, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:36:31', '2020-12-04 16:36:31'),
(853, 1, 'admin/chart_of_accounts/65/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:36:46', '2020-12-04 16:36:46'),
(854, 1, 'admin/chart_of_accounts/65', 'PUT', '103.86.111.196', '{\"code\":\"6002\",\"project_id\":\"2\",\"code_desc\":\"Sonali Bank Limited, Banani Branch , CD 2388711\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:36:49', '2020-12-04 16:36:49'),
(855, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:36:50', '2020-12-04 16:36:50'),
(856, 1, 'admin/chart_of_accounts/64/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:37:00', '2020-12-04 16:37:00'),
(857, 1, 'admin/chart_of_accounts/64', 'PUT', '103.86.111.196', '{\"code\":\"6001\",\"project_id\":\"2\",\"code_desc\":\"Islami Bank Limited, CD 236674859, Dilkhsha Brance\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"34\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:37:03', '2020-12-04 16:37:03'),
(858, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:37:04', '2020-12-04 16:37:04'),
(859, 1, 'admin/chart_of_accounts/34/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:37:16', '2020-12-04 16:37:16'),
(860, 1, 'admin/chart_of_accounts/34', 'PUT', '103.86.111.196', '{\"code\":\"6\",\"project_id\":\"2\",\"code_desc\":\"CASH AT BANK\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"6\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:37:18', '2020-12-04 16:37:18'),
(861, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:37:19', '2020-12-04 16:37:19'),
(862, 1, 'admin/chart_of_accounts/32/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:37:31', '2020-12-04 16:37:31'),
(863, 1, 'admin/chart_of_accounts/32', 'PUT', '103.86.111.196', '{\"code\":\"4\",\"project_id\":\"2\",\"code_desc\":\"LIABILITIES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"4\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:37:38', '2020-12-04 16:37:38'),
(864, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:37:39', '2020-12-04 16:37:39'),
(865, 1, 'admin/chart_of_accounts/33/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:38:18', '2020-12-04 16:38:18'),
(866, 1, 'admin/chart_of_accounts/33', 'PUT', '103.86.111.196', '{\"code\":\"5\",\"project_id\":\"0\",\"code_desc\":\"CASH IN HAND\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"5\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:38:21', '2020-12-04 16:38:21'),
(867, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:38:22', '2020-12-04 16:38:22'),
(868, 1, 'admin/chart_of_accounts/33/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:38:41', '2020-12-04 16:38:41'),
(869, 1, 'admin/chart_of_accounts/33', 'PUT', '103.86.111.196', '{\"code\":\"5\",\"project_id\":\"2\",\"code_desc\":\"CASH IN HAND\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"5\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:38:49', '2020-12-04 16:38:49'),
(870, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:38:49', '2020-12-04 16:38:49'),
(871, 1, 'admin/chart_of_accounts/42/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:39:02', '2020-12-04 16:39:02'),
(872, 1, 'admin/chart_of_accounts/42', 'PUT', '103.86.111.196', '{\"code\":\"3002\",\"project_id\":\"2\",\"code_desc\":\"CURRENT ASSETS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"3\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"31\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 16:39:09', '2020-12-04 16:39:09'),
(873, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 16:39:10', '2020-12-04 16:39:10'),
(874, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:54:37', '2020-12-04 16:54:37'),
(875, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2020-12-04 16:54:46', '2020-12-04 16:54:46'),
(876, 1, 'admin/chart_of_accounts/29/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:55:34', '2020-12-04 16:55:34'),
(877, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 16:55:45', '2020-12-04 16:55:45'),
(878, 1, 'admin/chart_of_accounts/35', 'PUT', '103.86.111.196', '{\"name\":\"code_level\",\"value\":\"12\",\"pk\":\"35\",\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-12-04 16:55:54', '2020-12-04 16:55:54'),
(879, 1, 'admin/chart_of_accounts/35', 'PUT', '103.86.111.196', '{\"name\":\"code_level\",\"value\":\"1\",\"pk\":\"35\",\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2020-12-04 16:56:02', '2020-12-04 16:56:02'),
(880, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 17:30:03', '2020-12-04 17:30:03'),
(881, 1, 'admin/chart_of_accounts/29/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:31:11', '2020-12-04 17:31:11'),
(882, 1, 'admin/chart_of_accounts/29', 'PUT', '103.86.111.196', '{\"code\":\"1\",\"project_id\":\"2\",\"code_desc\":\"INCOME\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 17:31:17', '2020-12-04 17:31:17'),
(883, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 17:31:18', '2020-12-04 17:31:18'),
(884, 1, 'admin/chart_of_accounts/38/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:31:31', '2020-12-04 17:31:31'),
(885, 1, 'admin/chart_of_accounts/38', 'PUT', '103.86.111.196', '{\"code\":\"1004\",\"project_id\":\"2\",\"code_desc\":\"Sales ( Miscelleneous)\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"1\",\"b_code\":null,\"acc_level\":\"2\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"29\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 17:31:36', '2020-12-04 17:31:36'),
(886, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 17:31:37', '2020-12-04 17:31:37'),
(887, 1, 'admin/chart_of_accounts/30/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:32:08', '2020-12-04 17:32:08'),
(888, 1, 'admin/chart_of_accounts/30', 'PUT', '103.86.111.196', '{\"code\":\"2\",\"project_id\":\"2\",\"code_desc\":\"EXPENSES\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 17:32:12', '2020-12-04 17:32:12'),
(889, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 17:32:12', '2020-12-04 17:32:12'),
(890, 1, 'admin/chart_of_accounts/45/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:32:41', '2020-12-04 17:32:41'),
(891, 1, 'admin/chart_of_accounts/45', 'PUT', '103.86.111.196', '{\"code\":\"2001001\",\"project_id\":\"2\",\"code_desc\":\"Wages\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2001\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 17:32:44', '2020-12-04 17:32:44'),
(892, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 17:32:45', '2020-12-04 17:32:45'),
(893, 1, 'admin/chart_of_accounts/create', 'GET', '103.86.111.196', '{\"p\":\"46\",\"l\":\"4\",\"c\":\"2001002\",\"pi\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:33:22', '2020-12-04 17:33:22'),
(894, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:33:26', '2020-12-04 17:33:26'),
(895, 1, 'admin/chart_of_accounts/46/edit', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 17:54:14', '2020-12-04 17:54:14'),
(896, 1, 'admin/chart_of_accounts/46', 'PUT', '103.86.111.196', '{\"code\":\"2001002\",\"project_id\":\"2\",\"code_desc\":\"Overtime\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"2001\",\"b_code\":null,\"acc_level\":\"3\",\"g_code\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"39\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/chart_of_accounts?_sort%5Bcolumn%5D=code&_sort%5Btype%5D=asc&page=1&per_page=100&_columns_=Project+Name%2Ccode%2Ccode_desc%2Cid%2Corigin\"}', '2020-12-04 17:54:17', '2020-12-04 17:54:17'),
(897, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 17:54:18', '2020-12-04 17:54:18'),
(898, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:06:20', '2020-12-04 18:06:20'),
(899, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"parent_id\":\"0\",\"title\":\"Inventory\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\"}', '2020-12-04 18:06:41', '2020-12-04 18:06:41'),
(900, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 18:06:42', '2020-12-04 18:06:42'),
(901, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"parent_id\":\"50\",\"title\":\"Item\",\"icon\":\"fa-bars\",\"uri\":\"iteams\",\"roles\":[null],\"permission\":null,\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\"}', '2020-12-04 18:07:09', '2020-12-04 18:07:09'),
(902, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 18:07:10', '2020-12-04 18:07:10'),
(903, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"parent_id\":\"50\",\"title\":\"Size Information\",\"icon\":\"fa-bars\",\"uri\":\"size_information\",\"roles\":[null],\"permission\":null,\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\"}', '2020-12-04 18:07:35', '2020-12-04 18:07:35'),
(904, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 18:07:36', '2020-12-04 18:07:36'),
(905, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"parent_id\":\"50\",\"title\":\"Packing Information\",\"icon\":\"fa-bars\",\"uri\":\"packing_information\",\"roles\":[null],\"permission\":null,\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\"}', '2020-12-04 18:07:56', '2020-12-04 18:07:56'),
(906, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 18:07:57', '2020-12-04 18:07:57'),
(907, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 18:08:06', '2020-12-04 18:08:06'),
(908, 1, 'admin/auth/menu', 'POST', '103.86.111.196', '{\"_token\":\"KqNB3DJuNl9LG2WDc7qScgebjAvk5pGDplAJJvrI\",\"_order\":\"[{\\\"id\\\":50,\\\"children\\\":[{\\\"id\\\":51},{\\\"id\\\":52},{\\\"id\\\":53},{\\\"id\\\":39}]},{\\\"id\\\":49,\\\"children\\\":[{\\\"id\\\":47}]},{\\\"id\\\":48,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":40},{\\\"id\\\":41},{\\\"id\\\":42},{\\\"id\\\":43},{\\\"id\\\":44},{\\\"id\\\":45},{\\\"id\\\":46}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":28},{\\\"id\\\":34}]\"}', '2020-12-04 18:08:15', '2020-12-04 18:08:15'),
(909, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:08:16', '2020-12-04 18:08:16'),
(910, 1, 'admin/auth/menu', 'GET', '103.86.111.196', '[]', '2020-12-04 18:08:21', '2020-12-04 18:08:21'),
(911, 1, 'admin/size_information', 'GET', '103.86.111.196', '[]', '2020-12-04 18:11:15', '2020-12-04 18:11:15'),
(912, 1, 'admin/packing_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:11:23', '2020-12-04 18:11:23'),
(913, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:11:27', '2020-12-04 18:11:27'),
(914, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:11:33', '2020-12-04 18:11:33'),
(915, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:11:48', '2020-12-04 18:11:48'),
(916, 1, 'admin/size_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:12:03', '2020-12-04 18:12:03'),
(917, 1, 'admin/size_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:12:14', '2020-12-04 18:12:14'),
(918, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_sort\":{\"column\":\"code\",\"type\":\"asc\"},\"page\":\"1\",\"per_page\":\"100\",\"_columns_\":\"Project Name,code,code_desc,id,origin\"}', '2020-12-04 18:12:41', '2020-12-04 18:12:41'),
(919, 1, 'admin/size_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:00', '2020-12-04 18:13:00'),
(920, 1, 'admin/size_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:05', '2020-12-04 18:13:05'),
(921, 1, 'admin/size_information', 'POST', '103.86.111.196', '{\"description\":\"2xl\",\"other_descriptions\":null,\"level\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/size_information\"}', '2020-12-04 18:13:24', '2020-12-04 18:13:24'),
(922, 1, 'admin/size_information', 'GET', '103.86.111.196', '[]', '2020-12-04 18:13:24', '2020-12-04 18:13:24'),
(923, 1, 'admin/packing_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:28', '2020-12-04 18:13:28'),
(924, 1, 'admin/packing_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:32', '2020-12-04 18:13:32'),
(925, 1, 'admin/packing_information', 'POST', '103.86.111.196', '{\"description\":\"12x16x10\",\"other_descriptions\":null,\"level\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/packing_information\"}', '2020-12-04 18:13:43', '2020-12-04 18:13:43'),
(926, 1, 'admin/packing_information', 'GET', '103.86.111.196', '[]', '2020-12-04 18:13:43', '2020-12-04 18:13:43'),
(927, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:45', '2020-12-04 18:13:45'),
(928, 1, 'admin/unit_information/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:49', '2020-12-04 18:13:49'),
(929, 1, 'admin/unit_information', 'POST', '103.86.111.196', '{\"description\":\"Pcs.\",\"other_descriptions\":null,\"level\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\",\"_previous_\":\"http:\\/\\/talemul.learnercampus.com\\/admin\\/unit_information\"}', '2020-12-04 18:13:55', '2020-12-04 18:13:55'),
(930, 1, 'admin/unit_information', 'GET', '103.86.111.196', '[]', '2020-12-04 18:13:55', '2020-12-04 18:13:55'),
(931, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:13:58', '2020-12-04 18:13:58'),
(932, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:14:02', '2020-12-04 18:14:02'),
(933, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '[]', '2020-12-04 18:17:19', '2020-12-04 18:17:19'),
(934, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:17:20', '2020-12-04 18:17:20'),
(935, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:17:22', '2020-12-04 18:17:22'),
(936, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '[]', '2020-12-04 18:18:41', '2020-12-04 18:18:41'),
(937, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '[]', '2020-12-04 18:19:01', '2020-12-04 18:19:01'),
(938, 1, 'admin/iteams/create', 'GET', '103.86.111.196', '[]', '2020-12-04 18:19:01', '2020-12-04 18:19:01'),
(939, 1, 'admin/chart_of_accounts', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:19:11', '2020-12-04 18:19:11'),
(940, 1, 'admin/iteams', 'POST', '103.86.111.196', '{\"code\":\"1\",\"project_id\":\"2\",\"code_desc\":\"RAW MATERIALS\",\"other_desc\":null,\"code_tech_desc\":null,\"code_level\":\"1\",\"p_code\":\"00\",\"b_code\":null,\"acc_level\":\"1\",\"g_code\":null,\"packing_id\":null,\"unit_id\":null,\"size_id\":null,\"created_by\":\"1\",\"updated_by\":\"1\",\"p_id\":\"0\",\"_token\":\"0WYEWuwSEOyHFR68TuK01uK9Ro9AMN8LpphMDxtn\"}', '2020-12-04 18:19:16', '2020-12-04 18:19:16'),
(941, 1, 'admin/iteams', 'GET', '103.86.111.196', '[]', '2020-12-04 18:19:17', '2020-12-04 18:19:17'),
(942, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_columns_\":\"Project Name,code_desc,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:19:42', '2020-12-04 18:19:42'),
(943, 1, 'admin/project_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:19:55', '2020-12-04 18:19:55'),
(944, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:20:13', '2020-12-04 18:20:13'),
(945, 1, 'admin/iteams', 'GET', '103.86.111.196', '[]', '2020-12-04 18:23:49', '2020-12-04 18:23:49'),
(946, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:27:32', '2020-12-04 18:27:32'),
(947, 1, 'admin', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:27:59', '2020-12-04 18:27:59'),
(948, 1, 'admin/auth/setting', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:28:33', '2020-12-04 18:28:33'),
(949, 1, 'admin', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:28:55', '2020-12-04 18:28:55'),
(950, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_columns_\":\"Project Name,code_desc,origin\",\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:29:11', '2020-12-04 18:29:11'),
(951, 1, 'admin/iteams', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:29:59', '2020-12-04 18:29:59'),
(952, 1, 'admin/size_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:30:02', '2020-12-04 18:30:02'),
(953, 1, 'admin/packing_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:30:05', '2020-12-04 18:30:05'),
(954, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:30:08', '2020-12-04 18:30:08'),
(955, 1, 'admin/unit_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-04 18:30:17', '2020-12-04 18:30:17'),
(956, 1, 'admin/packing_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:36:41', '2020-12-04 18:36:41'),
(957, 1, 'admin/building_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:36:46', '2020-12-04 18:36:46'),
(958, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:36:52', '2020-12-04 18:36:52'),
(959, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:36:55', '2020-12-04 18:36:55'),
(960, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:36:55', '2020-12-04 18:36:55'),
(961, 1, 'admin/iteams', 'GET', '103.86.111.196', '[]', '2020-12-04 18:37:27', '2020-12-04 18:37:27'),
(962, 1, 'admin/shift_information', 'GET', '103.86.111.196', '{\"_pjax\":\"#pjax-container\"}', '2020-12-04 18:37:56', '2020-12-04 18:37:56'),
(963, 1, 'admin/iteams', 'GET', '103.101.199.100', '[]', '2020-12-05 10:23:24', '2020-12-05 10:23:24'),
(964, 1, 'admin/iteams', 'GET', '103.101.199.100', '[]', '2020-12-05 10:31:45', '2020-12-05 10:31:45'),
(965, 1, 'admin/chart_of_accounts', 'GET', '27.147.203.195', '[]', '2020-12-05 11:21:21', '2020-12-05 11:21:21'),
(966, 1, 'admin/auth/logout', 'GET', '27.147.203.195', '{\"_pjax\":\"#pjax-container\"}', '2020-12-05 12:08:29', '2020-12-05 12:08:29'),
(967, 1, 'admin', 'GET', '103.101.199.100', '[]', '2020-12-05 17:52:33', '2020-12-05 17:52:33'),
(968, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\"}', '2020-12-05 17:52:45', '2020-12-05 17:52:45'),
(969, 1, 'admin/chart_of_accounts', 'GET', '103.101.199.100', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2020-12-05 17:52:53', '2020-12-05 17:52:53'),
(970, 1, 'admin', 'GET', '103.101.199.100', '[]', '2020-12-05 17:53:13', '2020-12-05 17:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(7, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2020-11-21 01:55:45', '2020-11-21 01:55:45'),
(8, 'Logs', 'ext.log-viewer', '', '/logs*', '2020-11-21 01:56:02', '2020-11-21 01:56:02'),
(11, 'Backup', 'ext.backup', '', '/backup*', '2020-11-21 03:20:10', '2020-11-21 03:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-11-21 01:24:48', '2020-11-21 01:24:48'),
(2, 'backup', 'backup', '2020-11-23 23:11:31', '2020-11-23 23:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$uWjs/EjATf/LsevM2StTr.C..NzJ.gpGmpkevG8BTKckl0A1D1NXi', 'Administrator', NULL, 'P7vHYbTIvSZJwWDVBPTEMX8b7fYj2KoJNZ06m5nIy4gKzEnGl6qUZVNL2VIZ', '2020-11-21 01:24:48', '2020-11-21 01:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `building_informations`
--

CREATE TABLE `building_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '000',
  `code_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `project_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `code`, `code_desc`, `project_id`, `project_name`, `other_desc`, `code_tech_desc`, `code_level`, `p_code`, `b_code`, `acc_level`, `g_code`, `origin`, `created_by`, `updated_by`, `p_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, '1', 'Asset', NULL, NULL, 'Asset', NULL, '1', '1', NULL, '1', NULL, 'Asset', '1', '1', '0', '2020-11-28 23:25:03', '2020-12-04 11:49:02', '2020-12-04 11:49:02'),
(16, '1001', 'Account Receivable', NULL, NULL, 'Account Receivable', NULL, '1', '1', NULL, '2', NULL, 'Asset>Account Receivable', '1', '1', '15', '2020-11-28 23:25:40', '2020-12-04 11:45:20', '2020-12-04 11:45:20'),
(17, '1001001', 'Sworana Rice Agency', NULL, NULL, 'Sworana Rice Agency', NULL, '1', '1001', NULL, '3', NULL, 'Asset>Account Receivable>Sworana Rice Agency', '1', '1', '16', '2020-11-28 23:25:59', '2020-12-04 10:57:29', '2020-12-04 10:57:29'),
(18, '2', 'Income', NULL, NULL, NULL, NULL, '1', '2', NULL, '1', NULL, 'Income', '1', '1', '0', '2020-11-28 23:40:42', '2020-12-04 11:49:11', '2020-12-04 11:49:11'),
(19, '3', 'Liability', NULL, NULL, 'Liability', NULL, '1', '3', NULL, '1', NULL, 'Liability', '1', '1', '0', '2020-11-29 08:44:40', '2020-11-29 08:44:59', '2020-11-29 08:44:59'),
(20, '3', 'Liability', NULL, NULL, 'Liability', NULL, '1', '3', NULL, '1', NULL, 'Liability', '1', '1', '0', '2020-11-29 08:45:08', '2020-12-04 11:49:19', '2020-12-04 11:49:19'),
(21, '2001', 'Sales Revenue', NULL, NULL, NULL, NULL, '1', '2', NULL, '2', NULL, 'Income>Sales Revenue', '1', '1', '18', '2020-11-29 12:22:00', '2020-12-04 11:45:34', '2020-12-04 11:45:34'),
(22, '2001001', 'Bag sales', NULL, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'Income>Sales Revenue>Bag sales', '1', '1', '21', '2020-11-29 12:22:59', '2020-12-04 11:45:49', '2020-12-04 11:45:49'),
(23, '2001001001', 'Jute Bag', NULL, NULL, 'Hessian', NULL, '1', '2001001', NULL, '4', NULL, 'Income>Sales Revenue>Bag sales>Jute Bag', '1', '1', '22', '2020-11-29 12:27:45', '2020-12-04 10:58:23', '2020-12-04 10:58:23'),
(24, '2001001002', 'Woven Bag', NULL, NULL, 'PP 150 GSM', NULL, '1', '2001001', NULL, '4', NULL, 'Income>Sales Revenue>Bag sales>Woven Bag', '1', '1', '22', '2020-11-29 12:28:04', '2020-12-04 11:45:58', '2020-12-04 11:45:58'),
(25, '3001', 'Sundry Creditors', NULL, NULL, NULL, NULL, '1', '3', NULL, '2', NULL, 'Liability>Sundry Creditors', '1', '1', '20', '2020-11-29 13:27:14', '2020-12-04 11:46:10', '2020-12-04 11:46:10'),
(26, '3001001', 'jamal housing  limed', NULL, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'Liability>Sundry Creditors>jamal housing  limed', '1', '1', '25', '2020-11-29 13:28:00', '2020-12-04 11:47:47', '2020-12-04 11:47:47'),
(27, '3001002', 'kamal clothing', NULL, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'Liability>Sundry Creditors>kamal clothing', '1', '1', '25', '2020-11-29 13:28:24', '2020-12-04 11:48:00', '2020-12-04 11:48:00'),
(28, '3001003', 'rms sweaters limited', NULL, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'Liability>Sundry Creditors>rms sweaters limited', '1', '1', '25', '2020-11-29 13:28:45', '2020-12-04 11:48:14', '2020-12-04 11:48:14'),
(29, '1', 'INCOME', 2, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, 'INCOME', '1', '1', '0', '2020-12-04 11:49:56', '2020-12-04 17:31:17', NULL),
(30, '2', 'EXPENSES', 2, NULL, NULL, NULL, '1', '2', NULL, '1', NULL, 'EXPENSES', '1', '1', '0', '2020-12-04 11:50:19', '2020-12-04 16:32:52', NULL),
(31, '3', 'ASSETS', 2, NULL, NULL, NULL, '1', '3', NULL, '1', NULL, 'ASSETS', '1', '1', '0', '2020-12-04 11:50:36', '2020-12-04 16:35:16', NULL),
(32, '4', 'LIABILITIES', 2, NULL, NULL, NULL, '1', '4', NULL, '1', NULL, 'LIABILITIES', '1', '1', '0', '2020-12-04 11:50:54', '2020-12-04 16:37:38', NULL),
(33, '5', 'CASH IN HAND', 2, NULL, NULL, NULL, '1', '5', NULL, '1', NULL, 'CASH IN HAND', '1', '1', '0', '2020-12-04 11:51:08', '2020-12-04 16:38:49', NULL),
(34, '6', 'CASH AT BANK', 2, NULL, NULL, NULL, '1', '6', NULL, '1', NULL, 'CASH AT BANK', '1', '1', '0', '2020-12-04 11:51:21', '2020-12-04 14:52:12', NULL),
(35, '1001', 'Sales  Medicine', 2, NULL, NULL, NULL, '1', '1', NULL, '2', NULL, 'Sales  Medicine<INCOME', '1', '1', '29', '2020-12-04 11:52:10', '2020-12-04 16:56:03', NULL),
(36, '1002', 'Sales Strips', 2, NULL, NULL, NULL, '1', '1', NULL, '2', NULL, 'Sales Strips<INCOME', '1', '1', '29', '2020-12-04 11:52:27', '2020-12-04 16:31:56', NULL),
(37, '1003', 'Sales Machine', 2, NULL, NULL, NULL, '1', '1', NULL, '2', NULL, 'Sales Machine<INCOME', '1', '1', '29', '2020-12-04 11:52:42', '2020-12-04 16:34:50', NULL),
(38, '1004', 'Sales ( Miscelleneous)', 2, NULL, NULL, NULL, '1', '1', NULL, '2', NULL, 'Sales ( Miscelleneous)<INCOME', '1', '1', '29', '2020-12-04 11:53:00', '2020-12-04 17:31:36', NULL),
(39, '2001', 'DIRECT EXPENSES', 2, NULL, NULL, NULL, '1', '2', NULL, '2', NULL, 'DIRECT EXPENSES<EXPENSES', '1', '1', '30', '2020-12-04 11:53:49', '2020-12-04 16:33:04', NULL),
(40, '2002', 'INDIRECT EXPENSES', 2, NULL, NULL, NULL, '1', '2', NULL, '2', NULL, 'EXPENSES>INDIRECT EXPENSES', '1', '1', '30', '2020-12-04 11:55:23', '2020-12-04 13:06:33', NULL),
(41, '3001', 'FIXED ASSETS', 2, NULL, NULL, NULL, '1', '3', NULL, '2', NULL, 'ASSETS>FIXED ASSETS', '1', '1', '31', '2020-12-04 11:55:49', '2020-12-04 12:11:23', NULL),
(42, '3002', 'CURRENT ASSETS', 2, NULL, NULL, NULL, '1', '3', NULL, '2', NULL, 'CURRENT ASSETS<ASSETS', '1', '1', '31', '2020-12-04 11:56:15', '2020-12-04 16:39:09', NULL),
(43, '3001001', NULL, 2, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'ASSETS>FIXED ASSETS>', '1', '1', '41', '2020-12-04 12:07:15', '2020-12-04 12:07:32', '2020-12-04 12:07:32'),
(44, '3001001', 'Building', 2, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'ASSETS>FIXED ASSETS>', '1', '1', '41', '2020-12-04 12:07:47', '2020-12-04 12:31:55', NULL),
(45, '2001001', 'Wages', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'Wages<DIRECT EXPENSES<EXPENSES', '1', '1', '39', '2020-12-04 12:13:07', '2020-12-04 17:32:44', NULL),
(46, '2001002', 'Overtime', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'Overtime<DIRECT EXPENSES<EXPENSES', '1', '1', '39', '2020-12-04 12:13:30', '2020-12-04 17:54:17', NULL),
(47, '2001003', 'Factory Rent', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'EXPENSES>DIRECT EXPENSES>Factory Rent', '1', '1', '39', '2020-12-04 12:13:53', '2020-12-04 12:13:53', NULL),
(48, '2001004', 'Carriage inwards', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'EXPENSES>DIRECT EXPENSES>Carriage inwards', '1', '1', '39', '2020-12-04 12:14:33', '2020-12-04 12:14:33', NULL),
(49, '2001005', 'Loading unloading charge', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'Loading unloading charge<DIRECT EXPENSES<EXPENSES', '1', '1', '39', '2020-12-04 12:15:06', '2020-12-04 16:33:18', NULL),
(50, '2001006', 'Factory Electricity Bill', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'EXPENSES>DIRECT EXPENSES>Factory Electricity Bill', '1', '1', '39', '2020-12-04 12:15:36', '2020-12-04 12:15:36', NULL),
(51, '2001007', 'Tiffin bill', 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'EXPENSES>DIRECT EXPENSES>Tiffin bill', '1', '1', '39', '2020-12-04 12:20:08', '2020-12-04 12:20:08', NULL),
(52, '3001002', 'Furniture and fixture', 2, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'ASSETS>FIXED ASSETS>Furniture and fixture', '1', '1', '41', '2020-12-04 13:05:27', '2020-12-04 13:05:27', NULL),
(53, '3001003', 'Generator', 2, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'ASSETS>FIXED ASSETS>Generator', '1', '1', '41', '2020-12-04 13:07:52', '2020-12-04 13:07:52', NULL),
(54, '3001004', 'Plant and Machinery', 2, NULL, NULL, NULL, '1', '3001', NULL, '3', NULL, 'ASSETS>FIXED ASSETS>Plant and Machinery', '1', '1', '41', '2020-12-04 13:08:20', '2020-12-04 13:08:20', NULL),
(55, '2002001', 'Salary', 2, NULL, NULL, NULL, '1', '2002', NULL, '3', NULL, 'EXPENSES>INDIRECT EXPENSES>Salary', '1', '1', '40', '2020-12-04 13:08:45', '2020-12-04 13:08:45', NULL),
(56, '2002002', 'Office Rent', 2, NULL, NULL, NULL, '1', '2002', NULL, '3', NULL, 'EXPENSES>INDIRECT EXPENSES>Office Rent', '1', '1', '40', '2020-12-04 13:09:46', '2020-12-04 13:09:46', NULL),
(57, '2002003', 'Conveyance', 2, NULL, NULL, NULL, '1', '2002', NULL, '3', NULL, 'EXPENSES>INDIRECT EXPENSES>Conveyance', '1', '1', '40', '2020-12-04 13:10:28', '2020-12-04 13:10:28', NULL),
(58, '2002003001', 'Mr. Jamal Conveyance', 2, NULL, NULL, NULL, '1', '2002003', NULL, '4', NULL, 'EXPENSES>INDIRECT EXPENSES>Conveyance>Mr. Jamal Conveyance', '1', '1', '57', '2020-12-04 13:11:26', '2020-12-04 13:11:26', NULL),
(59, '2002003002', 'Mr. kamal  Conveyance', 2, NULL, NULL, NULL, '1', '2002003', NULL, '4', NULL, 'EXPENSES>INDIRECT EXPENSES>Conveyance>Mr. kamal  Conveyance', '1', '1', '57', '2020-12-04 13:11:48', '2020-12-04 13:11:48', NULL),
(60, '2002003003', 'Sabrina  Conveyance', 3, NULL, NULL, NULL, '1', '2002003', NULL, '4', NULL, 'EXPENSES>INDIRECT EXPENSES>Conveyance>Sabrina  Conveyance', '1', '1', '57', '2020-12-04 13:12:12', '2020-12-04 13:12:12', NULL),
(61, '2002004', 'Maintenance', 2, NULL, NULL, NULL, '1', '2002', NULL, '3', NULL, 'EXPENSES>INDIRECT EXPENSES>Maintenance', '1', '1', '40', '2020-12-04 14:44:42', '2020-12-04 14:44:42', NULL),
(62, '2002004001', 'Photocopy Maintenance', 2, NULL, NULL, NULL, '1', '2002004', NULL, '4', NULL, 'EXPENSES>INDIRECT EXPENSES>Maintenance>Photocopy Maintenance', '1', '1', '61', '2020-12-04 14:45:24', '2020-12-04 14:45:24', NULL),
(63, '5001', 'Cash in hand', 1, NULL, NULL, NULL, '1', '5', NULL, '2', NULL, 'CASH IN HAND>Cash in hand', '1', '1', '33', '2020-12-04 14:46:25', '2020-12-04 14:46:25', NULL),
(64, '6001', 'Islami Bank Limited, CD 236674859, Dilkhsha Brance', 2, NULL, NULL, NULL, '1', '6', NULL, '2', NULL, 'Islami Bank Limited, CD 236674859, Dilkhsha Brance<CASH AT BANK', '1', '1', '34', '2020-12-04 14:47:16', '2020-12-04 16:35:47', NULL),
(65, '6002', 'Sonali Bank Limited, Banani Branch , CD 2388711', 2, NULL, NULL, NULL, '1', '6', NULL, '2', NULL, 'Sonali Bank Limited, Banani Branch , CD 2388711<CASH AT BANK', '1', '1', '34', '2020-12-04 14:49:36', '2020-12-04 16:36:49', NULL),
(66, '6003', 'Uttara  Bank Limited, CA No 4955069', 2, NULL, NULL, NULL, '1', '6', NULL, '2', NULL, 'Uttara  Bank Limited, CA No 4955069<CASH AT BANK', '1', '1', '34', '2020-12-04 14:50:31', '2020-12-04 16:36:30', NULL),
(67, '6004', 'AB Bank Limited, Karwan Bazar Branch , CD 00987654', 2, NULL, NULL, NULL, '1', '6', NULL, '2', NULL, 'AB Bank Limited, Karwan Bazar Branch , CD 00987654<CASH AT BANK', '1', '1', '34', '2020-12-04 14:53:23', '2020-12-04 16:36:12', NULL),
(68, '2001008', NULL, 2, NULL, NULL, NULL, '1', '2001', NULL, '3', NULL, 'EXPENSES>DIRECT EXPENSES>', '1', '1', '39', '2020-12-04 14:53:25', '2020-12-04 14:54:48', '2020-12-04 14:54:48'),
(69, '6005', 'Southeast Bankl Limited, CD 884475586', 2, NULL, NULL, NULL, '1', '6', NULL, '2', NULL, 'Southeast Bankl Limited, CD 884475586<CASH AT BANK', '1', '1', '34', '2020-12-04 14:54:42', '2020-12-04 16:36:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_informations`
--

CREATE TABLE `department_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_informations`
--

INSERT INTO `department_informations` (`id`, `description`, `other_descriptions`, `level`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(1, 'Hindu', NULL, NULL, '2020-11-28 14:32:38', NULL, NULL, '2020-12-04 12:34:09', NULL),
(2, 'Christian', NULL, NULL, '2020-11-28 14:32:50', NULL, NULL, '2020-12-04 12:34:52', NULL),
(3, 'Muslim', NULL, NULL, '2020-12-04 12:33:52', NULL, NULL, '2020-12-04 12:33:52', NULL),
(4, 'Budhist', NULL, NULL, '2020-12-04 12:35:21', NULL, NULL, '2020-12-04 12:35:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation_informations`
--

CREATE TABLE `designation_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district_informations`
--

CREATE TABLE `district_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iteams`
--

CREATE TABLE `iteams` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '000',
  `code_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(10) DEFAULT '0',
  `project_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_tech_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_code` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_id` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iteams`
--

INSERT INTO `iteams` (`id`, `code`, `code_desc`, `other_desc`, `project_id`, `project_name`, `code_tech_desc`, `code_level`, `p_code`, `b_code`, `acc_level`, `g_code`, `origin`, `bar_code`, `packing_id`, `unit_id`, `size_id`, `created_by`, `updated_by`, `p_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, '1', 'RAW MATERIALS', NULL, 2, NULL, NULL, '1', '1', NULL, '1', NULL, 'RAW MATERIALS', NULL, NULL, NULL, NULL, '1', '1', '0', '2020-12-04 18:19:16', '2020-12-04 18:19:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_11_27_154230_create_project_informations_table', 2),
(6, '2020_11_27_154557_create_section_informations_table', 3),
(7, '2020_11_27_154735_create_department_informations_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `packing_informations`
--

CREATE TABLE `packing_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packing_informations`
--

INSERT INTO `packing_informations` (`id`, `description`, `other_descriptions`, `level`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(3, '12x16x10', NULL, NULL, '2020-12-04 18:13:43', 1, 1, '2020-12-04 18:13:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_informations`
--

CREATE TABLE `project_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projecr_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_informations`
--

INSERT INTO `project_informations` (`id`, `name`, `description`, `projecr_address`, `address2`, `level`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(0, 'Root', 'Root', 'Root', 'Root', '0', NULL, 1, 1, NULL, NULL),
(1, 'Asian Textile Mills Limited', 'Head office', 'road-1, House-1, Block-C , Banasree project, Rampura, Dhaka', 'badda, dhaka', '1', '2020-11-27 22:13:16', NULL, NULL, '2020-11-28 14:36:32', NULL),
(2, 'Belcon Company Pvt. Limited', 'HRM project', 'Highway Homes – 2nd floor KA – 32/6 Shahjadpur, Pragoti Sharoni, Gulshan', 'Dhaka', '2', '2020-11-27 22:18:49', NULL, NULL, '2020-11-28 14:35:29', NULL),
(3, 'Bangladesh Thai', 'Bangladesh Thai', 'Badda Dhaka', 'Banani Dhaka', '1', '2020-11-27 22:22:51', NULL, NULL, '2020-11-27 22:22:51', NULL),
(4, 'Paradise Cables Limited', '128 Gulshan Avenue, Dhaka , Banagladesh', NULL, NULL, '1', '2020-11-28 14:35:02', NULL, NULL, '2020-11-28 14:35:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religion_informations`
--

CREATE TABLE `religion_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_informations`
--

CREATE TABLE `section_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift_informations`
--

CREATE TABLE `shift_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size_informations`
--

CREATE TABLE `size_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_informations`
--

INSERT INTO `size_informations` (`id`, `description`, `other_descriptions`, `level`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(4, '2xl', NULL, NULL, '2020-12-04 18:13:24', 1, 1, '2020-12-04 18:13:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_table`
--

INSERT INTO `test_table` (`id`, `name`, `column_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Talemul Islam', '[{\"key\":\"sdf\",\"value\":\"ewr\"},{\"value\":\"ewr\"},{\"value\":\"ewt\",\"desc\":\"ewt\"}]', '2020-11-21 10:04:59', '2020-11-21 04:04:59', '2020-11-20 22:04:59'),
(2, 'Bangla', '[{\"key\":\"fds\",\"value\":\"sdf\",\"desc\":\"fds\"},{\"key\":\"sfd\",\"value\":\"dsf\",\"desc\":\"dsf\"}]', '2020-11-21 10:05:51', '2020-11-21 04:05:08', NULL),
(3, 'Talemul Islam', '[{\"key\":\"fee\",\"value\":\"jnj\",\"desc\":\"jnjn\"},{\"value\":\"jnnj\",\"desc\":\"njn\"},{\"key\":\"jn\",\"value\":\"jn\",\"desc\":\"k,\"},{\"key\":\"m,\",\"value\":\"m,\",\"desc\":\"mm,\"}]', '2020-11-21 04:11:03', '2020-11-21 04:11:03', NULL),
(4, NULL, '[{\"key\":\"532\",\"selectbox\":\"val\",\"value\":\"324\",\"desc\":\"32\"},{\"key\":\"325\",\"selectbox\":\"2\",\"value\":\"325\",\"desc\":\"352\"},{\"key\":\"325\",\"selectbox\":\"1\",\"value\":\"325\",\"desc\":\"325\"}]', '2020-11-21 04:14:34', '2020-11-21 04:14:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit_informations`
--

CREATE TABLE `unit_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_informations`
--

INSERT INTO `unit_informations` (`id`, `description`, `other_descriptions`, `level`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(1, 'Pcs.', NULL, NULL, '2020-12-04 18:13:55', 1, 1, '2020-12-04 18:13:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `building_informations`
--
ALTER TABLE `building_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_informations`
--
ALTER TABLE `department_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_informations`
--
ALTER TABLE `designation_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_informations`
--
ALTER TABLE `district_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `iteams`
--
ALTER TABLE `iteams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packing_informations`
--
ALTER TABLE `packing_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `project_informations`
--
ALTER TABLE `project_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion_informations`
--
ALTER TABLE `religion_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_informations`
--
ALTER TABLE `section_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_informations`
--
ALTER TABLE `shift_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_informations`
--
ALTER TABLE `size_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_informations`
--
ALTER TABLE `unit_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `building_informations`
--
ALTER TABLE `building_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `department_informations`
--
ALTER TABLE `department_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation_informations`
--
ALTER TABLE `designation_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district_informations`
--
ALTER TABLE `district_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iteams`
--
ALTER TABLE `iteams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `packing_informations`
--
ALTER TABLE `packing_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_informations`
--
ALTER TABLE `project_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `religion_informations`
--
ALTER TABLE `religion_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_informations`
--
ALTER TABLE `section_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift_informations`
--
ALTER TABLE `shift_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `size_informations`
--
ALTER TABLE `size_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unit_informations`
--
ALTER TABLE `unit_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
