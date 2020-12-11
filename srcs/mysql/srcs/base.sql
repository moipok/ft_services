-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: mysql:3306
-- Время создания: Дек 11 2020 г., 15:48
-- Версия сервера: 10.4.15-MariaDB
-- Версия PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-11 15:39:13', '2020-12-11 15:39:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.99.101:5050', 'yes'),
(2, 'home', 'http://192.168.99.101:5050', 'yes'),
(3, 'blogname', 'default', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'p@mail.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1623253153', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'cron', 'a:8:{i:1607701163;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607701164;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607701168;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607701170;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607701228;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1607701466;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1607787563;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(117, '_transient_doing_cron', '1607701598.2156279087066650390625', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1607701314;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1607701169;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(120, '_site_transient_timeout_theme_roots', '1607702969', 'no'),
(121, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607701169;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.8.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.0.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_e20e2f5b98ddfd517743b637650f1c2d', '1608305970', 'no'),
(124, '_site_transient_browser_e20e2f5b98ddfd517743b637650f1c2d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, '_site_transient_timeout_php_check_5eeb014a565a9828e793356024c4607d', '1608305970', 'no'),
(126, '_site_transient_php_check_5eeb014a565a9828e793356024c4607d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1607744373', 'no'),
(128, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(130, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1607744703', 'no'),
(131, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Discussion group: Organizing WordPress Meetups - Getting Started\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/274844281/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-12-11 04:00:00\";s:8:\"end_date\";s:19:\"2020-12-11 05:00:00\";s:20:\"start_unix_timestamp\";i:1607688000;s:18:\"end_unix_timestamp\";i:1607691600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}}}', 'no'),
(134, 'theme_mods_twentytwentyone', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(135, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(136, 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(137, 'category_children', 'a:0:{}', 'yes'),
(138, '_site_transient_timeout_wordpress_credits_en_US', '1607787958', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(139, '_site_transient_wordpress_credits_en_US', 'a:2:{s:6:\"groups\";a:4:{s:15:\"core-developers\";a:4:{s:4:\"name\";s:23:\"Noteworthy Contributors\";s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:0;s:4:\"data\";a:42:{s:12:\"chanthaboune\";a:4:{i:0;s:13:\"Josepha Haden\";i:1;s:32:\"da526066c9f187ca1e16263158d2e9a3\";i:2;s:12:\"chanthaboune\";i:3;s:12:\"Release Lead\";}s:14:\"thewebprincess\";a:4:{i:0;s:8:\"Dee Teal\";i:1;s:32:\"cfcd3850603505da61004facf965369a\";i:2;s:14:\"thewebprincess\";i:3;s:12:\"Release Lead\";}s:5:\"helen\";a:4:{i:0;s:16:\"Helen Hou-Sandí\";i:1;s:32:\"6506162ada6b700b151ad8a187f65842\";i:2;s:5:\"helen\";i:3;s:12:\"Release Lead\";}s:14:\"hellofromTonya\";a:4:{i:0;s:10:\"Tonya Mork\";i:1;s:32:\"4e077d102aad837bbcb4cd4a0fe70f24\";i:2;s:14:\"hellofromTonya\";i:3;s:0:\"\";}s:13:\"isabel_brison\";a:4:{i:0;s:13:\"Isabel Brison\";i:1;s:32:\"0236f3f6facfcca37aa798f9c6766116\";i:2;s:13:\"isabel_brison\";i:3;s:0:\"\";}s:9:\"melchoyce\";a:4:{i:0;s:15:\"Mel Choyce-Dwan\";i:1;s:32:\"9ffb8027a6f8cb090148a2ea8310b64f\";i:2;s:9:\"melchoyce\";i:3;s:0:\"\";}s:10:\"elmastudio\";a:4:{i:0;s:11:\"Ellen Bauer\";i:1;s:32:\"feaafe28bc9b142edba8a1b661beda34\";i:2;s:10:\"elmastudio\";i:3;s:0:\"\";}s:5:\"poena\";a:4:{i:0;s:15:\"Carolina Nymark\";i:1;s:32:\"93d62a7919878f5aec4bcb7b96d4b7ae\";i:2;s:5:\"poena\";i:3;s:0:\"\";}s:7:\"luminuu\";a:4:{i:0;s:15:\"Jessica Lyschik\";i:1;s:32:\"e7b7de7db1ccc21c7a0a552213746271\";i:2;s:7:\"luminuu\";i:3;s:0:\"\";}s:9:\"m_butcher\";a:4:{i:0;s:21:\"Michele Butcher-Jones\";i:1;s:32:\"648e9dee3b466390727d4345be4b4724\";i:2;s:9:\"m_butcher\";i:3;s:0:\"\";}s:9:\"monikarao\";a:4:{i:0;s:10:\"Monika Rao\";i:1;s:32:\"f02e7754bd4cfa3d106c9d7c10d54f7d\";i:2;s:9:\"monikarao\";i:3;s:0:\"\";}s:11:\"sarahricker\";a:4:{i:0;s:12:\"Sarah Ricker\";i:1;s:32:\"917c0ae18a932ec24197763709c10435\";i:2;s:11:\"sarahricker\";i:3;s:0:\"\";}s:7:\"sncoker\";a:4:{i:0;s:16:\"Shawntelle Coker\";i:1;s:32:\"382becae45452a8b6581c12ef237ef8f\";i:2;s:7:\"sncoker\";i:3;s:0:\"\";}s:10:\"karmatosed\";a:4:{i:0;s:13:\"Tammie Lister\";i:1;s:32:\"ca7d4273a689cdbf524d8332771bb1ca\";i:2;s:10:\"karmatosed\";i:3;s:0:\"\";}s:15:\"yvettesonneveld\";a:4:{i:0;s:16:\"Yvette Sonneveld\";i:1;s:32:\"e83cc286207050e13ae8350c9b681458\";i:2;s:15:\"yvettesonneveld\";i:3;s:0:\"\";}s:7:\"laurora\";a:4:{i:0;s:12:\"Laura Nelson\";i:1;s:32:\"3d4679f44288e6f408b3a9c6181d84a3\";i:2;s:7:\"laurora\";i:3;s:0:\"\";}s:11:\"thelmachido\";a:4:{i:0;s:13:\"Thelma Mutete\";i:1;s:32:\"b9af57958143dc207425794e949dc536\";i:2;s:11:\"thelmachido\";i:3;s:0:\"\";}s:10:\"angelasjin\";a:4:{i:0;s:10:\"Angela Jin\";i:1;s:32:\"ec5a36654c86c4378493b468134661ec\";i:2;s:10:\"angelasjin\";i:3;s:0:\"\";}s:10:\"cbringmann\";a:4:{i:0;s:16:\"Chloé Bringmann\";i:1;s:32:\"0909289cd227eae5eba339eeada5c2af\";i:2;s:10:\"cbringmann\";i:3;s:0:\"\";}s:8:\"francina\";a:4:{i:0;s:16:\"Francesca Marano\";i:1;s:32:\"df83fd0e3dc1659ccbe510fbe89fdc55\";i:2;s:8:\"francina\";i:3;s:0:\"\";}s:10:\"webcommsat\";a:4:{i:0;s:11:\"Abha Thakor\";i:1;s:32:\"f1258d4b759b4436cf1989fdc3fab72f\";i:2;s:10:\"webcommsat\";i:3;s:0:\"\";}s:8:\"ellatrix\";a:4:{i:0;s:14:\"Ella van Durpe\";i:1;s:32:\"fe38d164bce79d754ab3fa1a1388d37a\";i:2;s:8:\"ellatrix\";i:3;s:0:\"\";}s:7:\"cguntur\";a:4:{i:0;s:16:\"Chandrika Guntur\";i:1;s:32:\"d34d4ed274e2c7911253526a3db4fd36\";i:2;s:7:\"cguntur\";i:3;s:0:\"\";}s:5:\"meher\";a:4:{i:0;s:10:\"Meher Bala\";i:1;s:32:\"af3a7ded485bdfcc213c76a2707fa9b6\";i:2;s:5:\"meher\";i:3;s:0:\"\";}s:16:\"Trisha_Cornelius\";a:4:{i:0;s:16:\"Trisha Cornelius\";i:1;s:32:\"3c421683214b365b49d75f83906ca757\";i:2;s:16:\"Trisha_Cornelius\";i:3;s:0:\"\";}s:13:\"planningwrite\";a:4:{i:0;s:15:\"Winstina Hughes\";i:1;s:32:\"7853d84393ff5c805513a446d26d14e1\";i:2;s:13:\"planningwrite\";i:3;s:0:\"\";}s:6:\"daisyo\";a:4:{i:0;s:11:\"Daisy Olsen\";i:1;s:32:\"879d0e21dade8a79eaa2747a3a7219b9\";i:2;s:6:\"daisyo\";i:3;s:0:\"\";}s:9:\"estelaris\";a:4:{i:0;s:12:\"Estela Rueda\";i:1;s:32:\"c83b6e2dbfdf8d80923dc45c16042e10\";i:2;s:9:\"estelaris\";i:3;s:0:\"\";}s:14:\"metalandcoffee\";a:4:{i:0;s:13:\"Ebonie Butler\";i:1;s:32:\"f0359df4b414adc3f42c1eb625364ca8\";i:2;s:14:\"metalandcoffee\";i:3;s:0:\"\";}s:8:\"annezazu\";a:4:{i:0;s:13:\"Anne McCarthy\";i:1;s:32:\"0eff7149d8c78b242f4652e9ceb8f798\";i:2;s:8:\"annezazu\";i:3;s:0:\"\";}s:14:\"SergeyBiryukov\";a:4:{i:0;s:15:\"Sergey Biryukov\";i:1;s:32:\"750b7b0fcd855389264c2b1294d61bd6\";i:2;s:14:\"SergeyBiryukov\";i:3;s:0:\"\";}s:8:\"audrasjb\";a:4:{i:0;s:20:\"Jean-Baptiste Audras\";i:1;s:32:\"f5679c32509d3a0f9821da8ba4843a75\";i:2;s:8:\"audrasjb\";i:3;s:0:\"\";}s:7:\"desrosj\";a:4:{i:0;s:19:\"Jonathan Desrosiers\";i:1;s:32:\"f22c0ec09eb5a6df4da4239a37dbdf9d\";i:2;s:7:\"desrosj\";i:3;s:0:\"\";}s:11:\"johnbillion\";a:4:{i:0;s:15:\"John Blackbourn\";i:1;s:32:\"23e12888dcd87d07434b7621bc164958\";i:2;s:11:\"johnbillion\";i:3;s:0:\"\";}s:15:\"georgestephanis\";a:4:{i:0;s:16:\"George Stephanis\";i:1;s:32:\"8c46364c1cdf20827ceb25f901cdc0aa\";i:2;s:15:\"georgestephanis\";i:3;s:0:\"\";}s:17:\"TimothyBlynJacobs\";a:4:{i:0;s:14:\"Timothy Jacobs\";i:1;s:32:\"596003127e013031dd5299a3879827e9\";i:2;s:17:\"TimothyBlynJacobs\";i:3;s:0:\"\";}s:10:\"ntsekouras\";a:4:{i:0;s:13:\"Nik Tsekouras\";i:1;s:32:\"01d2cd00d141a92fcef8cb3eb54c1d70\";i:2;s:10:\"ntsekouras\";i:3;s:0:\"\";}s:11:\"youknowriad\";a:4:{i:0;s:14:\"Riad Benguella\";i:1;s:32:\"9929daa7594d5afa910a777ccb9e88e4\";i:2;s:11:\"youknowriad\";i:3;s:0:\"\";}s:8:\"zieladam\";a:4:{i:0;s:14:\"Adam Zielinski\";i:1;s:32:\"3b7ea537531208d83deed8f3e78bc771\";i:2;s:8:\"zieladam\";i:3;s:0:\"\";}s:13:\"davidbaumwald\";a:4:{i:0;s:14:\"David Baumwald\";i:1;s:32:\"9945bf5c3f49038409fbdf0e068934df\";i:2;s:13:\"davidbaumwald\";i:3;s:0:\"\";}s:8:\"JeffPaul\";a:4:{i:0;s:9:\"Jeff Paul\";i:1;s:32:\"8ac4ec4b1f9cb342e59ed5127f050d24\";i:2;s:8:\"JeffPaul\";i:3;s:0:\"\";}s:6:\"matveb\";a:4:{i:0;s:14:\"Matias Ventura\";i:1;s:32:\"3f8389957d0c59bb0bd5433e86b53a19\";i:2;s:6:\"matveb\";i:3;s:0:\"\";}}}s:23:\"contributing-developers\";a:4:{s:4:\"name\";b:0;s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:1;s:4:\"data\";a:12:{s:8:\"marybaum\";a:4:{i:0;s:9:\"Mary Baum\";i:1;s:32:\"ad96ace475ab89952489d5a2454d97da\";i:2;s:8:\"marybaum\";i:3;s:0:\"\";}s:9:\"whyisjake\";a:4:{i:0;s:13:\"Jake Spurlock\";i:1;s:32:\"aee29ba1b0b4dbfb230bd3180b473861\";i:2;s:9:\"whyisjake\";i:3;s:0:\"\";}s:7:\"Clorith\";a:4:{i:0;s:13:\"Marius Jensen\";i:1;s:32:\"8f2a6a1a5388876ac51cd6dde3b4a1d0\";i:2;s:7:\"Clorith\";i:3;s:0:\"\";}s:19:\"nalininonstopnewsuk\";a:4:{i:0;s:13:\"Nalini Thakor\";i:1;s:32:\"90da4d664edf98b61b685a393aabd2fa\";i:2;s:19:\"nalininonstopnewsuk\";i:3;s:0:\"\";}s:9:\"talldanwp\";a:4:{i:0;s:15:\"Daniel Richards\";i:1;s:32:\"f6bc0d9c563bc9e993608e443fd5126f\";i:2;s:9:\"talldanwp\";i:3;s:0:\"\";}s:4:\"Joen\";a:4:{i:0;s:13:\"Joen Asmussen\";i:1;s:32:\"7fda1da9c34e978d5990afd7f58ca0f4\";i:2;s:4:\"Joen\";i:3;s:0:\"\";}s:6:\"azaozz\";a:4:{i:0;s:10:\"Andrew Ozz\";i:1;s:32:\"4e84843ebff0918d72ade21c6ee7b1e4\";i:2;s:6:\"azaozz\";i:3;s:0:\"\";}s:6:\"pbiron\";a:4:{i:0;s:10:\"Paul Biron\";i:1;s:32:\"5cd273e4f1cd8daec06a75e7d0c8bf36\";i:2;s:6:\"pbiron\";i:3;s:0:\"\";}s:12:\"justinahinon\";a:4:{i:0;s:13:\"Justin Ahinon\";i:1;s:32:\"8f55b7b9c159b2e14cba89a6be0728e2\";i:2;s:12:\"justinahinon\";i:3;s:0:\"\";}s:6:\"ryelle\";a:4:{i:0;s:10:\"Kelly Dwan\";i:1;s:32:\"ca5ab31df7108a28998792f75bb1d7d1\";i:2;s:6:\"ryelle\";i:3;s:0:\"\";}s:6:\"kjellr\";a:4:{i:0;s:14:\"Kjell Reigstad\";i:1;s:32:\"115aabd707fe985c79744d3e7df8fade\";i:2;s:6:\"kjellr\";i:3;s:0:\"\";}s:8:\"aristath\";a:4:{i:0;s:16:\"Ari Stathopoulos\";i:1;s:32:\"18a8f65a014d3038d08fc424fc5f3110\";i:2;s:8:\"aristath\";i:3;s:0:\"\";}}}s:5:\"props\";a:4:{s:4:\"name\";s:33:\"Core Contributors to WordPress %s\";s:12:\"placeholders\";a:1:{i:0;s:3:\"5.6\";}s:4:\"type\";s:4:\"list\";s:4:\"data\";a:583:{s:10:\"zgrkaralar\";s:23:\"&#214;zg&#252;r KARALAR\";s:11:\"1naveengiri\";s:11:\"1naveengiri\";s:10:\"a5hleyrich\";s:10:\"A5hleyRich\";s:13:\"aaroncampbell\";s:17:\"Aaron D. Campbell\";s:6:\"jorbin\";s:12:\"Aaron Jorbin\";s:15:\"aaronrobertshaw\";s:15:\"aaronrobertshaw\";s:11:\"abderrahman\";s:11:\"abderrahman\";s:12:\"abhijitrakas\";s:13:\"Abhijit Rakas\";s:9:\"pokhriyal\";s:18:\"Abhishek Pokhriyal\";s:7:\"acosmin\";s:7:\"acosmin\";s:15:\"adamsilverstein\";s:16:\"Adam Silverstein\";s:11:\"addiestavlo\";s:5:\"Addie\";s:16:\"adriandegrafreak\";s:23:\"Adri&#225;n de Grafreak\";s:13:\"adriantirusli\";s:14:\"Adrianti Rusli\";s:11:\"afshanadiya\";s:12:\"Afshana Diya\";s:8:\"chaion07\";s:12:\"Ahmed Chaion\";s:8:\"elgameel\";s:14:\"Ahmed Elgameel\";s:7:\"ajensen\";s:7:\"ajensen\";s:9:\"ajitbohra\";s:10:\"Ajit Bohra\";s:10:\"atachibana\";s:15:\"Akira Tachibana\";s:10:\"aktasfatih\";s:10:\"aktasfatih\";s:7:\"aljullu\";s:25:\"Albert Juh&#233; Lluveras\";s:11:\"albertomake\";s:11:\"albertomake\";s:6:\"xknown\";s:11:\"Alex Concha\";s:5:\"akirk\";s:9:\"Alex Kirk\";s:7:\"cawa-93\";s:11:\"Alex Kozack\";s:7:\"ajlende\";s:10:\"Alex Lende\";s:12:\"viper007bond\";s:10:\"Alex Mills\";s:14:\"alexstandiford\";s:15:\"Alex Standiford\";s:9:\"alexstine\";s:10:\"Alex Stine\";s:9:\"allancole\";s:9:\"allancole\";s:13:\"alliennimmons\";s:13:\"Allie Nimmons\";s:11:\"ambienthack\";s:11:\"ambienthack\";s:11:\"wpamitkumar\";s:11:\"Amit Dudhat\";s:5:\"amolv\";s:14:\"Amol Vhankalas\";s:9:\"amykamala\";s:10:\"Amy Kamala\";s:9:\"anandau14\";s:14:\"Anand Upadhyay\";s:8:\"anchenlr\";s:14:\"Anchen le Roux\";s:6:\"anlino\";s:17:\"Anders Nor&#233;n\";s:7:\"afercia\";s:13:\"Andrea Fercia\";s:15:\"andreamiddleton\";s:16:\"Andrea Middleton\";s:12:\"baicusandrei\";s:13:\"Andrei Baicus\";s:12:\"andraganescu\";s:17:\"Andrei Draganescu\";s:5:\"aduth\";s:13:\"Andrew Duthie\";s:5:\"nacin\";s:12:\"Andrew Nacin\";s:5:\"rarst\";s:24:\"Andrey \"Rarst\" Savchenko\";s:7:\"afragen\";s:11:\"Andy Fragen\";s:9:\"apeatling\";s:13:\"Andy Peatling\";s:4:\"andy\";s:12:\"Andy Skelton\";s:12:\"andystitt829\";s:10:\"Andy Stitt\";s:6:\"akissz\";s:10:\"Angel Hess\";s:9:\"wpgurudev\";s:10:\"Ankit Gade\";s:9:\"ankitmaru\";s:13:\"Ankit Panchal\";s:5:\"antpb\";s:16:\"Anthony Burchell\";s:7:\"ahortin\";s:14:\"Anthony Hortin\";s:9:\"antonisme\";s:13:\"Antonis Lilis\";s:10:\"antonlukin\";s:11:\"Anton Lukin\";s:5:\"anuj2\";s:5:\"anuj2\";s:6:\"anyssa\";s:15:\"Anyssa Ferreira\";s:6:\"apedog\";s:6:\"apedog\";s:6:\"apermo\";s:6:\"Apermo\";s:8:\"archduck\";s:8:\"archduck\";s:9:\"archon810\";s:9:\"archon810\";s:11:\"arippberger\";s:11:\"arippberger\";s:11:\"arjendejong\";s:11:\"arjendejong\";s:9:\"arnaudban\";s:9:\"ArnaudBan\";s:10:\"arpitgshah\";s:12:\"Arpit G Shah\";s:10:\"passoniate\";s:12:\"Arslan Ahmed\";s:7:\"akkspro\";s:19:\"Arslan Ahmed Kalwar\";s:11:\"asvinballoo\";s:12:\"Asvin Balloo\";s:9:\"tacitonic\";s:14:\"Atharva Dhekne\";s:12:\"austin880625\";s:12:\"austin880625\";s:11:\"austyfrosty\";s:12:\"Austin Passy\";s:8:\"avixansa\";s:8:\"avixansa\";s:5:\"ayesh\";s:5:\"ayesh\";s:11:\"ayeshrajans\";s:17:\"Ayesh Karunaratne\";s:7:\"backups\";s:7:\"BackuPs\";s:5:\"barry\";s:5:\"Barry\";s:8:\"bartczyz\";s:9:\"Bart Czyz\";s:7:\"bduclos\";s:7:\"bduclos\";s:9:\"beafialho\";s:14:\"Beatriz Fialho\";s:19:\"benmeredithgmailcom\";s:12:\"Ben Meredith\";s:7:\"kau-boy\";s:12:\"Bernhard Kau\";s:15:\"bernhard-reiter\";s:15:\"Bernhard Reiter\";s:10:\"bethannon1\";s:10:\"Bet Hannon\";s:13:\"bethsoderberg\";s:14:\"Beth Soderberg\";s:8:\"bgermann\";s:8:\"bgermann\";s:10:\"hareshlive\";s:17:\"Bhagvan Mangukiya\";s:13:\"bhautikvirani\";s:13:\"bhautikvirani\";s:15:\"bananastalktome\";s:7:\"Billy S\";s:7:\"birgire\";s:27:\"Birgir Erlendsson (birgire)\";s:3:\"bph\";s:18:\"Birgit Pauli-Haack\";s:11:\"bobbingwide\";s:11:\"bobbingwide\";s:8:\"boldgrid\";s:8:\"BoldGrid\";s:12:\"boonebgorges\";s:12:\"Boone Gorges\";s:4:\"ibdz\";s:12:\"Boy Witthaya\";s:12:\"bradyvercher\";s:13:\"Brady Vercher\";s:7:\"kraftbj\";s:13:\"Brandon Kraft\";s:7:\"bpayton\";s:14:\"Brandon Payton\";s:7:\"bmcdede\";s:13:\"Breann McDede\";s:9:\"bmillersw\";s:12:\"Brent Miller\";s:12:\"brentswisher\";s:13:\"Brent Swisher\";s:12:\"brianhenryie\";s:11:\"Brian Henry\";s:9:\"brianhogg\";s:10:\"Brian Hogg\";s:14:\"bridgetwillard\";s:14:\"bridgetwillard\";s:10:\"brijeshb42\";s:10:\"brijeshb42\";s:11:\"burhandodhy\";s:12:\"Burhan Nasir\";s:6:\"icaleb\";s:11:\"Caleb Burks\";s:5:\"calin\";s:9:\"Calin Don\";s:6:\"cvoell\";s:13:\"Cameron Voell\";s:13:\"campusboy1987\";s:9:\"campusboy\";s:6:\"carike\";s:6:\"Carike\";s:13:\"carolinegeven\";s:8:\"Caroline\";s:7:\"ceyhun0\";s:7:\"ceyhun0\";s:11:\"chadreitsma\";s:12:\"Chad Reitsma\";s:12:\"chetan200891\";s:16:\"Chetan Prajapati\";s:11:\"chexwarrior\";s:11:\"chexwarrior\";s:11:\"chintan1896\";s:18:\"Chintan hingrajiya\";s:10:\"chipsnyder\";s:11:\"Chip Snyder\";s:6:\"chouby\";s:6:\"Chouby\";s:9:\"alexandec\";s:15:\"Chris Alexander\";s:9:\"chriscct7\";s:9:\"chriscct7\";s:9:\"ctmartin0\";s:16:\"Christian Martin\";s:9:\"vimes1984\";s:21:\"Christopher Churchill\";s:13:\"christophherr\";s:14:\"Christoph Herr\";s:14:\"chrisvanpatten\";s:16:\"Chris Van Patten\";s:12:\"chunkysteveo\";s:12:\"chunkysteveo\";s:12:\"claudiulodro\";s:19:\"Claudiu Lodromanean\";s:13:\"claytoncollie\";s:14:\"Clayton Collie\";s:11:\"collizo4sky\";s:18:\"Collins Agbonghama\";s:13:\"commeuneimage\";s:13:\"Commeuneimage\";s:6:\"copons\";s:6:\"Copons\";s:7:\"salzano\";s:13:\"Corey Salzano\";s:11:\"cpapazoglou\";s:11:\"cpapazoglou\";s:9:\"cranewest\";s:9:\"cranewest\";s:14:\"littlebigthing\";s:23:\"Csaba (LittleBigThings)\";s:8:\"ctmartin\";s:8:\"ctmartin\";s:10:\"davidszabo\";s:21:\"D&#225;vid Szab&#243;\";s:9:\"danfarrow\";s:10:\"Dan Farrow\";s:15:\"danielbachhuber\";s:16:\"Daniel Bachhuber\";s:5:\"mte90\";s:21:\"Daniele Scasciafratte\";s:8:\"danieltj\";s:8:\"danieltj\";s:9:\"dantahoua\";s:9:\"dantahoua\";s:7:\"dkotter\";s:12:\"Darin Kotter\";s:7:\"dmchale\";s:11:\"Dave McHale\";s:10:\"davidbinda\";s:11:\"david.binda\";s:8:\"davilera\";s:14:\"David Aguilera\";s:13:\"davidanderson\";s:14:\"David Anderson\";s:6:\"dgwyer\";s:11:\"David Gwyer\";s:3:\"dlh\";s:13:\"David Herrera\";s:8:\"dshanske\";s:13:\"David Shanske\";s:8:\"get_dave\";s:11:\"David Smith\";s:13:\"davidjlaietta\";s:13:\"David Wolfpaw\";s:11:\"davisshaver\";s:12:\"Davis Shaver\";s:4:\"dd32\";s:4:\"dd32\";s:5:\"p00ya\";s:4:\"Dean\";s:6:\"dkarfa\";s:15:\"Debabrata Karfa\";s:13:\"deepaklalwani\";s:14:\"Deepak Lalwani\";s:8:\"dekervit\";s:8:\"dekervit\";s:8:\"demetris\";s:27:\"demetris (Demetris Kikizas)\";s:17:\"denis-de-bernardy\";s:17:\"Denis de Bernardy\";s:12:\"valendesigns\";s:12:\"Derek Herman\";s:11:\"designer023\";s:11:\"Designer023\";s:7:\"dfenton\";s:7:\"dfenton\";s:9:\"dharm1025\";s:14:\"Dharmesh Patel\";s:9:\"dharmin16\";s:12:\"Dharmin Shah\";s:7:\"dhruvin\";s:7:\"Dhruvin\";s:9:\"dhulwells\";s:10:\"Dhul Wells\";s:9:\"dietpawel\";s:9:\"dietpawel\";s:10:\"dilipbheda\";s:11:\"Dilip Bheda\";s:7:\"dingo_d\";s:7:\"dingo-d\";s:6:\"djzone\";s:6:\"DjZoNe\";s:11:\"dogwithblog\";s:11:\"dogwithblog\";s:7:\"ocean90\";s:17:\"Dominik Schilling\";s:8:\"donmhico\";s:8:\"donmhico\";s:7:\"donsony\";s:7:\"donsony\";s:5:\"dossy\";s:14:\"Dossy Shiobara\";s:6:\"dpacks\";s:6:\"dpacks\";s:9:\"raubvogel\";s:17:\"Dr. Ronny Harbich\";s:7:\"dratwas\";s:7:\"dratwas\";s:12:\"drewapicture\";s:11:\"Drew Jaynes\";s:8:\"dsifford\";s:8:\"dsifford\";s:8:\"dushakov\";s:8:\"dushakov\";s:9:\"dushanthi\";s:9:\"dushanthi\";s:5:\"dyrer\";s:5:\"dyrer\";s:5:\"elrae\";s:12:\"Earle Davies\";s:7:\"ediamin\";s:8:\"Edi Amin\";s:4:\"enej\";s:14:\"Enej Bajgorić\";s:8:\"nrqsnchz\";s:20:\"Enrique S&#225;nchez\";s:9:\"epiqueras\";s:9:\"epiqueras\";s:6:\"kebbet\";s:15:\"Erik Betshammar\";s:14:\"erikjandelange\";s:14:\"erikjandelange\";s:8:\"folletto\";s:22:\"Erin \'Folletto\' Casali\";s:10:\"eringoblog\";s:10:\"eringoblog\";s:9:\"eroraghav\";s:9:\"eroraghav\";s:8:\"etoledom\";s:8:\"etoledom\";s:5:\"thegp\";s:9:\"EugeneBos\";s:10:\"circlecube\";s:12:\"Evan Mullins\";s:8:\"fabifott\";s:6:\"Fabian\";s:11:\"fabiankaegy\";s:16:\"Fabian K&#228;gy\";s:6:\"gaambo\";s:11:\"Fabian Todt\";s:10:\"felipeelia\";s:11:\"Felipe Elia\";s:8:\"flixos90\";s:11:\"Felix Arntz\";s:6:\"ferkho\";s:14:\"Ferenc Forgacs\";s:9:\"mista-flo\";s:12:\"Florian TIAR\";s:7:\"flymike\";s:7:\"flymike\";s:8:\"fjarrett\";s:15:\"Frankie Jarrett\";s:11:\"frank-klein\";s:11:\"Frank Klein\";s:14:\"fullofcaffeine\";s:14:\"fullofcaffeine\";s:5:\"ecgan\";s:12:\"Gan Eng Chin\";s:15:\"garrett-eclipse\";s:13:\"Garrett Hyder\";s:7:\"garyc40\";s:8:\"Gary Cao\";s:5:\"garyj\";s:10:\"Gary Jones\";s:5:\"pento\";s:15:\"Gary Pendergast\";s:5:\"gchtr\";s:5:\"gchtr\";s:10:\"soulseekah\";s:17:\"Gennady Kovshenin\";s:17:\"subscriptiongroup\";s:6:\"George\";s:6:\"geriux\";s:6:\"geriux\";s:14:\"glauberglauber\";s:12:\"Glauber Mota\";s:12:\"glendaviesnz\";s:12:\"glendaviesnz\";s:12:\"goldenapples\";s:12:\"goldenapples\";s:6:\"gziolo\";s:21:\"Greg Zi&#243;łkowski\";s:14:\"guidooffermans\";s:14:\"guidooffermans\";s:9:\"gumacahin\";s:9:\"gumacahin\";s:4:\"hvar\";s:5:\"H-var\";s:5:\"hakre\";s:5:\"hakre\";s:8:\"happiryu\";s:8:\"happiryu\";s:14:\"hareesh-pillai\";s:7:\"Hareesh\";s:7:\"isharis\";s:14:\"Haris Zulfiqar\";s:6:\"harrym\";s:6:\"harrym\";s:11:\"harshbarach\";s:11:\"harshbarach\";s:9:\"azhiyadev\";s:14:\"Hauwa Abashiya\";s:8:\"hazdiego\";s:3:\"Haz\";s:11:\"henrywright\";s:12:\"Henry Wright\";s:10:\"herregroen\";s:11:\"Herre Groen\";s:5:\"hoasi\";s:5:\"HoaSi\";s:11:\"howdy_mcgee\";s:11:\"Howdy_McGee\";s:11:\"hlashbrooke\";s:15:\"Hugh Lashbrooke\";s:7:\"iandunn\";s:8:\"Ian Dunn\";s:13:\"igorradovanov\";s:14:\"Igor Radovanov\";s:9:\"gsayed786\";s:11:\"Imran Sayed\";s:8:\"ingereck\";s:8:\"ingereck\";s:7:\"ipstenu\";s:22:\"Ipstenu (Mika Epstein)\";s:9:\"iqbalbary\";s:9:\"iqbalbary\";s:10:\"ireneyoast\";s:15:\"Irene Strikkers\";s:13:\"jagirbaheshwp\";s:13:\"jagirbaheshwp\";s:13:\"twentyzerotwo\";s:13:\"Jake Whiteley\";s:12:\"jamescollins\";s:13:\"James Collins\";s:11:\"jameskoster\";s:12:\"James Koster\";s:12:\"jameslnewell\";s:12:\"jameslnewell\";s:7:\"jnylen0\";s:11:\"James Nylen\";s:11:\"jamesros161\";s:12:\"James Rosado\";s:8:\"janthiel\";s:9:\"Jan Thiel\";s:13:\"javidalkaruzi\";s:12:\"Janvo Aldred\";s:9:\"jaredcobb\";s:10:\"Jared Cobb\";s:7:\"jaswrks\";s:14:\"Jason Caldwell\";s:11:\"madtownlems\";s:28:\"Jason LeMahieu (MadtownLems)\";s:9:\"javorszky\";s:9:\"javorszky\";s:12:\"jaydeep-rami\";s:11:\"Jaydip Rami\";s:8:\"jeffikus\";s:8:\"jeffikus\";s:10:\"jeffmatson\";s:11:\"Jeff Matson\";s:5:\"jffng\";s:8:\"Jeff Ong\";s:10:\"jellypixel\";s:10:\"jellypixel\";s:10:\"jeremyfelt\";s:11:\"Jeremy Felt\";s:12:\"jeremyescott\";s:12:\"Jeremy Scott\";s:9:\"jeremyyip\";s:10:\"Jeremy Yip\";s:11:\"jeroenrotty\";s:12:\"Jeroen Rotty\";s:5:\"jeryj\";s:5:\"jeryj\";s:6:\"jeslen\";s:12:\"Jeslen Bucci\";s:10:\"jfoulquier\";s:10:\"jfoulquier\";s:8:\"jimyaghi\";s:8:\"jimyaghi\";s:8:\"jipmoors\";s:9:\"Jip Moors\";s:9:\"joedolson\";s:10:\"Joe Dolson\";s:16:\"joelclimbsthings\";s:16:\"joelclimbsthings\";s:9:\"joelyoder\";s:9:\"joelyoder\";s:9:\"joemcgill\";s:10:\"Joe McGill\";s:12:\"johannadevos\";s:14:\"Johanna de Vos\";s:7:\"johnny5\";s:11:\"John Godley\";s:15:\"johnjamesjacoby\";s:17:\"John James Jacoby\";s:6:\"psykro\";s:18:\"Jonathan Bossenger\";s:15:\"jonathanstegall\";s:16:\"Jonathan Stegall\";s:5:\"jb510\";s:9:\"Jon Brown\";s:12:\"spacedmonkey\";s:12:\"Jonny Harris\";s:14:\"jonoaldersonwp\";s:13:\"Jono Alderson\";s:11:\"joostdevalk\";s:13:\"Joost de Valk\";s:9:\"jordesign\";s:9:\"jordesign\";s:4:\"koke\";s:12:\"Jorge Bernal\";s:16:\"jorgefilipecosta\";s:11:\"Jorge Costa\";s:9:\"joseaneto\";s:9:\"joseaneto\";s:12:\"joshlevinson\";s:13:\"Josh Levinson\";s:7:\"shelob9\";s:12:\"Josh Pollock\";s:8:\"joshuatf\";s:8:\"joshuatf\";s:3:\"tai\";s:15:\"JOTAKI, Taisuke\";s:8:\"joyously\";s:3:\"Joy\";s:7:\"jsnajdr\";s:7:\"jsnajdr\";s:3:\"jrf\";s:24:\"Juliette Reinders Folmer\";s:11:\"junaidbhura\";s:12:\"Junaid Bhura\";s:10:\"justlevine\";s:10:\"justlevine\";s:10:\"kadamwhite\";s:13:\"K. Adam White\";s:11:\"kevin940726\";s:7:\"Kai Hao\";s:7:\"trepmal\";s:16:\"Kailey (trepmal)\";s:14:\"akabarikalpesh\";s:15:\"Kalpesh Akabari\";s:12:\"karthikbhatb\";s:12:\"Karthik Bhat\";s:8:\"kasparsd\";s:7:\"Kaspars\";s:10:\"kellybleck\";s:10:\"kellybleck\";s:13:\"kellychoffman\";s:13:\"Kelly Hoffman\";s:13:\"kellylawrence\";s:13:\"kellylawrence\";s:7:\"kelsu02\";s:7:\"Kelly R\";s:5:\"khag7\";s:13:\"Kevin Hagerty\";s:11:\"kharisblank\";s:18:\"Kharis Sulistiyono\";s:11:\"kipperlenny\";s:11:\"Kipperlenny\";s:7:\"kirilzh\";s:16:\"Kiril Zhelyazkov\";s:9:\"kburgoine\";s:15:\"Kirsty Burgoine\";s:12:\"kishanjasani\";s:13:\"Kishan Jasani\";s:7:\"ixkaito\";s:4:\"Kite\";s:9:\"kittmedia\";s:9:\"KittMedia\";s:6:\"kjbenk\";s:6:\"kjbenk\";s:6:\"knutsp\";s:13:\"Knut Sparhell\";s:8:\"komagain\";s:8:\"komagain\";s:8:\"obenland\";s:19:\"Konstantin Obenland\";s:11:\"krupajnanda\";s:5:\"Krupa\";s:11:\"kbjohnson90\";s:15:\"Kyle B. Johnson\";s:6:\"landau\";s:6:\"landau\";s:9:\"lmurillom\";s:15:\"Larissa Murillo\";s:6:\"latifi\";s:6:\"latifi\";s:14:\"newyorkerlaura\";s:11:\"Laura Byrne\";s:16:\"laxman-prajapati\";s:16:\"Laxman Prajapati\";s:10:\"leogermani\";s:10:\"leogermani\";s:6:\"gamerz\";s:11:\"Lester Chan\";s:8:\"leutrimh\";s:13:\"Leutrim Husaj\";s:8:\"limera1n\";s:6:\"lim3ra\";s:8:\"lpointet\";s:14:\"Lionel Pointet\";s:7:\"llizard\";s:7:\"llizard\";s:13:\"louislaugesen\";s:5:\"Louis\";s:15:\"lucagrandicelli\";s:16:\"Luca Grandicelli\";s:6:\"_luigi\";s:15:\"Luigi Cavalieri\";s:12:\"lukecavanagh\";s:13:\"Luke Cavanagh\";s:5:\"lumne\";s:5:\"Lumne\";s:7:\"mager19\";s:7:\"mager19\";s:9:\"onemaggie\";s:14:\"Maggie Cabrera\";s:12:\"mahesh901122\";s:15:\"Mahesh Waghmare\";s:12:\"mailnew2ster\";s:12:\"mailnew2ster\";s:11:\"shamimmoeen\";s:18:\"Mainul Hassan Main\";s:11:\"malinajirka\";s:11:\"malinajirka\";s:14:\"manzwebdesigns\";s:14:\"manzwebdesigns\";s:4:\"mkaz\";s:18:\"Marcus Kazmierczak\";s:10:\"marekhrabe\";s:11:\"Marek Hrabe\";s:9:\"chaton666\";s:11:\"Marie Comet\";s:13:\"marijnkoopman\";s:6:\"Marijn\";s:5:\"tyxla\";s:14:\"Marin Atanasov\";s:11:\"markjaquith\";s:12:\"Mark Jaquith\";s:12:\"markoheijnen\";s:13:\"Marko Heijnen\";s:11:\"markparnell\";s:12:\"Mark Parnell\";s:15:\"markscottrobson\";s:11:\"Mark Robson\";s:8:\"markshep\";s:8:\"markshep\";s:7:\"marks99\";s:13:\"Mark Smallman\";s:4:\"mapk\";s:11:\"Mark Uraine\";s:5:\"m-e-h\";s:13:\"Marty Helmick\";s:5:\"wetah\";s:19:\"Mateus Machado Luna\";s:5:\"imath\";s:12:\"Mathieu Viet\";s:12:\"mattchowning\";s:12:\"mattchowning\";s:14:\"webdevmattcrom\";s:13:\"Matt Cromwell\";s:19:\"gothickgothickorguk\";s:11:\"Matt Gibson\";s:9:\"pfefferle\";s:18:\"Matthias Pfefferle\";s:8:\"mattkeys\";s:9:\"Matt Keys\";s:4:\"matt\";s:14:\"Matt Mullenweg\";s:10:\"mattoperry\";s:10:\"mattoperry\";s:9:\"mattwiebe\";s:10:\"Matt Wiebe\";s:12:\"mayankmajeji\";s:13:\"Mayank Majeji\";s:11:\"meaganhanes\";s:12:\"Meagan Hanes\";s:13:\"megphillips91\";s:12:\"Meg Phillips\";s:4:\"mgol\";s:4:\"mgol\";s:17:\"mgrenierfarmmedia\";s:17:\"mgrenierfarmmedia\";s:15:\"michael-arestad\";s:15:\"Michael Arestad\";s:6:\"tw2113\";s:16:\"Michael Beckwith\";s:12:\"michelleames\";s:18:\"Michelle Frechette\";s:4:\"mcsf\";s:14:\"Miguel Fonseca\";s:6:\"mihdan\";s:6:\"mihdan\";s:9:\"mikelopez\";s:9:\"mikelopez\";s:12:\"mikeschroder\";s:13:\"Mike Schroder\";s:9:\"mikeyarce\";s:10:\"Mikey Arce\";s:10:\"milana_cap\";s:10:\"Milana Cap\";s:7:\"dimadin\";s:12:\"Milan Dinić\";s:7:\"eemitch\";s:15:\"Mitchell Bennis\";s:7:\"mmarco9\";s:7:\"mmarco9\";s:6:\"batmoo\";s:15:\"Mohammad Jangda\";s:6:\"mopsyd\";s:6:\"mopsyd\";s:11:\"morganestes\";s:12:\"Morgan Estes\";s:8:\"gwendydd\";s:10:\"Morgan Kay\";s:9:\"man4toman\";s:18:\"Morteza Geransayeh\";s:12:\"computerguru\";s:6:\"mqudsi\";s:8:\"mreishus\";s:8:\"mreishus\";s:5:\"mrgrt\";s:5:\"mrgrt\";s:10:\"mrjoeldean\";s:10:\"mrjoeldean\";s:8:\"mukesh27\";s:14:\"Mukesh Panchal\";s:7:\"munyagu\";s:7:\"munyagu\";s:13:\"musicaljoeker\";s:13:\"musicaljoeker\";s:9:\"mweichert\";s:9:\"mweichert\";s:5:\"n5hzr\";s:5:\"n5hzr\";s:11:\"nabilmoqbel\";s:12:\"Nabil Moqbel\";s:7:\"naoki0h\";s:12:\"Naoki Ohashi\";s:3:\"nao\";s:12:\"Naoko Takano\";s:12:\"nateinaction\";s:8:\"Nate Gay\";s:11:\"nathanatmoz\";s:14:\"Nathan Johnson\";s:15:\"navanathbhosale\";s:16:\"Navanath Bhosale\";s:13:\"naveenkharwar\";s:14:\"Naveen Kharwar\";s:6:\"lcyh78\";s:19:\"Neil James (lcyh78)\";s:8:\"nendeb55\";s:6:\"nendeb\";s:9:\"krstarica\";s:3:\"net\";s:14:\"arealnobrainer\";s:9:\"Netravnen\";s:10:\"nicomollet\";s:10:\"nicomollet\";s:9:\"jainnidhi\";s:10:\"Nidhi Jain\";s:10:\"nielslange\";s:11:\"Niels Lange\";s:7:\"nikolam\";s:6:\"Nikola\";s:10:\"nbachiyski\";s:17:\"Nikolay Bachiyski\";s:7:\"njbrown\";s:7:\"njbrown\";s:5:\"nlpro\";s:5:\"nlpro\";s:10:\"noahtallen\";s:10:\"Noah Allen\";s:11:\"noahshrader\";s:11:\"noahshrader\";s:6:\"nourma\";s:6:\"nourma\";s:9:\"oakesjosh\";s:9:\"oakesjosh\";s:8:\"nosolosw\";s:12:\"O Andr&#233;\";s:9:\"oguzkocer\";s:9:\"oguzkocer\";s:8:\"oglekler\";s:13:\"Olga Gleckler\";s:9:\"alshakero\";s:13:\"Omar Alshaker\";s:9:\"omarreiss\";s:10:\"Omar Reiss\";s:10:\"oolleegg55\";s:10:\"oolleegg55\";s:17:\"optimizingmatters\";s:18:\"Optimizing Matters\";s:7:\"ov3rfly\";s:7:\"Ov3rfly\";s:7:\"ovann86\";s:7:\"ovann86\";s:7:\"ovenall\";s:7:\"ovenall\";s:4:\"oxyc\";s:4:\"oxyc\";s:11:\"paaljoachim\";s:20:\"Paal Joachim Romdahl\";s:10:\"jhonqwerty\";s:10:\"pabloselin\";s:5:\"paddy\";s:5:\"Paddy\";s:12:\"pankajmohale\";s:13:\"Pankaj Mohale\";s:10:\"swissspidy\";s:15:\"Pascal Birchler\";s:7:\"casiepa\";s:13:\"Pascal Casier\";s:7:\"pbearne\";s:11:\"Paul Bearne\";s:7:\"pabline\";s:12:\"Paul Bunkham\";s:13:\"paulschreiber\";s:14:\"Paul Schreiber\";s:11:\"paulstonier\";s:12:\"Paul Stonier\";s:10:\"pschrottky\";s:18:\"Paul Von Schrottky\";s:13:\"pedromendonca\";s:19:\"Pedro Mendon&#231;a\";s:14:\"pentatonicfunk\";s:14:\"pentatonicfunk\";s:7:\"pputzer\";s:4:\"pepe\";s:6:\"pekz0r\";s:13:\"Peter Elmered\";s:10:\"psmits1567\";s:11:\"Peter Smits\";s:13:\"peterwilsoncc\";s:12:\"Peter Wilson\";s:14:\"johnstonphilip\";s:13:\"Phil Johnston\";s:6:\"pierlo\";s:13:\"Pierre Gordon\";s:17:\"decrecementofeliz\";s:10:\"Pilar Mera\";s:7:\"wppinar\";s:5:\"Pinar\";s:7:\"boniu91\";s:13:\"Piotrek Boniu\";s:9:\"pishmishy\";s:9:\"pishmishy\";s:12:\"pkvillanueva\";s:12:\"pkvillanueva\";s:14:\"prashanttholia\";s:14:\"prashanttholia\";s:9:\"pratikkry\";s:15:\"Pratik K. Yadav\";s:9:\"presskopp\";s:9:\"Presskopp\";s:9:\"presstoke\";s:9:\"presstoke\";s:8:\"prionkor\";s:8:\"prionkor\";s:8:\"psealock\";s:8:\"psealock\";s:13:\"puneetsahalot\";s:14:\"Puneet Sahalot\";s:7:\"itsjonq\";s:1:\"Q\";s:11:\"rachelbaker\";s:12:\"Rachel Baker\";s:11:\"rajanit2000\";s:13:\"Rajan Vijayan\";s:14:\"rajeshsingh520\";s:14:\"rajeshsingh520\";s:5:\"ramiy\";s:14:\"Rami Yushuvaev\";s:9:\"ravipatel\";s:9:\"ravipatel\";s:9:\"jontyravi\";s:12:\"Ravi Vaghela\";s:10:\"rebasaurus\";s:10:\"rebasaurus\";s:10:\"redstar504\";s:10:\"redstar504\";s:11:\"regankhadgi\";s:12:\"Regan Khadgi\";s:9:\"renehermi\";s:13:\"Rene Hermenau\";s:7:\"retlehs\";s:7:\"retlehs\";s:8:\"retrofox\";s:8:\"retrofox\";s:8:\"riaanlom\";s:8:\"riaanlom\";s:15:\"ribaricplusplus\";s:15:\"ribaricplusplus\";s:9:\"richtabor\";s:10:\"Rich Tabor\";s:5:\"rnaby\";s:5:\"Rnaby\";s:10:\"noisysocks\";s:15:\"Robert Anderson\";s:11:\"miqrogroove\";s:13:\"Robert Chapin\";s:7:\"kreppar\";s:13:\"Rodrigo Arias\";s:8:\"rogerlos\";s:8:\"rogerlos\";s:7:\"roikles\";s:7:\"roikles\";s:11:\"rolfsiebers\";s:12:\"Rolf Siebers\";s:12:\"ronakganatra\";s:13:\"Ronak Ganatra\";s:4:\"roo2\";s:4:\"roo2\";s:10:\"rtagliento\";s:10:\"rtagliento\";s:10:\"bookdude13\";s:13:\"Ryan Fredlund\";s:12:\"ryankienstra\";s:13:\"Ryan Kienstra\";s:6:\"rmccue\";s:10:\"Ryan McCue\";s:7:\"welcher\";s:12:\"Ryan Welcher\";s:5:\"soean\";s:16:\"S&#246;ren Wrede\";s:13:\"sabrinazeidan\";s:14:\"Sabrina Zeidan\";s:9:\"saeedfard\";s:10:\"Saeed Fard\";s:14:\"salvoaranzulla\";s:14:\"salvoaranzulla\";s:6:\"samful\";s:13:\"Sam Fullalove\";s:6:\"otto42\";s:18:\"Samuel Wood (Otto)\";s:9:\"sswebster\";s:11:\"Sam Webster\";s:8:\"sanzeeb3\";s:13:\"Sanjeev Aryal\";s:10:\"saqibameen\";s:11:\"Saqib Ameen\";s:14:\"sarayourfriend\";s:14:\"sarayourfriend\";s:10:\"sawanoboly\";s:10:\"sawanoboly\";s:8:\"scarolan\";s:8:\"scarolan\";s:6:\"l3rady\";s:12:\"Scott Cariss\";s:11:\"coffee2code\";s:12:\"Scott Reilly\";s:6:\"scribu\";s:6:\"scribu\";s:9:\"scruffian\";s:9:\"scruffian\";s:17:\"seanpaulrasmussen\";s:17:\"seanpaulrasmussen\";s:15:\"sebastianpisula\";s:16:\"Sebastian Pisula\";s:5:\"sebsz\";s:5:\"SeBsZ\";s:7:\"senning\";s:7:\"Senning\";s:7:\"yakimun\";s:14:\"Sergey Yakimov\";s:13:\"sergioestevao\";s:13:\"SergioEstevao\";s:12:\"shaunandrews\";s:12:\"shaunandrews\";s:12:\"shital-patel\";s:15:\"Shital Marakana\";s:7:\"shramee\";s:7:\"shramee\";s:6:\"sresok\";s:11:\"Simon Resok\";s:7:\"sirreal\";s:7:\"sirreal\";s:9:\"smerriman\";s:9:\"smerriman\";s:14:\"snapfractalpop\";s:14:\"snapfractalpop\";s:11:\"sproutchris\";s:11:\"sproutchris\";s:6:\"stulab\";s:22:\"St&#233;phane Treilhou\";s:8:\"metodiew\";s:15:\"Stanko Metodiev\";s:6:\"garubi\";s:14:\"Stefano Garuti\";s:11:\"sabernhardt\";s:17:\"Stephen Bernhardt\";s:14:\"dufresnesteven\";s:14:\"Steve Dufresne\";s:10:\"stevenlinx\";s:10:\"stevenlinx\";s:9:\"sterndata\";s:24:\"Steven Stern (sterndata)\";s:14:\"stoyangeorgiev\";s:15:\"Stoyan Georgiev\";s:13:\"sudoshreyansh\";s:13:\"sudoshreyansh\";s:4:\"smub\";s:11:\"Syed Balkhi\";s:8:\"szaqal21\";s:8:\"szaqal21\";s:6:\"utz119\";s:9:\"TeBenachi\";s:9:\"techboyg5\";s:9:\"techboyg5\";s:10:\"tellyworth\";s:10:\"Tellyworth\";s:16:\"thefarlilacfield\";s:16:\"thefarlilacfield\";s:8:\"thib3113\";s:8:\"thib3113\";s:12:\"thijsvanloef\";s:12:\"thijsvanloef\";s:12:\"thomaslhotta\";s:12:\"thomaslhotta\";s:8:\"webzunft\";s:8:\"Thomas M\";s:11:\"thomasplevy\";s:19:\"Thomas Patrick Levy\";s:10:\"timhavinga\";s:11:\"Tim Havinga\";s:10:\"hedgefield\";s:13:\"Tim Hengeveld\";s:6:\"sippis\";s:14:\"Timi Wahalahti\";s:10:\"timotijhof\";s:10:\"TimoTijhof\";s:5:\"tkama\";s:5:\"Tkama\";s:10:\"tmdesigned\";s:10:\"tmdesigned\";s:8:\"tobiasbg\";s:8:\"TobiasBg\";s:12:\"tobifjellner\";s:33:\"tobifjellner (Tor-Bjorn Fjellner)\";s:9:\"toro_unit\";s:25:\"Toro_Unit (Hiroshi Urabe)\";s:9:\"torres126\";s:9:\"torres126\";s:10:\"zodiac1978\";s:18:\"Torsten Landsiedel\";s:9:\"itowhid06\";s:20:\"Towhidul I Chowdhury\";s:4:\"tray\";s:10:\"tracy apps\";s:10:\"treibstoff\";s:10:\"treibstoff\";s:10:\"dinhtungdu\";s:7:\"Tung Du\";s:7:\"tzafrir\";s:7:\"tzafrir\";s:10:\"desaiuditd\";s:10:\"Udit Desai\";s:14:\"grapplerulrich\";s:6:\"Ulrich\";s:5:\"uxkai\";s:5:\"uxkai\";s:12:\"valentinbora\";s:13:\"Valentin Bora\";s:14:\"contact-banker\";s:12:\"Varun Sharma\";s:8:\"vcanales\";s:8:\"vcanales\";s:11:\"ravivaddweb\";s:11:\"vidhiaddweb\";s:14:\"vinayakanivase\";s:15:\"Vinayak Anivase\";s:8:\"vinita29\";s:16:\"Vinita Tandulkar\";s:9:\"usestrict\";s:5:\"Vinny\";s:11:\"virgodesign\";s:11:\"virgodesign\";s:12:\"webmandesign\";s:33:\"WebMan Design &#124; Oliver Juhas\";s:11:\"webmigrates\";s:24:\"Webmigrates Technologies\";s:11:\"westonruter\";s:12:\"Weston Ruter\";s:7:\"earnjam\";s:17:\"William Earnhardt\";s:13:\"williampatton\";s:13:\"williampatton\";s:7:\"wittich\";s:7:\"wittich\";s:8:\"worldweb\";s:8:\"worldweb\";s:7:\"yansern\";s:8:\"Yan Sern\";s:5:\"yoavf\";s:10:\"Yoav Farhi\";s:5:\"yscik\";s:5:\"yscik\";s:9:\"fierevere\";s:3:\"Yui\";s:7:\"y_kolev\";s:7:\"Y_Kolev\";s:7:\"zebulan\";s:17:\"Zebulan Stanphill\";}}s:9:\"libraries\";a:3:{s:4:\"name\";s:18:\"External Libraries\";s:4:\"type\";s:9:\"libraries\";s:4:\"data\";a:42:{i:0;a:2:{i:0;s:14:\"Babel Polyfill\";i:1;s:41:\"https://babeljs.io/docs/en/babel-polyfill\";}i:1;a:2:{i:0;s:11:\"Backbone.js\";i:1;s:22:\"http://backbonejs.org/\";}i:2;a:2:{i:0;s:10:\"Class POP3\";i:1;s:25:\"https://squirrelmail.org/\";}i:3;a:2:{i:0;s:12:\"clipboard.js\";i:1;s:24:\"https://clipboardjs.com/\";}i:4;a:2:{i:0;s:7:\"Closest\";i:1;s:40:\"https://github.com/jonathantneal/closest\";}i:5;a:2:{i:0;s:10:\"CodeMirror\";i:1;s:23:\"https://codemirror.net/\";}i:6;a:2:{i:0;s:16:\"Color Animations\";i:1;s:33:\"https://plugins.jquery.com/color/\";}i:7;a:2:{i:0;s:8:\"getID3()\";i:1;s:30:\"http://getid3.sourceforge.net/\";}i:8;a:2:{i:0;s:8:\"FormData\";i:1;s:40:\"https://github.com/jimmywarting/FormData\";}i:9;a:2:{i:0;s:15:\"Horde Text Diff\";i:1;s:23:\"https://pear.horde.org/\";}i:10;a:2:{i:0;s:11:\"hoverIntent\";i:1;s:57:\"http://cherne.net/brian/resources/jquery.hoverIntent.html\";}i:11;a:2:{i:0;s:13:\"imgAreaSelect\";i:1;s:42:\"http://odyniec.net/projects/imgareaselect/\";}i:12;a:2:{i:0;s:4:\"Iris\";i:1;s:34:\"https://github.com/Automattic/Iris\";}i:13;a:2:{i:0;s:6:\"jQuery\";i:1;s:19:\"https://jquery.com/\";}i:14;a:2:{i:0;s:9:\"jQuery UI\";i:1;s:21:\"https://jqueryui.com/\";}i:15;a:2:{i:0;s:14:\"jQuery Hotkeys\";i:1;s:41:\"https://github.com/tzuryby/jquery.hotkeys\";}i:16;a:2:{i:0;s:22:\"jQuery serializeObject\";i:1;s:49:\"http://benalman.com/projects/jquery-misc-plugins/\";}i:17;a:2:{i:0;s:12:\"jQuery.query\";i:1;s:40:\"https://plugins.jquery.com/query-object/\";}i:18;a:2:{i:0;s:14:\"jQuery.suggest\";i:1;s:43:\"https://github.com/pvulgaris/jquery.suggest\";}i:19;a:2:{i:0;s:21:\"jQuery UI Touch Punch\";i:1;s:27:\"http://touchpunch.furf.com/\";}i:20;a:2:{i:0;s:5:\"json2\";i:1;s:43:\"https://github.com/douglascrockford/JSON-js\";}i:21;a:2:{i:0;s:6:\"Lodash\";i:1;s:19:\"https://lodash.com/\";}i:22;a:2:{i:0;s:7:\"Masonry\";i:1;s:28:\"http://masonry.desandro.com/\";}i:23;a:2:{i:0;s:15:\"MediaElement.js\";i:1;s:26:\"http://mediaelementjs.com/\";}i:24;a:2:{i:0;s:6:\"Moment\";i:1;s:20:\"http://momentjs.com/\";}i:25;a:2:{i:0;s:6:\"PclZip\";i:1;s:33:\"http://www.phpconcept.net/pclzip/\";}i:26;a:2:{i:0;s:6:\"PemFTP\";i:1;s:71:\"https://www.phpclasses.org/package/1743-PHP-FTP-client-in-pure-PHP.html\";}i:27;a:2:{i:0;s:6:\"phpass\";i:1;s:31:\"http://www.openwall.com/phpass/\";}i:28;a:2:{i:0;s:9:\"PHPMailer\";i:1;s:38:\"https://github.com/PHPMailer/PHPMailer\";}i:29;a:2:{i:0;s:8:\"Plupload\";i:1;s:24:\"http://www.plupload.com/\";}i:30;a:2:{i:0;s:13:\"random_compat\";i:1;s:42:\"https://github.com/paragonie/random_compat\";}i:31;a:2:{i:0;s:5:\"React\";i:1;s:20:\"https://reactjs.org/\";}i:32;a:2:{i:0;s:5:\"Redux\";i:1;s:21:\"https://redux.js.org/\";}i:33;a:2:{i:0;s:8:\"Requests\";i:1;s:31:\"http://requests.ryanmccue.info/\";}i:34;a:2:{i:0;s:9:\"SimplePie\";i:1;s:21:\"http://simplepie.org/\";}i:35;a:2:{i:0;s:27:\"The Incutio XML-RPC Library\";i:1;s:42:\"https://code.google.com/archive/p/php-ixr/\";}i:36;a:2:{i:0;s:8:\"Thickbox\";i:1;s:32:\"http://codylindley.com/thickbox/\";}i:37;a:2:{i:0;s:7:\"TinyMCE\";i:1;s:24:\"https://www.tinymce.com/\";}i:38;a:2:{i:0;s:7:\"Twemoji\";i:1;s:34:\"https://github.com/twitter/twemoji\";}i:39;a:2:{i:0;s:13:\"Underscore.js\";i:1;s:24:\"http://underscorejs.org/\";}i:40;a:2:{i:0;s:12:\"whatwg-fetch\";i:1;s:31:\"https://github.com/github/fetch\";}i:41;a:2:{i:0;s:6:\"zxcvbn\";i:1;s:33:\"https://github.com/dropbox/zxcvbn\";}}}}s:4:\"data\";a:2:{s:8:\"profiles\";s:33:\"https://profiles.wordpress.org/%s\";s:7:\"version\";s:3:\"5.6\";}}', 'no'),
(140, '_site_transient_timeout_community-events-fe4e07f0be42597747a11d11a8b83bbe', '1607744799', 'no'),
(141, '_site_transient_community-events-fe4e07f0be42597747a11d11a8b83bbe', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:4:{s:11:\"description\";s:6:\"Moscow\";s:8:\"latitude\";s:8:\"55.75222\";s:9:\"longitude\";s:8:\"37.61556\";s:7:\"country\";s:2:\"RU\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Discussion group: Organizing WordPress Meetups - Getting Started\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/274844281/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-12-11 04:00:00\";s:8:\"end_date\";s:19:\"2020-12-11 05:00:00\";s:20:\"start_unix_timestamp\";i:1607688000;s:18:\"end_unix_timestamp\";i:1607691600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', 'create-your-website-with-blocks'),
(4, 5, '_customize_changeset_uuid', '7cf7cd26-ec1b-4b75-8b6e-019b131911dc'),
(5, 6, '_customize_draft_post_name', 'about'),
(6, 6, '_customize_changeset_uuid', '7cf7cd26-ec1b-4b75-8b6e-019b131911dc'),
(7, 7, '_customize_draft_post_name', 'contact'),
(8, 7, '_customize_changeset_uuid', '7cf7cd26-ec1b-4b75-8b6e-019b131911dc'),
(9, 8, '_customize_draft_post_name', 'blog'),
(10, 8, '_customize_changeset_uuid', '7cf7cd26-ec1b-4b75-8b6e-019b131911dc'),
(12, 10, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(13, 10, '_customize_changeset_uuid', '7cf7cd26-ec1b-4b75-8b6e-019b131911dc'),
(14, 11, '_edit_lock', '1607701340:1'),
(15, 11, '_pingme', '1'),
(16, 11, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-11 15:39:13', '2020-12-11 15:39:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-12-11 15:39:13', '2020-12-11 15:39:13', '', 0, 'http://192.168.99.101:5050/?p=1', 0, 'post', '', 1),
(2, 1, '2020-12-11 15:39:13', '2020-12-11 15:39:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://192.168.99.101:5050/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-12-11 15:39:13', '2020-12-11 15:39:13', '', 0, 'http://192.168.99.101:5050/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-12-11 15:39:13', '2020-12-11 15:39:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://192.168.99.101:5050.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-12-11 15:39:13', '2020-12-11 15:39:13', '', 0, 'http://192.168.99.101:5050/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-12-11 15:39:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-11 15:39:30', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?p=4', 0, 'post', '', 0),
(5, 1, '2020-12-11 15:42:09', '0000-00-00 00:00:00', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Tremieres&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-11 15:39:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-12-11 15:42:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-11 15:39:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-12-11 15:42:09', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-11 15:39:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-12-11 15:42:09', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-11 15:39:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-12-11 15:42:09', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            10\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.99.101:5050/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.99.101:5050/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:39:48\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\"\n            ],\n            \"sidebar-2\": [\n                \"text-3\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"548048ea7d62386e085749ac89623da6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"06251bbd6f6e18f186693d8662ff35cd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-11 15:40:16\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7cf7cd26-ec1b-4b75-8b6e-019b131911dc', '', '', '2020-12-11 15:42:09', '2020-12-11 15:42:09', '', 0, 'http://192.168.99.101:5050/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2020-12-11 15:42:09', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://192.168.99.101:5050/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-11 15:40:16', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.101:5050/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-12-11 15:44:26', '2020-12-11 15:44:26', '', 'aaaaaa', '', 'publish', 'open', 'open', '', 'aaaaaa', '', '', '2020-12-11 15:44:26', '2020-12-11 15:44:26', '', 0, 'http://192.168.99.101:5050/?p=11', 0, 'post', '', 0),
(12, 1, '2020-12-11 15:44:26', '2020-12-11 15:44:26', '', 'aaaaaa', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-12-11 15:44:26', '2020-12-11 15:44:26', '', 11, 'http://192.168.99.101:5050/?p=12', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 2, 'nickname', 'bulina'),
(20, 2, 'first_name', 'b'),
(21, 2, 'last_name', 'b'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(31, 2, 'wp_user_level', '0'),
(32, 2, 'dismissed_wp_pointers', ''),
(33, 2, 'session_tokens', 'a:1:{s:64:\"404a705edb7850770052782b57b97e823189ce48ed5249bb2ad9247df664e5f1\";a:4:{s:10:\"expiration\";i:1607874299;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1607701499;}}'),
(34, 2, 'community-events-location', 'a:4:{s:11:\"description\";s:6:\"Moscow\";s:8:\"latitude\";s:8:\"55.75222\";s:9:\"longitude\";s:8:\"37.61556\";s:7:\"country\";s:2:\"RU\";}'),
(35, 2, 'wp_user-settings', 'mfold=o'),
(36, 2, 'wp_user-settings-time', '1607701530');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/Kk3APqD5MMjRyqX7ag596vw.dWBw.', 'admin', 'p@mail.ru', 'http://192.168.99.101:5050', '2020-12-11 15:39:13', '', 0, 'admin'),
(2, 'bulina', '$P$BpeDEk5v26BSAaCxF3zTgztUY0qih1/', 'bulina', 'b@c.ru', 'http://www', '2020-12-11 15:43:36', '1607701416:$P$BF5MmYQ38mONoha8JSGor.ujUzfG7j/', 0, 'b b');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
