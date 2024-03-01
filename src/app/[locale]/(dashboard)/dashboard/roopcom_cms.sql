-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 13 nov 2023 om 13:31
-- Serverversie: 10.2.44-MariaDB
-- PHP-versie: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roopcom_cms`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `created_at`, `updated_at`, `screetkey`, `hit`, `status`) VALUES
(1, '2017-07-10 09:21:13', NULL, '50679a28d8c5f44d333cc5a1f696298e', 0, 'active');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-03-06 22:08:00', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-07-06 02:33:38', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(879, '2017-07-05 18:55:11', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'Viraj@roopcom.com login with IP Address ::1', 4),
(880, '2017-07-05 18:55:33', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/logout', 'Viraj@roopcom.com logout', 4),
(881, '2017-07-05 18:55:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'droopram@gmail.com login with IP Address ::1', 1),
(882, '2017-07-05 18:56:06', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/logout', 'droopram@gmail.com logout', 1),
(883, '2017-07-05 18:56:26', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'Roopramvijay@gmail.com login with IP Address ::1', 8),
(884, '2017-07-05 19:19:28', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/logout', 'Roopramvijay@gmail.com logout', 8),
(885, '2017-07-05 19:19:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'droopram@gmail.com login with IP Address ::1', 1),
(886, '2017-07-05 19:23:34', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/roopcom_cms_packages/add', 'Try add data at Packages', 1),
(887, '2017-07-05 19:23:40', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/roopcom_cms_packages/add', 'Try add data at Packages', 1),
(888, '2017-07-05 19:24:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/roopcom_cms_packages19/add', 'Try add data at packages', 1),
(889, '2017-07-06 01:21:19', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/logout', 'droopram@gmail.com logout', 1),
(890, '2017-07-06 01:22:09', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'Roopramvijay@gmail.com login with IP Address ::1', 8),
(891, '2017-07-06 01:23:58', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/logout', 'Roopramvijay@gmail.com logout', 8),
(892, '2017-07-06 01:24:01', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'Roopramvijay@gmail.com login with IP Address ::1', 8),
(893, '2017-07-06 01:24:12', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/logout', 'Roopramvijay@gmail.com logout', 8),
(894, '2017-07-06 01:24:18', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'http://localhost:88/admin/login', 'droopram@gmail.com login with IP Address ::1', 1),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Products', 'URL External', '#', NULL, 'fa fa-shopping-cart', 0, 1, 0, 1, 1, '2017-03-06 22:09:11', NULL),
(2, 'Add New Products', 'Route', 'AdminProductsControllerGetAdd', NULL, 'fa fa-plus', 1, 1, 0, 1, 1, '2017-03-06 22:09:11', NULL),
(3, 'List Products', 'Route', 'AdminProductsControllerGetIndex', NULL, 'fa fa-bars', 1, 1, 0, 1, 2, '2017-03-06 22:09:11', NULL),
(4, 'Giftcards', 'URL External', '#', NULL, 'fa fa-credit-card', 0, 1, 0, 1, 2, '2017-03-06 22:20:04', NULL),
(5, 'Add New Giftcards', 'Route', 'AdminGiftcardsControllerGetAdd', NULL, 'fa fa-plus', 4, 1, 0, 1, 1, '2017-03-06 22:20:04', NULL),
(6, 'List Giftcards', 'Route', 'AdminGiftcardsControllerGetIndex', NULL, 'fa fa-bars', 4, 1, 0, 1, 2, '2017-03-06 22:20:04', NULL),
(7, 'Warehouses', 'Module', 'warehouses20', 'normal', 'fa fa-building', 0, 1, 0, 1, 3, '2017-03-06 22:28:00', '2017-07-24 23:22:23'),
(8, 'Add New Warehouses', 'Route', 'AdminWarehousesControllerGetAdd', NULL, 'fa fa-plus', 7, 1, 0, 1, 1, '2017-03-06 22:28:00', NULL),
(9, 'List Warehouses', 'Route', 'AdminWarehousesControllerGetIndex', NULL, 'fa fa-bars', 7, 1, 0, 1, 2, '2017-03-06 22:28:00', NULL),
(10, 'Customers', 'URL External', '#', NULL, 'fa fa-users', 0, 1, 0, 1, 4, '2017-03-06 23:03:45', NULL),
(11, 'Add New Customers', 'Route', 'AdminRoopcomNewCustomersControllerGetAdd', NULL, 'fa fa-plus', 10, 1, 0, 1, 1, '2017-03-06 23:03:45', NULL),
(12, 'List Customers', 'Module', 'customers', 'normal', 'fa fa-bars', 10, 1, 0, 1, 2, '2017-03-06 23:03:45', '2017-08-04 05:05:25'),
(13, 'Packages', 'URL External', '#', NULL, 'fa fa-archive', 0, 1, 0, 1, 5, '2017-03-06 23:06:50', NULL),
(14, 'Add New Packages', 'Route', 'AdminPackagesControllerGetAdd', 'normal', 'fa fa-th-list', 13, 1, 0, 1, 1, '2017-03-06 23:06:50', '2017-07-06 02:20:48'),
(15, 'List Packages', 'Route', 'AdminPackagesControllerGetIndex', NULL, 'fa fa-bars', 13, 1, 0, 1, 2, '2017-03-06 23:06:50', NULL),
(16, 'Orders', 'URL External', '#', NULL, 'fa fa-shopping-bag', 0, 1, 0, 1, 6, '2017-03-06 23:22:26', NULL),
(17, 'Add New Orders', 'Route', 'AdminOrdersControllerGetAdd', NULL, 'fa fa-plus', 16, 1, 0, 1, 1, '2017-03-06 23:22:26', NULL),
(18, 'List Orders', 'Route', 'AdminOrdersControllerGetIndex', NULL, 'fa fa-bars', 16, 1, 0, 1, 2, '2017-03-06 23:22:26', NULL),
(19, 'Instellingen', 'Route', 'admin-settings', 'normal', 'fa fa-cogs', 0, 1, 0, 2, 11, '2017-03-07 06:48:40', '2017-03-07 08:22:13'),
(20, 'Settings', 'URL External', '#', NULL, 'fa fa-cogs', 0, 1, 0, 1, 7, '2017-03-07 08:32:45', NULL),
(21, 'Producten', 'Module', 'products', 'normal', 'fa fa-shopping-cart', 0, 1, 0, 2, 4, '2017-03-07 08:51:16', NULL),
(22, 'Giftcards', 'Route', 'admin-giftcard-list', 'normal', 'fa fa-shopping-bag', 0, 1, 0, 2, 6, '2017-03-07 08:51:44', '2017-07-19 18:35:11'),
(23, 'Bestellingen', 'Route', 'admin-order-list', 'normal', 'fa fa-shopping-bag', 0, 1, 0, 2, 5, '2017-03-07 08:52:08', '2017-07-14 23:34:37'),
(24, 'Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-dashboard', 0, 1, 1, 2, 1, '2017-03-07 08:52:41', NULL),
(25, 'Medewerkers', 'Module', 'users', 'normal', 'fa fa-user', 0, 1, 0, 2, 8, '2017-03-07 08:54:10', NULL),
(26, 'Klanten', 'Module', 'customers', 'normal', 'fa fa-bars', 0, 1, 0, 2, 7, '2017-03-07 08:54:24', '2017-08-04 05:05:54'),
(27, 'Magazijnlocaties', 'Module', 'warehouses20', 'normal', 'fa fa-building', 0, 1, 0, 2, 9, '2017-03-07 08:54:54', '2017-07-24 23:24:56'),
(28, 'Paketten', 'Module', 'packages', 'normal', 'fa fa-inbox', 0, 1, 0, 2, 2, '2017-03-07 08:55:19', NULL),
(29, 'Klanten', 'Module', 'customers', 'normal', 'fa fa-users', 0, 1, 0, 3, 2, '2017-03-07 08:59:24', '2017-07-25 07:28:37'),
(30, 'Shipments', 'URL External', '#', NULL, 'fa fa-ship', 0, 1, 0, 1, 8, '2017-03-07 09:00:44', NULL),
(31, 'Add New Shipments', 'Route', 'AdminShipmentsControllerGetAdd', NULL, 'fa fa-plus', 30, 1, 0, 1, 1, '2017-03-07 09:00:44', NULL),
(32, 'List Shipments', 'Route', 'AdminShipmentsControllerGetIndex', NULL, 'fa fa-bars', 30, 1, 0, 1, 2, '2017-03-07 09:00:44', NULL),
(33, 'Shipments', 'Module', 'shipments', 'normal', 'fa fa-ship', 0, 1, 0, 2, 3, '2017-03-07 09:08:42', NULL),
(34, 'Giftcards', 'Route', 'admin-giftcard-list', 'normal', 'fa fa-credit-card-alt', 0, 1, 0, 3, 3, '2017-03-07 09:09:52', '2017-07-21 01:21:13'),
(35, 'Shipments', 'Module', 'shipments', 'red', 'fa fa-ship', 0, 1, 1, 3, 1, '2017-03-07 09:10:14', NULL),
(39, 'Scannen', 'Route', 'admin-scan-packages', 'normal', 'fa fa-barcode', 28, 1, 0, 2, 1, '2017-03-07 11:50:32', '2017-03-07 12:54:35'),
(40, 'Beheren', 'Module', 'roopcom_cms_packages', 'normal', 'fa fa-th-list', 28, 1, 0, 2, 2, '2017-03-07 11:51:42', '2017-07-06 02:20:07'),
(41, 'Beheren', 'Module', 'shipments', 'normal', 'fa fa-th-list', 33, 1, 0, 2, 2, '2017-03-07 12:51:36', '2017-03-07 12:52:01'),
(42, 'Repack', 'Route', 'admin-repack', 'normal', 'fa fa-archive', 33, 1, 0, 2, 1, '2017-03-07 12:52:47', NULL),
(43, 'Scannen', 'Route', 'admin-scan-packages', 'normal', 'fa fa-barcode', 0, 1, 0, 4, 2, '2017-04-12 10:18:49', NULL),
(45, 'Repack', 'Route', 'admin-repack', 'normal', 'fa fa-archive', 0, 1, 0, 4, 3, '2017-04-12 10:21:17', NULL),
(51, 'Scannen', 'Route', 'admin-scan-packages', 'normal', 'fa fa-barcode', 0, 1, 1, 4, 1, '2017-04-24 12:33:04', '2017-04-24 12:33:25'),
(52, 'Bestellingen', 'Route', 'admin-order-list', 'normal', 'fa fa-credit-card-alt', 0, 1, 0, 3, 4, '2017-04-24 13:08:20', '2017-07-21 01:32:25'),
(53, 'Producten', 'Module', 'products', 'normal', 'fa fa-shopping-bag', 0, 1, 0, 3, 5, '2017-04-24 13:10:45', NULL),
(54, 'Dashboard', 'Module', 'shipments', 'normal', 'fa fa-dashboard', 0, 1, 1, 5, NULL, '2017-04-24 13:27:36', '2017-08-10 07:41:25'),
(55, 'Klanten', 'Module', 'customers', 'normal', 'fa fa-users', 0, 1, 0, 5, NULL, '2017-04-24 13:27:57', '2017-08-10 07:48:25'),
(56, 'Giftcards', 'Route', 'admin-giftcard-list', 'normal', 'fa fa-credit-card', 0, 1, 0, 5, NULL, '2017-04-24 13:28:15', '2017-08-10 07:49:10'),
(57, 'Bestellingen', 'Route', 'admin-order-list', 'normal', 'fa fa-shopping-bag', 0, 1, 0, 5, NULL, '2017-04-24 13:28:56', '2017-08-10 07:49:49'),
(58, 'Producten', 'Module', 'products', 'normal', 'fa fa-shopping-cart', 0, 1, 0, 5, NULL, '2017-04-24 13:29:15', '2017-08-10 07:51:25'),
(59, 'packages', 'URL External', '#', NULL, 'fa fa-archive', 0, 1, 0, 1, 11, '2017-07-05 19:22:24', NULL),
(60, 'providers', 'Route', 'AdminProvidersControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 12, '2017-07-17 09:23:16', NULL),
(61, 'Providers', 'Module', 'providers', 'normal', 'fa fa-th-list', 0, 1, 0, 2, 10, '2017-07-24 23:13:36', NULL),
(62, 'Arrival Shipment', 'Route', 'admin-scan-shipments', 'normal', 'fa fa-check', 33, 1, 0, 2, 3, '2017-08-04 02:35:43', NULL),
(63, 'Beheren', 'Module', 'products', 'normal', 'fa fa-bars', 21, 1, 0, 2, 1, '2017-08-20 20:44:08', '2017-08-21 07:48:35'),
(64, 'Invoices', 'Route', 'admin-product-invoice-list', 'normal', 'fa fa-list', 21, 1, 0, 2, 2, '2017-08-20 20:46:27', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`) VALUES
(1, '2017-03-06 22:08:00', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1),
(2, '2017-03-06 22:08:00', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1),
(3, '2017-03-06 22:08:00', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1),
(4, '2017-03-06 22:08:00', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1),
(5, '2017-03-06 22:08:00', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1),
(6, '2017-03-06 22:08:00', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1),
(7, '2017-03-06 22:08:00', NULL, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1),
(8, '2017-03-06 22:08:00', NULL, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1),
(9, '2017-03-06 22:08:00', NULL, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1),
(10, '2017-03-06 22:08:00', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1),
(11, '2017-03-06 22:08:00', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1),
(12, '2017-03-06 22:09:11', NULL, 'Products', 'fa fa-users', 'products', 'products', 'AdminProductsController', 0, 0),
(13, '2017-03-06 22:20:04', NULL, 'Giftcards', 'fa fa-credit-card', 'giftcards', 'giftcards', 'AdminGiftcardsController', 0, 0),
(14, '2017-03-06 22:28:00', NULL, 'Warehouses', 'fa fa-building', 'warehouses20', 'warehouses', 'AdminWarehousesController', 0, 0),
(15, '2017-03-06 23:03:45', NULL, 'Customers', 'fa fa-users', 'customers', 'customers', 'AdminRoopcomNewCustomersController', 0, 0),
(16, '2017-03-06 23:06:50', NULL, 'Packages', 'fa fa-archive', 'packages', 'packages', 'AdminPackagesController', 0, 0),
(17, '2017-03-06 23:22:25', NULL, 'Orders', 'fa fa-shopping-bag', 'orders', 'roopcom_new.orders', 'AdminOrdersController', 0, 0),
(18, '2017-03-07 09:00:43', NULL, 'Shipments', 'fa fa-ship', 'shipments', 'shipments', 'AdminShipmentsController', 0, 0),
(19, '2017-07-17 09:23:16', NULL, 'providers', 'fa fa-glass', 'providers', 'providers', 'AdminProvidersController', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`) VALUES
(1, '2017-03-06 22:08:00', NULL, 'Super Administrator', 1, 'skin-red'),
(2, NULL, NULL, 'Admin', 0, 'skin-red-light'),
(3, NULL, NULL, 'Personeel', 0, 'skin-green'),
(4, NULL, NULL, 'Magazijn', 0, 'skin-blue-light'),
(5, NULL, NULL, 'Manager', 0, 'skin-yellow');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, '2017-03-06 22:08:00', NULL, 1, 0, 0, 0, 0, 1, 1),
(2, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 2),
(3, '2017-03-06 22:08:00', NULL, 0, 1, 1, 1, 1, 1, 3),
(4, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 4),
(5, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 5),
(6, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 6),
(7, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 7),
(8, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 8),
(9, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 9),
(10, '2017-03-06 22:08:00', NULL, 1, 1, 1, 1, 1, 1, 10),
(11, '2017-03-06 22:08:00', NULL, 1, 0, 1, 0, 1, 1, 11),
(12, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(13, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(14, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(15, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(16, NULL, NULL, 1, 1, 1, 1, 1, 1, 16),
(17, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(18, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(32, NULL, NULL, 1, 1, 1, 1, 1, 1, 18),
(33, NULL, NULL, 1, 1, 1, 1, 1, 1, 18),
(40, NULL, NULL, 1, 1, 1, 1, 1, 2, 15),
(41, NULL, NULL, 1, 1, 1, 1, 1, 2, 13),
(42, NULL, NULL, 1, 1, 1, 1, 1, 2, 17),
(43, NULL, NULL, 1, 1, 1, 1, 1, 2, 16),
(44, NULL, NULL, 1, 1, 1, 1, 1, 2, 12),
(45, NULL, NULL, 1, 1, 1, 1, 1, 2, 18),
(46, NULL, NULL, 1, 1, 1, 1, 1, 2, 4),
(47, NULL, NULL, 1, 1, 1, 1, 1, 2, 14),
(65, NULL, NULL, 1, 1, 1, 1, 0, 3, 15),
(66, NULL, NULL, 1, 1, 0, 0, 0, 3, 13),
(67, NULL, NULL, 1, 1, 0, 0, 0, 3, 17),
(68, NULL, NULL, 1, 1, 1, 1, 0, 3, 16),
(69, NULL, NULL, 1, 0, 1, 0, 0, 3, 12),
(70, NULL, NULL, 1, 0, 0, 0, 0, 3, 18),
(71, NULL, NULL, 1, 1, 1, 1, 0, 5, 15),
(72, NULL, NULL, 1, 1, 1, 1, 0, 5, 13),
(73, NULL, NULL, 1, 1, 1, 1, 0, 5, 17),
(74, NULL, NULL, 1, 1, 1, 1, 0, 5, 16),
(75, NULL, NULL, 1, 1, 1, 1, 0, 5, 12),
(76, NULL, NULL, 1, 0, 0, 0, 0, 5, 18),
(77, NULL, NULL, 1, 1, 1, 1, 1, 4, 16),
(78, NULL, NULL, 1, 1, 1, 1, 1, 4, 18),
(79, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(80, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(81, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(82, NULL, NULL, 1, 1, 1, 1, 1, 2, 19);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `group_setting`, `label`) VALUES
(1, '2017-03-06 22:08:00', NULL, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Background Color'),
(2, '2017-03-06 22:08:00', NULL, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Font Color'),
(3, '2017-03-06 22:08:00', NULL, 'login_background_image', NULL, 'upload_image', NULL, NULL, 'Login Register Style', 'Login Background Image'),
(4, '2017-03-06 22:08:00', NULL, 'email_sender', 'support@roopcom.com', 'text', NULL, NULL, 'Email Setting', 'Email Sender'),
(5, '2017-03-06 22:08:00', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, 'Email Setting', 'Mail Driver'),
(6, '2017-03-06 22:08:00', NULL, 'smtp_host', NULL, 'text', NULL, NULL, 'Email Setting', 'SMTP Host'),
(7, '2017-03-06 22:08:00', NULL, 'smtp_port', '25', 'text', NULL, 'default 25', 'Email Setting', 'SMTP Port'),
(8, '2017-03-06 22:08:00', NULL, 'smtp_username', NULL, 'text', NULL, NULL, 'Email Setting', 'SMTP Username'),
(9, '2017-03-06 22:08:00', NULL, 'smtp_password', NULL, 'text', NULL, NULL, 'Email Setting', 'SMTP Password'),
(10, '2017-03-06 22:08:00', NULL, 'appname', 'Roopcom', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2017-03-06 22:08:00', NULL, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(12, '2017-03-06 22:08:00', NULL, 'logo', 'uploads/2017-03/fb585b7894cd19664194eea5591d608f.png', 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(13, '2017-03-06 22:08:00', NULL, 'favicon', NULL, 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(14, '2017-03-06 22:08:00', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(15, '2017-03-06 22:08:00', NULL, 'google_api_key', NULL, 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(16, '2017-03-06 22:08:00', NULL, 'google_fcm_key', NULL, 'text', NULL, NULL, 'Application Setting', 'Google FCM Key'),
(17, '2017-03-06 23:17:55', '2017-03-28 07:43:25', 'us_su_rate', '7.70', 'number', '', '', 'Shipping settings', '1 USD = ? SRD'),
(18, '2017-03-06 23:18:18', '2017-03-28 07:43:37', 'us_nl_rate', '1.19', 'number', '', '', 'Shipping settings', '1 USD = ? EUR'),
(19, '2017-03-07 16:55:39', NULL, 'general_settings', NULL, '', '', '', 'General Settings', 'General Settings'),
(20, '2017-03-28 07:15:05', '2017-03-28 07:15:31', 'usd_per_lbs_sea', '4.25', 'number', '', '', 'Shipping settings', 'USD Per LBS (Air)'),
(21, '2017-03-28 07:15:22', NULL, 'usd_per_inch_sea', '13.49', 'number', '', '', 'Shipping settings', 'USD per inch (Sea)'),
(22, '2017-03-28 07:15:48', NULL, 'usd_per_inch_eco', '0', 'number', '', '', 'Shipping settings', 'USD per inch (Eco)'),
(23, NULL, NULL, 'inhoud_content', 'Content1,content2,conten3,content4', 'textarea', NULL, NULL, 'Shipping Settings', 'Inhoud Content'),
(24, NULL, NULL, 'order_fee_percentage', '10', 'number', NULL, 'Order fee percentage. Ex: 10', 'Shipping Settings', '% for order fee'),
(27, NULL, NULL, 'order_fixed_fee', '0', 'number', NULL, 'order fixed fee (USD)', 'Shipping Settings', 'Order fixed fee(USD)');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard Admin', 'dashboard', '2017-03-06 23:25:15', '2017-03-07 12:54:52');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(2, 1, '2e0e9fb105beaead3ceda8020e94ca9f', 'table', 'area5', 0, NULL, '{\"name\":\"Meest recente scans\",\"sql\":\"select top 25\\r\\ntracking_number as [tracking code]\\r\\n, customer_id as klantcode\\r\\n,*\\r\\nfrom packages\"}', '2017-04-11 09:34:48', NULL),
(3, 1, 'd07f5ea39068a9ad10f8b225dac19d87', 'table', 'area5', 0, NULL, '{\"name\":\"Recent Packages\",\"sql\":\"SELECT `customer_id` as klantcode, concat(`first_name`,\' \', `last_name`) as Klant,`tracking_number` as `tracking code`,  case when IFNULL(`shipment_id`,0) = 0 then \'No\' else \'Yes\' end as `packed`, `created_at`, `updated_at` FROM `packages`\\r\\nWHERE WEEKOFYEAR(created_at) = WEEKOFYEAR(NOW())\"}', '2017-04-11 09:38:43', NULL),
(7, 1, '264ce1fddbeaa58e7b79b36e87f78300', 'smallbox', 'area4', 1, NULL, '{\"name\":\"Revenue (Monthly)\",\"icon\":\"ion-social-usd\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT SUM(total) as rev FROM `transactions` where created_at > DATE_FORMAT(NOW() ,\'%Y-%m-01\')\"}', '2017-04-20 14:17:24', NULL),
(8, 1, '1454a0af03ed9bb3a1b95c31d7c042a4', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Revenue (current week)\",\"icon\":\"ion-social-usd\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT IFNULL(SUM(`total`),0) as rev\\r\\nFROM `transactions`\\r\\nWHERE WEEKOFYEAR(created_at) = WEEKOFYEAR(NOW())\"}', '2017-04-24 07:42:34', NULL),
(9, 1, '9722db1782e21ea618abb8f162895a62', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Customers\",\"icon\":\"ion-person\",\"color\":\"bg-yellow\",\"link\":\"#\",\"sql\":\"select count(*) from customers\"}', '2017-04-24 07:52:13', NULL),
(10, 1, '1e771b39385f7f343d906ba4c213d7ad', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Packages (weekly)\",\"icon\":\"ion-archive\",\"color\":\"bg-aqua\",\"link\":\"#\",\"sql\":\"select count(*) from `packages` where weekofyear(created_at) = weekofyear(now())\"}', '2017-04-24 07:53:29', NULL),
(12, 1, '988fa54ae255fa1f966b886dd732d30d', 'chartline', 'area5', 1, NULL, '{\"name\":\"Packages\",\"sql\":\"select count(*) as `value`, weekofyear(created_at) as `label` \\r\\nfrom `packages`\\r\\ngroup by weekofyear(created_at)\",\"area_name\":\"Packages\",\"goals\":null}', '2017-04-24 07:55:24', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`) VALUES
(1, '2017-03-06 22:08:00', NULL, 'Super Admin', NULL, 'droopram@gmail.com', '$2y$10$DIfmF6I8KSCA1HK.kjAegOAn01TjauW/Abx2sc3tkgafwXTTwmbSm', 1, 'Active'),
(2, '2017-03-06 22:23:22', '2017-04-26 07:08:16', 'Admin', 'uploads/2017-03/a503fbbbbc1502fb5dd17933418939a5.jpg', 'admin@roopcom.com', '$2y$10$DIfmF6I8KSCA1HK.kjAegOAn01TjauW/Abx2sc3tkgafwXTTwmbSm', 1, NULL),
(3, '2017-03-06 23:41:46', '2017-09-13 18:29:45', 'Employee', 'uploads/2017-09/ixia.gif', 'employee@roopcom.com', '$2y$10$9.EUKc7QrZOnam3/uKGujO5EtubbxxtYGhgk9VyJ2BEVMifWaBti6', 3, NULL),
(8, '2017-04-26 07:09:08', '2017-10-27 22:59:03', 'Vijay Roopram', 'uploads/2017-10/employeesicon200.jpg', 'Roopramvijay@gmail.com', '$2y$10$hhT.3htGBiG889T5to2uten0XWzMUF4.1cEtVIFcLHKLwSScKHydO', 2, NULL),
(9, '2017-04-26 07:12:26', '2018-06-06 19:40:29', 'Kelly Wong', NULL, 'wongbegonia77@gmail.com', '$2y$10$oOvnJaOV26Cvph5GKhpDtupZiPatCLme8BDwAlr6SclzEYnzqLlie', 3, NULL),
(10, '2017-05-12 00:15:39', '2019-04-01 05:33:16', 'magazijn', 'uploads/2019-03/logo-roopcom200x200.jpg', 'magazijn@roopcom.com', '$2y$10$7pVirPdGj/gISCLTg1K3juhvcPOtCQ0B/rQ0RUMx6Rrxp6ClfgCzq', 4, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sub_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_decimals` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_3166_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `region_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT 0,
  `calling_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `countries`
--

INSERT INTO `countries` (`id`, `capital`, `citizenship`, `country_code`, `currency`, `currency_code`, `currency_sub_unit`, `currency_symbol`, `currency_decimals`, `full_name`, `iso_3166_2`, `iso_3166_3`, `name`, `region_code`, `sub_region_code`, `eea`, `calling_code`, `flag`) VALUES
(4, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', '؋', 2, 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0, '93', 'AF.png'),
(8, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Lek', 2, 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0, '355', 'AL.png'),
(10, 'Antartica', 'of Antartica', '010', '', '', '', '', 2, 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0, '672', 'AQ.png'),
(12, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'DZD', 2, 'People’s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0, '213', 'DZ.png'),
(16, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', '$', 2, 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0, '1', 'AS.png'),
(20, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', '€', 2, 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0, '376', 'AD.png'),
(24, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'cêntimo', 'Kz', 2, 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0, '244', 'AO.png'),
(28, 'St John’s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0, '1', 'AG.png'),
(31, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', 'ман', 2, 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0, '994', 'AZ.png'),
(32, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', '$', 2, 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0, '54', 'AR.png'),
(36, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0, '61', 'AU.png'),
(40, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', '€', 2, 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1, '43', 'AT.png'),
(44, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', '$', 2, 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0, '1', 'BS.png'),
(48, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'BHD', 3, 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0, '973', 'BH.png'),
(50, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'BDT', 2, 'People’s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0, '880', 'BD.png'),
(51, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'AMD', 2, 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0, '374', 'AM.png'),
(52, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', '$', 2, 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0, '1', 'BB.png'),
(56, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', '€', 2, 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1, '32', 'BE.png'),
(60, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', '$', 2, 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0, '1', 'BM.png'),
(64, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'BTN', 2, 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0, '975', 'BT.png'),
(68, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', '$b', 2, 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0, '591', 'BO.png'),
(70, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'KM', 2, 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0, '387', 'BA.png'),
(72, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'P', 2, 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0, '267', 'BW.png'),
(74, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'kr', 2, 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0, '47', 'BV.png'),
(76, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'R$', 2, 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0, '55', 'BR.png'),
(84, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'BZ$', 2, 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0, '501', 'BZ.png'),
(86, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', '$', 2, 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0, '246', 'IO.png'),
(90, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', '$', 2, 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0, '677', 'SB.png'),
(92, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', '$', 2, 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0, '1', 'VG.png'),
(96, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', '$', 2, 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0, '673', 'BN.png'),
(100, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', 'лв', 2, 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1, '359', 'BG.png'),
(104, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'K', 2, 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0, '95', 'MM.png'),
(108, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'BIF', 0, 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0, '257', 'BI.png'),
(112, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'p.', 2, 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0, '375', 'BY.png'),
(116, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', '៛', 2, 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0, '855', 'KH.png'),
(120, 'Yaoundé', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0, '237', 'CM.png'),
(124, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', '$', 2, 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0, '1', 'CA.png'),
(132, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'CVE', 2, 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0, '238', 'CV.png'),
(136, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', '$', 2, 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0, '1', 'KY.png'),
(140, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'CFA', 0, 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0, '236', 'CF.png'),
(144, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', '₨', 2, 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0, '94', 'LK.png'),
(148, 'N’Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'XAF', 0, 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0, '235', 'TD.png'),
(152, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'CLP', 0, 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0, '56', 'CL.png'),
(156, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', '¥', 2, 'People’s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0, '86', 'CN.png'),
(158, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'NT$', 2, 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0, '886', 'TW.png'),
(162, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0, '61', 'CX.png'),
(166, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', '$', 2, 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0, '61', 'CC.png'),
(170, 'Santa Fe de Bogotá', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', '$', 2, 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0, '57', 'CO.png'),
(174, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'KMF', 0, 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0, '269', 'KM.png'),
(175, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', '€', 2, 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0, '262', 'YT.png'),
(178, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 0, 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0, '242', 'CG.png'),
(180, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'CDF', 2, 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0, '243', 'CD.png'),
(184, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', '$', 2, 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0, '682', 'CK.png'),
(188, 'San José', 'Costa Rican', '188', 'Costa Rican colón (pl. colones)', 'CRC', 'céntimo', '₡', 2, 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0, '506', 'CR.png'),
(191, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'kn', 2, 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1, '385', 'HR.png'),
(192, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', '₱', 2, 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0, '53', 'CU.png'),
(196, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'CYP', 2, 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1, '357', 'CY.png'),
(203, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'halér', 'Kč', 2, 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1, '420', 'CZ.png'),
(204, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'XOF', 0, 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0, '229', 'BJ.png'),
(208, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', 'øre (inv.)', 'kr', 2, 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1, '45', 'DK.png'),
(212, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', '$', 2, 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0, '1', 'DM.png'),
(214, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'RD$', 2, 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0, '1', 'DO.png'),
(218, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', '$', 2, 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0, '593', 'EC.png'),
(222, 'San Salvador', 'Salvadoran', '222', 'Salvadorian colón (pl. colones)', 'SVC', 'centavo', '$', 2, 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0, '503', 'SV.png'),
(226, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'FCF', 2, 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0, '240', 'GQ.png'),
(231, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'ETB', 2, 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0, '251', 'ET.png'),
(232, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'Nfk', 2, 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0, '291', 'ER.png'),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'SR',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `photo`, `email`, `first_name`, `last_name`, `address`, `city`, `phone`, `country`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(24, NULL, '', 'artkotradingnv@hotmail.com', 'Yeung', 'Lai', 'Latour', 'Paramaribo', '', 'SR', '$2y$10$oZ6RLDJj38JSY.fcJSW/6uT/RSVuLogL7pZnjl.ul3bFNh7WJ2a6a', '7RRSDW4CqeT6KU6CDXjGOBRTZex7CJXJznYmjWMmljGgy1xkzotgD6jHGe2Z', '2017-04-17 08:39:53', '2019-01-23 23:28:50'),
(25, '', '', 'priyasha8@live.com', 'Priya', 'Soekra', 'Rojme straat no. 03', 'Paramaribo', '8761795', 'SR', '$2y$10$bufe6aq1Q7WKKMc0OtYaae9QOJgal9hIIzdrVgY00/MKDbMEXbley', NULL, '2017-04-17 08:40:58', '2019-04-26 19:39:26'),
(26, NULL, '', 'zeng-kg@yahoo.com', 'Kakeung', 'Zeng', 'Molenpad no103', 'Paramaribo', '8285156', 'SR', NULL, NULL, '2017-04-17 08:44:44', '2019-01-23 23:27:10'),
(27, NULL, '', 'gajadin.viraj@gmail.com', 'Viraj', 'Gajadin', 'Leysweg no 85', 'Paramaribo', '8650571', 'SR', '$2y$10$mJxMdwRD9ujIFDFXxuZJyOwfkD.LrGL/.Pp5wSzI8xWbDLH/Ja.T2', NULL, '2017-04-17 08:48:32', '2019-01-23 22:40:08'),
(28, NULL, '', 'wongbegonia77@gmail.com', 'Kelly', 'Wong', 'kernkampweg48', 'Paramaribo', '8779997', 'SR', '$2y$10$SioKL1b94yceGPdVFFKF3.MZbBDUgoNWR4UoDqulJWsxwxTLekBTC', 'q6N00Cv6SWqU79OTa4uWlPoh8cJAdcJYvnLrXYCbNYOneMDvWDRSiE9fT0wd', '2017-04-17 08:55:49', '2019-01-23 23:25:53'),
(29, NULL, NULL, '', 'Vishal', 'Naipal', '', '', '', '', NULL, NULL, '2017-04-17 08:58:40', '2019-03-11 23:33:28'),
(30, NULL, '', 'mrs.mystery0207@hotmail.com', 'Jenny', 'Deng Lau', 'Kernkampweg no 24', 'Paramaribo', '8733218', 'SR', NULL, NULL, '2017-04-17 09:02:08', '2019-04-26 19:56:03'),
(31, NULL, '', 'cerenety_kartodimedjo@hotmail.com', 'Margarita', 'Kartodimedjo', 'Leiding11a', 'Paramaribo', '8918513', 'SR', NULL, NULL, '2017-04-17 09:04:15', '2017-04-17 09:04:15'),
(32, NULL, '', 'shimportss@gmail.com', 'Sybrano', 'Harris', 'benjamin no 65', 'Paramaribo', '8293051', 'SR', '$2y$10$.ux6Deaw5ABfxFh0N1UiK.7TIC8NbPLGsbKLKwAgVm.IfZ/mU0oDW', 'RzGiuBZbdoWG17OxqGpj7h6GStw86paCrWJqH3ZG2v30OoUbL4nKdS8KvbB1', '2017-04-17 09:09:40', '2019-01-23 22:27:34'),
(33, NULL, '', 'coolsteven-88@hotmail.com', 'Steven', 'Wong', 'kernkampweg44', 'Paramaribo', '8929479', 'SR', '$2y$10$VMbc52E9FyAXFWbtmXM8eOCnOgbPgMzS953.hpwyg1oJTnaihCjJG', NULL, '2017-04-17 09:12:29', '2019-01-23 23:24:43'),
(34, NULL, NULL, NULL, 'Geeta', 'Jairam', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-17 09:13:35', '2017-04-17 09:13:35'),
(35, NULL, '', 'platmilton@hotmail.com', 'Milton', 'Ritfeld', 'aquariusstraat #70', 'Paramaribo', '863900', 'SR', '$2y$10$7a4YhaR5PDLPybJJI7dh9ORvWo3Px8cnZq06smPcb1Mpu4Ytzl4iG', NULL, '2017-04-17 09:17:25', '2019-01-23 21:21:23'),
(36, NULL, '', 'soebhanr@gmail.com', 'Raihaan', 'Soebhan', 'Soebhanweg 07', 'Paramaribo', '+5978988786', 'SR', '$2y$10$3wn5/N19gbiL4pQiEs0j9.wuWkMoFUd68vlEzSAoWIpuCe.b7CMXq', NULL, '2017-04-17 09:19:40', '2019-01-28 20:32:46'),
(37, NULL, '', 'stevenjim2002@yahoo.com', 'Steven', 'Lo Fo Sang', 'E.Bouterse straat no 29', 'Paramaribo', '+5978536774', 'SR', NULL, NULL, '2017-04-18 08:56:48', '2019-04-27 17:48:47'),
(38, NULL, '', 'shalina30@hotmail.com', 'Wahida', 'Dedters', 'vergeet mij nietstraat 8', 'Paramaribo', '08545536', 'SR', NULL, NULL, '2017-04-19 19:48:13', '2017-04-19 19:48:13'),
(39, NULL, '', 'oscarpuiot@gmail.com', 'Oscar', 'Puiot', 'nieuweweg', 'Paramaribo', '8856993', 'SR', NULL, NULL, '2017-04-19 19:49:56', '2017-04-19 19:49:56'),
(40, NULL, NULL, NULL, 'Ket', 'Lai', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-19 19:51:53', '2017-04-19 19:51:53'),
(41, NULL, '', 'tluikonjean@outlook.com', 'Timothy', 'Lui Kon Jean', 'Koningstraat', 'Suriname', '8859000', 'SR', '$2y$10$u2FogVnvrzm7OOmOrdPup.FDGSw0Peg0tScm4KoY/wYZpPBs.HL0W', NULL, '2017-04-19 23:34:09', '2019-01-23 22:33:53'),
(43, NULL, '', 'partyzichem@hotmail.com', 'Parthenia', 'Van Zichem', 'djankakondrestraat 4', 'paramaribo', '8614687', 'SR', NULL, NULL, '2017-04-19 23:35:18', '2017-04-19 23:35:18'),
(44, NULL, NULL, NULL, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-20 18:35:40', '2017-04-20 18:35:40'),
(45, NULL, '', 'rudyjlie@gmail.com', 'Rudolf', 'Lie', 'Kanastraat 9', 'Suriname', '8582070', 'SR', '$2y$10$0R1dGSVvcn7DtkO5AIje9.RLz3sauWuYqVXfP4iw5NtYCDiHhPjxm', NULL, '2017-04-21 00:16:57', '2019-01-28 20:50:43'),
(46, NULL, '', 'roopramvijay@gmail.com', 'Vijay', 'Roopram', 'Kernkampweg 48', 'Paramaribo', '+5978626260', 'SR', '$2y$10$VdQ92ovJzgl7JvKsViZ5Gu9b0Bb/oVY7vzVpdM4J7gaWW4ZFq7DlW', 'DTxiPBJkHxvKZvoDPMVEHp8FH0Ply5NWG4IaBP9gm4yL0QqTkOPNysdD0jTf', '2017-04-24 07:46:54', '2019-01-23 23:22:51'),
(47, NULL, NULL, '', 'Vanessa', 'Silent', '', '', '8610027', '', NULL, NULL, '2017-04-26 21:30:26', '2019-04-26 19:49:05'),
(48, NULL, '', 'surayajaipal@gmail.com', 'Suzan', 'Jaipal', 'botromankiweg 79', 'paramaribo', '8585906', 'SR', '$2y$10$EI/W5eE1Z.yjn1UM5iN4mef/2Dx4ITSyJGG//fDSUWXzJU6cBPo4e', NULL, '2017-04-26 21:31:45', '2019-01-23 23:17:14'),
(49, NULL, NULL, NULL, 'Ignacio', 'Pcaydar', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-26 21:32:51', '2017-04-26 21:32:51'),
(50, NULL, NULL, NULL, 'Cheryl', 'Ashraf', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-26 21:33:18', '2017-04-26 21:33:18'),
(51, NULL, NULL, NULL, 'onki', 'afouhouye', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-27 22:01:35', '2017-04-27 22:01:35'),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `giftcards`
--

CREATE TABLE `giftcards` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(10,2) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','paid','delivered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider_id` int(11) NOT NULL,
  `paid_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `giftcards`
--

INSERT INTO `giftcards` (`id`, `photo`, `value`, `cost`, `code`, `status`, `customer_id`, `created_at`, `updated_at`, `provider_id`, `paid_date`) VALUES
(11, NULL, 97.09, 100.00, '0', 'delivered', 156, '2017-08-16 13:27:06', '2017-08-16 13:27:06', 2, '2017-08-16'),
(12, NULL, 135.00, 139.05, '0', 'delivered', 188, '2017-08-17 13:14:20', '2017-08-17 13:14:20', 2, '2017-08-17'),
(13, NULL, 205.00, 211.15, '0', 'delivered', 192, '2017-08-18 16:08:43', '2017-08-18 16:08:43', 2, '2017-08-18'),
(14, NULL, 75.79, 78.06, '0', 'delivered', 32, '2017-08-18 19:57:22', '2017-08-18 19:57:22', 2, '2017-08-18'),
(15, NULL, 97.00, 99.91, '0', 'delivered', 188, '2017-08-19 14:59:02', '2017-08-19 14:59:02', 2, '2017-08-19'),
(16, NULL, 33.00, 33.99, '0', 'delivered', 32, '2017-08-21 15:29:47', '2017-08-21 15:29:47', 2, '2017-08-21'),
(17, NULL, 33.00, 33.99, '0', 'delivered', 32, '2017-08-21 16:12:48', '2017-08-21 16:12:48', 2, '2017-08-21'),
(22, NULL, 500.00, 515.00, '0', 'delivered', 93, '2017-08-31 21:22:48', '2017-08-31 21:22:48', 1, '2017-08-31'),
(23, NULL, 15.10, 15.55, '0', 'delivered', 32, '2017-09-02 17:13:24', '2017-09-02 17:13:24', 1, '2017-09-02'),
(24, NULL, 78.00, 80.34, '0', 'delivered', 109, '2017-09-04 17:49:16', '2017-09-04 17:49:16', 1, '2017-09-04'),
(25, NULL, 216.10, 222.58, '0', 'delivered', 250, '2017-09-05 18:31:58', '2017-09-05 18:31:58', 1, '2017-09-05'),
(26, NULL, 100.00, 103.00, '0', 'delivered', 41, '2017-09-05 18:42:49', '2017-09-05 18:42:49', 1, '2017-09-05'),
(27, NULL, 106.70, 109.90, '0', 'delivered', 126, '2017-09-06 21:46:22', '2017-09-06 21:46:22', 1, '2017-09-06'),
(28, NULL, 110.00, 113.30, '0', 'delivered', 83, '2017-09-06 21:47:19', '2017-09-06 21:47:19', 1, '2017-09-06'),
(29, NULL, 200.00, 206.00, '0', 'delivered', 71, '2017-09-06 23:59:44', '2017-09-06 23:59:44', 1, '2017-09-06'),
(31, NULL, 100.00, 103.00, '0', 'delivered', 54, '2017-09-07 03:53:12', '2017-09-07 03:53:12', 1, '2017-09-06'),
(32, NULL, 200.19, 206.20, '0', 'delivered', 93, '2017-09-07 21:46:38', '2017-09-07 21:46:38', 1, '2017-09-07'),
(33, NULL, 200.00, 206.00, '0', 'delivered', 124, '2017-09-07 23:00:23', '2017-09-07 23:00:23', 1, '2017-09-07'),
(34, NULL, 27.75, 28.58, '0', 'delivered', 149, '2017-09-08 02:04:10', '2017-09-08 02:04:10', 1, '2017-09-07'),
(35, NULL, 101.04, 104.07, '0', 'delivered', 162, '2017-09-08 02:27:24', '2017-09-08 02:27:24', 1, '2017-09-07'),
(36, NULL, 94.72, 97.56, NULL, 'delivered', 126, '2017-09-11 18:22:27', '2017-09-11 18:22:27', 1, '2017-09-11'),
(37, NULL, 150.00, 154.50, '0', 'delivered', 83, '2017-09-11 21:22:40', '2017-09-11 21:22:40', 1, '2017-09-11'),
(38, NULL, 97.00, 99.91, '0', 'delivered', 41, '2017-09-12 18:32:46', '2017-09-12 18:32:46', 1, '2017-09-12'),
(40, NULL, 194.18, 200.01, '0', 'delivered', 88, '2017-09-12 18:47:46', '2017-09-12 18:47:46', 1, '2017-09-12'),
(41, NULL, 50.00, 51.50, NULL, 'delivered', 254, '2017-09-12 18:48:44', '2017-09-12 18:48:44', 1, '2017-09-12'),
(42, NULL, 250.33, 257.84, NULL, 'delivered', 32, '2017-09-12 18:49:33', '2017-09-12 18:49:33', 1, '2017-09-12'),
(45, NULL, 70.00, 72.10, NULL, 'delivered', 253, '2017-09-12 19:00:22', '2017-09-12 19:00:22', 1, '2017-09-12'),
(47, NULL, 140.77, 144.99, NULL, 'delivered', 54, '2017-09-13 23:10:54', '2017-09-13 23:10:54', 1, '2017-09-13'),
(48, NULL, 30.10, 31.00, NULL, 'delivered', 32, '2017-09-14 19:46:19', '2017-09-14 19:46:19', 1, '2017-09-14'),
(49, NULL, 300.00, 309.00, '0', 'delivered', 162, '2017-09-14 22:21:34', '2017-09-14 22:21:34', 1, '2017-09-14'),
(50, NULL, 13.26, 13.66, NULL, 'delivered', 32, '2017-09-16 00:54:26', '2017-09-16 00:54:26', 1, '2017-09-15'),
(51, NULL, 97.25, 100.17, NULL, 'delivered', 32, '2017-09-18 20:59:03', '2017-09-18 20:59:03', 1, '2017-09-18'),
(52, NULL, 200.00, 206.00, NULL, 'delivered', 156, '2017-09-19 17:09:03', '2017-09-19 17:09:03', 1, '2017-09-19'),
(53, NULL, 380.00, 391.40, NULL, 'delivered', 54, '2017-09-20 20:00:47', '2017-09-20 20:00:47', 1, '2017-09-20'),
(54, NULL, 9.70, 9.99, NULL, 'delivered', 71, '2017-09-21 00:38:43', '2017-09-21 00:38:43', 1, '2017-09-20'),
(55, NULL, 291.26, 300.00, '0', 'delivered', 152, '2017-09-22 01:00:33', '2017-09-22 01:00:33', 1, '2017-09-21'),
(56, NULL, 100.00, 103.00, NULL, 'delivered', 55, '2017-09-22 22:37:11', '2017-09-22 22:37:11', 1, '2017-09-22'),
(57, NULL, 180.00, 185.40, '0', 'delivered', 162, '2017-09-23 20:31:22', '2017-09-23 20:31:22', 1, '2017-09-23'),
(58, NULL, 340.78, 351.00, NULL, 'delivered', 70, '2017-09-26 01:01:24', '2017-09-26 01:01:24', 1, '2017-09-25'),
(59, NULL, 900.00, 927.00, NULL, 'delivered', 54, '2017-09-26 20:01:28', '2017-09-26 20:01:28', 1, '2017-09-26'),
(60, NULL, 500.00, 515.00, NULL, 'delivered', 54, '2017-09-27 19:32:33', '2017-09-27 19:32:33', 1, '2017-09-27'),
(61, NULL, 44.09, 45.41, '0', 'delivered', 32, '2017-09-30 00:19:11', '2017-09-30 00:19:11', 1, '2017-09-30'),
(62, NULL, 48.50, 49.95, '0', 'delivered', 162, '2017-09-30 00:20:07', '2017-09-30 00:20:07', 1, '2017-09-29'),
(63, NULL, 70.00, 72.10, NULL, 'delivered', 55, '2017-10-02 19:59:10', '2017-10-02 19:59:10', 1, '2017-10-02'),
(64, NULL, 32.16, 33.12, NULL, 'delivered', 32, '2017-10-03 01:02:21', '2017-10-03 01:02:21', 1, '2017-10-02'),
(65, NULL, 100.00, 103.00, NULL, 'delivered', 162, '2017-10-03 01:45:36', '2017-10-03 01:45:36', 1, '2017-10-02'),
(66, NULL, 1600.00, 1648.00, NULL, 'delivered', 54, '2017-10-03 01:46:40', '2017-10-03 01:46:40', 1, '2017-10-02'),
(67, NULL, 40.00, 41.20, '0', 'delivered', 164, '2017-10-03 17:19:41', '2017-10-03 17:19:41', 1, '2017-10-03'),
(68, NULL, 65.00, 66.95, NULL, 'delivered', 149, '2017-10-03 19:44:38', '2017-10-03 19:44:38', 1, '2017-10-03'),
(69, NULL, 200.00, 206.00, '0', 'delivered', 54, '2017-10-04 00:30:49', '2017-10-04 00:30:49', 1, '2017-10-03'),
(70, NULL, 50.00, 51.50, NULL, 'delivered', 262, '2017-10-05 01:46:32', '2017-10-05 01:46:32', 1, '2017-10-04'),
(71, NULL, 88.70, 91.36, NULL, 'delivered', 32, '2017-10-05 17:53:46', '2017-10-05 17:53:46', 1, '2017-10-05'),
(72, NULL, 29.13, 30.00, NULL, 'delivered', 71, '2017-10-05 21:48:41', '2017-10-05 21:48:41', 1, '2017-10-05'),
(73, NULL, 86.59, 89.19, NULL, 'delivered', 32, '2017-10-07 21:23:34', '2017-10-07 21:23:34', 1, '2017-10-07'),
(74, NULL, 65.00, 66.95, NULL, 'delivered', 64, '2017-10-09 23:44:19', '2017-10-09 23:44:19', 1, '2017-10-09'),
(75, NULL, 100.00, 103.00, NULL, 'delivered', 83, '2017-10-11 05:14:15', '2017-10-11 05:14:15', 1, '2017-10-11'),
(76, NULL, 90.00, 92.70, NULL, 'delivered', 75, '2017-10-11 18:24:53', '2017-10-11 18:24:53', 1, '2017-10-11'),
(77, NULL, 55.00, 56.65, NULL, 'delivered', 126, '2017-10-11 19:14:54', '2017-10-11 19:14:54', 1, '2017-10-11'),
(78, NULL, 1000.00, 1030.00, NULL, 'delivered', 54, '2017-10-11 19:41:39', '2017-10-11 19:41:39', 1, '2017-10-11'),
(79, NULL, 29.13, 30.00, NULL, 'delivered', 71, '2017-10-13 02:04:59', '2017-10-13 02:04:59', 1, '2017-10-12'),
(80, NULL, 27.45, 28.27, NULL, 'delivered', 71, '2017-10-13 02:09:56', '2017-10-13 02:09:56', 1, '2017-10-12'),
(81, NULL, 24.42, 25.15, NULL, 'delivered', 164, '2017-10-13 18:39:57', '2017-10-13 18:39:57', 1, '2017-10-13'),
(82, NULL, 360.00, 370.80, NULL, 'delivered', 83, '2017-10-14 00:04:24', '2017-10-14 00:04:24', 1, '2017-10-13'),
(83, NULL, 100.00, 103.00, NULL, 'delivered', 281, '2017-10-14 19:04:48', '2017-10-14 19:04:48', 1, '2017-10-14'),
(84, NULL, 20.00, 20.60, NULL, 'delivered', 164, '2017-10-16 16:43:32', '2017-10-16 16:43:32', 1, '2017-10-16'),
(85, NULL, 115.00, 118.45, NULL, 'delivered', 71, '2017-10-16 22:42:27', '2017-10-16 22:42:27', 1, '2017-10-16'),
(86, NULL, 150.00, 154.50, NULL, 'delivered', 54, '2017-10-17 00:48:17', '2017-10-17 00:48:17', 1, '2017-10-16'),
(89, NULL, 54.17, 55.80, '0', 'delivered', 32, '2017-10-17 21:04:57', '2017-10-17 21:04:57', 1, '2017-10-17'),
(91, NULL, 36.36, 40.00, 'royalty.ashina@gmail.com', 'delivered', 55, '2017-10-18 20:25:44', '2017-10-18 20:25:44', 4, '2017-10-18'),
(92, NULL, 303.61, 312.72, NULL, 'delivered', 162, '2017-10-19 02:12:02', '2017-10-19 02:12:02', 1, '2017-10-18'),
(93, NULL, 116.50, 120.00, NULL, 'delivered', 55, '2017-10-19 03:42:57', '2017-10-19 03:42:57', 1, '2017-10-18'),
(94, NULL, 1300.00, 1339.00, NULL, 'delivered', 54, '2017-10-20 18:58:31', '2017-10-20 18:58:31', 1, '2017-10-20'),
(95, NULL, 100.00, 103.00, NULL, 'delivered', 54, '2017-10-21 20:13:50', '2017-10-21 20:13:50', 1, '2017-10-21'),
(96, NULL, 60.00, 61.80, NULL, 'delivered', 71, '2017-10-23 23:08:45', '2017-10-23 23:08:45', 1, '2017-10-23'),
(97, NULL, 100.00, 103.00, NULL, 'delivered', 162, '2017-10-23 23:09:24', '2017-10-23 23:09:24', 1, '2017-10-23'),
(98, NULL, 29.60, 30.49, '0', 'delivered', 32, '2017-10-24 19:31:18', '2017-10-24 19:31:18', 1, '2017-10-24'),
(99, NULL, 250.00, 257.50, NULL, 'delivered', 124, '2017-10-24 23:55:06', '2017-10-24 23:55:06', 1, '2017-10-24'),
(100, NULL, 100.00, 103.00, NULL, 'delivered', 83, '2017-10-26 01:53:05', '2017-10-26 01:53:05', 1, '2017-10-25'),
(101, NULL, 800.00, 824.00, NULL, 'delivered', 54, '2017-10-26 02:25:39', '2017-10-26 02:25:39', 1, '2017-10-25'),
(102, NULL, 20.00, 20.60, NULL, 'delivered', 109, '2017-10-26 18:03:58', '2017-10-26 18:03:58', 1, '2017-10-26'),
(103, NULL, 24.27, 25.00, NULL, 'delivered', 71, '2017-10-26 22:42:32', '2017-10-26 22:42:32', 1, '2017-10-26'),
(104, NULL, 34.00, 35.02, NULL, 'delivered', 32, '2017-10-27 20:33:32', '2017-10-27 20:33:32', 1, '2017-10-27'),
(105, NULL, 30.00, 30.90, NULL, 'delivered', 55, '2017-10-27 21:58:10', '2017-10-27 21:58:10', 1, '2017-10-27'),
(106, NULL, 80.00, 82.40, NULL, 'delivered', 83, '2017-10-28 01:45:02', '2017-10-28 01:45:02', 1, '2017-10-27'),
(107, NULL, 100.00, 103.00, NULL, 'delivered', 286, '2017-10-28 21:27:06', '2017-10-28 21:27:06', 1, '2017-10-28'),
(108, NULL, 69.84, 71.94, '0', 'delivered', 55, '2017-10-28 23:25:20', '2017-10-28 23:25:20', 1, '2017-10-28'),
(109, NULL, 55.38, 57.04, NULL, 'delivered', 32, '2017-10-30 19:52:48', '2017-10-30 19:52:48', 1, '2017-10-30'),
(110, NULL, 29.13, 30.00, NULL, 'delivered', 41, '2017-10-30 20:53:40', '2017-10-30 20:53:40', 1, '2017-10-30'),
(111, NULL, 60.00, 61.80, '0', 'delivered', 162, '2017-10-31 01:02:08', '2017-10-31 01:02:08', 1, '2017-10-30'),
(112, NULL, 100.00, 103.00, NULL, 'delivered', 54, '2017-10-31 07:11:32', '2017-10-31 07:11:32', 1, '2017-10-31'),
(113, NULL, 20.00, 20.60, NULL, 'delivered', 165, '2017-10-31 19:43:38', '2017-10-31 19:43:38', 1, '2017-10-31'),
(114, NULL, 130.00, 133.90, NULL, 'delivered', 297, '2017-10-31 20:19:49', '2017-10-31 20:19:49', 1, '2017-10-31'),
(115, NULL, 18.90, 19.47, NULL, 'delivered', 32, '2017-10-31 20:32:47', '2017-10-31 20:32:47', 1, '2017-10-31'),
(116, NULL, 50.00, 51.50, NULL, 'delivered', 83, '2017-11-01 00:47:44', '2017-11-01 00:47:44', 1, '2017-10-31'),
(117, NULL, 70.00, 72.10, NULL, 'delivered', 71, '2017-11-02 02:20:54', '2017-11-02 02:20:54', 1, '2017-11-01'),
(118, NULL, 33.98, 35.00, NULL, 'delivered', 149, '2017-11-02 22:28:51', '2017-11-02 22:28:51', 1, '2017-11-02'),
(119, NULL, 63.61, 65.52, NULL, 'delivered', 32, '2017-11-03 01:05:52', '2017-11-03 01:05:52', 1, '2017-11-02'),
(120, NULL, 147.44, 151.86, NULL, 'delivered', 188, '2017-11-03 18:13:58', '2017-11-03 18:13:58', 1, '2017-11-03'),
(121, NULL, 60.00, 66.00, 'faried1990su@hotmail.com', 'delivered', 304, '2017-11-03 20:03:51', '2017-11-03 20:03:51', 4, '2017-11-03'),
(122, NULL, 250.00, 257.50, NULL, 'delivered', 83, '2017-11-03 21:43:14', '2017-11-03 21:43:14', 1, '2017-11-03'),
(123, NULL, 55.00, 56.65, NULL, 'delivered', 83, '2017-11-04 19:07:27', '2017-11-04 19:07:27', 1, '2017-11-04'),
(124, NULL, 60.00, 61.80, NULL, 'delivered', 162, '2017-11-04 19:24:24', '2017-11-04 19:24:24', 1, '2017-11-04'),
(125, NULL, 64.67, 66.61, NULL, 'delivered', 64, '2017-11-04 23:41:13', '2017-11-04 23:41:13', 1, '2017-11-04'),
(126, NULL, 35.31, 36.37, NULL, 'delivered', 32, '2017-11-06 21:47:28', '2017-11-06 21:47:28', 1, '2017-11-06'),
(127, NULL, 50.00, 55.00, 'rama02@live.com', 'delivered', 306, '2017-11-06 21:47:54', '2017-11-06 21:47:54', 4, '2017-11-06'),
(128, NULL, 40.00, 41.20, NULL, 'delivered', 310, '2017-11-07 21:44:17', '2017-11-07 21:44:17', 1, '2017-11-07'),
(129, NULL, 48.50, 49.95, NULL, 'delivered', 309, '2017-11-07 21:56:23', '2017-11-07 21:56:23', 1, '2017-11-07'),
(130, NULL, 22.50, 24.75, NULL, 'delivered', 309, '2017-11-07 21:56:55', '2017-11-07 21:56:55', 4, '2017-11-07'),
(131, NULL, 603.39, 621.49, NULL, 'delivered', 162, '2017-11-09 01:31:12', '2017-11-09 01:31:12', 1, '2017-11-08'),
(132, NULL, 220.00, 226.60, '6PM.com Giftcard ****', 'delivered', 313, '2017-11-10 00:28:02', '2017-11-10 00:28:02', 1, '2017-11-09'),
(133, NULL, 63.05, 64.94, NULL, 'delivered', 55, '2017-11-10 00:29:30', '2017-11-10 00:29:30', 1, '2017-11-09'),
(134, NULL, 18.00, 19.80, 'royalty.ashina@gmail.com', 'delivered', 55, '2017-11-10 00:30:10', '2017-11-10 00:30:10', 4, '2017-11-09'),
(135, NULL, 76.37, 78.66, NULL, 'delivered', 172, '2017-11-10 00:31:10', '2017-11-10 00:31:10', 1, '2017-11-09'),
(136, NULL, 100.00, 103.00, '0', 'delivered', 162, '2017-11-10 00:51:39', '2017-11-10 00:51:39', 1, '2017-11-09'),
(137, NULL, 466.02, 480.00, NULL, 'delivered', 71, '2017-11-10 01:55:41', '2017-11-10 01:55:41', 1, '2017-11-09'),
(138, NULL, 100.00, 103.00, NULL, 'delivered', 254, '2017-11-11 00:44:32', '2017-11-11 00:44:32', 1, '2017-11-10'),
(139, NULL, 50.00, 51.50, NULL, 'delivered', 286, '2017-11-11 02:07:29', '2017-11-11 02:07:29', 1, '2017-11-10'),
(140, NULL, 36.53, 37.63, NULL, 'delivered', 32, '2017-11-12 02:48:57', '2017-11-12 02:48:57', 1, '2017-11-11'),
(141, NULL, 76.00, 78.28, '0', 'delivered', 75, '2017-11-13 18:11:54', '2017-11-13 18:11:54', 1, '2017-11-13'),
(142, NULL, 200.00, 206.00, NULL, 'delivered', 54, '2017-11-14 01:17:02', '2017-11-14 01:17:02', 1, '2017-11-13'),
(143, NULL, 28.93, 29.80, NULL, 'delivered', 32, '2017-11-14 21:54:35', '2017-11-14 21:54:35', 1, '2017-11-14'),
(144, NULL, 14.56, 15.00, NULL, 'delivered', 32, '2017-11-15 21:52:18', '2017-11-15 21:52:18', 1, '2017-11-15'),
(145, NULL, 400.00, 412.00, NULL, 'delivered', 54, '2017-11-16 21:31:35', '2017-11-16 21:31:35', 1, '2017-11-16'),
(146, NULL, 100.00, 103.00, NULL, 'delivered', 55, '2017-11-17 00:06:07', '2017-11-17 00:06:07', 1, '2017-11-16'),
(147, NULL, 251.95, 259.51, NULL, 'delivered', 162, '2017-11-17 02:15:35', '2017-11-17 02:15:35', 1, '2017-11-16'),
(148, NULL, 200.00, 206.00, NULL, 'delivered', 54, '2017-11-17 05:00:54', '2017-11-17 05:00:54', 1, '2017-11-17'),
(149, NULL, 40.00, 41.20, NULL, 'delivered', 165, '2017-11-18 23:45:00', '2017-11-18 23:45:00', 1, '2017-11-18'),
(150, NULL, 200.00, 206.00, NULL, 'delivered', 54, '2017-11-19 01:12:31', '2017-11-19 01:12:31', 1, '2017-11-18'),
(151, NULL, 15.00, 15.45, NULL, 'delivered', 328, '2017-11-20 18:18:54', '2017-11-20 18:18:54', 1, '2017-11-20'),
(152, NULL, 20.17, 20.78, NULL, 'delivered', 126, '2017-11-20 20:42:56', '2017-11-20 20:42:56', 1, '2017-11-20'),
(153, NULL, 97.09, 100.00, NULL, 'delivered', 71, '2017-11-21 01:45:07', '2017-11-21 01:45:07', 1, '2017-11-20'),
(154, NULL, 200.00, 206.00, '0', 'delivered', 54, '2017-11-21 04:02:41', '2017-11-21 04:02:41', 1, '2017-11-21'),
(155, NULL, 50.00, 51.50, NULL, 'delivered', 309, '2017-11-21 06:44:06', '2017-11-21 06:44:06', 1, '2017-11-21'),
(156, NULL, 50.00, 51.50, NULL, 'delivered', 118, '2017-11-21 06:44:42', '2017-11-21 06:44:42', 1, '2017-11-21'),
(157, NULL, 255.30, 262.96, NULL, 'delivered', 32, '2017-11-21 20:34:00', '2017-11-21 20:34:00', 1, '2017-11-21'),
(158, NULL, 97.09, 100.00, NULL, 'delivered', 188, '2017-11-21 22:19:43', '2017-11-21 22:19:43', 1, '2017-11-21'),
(159, NULL, 50.00, 51.50, '0', 'delivered', 71, '2017-11-22 00:21:24', '2017-11-22 00:21:24', 1, '2017-11-21'),
(160, NULL, 194.17, 200.00, NULL, 'delivered', 313, '2017-11-22 00:57:15', '2017-11-22 00:57:15', 1, '2017-11-21'),
(161, NULL, 100.00, 103.00, NULL, 'delivered', 54, '2017-11-22 03:08:55', '2017-11-22 03:08:55', 1, '2017-11-21'),
(162, NULL, 30.00, 30.90, NULL, 'delivered', 259, '2017-11-22 18:30:04', '2017-11-22 18:30:04', 1, '2017-11-22'),
(163, NULL, 21.00, 21.63, NULL, 'delivered', 149, '2017-11-22 20:22:07', '2017-11-22 20:22:07', 1, '2017-11-22'),
(164, NULL, 150.00, 154.50, NULL, 'delivered', 83, '2017-11-22 20:39:08', '2017-11-22 20:39:08', 1, '2017-11-22'),
(165, NULL, 97.09, 100.00, NULL, 'delivered', 188, '2017-11-22 20:42:13', '2017-11-22 20:42:13', 1, '2017-11-22'),
(166, NULL, 358.90, 369.67, NULL, 'delivered', 162, '2017-11-23 00:38:51', '2017-11-23 00:38:51', 1, '2017-11-22'),
(167, NULL, 291.00, 299.73, NULL, 'delivered', 172, '2017-11-23 00:57:23', '2017-11-23 00:57:23', 1, '2017-11-22'),
(168, NULL, 97.00, 99.91, NULL, 'delivered', 188, '2017-11-23 02:14:04', '2017-11-23 02:14:04', 1, '2017-11-22'),
(169, NULL, 65.00, 71.50, 'platmilton@hotmail.com(cancel', 'delivered', 35, '2017-11-23 02:46:06', '2017-11-23 02:46:06', 4, '2017-11-23'),
(170, NULL, 339.81, 350.00, NULL, 'delivered', 188, '2017-11-23 19:29:03', '2017-11-23 19:29:03', 1, '2017-11-23'),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(83, '2016_08_07_145904_add_table_cms_apicustom', 1),
(84, '2016_08_07_150834_add_table_cms_dashboard', 1),
(85, '2016_08_07_151210_add_table_cms_logs', 1),
(86, '2016_08_07_152014_add_table_cms_privileges', 1),
(87, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(88, '2016_08_07_152320_add_table_cms_settings', 1),
(89, '2016_08_07_152421_add_table_cms_users', 1),
(90, '2016_08_07_154624_add_table_cms_moduls', 1),
(91, '2016_08_17_225409_add_status_cms_users', 1),
(92, '2016_08_20_125418_add_table_cms_notifications', 1),
(93, '2016_09_04_033706_add_table_cms_email_queues', 1),
(94, '2016_09_16_035347_add_group_setting', 1),
(95, '2016_09_16_045425_add_label_setting', 1),
(96, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(97, '2016_10_01_141740_add_method_type_apicustom', 1),
(98, '2016_10_01_141846_add_parameters_apicustom', 1),
(99, '2016_10_01_141934_add_responses_apicustom', 1),
(100, '2016_10_01_144826_add_table_apikey', 1),
(101, '2016_11_14_141657_create_cms_menus', 1),
(102, '2016_11_15_132350_create_cms_email_templates', 1),
(103, '2016_11_15_190410_create_cms_statistics', 1),
(104, '2016_11_17_102740_create_cms_statistic_components', 1),
(105, '2017_02_17_175518_create_packages_table', 1),
(106, '2017_02_17_175525_create_shipments_table', 1),
(107, '2017_02_17_175601_create_products_table', 1),
(108, '2017_02_17_175751_create_giftcards_table', 1),
(109, '2017_02_19_191828_create_warehouses_table', 2),
(112, '2017_03_06_233229_create_customers_table', 3),
(113, '2017_03_06_233244_create_orders_table', 3),
(114, '2017_03_27_105142_add_to_shipment', 4),
(115, '2017_03_27_105345_add_to_shipment_2', 5),
(116, '2017_03_27_113755_add_to_shipments_table', 6),
(117, '2017_03_28_090303_create_transactions_table', 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Priced','Paid','Accepted','Awaiting Payment','Declined','Price Declined','Ordered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `real_price` double NOT NULL DEFAULT 0,
  `fixed_fee` double NOT NULL DEFAULT 0,
  `percentage_fee` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `fee` double NOT NULL DEFAULT 0,
  `freight_price` double DEFAULT NULL,
  `paid_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`id`, `link`, `status`, `notes`, `tracking_number`, `package_id`, `customer_id`, `created_at`, `updated_at`, `real_price`, `fixed_fee`, `percentage_fee`, `price`, `fee`, `freight_price`, `paid_date`) VALUES
(3, 'https://www.amazon.com/gp/product/B072MHFG7L/ref=ox_sc_act_title_1?smid=ACCDACP5WC6WG&psc=1', 'Ordered', 'black', '30 aug- 15 sept', NULL, 169, '2017-08-11 12:28:18', '2017-09-13 07:52:08', 87.46, 0, 10, 96.21, 8.75, 0, '2017-09-13'),
(4, 'http://www.ebay.com/itm/302350400915', 'Ordered', 'colour', 'Aug 24 – Sep 5', NULL, 170, '2017-08-11 19:45:56', '2017-09-14 01:06:43', 122.15, 0, 10, 134.37, 12.21, 0, '2017-09-13'),
(5, 'https://www.aliexpress.com/item/ZOROPAUL-2017-Brand-Leather-Men-Shoulder-Bag-Casual-Business-Satchel-Messenger-Bag-Vintage-Men-s-Crossbody/32788066061.html?spm=a2g0s.13010208.99999999.264.9H8nio', 'Ordered', 'Color:Gray  / Ships From:China / Size:(20cm<Max Length<30cm)', 'besteld', NULL, 79, '2017-08-11 19:49:36', '2017-09-14 01:06:46', 15.16, 0, 10, 16.68, 1.52, 0, '2017-09-13'),
(6, 'https://www.armaniexchange.com/us/polo_cod46501961om.html', 'Ordered', 'color grijs   maat s', 'NTB $2.77', NULL, 71, '2017-08-12 11:06:29', '2017-09-14 01:06:49', 36, 0, 10, 39.6, 3.6, 0, '2017-09-13'),
(8, 'Guess By Marciano', 'Ordered', 'For Men', 'Besteld word geleverd 23-8', NULL, 168, '2017-08-12 15:19:09', '2017-09-14 01:06:51', 20.91, 0, 10, 23, 2.09, 0, '2017-09-13'),
(9, 'https://www.logaster.com/account/logos/concept/5714185/', 'Ordered', 'Logo #5 Invokit / Login: ftjoen@gmail.com / Password: faith135', 'besteld', NULL, 32, '2017-08-14 10:46:40', '2017-09-14 01:06:54', 9.99, 0, 10, 10.99, 1, 0, '2017-09-13'),
(10, 'https://www.amazon.com/Sony-Playstation-Portable-System-Certified-Refurbished/dp/B00GUEQ2KM/ref=sr_1_3?ie=UTF8&qid=1502812916&sr=8-3&keywords=psp', 'Ordered', NULL, 'Friday, Aug. 18', NULL, 181, '2017-08-15 14:02:35', '2017-09-14 01:06:57', 79.99, 0, 10, 87.99, 8, 0, '2017-09-13'),
(13, 'https://www.amazon.com/gp/cart/view.html/ref=nav_cart', 'Ordered', 'maat L', 'Aug. 29-Sept. 6', NULL, 180, '2017-08-15 18:08:02', '2017-09-14 01:07:00', 9.19, 0, 10, 10.11, 0.92, 0, '2017-09-13'),
(14, 'https://www.amazon.com/gp/product/B012IDVM0I/ref=ox_sc_act_title_1?smid=AHW5J0TWBRG0L&psc=1', 'Ordered', 'Black/gold', 'Friday, Aug. 18', NULL, 180, '2017-08-15 18:12:11', '2017-09-14 01:07:02', 22.47, 0, 10, 24.72, 2.25, 0, '2017-09-13'),
(15, 'https://www.amazon.com/gp/product/B01M15F22F/ref=ox_sc_act_title_1?smid=A1MGL3MMKHQ3P6&psc=1', 'Ordered', '0', 'hursday, Aug. 17', NULL, 182, '2017-08-15 18:17:46', '2017-09-14 01:07:04', 20.19, 0, 10, 22.21, 2.02, 0, '2017-09-13'),
(16, 'http://www.ebay.com/itm/New-LCD-Display-Screen-For-Nokia-X1-01-C1-01-C1-00-X-1-C-1-Replacement-Parts-/261670202069?hash=item3cecc26ad5:g:Ox0AAOSwnDxUbuIK', 'Ordered', NULL, 'Aug 29 – Sep 19', NULL, 28, '2017-08-16 10:13:35', '2017-09-14 01:07:07', 3.98, 0, 10, 4.38, 0.4, 0, '2017-09-13'),
(17, 'https://www.amazon.com/gp/product/B00EXIEVO6/ref=ox_sc_act_title_1?smid=A2LD1G37AFXYHU&psc=1', 'Ordered', 'niets', 'Aug. 23, 2017', NULL, 186, '2017-08-17 11:38:44', '2017-09-14 01:07:09', 14.54, 0, 10, 15.99, 1.45, 0, '2017-09-13'),
(18, 'https://www.amazon.com/gp/product/B000YOIFRW/ref=ox_sc_act_title_1?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'kleur black', 'Aug. 23, 2017', NULL, 186, '2017-08-17 11:40:29', '2017-09-14 01:07:10', 27.6, 0, 10, 30.36, 2.76, 0, '2017-09-13'),
(19, 'https://www.amazon.com/gp/product/B00PRVLMK4/ref=ox_sc_act_title_1?smid=A2ROETNUHHJTQ0&psc=1', 'Ordered', 'Betaald: $ 40 / Saldo: $ 0.69', 'Monday, Aug. 21', NULL, 189, '2017-08-17 14:39:31', '2017-09-14 01:07:13', 36.99, 0, 10, 40.69, 3.7, 0, '2017-09-13'),
(20, 'https://nl.aliexpress.com/item/Fashion-Wish-Real-Dandelion-Crystal-Necklace-Glass-Round-Pendants-Necklace-Silver-Chain-Choker-Necklace-For-Women/32635571917.html?spm=a2g0s.13010208.99999999.264.6oFWjc', 'Ordered', 'Metal Color: DDN004', 'besteld', NULL, 32, '2017-08-18 19:59:30', '2017-09-14 01:07:15', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(21, 'https://nl.aliexpress.com/item/Lip-Makeup-Long-Lasting-Lips-Matte-Lipstick-Nude-Cosmetic-Moistourzing-Lip-Tint-Tattoo-Matte-Liquid-Lip/32772867207.html?spm=a2g0s.13010208.99999999.271.6oFWjc', 'Ordered', 'Color: 5', 'besteld', NULL, 32, '2017-08-18 20:00:15', '2017-09-14 01:07:17', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(22, 'https://nl.aliexpress.com/item/New-Design-Simple-Silver-Charm-Bracelet-Delicate-Crystal-Bracelets-for-Women-Girl-Gift-Fashion-Jewelry-Accessories/32667428203.html?spm=a2g0s.13010208.99999999.278.6oFWjc', 'Ordered', 'Metal Color: Gold', 'besteld', NULL, 32, '2017-08-18 20:01:14', '2017-09-14 01:07:23', 7.15, 0, 10, 7.87, 0.71, 0, '2017-09-13'),
(23, 'https://www.amazon.com/gp/product/B06X19F8MY/ref=ox_sc_act_title_1?smid=A309HJI0VT4TTS&psc=1', 'Ordered', 'Color: Black Black Black', 'Arriving Sep 11 - Oct 2', NULL, 71, '2017-08-19 13:00:04', '2017-09-14 01:07:26', 12.79, 0, 10, 14.07, 1.28, 0, '2017-09-13'),
(24, 'https://www.bol.com/nl/p/falk-claas-arion-430-groene-traptracor-incl-aanhanger/1004004012376714/?suggestionType=typedsearch#modal_open', 'Ordered', 'Prijs moet In Euro   (Euro 119.90)', '24 aug', NULL, 187, '2017-08-19 13:16:44', '2017-09-14 01:07:28', 109, 0, 10, 119.9, 10.9, 0, '2017-09-13'),
(25, 'https://www.amazon.com/gp/product/B0711SPDVP/ref=ox_sc_act_title_1?smid=AVTLFZWYABG9Z&psc=1', 'Ordered', 'niets', 'Monday, Aug. 21', NULL, 120, '2017-08-19 16:34:05', '2017-09-14 01:07:33', 15.48, 0, 10, 17.03, 1.55, 0, '2017-09-13'),
(26, 'https://nl.aliexpress.com/', 'Ordered', 'Black L', 'besteld', NULL, 27, '2017-08-19 19:22:04', '2017-09-14 01:07:36', 14.99, 0, 10, 16.49, 1.5, 0, '2017-09-13'),
(27, 'https://www.amazon.com/gp/product/B00Y98GTIG/ref=ox_sc_act_title_1?smid=A2716N0649DRWM&psc=1', 'Ordered', NULL, 'Aug 29 - Sep 1', NULL, 145, '2017-08-23 00:38:05', '2017-09-14 01:07:39', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(28, 'https://www.amazon.com/gp/product/B018ER23O6/ref=ox_sc_act_title_2?smid=A1RV8VNBQF66WH&psc=1', 'Ordered', NULL, 'August 23', NULL, 145, '2017-08-23 00:39:31', '2017-09-14 01:07:43', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(29, 'https://www.amazon.com/gp/product/B00548VOL2/ref=ox_sc_act_title_3?smid=A3CP8WXDIU92RJ&psc=1', 'Ordered', NULL, 'Aug 29 - Sep 1', NULL, 145, '2017-08-23 00:40:42', '2017-09-14 01:07:45', 50.45, 0, 10, 55.5, 5.04, 0, '2017-09-13'),
(30, 'http://www.ebay.com/itm/New-AC-Adapter-Battery-Charger-For-Acer-Chromebook-AC700-AC710-Power-Supply-Cord-/380637910004?hash=item589fc993f4:g:D2sAAOSwZd1VbMf9', 'Ordered', '1 van 2', 'Aug 28 – 29', NULL, 156, '2017-08-23 01:05:29', '2017-09-14 01:07:47', 0, 0, 10, 0, 0, 1, '2017-09-13'),
(31, 'http://www.ebay.com/itm/New-Original-Genuine-battery-RFJMW-for-Dell-Latitude-E6320-E6220-E6120-E6230-OEM-/272626557038?epid=1687898277&hash=item3f79cf206e:g:L8YAAOSwc-tY7Dr0', 'Ordered', '2 van 2', 'Aug 28 – 29', NULL, 156, '2017-08-23 01:06:31', '2017-09-14 01:07:49', 40.84, 0, 10, 44.92, 4.08, 0, '2017-09-13'),
(32, 'https://www.walmart.com/ip/Norpro-Frozen-Ice-Pop-Maker-with-24-Wooden-Sticks/47713187', 'Ordered', '1 van 2', 'Fri, Aug 25', NULL, 156, '2017-08-23 01:07:28', '2017-09-14 01:07:55', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(33, 'https://www.walmart.com/ip/Kids-Craft-Wooden-Craft-Sticks-1-000pk/19525320', 'Ordered', '2 van 2', 'Fri, Aug 25', NULL, 156, '2017-08-23 01:08:37', '2017-09-14 01:07:58', 25.45, 0, 10, 27.99, 2.54, 0, '2017-09-13'),
(34, 'https://www.amazon.com/gp/product/B01C9H1ZOG/ref=ox_sc_sfl_title_1?ie=UTF8&psc=1&smid=A2R3ECARXBD4R5', 'Ordered', 'VG.', 'Friday, Aug. 25', NULL, 195, '2017-08-23 01:11:41', '2017-09-14 01:07:59', 23.06, 0, 10, 25.37, 2.31, 0, '2017-09-13'),
(35, 'https://m.dresslily.com/ink-printing-sleeveless-ombre-bodycon-dress-product2151266.html', 'Ordered', 'KW     MAAT XL  COLOR MIX', 'LW744785377CN', NULL, 166, '2017-08-23 17:19:06', '2017-09-14 01:08:01', 10.57, 0, 10, 11.63, 1.06, 0, '2017-09-13'),
(36, 'https://www.amazon.com/gp/product/B00TKFEEJ4/ref=ox_sc_act_title_1?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'VG.  3TB/Without Expert Installation', '25 augt', NULL, 36, '2017-08-23 20:18:58', '2017-09-14 01:08:03', 83.45, 0, 10, 91.8, 8.35, 0, '2017-09-13'),
(37, 'http://www.ebay.com/itm/111192282377', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:02:24', '2017-09-14 01:08:08', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(38, 'http://www.ebay.com/itm/111234155299', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:04:05', '2017-09-14 01:08:11', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(39, 'http://www.ebay.com/itm/121875001921', 'Ordered', '0', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:11:09', '2017-09-14 01:08:12', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(40, 'http://www.ebay.com/itm/182710822773?var=690025567867', 'Ordered', 'KW   200seedS', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:17:03', '2017-09-14 01:08:14', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(41, 'http://www.ebay.com/itm/400540952279', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:17:59', '2017-09-14 01:08:15', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(42, 'http://www.ebay.com/itm/292207237889', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:19:06', '2017-09-14 01:08:17', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(43, 'http://www.ebay.com/itm/292207237871', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:20:12', '2017-09-14 01:08:18', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(44, 'http://www.ebay.com/itm/292213960878', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:21:04', '2017-09-14 01:08:20', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(45, 'http://www.ebay.com/itm/332329227827', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:21:57', '2017-09-14 01:08:24', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(46, 'http://www.ebay.com/itm/232374857435', 'Ordered', 'kw', 'Aug 26 – Sep 6', NULL, 196, '2017-08-24 00:23:32', '2017-09-14 01:08:27', 33.3, 0, 10, 36.63, 3.33, 0, '2017-09-13'),
(47, 'Parfum Bestelling : Versace Blue Jeans', 'Ordered', 'VG.  2X .   75% voorschot betaald', 'Oct. 3', NULL, 197, '2017-08-24 16:14:45', '2017-09-30 17:32:14', 47.27, 0, 10, 52, 4.73, 0, '2017-09-30'),
(48, 'https://www.amazon.com/gp/product/B01GCIEAKO/ref=ox_sc_act_title_1?smid=A3JEQ7EDT9UOXB&psc=1', 'Ordered', 'VG.   Color: Flower', 'Aug. 30, 2017', NULL, 198, '2017-08-24 17:14:09', '2017-09-14 01:08:30', 16.06, 0, 10, 17.67, 1.61, 0, '2017-09-13'),
(49, 'http://www.ebay.com/itm/AC-Adaptor-Home-Wall-Charger-for-SONY-PlayStation-PS-Vita-PSVita-PCH-1000-series-/290698123545?hash=item43aef55919:m:mTOELXMq6FSOtnzvRgIb0XQ', 'Ordered', 'VG.', 'Sep 7 – 21', NULL, 182, '2017-08-25 22:36:37', '2017-09-14 01:08:32', 9.99, 0, 10, 10.99, 1, 0, '2017-09-13'),
(50, 'https://www.amazon.com/gp/product/B004HFMNGS/ref=ox_sc_act_title_1?smid=A1XLIDN9XQ0PZA&psc=1', 'Ordered', 'kw', 'Sept. 12, 2017', NULL, 166, '2017-08-29 21:02:07', '2017-09-14 01:08:36', 21.96, 0, 10, 24.16, 2.2, 0, '2017-09-13'),
(51, 'https://www.amazon.com/gp/product/B072PTS213/ref=ox_sc_act_title_1?smid=A1VKTCC4LNGVPL&psc=1', 'Ordered', 'maat 11', 'Sept. 6-11', NULL, 85, '2017-08-29 23:30:59', '2017-09-14 01:08:39', 23.98, 0, 10, 26.38, 2.4, 0, '2017-09-13'),
(52, 'https://www.amazon.com/gp/product/B06XTY2CXX/ref=ox_sc_act_title_1?smid=AHHEAKMAFLE0I&psc=1', 'Ordered', 'VG.    Color: Black-Gold/Clear', 'Sept. 12-14', NULL, 247, '2017-08-30 23:34:10', '2017-09-14 01:08:44', 11.99, 0, 10, 13.19, 1.2, 0, '2017-09-13'),
(53, 'www.amazone.com', 'Ordered', 'sherwine', 'Sep 21 - Oct 13', NULL, 57, '2017-08-31 04:16:02', '2017-09-14 01:08:46', 21.96, 0, 10, 24.16, 2.2, 0, '2017-09-13'),
(54, 'https://www.amazon.com/gp/product/B012IDVM0I/ref=ox_sc_act_title_1?smid=AHW5J0TWBRG0L&psc=1', 'Ordered', 'VG.   Color: Gold Black', 'Sept. 12', NULL, 248, '2017-08-31 21:16:07', '2017-09-14 01:08:49', 22.47, 0, 10, 24.72, 2.25, 0, '2017-09-13'),
(55, 'http://www.ebay.com/itm/Flip-Case-for-Lenovo-Wallet-Bag-PU-Leather-Cover-Card-Holder-Protector-Cases-/302426718814?var=&hash=item466a09825e:m:m6vn28ra_l04Z3ir3lM9_OQ', 'Ordered', 'VG.  Color: Black / Model: Lenovo A1000', 'Sep 22 – Nov 3', NULL, 249, '2017-08-31 21:39:29', '2017-09-14 01:08:51', 3.68, 0, 10, 4.05, 0.37, 0, '2017-09-13'),
(56, 'https://www.amazon.com/gp/product/B074QNN8ZT/ref=ox_sc_act_title_1?smid=A3IXJH5B7LRZEU&psc=1', 'Ordered', 'VG. 1 van 2  Color: Blue 1X / Multicolor 1X', 'besteld', NULL, 57, '2017-09-02 17:41:23', '2017-09-14 01:08:55', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(57, 'https://www.amazon.com/gp/product/B074CFSCGQ/ref=ox_sc_act_title_1?smid=A3IXJH5B7LRZEU&psc=1', 'Ordered', 'VG. 2 van 2 / Color: Red 2X', 'besteld', NULL, 57, '2017-09-02 17:43:00', '2017-09-14 01:09:00', 21.96, 0, 10, 24.16, 2.2, 0, '2017-09-13'),
(58, 'https://www.amazon.com/gp/product/B00L2L5UE2/ref=ox_sc_act_title_1?smid=A1L4RET7EN3J8R&psc=1', 'Ordered', 'KW   kleur wit   maat L', 'Sept. 12', NULL, 71, '2017-09-02 21:10:32', '2017-09-14 01:09:07', 28.68, 0, 10, 31.55, 2.87, 0, '2017-09-13'),
(59, 'https://www.amazon.com/gp/product/B00F4XQ3G8/ref=ox_sc_act_title_1?smid=A9HL8CVQQ32TB&psc=1', 'Ordered', 'kw', 'Sept. 12', NULL, 71, '2017-09-05 17:45:14', '2017-09-14 01:09:14', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(60, 'https://www.amazon.com/Panasonic-CR2412-Battery-Single-Batteries/dp/B01N53061S/ref=sr_1_4?ie=UTF8&qid=1504620297&sr=8-4&keywords=CR2412+3V+Lithium+Battery', 'Ordered', 'KW', 'Sept. 12', NULL, 251, '2017-09-05 18:19:11', '2017-09-14 01:09:17', 15.89, 0, 10, 17.48, 1.59, 0, '2017-09-13'),
(61, 'https://www.amazon.com/gp/product/B0000DDYZN/ref=ox_sc_act_title_1?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'KW     1 stuk', 'Sept. 12', NULL, 71, '2017-09-05 18:21:34', '2017-09-14 01:09:20', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(62, 'https://www.amazon.com/gp/product/B01M9H41FL/ref=ox_sc_act_title_3?smid=A1ZVYDKE3EQ0PV&psc=1', 'Ordered', 'KW   TOT 3 ITEM', 'Sept. 12', NULL, 71, '2017-09-05 18:23:51', '2017-09-14 01:09:22', 44.42, 0, 10, 48.86, 4.44, 0, '2017-09-13'),
(63, 'https://www.amazon.com/gp/product/B01M3QCRAS/ref=ox_sc_act_title_1?smid=A3G8CEI5RFWFOX&psc=1', 'Ordered', 'VG. Color: Jungle Digital    1 van 4', 'Sept. 12', NULL, 186, '2017-09-05 18:38:00', '2017-09-14 01:09:24', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(64, 'https://www.amazon.com/gp/product/B06ZXYLN6F/ref=ox_sc_act_title_1?smid=A3LV5OEY7YFPW2&psc=1', 'Ordered', 'VG.  2 van 4', 'Sept. 12', NULL, 186, '2017-09-05 18:38:56', '2017-09-14 01:09:26', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(65, 'https://www.amazon.com/gp/product/B007OZZXDI/ref=ox_sc_act_title_1?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'VG. Color: Camo  3 van 4', 'Sept. 12', NULL, 186, '2017-09-05 18:39:38', '2017-09-14 01:09:34', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(66, 'https://www.amazon.com/gp/product/B008IE5BI6/ref=ox_sc_act_title_2?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'VG.  Aantal: 3x    4 van 4', 'Sept. 12', NULL, 186, '2017-09-05 18:41:17', '2017-09-14 01:09:36', 53, 0, 10, 58.3, 5.3, 0, '2017-09-13'),
(67, 'http://www.ebay.com/itm/282586792004', 'Ordered', 'KW  1-1', 'Sep 13 – Oct 19', NULL, 33, '2017-09-05 20:44:23', '2017-09-14 01:09:38', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(68, 'http://www.ebay.com/itm/162597884444', 'Ordered', 'KW 1-2', 'Sep 13 – Oct 19', NULL, 33, '2017-09-05 20:47:23', '2017-09-14 01:09:40', 125.48, 0, 10, 138.03, 12.55, 0, '2017-09-13'),
(69, 'https://www.amazon.com/gp/product/B073FF3Z76/ref=ox_sc_act_title_1?smid=A2QFQ3MFPYYOKQ&psc=1', 'Ordered', 'VG.   Size: XXX-Large   1 van 9', 'Sept. 12', NULL, 55, '2017-09-05 23:37:49', '2017-09-14 01:09:43', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(70, 'https://www.amazon.com/gp/product/B00W5B5DTU/ref=ox_sc_act_title_2?smid=A8Q45USS5US03&psc=1', 'Ordered', 'VG.  Aantal: 3X   2 van 9', 'Sept. 12', NULL, 55, '2017-09-05 23:38:59', '2017-09-14 01:09:45', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(71, 'https://www.amazon.com/gp/product/B01N06UBN8/ref=ox_sc_act_title_3?smid=A3TVQL0JPVMN9K&psc=1', 'Ordered', 'VG. Style: Sqaure Style    3 van 9', 'Sept. 12', NULL, 55, '2017-09-05 23:39:53', '2017-09-14 01:09:53', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(72, 'https://www.amazon.com/gp/product/B01N06UE41/ref=ox_sc_act_title_4?smid=A3TVQL0JPVMN9K&psc=1', 'Ordered', 'VG.  Style: Heart Style  2X    4 van 9', 'Sept. 12', NULL, 55, '2017-09-05 23:41:29', '2017-09-14 01:09:55', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(73, 'https://www.amazon.com/gp/product/B01M9IE4EK/ref=ox_sc_act_title_5?smid=A3QVM42A5NQGZ4&psc=1', 'Ordered', 'VG. Color Black / Size: 44  5 van 9', 'Sep 28 - Oct 20', NULL, 55, '2017-09-05 23:43:25', '2017-09-14 01:09:58', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(74, 'https://www.amazon.com/gp/product/B01M9IE4EK/ref=ox_sc_act_title_5?smid=A3QVM42A5NQGZ4&psc=1', 'Ordered', 'VG. Color Black / Size: 43   6 van 9', 'Sep 28 - Oct 20', NULL, 55, '2017-09-05 23:44:35', '2017-09-14 01:10:00', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(75, 'https://www.amazon.com/gp/product/B01MQY0FB2/ref=ox_sc_act_title_7?smid=AH7JBQAFOZ2KR&psc=1', 'Ordered', 'VG. Color: Pink / Size: XX-Large   7 van 9', 'Sept. 12', NULL, 55, '2017-09-05 23:46:19', '2017-09-14 01:10:02', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(76, 'https://www.amazon.com/gp/product/B073WD96PP/ref=ox_sc_act_title_8?smid=A2OS1K90SL2IDC&psc=1', 'Ordered', 'VG. Size: Small / 2X    8 van 9', 'Sept. 12', NULL, 55, '2017-09-05 23:48:06', '2017-09-14 01:10:11', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(77, 'https://www.amazon.com/gp/product/B074BSF4SX/ref=ox_sc_act_title_9?smid=A11UA2WYACYI3J&psc=1', 'Ordered', 'VG. Color : Couples Set (Her King & His Queen)  2x   9 van 9', 'Sep 27 - Oct 19', NULL, 55, '2017-09-05 23:50:34', '2017-09-14 01:10:16', 200.24, 0, 10, 220.26, 20.02, 0, '2017-09-13'),
(78, 'https://www.amazon.com/gp/product/B0018ZHTWS/ref=ox_sc_act_title_1?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'VG.  1 van 4', 'Sept. 12', NULL, 134, '2017-09-06 19:22:06', '2017-09-14 01:10:19', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(79, 'https://www.amazon.com/gp/product/B01FMXA3Y2/ref=ox_sc_act_title_2?smid=A1UZXX8GKKGIIR&psc=1', 'Ordered', 'VG. 2 van 4', 'Sept. 12', NULL, 134, '2017-09-06 19:22:43', '2017-09-14 01:10:23', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(80, 'https://www.amazon.com/gp/product/B071KR8H16/ref=ox_sc_act_title_3?smid=A1ZVF0Y6S83LRS&psc=1', 'Ordered', 'VG. 3 van 4', 'Sept. 12', NULL, 134, '2017-09-06 19:23:25', '2017-09-14 01:10:25', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(81, 'https://www.amazon.com/gp/product/B013SH2ZMC/ref=ox_sc_act_title_4?smid=A3DQWNDT09WO3V&psc=1', 'Ordered', 'VG.  4 van 4', 'Sept. 12', NULL, 134, '2017-09-06 19:25:45', '2017-09-14 01:10:29', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(82, 'https://www.amazon.com/gp/product/B071CV9HGL/ref=ox_sc_act_title_5?smid=A32EMG4B11E3C1&psc=1', 'Ordered', 'VG. 5 van 4  Opm. er moeten 5 items zijn', 'Sept. 12', NULL, 134, '2017-09-06 19:27:11', '2017-09-14 01:10:32', 57.98, 0, 10, 63.78, 5.8, 0, '2017-09-13'),
(83, 'https://www.amazon.com/gp/product/B01N5HTEQ5/ref=ox_sc_act_title_1?smid=A13BNE3P7C8THK&psc=1', 'Ordered', 'VG.', 'Sept. 12', NULL, 252, '2017-09-06 20:16:56', '2017-09-14 01:10:34', 269.99, 0, 10, 296.99, 27, 0, '2017-09-13'),
(84, 'https://www.amazon.com/gp/product/B00K8DAIUQ/ref=ox_sc_mini_detail?ie=UTF8&psc=1&smid=ATVPDKIKX0DER', 'Ordered', 'pakket verdwenen', 'Sept. 12/Oct. 5', NULL, 124, '2017-09-06 23:41:06', '2017-09-14 01:10:36', 40.66, 0, 10, 44.73, 4.07, 0, '2017-09-13'),
(85, 'https://www.amazon.com/gp/product/B01N2VVX7Q/ref=ox_sc_act_title_1?smid=A1XF3CYSNDG6WS&psc=1', 'Ordered', 'KW   1-4', 'Sept. 13', NULL, 71, '2017-09-07 00:02:18', '2017-09-14 01:10:39', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(86, 'https://www.amazon.com/gp/product/B072JW9PN6/ref=ox_sc_act_title_2?smid=A1G3NDND5G3FR4&psc=1', 'Ordered', 'KW  2-4', 'Sept. 13', NULL, 71, '2017-09-07 00:03:18', '2017-09-14 01:10:46', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(87, 'https://www.amazon.com/gp/product/B071HLVC4W/ref=ox_sc_act_title_3?smid=A24NL8QD8TS8RF&psc=1', 'Ordered', 'KW   3-4', 'Sept. 13', NULL, 71, '2017-09-07 00:04:01', '2017-09-14 01:10:48', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(88, 'https://www.amazon.com/gp/product/B01IEGNZXK/ref=ox_sc_act_title_4?smid=A1HQPD45OK95LN&psc=1', 'Ordered', 'KW    4-4     black tone 9.1 inch', 'Sept. 13', NULL, 71, '2017-09-07 00:06:23', '2017-09-14 01:10:51', 52.95, 0, 10, 58.25, 5.29, 0, '2017-09-13'),
(89, 'https://www.giftsintl-us.com/proddetail.php?prod=TULLE-100YDS-08', 'Ordered', 'KW. 1 van 4', 'besteld', NULL, 54, '2017-09-07 00:34:04', '2017-09-14 01:10:53', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(90, 'https://www.giftsintl-us.com/proddetail.php?prod=TULLE-100YDS-30', 'Ordered', 'KW. 2 van 4', 'besteld', NULL, 54, '2017-09-07 00:35:06', '2017-09-14 01:10:55', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(91, 'https://www.giftsintl-us.com/proddetail.php?prod=TULLE-100YDS-19', 'Ordered', 'KW. 3 van 4', 'besteld', NULL, 54, '2017-09-07 00:35:55', '2017-09-14 01:10:58', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(92, 'https://www.giftsintl-us.com/proddetail.php?prod=TULLE-100YDS-29', 'Ordered', 'KW. 4 van 4', 'besteld', NULL, 54, '2017-09-07 00:37:07', '2017-09-14 01:11:00', 17.16, 0, 10, 18.88, 1.72, 0, '2017-09-13'),
(93, 'https://www.aliexpress.com/item/Men-Shoulder-bag-Genuine-leather-Men-Bag-Classical-Messenger-Bag-Fashion-Casual-Business-Shoulder-Handbags-for/32797794297.html?spm=a2g0s.13010208.99999999.264.Habf7', 'Accepted', 'KW  1-2         black smal', '0', 3107, 32, '2017-09-11 19:17:10', '2017-09-14 01:19:55', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(94, 'https://www.aliexpress.com/item/Bikini-2017-High-Waist-Swimwear-Women-Swimsuit-Brazilian-Print-Bikinis-Set-Sexy-Bandeau-Bathing-Suit-Push/32821410277.html?spm=a2g0s.13010208.99999999.272.Habf7I', 'Accepted', 'kw   2-2    maat M', '0', 3107, 32, '2017-09-11 19:19:06', '2017-09-14 01:20:03', 28.79, 0, 10, 31.67, 2.88, 0, '2017-09-13'),
(97, 'https://5dollarfashions.com/tops/100-rayon-romper-boho-chic-lace-dark-olive/', 'Accepted', 'kw  1-3      maat L', '0', 3107, 166, '2017-09-12 19:27:52', '2017-09-14 01:34:16', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(98, 'https://5dollarfashions.com/tops/solid-white-crop-top-from-dots-with-cutout-shoulders/', 'Accepted', 'kw  2-3  maat XL', '0', 3107, 166, '2017-09-12 19:28:59', '2017-09-14 01:34:25', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(99, 'https://5dollarfashions.com/bottoms/classic-black-white-checkered-high-waist-skinny-pants/', 'Accepted', 'KW 3-3   MAAT XL', '0', 3107, 166, '2017-09-12 19:30:32', '2017-09-14 01:34:32', 22.17, 0, 10, 24.39, 2.22, 0, '2017-09-13'),
(101, 'http://www.ebay.com/itm/151085226318', 'Accepted', 'kw vracht +opzet', '0', 3107, 256, '2017-09-12 20:27:22', '2017-09-14 01:36:36', 17.65, 0, 10, 19.41, 1.76, 0, '2017-09-13'),
(102, 'http://www.ebay.com/itm/4pcs-Fabric-Sewing-Quilting-Bias-Binding-Maker-Tape-Maker-Tool-Set-Easy-Use-/262918230926?hash=item3d3725d38e%3Ag%3AaJ8AAOSw4CFY3tHb', 'Accepted', 'VR', '0', 3107, 156, '2017-09-13 21:00:25', '2017-09-14 01:23:12', 9.49, 0, 10, 10.44, 0.95, 0, '2017-09-13'),
(103, 'https://www.walmart.com/ip/No-Nonsense-Women-s-Ultra-Sheer-Pantyhose/24360684', 'Accepted', 'VG. Size: D  Color: 1X Coffee / 1X Jet Brown', '0', 3107, 257, '2017-09-13 21:16:57', '2017-09-14 01:41:38', 9.19, 0, 10, 10.11, 0.92, 0, '2017-09-13'),
(104, 'https://www.dresslily.com/butterfly-shaped-lace-up-self-adhesive-bra-product2188817.html', 'Accepted', 'VG. Color: Black / Size: 80D  1 van 3', '0', 3107, 257, '2017-09-13 21:19:44', '2017-09-14 01:47:34', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(105, 'https://www.dresslily.com/vintage-floral-print-prom-swing-pin-up-dress-product2183738.html', 'Accepted', 'VG. Color: Wine Red / Size: 2XL  2 van 3', '0', 3107, 257, '2017-09-13 21:20:48', '2017-09-14 01:47:52', 0, 0, 10, 0, 0, 0, '2017-09-13'),
(106, 'https://www.dresslily.com/retro-halter-floral-print-pin-up-dress-product2181907.html', 'Accepted', 'VG. Color: Beige / Size: 2XL   Opm,: Totaal met walmart bestelling $ 63.22, betaald $ 50 , Saldo: $ 13.22', '0', 3107, 257, '2017-09-13 21:22:51', '2017-09-14 01:47:47', 48.28, 0, 10, 53.11, 4.83, 0, '2017-09-13'),
(107, 'PARFUM VERSACE RED JEAN', 'Declined', 'niet betaald  197.60', 'Sept. 30', NULL, 197, '2017-09-14 01:14:17', '2017-10-17 23:54:19', 0, 0, 10, 0, 0, 0, NULL),
(108, 'http://www.ebay.com/itm/263148844959?var=562146892974', 'Ordered', 'VG.  Color: White / Size: XL   1 van 9', 'no longer available', NULL, 170, '2017-09-14 01:35:07', '2017-09-19 16:32:46', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(109, 'http://www.ebay.com/itm/263135968665?var=562135064387', 'Ordered', 'VG. Color: Rose 1X / Green 1X / Navy Blue 1X  - Size: L   2 van 9', 'besteld', NULL, 170, '2017-09-14 01:37:11', '2017-09-19 16:32:50', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(110, 'http://www.ebay.com/itm/132289264326?var=431615287655', 'Ordered', 'VG. Color: Orange Bohamian Boat Neck Swim / Size: 2XL   3 van 9', 'besteld', NULL, 170, '2017-09-14 01:40:31', '2017-09-19 16:32:54', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(111, 'http://www.ebay.com/itm/371989483192?var=640922028937', 'Ordered', 'VG. Color: Yellowish 2X - Size: XL / Red 2X  - Size: L    4 van 9', 'besteld', NULL, 170, '2017-09-14 01:43:07', '2017-09-19 16:33:01', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(112, 'http://www.ebay.com/itm/263136501454?var=562135500864', 'Ordered', 'VG. Color: Black 2X - Size: L / Color: Wine Red 2X - Size: XL / Color: Khaki 2X - Size: L / Color: Grey 2X - Size: XL / Color:  Dark Green 2X - Size: L   5 van 9', 'no longer available', NULL, 170, '2017-09-14 01:46:42', '2017-09-19 16:33:04', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(113, 'http://www.ebay.com/itm/322570425479?var=511554824127', 'Ordered', 'VG. Color: Mothertype Pink / Size: XL   6 van 9', 'no longer available', NULL, 170, '2017-09-14 01:47:53', '2017-09-19 16:33:20', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(114, 'http://www.ebay.com/itm/263044956450?var=562047885527', 'Ordered', 'VG. Color: Black 1X - Size L / Color: Red 1X - Size: L   7 van 9', 'black no stock', NULL, 170, '2017-09-14 01:53:20', '2017-09-19 16:33:29', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(115, 'http://www.ebay.com/itm/401276066586?var=670889183028', 'Ordered', 'VG. Color: Gray 1X  - Size: XL / Color: Wine Red 1X  - Size: L   8 van 9', 'besteld', NULL, 170, '2017-09-14 01:57:39', '2017-09-19 16:33:59', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(116, 'http://www.ebay.com/itm/263174108835?var=562170856414', 'Ordered', 'VG. Color: Army Green 1X - Size: M / Color: Black - Size: XL / Color: Wine Red - Size: L   9 van 9', 'besteld', NULL, 170, '2017-09-14 02:00:44', '2017-09-19 16:34:16', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(117, 'Besteling Ceder Nylda', 'Ordered', 'Totale Bedrag', '87.49', NULL, 170, '2017-09-14 02:02:35', '2017-09-19 16:32:42', 113.2, 0, 10, 124.52, 11.32, 0, '2017-09-19'),
(118, 'amazone', 'Declined', 'NTB 40 us', 'besteld', NULL, 144, '2017-09-14 05:07:58', '2017-10-17 23:54:27', 54.54, 0, 10, 59.99, 5.45, 0, NULL),
(119, 'https://www.amazon.com/gp/product/B01C4DVHNY/ref=ox_sc_act_title_1?smid=A2AKBTVC4GWLYM&psc=1', 'Accepted', 'kw maat  XSMAL  Teal Blue  1-4', '0', 3107, 258, '2017-09-14 17:09:54', '2017-09-19 16:42:30', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(120, 'https://www.amazon.com/gp/product/B01C4E6ZFS/ref=ox_sc_act_title_2?smid=A2AKBTVC4GWLYM&psc=1', 'Accepted', 'KW  MAAT X SMALL   KLEUR  Teal Blue  2-4', '0', 3107, 258, '2017-09-14 17:11:21', '2017-09-19 16:42:35', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(121, 'https://www.amazon.com/gp/product/B01C4DVLTE/ref=ox_sc_act_title_3?smid=A2AKBTVC4GWLYM&psc=1', 'Accepted', 'KW  MAAT XSMALL   KLEUR Hunter Green  3-4', '0', 3107, 258, '2017-09-14 17:12:39', '2017-09-19 16:43:02', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(122, 'https://www.amazon.com/gp/product/B01C4E78YU/ref=ox_sc_act_title_4?smid=A2AKBTVC4GWLYM&psc', 'Accepted', 'KW  MAAT XSMALL   KLEUR Hunter  4-4', '0', 3107, 258, '2017-09-14 17:18:24', '2017-09-19 16:43:07', 83.92, 0, 10, 92.31, 8.39, 0, '2017-09-19'),
(123, 'https://www.walmart.com/ip/RCA-Voyager-7-16GB-Tablet-Android-6-0-Marshmallow/53990888', 'Ordered', 'KW  KLEUR BLEU  SALDO $6.26  GISTER', 'Arrives by Thu, Sep 21', NULL, 145, '2017-09-14 17:34:11', '2017-09-19 16:49:29', 48.48, 0, 10, 53.33, 4.85, 0, '2017-09-19'),
(124, 'http://www.ebay.com/itm/192281611664', 'Ordered', 'KW', 'Sep 26 – 30', NULL, 159, '2017-09-14 23:32:08', '2017-09-19 16:54:36', 12.46, 0, 10, 13.71, 1.25, 0, '2017-09-19'),
(125, 'https://www.amazon.com/gp/product/B01HTGL7MM/ref=ox_sc_act_title_1?smid=A2C1RFKJZYS7OL&psc=1', 'Accepted', 'KW  1-4', '0', 3107, 186, '2017-09-15 20:33:30', '2017-09-19 17:04:47', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(126, 'https://www.amazon.com/gp/product/B01M8FR2FG/ref=ox_sc_act_title_2?smid=A2KWMMBIS1QFNR&psc=1', 'Accepted', 'kw  2-4  kleur    Camouflage', '0', 3107, 186, '2017-09-15 20:34:46', '2017-09-19 17:04:53', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(127, 'https://www.amazon.com/gp/product/B00GCQXPFS/ref=ox_sc_act_title_3?smid=ATVPDKIKX0DER&psc=1', 'Accepted', 'kw  3-4 kleur RealTree Xtra Camo', '0', 3107, 186, '2017-09-15 20:36:15', '2017-09-19 17:04:59', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(128, 'https://www.amazon.com/gp/product/B01LXCPWMX/ref=ox_sc_act_title_4?smid=A21875UNY3A7GG&psc=1', 'Accepted', 'kw  4-4   kleur Army Green', '0', 3107, 186, '2017-09-15 20:38:58', '2017-09-19 17:05:03', 53.97, 0, 10, 59.37, 5.4, 0, '2017-09-19'),
(129, 'https://www.amazon.com/gp/product/B01LZVNMTQ/ref=ox_sc_act_title_1?smid=A7IZ25FIZDEAN&psc=1', 'Ordered', 'kw  niet betaald saldo $54.99', 'Sept. 25-27', NULL, 162, '2017-09-18 20:29:23', '2017-09-19 17:00:14', 49.99, 0, 10, 54.99, 5, 0, '2017-09-19'),
(130, 'https://www.amazon.com/gp/product/B01MYAACQF/ref=ox_sc_act_title_1?smid=A2GVHUV1RJ3XVI&psc=1', 'Ordered', 'VG. Size: Medium  1 van 2', 'Sept. 21', NULL, 260, '2017-09-19 01:53:38', '2017-09-19 17:13:28', 0, 0, 10, 0, 0, 0, '2017-09-19'),
(131, 'https://www.amazon.com/gp/product/B000XI6O2W/ref=ox_sc_act_title_1?smid=ATVPDKIKX0DER&psc=1', 'Ordered', 'VG. 2 van 2', 'Sept. 21', NULL, 260, '2017-09-19 01:54:59', '2017-09-19 17:13:34', 32, 0, 10, 35.2, 3.2, 0, '2017-09-19'),
(132, 'https://www.amazon.com/gp/product/B074FSKQ7R/ref=ox_sc_act_title_1?smid=A39P2A7NILDH7B&psc=1', 'Ordered', 'VG.', 'Sept. 21, 2017', NULL, 261, '2017-09-19 01:57:24', '2017-09-19 17:01:55', 6.88, 0, 10, 7.57, 0.69, 0, '2017-09-19'),
(133, 'https://www.midwestgunworks.com/product-display.html?Product_Code=ZZ07', 'Declined', 'VG.  .22 Caliber', '0', NULL, 32, '2017-09-20 18:59:08', '2017-09-23 19:15:47', 24.99, 0, 10, 27.49, 2.5, 0, '2017-09-20'),
(134, 'http://www.ebay.com/itm/262915262165', 'Declined', 'VG.  1 van 2', 'geen voorraad 17,92', NULL, 71, '2017-09-21 00:29:34', '2017-09-23 18:07:36', 0, 0, 10, 0, 0, 0, '2017-09-20'),
(135, 'http://www.ebay.com/itm/311689296144', 'Accepted', 'VG. 2 van 2', '0', 3107, 71, '2017-09-21 00:30:18', '2017-09-23 18:08:15', 30.87, 0, 10, 33.96, 3.09, 0, '2017-09-23'),
(136, 'Paypal Overmaking', 'Accepted', 'VG.  Email: nigel.adrian2011@hotmail.com', '0', 3107, 75, '2017-09-21 01:20:28', '2017-09-23 05:09:34', 80, 0, 10, 88, 8, 0, '2017-09-23'),
(137, 'https://www.amazon.com/gp/product/B01MS4K69D/ref=ox_sc_act_title_1?smid=A28L7QEHY66CJL&psc=1', 'Ordered', 'KW kleur wit  maat 9', 'Sept. 28', NULL, 180, '2017-09-21 19:01:39', '2017-09-23 18:14:24', 83.96, 0, 10, 92.36, 8.4, 0, '2017-09-23'),
(138, 'https://www.amazon.com/gp/product/B01M72GECE/ref=ox_sc_act_title_1?smid=A2BMBHD2OU3XDU&psc=1', 'Ordered', 'kw  maat 8.5   kleur blu', 'Sept. 26', NULL, 64, '2017-09-21 22:00:24', '2017-09-23 18:14:14', 27.94, 0, 10, 30.73, 2.79, 0, '2017-09-23'),
(139, 'http://www.maccosmetics.com/product/13840/1573/products/makeup/eyes/shadow/pro-longwear-paint-pot#/shade/Soft_Ochre', 'Accepted', 'VG.  Color: Soft Orche', '0', 3107, 156, '2017-09-21 23:34:29', '2017-09-23 18:42:36', 23.54, 0, 10, 25.89, 2.35, 0, '2017-09-23'),
(140, 'https://www.simplydresses.com/shop/viewitem-pd1393725#', 'Accepted', 'VG.  Color: Navy / Size: 2XL', '0', 3107, 152, '2017-09-22 19:43:20', '2017-09-23 18:50:24', 99, 0, 10, 108.9, 9.9, 0, '2017-09-23'),
(141, 'https://www.amazon.com/gp/product/B0746DBP9N/ref=ox_sc_act_title_1?smid=A2Q9SQG3JKHPCO&psc=1', 'Accepted', 'kw 1-3', '0', 3107, 261, '2017-09-22 20:44:41', '2017-09-23 18:17:53', 0, 0, 10, 0, 0, 0, '2017-09-23'),
(142, 'ttps://www.amazon.com/gp/product/B06ZZ2N8YN/ref=ox_sc_act_title_2?smid=A1IFOG77Q1KUXW&psc=1', 'Accepted', 'kw   2-3', '0', 3107, 261, '2017-09-22 20:45:24', '2017-09-23 18:18:04', 0, 0, 10, 0, 0, 0, '2017-09-23'),
(143, 'https://www.amazon.com/gp/product/B0748GSCJC/ref=ox_sc_act_title_3?smid=A3LQ2UI4ZNJUUL&psc=1', 'Accepted', 'kw   3-3', '0', 3107, 261, '2017-09-22 21:22:57', '2017-09-23 18:17:58', 39.07, 0, 10, 42.98, 3.91, 0, '2017-09-23'),
(144, 'https://www.walmart.com/ip/Elgato-Game-Capture-HD60/41483279', 'Ordered', 'KW', 'Tue, Oct 3', NULL, 266, '2017-09-23 19:11:27', '2017-09-23 19:20:49', 149.95, 0, 10, 164.94, 14.99, 0, '2017-09-23'),
(145, 'https://www.amazon.com/gp/product/B01M24QYPN/ref=ox_sc_act_title_1?smid=A2S2CR3TJCZSN5&psc=1', 'Accepted', 'VG.', '0', 3107, 267, '2017-09-23 21:27:58', '2017-09-25 17:35:58', 44.61, 0, 10, 49.07, 4.46, 0, '2017-09-25'),
(146, 'http://www.ebay.com/itm/112554374974', 'Accepted', 'KW', '0', 3107, 268, '2017-09-25 16:49:08', '2017-09-25 17:40:59', 33.81, 0, 10, 37.19, 3.38, 0, '2017-09-25'),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `shipment_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `status` enum('accepted','progress','shipped','delivered','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'accepted',
  `warehouse_id` int(11) NOT NULL,
  `week` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipment_type` enum('eco','air','sea') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'eco',
  `weight` double NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parts` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `packages`
--

INSERT INTO `packages` (`id`, `tracking_number`, `barcode`, `content`, `customer_id`, `first_name`, `last_name`, `shipment_id`, `employee_id`, `status`, `warehouse_id`, `week`, `created_at`, `updated_at`, `shipment_type`, `weight`, `location`, `parts`) VALUES
(46, 'RPCM-50FF-B427-9A37', '420330329400116901681202340865', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 08:39:53', '2017-04-17 08:39:53', 'air', 0, '', 1),
(48, 'RPCM-4C33-A351-B71A', '420330329361289677090083510899', NULL, 26, 'K', 'Zeng', 41, 2, 'accepted', 1, 16, '2017-04-17 08:44:44', '2017-04-17 08:44:44', 'air', 0, '', 1),
(49, 'RPCM-9C78-3B60-AE84', 'KWTBS7031195361YQ', NULL, 27, 'Viraj', 'Gajadien', 34, 2, 'accepted', 1, 16, '2017-04-17 08:48:32', '2017-04-17 08:48:32', 'air', 0, '', 1),
(50, 'RPCM-E484-D486-8804', '420330329300120111401532784039', NULL, 27, 'Viraj', 'Gajadien', 34, 2, 'accepted', 1, 16, '2017-04-17 08:48:43', '2017-04-17 08:48:43', 'air', 0, '', 1),
(51, 'RPCM-A155-373A-5891', '420330329400111899223139649027', NULL, 27, 'Viraj', 'Gajadien', 34, 2, 'accepted', 1, 16, '2017-04-17 08:48:55', '2017-04-17 08:48:55', 'air', 0, '', 1),
(52, 'RPCM-2BFB-A1E3-4E70', 'tea', 'RPCM-2BFB-A1E3-4E70', 28, 'Kelly', 'Wong', 42, 2, 'accepted', 1, 16, '2017-04-17 08:55:49', '2017-04-27 21:08:35', 'air', 0, '', 1),
(53, 'RPCM-1562-7316-7B72', '9300120111401532121346', NULL, 29, 'Vishal', 'Naipal', 43, 2, 'accepted', 1, 16, '2017-04-17 08:58:40', '2017-04-17 08:58:40', 'air', 0, '', 1),
(54, 'RPCM-E479-E7D2-3C18', '420330329274899991109826081459', NULL, 30, 'Jenny', 'Deng Lau', 44, 2, 'accepted', 1, 16, '2017-04-17 09:02:08', '2017-04-17 09:02:08', 'air', 0, '', 1),
(55, 'RPCM-0C77-6359-147F', '9305520111401531546754', NULL, 30, 'Jenny', 'Deng Lau', 44, 2, 'accepted', 1, 16, '2017-04-17 09:02:37', '2017-04-17 09:02:37', 'air', 0, '', 1),
(56, 'RPCM-7213-9246-D487', 'LW075305139CN', NULL, 31, 'Margarita', 'Kartodimedjo', 45, 2, 'accepted', 1, 16, '2017-04-17 09:04:15', '2017-04-17 09:04:15', 'air', 0, '', 1),
(57, 'RPCM-5E1D-BE3D-76BE', '420330329405511899564188564156', NULL, 32, 'Sybrano', 'Harris', 46, 2, 'accepted', 1, 16, '2017-04-17 09:09:40', '2017-04-17 09:09:40', 'air', 0, '', 1),
(58, 'RPCM-9020-E963-593A', '1ZE356F84230760839', NULL, 32, 'Sybrano', 'Harris', 46, 2, 'accepted', 1, 16, '2017-04-17 09:09:56', '2017-04-17 09:09:56', 'air', 0, '', 1),
(59, 'RPCM-8BEC-42CA-0FE3', '420330329400110200882365276404', NULL, 33, 'Steven', 'Wong', 36, 2, 'accepted', 1, 16, '2017-04-17 09:12:29', '2017-04-17 09:12:29', 'air', 0, '', 1),
(60, 'RPCM-CABC-0547-ED8B', '420330329374889677090081972244', NULL, 34, 'Geeta', 'Jairam', 51, 2, 'accepted', 1, 16, '2017-04-17 09:13:35', '2017-04-17 09:13:35', 'air', 0, '', 1),
(62, 'RPCM-70E5-CD1B-2EAB', '72103911746', NULL, 36, 'Imraan', 'Soebhaan', 49, 2, 'accepted', 1, 16, '2017-04-17 09:19:40', '2017-04-17 09:19:40', 'air', 0, '', 1),
(63, 'RPCM-F40D-2AE2-A458', '1Z377R950307614767', NULL, 36, 'Imraan', 'Soebhaan', 49, 2, 'accepted', 1, 16, '2017-04-17 09:20:02', '2017-04-17 09:20:02', 'air', 0, '', 1),
(64, 'RPCM-CD10-4329-C5F4', '1Z377R950307655964', NULL, 36, 'Imraan', 'Soebhaan', 49, 2, 'accepted', 1, 16, '2017-04-17 09:20:18', '2017-04-17 09:20:18', 'air', 0, '', 1),
(65, 'RPCM-DA03-BBD9-999D', '707635553550', NULL, 36, 'Imraan', 'Soebhaan', 49, 2, 'accepted', 1, 16, '2017-04-17 09:20:49', '2017-04-17 09:20:49', 'air', 0, '', 1),
(66, 'RPCM-1F27-C70F-1593', '420330329374889677090081265926', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:34:31', '2017-04-17 09:34:31', 'air', 0, '', 1),
(67, 'RPCM-42E9-A2FC-C3EC', '9274899999933018040045', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:35:07', '2017-04-17 09:35:07', 'air', 0, '', 1),
(68, 'RPCM-AC5F-E500-55A8', 'lift envelop', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:35:25', '2017-04-17 09:35:25', 'air', 0, '', 1),
(69, 'RPCM-46B4-E405-6892', '420330329405509699939847568834', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:35:44', '2017-04-17 09:35:44', 'air', 0, '', 1),
(70, 'RPCM-82EF-CF35-77B1', '420330329400110200882363708112', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:35:58', '2017-04-17 09:35:58', 'air', 0, '', 1),
(71, 'RPCM-26A1-774E-6D3C', '420330329400111699000011017011', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:36:10', '2017-04-17 09:36:10', 'air', 0, '', 1),
(72, 'RPCM-2873-08BD-37A1', '420330329361289677090083001700', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:36:28', '2017-04-17 09:36:28', 'air', 0, '', 1),
(73, 'RPCM-E9C6-C47E-D053', '1ZW047130350601405', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:37:34', '2017-04-17 09:37:34', 'air', 0, '', 1),
(74, 'RPCM-A7EF-EB45-9A67', '420330329361289677090083569873', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:38:07', '2017-04-17 09:38:07', 'air', 0, '', 1),
(75, 'RPCM-9C51-F1F8-D8AF', '1Z7505F30397055640', NULL, 24, 'Yeung', 'Lai', 35, 2, 'accepted', 1, 16, '2017-04-17 09:38:35', '2017-04-17 09:38:35', 'air', 0, '', 1),
(77, 'RPCM-C46A-6CB0-017B', '9374889677090082110690', NULL, 37, 'Steven', 'Lo Fo Sang', 52, 2, 'accepted', 1, 16, '2017-04-18 08:56:48', '2017-04-18 08:56:48', 'air', 0, '', 1),
(78, 'RPCM-335F-EAB7-F8DB', '9400111699000034039892', NULL, 37, 'Steven', 'Lo Fo Sang', 52, 2, 'accepted', 1, 16, '2017-04-18 08:57:26', '2017-04-18 08:57:26', 'air', 0, '', 1),
(80, 'RPCM-0C6B-00A0-C9FC', 'LW099466586CN', NULL, 25, 'Priya', 'Soekra', 64, 2, 'accepted', 1, 16, '2017-04-19 19:47:48', '2017-04-19 19:47:48', 'air', 0, '', 1),
(81, 'RPCM-9CDD-3312-446E', '420330329274899998439300741351', NULL, 38, 'Wahida', 'Dedters', 56, 2, 'accepted', 1, 16, '2017-04-19 19:48:13', '2017-04-19 19:48:13', 'air', 0, '', 1),
(82, 'RPCM-CB01-75AB-2CCB', '9400111699000033809939', NULL, 35, 'Milton', 'Ritfeld', 68, 2, 'accepted', 1, 16, '2017-04-19 19:48:48', '2017-04-19 19:48:48', 'air', 0, '', 1),
(83, 'RPCM-5A83-50F0-19BE', 'LW074183694CN', NULL, 31, 'Margarita', 'Kartodimedjo', 63, 2, 'accepted', 1, 16, '2017-04-19 19:49:32', '2017-04-19 19:49:32', 'air', 0, '', 1),
(84, 'RPCM-A525-3C3C-9D30', 'TBA242833064000', NULL, 39, 'Oscar', 'Puiot', 55, 2, 'accepted', 1, 16, '2017-04-19 19:49:56', '2017-04-19 19:49:56', 'air', 0, '', 1),
(85, 'RPCM-A9EC-680F-72E6', '4648415520', NULL, 26, 'K', 'Zeng', 61, 2, 'accepted', 1, 16, '2017-04-19 19:50:25', '2017-04-19 19:50:25', 'air', 0, '', 1),
(86, 'RPCM-E8A0-5404-2645', '1ZW709680320563942', NULL, 24, 'Yeung', 'Lai', 58, 2, 'accepted', 1, 16, '2017-04-19 19:50:57', '2017-04-19 19:50:57', 'air', 0, '', 1),
(88, 'RPCM-C9B2-3EAA-C245', '420330329361289677090085472973', NULL, 24, 'Yeung', 'Lai', 58, 2, 'accepted', 1, 16, '2017-04-19 19:52:15', '2017-04-19 19:52:15', 'air', 0, '', 1),
(89, 'RPCM-57D7-A69C-C3F3', '1Z4E09430314772357', NULL, 32, 'Sybrano', 'Harris', 54, 2, 'accepted', 1, 16, '2017-04-19 19:53:24', '2017-04-19 19:53:24', 'air', 0, '', 1),
(91, 'RPCM-FEDC-D872-C05E', '420330329200199999977481359453', NULL, 41, 'Timothy', 'Lui Kon Jean', 67, 7, 'accepted', 1, 16, '2017-04-19 23:34:09', '2017-04-19 23:34:09', 'air', 0, '', 1),
(93, 'RPCM-03AA-4B23-ACD5', '1ZW22A16YN03166413', NULL, 41, 'Timothy', 'Lui Kon Jean', 67, 7, 'accepted', 1, 16, '2017-04-19 23:34:39', '2017-04-19 23:34:39', 'air', 0, '', 1),
(94, 'RPCM-E80B-119E-FFE0', 'RF166947945CN', NULL, 42, 'vijay', 'roopram', 66, 7, 'accepted', 1, 16, '2017-04-19 23:34:54', '2017-04-19 23:34:54', 'air', 0, '', 1),
(95, 'RPCM-8140-7544-E66D', '420330329261290100160971434658', NULL, 43, 'parthenia', 'van ZIch', 65, 7, 'accepted', 1, 16, '2017-04-19 23:35:18', '2017-04-19 23:35:18', 'air', 0, '', 1),
(96, 'RPCM-F056-22D6-2EB8', '1Z377WF00307754475', NULL, 27, 'Viraj', 'Gajadien', 59, 7, 'accepted', 1, 16, '2017-04-19 23:35:33', '2017-04-19 23:35:33', 'air', 0, '', 1),
(97, 'RPCM-A0FA-E373-E075', '1Z306A450262134357', NULL, 24, 'Yeung', 'Lai', 58, 7, 'accepted', 1, 16, '2017-04-19 23:35:53', '2017-04-19 23:35:53', 'air', 0, '', 1),
(98, 'RPCM-D6EF-2990-46D5', '1Z4EX1570340674031', NULL, 26, 'K', 'Zeng', 61, 7, 'accepted', 1, 16, '2017-04-19 23:36:20', '2017-04-19 23:36:20', 'air', 0, '', 1),
(100, 'RPCM-08BC-8649-7D42', '1ZWX93600326800445', NULL, 45, 'Rudolf', 'Lie', 60, 7, 'accepted', 1, 16, '2017-04-21 00:16:58', '2017-04-21 00:16:58', 'air', 0, '', 1),
(101, 'RPCM-8F8E-8646-8FC9', 'TBA246757634000', NULL, 32, 'Sybrano', 'Harris', 54, 7, 'accepted', 1, 16, '2017-04-21 00:24:12', '2017-04-21 00:24:12', 'air', 0, '', 1),
(102, 'RPCM-E390-561D-B3D9', 'TBA246803637000', NULL, 32, 'Sybrano', 'Harris', 54, 7, 'accepted', 1, 16, '2017-04-21 00:24:34', '2017-04-21 00:24:34', 'air', 0, '', 1),
(104, 'RPCM-5640-8D7F-2C45', 'LW087109940CN', NULL, 25, 'Priya', 'Soekra', 64, 7, 'accepted', 1, 16, '2017-04-21 00:39:17', '2017-04-21 00:39:17', 'air', 0, '', 1),
(105, 'RPCM-1976-52D4-91CD', '1Z2FW2350311393420', NULL, 32, 'Sybrano', 'Harris', 54, 7, 'accepted', 1, 16, '2017-04-21 15:11:56', '2017-04-21 15:11:56', 'air', 0, '', 1),
(106, 'RPCM-78FE-6F98-D918', '420330329405509699938379618864', NULL, 24, 'Yeung', 'Lai', 58, 7, 'accepted', 1, 16, '2017-04-21 15:54:31', '2017-04-21 15:54:31', 'air', 0, '', 1),
(107, 'RPCM-86A2-A741-F6C4', '420330329405509699938379226182', NULL, 24, 'Yeung', 'Lai', 58, 7, 'accepted', 1, 16, '2017-04-21 16:03:00', '2017-04-21 16:03:00', 'air', 0, '', 1),
(108, 'RPCM-7C2C-C73C-63C1', '420330329405510200882373360044', NULL, 24, 'Yeung', 'Lai', 58, 7, 'accepted', 1, 16, '2017-04-21 16:07:25', '2017-04-21 16:07:25', 'air', 0, '', 1),
(109, 'RPCM-3B05-C4D6-173E', '1Z3Y13F50307541123', NULL, 45, 'Rudolf', 'Lie', 60, 7, 'accepted', 1, 16, '2017-04-21 16:08:29', '2017-04-21 16:08:29', 'air', 0, '', 1),
(110, 'RPCM-D6EA-C8EA-5C69', 'LW092380735CN', NULL, 25, 'Priya', 'Soekra', 64, 7, 'accepted', 1, 16, '2017-04-21 16:22:10', '2017-04-21 16:22:10', 'air', 0, '', 1),
(112, 'RPCM-6B8C-545A-42B0', 'LW093015107CN', NULL, 25, 'Priya', 'Soekra', 64, 7, 'accepted', 1, 16, '2017-04-22 20:52:09', '2017-04-22 20:52:09', 'air', 0, '', 1),
(113, 'RPCM-B900-4F3E-CD8F', '72117473210', NULL, 25, 'Priya', 'Soekra', 64, 7, 'accepted', 1, 16, '2017-04-22 20:52:21', '2017-04-22 20:52:21', 'air', 0, '', 1),
(211, '420330329261293150281630256292', '420330329261293150281630256292', NULL, 36, 'Raihaan', 'Soebhan', 123, 7, 'accepted', 1, 19, '2017-05-03 12:24:48', '2017-05-03 12:24:48', 'air', 0, '', 1),
(212, 'TB 156909947000', 'TB 156909947000', NULL, 64, 'Giliano', 'Todikromo', 120, 7, 'accepted', 1, 19, '2017-05-03 12:26:48', '2017-05-03 12:26:48', 'air', 0, '', 1),
(213, 'KWTBS7032712039YQ', 'KWTBS7032712039YQ', NULL, 36, 'Raihaan', 'Soebhan', 123, 7, 'accepted', 1, 19, '2017-05-03 12:27:53', '2017-05-03 12:27:53', 'air', 0, '', 1),
(214, 'TBA257458039000', 'TBA257458039000', NULL, 24, 'Yeung', 'Lai', 126, 7, 'accepted', 1, 19, '2017-05-03 12:28:12', '2017-05-03 12:28:12', 'air', 0, '', 1),
(215, '420330329400111699000683136812', '420330329400111699000683136812', NULL, 24, 'Yeung', 'Lai', 126, 7, 'accepted', 1, 19, '2017-05-03 12:28:32', '2017-05-03 12:28:32', 'air', 0, '', 1),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `buy_price` double(10,2) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `webshop` tinyint(1) NOT NULL DEFAULT 1,
  `employee_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`buy_price`, `id`, `image`, `title`, `price`, `description`, `stock`, `webshop`, `employee_id`, `created_at`, `updated_at`) VALUES
(1212.00, 1, 'uploads/2017-09/cog-wheel-silhouette.png', '12123', 1212.00, '<p>12</p>', 12, 0, 8, '2017-09-13 08:15:31', NULL),
(21345.00, 2, 'uploads/2017-09/employeesicon200.jpg', 'Bovenliggende Kraan', 21345.00, '<p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">Dear Mr. Ket Lai,</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">We thank you for your highly appreciated request,</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">We offer you the following without obligation:</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">1x new Demag craneset with the construction of a new overhead crane 6 meters and 5 tons</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">Lifting capacity: 5,000 kg</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">lift height: 6 meters</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">hoist: 4.5 &amp; 0.8 m / min</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">Crash: 6 &amp; 24 m / min</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">crane ride: 5 &amp; 20 m / min</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">control: relay control 400V / 50Hz 42v</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">Operation: Cable control along the beam</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">1x 20 meter power rails new</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">all complete for the total price of Eur. 22,045, -</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">delivery includes:</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">- montage</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif; color: rgb(31, 73, 125);\"><img width=\"375\" height=\"220\" id=\"m_4090494061092185809gmail-m_-1347242171633868833_x0000_i1037\" src=\"https://mail.google.com/mail/u/0/?ui=2&amp;ik=f7d76c637b&amp;view=fimg&amp;th=15e5c2d992d36950&amp;attid=0.1&amp;disp=emb&amp;realattid=dd06518e46b7f975_0.0.2&amp;attbid=ANGjdJ9a4sRY-TsIDoYgj10MsW1EcQbb_2ED7DK2EzqiWxpdvoNIfXbTFsIYGKOJpKEPrx9viUE7iz8Xl-rjUjhi53eeuIyYpWX-V_8I8KezmvpI32Ts3tbVucFXsCc&amp;sz=w750-h440&amp;ats=1505565082663&amp;rm=15e5c2d992d36950&amp;zw&amp;atsh=1\" alt=\"Beschrijving: http://www.janreiling.nl/upload/23c924_kraan-08.jpg\" class=\"m_4090494061092185809gmail-CToWUd m_4090494061092185809gmail-a6T CToWUd a6T\" tabindex=\"0\" style=\"cursor: pointer; outline: 0px;\"><u></u><u></u></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif; color: rgb(31, 73, 125);\"><u></u>&nbsp;<u></u></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 10pt; font-family: Arial, sans-serif; color: rgb(31, 73, 125);\"><u></u>&nbsp;</span><span style=\"font-size: 12.8px;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">A kraanset is a complete crane with everything on it and installed.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\">If there is any doubt, please do not hesitate to contact me<br></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">Best regards,</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12.8px;\">Vijay Roopram</span></p>', 0, 0, 8, '2017-09-16 16:55:02', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `providers`
--

INSERT INTO `providers` (`id`, `name`, `description`, `created_at`, `updated_at`, `fee`) VALUES
(1, 'Amazone giftcard', 'Fee 3 %', '2017-08-25 23:50:18', '2017-08-25 19:50:18', 3),
(3, 'Paypal uit betaling Cash', 'Fee 7 %', '2018-01-04 20:51:04', '2018-01-05 01:51:04', -7),
(4, 'Paypal Top-up', 'Fee 10 %', '2017-09-23 13:55:51', '2017-09-23 17:55:51', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `height` double(10,2) DEFAULT NULL,
  `width` double(10,2) DEFAULT NULL,
  `depth` double(10,2) DEFAULT NULL,
  `weight` double(10,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `destination_warehouse_id` int(11) NOT NULL,
  `shipment_type` enum('sea','air','eco') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sea',
  `week` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_per_inch` double(10,2) DEFAULT NULL,
  `price_per_lbs` double(10,2) DEFAULT NULL,
  `parts` int(11) NOT NULL,
  `extrafee` double(10,2) DEFAULT NULL,
  `status` enum('packed','transit','delivered','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'packed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `shipments`
--

INSERT INTO `shipments` (`id`, `barcode`, `tracking_number`, `customer_id`, `employee_id`, `height`, `width`, `depth`, `weight`, `currency`, `price`, `warehouse_id`, `destination_warehouse_id`, `shipment_type`, `week`, `created_at`, `updated_at`, `price_per_inch`, `price_per_lbs`, `parts`, `extrafee`, `status`) VALUES
(34, 'RPCM-D413-97EB-984F', 'RPCM-D413-97EB-984F', 27, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-17 10:52:24', '2017-04-18 19:24:43', NULL, 3.49, 1, 0.00, 'completed'),
(35, 'RPCM-E2F3-BA25-3BA4', 'RPCM-E2F3-BA25-3BA4', 24, 2, 0.00, 0.00, 0.00, 40.00, 'USD', 139.60, 1, 1, 'air', 16, '2017-04-17 11:00:43', '2017-05-03 11:49:00', NULL, 3.49, 3, 0.00, 'packed'),
(36, 'RPCM-5DCF-6107-7838', 'RPCM-5DCF-6107-7838', 33, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-17 11:01:00', '2017-04-19 18:03:39', NULL, 3.49, 1, 0.00, 'completed'),
(40, 'RPCM-F974-7C11-8E5C', 'RPCM-F974-7C11-8E5C', 25, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-17 11:01:34', '2017-04-27 14:05:10', NULL, 3.49, 1, 0.00, 'completed'),
(41, 'RPCM-96DA-8CDE-94F6', 'RPCM-96DA-8CDE-94F6', 26, 2, 0.00, 0.00, 0.00, 2.00, 'USD', 6.00, 1, 1, 'eco', 16, '2017-04-17 11:01:51', '2017-04-19 20:30:44', NULL, 3.49, 1, 0.00, 'completed'),
(42, 'RPCM-069C-B6C2-D4D1', 'RPCM-069C-B6C2-D4D1', 28, 2, 0.00, 0.00, 0.00, 0.00, 'USD', 0.00, 1, 1, 'air', 16, '2017-04-17 11:01:56', '2017-04-18 19:25:53', NULL, 3.49, 1, 0.00, 'completed'),
(43, 'RPCM-CF75-BAE3-693B', 'RPCM-CF75-BAE3-693B', 29, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-17 11:02:09', '2017-04-20 18:51:33', NULL, 3.49, 1, 0.00, 'completed'),
(44, 'RPCM-1AF7-9951-3022', 'RPCM-1AF7-9951-3022', 30, 2, 0.00, 0.00, 0.00, 3.00, 'USD', 10.47, 1, 1, 'air', 16, '2017-04-17 11:02:25', '2017-04-19 17:59:27', NULL, 3.49, 1, 0.00, 'completed'),
(45, 'RPCM-C4BA-EFE0-D48A', 'RPCM-C4BA-EFE0-D48A', 31, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-17 11:02:34', '2017-04-19 19:16:53', NULL, 3.49, 1, 0.00, 'completed'),
(46, 'RPCM-234E-AB91-4D68', 'RPCM-234E-AB91-4D68', 32, 2, 0.00, 0.00, 0.00, 7.00, 'USD', 21.00, 1, 1, 'eco', 16, '2017-04-17 11:03:03', '2017-04-20 13:25:17', NULL, 3.49, 1, 0.00, 'completed'),
(48, 'RPCM-FA13-A054-5B03', 'RPCM-FA13-A054-5B03', 35, 2, 0.00, 0.00, 0.00, 25.00, 'USD', 87.25, 1, 1, 'air', 16, '2017-04-17 11:03:41', '2017-04-28 19:17:24', NULL, 3.49, 1, 0.00, 'completed'),
(49, 'RPCM-38C5-E710-5C35', 'RPCM-38C5-E710-5C35', 36, 2, 0.00, 0.00, 0.00, 0.00, 'USD', 0.00, 1, 1, 'air', 16, '2017-04-17 11:04:10', '2017-04-20 12:16:00', NULL, 3.49, 1, 0.00, 'completed'),
(51, 'RPCM-C2EC-28BA-A67E', 'RPCM-C2EC-28BA-A67E', 34, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-18 08:58:00', '2017-04-19 13:58:11', NULL, 3.49, 1, 0.00, 'completed'),
(52, 'RPCM-4A4B-1B76-6775', 'RPCM-4A4B-1B76-6775', 37, 2, 0.00, 0.00, 0.00, 2.00, 'USD', 6.98, 1, 1, 'air', 16, '2017-04-18 08:58:19', '2017-04-18 10:23:02', NULL, 3.49, 2, 0.00, 'completed'),
(53, 'RPCM-4653-2166-5278', 'RPCM-4653-2166-5278', 40, 2, 0.00, 0.00, 0.00, 34.00, 'USD', 102.00, 1, 1, 'eco', 16, '2017-04-19 20:15:05', '2017-04-19 20:30:27', NULL, 3.00, 1, 0.00, 'completed'),
(54, 'RPCM-2A06-6952-AC78', 'RPCM-2A06-6952-AC78', 32, 7, 0.00, 0.00, 0.00, 6.00, 'USD', 18.00, 1, 1, 'air', 16, '2017-04-22 20:35:21', '2017-04-27 13:48:41', NULL, 3.49, 2, 0.00, 'completed'),
(55, 'RPCM-0ED0-B806-7A83', 'RPCM-0ED0-B806-7A83', 39, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-22 20:38:00', '2017-04-26 19:21:49', NULL, 3.49, 1, 0.00, 'completed'),
(56, 'RPCM-116B-8B88-B426', 'RPCM-116B-8B88-B426', 38, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-22 20:38:55', '2017-04-29 12:59:18', NULL, 3.49, 1, 0.00, 'completed'),
(58, 'RPCM-6652-56C3-A320', 'RPCM-6652-56C3-A320', 24, 7, 0.00, 0.00, 0.00, 61.00, 'USD', 212.89, 1, 1, 'air', 16, '2017-04-22 20:41:02', '2017-04-26 09:51:13', NULL, 3.49, 4, 0.00, 'completed'),
(59, 'RPCM-D80F-E1D6-3C3A', 'RPCM-D80F-E1D6-3C3A', 27, 7, 0.00, 0.00, 0.00, 4.00, 'USD', 13.96, 1, 1, 'air', 16, '2017-04-22 20:42:16', '2017-04-26 15:54:40', NULL, 3.49, 1, 0.00, 'completed'),
(60, 'RPCM-0434-8539-D222', 'RPCM-0434-8539-D222', 45, 7, 0.00, 0.00, 0.00, 6.00, 'USD', 20.94, 1, 1, 'air', 16, '2017-04-22 20:42:58', '2017-04-26 18:04:24', NULL, 3.49, 1, 0.00, 'completed'),
(61, 'RPCM-CB7C-6D7C-74D2', 'RPCM-CB7C-6D7C-74D2', 26, 7, 0.00, 0.00, 0.00, 55.00, 'USD', 165.00, 1, 1, 'air', 16, '2017-04-22 20:44:11', '2017-04-27 16:59:32', NULL, 3.49, 3, 0.00, 'completed'),
(63, 'RPCM-7BEF-16FE-7B04', 'RPCM-7BEF-16FE-7B04', 31, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-22 20:49:37', '2017-05-03 20:45:13', NULL, 3.49, 1, 0.00, 'completed'),
(64, 'RPCM-4D85-C5CE-07F9', 'RPCM-4D85-C5CE-07F9', 25, 7, 0.00, 0.00, 0.00, 3.00, 'USD', 10.47, 1, 1, 'air', 16, '2017-04-22 20:53:04', '2017-04-27 14:06:43', NULL, 3.49, 1, 0.00, 'completed'),
(65, 'RPCM-7298-7E7A-D158', 'RPCM-7298-7E7A-D158', 43, 7, 0.00, 0.00, 0.00, 2.00, 'USD', 6.98, 1, 1, 'air', 16, '2017-04-22 20:53:49', '2017-04-26 16:52:50', NULL, 3.49, 1, 0.00, 'completed'),
(66, 'RPCM-3338-5E37-7E25', 'RPCM-3338-5E37-7E25', 42, 7, 0.00, 0.00, 0.00, 2.00, 'USD', 6.98, 1, 1, 'air', 16, '2017-04-22 20:54:33', '2017-05-01 21:08:58', NULL, 3.49, 1, 0.00, 'delivered'),
(67, 'RPCM-029F-9F9F-5775', 'RPCM-029F-9F9F-5775', 41, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-22 20:55:40', '2017-04-26 15:47:16', NULL, 3.49, 1, 0.00, 'completed'),
(68, 'RPCM-C76E-A46B-D6D0', 'RPCM-C76E-A46B-D6D0', 35, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 16, '2017-04-22 21:05:01', '2017-04-28 19:15:40', NULL, 3.49, 1, 0.00, 'completed'),
(80, 'RPCM-2017-0000-0080', 'RPCM-2017-0000-0080', 40, 2, 0.00, 0.00, 0.00, 1.00, 'USD', 57.79, 1, 1, 'air', 16, '2017-04-24 21:20:38', '2017-05-01 21:06:35', NULL, 3.49, 1, 54.30, 'completed'),
(114, 'RPCM-2017-0000-0114', 'RPCM-2017-0000-0114', 73, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 19, '2017-05-08 10:39:08', '2017-07-05 13:57:35', NULL, 3.49, 1, 0.00, 'completed'),
(115, 'RPCM-2017-0000-0115', 'RPCM-2017-0000-0115', 32, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 19, '2017-05-08 10:40:17', '2017-05-11 11:45:23', NULL, 3.49, 1, 0.00, 'completed'),
(116, 'RPCM-2017-0000-0116', 'RPCM-2017-0000-0116', 26, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 19, '2017-05-08 10:41:40', '2017-05-11 18:10:22', NULL, 3.49, 1, 0.00, 'completed'),
(117, 'RPCM-2017-0000-0117', 'RPCM-2017-0000-0117', 66, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 19, '2017-05-08 10:42:41', '2017-05-11 20:13:51', NULL, 3.49, 1, 0.00, 'completed'),
(118, 'RPCM-2017-0000-0118', 'RPCM-2017-0000-0118', 27, 7, 0.00, 0.00, 0.00, 2.00, 'USD', 6.98, 1, 1, 'air', 19, '2017-05-08 10:44:30', '2017-05-15 11:39:36', NULL, 3.49, 1, 0.00, 'completed'),
(120, 'RPCM-2017-0000-0119', 'RPCM-2017-0000-0119', 64, 7, 0.00, 0.00, 0.00, 1.00, 'USD', 3.49, 1, 1, 'air', 19, '2017-05-08 10:47:09', '2017-05-11 20:05:52', NULL, 3.49, 1, 0.00, 'completed'),
(121, 'RPCM-2017-0000-0121', 'RPCM-2017-0000-0121', 56, 7, 0.00, 0.00, 0.00, 3.00, 'USD', 10.47, 1, 1, 'air', 19, '2017-05-08 10:59:46', '2017-05-12 18:49:58', NULL, 3.49, 1, 0.00, 'completed'),
(122, 'RPCM-2017-0000-0122', 'RPCM-2017-0000-0122', 25, 7, 0.00, 0.00, 0.00, 3.00, 'USD', 10.00, 1, 1, 'air', 19, '2017-05-08 11:04:19', '2017-05-11 16:31:03', NULL, 3.49, 2, 0.00, 'completed'),
(123, 'RPCM-2017-0000-0123', 'RPCM-2017-0000-0123', 36, 7, 0.00, 0.00, 0.00, 4.00, 'USD', 13.96, 1, 1, 'air', 19, '2017-05-08 11:06:59', '2017-05-11 14:49:45', NULL, 3.49, 1, 0.00, 'completed'),
(125, 'RPCM-2017-0000-0125', 'RPCM-2017-0000-0125', 55, 7, 0.00, 0.00, 0.00, 2.00, 'USD', 6.98, 1, 1, 'air', 19, '2017-05-08 11:13:44', '2017-05-11 14:30:44', NULL, 3.49, 1, 0.00, 'completed'),
(126, 'RPCM-2017-0000-0126', 'RPCM-2017-0000-0126', 24, 7, 0.00, 0.00, 0.00, 40.00, 'USD', 139.60, 1, 1, 'air', 19, '2017-05-08 11:16:47', '2017-05-11 10:13:49', NULL, 3.49, 6, 0.00, 'completed'),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shipment_types`
--

CREATE TABLE `shipment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `transactions`
--

CREATE TABLE `transactions` (
  `invoice_number` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `total` double(10,2) NOT NULL,
  `paid` double(10,2) NOT NULL,
  `change` double(10,2) NOT NULL,
  `usd` double(10,2) NOT NULL,
  `eur` double(10,2) NOT NULL,
  `srd` double(10,2) NOT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `transactions`
--

INSERT INTO `transactions` (`invoice_number`, `comment`, `product_id`, `id`, `total`, `paid`, `change`, `usd`, `eur`, `srd`, `signature`, `shipment_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(NULL, NULL, NULL, 1, 33.92, 50.00, -16.08, 50.00, 0.00, 0.00, NULL, 1, 1, '2017-03-28 07:55:36', '2017-03-28 07:55:36'),
(NULL, NULL, NULL, 2, 3.00, 31.00, -28.00, 31.00, 0.00, 0.00, NULL, 6, 1, '2017-04-14 09:28:35', '2017-04-14 09:28:35'),
(NULL, NULL, NULL, 3, 12.00, 100.00, -88.00, 100.00, 0.00, 0.00, NULL, 7, 1, '2017-04-14 10:20:09', '2017-04-14 10:20:09'),
(NULL, NULL, NULL, 4, 3.00, 3.00, 0.00, 3.00, 0.00, 0.00, NULL, 10, 15, '2017-04-14 13:08:18', '2017-04-14 13:08:18'),
(NULL, NULL, NULL, 5, 6.98, 10.00, -3.02, 10.00, 0.00, 0.00, NULL, 33, 22, '2017-04-17 10:38:20', '2017-04-17 10:38:20'),
(NULL, NULL, NULL, 6, 6.98, 7.00, -0.02, 7.00, 0.00, 0.00, NULL, 52, 37, '2017-04-18 10:23:02', '2017-04-18 10:23:02'),
(NULL, NULL, NULL, 7, 139.60, 140.00, -0.40, 140.00, 0.00, 0.00, NULL, 35, 24, '2017-04-18 19:21:41', '2017-04-18 19:21:41'),
(NULL, NULL, NULL, 8, 3.49, 20.00, -16.51, 20.00, 0.00, 0.00, NULL, 34, 27, '2017-04-18 19:24:43', '2017-04-18 19:24:43'),
(NULL, NULL, NULL, 9, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 42, 28, '2017-04-18 19:25:53', '2017-04-18 19:25:53'),
(NULL, NULL, NULL, 10, 3.49, 30.00, -26.51, 0.00, 0.00, 30.00, NULL, 51, 34, '2017-04-19 13:58:11', '2017-04-19 13:58:11'),
(NULL, NULL, NULL, 11, 10.47, 100.00, -89.53, 0.00, 0.00, 100.00, NULL, 44, 30, '2017-04-19 17:59:26', '2017-04-19 17:59:26'),
(NULL, NULL, NULL, 12, 3.49, 30.00, -26.51, 0.00, 0.00, 30.00, NULL, 36, 33, '2017-04-19 18:03:39', '2017-04-19 18:03:39'),
(NULL, NULL, NULL, 13, 6.98, 7.00, -0.02, 7.00, 0.00, 0.00, NULL, 41, 26, '2017-04-19 18:55:19', '2017-04-19 18:55:19'),
(NULL, NULL, NULL, 14, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, NULL, 45, 31, '2017-04-19 19:16:53', '2017-04-19 19:16:53'),
(NULL, NULL, NULL, 15, 102.00, 204.00, -102.00, 102.00, 0.00, 102.00, NULL, 53, 40, '2017-04-19 20:24:56', '2017-04-19 20:24:56'),
(NULL, NULL, NULL, 16, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 49, 36, '2017-04-20 12:16:00', '2017-04-20 12:16:00'),
(NULL, NULL, NULL, 17, 21.00, 42.00, -21.00, 21.00, 0.00, 21.00, NULL, 46, 32, '2017-04-20 13:25:17', '2017-04-20 13:25:17'),
(NULL, NULL, NULL, 18, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, NULL, 43, 29, '2017-04-20 18:51:33', '2017-04-20 18:51:33'),
(NULL, NULL, NULL, 19, 6.98, 7.00, -0.02, 7.00, 0.00, 0.00, NULL, 76, 46, '2017-04-24 13:37:14', '2017-04-24 13:37:14'),
(NULL, NULL, NULL, 20, 34.90, 34.90, 0.00, 34.90, 0.00, 0.00, NULL, 75, 46, '2017-04-24 13:38:12', '2017-04-24 13:38:12'),
(NULL, NULL, NULL, 21, 10.47, 10.50, -0.03, 10.50, 0.00, 0.00, NULL, 77, 46, '2017-04-24 13:39:01', '2017-04-24 13:39:01'),
(NULL, NULL, NULL, 22, 13.96, 13.97, -0.01, 13.97, 0.00, 0.00, NULL, 78, 46, '2017-04-24 13:41:58', '2017-04-24 13:41:58'),
(NULL, NULL, NULL, 23, 10.47, 120.00, -109.53, 0.00, 0.00, 120.00, NULL, 79, 46, '2017-04-24 13:43:15', '2017-04-24 13:43:15'),
(NULL, NULL, NULL, 24, 212.89, 213.00, -0.11, 213.00, 0.00, 0.00, NULL, 58, 24, '2017-04-26 09:51:13', '2017-04-26 09:51:13'),
(NULL, NULL, NULL, 25, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, NULL, 67, 41, '2017-04-26 15:47:16', '2017-04-26 15:47:16'),
(NULL, NULL, NULL, 26, 13.96, 14.00, -0.04, 14.00, 0.00, 0.00, NULL, 59, 27, '2017-04-26 15:54:40', '2017-04-26 15:54:40'),
(NULL, NULL, NULL, 27, 6.98, 7.00, -0.02, 7.00, 0.00, 0.00, NULL, 65, 43, '2017-04-26 16:52:50', '2017-04-26 16:52:50'),
(NULL, NULL, NULL, 28, 57.79, 58.00, -0.21, 58.00, 0.00, 0.00, NULL, 80, 40, '2017-04-26 17:34:32', '2017-04-26 17:34:32'),
(NULL, NULL, NULL, 29, 20.94, 21.00, -0.06, 21.00, 0.00, 0.00, NULL, 60, 45, '2017-04-26 18:04:24', '2017-04-26 18:04:24'),
(NULL, NULL, NULL, 30, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, NULL, 55, 39, '2017-04-26 19:21:49', '2017-04-26 19:21:49'),
(NULL, NULL, NULL, 31, 6.98, 8.86, -1.88, 0.00, 0.00, 70.00, 'data:image/png;base64,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', 66, 42, '2017-04-27 11:04:51', '2017-04-27 11:04:51'),
(NULL, NULL, NULL, 32, 18.00, 19.00, -1.00, 19.00, 0.00, 0.00, 'data:image/png;base64,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', 54, 32, '2017-04-27 13:48:41', '2017-04-27 13:48:41'),
(NULL, NULL, NULL, 33, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAElklEQVR4Xu3WUW0DQRAFwWckDgSHgRmEaiiEgcMgUCJL/jKD1tYimKsZte4yjwABAhGBS2ROYxIgQGCC5QgIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECFSC9bHta9vPtoe1ESBwpkAlWH/brq9YfZ65Kl9NgEAtWL/bbtZGgMCZApVgPSN13/a97fm35REgcKBAJVgHrsYnEyDwLiBYboIAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZgX8IYgiXjp+OHgAAAABJRU5ErkJggg==', 40, 25, '2017-04-27 14:05:10', '2017-04-27 14:05:10'),
(NULL, NULL, NULL, 34, 10.47, 11.00, -0.53, 11.00, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAFMUlEQVR4Xu3csa2TBxiF4XMniJgAMkFIlZYBQGGDiJ6ClEwQOsgeFBAmoE2VbJARGAFZ9yIbEfr/lR+Xtzp+zucj+8ryzTwIECAQEbiJ5BSTAAECM1iOgACBjIDBylQlKAECBssNECCQETBYmaoEJUDAYLkBAgQyAgYrU5WgBAgYLDdAgEBGwGBlqhKUAAGD5QYIEMgIGKxMVYISIGCw3AABAhkBg5WpSlACBAyWGyBAICNgsDJVCUqAgMFyAwQIZAQMVqYqQQkQMFjbg22/bvu47R8nQYDAcQUM1vbftvt3Y/XzcauSjAABg3UerH+3PXQSBAgcV8Bg3Y7Uo23vdjteHgQIHFTAYB20GLEIEPhWwGC5CgIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg3W+gafbftv2adufvkTqxUHgeAIG69zJly+Qnv7yfttpwDwIEDiQgME6l3F6Z/XDRTf37t5tHaguUQhct4DBOvf/17YnF+fwatvL6z4Pz57AsQQM1rmPD9seX9Tz97ZfjlWXNASuW8Bgnfs//VLDTxfncPqIePpY6EGAwEEEDNb3B+v0T/gfD9KTGAQIbDNY3x8sv97gJULgYAIG61zIi22vL/r5fdubg/UlDoGrFjBYX9f/fNuzbX9se3vVl+HJEziggME6YCkiESDw/wIGy2UQIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQIGyw0QIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQIGyw0QIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQIGyw0QIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQIGyw0QIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQIGyw0QIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQIGyw0QIJARMFiZqgQlQMBguQECBDICBitTlaAECBgsN0CAQEbAYGWqEpQAAYPlBggQyAgYrExVghIgYLDcAAECGQGDlalKUAIEDJYbIEAgI2CwMlUJSoCAwXIDBAhkBAxWpipBCRAwWG6AAIGMgMHKVCUoAQKfAY8nHZe15gmYAAAAAElFTkSuQmCC', 64, 25, '2017-04-27 14:06:43', '2017-04-27 14:06:43'),
(NULL, NULL, NULL, 35, 165.00, 165.00, 0.00, 165.00, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAEnklEQVR4Xu3UUU1EQRQFwbNKQAI4wAFWsYADcIAUssnyyfe8TmoUnNSd9G0eAQIEIgK3yE4zCRAgMMHyCQgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBOn+q523v2z63fZ2fYwGB6woI1vnb/Gx7esTq9fwcCwhcV0Cwzt/mL1jf217Oz7GAwHUFBOv8be6Retv2se0eL48AgX8EBMvXIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAgIVuZUhhIgIFj+AAECGQHBypzKUAIEBMsfIEAgIyBYmVMZSoCAYPkDBAhkBAQrcypDCRAQLH+AAIGMgGBlTmUoAQKC5Q8QIJAREKzMqQwlQECw/AECBDICgpU5laEECAiWP0CAQEZAsDKnMpQAAcHyBwgQyAj8Ag78CJe2F1nSAAAAAElFTkSuQmCC', 61, 26, '2017-04-27 16:59:31', '2017-04-27 16:59:31'),
(NULL, NULL, NULL, 36, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAEnUlEQVR4Xu3UUU0DQBRE0amSVgI4qINarQUcgAOkkCbwzefmJmcN7OTMy1zmESBAICJwieQUkwABAjNYjoAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg3XuBm7bHts+tn2ei+FnAh0Bg3Wuq+9t19+xej8Xw88EOgIG61xXf4P1te3tXAw/E+gIGKxzXb1G6r7tue01Xh4BAv8IGCwnQoBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgIDBcgMECGQEDFamKkEJEDBYboAAgYyAwcpUJSgBAgbLDRAgkBEwWJmqBCVAwGC5AQIEMgIGK1OVoAQIGCw3QIBARsBgZaoSlAABg+UGCBDICBisTFWCEiBgsNwAAQIZAYOVqUpQAgQMlhsgQCAjYLAyVQlKgMAPPy8Il397QjoAAAAASUVORK5CYII=', 68, 35, '2017-04-28 19:15:40', '2017-04-28 19:15:40'),
(NULL, NULL, NULL, 37, 87.25, 88.00, -0.75, 88.00, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAEn0lEQVR4Xu3WsU3EUBBF0beVQAnQAR3QKi1sB9ABpaCViDZxfL+OYwfjM6Mr3+YhQIBAROAWmdOYBAgQmGA5AgIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARkCwMqsyKAECguUGCBDICAhWZlUGJUBAsNwAAQIZAcHKrMqgBAgIlhsgQCAjIFiZVRmUAAHBcgMECGQEBCuzKoMSICBYboAAgYyAYGVWZVACBATLDRAgkBEQrMyqDEqAgGC5AQIEMgKClVmVQQkQECw3QIBARuDEYL1u+9x23/ad2YRBCRC4FDgxWL/bXv5j9X4p4AUCBDICJwfrZ9tbZhMGJUDgUuDEYD0i9bHta9vjb8tDgMAhAicG65DV+AwCBJ4FBMtNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAgT+PRwiXJk0xKQAAAABJRU5ErkJggg==', 48, 35, '2017-04-28 19:17:24', '2017-04-28 19:17:24'),
(NULL, NULL, NULL, 38, 3.49, 3.49, 0.00, 3.49, 0.00, 0.00, 'data:image/png;base64,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', 81, 53, '2017-04-29 00:38:25', '2017-04-29 00:38:25'),
(NULL, NULL, NULL, 39, 3.49, 4.00, -0.51, 4.00, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAElUlEQVR4Xu3WUU0DQBBF0VclRUJxUAdYxQIOigOkkCb9qoObPatgcmZys5d5BAgQiAhcInMakwABAhMsR0CAQEZAsDKrMigBAoLlBggQyAgIVmZVBiVAQLDcAAECGQHByqzKoAQICJYbIEAgIyBYmVUZlAABwXIDBAhkBAQrsyqDEiAgWG6AAIGMgGBlVmVQAgQEyw0QIJAREKzMqgxKgIBguQECBDICgpVZlUEJEBAsN0CAQEZAsDKrMigBAoLlBggQyAgIVmZVBiVAQLDcAAECGQHByqzKoAQICJYbIEAgIyBYmVUZlAABwXIDBAhkBAQrsyqDEiBwarA+tn1t+9n2cAYECDQETg3W37brK1afjVWZkgCB04P1u+3mDAgQaAicGqxnpO7bvrc9f1seAQIBgVODFViNEQkQeBcQLDdBgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhkBwcqsyqAECAiWGyBAICMgWJlVGZQAAcFyAwQIZAQEK7MqgxIgIFhugACBjIBgZVZlUAIEBMsNECCQERCszKoMSoCAYLkBAgQyAoKVWZVBCRAQLDdAgEBGQLAyqzIoAQKC5QYIEMgICFZmVQYlQECw3AABAhmBf+4uCJckGSPYAAAAAElFTkSuQmCC', 56, 38, '2017-04-29 12:59:18', '2017-04-29 12:59:18');
INSERT INTO `transactions` (`invoice_number`, `comment`, `product_id`, `id`, `total`, `paid`, `change`, `usd`, `eur`, `srd`, `signature`, `shipment_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(NULL, NULL, NULL, 40, 240.81, 240.81, 0.00, 240.81, 0.00, 0.00, 'data:image/png;base64,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', 109, 57, '2017-05-02 15:44:42', '2017-05-02 15:44:42'),
(NULL, NULL, NULL, 41, 90.74, 90.74, 0.00, 90.74, 0.00, 0.00, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAFUElEQVR4Xu3Uwa0cVBBFwedIcAiQARk4VVJwBpABoSBL9hLpbKz7W65Z94x6qp/Op+dDgACBIwKfjuxpTQIECDzB8ggIEDgjIFhnTmVRAgQEyxsgQOCMgGCdOZVFCRAQLG+AAIEzAoJ15lQWJUBAsLwBAgTOCAjWmVNZlAABwfIGCBA4IyBYZ05lUQIEBMsbIEDgjIBgnTmVRQkQECxvgACBMwKCdeZUFiVAQLC8AQIEzggI1plTWZQAAcHyBggQOCMgWGdOZVECBATLGyBA4IyAYJ05lUUJEBAsb4AAgTMCgnXmVBYlQECwvAECBM4ICNaZU1mUAAHB8gYIEDgjIFhnTmVRAgQEyxsgQOCMgGCdOZVFCRAQLG+AAIEzAoJ15lQWJUBAsLwBAgTOCAjWmVNZlAABwfIGCBA4IyBYZ05lUQIEBMsbIEDgjIBgnTmVRQkQECxvgACBMwKCdeZUFiVAQLC8AQIEzggI1plTWZQAAcHyBv5P4PN778t77+t7729MBD6CgGB9hCt8zB3+fe/99j1Wf3zMFW31qwkI1q928f5/fwTrn/fe7/1rJgn8PAHB+nm213/5W6T+fO/99d77Fi8fAnMBwZqfwAIECFQBwapS5ggQmAsI1vwEFiBAoAoIVpUyR4DAXECw5iewAAECVUCwqpQ5AgTmAoI1P4EFCBCoAoJVpcwRIDAXEKz5CSxAgEAVEKwqZY4AgbmAYM1PYAECBKqAYFUpcwQIzAUEa34CCxAgUAUEq0qZI0BgLiBY8xNYgACBKiBYVcocAQJzAcGan8ACBAhUAcGqUuYIEJgLCNb8BBYgQKAKCFaVMkeAwFxAsOYnsAABAlVAsKqUOQIE5gKCNT+BBQgQqAKCVaXMESAwFxCs+QksQIBAFRCsKmWOAIG5gGDNT2ABAgSqgGBVKXMECMwFBGt+AgsQIFAFBKtKmSNAYC4gWPMTWIAAgSogWFXKHAECcwHBmp/AAgQIVAHBqlLmCBCYCwjW/AQWIECgCghWlTJHgMBcQLDmJ7AAAQJVQLCqlDkCBOYCgjU/gQUIEKgCglWlzBEgMBcQrPkJLECAQBUQrCpljgCBuYBgzU9gAQIEqoBgVSlzBAjMBQRrfgILECBQBQSrSpkjQGAuIFjzE1iAAIEqIFhVyhwBAnMBwZqfwAIECFQBwapS5ggQmAsI1vwEFiBAoAoIVpUyR4DAXECw5iewAAECVUCwqpQ5AgTmAoI1P4EFCBCoAoJVpcwRIDAXEKz5CSxAgEAVEKwqZY4AgbmAYM1PYAECBKqAYFUpcwQIzAUEa34CCxAgUAUEq0qZI0BgLiBY8xNYgACBKiBYVcocAQJzAcGan8ACBAhUAcGqUuYIEJgLCNb8BBYgQKAKCFaVMkeAwFxAsOYnsAABAlVAsKqUOQIE5gKCNT+BBQgQqAKCVaXMESAwFxCs+QksQIBAFRCsKmWOAIG5gGDNT2ABAgSqgGBVKXMECMwFBGt+AgsQIFAFBKtKmSNAYC4gWPMTWIAAgSogWFXKHAECcwHBmp/AAgQIVAHBqlLmCBCYCwjW/AQWIECgCghWlTJHgMBcQLDmJ7AAAQJVQLCqlDkCBOYCgjU/gQUIEKgCglWlzBEgMBcQrPkJLECAQBUQrCpljgCBuYBgzU9gAQIEqoBgVSlzBAjMBQRrfgILECBQBQSrSpkjQGAuIFjzE1iAAIEqIFhVyhwBAnMBwZqfwAIECFQBwapS5ggQmAsI1vwEFiBAoAoIVpUyR4DAXECw5iewAAECVUCwqpQ5AgTmAoI1P4EFCBCoAoJVpcwRIDAX+A8+5AiXavyPGAAAAABJRU5ErkJggg==', 106, 33, '2017-05-03 11:35:21', '2017-05-03 11:35:21'),

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `address`, `zipcode`, `city`, `country`, `phonenumber`, `created_at`, `updated_at`) VALUES
(1, 'Highway', 'Martin Lutherkingweg 176', '1234', 'Paramaribo', 'Suriname', '8771771', NULL, NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `giftcards`
--
ALTER TABLE `giftcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `shipment_types`
--
ALTER TABLE `shipment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5660;

--
-- AUTO_INCREMENT voor een tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT voor een tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT voor een tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1090;

--
-- AUTO_INCREMENT voor een tabel `giftcards`
--
ALTER TABLE `giftcards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1305;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4525;

--
-- AUTO_INCREMENT voor een tabel `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18831;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6624;

--
-- AUTO_INCREMENT voor een tabel `shipment_types`
--
ALTER TABLE `shipment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6131;

--
-- AUTO_INCREMENT voor een tabel `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
