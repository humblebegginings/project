-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 08:36 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beehappy01`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-08-07 20:01:22', '2018-08-07 20:01:22'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-08-07 20:01:22', '2018-08-07 20:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(58, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 7, 'details', 'text', 'Details', 1, 1, 1, 1, 1, 1, NULL, 4),
(61, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, NULL, 5),
(62, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, NULL, 6),
(63, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, NULL, 7),
(64, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 8),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(66, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\r\n    \"resize\": {\r\n        \"width\": \"1000\",\r\n        \"height\": null\r\n    },\r\n    \"quality\" : \"70%\",\r\n    \"upsize\" : false,\r\n    \"thumbnails\": [\r\n        {\r\n            \"name\": \"medium\",\r\n            \"scale\": \"50%\"\r\n        },\r\n        {\r\n            \"name\": \"small\",\r\n            \"scale\": \"25%\"\r\n        },\r\n        {\r\n            \"name\": \"cropped\",\r\n            \"crop\": {\r\n                \"width\": \"300\",\r\n                \"height\": \"250\"\r\n            }\r\n        }\r\n    ]\r\n}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-08-07 20:01:07', '2018-08-07 20:01:07'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-07 20:01:07', '2018-08-07 20:01:07'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-07 20:01:08', '2018-08-07 20:01:08'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-08-07 20:01:20', '2018-08-07 20:01:20'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-07 20:01:22', '2018-09-16 09:08:48'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-08-07 20:01:24', '2018-08-07 20:01:24'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-08-07 20:10:43', '2018-08-07 20:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-07 20:01:09', '2018-08-07 20:01:09'),
(2, 'main', '2018-08-07 20:38:24', '2018-08-07 20:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-08-07 20:01:09', '2018-08-07 20:01:09', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-08-07 20:01:09', '2018-08-13 11:36:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-08-07 20:01:09', '2018-08-13 11:36:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-08-07 20:01:09', '2018-08-13 11:36:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-08-07 20:01:10', '2018-08-07 20:01:10', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-08-07 20:01:10', '2018-08-13 11:36:47', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-08-07 20:01:10', '2018-08-13 11:36:47', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-08-07 20:01:10', '2018-08-13 11:36:47', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-08-07 20:01:10', '2018-08-13 11:36:47', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-08-07 20:01:10', '2018-08-13 11:36:47', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-08-07 20:01:21', '2018-08-13 11:36:57', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-08-07 20:01:23', '2018-08-13 11:36:57', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-08-07 20:01:25', '2018-08-13 11:36:57', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-08-07 20:01:28', '2018-08-13 11:36:47', 'voyager.hooks', NULL),
(15, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2018-08-07 20:10:45', '2018-08-13 11:36:57', 'voyager.products.index', NULL),
(16, 2, 'home', '', '_self', NULL, '#000000', NULL, 1, '2018-08-07 20:46:57', '2018-08-08 10:30:28', 'welcome', NULL),
(17, 2, 'shop', '', '_self', NULL, '#000000', NULL, 2, '2018-08-07 20:47:50', '2018-08-08 10:30:28', 'shop.index', NULL),
(18, 2, 'blog', '#', '_self', NULL, '#000000', NULL, 3, '2018-08-07 20:49:25', '2018-08-08 11:16:40', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_31_173215_create_products_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 2),
(5, '2016_01_01_000000_create_data_types_table', 2),
(6, '2016_05_19_173453_create_menu_table', 2),
(7, '2016_10_21_190000_create_roles_table', 2),
(8, '2016_10_21_190000_create_settings_table', 2),
(9, '2016_11_30_135954_create_permission_table', 2),
(10, '2016_11_30_141208_create_permission_role_table', 2),
(11, '2016_12_26_201236_data_types__add__server_side', 2),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(13, '2017_01_14_005015_create_translations_table', 2),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(18, '2017_08_05_000000_add_group_to_settings_table', 2),
(19, '2017_11_26_013050_add_user_role_relationship', 2),
(20, '2017_11_26_015000_create_user_roles_table', 2),
(21, '2018_03_11_000000_add_user_settings', 2),
(22, '2018_03_14_000000_add_details_to_data_types_table', 2),
(23, '2018_03_16_000000_make_settings_value_nullable', 2),
(24, '2016_01_01_000000_create_pages_table', 3),
(25, '2016_01_01_000000_create_posts_table', 3),
(26, '2016_02_15_204651_create_categories_table', 3),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 3),
(28, '2018_08_08_001420_add_image_to_products_table', 4),
(29, '2018_08_26_221624_create_comments_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'chatters', 'blahblahblahblahblahlbalhblahblahblahblahblahblahblbahblahblahblsshblahblahblahblahlbahblshblshblshblshblshlbshbslsh', '<p>blahblahblahblahblahlbalhblahblahblahblahblahblahblbahblahblahblsshblahblahblahblahlbahblshblshblshblshblshlbshbslsh</p>', 'pages\\August2018\\OAH0XvfbRvCp7EUQnxn5.jpg', 'chatters', 'fgefgewwefgwe', 'sdgsd', 'INACTIVE', '2018-08-08 10:13:55', '2018-08-08 10:13:55'),
(5, 1, 'sgsfgssgs', 'sgsdfgsdgvsvsdv', '<p>sgsgafsbasdfvbasdf</p>', NULL, 'sgsfgssgs', 'asrfgasrfvasf', 'afsvasfv', 'INACTIVE', '2018-08-08 10:14:34', '2018-08-08 10:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@user.com', '$2y$10$4NZSa0addsQ2KNa4s/sdbOzH.NVPYqZgw.4NpjGunmi5vAiX6uPGa', '2018-08-07 23:07:23'),
('bee@gmail.com', '$2y$10$nsmXU.WL/zGslUuBjk2NeuTXcyziND0ut2Gip8Pts4MuWt6h.w6tO', '2018-08-25 13:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(2, 'browse_bread', NULL, '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(3, 'browse_database', NULL, '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(4, 'browse_media', NULL, '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(5, 'browse_compass', NULL, '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(6, 'browse_menus', 'menus', '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(7, 'read_menus', 'menus', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(8, 'edit_menus', 'menus', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(9, 'add_menus', 'menus', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(10, 'delete_menus', 'menus', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(11, 'browse_roles', 'roles', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(12, 'read_roles', 'roles', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(13, 'edit_roles', 'roles', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(14, 'add_roles', 'roles', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(15, 'delete_roles', 'roles', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(16, 'browse_users', 'users', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(17, 'read_users', 'users', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(18, 'edit_users', 'users', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(19, 'add_users', 'users', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(20, 'delete_users', 'users', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(21, 'browse_settings', 'settings', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(22, 'read_settings', 'settings', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(23, 'edit_settings', 'settings', '2018-08-07 20:01:11', '2018-08-07 20:01:11'),
(24, 'add_settings', 'settings', '2018-08-07 20:01:12', '2018-08-07 20:01:12'),
(25, 'delete_settings', 'settings', '2018-08-07 20:01:12', '2018-08-07 20:01:12'),
(26, 'browse_categories', 'categories', '2018-08-07 20:01:21', '2018-08-07 20:01:21'),
(27, 'read_categories', 'categories', '2018-08-07 20:01:21', '2018-08-07 20:01:21'),
(28, 'edit_categories', 'categories', '2018-08-07 20:01:22', '2018-08-07 20:01:22'),
(29, 'add_categories', 'categories', '2018-08-07 20:01:22', '2018-08-07 20:01:22'),
(30, 'delete_categories', 'categories', '2018-08-07 20:01:22', '2018-08-07 20:01:22'),
(31, 'browse_posts', 'posts', '2018-08-07 20:01:23', '2018-08-07 20:01:23'),
(32, 'read_posts', 'posts', '2018-08-07 20:01:23', '2018-08-07 20:01:23'),
(33, 'edit_posts', 'posts', '2018-08-07 20:01:23', '2018-08-07 20:01:23'),
(34, 'add_posts', 'posts', '2018-08-07 20:01:24', '2018-08-07 20:01:24'),
(35, 'delete_posts', 'posts', '2018-08-07 20:01:24', '2018-08-07 20:01:24'),
(36, 'browse_pages', 'pages', '2018-08-07 20:01:25', '2018-08-07 20:01:25'),
(37, 'read_pages', 'pages', '2018-08-07 20:01:25', '2018-08-07 20:01:25'),
(38, 'edit_pages', 'pages', '2018-08-07 20:01:25', '2018-08-07 20:01:25'),
(39, 'add_pages', 'pages', '2018-08-07 20:01:25', '2018-08-07 20:01:25'),
(40, 'delete_pages', 'pages', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(41, 'browse_hooks', NULL, '2018-08-07 20:01:28', '2018-08-07 20:01:28'),
(42, 'browse_products', 'products', '2018-08-07 20:10:44', '2018-08-07 20:10:44'),
(43, 'read_products', 'products', '2018-08-07 20:10:44', '2018-08-07 20:10:44'),
(44, 'edit_products', 'products', '2018-08-07 20:10:44', '2018-08-07 20:10:44'),
(45, 'add_products', 'products', '2018-08-07 20:10:44', '2018-08-07 20:10:44'),
(46, 'delete_products', 'products', '2018-08-07 20:10:44', '2018-08-07 20:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'blog2', 'qwedqwedqwed', 'qwfqwfqwfqwfqwfqw', '<p>qwfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff</p>', 'posts\\August2018\\wcqrBQK8YHIm35Ta1jkF.jpg', 'blog2', 'qwfqwdfqwdfqwdqw', 'qwdeqwedqwedqw', 'PUBLISHED', 0, '2018-08-08 08:07:42', '2018-08-08 08:07:42'),
(2, 1, 1, 'asdascs', 'werfawefawef', NULL, '<p>sdvasdfvasfvbasfvafsvasfv sfvasfv</p>', 'posts\\August2018\\A0cVFczKnppIKoPiGjKs.jpg', 'asdascs', 'werfawerfwerf', 'werfawerfawef', 'PUBLISHED', 0, '2018-08-08 10:15:40', '2018-08-26 16:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `image`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(15, 'Honey and Chilli', 'Raw Honey', '450g', 'products\\August2018\\5BG5jAzlpmxFzJcJTaGK.jpg', 600, '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Our raw honey is infused with <em>jalapenos</em>, it is ideal for cooking and as a marinade adding delicate hot and sweet nuance to food.</span></p>', NULL, '2018-08-08 12:01:16', '2018-08-08 16:45:51'),
(16, 'Bee Happy Raw Honey', 'Raw Honey1', '450g', 'products\\August2018\\qm4gAyTVQTuURLZZm5gR.jpg', 600, '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Our bees make their honey from the wide floral diversity of the Kisii Highlands<span style=\"mso-spacerun: yes;\">&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Dominant Flora: <em>Eucalyptus, Avocado, Sunflower and Gravillea.</em></span></p>', NULL, '2018-08-08 12:04:41', '2018-08-08 16:45:17'),
(17, 'Honey and Cinnamon', 'Bee Happy Honey and Cinnamon', '450g', 'products\\August2018\\0Dx8AaFwOBgZIFMKpe5l.jpg', 650, '<p>Our Bee Happy Raw Honey infused with <em>cinnamon</em>.</p>', NULL, '2018-08-08 12:19:33', '2018-08-08 16:02:13'),
(18, 'Bee Very Happy Raw Honey', 'Raw Honey2', '900g', 'products\\August2018\\5XevC7XamANfCDLGzUt0.jpg', 1000, '<p>&nbsp;</p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Our bees make their honey from the wide floral diversity of the Kisii Highlands.<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Dominant Flora:<em>&nbsp;Blue gum, Avocado, Sunflower and Gravillea.</em></span></p>', NULL, '2018-08-08 16:06:03', '2018-08-08 16:18:17'),
(19, 'Honey and Ginger', 'Raw Honey3', '450g', 'products\\August2018\\EIm8492FF9m1AoLehbpH.jpg', 650, '<p>Our Bee Happy Raw Honey infused with dried ginger.</p>', NULL, '2018-08-08 16:14:43', '2018-08-08 16:16:45'),
(22, 'Bee Happy Raw Honey.', 'Raw Honey4', '250g', 'products\\August2018\\En6q6dWQsuMfj7VjX7KO.jpg', 350, '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Our bees make their honey from the wide floral diversity of the Kisii Highlands<span style=\"mso-spacerun: yes;\">&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Dominant Flora:<em> Eucalyptus, Avocado, Sunflower and Gravillea</em>.</span></p>', NULL, '2018-08-08 16:25:04', '2018-08-08 16:41:29'),
(23, 'Beeauty Cream', 'Raw Honey5', '250g', 'products\\August2018\\KHwZbVoQVXVv7lfepqCj.jpg', 1000, '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">This gentle yet therapeutic blend&nbsp;</span><span style=\"font-family: \'Bookman Old Style\', serif;\">enriched with herbal extracts&nbsp;</span><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">is great for all skin types.&nbsp;</span></p>', NULL, '2018-08-08 16:32:36', '2018-08-08 16:32:36'),
(24, 'Queen Bee Hamper', 'Raw Honey6', 'A selection of honey and beeswax products', 'products\\August2018\\FZ5nRLECrkUikWbppbx3.jpg', 4000, '<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">3 jars of 450 grams of raw honey</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">1 beauty Cream made from honey and beeswax.</span></p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Bar Soap made from honey and beeswax</span></p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span lang=\"EN-US\" style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-family: \'Bookman Old Style\',serif;\">Stir Me Tea/ Kericho premium tea</span></p>', NULL, '2018-08-08 16:37:21', '2018-08-08 16:37:21'),
(25, 'Honey and Chilli.', 'Raw Honey7', '250g', 'products\\August2018\\mYJluy5oqCQY4VAxpxuf.jpg', 400, '<p>Our Bee Happy Raw Honey infused with <em>jalapenos</em>.&nbsp;<span style=\"font-family: \'Bookman Old Style\', serif;\">it is ideal for cooking and as a marinade adding delicate hot and sweet nuance to food.</span></p>', NULL, '2018-08-08 16:40:47', '2018-08-08 16:46:19'),
(26, 'Honey and Cinnamon.', 'Raw Honey8', '250g', 'products\\August2018\\HUlyr5oapRS2xKnn9LQI.jpg', 400, '<p>Our Bee Happy Raw Honey infused with cinnamon.</p>', NULL, '2018-08-08 16:42:56', '2018-08-08 16:42:56'),
(27, 'Honey and Ginger.', 'Raw Honey9', '250g', 'products\\August2018\\lvZXcjff1zU6Es7zeQw5.jpg', 400, '<p>Our Bee Happy Raw Honey infused with dried ginger.</p>', NULL, '2018-08-08 16:44:35', '2018-08-08 16:44:35'),
(29, 'Bee Very Happy - Ginger', 'Raw Honey10', '900g', 'products\\August2018\\HE28Uv3sSq5updbvccnZ.jpg', 1200, '<p>Our Bee Happy Raw Honey infused with dried ginger.</p>', NULL, '2018-08-08 16:57:40', '2018-08-08 17:00:04'),
(30, 'Bee Very Happy - Cinnamon', 'Raw Honey11', '900g', 'products\\August2018\\3us7x9Yf13ZtQPuHgLqm.jpg', 1200, '<p>Our Bee Happy Raw Honey infused with cinnamon</p>', NULL, '2018-08-08 16:59:39', '2018-08-25 10:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-08-07 20:01:10', '2018-08-07 20:01:10'),
(2, 'user', 'Normal User', '2018-08-07 20:01:10', '2018-08-07 20:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2018\\k5faFymPgOrqB3hGJBIl.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\August2018\\9GcyKyUOeTAPttjEKNGq.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Bee Happy', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Bee Happy Admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\August2018\\eqk3vPruvGXw1jhxQeOo.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '230166323732-jsokpvc36kn7efeo36v3ekvup1j79pcg.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-08-07 20:01:26', '2018-08-07 20:01:26'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-08-07 20:01:27', '2018-08-07 20:01:27'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-08-07 20:01:27', '2018-08-07 20:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lester', 'admin@admin.com', 'users\\August2018\\jsrmX7wWKajl5AcZzbD8.jpg', '$2y$10$ntibQgMolg452nI84u.0zu4hBMjzpW8J6jzkf8anBzsFTfs1obGfO', 'vbrKbTq7j6tPnCDEmHghVuq4KjsIa0bGDNGy88nKgxPZmKOj7sMRYTp2tjax', '{\"locale\":\"en\"}', '2018-08-07 20:01:22', '2018-08-08 14:03:09'),
(2, 2, 'User', 'user@user.com', 'users/default.png', '$2y$10$nEg05yUgfLQafdxTOkW9zuy0YzSj4RdhR1QhCqgrA5XJCB29FzeVm', 'zobME15Y3U76jK0I8PKg1hn5QDKIn8AFrUx5b8r6E02bEXupGoHUZi05VB3D', NULL, '2018-08-07 22:31:41', '2018-08-07 22:31:41'),
(3, 2, 'BEE HAPPY', 'new@gmail.com', 'users/default.png', '$2y$10$0FlhGW/HMMzZV5LC1/658..30f.dKka47rCPSUh6Lp7Nc./L8P86u', 'Knx8bJcbQ6wxNNPvwr7vrBQtK9qfS4il4Mzm4n7I3WlHqOLCBN1URUL9WJJi', NULL, '2018-08-25 10:56:32', '2018-08-25 10:56:32'),
(4, 2, 'bee', 'bee@gmail.com', 'users/default.png', '$2y$10$qs2zkqOLbICWMxRC6zDgk.rnWxZu4BCx3apjDApPRV8Ve4f9N4fD6', 'KvmXkCF8LOi6Aso8946pn7hzL087GzptQhM9sqTg2eEtXrR6RY4xJQT9A4Pn', NULL, '2018-08-25 11:08:51', '2018-08-25 11:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comments_email_unique` (`email`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
