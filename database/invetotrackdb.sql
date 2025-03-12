-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 11 mars 2025 à 17:13
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `invetotrackdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2025-02-20 14:02:13'),
(2, 0, 10, 'Admin', 'fa-tasks', '', NULL, NULL, '2025-03-01 22:43:11'),
(3, 2, 11, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2025-03-01 22:43:11'),
(4, 2, 12, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2025-03-01 22:43:11'),
(5, 2, 13, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2025-03-01 22:43:11'),
(6, 2, 14, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2025-03-01 22:43:11'),
(7, 2, 15, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2025-03-01 22:43:11'),
(8, 0, 9, 'Companies', 'fa-building', 'companies', NULL, '2025-02-09 21:05:44', '2025-03-01 22:43:11'),
(9, 11, 6, 'Stock Categories', 'fa-codepen', 'stock-categories', NULL, '2025-02-11 11:46:00', '2025-03-01 22:43:11'),
(10, 11, 5, 'Stock Sub Categories', 'fa-columns', 'stock-sub-categories', NULL, '2025-02-11 13:05:22', '2025-03-01 22:43:11'),
(11, 0, 4, 'System Configuration', 'fa-cogs', 'financial-periods', NULL, '2025-02-20 13:57:48', '2025-03-01 22:43:11'),
(12, 11, 8, 'Financial Periods', 'fa-calendar', 'financial-periods', NULL, '2025-02-20 13:58:39', '2025-03-01 22:43:11'),
(13, 11, 7, 'Employees', 'fa-users', 'employees', NULL, '2025-02-20 14:48:26', '2025-03-01 22:43:11'),
(14, 0, 3, 'Stock Items', 'fa-archive', 'stock-items', NULL, '2025-02-20 16:02:11', '2025-03-01 22:43:11'),
(15, 0, 2, 'Stock Records', 'fa-adjust', 'stock-records', NULL, '2025-02-28 17:36:50', '2025-03-01 22:43:11'),
(16, 11, 0, 'Company profile', 'fa-cog', 'companies-edit', NULL, '2025-03-02 01:27:16', '2025-03-02 01:27:16');

-- --------------------------------------------------------

--
-- Structure de la table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-07 15:59:10', '2025-02-07 15:59:10'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-07 16:07:04', '2025-02-07 16:07:04'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-07 16:09:17', '2025-02-07 16:09:17'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-07 16:09:52', '2025-02-07 16:09:52'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:12:59', '2025-02-07 16:12:59'),
(6, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:13:09', '2025-02-07 16:13:09'),
(7, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"company\",\"name\":\"Company Owner\",\"password\":\"admin\",\"password_confirmation\":null,\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2025-02-07 16:14:06', '2025-02-07 16:14:06'),
(8, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-07 16:14:06', '2025-02-07 16:14:06'),
(9, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"company\",\"name\":\"Company Owner\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\"}', '2025-02-07 16:14:25', '2025-02-07 16:14:25'),
(10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-02-07 16:14:26', '2025-02-07 16:14:26'),
(11, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:14:31', '2025-02-07 16:14:31'),
(12, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"worker\",\"name\":\"Company Worker\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2025-02-07 16:15:22', '2025-02-07 16:15:22'),
(13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-02-07 16:15:23', '2025-02-07 16:15:23'),
(14, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2025-02-07 16:16:20', '2025-02-07 16:16:20'),
(15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:16:20', '2025-02-07 16:16:20'),
(16, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2025-02-07 16:16:27', '2025-02-07 16:16:27'),
(17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:16:28', '2025-02-07 16:16:28'),
(18, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:16:30', '2025-02-07 16:16:30'),
(19, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:16:37', '2025-02-07 16:16:37'),
(20, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"company\",\"name\":\"Company Owner\",\"permissions\":[\"1\",null],\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2025-02-07 16:17:08', '2025-02-07 16:17:08'),
(21, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2025-02-07 16:17:08', '2025-02-07 16:17:08'),
(22, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:17:13', '2025-02-07 16:17:13'),
(23, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"worker\",\"name\":\"Company Worker\",\"permissions\":[\"1\",null],\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2025-02-07 16:17:46', '2025-02-07 16:17:46'),
(24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2025-02-07 16:17:46', '2025-02-07 16:17:46'),
(25, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-07 16:18:03', '2025-02-07 16:18:03'),
(26, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"admin\",\"name\":\"Administrator\",\"permissions\":[\"1\",null],\"_token\":\"8qPh32d1D1DGbm8FXUO3wxqjB3xidQ1aYubWN2J3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2025-02-07 16:18:14', '2025-02-07 16:18:14'),
(27, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2025-02-07 16:18:14', '2025-02-07 16:18:14'),
(28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-09 20:54:12', '2025-02-09 20:54:12'),
(29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-09 21:04:31', '2025-02-09 21:04:31'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:04:40', '2025-02-09 21:04:40'),
(31, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Companies\",\"icon\":\"fa-building\",\"uri\":\"companies\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\"}', '2025-02-09 21:05:44', '2025-02-09 21:05:44'),
(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:05:44', '2025-02-09 21:05:44'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:06:24', '2025-02-09 21:06:24'),
(34, 1, 'admin/companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:06:36', '2025-02-09 21:06:36'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:12:02', '2025-02-09 21:12:02'),
(36, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:12:08', '2025-02-09 21:12:08'),
(37, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Companies\",\"icon\":\"fa-building\",\"uri\":\"companies\",\"roles\":[null],\"permission\":null,\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2025-02-09 21:12:31', '2025-02-09 21:12:31'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:12:32', '2025-02-09 21:12:32'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:12:35', '2025-02-09 21:12:35'),
(40, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:14:14', '2025-02-09 21:14:14'),
(41, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Companies\",\"icon\":\"fa-building\",\"uri\":\"companies\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2025-02-09 21:14:29', '2025-02-09 21:14:29'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:14:30', '2025-02-09 21:14:30'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:14:39', '2025-02-09 21:14:39'),
(44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:14:58', '2025-02-09 21:14:58'),
(45, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-09 21:17:15', '2025-02-09 21:17:15'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:17:16', '2025-02-09 21:17:16'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-09 21:17:19', '2025-02-09 21:17:19'),
(48, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:45:14', '2025-02-09 21:45:14'),
(49, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:45:22', '2025-02-09 21:45:22'),
(50, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"company 1\",\"name\":\"com\",\"password\":\"admin\",\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2025-02-09 21:46:31', '2025-02-09 21:46:31'),
(51, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2025-02-09 21:46:31', '2025-02-09 21:46:31'),
(52, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Company One\",\"name\":\"Company Admin One\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\"}', '2025-02-09 21:48:35', '2025-02-09 21:48:35'),
(53, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-02-09 21:48:35', '2025-02-09 21:48:35'),
(54, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:48:44', '2025-02-09 21:48:44'),
(55, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Company Two\",\"name\":\"Company Admin Two\",\"password\":\"123456789\",\"password_confirmation\":\"123456789\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"QzCWutrERvl1p0ELQYPDMNMtimvtRpt2aDIcFbeh\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2025-02-09 21:49:33', '2025-02-09 21:49:33'),
(56, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2025-02-09 21:49:33', '2025-02-09 21:49:33'),
(57, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-09 21:53:01', '2025-02-09 21:53:01'),
(58, 1, 'admin/companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 02:06:07', '2025-02-10 02:06:07'),
(59, 1, 'admin/companies/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 02:09:03', '2025-02-10 02:09:03'),
(60, 1, 'admin/companies', 'POST', '127.0.0.1', '{\"owner_id\":\"5\",\"name\":\"Gonzales and Morales Co\",\"email\":\"wycijimy@mailinator.com\",\"website\":\"https:\\/\\/www.jocolegoq.org.au\",\"about\":\"Corrupti vel iure a\",\"status\":\"Beatae pariatur Sit\",\"license_expire\":\"2025-02-10\",\"address\":\"Magnam est harum mo\",\"phone_number\":\"+1 (714) 315-6713\",\"phone_number_2\":\"+1 (504) 118-5712\",\"pobox\":\"PO Box 10247\",\"color\":\"#000000\",\"slogan\":\"Dolor et quasi labor\",\"facebook\":\"https:\\/\\/www.zuq.biz\",\"twitter\":\"https:\\/\\/www.nigy.tv\",\"_token\":\"oVu111iLmCje3W2JXIVx4UMQxoTq9eI2IpW06sNb\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/companies\"}', '2025-02-10 02:11:08', '2025-02-10 02:11:08'),
(61, 1, 'admin/companies/1', 'GET', '127.0.0.1', '[]', '2025-02-10 02:11:08', '2025-02-10 02:11:08'),
(62, 1, 'admin/companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 02:11:19', '2025-02-10 02:11:19'),
(63, 1, 'admin/companies/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 02:12:48', '2025-02-10 02:12:48'),
(64, 1, 'admin/companies', 'POST', '127.0.0.1', '{\"owner_id\":\"4\",\"name\":\"Kennedy Mcmahon Associates\",\"email\":\"zopeg@mailinator.com\",\"website\":\"https:\\/\\/www.sabygax.com.au\",\"about\":\"Vel doloremque qui r\",\"status\":\"Rerum eveniet anim\",\"license_expire\":\"2025-02-10\",\"address\":\"Rerum sint irure qu\",\"phone_number\":\"+1 (256) 376-1125\",\"phone_number_2\":\"+1 (192) 231-5547\",\"pobox\":\"P.O. Box 18291\",\"color\":\"#000000\",\"slogan\":\"Laudantium ut porro\",\"facebook\":\"https:\\/\\/www.cupazuhozice.me.uk\",\"twitter\":\"https:\\/\\/www.liduwyq.co\",\"_token\":\"oVu111iLmCje3W2JXIVx4UMQxoTq9eI2IpW06sNb\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/companies\"}', '2025-02-10 02:13:20', '2025-02-10 02:13:20'),
(65, 1, 'admin/companies/create', 'GET', '127.0.0.1', '[]', '2025-02-10 02:13:20', '2025-02-10 02:13:20'),
(66, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 02:13:25', '2025-02-10 02:13:25'),
(67, 1, 'admin/companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 02:13:30', '2025-02-10 02:13:30'),
(68, 1, 'admin/companies', 'GET', '127.0.0.1', '[]', '2025-02-10 10:51:11', '2025-02-10 10:51:11'),
(69, 1, 'admin/companies', 'GET', '127.0.0.1', '[]', '2025-02-10 10:52:01', '2025-02-10 10:52:01'),
(70, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-10 10:59:19', '2025-02-10 10:59:19'),
(71, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-10 11:00:12', '2025-02-10 11:00:12'),
(72, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-10 11:01:34', '2025-02-10 11:01:34'),
(73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-10 11:18:21', '2025-02-10 11:18:21'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-11 11:20:13', '2025-02-11 11:20:13'),
(75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:41:22', '2025-02-11 11:41:22'),
(76, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Categories\",\"icon\":\"fa-codepen\",\"uri\":\"stock-categories\",\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\"}', '2025-02-11 11:46:00', '2025-02-11 11:46:00'),
(77, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 11:46:00', '2025-02-11 11:46:00'),
(78, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-11 11:46:26', '2025-02-11 11:46:26'),
(79, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:46:26', '2025-02-11 11:46:26'),
(80, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-11 11:47:24', '2025-02-11 11:47:24'),
(81, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:47:24', '2025-02-11 11:47:24'),
(82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 11:47:29', '2025-02-11 11:47:29'),
(83, 1, 'admin/stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:47:51', '2025-02-11 11:47:51'),
(84, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:48:28', '2025-02-11 11:48:28'),
(85, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:49:04', '2025-02-11 11:49:04'),
(86, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:51:07', '2025-02-11 11:51:07'),
(87, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:51:44', '2025-02-11 11:51:44'),
(88, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:52:00', '2025-02-11 11:52:00'),
(89, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:52:39', '2025-02-11 11:52:39'),
(90, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:52:43', '2025-02-11 11:52:43'),
(91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:53:51', '2025-02-11 11:53:51'),
(92, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:53:57', '2025-02-11 11:53:57'),
(93, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Categories\",\"icon\":\"fa-codepen\",\"uri\":\"stock-categories\",\"roles\":[\"1\",\"3\",null],\"permission\":null,\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2025-02-11 11:55:54', '2025-02-11 11:55:54'),
(94, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 11:55:54', '2025-02-11 11:55:54'),
(95, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:56:10', '2025-02-11 11:56:10'),
(96, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Companies\",\"icon\":\"fa-building\",\"uri\":\"companies\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2025-02-11 11:56:17', '2025-02-11 11:56:17'),
(97, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 11:56:17', '2025-02-11 11:56:17'),
(98, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 11:56:23', '2025-02-11 11:56:23'),
(99, 1, 'admin/stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 11:56:28', '2025-02-11 11:56:28'),
(100, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 12:01:59', '2025-02-11 12:01:59'),
(101, 1, 'admin/stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 12:27:06', '2025-02-11 12:27:06'),
(102, 1, 'admin/companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 12:27:26', '2025-02-11 12:27:26'),
(103, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 12:27:30', '2025-02-11 12:27:30'),
(104, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 12:27:49', '2025-02-11 12:27:49'),
(105, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 13:03:17', '2025-02-11 13:03:17'),
(106, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Sub Categories\",\"icon\":\"fa-columns\",\"uri\":\"stock-sub-categories\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\"}', '2025-02-11 13:05:22', '2025-02-11 13:05:22'),
(107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 13:05:22', '2025-02-11 13:05:22'),
(108, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-11 13:08:42', '2025-02-11 13:08:42'),
(109, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 13:08:42', '2025-02-11 13:08:42'),
(110, 1, 'admin/stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 13:08:55', '2025-02-11 13:08:55'),
(111, 1, 'admin/stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 13:09:02', '2025-02-11 13:09:02'),
(112, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 13:09:23', '2025-02-11 13:09:23'),
(113, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 13:09:34', '2025-02-11 13:09:34'),
(114, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Categories\",\"icon\":\"fa-codepen\",\"uri\":\"stock-categories\",\"roles\":[\"1\",\"2\",\"3\",null],\"permission\":null,\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2025-02-11 13:09:58', '2025-02-11 13:09:58'),
(115, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 13:09:58', '2025-02-11 13:09:58'),
(116, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 13:10:03', '2025-02-11 13:10:03'),
(117, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Companies\",\"icon\":\"fa-building\",\"uri\":\"companies\",\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"eefMpPWyNJGJzlgEmeMBCepnQ7AJgWUCAINefLp9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2025-02-11 13:10:35', '2025-02-11 13:10:35'),
(118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 13:10:35', '2025-02-11 13:10:35'),
(119, 1, 'admin', 'GET', '127.0.0.1', '[]', '2025-02-11 13:42:31', '2025-02-11 13:42:31'),
(120, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 14:10:38', '2025-02-11 14:10:38'),
(121, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 20:19:08', '2025-02-11 20:19:08'),
(122, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 20:19:19', '2025-02-11 20:19:19'),
(123, 1, 'auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 20:20:20', '2025-02-11 20:20:20'),
(124, 1, 'auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$12$yykXTNzSQzR94OmG1MvkHeeePTiIqhmkYIhbcIaZI5kyHyB1c3eki\",\"password_confirmation\":\"$2y$12$yykXTNzSQzR94OmG1MvkHeeePTiIqhmkYIhbcIaZI5kyHyB1c3eki\",\"_token\":\"xmAO3bkdsT5ZglGqBRuV1qeVH98BDs0yiHuNKh3h\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/auth\\/users\"}', '2025-02-11 20:21:44', '2025-02-11 20:21:44'),
(125, 1, 'auth/setting', 'GET', '127.0.0.1', '[]', '2025-02-11 20:21:44', '2025-02-11 20:21:44'),
(126, 1, 'auth/setting', 'GET', '127.0.0.1', '[]', '2025-02-11 20:24:06', '2025-02-11 20:24:06'),
(127, 1, 'auth/setting', 'GET', '127.0.0.1', '[]', '2025-02-11 20:25:52', '2025-02-11 20:25:52'),
(128, 1, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 20:26:24', '2025-02-11 20:26:24'),
(129, 1, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 20:26:25', '2025-02-11 20:26:25'),
(130, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:03:25', '2025-02-11 21:03:25'),
(131, 1, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:03:43', '2025-02-11 21:03:43'),
(132, 1, 'stock-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:03:47', '2025-02-11 21:03:47'),
(133, 1, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:05:01', '2025-02-11 21:05:01'),
(134, 1, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:05:02', '2025-02-11 21:05:02'),
(135, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:06:23', '2025-02-11 21:06:23'),
(136, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:07:22', '2025-02-11 21:07:22'),
(137, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:07:36', '2025-02-11 21:07:36'),
(138, 1, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:09:35', '2025-02-11 21:09:35'),
(139, 4, 'stock-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:09:49', '2025-02-11 21:09:49'),
(140, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:10:33', '2025-02-11 21:10:33'),
(141, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:10:49', '2025-02-11 21:10:49'),
(142, 1, 'auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:10:52', '2025-02-11 21:10:52'),
(143, 1, 'auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Companies\",\"icon\":\"fa-building\",\"uri\":\"companies\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"xmAO3bkdsT5ZglGqBRuV1qeVH98BDs0yiHuNKh3h\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/auth\\/menu\"}', '2025-02-11 21:12:03', '2025-02-11 21:12:03'),
(144, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-11 21:12:04', '2025-02-11 21:12:04'),
(145, 1, 'auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:12:09', '2025-02-11 21:12:09'),
(146, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:12:17', '2025-02-11 21:12:17'),
(147, 1, 'auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:12:20', '2025-02-11 21:12:20'),
(148, 1, 'auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:12:42', '2025-02-11 21:12:42'),
(149, 1, 'auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:13:22', '2025-02-11 21:13:22'),
(150, 1, 'auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:13:47', '2025-02-11 21:13:47'),
(151, 1, 'auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:13:55', '2025-02-11 21:13:55'),
(152, 1, 'auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:15:13', '2025-02-11 21:15:13'),
(153, 1, 'auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:15:43', '2025-02-11 21:15:43'),
(154, 1, 'auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:16:13', '2025-02-11 21:16:13'),
(155, 4, 'stock-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:16:21', '2025-02-11 21:16:21'),
(156, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:16:35', '2025-02-11 21:16:35'),
(157, 4, 'stock-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:16:39', '2025-02-11 21:16:39'),
(158, 4, 'stock-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"name\":\"Fresh Produce\",\"status\":\"Active\",\"description\":\"Some Fresh Produce\",\"_token\":\"GfSdVlvhcA2reFhnmTb5qLlJwNU7aciRjhQFqydN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-categories\"}', '2025-02-11 21:18:57', '2025-02-11 21:18:57'),
(159, 4, 'stock-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:18:57', '2025-02-11 21:18:57'),
(160, 4, 'stock-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:19:14', '2025-02-11 21:19:14'),
(161, 4, 'stock-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"name\":\"Dairy & Eggs\",\"status\":\"Active\",\"description\":\"some Dairy & Eggs\",\"_token\":\"GfSdVlvhcA2reFhnmTb5qLlJwNU7aciRjhQFqydN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-categories\"}', '2025-02-11 21:19:30', '2025-02-11 21:19:30'),
(162, 4, 'stock-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:19:30', '2025-02-11 21:19:30'),
(163, 4, 'stock-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:19:47', '2025-02-11 21:19:47'),
(164, 4, 'stock-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"name\":\"Meat & Seafood\",\"status\":\"Active\",\"description\":\"some Meat & Seafood\",\"_token\":\"GfSdVlvhcA2reFhnmTb5qLlJwNU7aciRjhQFqydN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-categories\"}', '2025-02-11 21:20:04', '2025-02-11 21:20:04'),
(165, 4, 'stock-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:20:04', '2025-02-11 21:20:04'),
(166, 4, 'stock-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:20:31', '2025-02-11 21:20:31'),
(167, 4, 'stock-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"name\":\"Frozen Foods\",\"status\":\"Active\",\"description\":\"Some Frozen Foods\",\"_token\":\"GfSdVlvhcA2reFhnmTb5qLlJwNU7aciRjhQFqydN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-categories\"}', '2025-02-11 21:20:44', '2025-02-11 21:20:44'),
(168, 4, 'stock-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:20:44', '2025-02-11 21:20:44'),
(169, 4, 'stock-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:21:08', '2025-02-11 21:21:08'),
(170, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:24:45', '2025-02-11 21:24:45'),
(171, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:25:02', '2025-02-11 21:25:02'),
(172, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:25:11', '2025-02-11 21:25:11'),
(173, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"1\",\"name\":\"Fruits\",\"description\":\"Some Fruits\",\"measurement_unit\":\"KG\",\"reorder_level\":\"50\",\"status\":\"Active\",\"_token\":\"GfSdVlvhcA2reFhnmTb5qLlJwNU7aciRjhQFqydN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-02-11 21:32:57', '2025-02-11 21:32:57'),
(174, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:32:57', '2025-02-11 21:32:57'),
(175, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:38:33', '2025-02-11 21:38:33'),
(176, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"1\",\"name\":\"Fruits\",\"description\":null,\"measurement_unit\":\"KG\",\"reorder_level\":\"50\",\"status\":\"Active\",\"_token\":\"GfSdVlvhcA2reFhnmTb5qLlJwNU7aciRjhQFqydN\"}', '2025-02-11 21:39:21', '2025-02-11 21:39:21'),
(177, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 21:39:21', '2025-02-11 21:39:21'),
(178, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:39:33', '2025-02-11 21:39:33'),
(179, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:39:36', '2025-02-11 21:39:36'),
(180, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:47:26', '2025-02-11 21:47:26'),
(181, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 21:47:31', '2025-02-11 21:47:31'),
(182, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:28:28', '2025-02-11 23:28:28'),
(183, 4, 'stock-sub-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:29:22', '2025-02-11 23:29:22'),
(184, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:30:06', '2025-02-11 23:30:06'),
(185, 1, 'auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:36:02', '2025-02-11 23:36:02'),
(186, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:36:31', '2025-02-11 23:36:31'),
(187, 1, 'auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:37:46', '2025-02-11 23:37:46'),
(188, 1, 'auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-11 23:38:01', '2025-02-11 23:38:01'),
(189, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 23:41:26', '2025-02-11 23:41:26'),
(190, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 23:42:51', '2025-02-11 23:42:51'),
(191, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 23:53:35', '2025-02-11 23:53:35'),
(192, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 23:56:21', '2025-02-11 23:56:21'),
(193, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-11 23:58:29', '2025-02-11 23:58:29'),
(194, 1, 'auth/login', 'GET', '::1', '[]', '2025-02-13 16:09:37', '2025-02-13 16:09:37'),
(195, 1, 'stock-categories', 'GET', '::1', '[]', '2025-02-13 16:10:22', '2025-02-13 16:10:22'),
(196, 1, 'stock-categories', 'GET', '::1', '[]', '2025-02-13 16:12:12', '2025-02-13 16:12:12'),
(197, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-13 16:25:09', '2025-02-13 16:25:09'),
(198, 1, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:25:25', '2025-02-13 16:25:25'),
(199, 1, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:25:48', '2025-02-13 16:25:48'),
(200, 1, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:26:01', '2025-02-13 16:26:01'),
(201, 1, 'companies', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:26:05', '2025-02-13 16:26:05'),
(202, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:26:54', '2025-02-13 16:26:54'),
(203, 1, 'auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:27:00', '2025-02-13 16:27:00'),
(204, 1, 'auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Categories\",\"icon\":\"fa-codepen\",\"uri\":\"stock-categories\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"YEmfKPXHHusYlDTJD88XfforWUoh9RaHaPuNuBWe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/auth\\/menu\"}', '2025-02-13 16:27:13', '2025-02-13 16:27:13'),
(205, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-13 16:27:13', '2025-02-13 16:27:13'),
(206, 1, 'auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:27:17', '2025-02-13 16:27:17'),
(207, 1, 'auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Sub Categories\",\"icon\":\"fa-columns\",\"uri\":\"stock-sub-categories\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"YEmfKPXHHusYlDTJD88XfforWUoh9RaHaPuNuBWe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/auth\\/menu\"}', '2025-02-13 16:27:23', '2025-02-13 16:27:23'),
(208, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-13 16:27:23', '2025-02-13 16:27:23'),
(209, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-13 16:27:28', '2025-02-13 16:27:28'),
(210, 4, 'auth/login', 'GET', '127.0.0.1', '[]', '2025-02-13 16:28:18', '2025-02-13 16:28:18'),
(211, 4, '/', 'GET', '127.0.0.1', '[]', '2025-02-13 16:28:18', '2025-02-13 16:28:18'),
(212, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:28:29', '2025-02-13 16:28:29'),
(213, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:28:33', '2025-02-13 16:28:33'),
(214, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:30:55', '2025-02-13 16:30:55'),
(215, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"1\",\"name\":\"Apples\",\"description\":\"Some Apples\",\"measurement_unit\":\"KG\",\"reorder_level\":\"20\",\"status\":\"Active\",\"_token\":\"thmCr83wMdkrZEVpLlaBHhbEboE2eW3xHZgGBCWr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-02-13 16:31:51', '2025-02-13 16:31:51'),
(216, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:31:51', '2025-02-13 16:31:51'),
(217, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:32:05', '2025-02-13 16:32:05'),
(218, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"2\",\"name\":\"Milk\",\"description\":\"Some Milk\",\"measurement_unit\":\"KG\",\"reorder_level\":\"30\",\"status\":\"Active\",\"_token\":\"thmCr83wMdkrZEVpLlaBHhbEboE2eW3xHZgGBCWr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-02-13 16:33:05', '2025-02-13 16:33:05'),
(219, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:33:05', '2025-02-13 16:33:05'),
(220, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:33:14', '2025-02-13 16:33:14'),
(221, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"2\",\"name\":\"margarine\",\"description\":\"Some margarine\",\"measurement_unit\":\"KG\",\"reorder_level\":\"10\",\"status\":\"Active\",\"_token\":\"thmCr83wMdkrZEVpLlaBHhbEboE2eW3xHZgGBCWr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-02-13 16:34:01', '2025-02-13 16:34:01'),
(222, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:34:02', '2025-02-13 16:34:02'),
(223, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:34:17', '2025-02-13 16:34:17'),
(224, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"3\",\"name\":\"Gluten-free\",\"description\":\"Some Gluten-free\",\"measurement_unit\":\"KG\",\"reorder_level\":\"60\",\"status\":\"Active\",\"_token\":\"thmCr83wMdkrZEVpLlaBHhbEboE2eW3xHZgGBCWr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-02-13 16:36:35', '2025-02-13 16:36:35'),
(225, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:36:35', '2025-02-13 16:36:35'),
(226, 4, 'stock-sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-13 16:36:49', '2025-02-13 16:36:49'),
(227, 4, 'stock-sub-categories', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_category_id\":\"4\",\"name\":\"Ice cream\",\"description\":\"Some Ice cream\",\"measurement_unit\":\"KG\",\"reorder_level\":\"100\",\"status\":\"Active\",\"_token\":\"thmCr83wMdkrZEVpLlaBHhbEboE2eW3xHZgGBCWr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-02-13 16:37:43', '2025-02-13 16:37:43'),
(228, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:37:44', '2025-02-13 16:37:44'),
(229, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:51:57', '2025-02-13 16:51:57'),
(230, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:52:02', '2025-02-13 16:52:02'),
(231, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:52:40', '2025-02-13 16:52:40'),
(232, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:53:33', '2025-02-13 16:53:33'),
(233, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:54:18', '2025-02-13 16:54:18'),
(234, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:54:56', '2025-02-13 16:54:56'),
(235, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-02-13 16:56:21', '2025-02-13 16:56:21'),
(236, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-20 13:31:16', '2025-02-20 13:31:16'),
(237, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 13:45:24', '2025-02-20 13:45:24'),
(238, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"System Configuration\",\"icon\":\"fa-cogs\",\"uri\":\"financial-periods\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\"}', '2025-02-20 13:57:48', '2025-02-20 13:57:48'),
(239, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-20 13:57:48', '2025-02-20 13:57:48'),
(240, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"Financial Periods\",\"icon\":\"fa-calendar\",\"uri\":\"financial-periods\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\"}', '2025-02-20 13:58:39', '2025-02-20 13:58:39'),
(241, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-20 13:58:39', '2025-02-20 13:58:39'),
(242, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\",\"_order\":\"[{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":12}]},{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-20 14:00:48', '2025-02-20 14:00:48'),
(243, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:00:48', '2025-02-20 14:00:48'),
(244, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\",\"_order\":\"[{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":12}]},{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-20 14:01:01', '2025-02-20 14:01:01'),
(245, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:01:02', '2025-02-20 14:01:02'),
(246, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:01:10', '2025-02-20 14:01:10'),
(247, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":12}]},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-20 14:02:13', '2025-02-20 14:02:13'),
(248, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:02:13', '2025-02-20 14:02:13'),
(249, 4, '/', 'GET', '127.0.0.1', '[]', '2025-02-20 14:02:36', '2025-02-20 14:02:36'),
(250, 4, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:03:21', '2025-02-20 14:03:21'),
(251, 4, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:24:47', '2025-02-20 14:24:47'),
(252, 4, 'financial-periods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:24:50', '2025-02-20 14:24:50'),
(253, 4, 'financial-periods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:31:31', '2025-02-20 14:31:31'),
(254, 4, 'financial-periods', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"name\":\"2023\",\"start_date\":\"2023-01-01\",\"end_date\":\"2023-12-31\",\"status\":\"Active\",\"description\":\"First Financial Perios\",\"_token\":\"1tan8qR6ES6fyPad0wGUHNENIaV1xcBL8hblNGKo\"}', '2025-02-20 14:33:25', '2025-02-20 14:33:25'),
(255, 4, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-02-20 14:33:25', '2025-02-20 14:33:25'),
(256, 4, 'financial-periods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:33:49', '2025-02-20 14:33:49'),
(257, 4, 'financial-periods', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"name\":\"2024\",\"start_date\":\"2024-01-01\",\"end_date\":\"2024-12-31\",\"status\":\"Inactive\",\"description\":\"Second Financial Period\",\"_token\":\"1tan8qR6ES6fyPad0wGUHNENIaV1xcBL8hblNGKo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/financial-periods\"}', '2025-02-20 14:34:44', '2025-02-20 14:34:44'),
(258, 4, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-02-20 14:34:44', '2025-02-20 14:34:44'),
(259, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"Employees\",\"icon\":\"fa-users\",\"uri\":\"employees\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\"}', '2025-02-20 14:48:26', '2025-02-20 14:48:26'),
(260, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-20 14:48:26', '2025-02-20 14:48:26'),
(261, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":13},{\\\"id\\\":12}]},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-20 14:48:38', '2025-02-20 14:48:38'),
(262, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:48:38', '2025-02-20 14:48:38'),
(263, 4, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:48:44', '2025-02-20 14:48:44'),
(264, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":13},{\\\"id\\\":12}]},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-20 14:49:22', '2025-02-20 14:49:22'),
(265, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:49:22', '2025-02-20 14:49:22'),
(266, 4, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 14:49:39', '2025-02-20 14:49:39'),
(267, 4, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-02-20 14:49:43', '2025-02-20 14:49:43'),
(268, 4, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:06:31', '2025-02-20 15:06:31'),
(269, 4, 'employees', 'GET', '127.0.0.1', '[]', '2025-02-20 15:11:24', '2025-02-20 15:11:24'),
(270, 4, 'employees/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:26:54', '2025-02-20 15:26:54'),
(271, 4, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:28:04', '2025-02-20 15:28:04'),
(272, 4, 'employees/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:29:29', '2025-02-20 15:29:29'),
(273, 4, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:29:45', '2025-02-20 15:29:45'),
(274, 4, 'employees/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:29:49', '2025-02-20 15:29:49'),
(275, 4, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 15:30:41', '2025-02-20 15:30:41'),
(276, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Items\",\"icon\":\"fa-archive\",\"uri\":\"stock-items\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\"}', '2025-02-20 16:02:11', '2025-02-20 16:02:11'),
(277, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-20 16:02:11', '2025-02-20 16:02:11'),
(278, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"Pa68Bf5lb1ASQK8LDms1Ptc71W0SVlBWtZcQqVf5\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":13},{\\\"id\\\":12}]},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-02-20 16:02:24', '2025-02-20 16:02:24'),
(279, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 16:02:24', '2025-02-20 16:02:24'),
(280, 4, 'employees', 'GET', '127.0.0.1', '[]', '2025-02-20 16:02:30', '2025-02-20 16:02:30'),
(281, 4, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-20 16:02:36', '2025-02-20 16:02:36'),
(282, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-24 14:22:23', '2025-02-24 14:22:23'),
(283, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-24 14:53:27', '2025-02-24 14:53:27'),
(284, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-26 07:50:59', '2025-02-26 07:50:59'),
(285, 4, '/', 'GET', '127.0.0.1', '[]', '2025-02-26 07:51:10', '2025-02-26 07:51:10'),
(286, 1, '/', 'GET', '::1', '[]', '2025-02-27 13:36:03', '2025-02-27 13:36:03'),
(287, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-27 16:20:26', '2025-02-27 16:20:26'),
(288, 4, '/', 'GET', '127.0.0.1', '[]', '2025-02-27 16:20:41', '2025-02-27 16:20:41'),
(289, 4, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-27 16:21:22', '2025-02-27 16:21:22'),
(290, 4, 'stock-items', 'GET', '127.0.0.1', '[]', '2025-02-27 16:29:08', '2025-02-27 16:29:08'),
(291, 4, 'stock-items/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-27 16:29:26', '2025-02-27 16:29:26'),
(292, 4, 'stock-items/create', 'GET', '127.0.0.1', '[]', '2025-02-27 17:26:42', '2025-02-27 17:26:42'),
(293, 4, 'stock-items', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"created_by_id\":\"4\",\"stock_sub_category_id\":\"3\",\"name\":\"Apples Produce\",\"update_sku\":\"No\",\"generate_sku\":\"Manual\",\"sku\":\"142563\",\"buying_price\":\"1256\",\"selling_price\":\"3216\",\"original_quantity\":\"45\",\"description\":null,\"_token\":\"37S07J3GT4alo321pHL6bnQYcMdut2LnwBs1PN1P\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-items\"}', '2025-02-27 17:29:27', '2025-02-27 17:29:27'),
(294, 4, 'stock-items/create', 'GET', '127.0.0.1', '[]', '2025-02-27 17:29:28', '2025-02-27 17:29:28'),
(295, 4, 'stock-items', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"created_by_id\":\"4\",\"stock_sub_category_id\":\"3\",\"name\":\"Apples Produce\",\"update_sku\":\"No\",\"generate_sku\":\"Manual\",\"sku\":\"142563\",\"buying_price\":\"1256\",\"selling_price\":\"3216\",\"original_quantity\":\"45\",\"description\":null,\"_token\":\"37S07J3GT4alo321pHL6bnQYcMdut2LnwBs1PN1P\"}', '2025-02-27 17:44:21', '2025-02-27 17:44:21'),
(296, 4, 'stock-items', 'GET', '127.0.0.1', '[]', '2025-02-27 17:44:21', '2025-02-27 17:44:21'),
(297, 4, 'stock-items', 'GET', '127.0.0.1', '[]', '2025-02-27 18:42:10', '2025-02-27 18:42:10'),
(298, 4, 'stock-items', 'GET', '127.0.0.1', '[]', '2025-02-27 18:43:00', '2025-02-27 18:43:00'),
(299, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-28 10:11:42', '2025-02-28 10:11:42'),
(300, 1, '/', 'GET', '127.0.0.1', '[]', '2025-02-28 10:11:43', '2025-02-28 10:11:43'),
(301, 4, '/', 'GET', '127.0.0.1', '[]', '2025-02-28 10:11:58', '2025-02-28 10:11:58'),
(302, 4, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 12:14:46', '2025-02-28 12:14:46'),
(303, 4, 'stock-items/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 12:14:50', '2025-02-28 12:14:50'),
(304, 4, 'stock-items', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"created_by_id\":\"4\",\"stock_sub_category_id\":\"1\",\"name\":\"Fruits Product\",\"update_sku\":\"No\",\"generate_sku\":\"Auto\",\"buying_price\":\"1500\",\"selling_price\":\"2000\",\"original_quantity\":\"80\",\"description\":null,\"_token\":\"ejEVMiwk6fWNBiehva0YKVPW4VBL13Zz1S97eJv7\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-items\"}', '2025-02-28 12:17:11', '2025-02-28 12:17:11'),
(305, 4, 'stock-items', 'GET', '127.0.0.1', '[]', '2025-02-28 12:17:11', '2025-02-28 12:17:11'),
(306, 4, 'stock-items/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 12:18:01', '2025-02-28 12:18:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(307, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:04:41', '2025-02-28 17:04:41'),
(308, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"desc\"}}', '2025-02-28 17:07:08', '2025-02-28 17:07:08'),
(309, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"}}', '2025-02-28 17:07:10', '2025-02-28 17:07:10'),
(310, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"desc\"}}', '2025-02-28 17:07:12', '2025-02-28 17:07:12'),
(311, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"}}', '2025-02-28 17:07:13', '2025-02-28 17:07:13'),
(312, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"desc\"}}', '2025-02-28 17:07:15', '2025-02-28 17:07:15'),
(313, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"}}', '2025-02-28 17:07:16', '2025-02-28 17:07:16'),
(314, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"desc\"}}', '2025-02-28 17:07:17', '2025-02-28 17:07:17'),
(315, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"}}', '2025-02-28 17:07:19', '2025-02-28 17:07:19'),
(316, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2025-02-28 17:08:27', '2025-02-28 17:08:27'),
(317, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2025-02-28 17:08:30', '2025-02-28 17:08:30'),
(318, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2025-02-28 17:08:32', '2025-02-28 17:08:32'),
(319, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2025-02-28 17:08:36', '2025-02-28 17:08:36'),
(320, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2025-02-28 17:08:38', '2025-02-28 17:08:38'),
(321, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"asc\"}}', '2025-02-28 17:08:40', '2025-02-28 17:08:40'),
(322, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"desc\"}}', '2025-02-28 17:08:59', '2025-02-28 17:08:59'),
(323, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"}}', '2025-02-28 17:09:00', '2025-02-28 17:09:00'),
(324, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"desc\"}}', '2025-02-28 17:09:02', '2025-02-28 17:09:02'),
(325, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"}}', '2025-02-28 17:09:03', '2025-02-28 17:09:03'),
(326, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"},\"status\":[\"Inactive\"],\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:09:16', '2025-02-28 17:09:16'),
(327, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"},\"status\":[\"Active\"],\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:09:23', '2025-02-28 17:09:23'),
(328, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"},\"status\":[\"Active\"],\"in_stock\":[\"No\"],\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:09:29', '2025-02-28 17:09:29'),
(329, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"},\"status\":[\"Active\"],\"in_stock\":[\"Yes\"],\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:09:43', '2025-02-28 17:09:43'),
(330, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"},\"status\":[\"Active\"],\"in_stock\":[\"No\"],\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:09:52', '2025-02-28 17:09:52'),
(331, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:35:45', '2025-02-28 17:35:45'),
(332, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Stock Records\",\"icon\":\"fa-adjust\",\"uri\":\"stock-records\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"CvVDI3x25DYOsswN67IcvxCo8IbyBqOR0p6XCLva\"}', '2025-02-28 17:36:50', '2025-02-28 17:36:50'),
(333, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-02-28 17:36:50', '2025-02-28 17:36:50'),
(334, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"in_stock\",\"type\":\"asc\"},\"status\":[\"Active\"],\"in_stock\":[\"No\"]}', '2025-02-28 17:37:50', '2025-02-28 17:37:50'),
(335, 4, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:37:56', '2025-02-28 17:37:56'),
(336, 4, 'stock-records', 'GET', '127.0.0.1', '[]', '2025-02-28 17:42:18', '2025-02-28 17:42:18'),
(337, 4, 'stock-records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:42:49', '2025-02-28 17:42:49'),
(338, 4, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-28 17:43:23', '2025-02-28 17:43:23'),
(339, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-01 18:37:45', '2025-03-01 18:37:45'),
(340, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-01 18:37:57', '2025-03-01 18:37:57'),
(341, 4, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:17:27', '2025-03-01 22:17:27'),
(342, 4, 'stock-records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:17:34', '2025-03-01 22:17:34'),
(343, 4, 'stock-records', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_item_id\":\"2\",\"created_by_id\":\"4\",\"type\":\"Sale\",\"description\":\"Apples Produce\",\"quantity\":\"10\",\"_token\":\"5ip2SXek3ZsMXK7UY3gylr0XWE9TzwvijTauWfOV\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-records\"}', '2025-03-01 22:18:19', '2025-03-01 22:18:19'),
(344, 4, 'stock-records', 'GET', '127.0.0.1', '[]', '2025-03-01 22:18:19', '2025-03-01 22:18:19'),
(345, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:30:30', '2025-03-01 22:30:30'),
(346, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:30:44', '2025-03-01 22:30:44'),
(347, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:30:54', '2025-03-01 22:30:54'),
(348, 4, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:31:36', '2025-03-01 22:31:36'),
(349, 4, 'stock-records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:31:39', '2025-03-01 22:31:39'),
(350, 4, 'stock-records', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_item_id\":\"3\",\"created_by_id\":\"4\",\"type\":\"Sale\",\"description\":\"Fruits Product\",\"quantity\":\"5\",\"_token\":\"5ip2SXek3ZsMXK7UY3gylr0XWE9TzwvijTauWfOV\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-records\"}', '2025-03-01 22:32:28', '2025-03-01 22:32:28'),
(351, 4, 'stock-records', 'GET', '127.0.0.1', '[]', '2025-03-01 22:32:28', '2025-03-01 22:32:28'),
(352, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:33:11', '2025-03-01 22:33:11'),
(353, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:33:15', '2025-03-01 22:33:15'),
(354, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:33:52', '2025-03-01 22:33:52'),
(355, 4, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:33:57', '2025-03-01 22:33:57'),
(356, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:34:32', '2025-03-01 22:34:32'),
(357, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:34:34', '2025-03-01 22:34:34'),
(358, 4, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:35:15', '2025-03-01 22:35:15'),
(359, 4, 'stock-records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:35:18', '2025-03-01 22:35:18'),
(360, 4, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:36:02', '2025-03-01 22:36:02'),
(361, 4, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:36:28', '2025-03-01 22:36:28'),
(362, 4, 'stock-records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:36:33', '2025-03-01 22:36:33'),
(363, 4, 'stock-records', 'POST', '127.0.0.1', '{\"company_id\":\"1\",\"stock_item_id\":\"3\",\"created_by_id\":\"4\",\"type\":\"Sale\",\"description\":\"Fruits - Fresh Produce\",\"quantity\":\"5\",\"_token\":\"5ip2SXek3ZsMXK7UY3gylr0XWE9TzwvijTauWfOV\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-records\"}', '2025-03-01 22:36:52', '2025-03-01 22:36:52'),
(364, 4, 'stock-records', 'GET', '127.0.0.1', '[]', '2025-03-01 22:36:53', '2025-03-01 22:36:53'),
(365, 4, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:37:01', '2025-03-01 22:37:01'),
(366, 4, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:37:12', '2025-03-01 22:37:12'),
(367, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:37:17', '2025-03-01 22:37:17'),
(368, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:40:44', '2025-03-01 22:40:44'),
(369, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-01 22:41:00', '2025-03-01 22:41:00'),
(370, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-01 22:41:04', '2025-03-01 22:41:04'),
(371, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:41:43', '2025-03-01 22:41:43'),
(372, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-01 22:42:13', '2025-03-01 22:42:13'),
(373, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-01 22:42:14', '2025-03-01 22:42:14'),
(374, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-03-01 22:42:52', '2025-03-01 22:42:52'),
(375, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"2hXsjhuqIAOZE9FCH3rV6kWVMCiiprY6uJGXCmgm\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":15},{\\\"id\\\":14},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":13},{\\\"id\\\":12}]},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2025-03-01 22:43:11', '2025-03-01 22:43:11'),
(376, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:43:11', '2025-03-01 22:43:11'),
(377, 4, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-01 22:43:23', '2025-03-01 22:43:23'),
(378, 4, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-01 22:50:33', '2025-03-01 22:50:33'),
(379, 4, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-02 01:23:48', '2025-03-02 01:23:48'),
(380, 4, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-02 01:23:53', '2025-03-02 01:23:53'),
(381, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-03-02 01:25:06', '2025-03-02 01:25:06'),
(382, 1, 'auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"Company profile\",\"icon\":\"fa-cog\",\"uri\":\"companies-edit\",\"roles\":[\"2\",\"3\",null],\"permission\":null,\"_token\":\"yo8XKA6uTHr9ZJPke8ajwhQGjeQ9muw8ikKpOOti\"}', '2025-03-02 01:27:16', '2025-03-02 01:27:16'),
(383, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-03-02 01:27:16', '2025-03-02 01:27:16'),
(384, 4, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-02 01:27:30', '2025-03-02 01:27:30'),
(385, 4, 'companies-edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 01:41:46', '2025-03-02 01:41:46'),
(386, 4, 'companies-edit/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 01:42:01', '2025-03-02 01:42:01'),
(387, 4, 'companies-edit/1', 'PUT', '127.0.0.1', '{\"name\":\"Gonzales and Morales Co\",\"email\":\"wycijimy@mailinator.com\",\"website\":\"https:\\/\\/www.jocolegoq.org.au\",\"about\":\"Corrupti vel iure a\",\"address\":\"Magnam est harum mo\",\"phone_number\":\"+1 (714) 315-6713\",\"phone_number_2\":\"+1 (504) 118-5712\",\"pobox\":\"PO Box 10247\",\"color\":\"#000000\",\"slogan\":\"Dolor et quasi labor\",\"facebook\":\"https:\\/\\/www.zuq.biz\",\"twitter\":\"https:\\/\\/www.nigy.tv\",\"currency\":\"USD\",\"settings_worker_can_create_stock_item\":\"Yes\",\"settings_worker_can_create_stock_record\":\"Yes\",\"settings_worker_can_create_stock_category\":\"Yes\",\"settings_worker_can_view_balance\":\"Yes\",\"settings_worker_can_view_stats\":\"Yes\",\"_token\":\"C5DnCiK9pvacKwlAeoZR45w8xzshj36AdDwu2dyV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/companies-edit\"}', '2025-03-02 01:42:08', '2025-03-02 01:42:08'),
(388, 4, 'companies-edit', 'GET', '127.0.0.1', '[]', '2025-03-02 01:42:08', '2025-03-02 01:42:08'),
(389, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-03-02 02:08:08', '2025-03-02 02:08:08'),
(390, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:08:34', '2025-03-02 02:08:34'),
(391, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-03-02 02:08:34', '2025-03-02 02:08:34'),
(392, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:11:50', '2025-03-02 02:11:50'),
(393, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:11:50', '2025-03-02 02:11:50'),
(394, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:12:16', '2025-03-02 02:12:16'),
(395, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:18:08', '2025-03-02 02:18:08'),
(396, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:23:48', '2025-03-02 02:23:48'),
(397, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:24:58', '2025-03-02 02:24:58'),
(398, 4, 'companies-edit', 'GET', '127.0.0.1', '[]', '2025-03-02 02:25:16', '2025-03-02 02:25:16'),
(399, 4, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:25:19', '2025-03-02 02:25:19'),
(400, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:27:22', '2025-03-02 02:27:22'),
(401, 1, 'auth/login', 'GET', '127.0.0.1', '[]', '2025-03-02 02:28:41', '2025-03-02 02:28:41'),
(402, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:28:41', '2025-03-02 02:28:41'),
(403, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:40:11', '2025-03-02 02:40:11'),
(404, 1, 'auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:40:39', '2025-03-02 02:40:39'),
(405, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:43:55', '2025-03-02 02:43:55'),
(406, 1, 'auth/menu', 'GET', '127.0.0.1', '[]', '2025-03-02 02:43:55', '2025-03-02 02:43:55'),
(407, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:44:10', '2025-03-02 02:44:10'),
(408, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:47:55', '2025-03-02 02:47:55'),
(409, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 02:47:57', '2025-03-02 02:47:57'),
(410, 4, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:48:09', '2025-03-02 02:48:09'),
(411, 4, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 02:48:11', '2025-03-02 02:48:11'),
(412, 4, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 03:00:07', '2025-03-02 03:00:07'),
(413, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:00:08', '2025-03-02 03:00:08'),
(414, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-02 03:01:11', '2025-03-02 03:01:11'),
(415, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:01:11', '2025-03-02 03:01:11'),
(416, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:04:28', '2025-03-02 03:04:28'),
(417, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:04:55', '2025-03-02 03:04:55'),
(418, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:10:39', '2025-03-02 03:10:39'),
(419, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:18:04', '2025-03-02 03:18:04'),
(420, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:18:52', '2025-03-02 03:18:52'),
(421, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-02 03:24:34', '2025-03-02 03:24:34'),
(422, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 13:29:50', '2025-03-03 13:29:50'),
(423, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 13:29:52', '2025-03-03 13:29:52'),
(424, 1, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 13:42:36', '2025-03-03 13:42:36'),
(425, 4, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 13:43:30', '2025-03-03 13:43:30'),
(426, 4, 'auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 18:29:36', '2025-03-03 18:29:36'),
(427, 7, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 18:29:48', '2025-03-03 18:29:48'),
(428, 7, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 18:37:43', '2025-03-03 18:37:43'),
(429, 1, 'auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 18:57:54', '2025-03-03 18:57:54'),
(430, 7, 'auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 18:59:05', '2025-03-03 18:59:05'),
(431, 7, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 19:00:54', '2025-03-03 19:00:54'),
(432, 7, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 19:12:16', '2025-03-03 19:12:16'),
(433, 7, 'financial-periods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 19:12:18', '2025-03-03 19:12:18'),
(434, 7, 'financial-periods', 'POST', '127.0.0.1', '{\"company_id\":\"4\",\"name\":\"2024-2025\",\"start_date\":\"2025-01-01\",\"end_date\":\"2025-01-31\",\"status\":\"Active\",\"description\":null,\"_token\":\"4dF0Nop8Zaplgcp8BbyIVaejZumRfADfMWiXrZNu\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/financial-periods\"}', '2025-03-03 19:14:02', '2025-03-03 19:14:02'),
(435, 7, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-03-03 19:14:02', '2025-03-03 19:14:02'),
(436, 7, '/', 'GET', '127.0.0.1', '[]', '2025-03-03 21:34:39', '2025-03-03 21:34:39'),
(437, 7, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-03 21:34:50', '2025-03-03 21:34:50'),
(438, 7, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-03-04 01:21:00', '2025-03-04 01:21:00'),
(439, 7, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-03-04 01:29:32', '2025-03-04 01:29:32'),
(440, 7, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-03-04 01:40:57', '2025-03-04 01:40:57'),
(441, 7, 'financial-periods', 'GET', '127.0.0.1', '[]', '2025-03-04 01:53:02', '2025-03-04 01:53:02'),
(442, 7, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:40:06', '2025-03-04 02:40:06'),
(443, 7, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-04 02:41:08', '2025-03-04 02:41:08'),
(444, 7, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-04 02:45:04', '2025-03-04 02:45:04'),
(445, 7, 'employees/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:45:50', '2025-03-04 02:45:50'),
(446, 7, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:45:55', '2025-03-04 02:45:55'),
(447, 7, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-04 02:47:15', '2025-03-04 02:47:15'),
(448, 7, 'employees/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:47:22', '2025-03-04 02:47:22'),
(449, 7, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:47:25', '2025-03-04 02:47:25'),
(450, 7, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-04 02:49:21', '2025-03-04 02:49:21'),
(451, 7, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-04 02:50:49', '2025-03-04 02:50:49'),
(452, 7, 'employees/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:52:27', '2025-03-04 02:52:27'),
(453, 7, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 02:52:30', '2025-03-04 02:52:30'),
(454, 7, 'employees', 'GET', '127.0.0.1', '[]', '2025-03-04 02:54:07', '2025-03-04 02:54:07'),
(455, 7, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 03:05:08', '2025-03-04 03:05:08'),
(456, 7, 'stock-categories/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 03:12:15', '2025-03-04 03:12:15'),
(457, 7, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 03:12:18', '2025-03-04 03:12:18'),
(458, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 07:54:14', '2025-03-04 07:54:14'),
(459, 7, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 07:54:20', '2025-03-04 07:54:20'),
(460, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 08:05:41', '2025-03-04 08:05:41'),
(461, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-04 08:08:33', '2025-03-04 08:08:33'),
(462, 7, 'stock-sub-categories/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 08:08:53', '2025-03-04 08:08:53'),
(463, 7, 'stock-sub-categories/8', 'PUT', '127.0.0.1', '{\"company_id\":\"4\",\"stock_category_id\":\"5\",\"name\":\"Test Sub Category 5\",\"description\":\"Details About This Sub Cat\",\"measurement_unit\":\"KG\",\"reorder_level\":\"10\",\"status\":\"Active\",\"_token\":\"s6r6wtZnGWHSWi1T7nLDbVUzARt5bgmAEuTR4kQz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/stock-sub-categories\"}', '2025-03-04 08:09:13', '2025-03-04 08:09:13'),
(464, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-04 08:09:14', '2025-03-04 08:09:14'),
(465, 7, 'stock-sub-categories/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 08:12:10', '2025-03-04 08:12:10'),
(466, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 08:12:13', '2025-03-04 08:12:13'),
(467, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-04 08:13:06', '2025-03-04 08:13:06'),
(468, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-04 08:13:51', '2025-03-04 08:13:51'),
(469, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '[]', '2025-03-04 09:24:13', '2025-03-04 09:24:13'),
(470, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:38:44', '2025-03-04 11:38:44'),
(471, 7, 'companies-edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:38:54', '2025-03-04 11:38:54'),
(472, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:38:57', '2025-03-04 11:38:57'),
(473, 7, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:38:58', '2025-03-04 11:38:58'),
(474, 7, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:39:01', '2025-03-04 11:39:01'),
(475, 7, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:39:03', '2025-03-04 11:39:03'),
(476, 7, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:39:06', '2025-03-04 11:39:06'),
(477, 7, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:46:40', '2025-03-04 11:46:40'),
(478, 7, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:14', '2025-03-04 11:47:14'),
(479, 7, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:16', '2025-03-04 11:47:16'),
(480, 7, 'companies-edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:21', '2025-03-04 11:47:21'),
(481, 7, 'stock-sub-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:23', '2025-03-04 11:47:23'),
(482, 7, 'stock-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:26', '2025-03-04 11:47:26'),
(483, 7, 'employees', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:28', '2025-03-04 11:47:28'),
(484, 7, 'financial-periods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:29', '2025-03-04 11:47:29'),
(485, 7, 'stock-items', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 11:47:31', '2025-03-04 11:47:31'),
(486, 7, 'stock-items', 'GET', '127.0.0.1', '[]', '2025-03-04 11:49:41', '2025-03-04 11:49:41'),
(487, 7, 'stock-records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2025-03-04 12:07:14', '2025-03-04 12:07:14'),
(488, 7, 'stock-records', 'GET', '127.0.0.1', '[]', '2025-03-04 12:17:32', '2025-03-04 12:17:32'),
(489, 7, 'stock-records', 'GET', '127.0.0.1', '[]', '2025-03-04 12:17:37', '2025-03-04 12:17:37');

-- --------------------------------------------------------

--
-- Structure de la table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2025-02-07 15:45:54', '2025-02-07 16:18:14'),
(2, 'Company Owner', 'company', '2025-02-07 16:17:08', '2025-02-07 16:17:08'),
(3, 'Company Worker', 'worker', '2025-02-07 16:17:46', '2025-02-07 16:17:46');

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(3, 9, NULL, NULL),
(2, 10, NULL, NULL),
(3, 10, NULL, NULL),
(2, 9, NULL, NULL),
(2, 11, NULL, NULL),
(3, 11, NULL, NULL),
(2, 12, NULL, NULL),
(3, 12, NULL, NULL),
(2, 13, NULL, NULL),
(3, 13, NULL, NULL),
(2, 14, NULL, NULL),
(3, 14, NULL, NULL),
(2, 15, NULL, NULL),
(3, 15, NULL, NULL),
(2, 16, NULL, NULL),
(3, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `phone_number` text DEFAULT NULL,
  `phone_number_2` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `sex` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`, `company_id`, `first_name`, `last_name`, `phone_number`, `phone_number_2`, `address`, `sex`, `dob`, `status`, `email`) VALUES
(1, 'admin', '$2y$12$yykXTNzSQzR94OmG1MvkHeeePTiIqhmkYIhbcIaZI5kyHyB1c3eki', 'Administrator', 'images/profile.png', 'tTWhHyuSIEJsvt2JhyYCYFaTthAQ3yj7ivhUgkgQw5eKVmdRYvxYQbu2NMh0', '2025-02-07 15:45:54', '2025-02-11 20:21:44', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL),
(4, 'Company One', '$2y$12$kso6tq4XYsHBogWG6nHZhuRZVeOFNm52.pOpIEolRY0PJUdXoQXZe', 'Company Admin One', NULL, 'nRIt1fVCYcCrZtOf9k2Qhm72Tu7RntCMO0e1lJzrAHAKaZX0fBBMV1EemT0F', '2025-02-09 21:48:35', '2025-02-09 21:48:35', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL),
(5, 'Company Two', '$2y$12$hqP1wpIR19FFCoxxvbgXs.llaZF1eRxbc3/uI3FgDIAeGghmeL06G', 'Company Admin Two', NULL, NULL, '2025-02-09 21:49:33', '2025-02-09 21:49:33', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL),
(7, 'hilairehappi@gmail.com', '$2y$10$NN3HNHSmeEfA68z8PQkxw.QL1arPer0EsbbudR388CnMHfvTd2Asi', 'hilaire happi', NULL, 'ybYLQ9D1K2AzXJcRaA6X448XEfoTxUUjBr4ItYjfGsRcatLpZoJzCtYXS9sg', '2025-03-02 15:26:20', '2025-03-02 15:26:20', 4, 'hilaire', 'happi', '+237675593711', NULL, NULL, NULL, NULL, 'Active', 'hilairehappi@gmail.com'),
(8, 'employeetree3@gmail.com', '$2y$12$XRJ9ORrtJ3K2PGd1Aa4nbOpqbL7xd70KmXIZBK4Xy76pi9h4OsvHS', 'Employee One', NULL, NULL, '2025-03-04 02:40:41', '2025-03-04 02:46:55', 4, 'Employee', 'One', '+237695074041', NULL, '11237 Douala', 'Male', '1997-10-23', 'Active', 'employeetree3@gmail.com'),
(9, 'employeetwo2@gmail.com', '$2y$12$QvGRe/2KkJ9Oghy.6Euz3uYfo9aPjWq59HhMp7KZ7h23vl0uuthdK', 'Employee Two', NULL, NULL, '2025-03-04 02:42:09', '2025-03-04 02:49:12', 4, 'Employee', 'Two', '+237695074041', NULL, '11237 Douala', 'Male', '1997-10-23', 'Active', 'employeetwo2@gmail.com'),
(10, 'employeefour4@gmail.com', '$2y$12$BjcK7k7tlTr7UxwRVnU4rOg99bozFGpPinrrcf1AWWAL3cTBxxuXu', 'Employee Tree', NULL, NULL, '2025-03-04 02:43:34', '2025-03-04 02:43:34', 4, 'Employee', 'Tree', '+237695074041', NULL, '11237 Douala', 'Male', '1997-10-23', 'Active', 'employeefour4@gmail.com'),
(12, 'employeefour@gmail.com', '$2y$12$jmVc8LCW/lhIiWDcdyy/leKg5kXTb2EEAYN3yt/ERoQY6PdVm39qm', 'Employee Four', NULL, NULL, '2025-03-04 02:50:41', '2025-03-04 02:54:00', 4, 'Employee', 'Four', '+237695074041', NULL, '11237 Douala', 'Male', '1997-10-23', 'Active', 'employeefour@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `about` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `license_expire` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone_number` text DEFAULT NULL,
  `phone_number_2` text DEFAULT NULL,
  `pobox` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `slogan` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `currency` varchar(255) DEFAULT 'USD',
  `settings_worker_can_create_stock_item` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_create_stock_record` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_create_stock_category` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_view_balance` varchar(255) DEFAULT 'Yes',
  `settings_worker_can_view_stats` varchar(255) DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `owner_id`, `name`, `email`, `logo`, `website`, `about`, `status`, `license_expire`, `address`, `phone_number`, `phone_number_2`, `pobox`, `color`, `slogan`, `facebook`, `twitter`, `currency`, `settings_worker_can_create_stock_item`, `settings_worker_can_create_stock_record`, `settings_worker_can_create_stock_category`, `settings_worker_can_view_balance`, `settings_worker_can_view_stats`) VALUES
(1, '2025-02-10 02:11:08', '2025-02-10 02:11:08', 5, 'Gonzales and Morales Co', 'wycijimy@mailinator.com', NULL, 'https://www.jocolegoq.org.au', 'Corrupti vel iure a', 'Beatae pariatur Sit', '2025-02-10', 'Magnam est harum mo', '+1 (714) 315-6713', '+1 (504) 118-5712', 'PO Box 10247', '#000000', 'Dolor et quasi labor', 'https://www.zuq.biz', 'https://www.nigy.tv', 'USD', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(2, '2025-02-10 02:13:20', '2025-02-10 02:13:20', 4, 'Kennedy Mcmahon Associates', 'zopeg@mailinator.com', NULL, 'https://www.sabygax.com.au', 'Vel doloremque qui r', 'Rerum eveniet anim', '2025-02-10', 'Rerum sint irure qu', '+1 (256) 376-1125', '+1 (192) 231-5547', 'P.O. Box 18291', '#000000', 'Laudantium ut porro', 'https://www.cupazuhozice.me.uk', 'https://www.liduwyq.co', 'USD', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(4, '2025-03-02 15:26:20', '2025-03-02 15:26:20', 7, 'h2soft', 'hilairehappi@gmail.com', NULL, NULL, NULL, 'Active', '2026-03-02', NULL, '+237675593711', NULL, NULL, NULL, NULL, NULL, NULL, 'XAF', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `financial_periods`
--

CREATE TABLE `financial_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text DEFAULT NULL,
  `total_investment` bigint(20) NOT NULL DEFAULT 0,
  `total_sales` bigint(20) NOT NULL DEFAULT 0,
  `total_profit` bigint(20) NOT NULL DEFAULT 0,
  `total_expenses` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `financial_periods`
--

INSERT INTO `financial_periods` (`id`, `created_at`, `updated_at`, `company_id`, `name`, `start_date`, `end_date`, `status`, `description`, `total_investment`, `total_sales`, `total_profit`, `total_expenses`) VALUES
(1, '2025-02-20 14:33:25', '2025-02-20 14:33:25', 1, '2023', '2023-01-01', '2023-12-31', 'Active', 'First Financial Perios', 0, 0, 0, 0),
(2, '2025-02-20 14:34:44', '2025-02-20 14:34:44', 1, '2024', '2024-01-01', '2024-12-31', 'Inactive', 'Second Financial Period', 0, 0, 0, 0),
(3, '2025-03-03 19:14:02', '2025-03-04 02:15:30', 4, '2024-2025', '2024-01-01', '2024-12-31', 'Active', 'Financial Period 3', 0, 0, 0, 0),
(4, '2025-03-04 01:29:03', '2025-03-04 02:02:57', 4, '2023-2024', '2023-01-01', '2023-12-31', 'Inactive', 'Financial Period 4', 0, 0, 0, 0),
(5, '2025-03-04 01:52:18', '2025-03-04 02:14:26', 4, '2023-2024', '2023-01-01', '2023-12-31', 'Inactive', 'Financial Period 5', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2025_02_07_172411_create_companies_table', 3),
(7, '2025_02_10_000153_add_more_data_to_users_table', 4),
(8, '2025_02_11_122218_create_stock_categories_table', 5),
(9, '2025_02_11_133043_create_stock_sub_categories_table', 6),
(10, '2025_02_13_180118_create_financial_periods_table', 7),
(11, '2025_02_20_162155_add_email_to_users_table', 8),
(12, '2025_02_20_163959_create_stock_items_table', 9),
(13, '2025_02_28_175822_add_in_stock_stock_sub_categories', 10),
(14, '2025_02_28_182013_create_stock_records_table', 11),
(15, '2025_03_01_205636_add_profit_col_stock_records', 12),
(16, '2025_03_01_231305_add_financial_period_id_to', 13),
(17, '2025_03_02_020935_add_currency_to_companies', 14);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock_categories`
--

CREATE TABLE `stock_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `image` text DEFAULT NULL,
  `buying_price` bigint(20) DEFAULT 0,
  `selling_price` bigint(20) DEFAULT 0,
  `expected_profit` bigint(20) DEFAULT 0,
  `earned_profit` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stock_categories`
--

INSERT INTO `stock_categories` (`id`, `created_at`, `updated_at`, `company_id`, `name`, `description`, `status`, `image`, `buying_price`, `selling_price`, `expected_profit`, `earned_profit`) VALUES
(1, '2025-02-11 21:18:57', '2025-03-01 22:36:52', 1, 'Fresh Produce', 'Some Fresh Produce', 'Active', NULL, 176520, 304720, 128200, 24600),
(2, '2025-02-11 21:19:30', '2025-02-11 21:19:30', 1, 'Dairy & Eggs', 'some Dairy & Eggs', 'Active', NULL, 0, 0, 0, 0),
(3, '2025-02-11 21:20:04', '2025-02-11 21:20:04', 1, 'Meat & Seafood', 'some Meat & Seafood', 'Active', NULL, 0, 0, 0, 0),
(4, '2025-02-11 21:20:44', '2025-02-11 21:20:44', 1, 'Frozen Foods', 'Some Frozen Foods', 'Active', NULL, 0, 0, 0, 0),
(5, '2025-03-04 03:04:38', '2025-03-04 12:20:12', 4, 'Stock Category 5', 'My Stock Category 5', 'Active', NULL, 150000, 200000, 50000, 7500),
(6, '2025-03-04 03:05:01', '2025-03-04 03:13:18', 4, 'Stock Category 6', 'My Stock Category 6', 'Active', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `stock_category_id` bigint(20) UNSIGNED NOT NULL,
  `stock_sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `financial_period_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `generate_sku` varchar(255) DEFAULT NULL,
  `update_sku` varchar(255) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `buying_price` bigint(20) NOT NULL DEFAULT 0,
  `selling_price` bigint(20) NOT NULL DEFAULT 0,
  `original_quantity` bigint(20) NOT NULL DEFAULT 0,
  `current_quantity` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stock_items`
--

INSERT INTO `stock_items` (`id`, `created_at`, `updated_at`, `company_id`, `created_by_id`, `stock_category_id`, `stock_sub_category_id`, `financial_period_id`, `name`, `description`, `image`, `barcode`, `sku`, `generate_sku`, `update_sku`, `gallery`, `buying_price`, `selling_price`, `original_quantity`, `current_quantity`) VALUES
(2, '2025-02-27 17:44:21', '2025-03-01 22:18:19', 1, 4, 1, 3, 1, 'Apples Produce', NULL, NULL, NULL, '142563', 'Manual', 'No', NULL, 1256, 3216, 45, 35),
(3, '2025-02-28 12:17:11', '2025-03-01 22:36:52', 1, 4, 1, 1, 1, 'Fruits Product', NULL, NULL, NULL, '2025-1-1', 'Auto', 'No', NULL, 1500, 2000, 80, 70),
(4, '2025-03-04 11:38:28', '2025-03-04 12:20:12', 4, 7, 5, 8, 3, 'Test Stock Item 4', 'Some Details Test Stock Item 4', 'images/1741091908_97112.jpg', NULL, '2869', 'Auto', '256789', NULL, 1500, 2000, 50, 35),
(5, '2025-03-04 11:44:42', '2025-03-04 11:44:42', 4, 7, 5, 8, 3, 'Test Stock Item 5', 'Some Details Test Stock Item 8', NULL, NULL, '2869', 'Auto', '256789', NULL, 1500, 2000, 50, 50);

-- --------------------------------------------------------

--
-- Structure de la table `stock_records`
--

CREATE TABLE `stock_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `stock_item_id` bigint(20) UNSIGNED NOT NULL,
  `stock_category_id` bigint(20) UNSIGNED NOT NULL,
  `stock_sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `measurement_unit` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `selling_price` double(8,2) NOT NULL,
  `total_sales` double(8,2) NOT NULL,
  `profit` bigint(20) NOT NULL DEFAULT 0,
  `financial_period_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stock_records`
--

INSERT INTO `stock_records` (`id`, `created_at`, `updated_at`, `company_id`, `stock_item_id`, `stock_category_id`, `stock_sub_category_id`, `created_by_id`, `sku`, `name`, `measurement_unit`, `description`, `type`, `quantity`, `selling_price`, `total_sales`, `profit`, `financial_period_id`) VALUES
(1, '2025-03-01 22:18:19', '2025-03-01 22:18:19', 1, 2, 1, 3, 4, '142563', 'Apples Produce', 'KG', 'Apples Produce', 'Sale', 10.00, 3216.00, 32160.00, 19600, 1),
(2, '2025-03-01 22:32:28', '2025-03-01 22:32:28', 1, 3, 1, 1, 4, '2025-1-1', 'Fruits Product', 'KG', 'Fruits Product', 'Sale', 5.00, 2000.00, 10000.00, 2500, 1),
(3, '2025-03-01 22:36:52', '2025-03-01 22:36:52', 1, 3, 1, 1, 4, '2025-1-1', 'Fruits Product', 'KG', 'Fruits - Fresh Produce', 'Sale', 5.00, 2000.00, 10000.00, 2500, 1),
(4, '2025-03-04 12:06:48', '2025-03-04 12:17:11', 4, 4, 5, 8, 7, '2869', 'Test Stock Item 4', 'KG', 'Some Details 4', 'Sale', 3.00, 2000.00, 10000.00, 2500, 3),
(5, '2025-03-04 12:20:12', '2025-03-04 12:20:12', 4, 4, 5, 8, 7, '2869', 'Test Stock Item 4', 'KG', 'New  Details for Compagny 4', 'Sale', 10.00, 2000.00, 20000.00, 5000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `stock_sub_categories`
--

CREATE TABLE `stock_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `stock_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `image` text DEFAULT NULL,
  `buying_price` bigint(20) DEFAULT 0,
  `selling_price` bigint(20) DEFAULT 0,
  `expected_profit` bigint(20) DEFAULT 0,
  `earned_profit` bigint(20) DEFAULT 0,
  `measurement_unit` varchar(255) NOT NULL,
  `current_quantity` bigint(20) DEFAULT 0,
  `reorder_level` bigint(20) DEFAULT 0,
  `in_stock` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stock_sub_categories`
--

INSERT INTO `stock_sub_categories` (`id`, `created_at`, `updated_at`, `company_id`, `stock_category_id`, `name`, `description`, `status`, `image`, `buying_price`, `selling_price`, `expected_profit`, `earned_profit`, `measurement_unit`, `current_quantity`, `reorder_level`, `in_stock`) VALUES
(1, '2025-02-11 21:32:57', '2025-03-01 22:36:52', 1, 1, 'Fruits', 'Some Fruits', 'Active', 'images/e3e09336cacbb40607ab07b53a014ac4.jpg', 120000, 160000, 40000, 5000, 'KG', 70, 50, 'Yes'),
(3, '2025-02-13 16:31:51', '2025-03-01 22:18:19', 1, 1, 'Apples', 'Some Apples', 'Active', 'images/ad26e4b9f915da99603d74f7e2e0e3f8.jpg', 56520, 144720, 88200, 0, 'KG', 35, 20, 'Yes'),
(4, '2025-02-13 16:33:05', '2025-02-13 16:33:05', 1, 2, 'Milk', 'Some Milk', 'Active', 'images/52db9ec47054ad754d55f34439163c30.jpg', 0, 0, 0, 0, 'KG', 0, 30, 'No'),
(5, '2025-02-13 16:34:01', '2025-02-13 16:34:01', 1, 2, 'margarine', 'Some margarine', 'Active', 'images/b2fa2c123a1103d7297ed5e6bc16ff00.jpg', 0, 0, 0, 0, 'KG', 0, 10, 'No'),
(6, '2025-02-13 16:36:35', '2025-02-13 16:36:35', 1, 3, 'Gluten-free', 'Some Gluten-free', 'Active', 'images/f42ebf0748d8bba8e74f7c8cd7308230.jpg', 0, 0, 0, 0, 'KG', 0, 60, 'No'),
(7, '2025-02-13 16:37:43', '2025-02-13 16:37:43', 1, 4, 'Ice cream', 'Some Ice cream', 'Active', 'images/1596a7017f19c3ed26af7b8c1f174f71.jpg', 0, 0, 0, 0, 'KG', 0, 100, 'No'),
(8, '2025-03-04 08:04:09', '2025-03-04 12:20:12', 4, 5, 'Test Sub Category 55', 'Details About This Sub Cat 55', 'Active', NULL, 150000, 200000, 50000, 7500, 'KG', 85, 25, 'Yes'),
(9, '2025-03-04 08:07:27', '2025-03-04 08:07:27', 4, 5, 'Test Sub Category 5', 'Details About This Sub Cat 5', 'Active', NULL, 0, 0, 0, 0, 'KG', 20, 20, 'No'),
(10, '2025-03-04 08:08:26', '2025-03-04 08:08:26', 4, 6, 'Test Sub Category 6', 'Details About This Sub Cat 6', 'Active', NULL, 0, 0, 0, 0, 'KG', 25, 25, 'No'),
(11, '2025-03-04 09:23:06', '2025-03-04 09:29:49', 4, 5, 'Test Sub Category 55', 'Details About This Sub Cat 55', 'Active', 'C:\\xampp\\tmp\\php2B90.tmp', 0, 0, 0, 0, 'KG', 25, 25, 'No'),
(12, '2025-03-04 09:34:21', '2025-03-04 09:37:00', 4, 5, 'Test Sub Category 11', 'Details About This Sub Cat 11', 'Active', 'images/1741084461_56697.png', 0, 0, 0, 0, 'KG', 25, 25, 'No'),
(13, '2025-03-04 09:41:30', '2025-03-04 09:44:03', 4, 6, 'Test Sub Category 11', 'Details About This Sub Cat 11', 'Active', 'images/1741084890_49210.jpg', 0, 0, 0, 0, 'KG', 25, 25, 'No');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Index pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Index pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Index pour la table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Index pour la table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Index pour la table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Index pour la table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `financial_periods`
--
ALTER TABLE `financial_periods`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `stock_categories`
--
ALTER TABLE `stock_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock_records`
--
ALTER TABLE `stock_records`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock_sub_categories`
--
ALTER TABLE `stock_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `financial_periods`
--
ALTER TABLE `financial_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock_categories`
--
ALTER TABLE `stock_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stock_records`
--
ALTER TABLE `stock_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stock_sub_categories`
--
ALTER TABLE `stock_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
