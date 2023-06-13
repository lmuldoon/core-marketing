-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 12:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creative_solutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `cs_commentmeta`
--

CREATE TABLE `cs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cs_comments`
--

CREATE TABLE `cs_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_comments`
--

INSERT INTO `cs_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://en-gb.wordpress.org/', '', '2023-06-08 17:31:19', '2023-06-08 16:31:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_links`
--

CREATE TABLE `cs_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cs_options`
--

CREATE TABLE `cs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_options`
--

INSERT INTO `cs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://creative.lm', 'yes'),
(2, 'home', 'http://creative.lm', 'yes'),
(3, 'blogname', 'Creative Solutions', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lukemuldoon87@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:116:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"projects/?$\";s:28:\"index.php?post_type=projects\";s:41:\"projects/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:36:\"projects/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:28:\"projects/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=projects&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"projects/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"projects/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"projects/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"projects/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"projects/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"projects/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"projects/(.+?)/embed/?$\";s:41:\"index.php?projects=$matches[1]&embed=true\";s:27:\"projects/(.+?)/trackback/?$\";s:35:\"index.php?projects=$matches[1]&tb=1\";s:47:\"projects/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:42:\"projects/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:35:\"projects/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&paged=$matches[2]\";s:42:\"projects/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&cpage=$matches[2]\";s:31:\"projects/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?projects=$matches[1]&page=$matches[2]\";s:51:\"categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?categories=$matches[1]&feed=$matches[2]\";s:46:\"categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?categories=$matches[1]&feed=$matches[2]\";s:27:\"categories/([^/]+)/embed/?$\";s:43:\"index.php?categories=$matches[1]&embed=true\";s:39:\"categories/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?categories=$matches[1]&paged=$matches[2]\";s:21:\"categories/([^/]+)/?$\";s:32:\"index.php?categories=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:90:\"C:\\xampp\\htdocs\\core-marketing-luke-muldoon/wp-content/themes/creative_solutions/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'creative_solutions', 'yes'),
(41, 'stylesheet', 'creative_solutions', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/London', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '18', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1701793878', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'cs_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'en_GB', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:185:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Posts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts /--></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:258:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Recent Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:177:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Archives</h2>\n<!-- /wp:heading -->\n\n<!-- wp:archives /--></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:181:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Categories</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /--></div>\n<!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:7:\"footer1\";a:1:{i:0;s:17:\"company_details-7\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1686655879;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1686673879;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1686673892;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1686673894;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1686933079;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:1:{s:22:\"FkCvHd2oc86MNhkSbfNYCU\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BN2duF5LuWIV/e.E.lEqV.i3eC/mbo/\";s:10:\"created_at\";i:1686561217;}}', 'yes'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(135, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1686846693', 'no'),
(136, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1686846694', 'no'),
(138, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(153, 'theme_mods_twentytwentythree', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686241909;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(154, 'current_theme', 'creative solutions', 'yes'),
(155, 'theme_mods_creative_solutions', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:11:\"footer-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(161, '_site_transient_timeout_browser_98104745cf7882c2382937fab62a6709', '1686851548', 'no'),
(162, '_site_transient_browser_98104745cf7882c2382937fab62a6709', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"114.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(175, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(211, 'recently_activated', 'a:0:{}', 'yes'),
(224, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":1}', 'yes'),
(230, 'acf_version', '6.1.6', 'yes'),
(237, 'widget_cw_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'recovery_mode_email_last_sent', '1686561217', 'yes'),
(239, 'widget_company_details', 'a:2:{i:7;a:1:{s:5:\"title\";s:18:\"Creative Solutions\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_company_details-1_company_name', 'Company Name', 'no'),
(243, '_widget_company_details-1_company_name', 'field_64841de9317a5', 'no'),
(244, 'widget_company_details-1_address_line_1', '86 Church Street', 'no'),
(245, '_widget_company_details-1_address_line_1', 'field_64841e08317a6', 'no'),
(246, 'widget_company_details-1_town_city', 'Cambridge', 'no'),
(247, '_widget_company_details-1_town_city', 'field_64841e24317a7', 'no'),
(248, 'widget_company_details-1_postcode', 'CB22 3GC', 'no'),
(249, '_widget_company_details-1_postcode', 'field_64841e34317a8', 'no'),
(250, 'widget_company_details-1_country', 'United Kingdom', 'no'),
(251, '_widget_company_details-1_country', 'field_64841e3b317a9', 'no'),
(253, 'widget_company_details-3_address_line_1', '86 Church Street', 'no'),
(254, '_widget_company_details-3_address_line_1', 'field_64841e08317a6', 'no'),
(255, 'widget_company_details-3_town_city', 'Cambridge', 'no'),
(256, '_widget_company_details-3_town_city', 'field_64841e24317a7', 'no'),
(257, 'widget_company_details-3_postcode', 'CB22 3GC', 'no'),
(258, '_widget_company_details-3_postcode', 'field_64841e34317a8', 'no'),
(259, 'widget_company_details-3_country', 'United Kingdom', 'no'),
(260, '_widget_company_details-3_country', 'field_64841e3b317a9', 'no'),
(261, 'widget_company_details-5_address_line_1', '86 Church Street', 'no'),
(262, '_widget_company_details-5_address_line_1', 'field_64841e08317a6', 'no'),
(263, 'widget_company_details-5_town_city', 'Cambridge', 'no'),
(264, '_widget_company_details-5_town_city', 'field_64841e24317a7', 'no'),
(265, 'widget_company_details-5_postcode', 'CB22 3GC', 'no'),
(266, '_widget_company_details-5_postcode', 'field_64841e34317a8', 'no'),
(267, 'widget_company_details-5_country', 'United Kingdom', 'no'),
(268, '_widget_company_details-5_country', 'field_64841e3b317a9', 'no'),
(331, 'categoires_children', 'a:0:{}', 'yes'),
(344, 'categories_children', 'a:0:{}', 'yes'),
(347, '_site_transient_timeout_available_translations', '1686588818', 'no');
INSERT INTO `cs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(348, '_site_transient_available_translations', 'a:130:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-02 03:21:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 09:55:22\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-29 17:05:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-12 08:57:57\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-07 09:25:34\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 09:37:21\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 08:48:02\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-11 19:56:44\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:37:33\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 12:57:54\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-08 08:00:50\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 17:36:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 07:12:43\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-19 05:08:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-08 13:21:54\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-15 19:52:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:08:08\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-05 06:53:02\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-13 11:28:33\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 05:20:27\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 15:00:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 14:40:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-23 05:45:53\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 10:18:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-06 14:18:22\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 07:01:02\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 13:09:27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 05:57:21\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-28 12:09:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 08:24:13\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-10 13:55:53\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 02:26:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-09 01:41:47\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-10 03:25:18\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 04:46:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 10:02:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 14:36:47\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 09:25:34\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 16:49:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 08:28:13\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 08:31:30\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 11:00:11\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 10:42:08\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-29 11:33:10\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 11:33:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 17:06:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 10:14:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-05 12:20:46\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-16 19:47:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:05:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `cs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(362, '_site_transient_timeout_theme_roots', '1686638272', 'no'),
(363, '_site_transient_theme_roots', 'a:1:{s:18:\"creative_solutions\";s:7:\"/themes\";}', 'no'),
(364, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1686636476;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(365, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1686636477;s:7:\"checked\";a:1:{s:18:\"creative_solutions\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(366, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1686636479;s:8:\"response\";a:0:{}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.1.6\";s:7:\"updated\";s:19:\"2023-05-12 13:17:32\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.1.6/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2023-06-04 23:10:34\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/5.1/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"1.6.3\";s:7:\"updated\";s:19:\"2023-06-04 23:13:12\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6.3/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-03-20 19:24:06\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/en_GB.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.6\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `cs_postmeta`
--

CREATE TABLE `cs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_postmeta`
--

INSERT INTO `cs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_lock', '1686577577:1'),
(10, 9, '_edit_lock', '1686247157:1'),
(16, 20, '_menu_item_type', 'post_type'),
(17, 20, '_menu_item_menu_item_parent', '0'),
(18, 20, '_menu_item_object_id', '7'),
(19, 20, '_menu_item_object', 'page'),
(20, 20, '_menu_item_target', ''),
(21, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 20, '_menu_item_xfn', ''),
(23, 20, '_menu_item_url', ''),
(24, 20, '_menu_item_orphaned', '1686247384'),
(85, 26, '_menu_item_type', 'custom'),
(86, 26, '_menu_item_menu_item_parent', '0'),
(87, 26, '_menu_item_object_id', '26'),
(88, 26, '_menu_item_object', 'custom'),
(89, 26, '_menu_item_target', ''),
(90, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 26, '_menu_item_xfn', ''),
(92, 26, '_menu_item_url', '/#about'),
(94, 27, '_menu_item_type', 'custom'),
(95, 27, '_menu_item_menu_item_parent', '0'),
(96, 27, '_menu_item_object_id', '27'),
(97, 27, '_menu_item_object', 'custom'),
(98, 27, '_menu_item_target', ''),
(99, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 27, '_menu_item_xfn', ''),
(101, 27, '_menu_item_url', '/#work'),
(103, 28, '_menu_item_type', 'custom'),
(104, 28, '_menu_item_menu_item_parent', '0'),
(105, 28, '_menu_item_object_id', '28'),
(106, 28, '_menu_item_object', 'custom'),
(107, 28, '_menu_item_target', ''),
(108, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 28, '_menu_item_xfn', ''),
(110, 28, '_menu_item_url', '/#team'),
(112, 29, '_menu_item_type', 'custom'),
(113, 29, '_menu_item_menu_item_parent', '0'),
(114, 29, '_menu_item_object_id', '29'),
(115, 29, '_menu_item_object', 'custom'),
(116, 29, '_menu_item_target', ''),
(117, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 29, '_menu_item_xfn', ''),
(119, 29, '_menu_item_url', '/#contact'),
(121, 26, '_wp_old_date', '2023-06-08'),
(122, 27, '_wp_old_date', '2023-06-08'),
(123, 28, '_wp_old_date', '2023-06-08'),
(124, 29, '_wp_old_date', '2023-06-08'),
(125, 37, '_edit_last', '1'),
(126, 37, '_edit_lock', '1686394087:1'),
(136, 26, '_wp_old_date', '2023-06-09'),
(137, 27, '_wp_old_date', '2023-06-09'),
(138, 28, '_wp_old_date', '2023-06-09'),
(139, 29, '_wp_old_date', '2023-06-09'),
(143, 45, '_edit_last', '1'),
(144, 45, '_edit_lock', '1686578045:1'),
(145, 47, '_menu_item_type', 'post_type'),
(146, 47, '_menu_item_menu_item_parent', '0'),
(147, 47, '_menu_item_object_id', '45'),
(148, 47, '_menu_item_object', 'page'),
(149, 47, '_menu_item_target', ''),
(150, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 47, '_menu_item_xfn', ''),
(152, 47, '_menu_item_url', ''),
(154, 48, '_edit_last', '1'),
(155, 48, '_edit_lock', '1686571561:1'),
(156, 52, '_edit_last', '1'),
(157, 52, '_edit_lock', '1686569911:1'),
(158, 53, '_wp_attached_file', '2023/06/project1.jpg'),
(159, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project1.jpg\";s:8:\"filesize\";i:64272;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 52, 'preview_image', '53'),
(161, 52, '_preview_image', 'field_6486e5ee4a33e'),
(162, 52, 'preview_text', 'Lorem ipsum dolor sit amet'),
(163, 52, '_preview_text', 'field_6486e6124a33f'),
(164, 54, '_edit_last', '1'),
(165, 54, '_edit_lock', '1686575285:1'),
(166, 55, '_wp_attached_file', '2023/06/project2.jpg'),
(167, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project2.jpg\";s:8:\"filesize\";i:90056;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 54, 'preview_image', '55'),
(169, 54, '_preview_image', 'field_6486e5ee4a33e'),
(170, 54, 'preview_text', 'Lorem ipsum dolor sit amet'),
(171, 54, '_preview_text', 'field_6486e6124a33f'),
(172, 56, '_edit_last', '1'),
(173, 56, '_edit_lock', '1686571978:1'),
(174, 57, '_wp_attached_file', '2023/06/project3.jpg'),
(175, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project3.jpg\";s:8:\"filesize\";i:110828;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 56, 'preview_image', '57'),
(177, 56, '_preview_image', 'field_6486e5ee4a33e'),
(178, 56, 'preview_text', 'Lorem ipsum dolor sit amet'),
(179, 56, '_preview_text', 'field_6486e6124a33f'),
(180, 58, '_edit_last', '1'),
(181, 58, '_edit_lock', '1686571972:1'),
(182, 59, '_wp_attached_file', '2023/06/project4.jpg'),
(183, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project4.jpg\";s:8:\"filesize\";i:92365;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 58, 'preview_image', '59'),
(185, 58, '_preview_image', 'field_6486e5ee4a33e'),
(186, 58, 'preview_text', 'Lorem ipsum dolor sit amet'),
(187, 58, '_preview_text', 'field_6486e6124a33f'),
(188, 60, '_edit_last', '1'),
(189, 60, '_edit_lock', '1686571961:1'),
(190, 61, '_wp_attached_file', '2023/06/project5.jpg'),
(191, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project5.jpg\";s:8:\"filesize\";i:62354;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 60, 'preview_image', '61'),
(193, 60, '_preview_image', 'field_6486e5ee4a33e'),
(194, 60, 'preview_text', 'Lorem ipsum dolor sit amet'),
(195, 60, '_preview_text', 'field_6486e6124a33f'),
(196, 62, '_edit_last', '1'),
(197, 62, '_edit_lock', '1686571954:1'),
(198, 63, '_wp_attached_file', '2023/06/project6.jpg'),
(199, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:411;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project6.jpg\";s:8:\"filesize\";i:45112;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 62, 'preview_image', '63'),
(201, 62, '_preview_image', 'field_6486e5ee4a33e'),
(202, 62, 'preview_text', 'Lorem ipsum dolor sit amet'),
(203, 62, '_preview_text', 'field_6486e6124a33f'),
(204, 64, '_edit_last', '1'),
(205, 64, '_edit_lock', '1686571941:1'),
(206, 65, '_wp_attached_file', '2023/06/project7.jpg'),
(207, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project7.jpg\";s:8:\"filesize\";i:72085;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 64, 'preview_image', '65'),
(209, 64, '_preview_image', 'field_6486e5ee4a33e'),
(210, 64, 'preview_text', 'Lorem ipsum dolor sit amet'),
(211, 64, '_preview_text', 'field_6486e6124a33f'),
(212, 66, '_edit_last', '1'),
(213, 66, '_edit_lock', '1686572005:1'),
(214, 67, '_wp_attached_file', '2023/06/project8.jpg'),
(215, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project8.jpg\";s:8:\"filesize\";i:61286;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 66, 'preview_image', '67'),
(217, 66, '_preview_image', 'field_6486e5ee4a33e'),
(218, 66, 'preview_text', 'Lorem ipsum dolor sit amet'),
(219, 66, '_preview_text', 'field_6486e6124a33f'),
(220, 68, '_edit_last', '1'),
(221, 68, '_edit_lock', '1686573938:1'),
(222, 69, '_wp_attached_file', '2023/06/project9.jpg'),
(223, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:303;s:4:\"file\";s:20:\"2023/06/project9.jpg\";s:8:\"filesize\";i:76110;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 68, 'preview_image', '69'),
(225, 68, '_preview_image', 'field_6486e5ee4a33e'),
(226, 68, 'preview_text', 'Lorem ipsum dolor sit amet'),
(227, 68, '_preview_text', 'field_6486e6124a33f'),
(228, 70, '_edit_last', '1'),
(229, 70, '_edit_lock', '1686576016:1'),
(230, 75, '_edit_last', '1'),
(231, 75, '_edit_lock', '1686575640:1'),
(232, 7, '_edit_last', '1'),
(233, 7, 'hero_title_line_1', 'Creative'),
(234, 7, '_hero_title_line_1', 'field_6487194b54f07'),
(235, 7, 'hero_title_line_2', 'Solutions'),
(236, 7, '_hero_title_line_2', 'field_6487199a54f08'),
(237, 7, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(238, 7, '_hero_text', 'field_648719e656977'),
(239, 7, 'hero_button_text', 'Learn more'),
(240, 7, '_hero_button_text', 'field_648719f356978'),
(241, 7, 'about_title', 'About Us'),
(242, 7, '_about_title', 'field_64871a54859e6'),
(243, 7, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(244, 7, '_about_text_1', 'field_64871a80859e7'),
(245, 7, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(246, 7, '_about_text_2', 'field_64871a8b859e8'),
(247, 79, 'hero_title_line_1', 'Creative'),
(248, 79, '_hero_title_line_1', 'field_6487194b54f07'),
(249, 79, 'hero_title_line_2', 'Solutions'),
(250, 79, '_hero_title_line_2', 'field_6487199a54f08'),
(251, 79, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(252, 79, '_hero_text', 'field_648719e656977'),
(253, 79, 'hero_button_text', 'Learn more'),
(254, 79, '_hero_button_text', 'field_648719f356978'),
(255, 79, 'about_title', 'About Us'),
(256, 79, '_about_title', 'field_64871a54859e6'),
(257, 79, 'about_text_1', ''),
(258, 79, '_about_text_1', 'field_64871a80859e7'),
(259, 79, 'about_text_2', ''),
(260, 79, '_about_text_2', 'field_64871a8b859e8'),
(261, 81, '_wp_attached_file', '2023/06/hero.png'),
(262, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:616;s:6:\"height\";i:632;s:4:\"file\";s:16:\"2023/06/hero.png\";s:8:\"filesize\";i:55455;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 7, 'hero_image', '81'),
(264, 7, '_hero_image', 'field_64871c0a05cc3'),
(265, 82, 'hero_title_line_1', 'Creative'),
(266, 82, '_hero_title_line_1', 'field_6487194b54f07'),
(267, 82, 'hero_title_line_2', 'Solutions'),
(268, 82, '_hero_title_line_2', 'field_6487199a54f08'),
(269, 82, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(270, 82, '_hero_text', 'field_648719e656977'),
(271, 82, 'hero_button_text', 'Learn more'),
(272, 82, '_hero_button_text', 'field_648719f356978'),
(273, 82, 'about_title', 'About Us'),
(274, 82, '_about_title', 'field_64871a54859e6'),
(275, 82, 'about_text_1', ''),
(276, 82, '_about_text_1', 'field_64871a80859e7'),
(277, 82, 'about_text_2', ''),
(278, 82, '_about_text_2', 'field_64871a8b859e8'),
(279, 82, 'hero_image', '81'),
(280, 82, '_hero_image', 'field_64871c0a05cc3'),
(281, 83, 'hero_title_line_1', 'Creative'),
(282, 83, '_hero_title_line_1', 'field_6487194b54f07'),
(283, 83, 'hero_title_line_2', 'Solutions'),
(284, 83, '_hero_title_line_2', 'field_6487199a54f08'),
(285, 83, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(286, 83, '_hero_text', 'field_648719e656977'),
(287, 83, 'hero_button_text', 'Learn more'),
(288, 83, '_hero_button_text', 'field_648719f356978'),
(289, 83, 'about_title', 'About Us'),
(290, 83, '_about_title', 'field_64871a54859e6'),
(291, 83, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(292, 83, '_about_text_1', 'field_64871a80859e7'),
(293, 83, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(294, 83, '_about_text_2', 'field_64871a8b859e8'),
(295, 83, 'hero_image', '81'),
(296, 83, '_hero_image', 'field_64871c0a05cc3'),
(297, 84, '_edit_last', '1'),
(298, 84, '_edit_lock', '1686576346:1'),
(299, 7, 'work_title', 'Our Work'),
(300, 7, '_work_title', 'field_64871d20da815'),
(301, 7, 'work_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consectetur '),
(302, 7, '_work_text', 'field_64871d31da816'),
(303, 7, 'filter_button_text', 'Filter'),
(304, 7, '_filter_button_text', 'field_64871d45da817'),
(305, 88, 'hero_title_line_1', 'Creative'),
(306, 88, '_hero_title_line_1', 'field_6487194b54f07'),
(307, 88, 'hero_title_line_2', 'Solutions'),
(308, 88, '_hero_title_line_2', 'field_6487199a54f08'),
(309, 88, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(310, 88, '_hero_text', 'field_648719e656977'),
(311, 88, 'hero_button_text', 'Learn more'),
(312, 88, '_hero_button_text', 'field_648719f356978'),
(313, 88, 'about_title', 'About Us'),
(314, 88, '_about_title', 'field_64871a54859e6'),
(315, 88, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(316, 88, '_about_text_1', 'field_64871a80859e7'),
(317, 88, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(318, 88, '_about_text_2', 'field_64871a8b859e8'),
(319, 88, 'hero_image', '81'),
(320, 88, '_hero_image', 'field_64871c0a05cc3'),
(321, 88, 'work_title', 'Our Work'),
(322, 88, '_work_title', 'field_64871d20da815'),
(323, 88, 'work_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consectetur '),
(324, 88, '_work_text', 'field_64871d31da816'),
(325, 88, 'filter_button_text', 'Filter'),
(326, 88, '_filter_button_text', 'field_64871d45da817'),
(327, 89, '_edit_last', '1'),
(328, 89, '_edit_lock', '1686576495:1'),
(329, 7, 'team_title', 'Our team'),
(330, 7, '_team_title', 'field_64871de22132e'),
(331, 7, 'team_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(332, 7, '_team_text', 'field_64871df42132f'),
(333, 92, 'hero_title_line_1', 'Creative'),
(334, 92, '_hero_title_line_1', 'field_6487194b54f07'),
(335, 92, 'hero_title_line_2', 'Solutions'),
(336, 92, '_hero_title_line_2', 'field_6487199a54f08'),
(337, 92, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(338, 92, '_hero_text', 'field_648719e656977'),
(339, 92, 'hero_button_text', 'Learn more'),
(340, 92, '_hero_button_text', 'field_648719f356978'),
(341, 92, 'about_title', 'About Us'),
(342, 92, '_about_title', 'field_64871a54859e6'),
(343, 92, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(344, 92, '_about_text_1', 'field_64871a80859e7'),
(345, 92, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(346, 92, '_about_text_2', 'field_64871a8b859e8'),
(347, 92, 'hero_image', '81'),
(348, 92, '_hero_image', 'field_64871c0a05cc3'),
(349, 92, 'work_title', 'Our Work'),
(350, 92, '_work_title', 'field_64871d20da815'),
(351, 92, 'work_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consectetur '),
(352, 92, '_work_text', 'field_64871d31da816'),
(353, 92, 'filter_button_text', 'Filter'),
(354, 92, '_filter_button_text', 'field_64871d45da817'),
(355, 92, 'team_title', 'Our team'),
(356, 92, '_team_title', 'field_64871de22132e'),
(357, 92, 'team_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(358, 92, '_team_text', 'field_64871df42132f'),
(361, 96, '_edit_last', '1'),
(362, 96, '_edit_lock', '1686577378:1'),
(363, 99, '_edit_last', '1'),
(364, 99, '_edit_lock', '1686577392:1'),
(380, 7, 'contact_title', 'Get in touch'),
(381, 7, '_contact_title', 'field_64871f6f47fb7'),
(382, 7, 'contact_text', ''),
(383, 7, '_contact_text', 'field_64871fa347fb8'),
(384, 102, 'hero_title_line_1', 'Creative'),
(385, 102, '_hero_title_line_1', 'field_6487194b54f07'),
(386, 102, 'hero_title_line_2', 'Solutions'),
(387, 102, '_hero_title_line_2', 'field_6487199a54f08'),
(388, 102, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(389, 102, '_hero_text', 'field_648719e656977'),
(390, 102, 'hero_button_text', 'Learn more'),
(391, 102, '_hero_button_text', 'field_648719f356978'),
(392, 102, 'about_title', 'About Us'),
(393, 102, '_about_title', 'field_64871a54859e6'),
(394, 102, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(395, 102, '_about_text_1', 'field_64871a80859e7'),
(396, 102, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(397, 102, '_about_text_2', 'field_64871a8b859e8'),
(398, 102, 'hero_image', '81'),
(399, 102, '_hero_image', 'field_64871c0a05cc3'),
(400, 102, 'work_title', 'Our Work'),
(401, 102, '_work_title', 'field_64871d20da815'),
(402, 102, 'work_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consectetur '),
(403, 102, '_work_text', 'field_64871d31da816'),
(404, 102, 'filter_button_text', 'Filter'),
(405, 102, '_filter_button_text', 'field_64871d45da817'),
(406, 102, 'team_title', 'Our team'),
(407, 102, '_team_title', 'field_64871de22132e'),
(408, 102, 'team_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(409, 102, '_team_text', 'field_64871df42132f'),
(410, 102, 'contact_title', 'Get in touch'),
(411, 102, '_contact_title', 'field_64871f6f47fb7'),
(412, 102, 'contact_text', ''),
(413, 102, '_contact_text', 'field_64871fa347fb8'),
(414, 104, '_wp_attached_file', '2023/06/footer.jpg'),
(415, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:758;s:4:\"file\";s:18:\"2023/06/footer.jpg\";s:8:\"filesize\";i:428402;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 7, 'contact_text_line_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(417, 7, '_contact_text_line_1', 'field_64871fa347fb8'),
(418, 7, 'contact_text_line_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(419, 7, '_contact_text_line_2', 'field_64872161e099c'),
(420, 7, 'parallax_image', '104'),
(421, 7, '_parallax_image', 'field_64871fba8222e'),
(422, 105, 'hero_title_line_1', 'Creative'),
(423, 105, '_hero_title_line_1', 'field_6487194b54f07'),
(424, 105, 'hero_title_line_2', 'Solutions'),
(425, 105, '_hero_title_line_2', 'field_6487199a54f08'),
(426, 105, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(427, 105, '_hero_text', 'field_648719e656977'),
(428, 105, 'hero_button_text', 'Learn more'),
(429, 105, '_hero_button_text', 'field_648719f356978'),
(430, 105, 'about_title', 'About Us'),
(431, 105, '_about_title', 'field_64871a54859e6'),
(432, 105, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(433, 105, '_about_text_1', 'field_64871a80859e7'),
(434, 105, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(435, 105, '_about_text_2', 'field_64871a8b859e8'),
(436, 105, 'hero_image', '81'),
(437, 105, '_hero_image', 'field_64871c0a05cc3'),
(438, 105, 'work_title', 'Our Work'),
(439, 105, '_work_title', 'field_64871d20da815'),
(440, 105, 'work_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consectetur '),
(441, 105, '_work_text', 'field_64871d31da816'),
(442, 105, 'filter_button_text', 'Filter'),
(443, 105, '_filter_button_text', 'field_64871d45da817'),
(444, 105, 'team_title', 'Our team'),
(445, 105, '_team_title', 'field_64871de22132e'),
(446, 105, 'team_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(447, 105, '_team_text', 'field_64871df42132f'),
(448, 105, 'contact_title', 'Get in touch'),
(449, 105, '_contact_title', 'field_64871f6f47fb7'),
(450, 105, 'contact_text', ''),
(451, 105, '_contact_text', 'field_64871fa347fb8'),
(452, 105, 'contact_text_line_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(453, 105, '_contact_text_line_1', 'field_64871fa347fb8'),
(454, 105, 'contact_text_line_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(455, 105, '_contact_text_line_2', 'field_64872161e099c'),
(456, 105, 'parallax_image', '104'),
(457, 105, '_parallax_image', 'field_64871fba8222e'),
(458, 107, 'hero_title_line_1', 'Creative'),
(459, 107, '_hero_title_line_1', 'field_6487194b54f07'),
(460, 107, 'hero_title_line_2', 'Solutions'),
(461, 107, '_hero_title_line_2', 'field_6487199a54f08'),
(462, 107, 'hero_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(463, 107, '_hero_text', 'field_648719e656977'),
(464, 107, 'hero_button_text', 'Learn more'),
(465, 107, '_hero_button_text', 'field_648719f356978'),
(466, 107, 'about_title', 'About Us'),
(467, 107, '_about_title', 'field_64871a54859e6'),
(468, 107, 'about_text_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
(469, 107, '_about_text_1', 'field_64871a80859e7'),
(470, 107, 'about_text_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet ctetur adipiscing elit, sed do eiusmod tempor.'),
(471, 107, '_about_text_2', 'field_64871a8b859e8'),
(472, 107, 'hero_image', '81'),
(473, 107, '_hero_image', 'field_64871c0a05cc3'),
(474, 107, 'work_title', 'Our Work'),
(475, 107, '_work_title', 'field_64871d20da815'),
(476, 107, 'work_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet.  Lorem ipsum dolor sit amet, consectetur '),
(477, 107, '_work_text', 'field_64871d31da816'),
(478, 107, 'filter_button_text', 'Filter'),
(479, 107, '_filter_button_text', 'field_64871d45da817'),
(480, 107, 'team_title', 'Our team'),
(481, 107, '_team_title', 'field_64871de22132e'),
(482, 107, 'team_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(483, 107, '_team_text', 'field_64871df42132f'),
(484, 107, 'contact_title', 'Get in touch'),
(485, 107, '_contact_title', 'field_64871f6f47fb7'),
(486, 107, 'contact_text', ''),
(487, 107, '_contact_text', 'field_64871fa347fb8'),
(488, 107, 'contact_text_line_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(489, 107, '_contact_text_line_1', 'field_64871fa347fb8'),
(490, 107, 'contact_text_line_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(491, 107, '_contact_text_line_2', 'field_64872161e099c'),
(492, 107, 'parallax_image', '104'),
(493, 107, '_parallax_image', 'field_64871fba8222e'),
(494, 45, 'parallax_image', '104'),
(495, 45, '_parallax_image', 'field_64871fba8222e'),
(496, 45, 'contact_title', 'Get in touch'),
(497, 45, '_contact_title', 'field_64871f6f47fb7'),
(498, 45, 'contact_text_line_1', 'et, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(499, 45, '_contact_text_line_1', 'field_64871fa347fb8'),
(500, 45, 'contact_text_line_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(501, 45, '_contact_text_line_2', 'field_64872161e099c'),
(502, 108, 'parallax_image', '104'),
(503, 108, '_parallax_image', 'field_64871fba8222e'),
(504, 108, 'contact_title', 'Get in touch'),
(505, 108, '_contact_title', 'field_64871f6f47fb7'),
(506, 108, 'contact_text_line_1', 'et, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(507, 108, '_contact_text_line_1', 'field_64871fa347fb8'),
(508, 108, 'contact_text_line_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(509, 108, '_contact_text_line_2', 'field_64872161e099c'),
(510, 109, '_edit_last', '1'),
(511, 109, '_edit_lock', '1686577986:1'),
(512, 45, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur'),
(513, 45, '_header_text', 'field_648722bcd5265'),
(514, 45, 'privacy_title_1', 'Title goes here'),
(515, 45, '_privacy_title_1', 'field_648722667f466'),
(516, 45, 'privacy_text_1_line_1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
(517, 45, '_privacy_text_1_line_1', 'field_6487227a7f467'),
(518, 45, 'privacy_text_1_line_2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
(519, 45, '_privacy_text_1_line_2', 'field_648723097fc45'),
(520, 45, 'privacy_title_2', 'Subtitle goes here'),
(521, 45, '_privacy_title_2', 'field_648722827f468'),
(522, 45, 'privacy_text_2_line_1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.'),
(523, 45, '_privacy_text_2_line_1', 'field_6487228b7f469'),
(524, 45, 'privacy_text_2_line_2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et takimata sanctus est'),
(525, 45, '_privacy_text_2_line_2', 'field_648723327fc46'),
(526, 117, 'parallax_image', '104'),
(527, 117, '_parallax_image', 'field_64871fba8222e'),
(528, 117, 'contact_title', 'Get in touch'),
(529, 117, '_contact_title', 'field_64871f6f47fb7'),
(530, 117, 'contact_text_line_1', 'et, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur.'),
(531, 117, '_contact_text_line_1', 'field_64871fa347fb8'),
(532, 117, 'contact_text_line_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(533, 117, '_contact_text_line_2', 'field_64872161e099c'),
(534, 117, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur'),
(535, 117, '_header_text', 'field_648722bcd5265'),
(536, 117, 'privacy_title_1', 'Title goes here'),
(537, 117, '_privacy_title_1', 'field_648722667f466'),
(538, 117, 'privacy_text_1_line_1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
(539, 117, '_privacy_text_1_line_1', 'field_6487227a7f467'),
(540, 117, 'privacy_text_1_line_2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
(541, 117, '_privacy_text_1_line_2', 'field_648723097fc45'),
(542, 117, 'privacy_title_2', 'Subtitle goes here'),
(543, 117, '_privacy_title_2', 'field_648722827f468'),
(544, 117, 'privacy_text_2_line_1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.'),
(545, 117, '_privacy_text_2_line_1', 'field_6487228b7f469'),
(546, 117, 'privacy_text_2_line_2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et takimata sanctus est'),
(547, 117, '_privacy_text_2_line_2', 'field_648723327fc46');

-- --------------------------------------------------------

--
-- Table structure for table `cs_posts`
--

CREATE TABLE `cs_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_posts`
--

INSERT INTO `cs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-08 17:31:19', '2023-06-08 16:31:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-08 17:31:19', '2023-06-08 16:31:19', '', 0, 'http://creative.lm/?p=1', 0, 'post', '', 1),
(4, 1, '2023-06-08 17:31:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-08 17:31:34', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?p=4', 0, 'post', '', 0),
(7, 1, '2023-06-08 18:53:32', '2023-06-08 17:53:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-06-12 14:48:40', '2023-06-12 13:48:40', '', 0, 'http://creative.lm/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-06-08 18:53:32', '2023-06-08 17:53:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-08 18:53:32', '2023-06-08 17:53:32', '', 7, 'http://creative.lm/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-06-08 19:01:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-08 19:01:21', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?page_id=9', 0, 'page', '', 0),
(20, 1, '2023-06-08 19:03:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-08 19:03:04', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?p=20', 1, 'nav_menu_item', '', 0),
(26, 1, '2023-06-11 19:35:47', '2023-06-08 21:59:05', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-06-11 19:35:47', '2023-06-11 18:35:47', '', 0, 'http://creative.lm/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2023-06-11 19:35:47', '2023-06-08 21:59:05', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2023-06-11 19:35:47', '2023-06-11 18:35:47', '', 0, 'http://creative.lm/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2023-06-11 19:35:47', '2023-06-08 21:59:05', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2023-06-11 19:35:47', '2023-06-11 18:35:47', '', 0, 'http://creative.lm/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2023-06-11 19:35:47', '2023-06-08 21:59:05', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-06-11 19:35:47', '2023-06-11 18:35:47', '', 0, 'http://creative.lm/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2023-06-10 07:26:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:26:44', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2023-06-10 07:27:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:27:59', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2023-06-10 07:42:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:42:22', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2023-06-10 07:43:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:43:28', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2023-06-10 07:50:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:50:38', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=34', 0, 'acf-field-group', '', 0),
(35, 1, '2023-06-10 07:50:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:50:43', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2023-06-10 07:50:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-10 07:50:57', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2023-06-10 07:55:24', '2023-06-10 06:55:24', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:6:\"widget\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"company_details\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Company Details', 'company-details', 'publish', 'closed', 'closed', '', 'group_64841de922be4', '', '', '2023-06-10 07:58:44', '2023-06-10 06:58:44', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(39, 1, '2023-06-10 07:55:24', '2023-06-10 06:55:24', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Address Line 1', 'address_line_1', 'publish', 'closed', 'closed', '', 'field_64841e08317a6', '', '', '2023-06-10 07:58:44', '2023-06-10 06:58:44', '', 37, 'http://creative.lm/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2023-06-10 07:55:24', '2023-06-10 06:55:24', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Town/City', 'town_city', 'publish', 'closed', 'closed', '', 'field_64841e24317a7', '', '', '2023-06-10 07:58:44', '2023-06-10 06:58:44', '', 37, 'http://creative.lm/?post_type=acf-field&#038;p=40', 1, 'acf-field', '', 0),
(41, 1, '2023-06-10 07:55:24', '2023-06-10 06:55:24', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Postcode', 'postcode', 'publish', 'closed', 'closed', '', 'field_64841e34317a8', '', '', '2023-06-10 07:58:44', '2023-06-10 06:58:44', '', 37, 'http://creative.lm/?post_type=acf-field&#038;p=41', 2, 'acf-field', '', 0),
(42, 1, '2023-06-10 07:55:24', '2023-06-10 06:55:24', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Country', 'country', 'publish', 'closed', 'closed', '', 'field_64841e3b317a9', '', '', '2023-06-10 07:58:44', '2023-06-10 06:58:44', '', 37, 'http://creative.lm/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2023-06-10 09:38:42', '2023-06-10 08:38:42', '<!-- wp:navigation-link {\"label\":\"About\",\"type\":\"custom\",\"url\":\"#about\",\"kind\":\"custom\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Work\",\"type\":\"custom\",\"url\":\"#work\",\"kind\":\"custom\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Team\",\"type\":\"custom\",\"url\":\"#team\",\"kind\":\"custom\",\"isTopLevelLink\":true} /-->\n\n<!-- wp:navigation-link {\"label\":\"Contact\",\"type\":\"custom\",\"url\":\"#contact\",\"kind\":\"custom\",\"isTopLevelLink\":true} /-->', 'Main Menu', '', 'publish', 'closed', 'closed', '', 'main-menu', '', '', '2023-06-10 09:38:42', '2023-06-10 08:38:42', '', 0, 'http://creative.lm/main-menu/', 0, 'wp_navigation', '', 0),
(45, 1, '2023-06-11 23:01:13', '2023-06-11 22:01:13', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2023-06-12 14:54:04', '2023-06-12 13:54:04', '', 0, 'http://creative.lm/?page_id=45', 0, 'page', '', 0),
(46, 1, '2023-06-11 23:01:13', '2023-06-11 22:01:13', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-06-11 23:01:13', '2023-06-11 22:01:13', '', 45, 'http://creative.lm/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-06-11 23:01:41', '2023-06-11 22:01:41', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2023-06-11 23:01:41', '2023-06-11 22:01:41', '', 0, 'http://creative.lm/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2023-06-12 10:32:21', '2023-06-12 09:32:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"projects\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'group_6486e5ee4118f', '', '', '2023-06-12 10:32:21', '2023-06-12 09:32:21', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2023-06-12 10:32:21', '2023-06-12 09:32:21', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Preview Image', 'preview_image', 'publish', 'closed', 'closed', '', 'field_6486e5ee4a33e', '', '', '2023-06-12 10:32:21', '2023-06-12 09:32:21', '', 48, 'http://creative.lm/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2023-06-12 10:32:21', '2023-06-12 09:32:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Preview Text', 'preview_text', 'publish', 'closed', 'closed', '', 'field_6486e6124a33f', '', '', '2023-06-12 10:32:21', '2023-06-12 09:32:21', '', 48, 'http://creative.lm/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(51, 1, '2023-06-12 10:32:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-12 10:32:28', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=projects&p=51', 0, 'projects', '', 0),
(52, 1, '2023-06-12 10:35:44', '2023-06-12 09:35:44', '', 'Project Title 1', '', 'publish', 'closed', 'closed', '', 'project-title-1', '', '', '2023-06-12 10:56:58', '2023-06-12 09:56:58', '', 0, 'http://creative.lm/?post_type=projects&#038;p=52', 0, 'projects', '', 0),
(53, 1, '2023-06-12 10:35:25', '2023-06-12 09:35:25', '', 'project1', '', 'inherit', 'open', 'closed', '', 'project1', '', '', '2023-06-12 10:35:25', '2023-06-12 09:35:25', '', 52, 'http://creative.lm/wp-content/uploads/2023/06/project1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-06-12 11:24:42', '2023-06-12 10:24:42', '', 'Project Title 2', '', 'publish', 'closed', 'closed', '', 'project-title-2', '', '', '2023-06-12 13:48:08', '2023-06-12 12:48:08', '', 0, 'http://creative.lm/?post_type=projects&#038;p=54', 0, 'projects', '', 0),
(55, 1, '2023-06-12 11:24:37', '2023-06-12 10:24:37', '', 'project2', '', 'inherit', 'open', 'closed', '', 'project2', '', '', '2023-06-12 11:24:37', '2023-06-12 10:24:37', '', 54, 'http://creative.lm/wp-content/uploads/2023/06/project2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2023-06-12 13:11:37', '2023-06-12 12:11:37', '', 'Project Title 3', '', 'publish', 'closed', 'closed', '', 'project-title-3', '', '', '2023-06-12 13:12:12', '2023-06-12 12:12:12', '', 0, 'http://creative.lm/?post_type=projects&#038;p=56', 0, 'projects', '', 0),
(57, 1, '2023-06-12 13:11:23', '2023-06-12 12:11:23', '', 'project3', '', 'inherit', 'open', 'closed', '', 'project3', '', '', '2023-06-12 13:11:23', '2023-06-12 12:11:23', '', 56, 'http://creative.lm/wp-content/uploads/2023/06/project3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2023-06-12 13:13:08', '2023-06-12 12:13:08', '', 'Project Title 4', '', 'publish', 'closed', 'closed', '', 'project-title-4', '', '', '2023-06-12 13:15:15', '2023-06-12 12:15:15', '', 0, 'http://creative.lm/?post_type=projects&#038;p=58', 0, 'projects', '', 0),
(59, 1, '2023-06-12 13:13:02', '2023-06-12 12:13:02', '', 'project4', '', 'inherit', 'open', 'closed', '', 'project4', '', '', '2023-06-12 13:13:02', '2023-06-12 12:13:02', '', 58, 'http://creative.lm/wp-content/uploads/2023/06/project4.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2023-06-12 13:13:37', '2023-06-12 12:13:37', '', 'Project Title 5', '', 'publish', 'closed', 'closed', '', 'project-title-5', '', '', '2023-06-12 13:15:03', '2023-06-12 12:15:03', '', 0, 'http://creative.lm/?post_type=projects&#038;p=60', 0, 'projects', '', 0),
(61, 1, '2023-06-12 13:13:32', '2023-06-12 12:13:32', '', 'project5', '', 'inherit', 'open', 'closed', '', 'project5', '', '', '2023-06-12 13:13:32', '2023-06-12 12:13:32', '', 60, 'http://creative.lm/wp-content/uploads/2023/06/project5.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2023-06-12 13:14:15', '2023-06-12 12:14:15', '', 'Project Title 6', '', 'publish', 'closed', 'closed', '', 'project-title-6', '', '', '2023-06-12 13:14:57', '2023-06-12 12:14:57', '', 0, 'http://creative.lm/?post_type=projects&#038;p=62', 0, 'projects', '', 0),
(63, 1, '2023-06-12 13:14:10', '2023-06-12 12:14:10', '', 'project6', '', 'inherit', 'open', 'closed', '', 'project6', '', '', '2023-06-12 13:14:10', '2023-06-12 12:14:10', '', 62, 'http://creative.lm/wp-content/uploads/2023/06/project6.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-06-12 13:14:43', '2023-06-12 12:14:43', '', 'Project Title 7', '', 'publish', 'closed', 'closed', '', 'project-title-7', '', '', '2023-06-12 13:14:43', '2023-06-12 12:14:43', '', 0, 'http://creative.lm/?post_type=projects&#038;p=64', 0, 'projects', '', 0),
(65, 1, '2023-06-12 13:14:29', '2023-06-12 12:14:29', '', 'project7', '', 'inherit', 'open', 'closed', '', 'project7', '', '', '2023-06-12 13:14:29', '2023-06-12 12:14:29', '', 64, 'http://creative.lm/wp-content/uploads/2023/06/project7.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2023-06-12 13:15:48', '2023-06-12 12:15:48', '', 'Project Title 8', '', 'publish', 'closed', 'closed', '', 'project-title-8', '', '', '2023-06-12 13:15:48', '2023-06-12 12:15:48', '', 0, 'http://creative.lm/?post_type=projects&#038;p=66', 0, 'projects', '', 0),
(67, 1, '2023-06-12 13:15:34', '2023-06-12 12:15:34', '', 'project8', '', 'inherit', 'open', 'closed', '', 'project8', '', '', '2023-06-12 13:15:34', '2023-06-12 12:15:34', '', 66, 'http://creative.lm/wp-content/uploads/2023/06/project8.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2023-06-12 13:16:13', '2023-06-12 12:16:13', '', 'Project Title 9', '', 'publish', 'closed', 'closed', '', 'project-title-9', '', '', '2023-06-12 13:16:13', '2023-06-12 12:16:13', '', 0, 'http://creative.lm/?post_type=projects&#038;p=68', 0, 'projects', '', 0),
(69, 1, '2023-06-12 13:16:03', '2023-06-12 12:16:03', '', 'project9', '', 'inherit', 'open', 'closed', '', 'project9', '', '', '2023-06-12 13:16:03', '2023-06-12 12:16:03', '', 68, 'http://creative.lm/wp-content/uploads/2023/06/project9.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-06-12 14:12:52', '2023-06-12 13:12:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Hero', 'hero', 'publish', 'closed', 'closed', '', 'group_6487194baea7e', '', '', '2023-06-12 14:22:38', '2023-06-12 13:22:38', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2023-06-12 14:12:52', '2023-06-12 13:12:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Hero Title Line 1', 'hero_title_line_1', 'publish', 'closed', 'closed', '', 'field_6487194b54f07', '', '', '2023-06-12 14:14:53', '2023-06-12 13:14:53', '', 70, 'http://creative.lm/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(72, 1, '2023-06-12 14:12:52', '2023-06-12 13:12:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Hero Title Line 2', 'hero_title_line_2', 'publish', 'closed', 'closed', '', 'field_6487199a54f08', '', '', '2023-06-12 14:14:53', '2023-06-12 13:14:53', '', 70, 'http://creative.lm/?post_type=acf-field&#038;p=72', 1, 'acf-field', '', 0),
(73, 1, '2023-06-12 14:14:53', '2023-06-12 13:14:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Hero Text', 'hero_text', 'publish', 'closed', 'closed', '', 'field_648719e656977', '', '', '2023-06-12 14:14:53', '2023-06-12 13:14:53', '', 70, 'http://creative.lm/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2023-06-12 14:14:53', '2023-06-12 13:14:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Hero Button Text', 'hero_button_text', 'publish', 'closed', 'closed', '', 'field_648719f356978', '', '', '2023-06-12 14:14:53', '2023-06-12 13:14:53', '', 70, 'http://creative.lm/?post_type=acf-field&p=74', 3, 'acf-field', '', 0),
(75, 1, '2023-06-12 14:16:15', '2023-06-12 13:16:15', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_64871a53cc24f', '', '', '2023-06-12 14:16:23', '2023-06-12 13:16:23', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2023-06-12 14:16:15', '2023-06-12 13:16:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Title', 'about_title', 'publish', 'closed', 'closed', '', 'field_64871a54859e6', '', '', '2023-06-12 14:16:15', '2023-06-12 13:16:15', '', 75, 'http://creative.lm/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2023-06-12 14:16:15', '2023-06-12 13:16:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Text 1', 'about_text_1', 'publish', 'closed', 'closed', '', 'field_64871a80859e7', '', '', '2023-06-12 14:16:15', '2023-06-12 13:16:15', '', 75, 'http://creative.lm/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(78, 1, '2023-06-12 14:16:15', '2023-06-12 13:16:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'About Text 2', 'about_text_2', 'publish', 'closed', 'closed', '', 'field_64871a8b859e8', '', '', '2023-06-12 14:16:15', '2023-06-12 13:16:15', '', 75, 'http://creative.lm/?post_type=acf-field&p=78', 2, 'acf-field', '', 0),
(79, 1, '2023-06-12 14:17:19', '2023-06-12 13:17:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:17:19', '2023-06-12 13:17:19', '', 7, 'http://creative.lm/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-06-12 14:22:35', '2023-06-12 13:22:35', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Hero Image', 'hero_image', 'publish', 'closed', 'closed', '', 'field_64871c0a05cc3', '', '', '2023-06-12 14:22:35', '2023-06-12 13:22:35', '', 70, 'http://creative.lm/?post_type=acf-field&p=80', 4, 'acf-field', '', 0),
(81, 1, '2023-06-12 14:23:59', '2023-06-12 13:23:59', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2023-06-12 14:23:59', '2023-06-12 13:23:59', '', 7, 'http://creative.lm/wp-content/uploads/2023/06/hero.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2023-06-12 14:24:06', '2023-06-12 13:24:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:24:06', '2023-06-12 13:24:06', '', 7, 'http://creative.lm/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-06-12 14:25:23', '2023-06-12 13:25:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:25:23', '2023-06-12 13:25:23', '', 7, 'http://creative.lm/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-06-12 14:28:01', '2023-06-12 13:28:01', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Work', 'work', 'publish', 'closed', 'closed', '', 'group_64871d203dcb6', '', '', '2023-06-12 14:28:09', '2023-06-12 13:28:09', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=84', 0, 'acf-field-group', '', 0),
(85, 1, '2023-06-12 14:28:01', '2023-06-12 13:28:01', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Work Title', 'work_title', 'publish', 'closed', 'closed', '', 'field_64871d20da815', '', '', '2023-06-12 14:28:01', '2023-06-12 13:28:01', '', 84, 'http://creative.lm/?post_type=acf-field&p=85', 0, 'acf-field', '', 0),
(86, 1, '2023-06-12 14:28:01', '2023-06-12 13:28:01', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Work Text', 'work_text', 'publish', 'closed', 'closed', '', 'field_64871d31da816', '', '', '2023-06-12 14:28:01', '2023-06-12 13:28:01', '', 84, 'http://creative.lm/?post_type=acf-field&p=86', 1, 'acf-field', '', 0),
(87, 1, '2023-06-12 14:28:01', '2023-06-12 13:28:01', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Filter Button Text', 'filter_button_text', 'publish', 'closed', 'closed', '', 'field_64871d45da817', '', '', '2023-06-12 14:28:01', '2023-06-12 13:28:01', '', 84, 'http://creative.lm/?post_type=acf-field&p=87', 2, 'acf-field', '', 0),
(88, 1, '2023-06-12 14:28:36', '2023-06-12 13:28:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:28:36', '2023-06-12 13:28:36', '', 7, 'http://creative.lm/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-06-12 14:30:37', '2023-06-12 13:30:37', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'group_64871de2175f6', '', '', '2023-06-12 14:30:37', '2023-06-12 13:30:37', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2023-06-12 14:30:37', '2023-06-12 13:30:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Team Title', 'team_title', 'publish', 'closed', 'closed', '', 'field_64871de22132e', '', '', '2023-06-12 14:30:37', '2023-06-12 13:30:37', '', 89, 'http://creative.lm/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2023-06-12 14:30:37', '2023-06-12 13:30:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Team Text', 'team_text', 'publish', 'closed', 'closed', '', 'field_64871df42132f', '', '', '2023-06-12 14:30:37', '2023-06-12 13:30:37', '', 89, 'http://creative.lm/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2023-06-12 14:31:22', '2023-06-12 13:31:22', '<div>\r\n<div>&lt;?php echo get_field(\'work_title\'); ?&gt;</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:31:22', '2023-06-12 13:31:22', '', 7, 'http://creative.lm/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-06-12 14:35:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-12 14:35:38', '0000-00-00 00:00:00', '', 0, 'http://creative.lm/?post_type=acf-field-group&p=93', 0, 'acf-field-group', '', 0),
(96, 1, '2023-06-12 14:37:52', '2023-06-12 13:37:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_64871f6f5697c', '', '', '2023-06-12 14:45:21', '2023-06-12 13:45:21', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2023-06-12 14:37:52', '2023-06-12 13:37:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Contact Title', 'contact_title', 'publish', 'closed', 'closed', '', 'field_64871f6f47fb7', '', '', '2023-06-12 14:37:52', '2023-06-12 13:37:52', '', 96, 'http://creative.lm/?post_type=acf-field&p=97', 0, 'acf-field', '', 0),
(98, 1, '2023-06-12 14:37:52', '2023-06-12 13:37:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Contact Text Line 1', 'contact_text_line_1', 'publish', 'closed', 'closed', '', 'field_64871fa347fb8', '', '', '2023-06-12 14:45:21', '2023-06-12 13:45:21', '', 96, 'http://creative.lm/?post_type=acf-field&#038;p=98', 1, 'acf-field', '', 0),
(99, 1, '2023-06-12 14:38:23', '2023-06-12 13:38:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Parallax', 'parallax', 'publish', 'closed', 'closed', '', 'group_64871fba866a6', '', '', '2023-06-12 14:45:31', '2023-06-12 13:45:31', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2023-06-12 14:38:23', '2023-06-12 13:38:23', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Parallax Image', 'parallax_image', 'publish', 'closed', 'closed', '', 'field_64871fba8222e', '', '', '2023-06-12 14:38:23', '2023-06-12 13:38:23', '', 99, 'http://creative.lm/?post_type=acf-field&p=100', 0, 'acf-field', '', 0),
(102, 1, '2023-06-12 14:44:49', '2023-06-12 13:44:49', '<div>\r\n<div>&lt;?php echo get_field(\'work_title\'); ?&gt;</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:44:49', '2023-06-12 13:44:49', '', 7, 'http://creative.lm/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-06-12 14:45:21', '2023-06-12 13:45:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Contact Text Line 2', 'contact_text_line_2', 'publish', 'closed', 'closed', '', 'field_64872161e099c', '', '', '2023-06-12 14:45:21', '2023-06-12 13:45:21', '', 96, 'http://creative.lm/?post_type=acf-field&p=103', 2, 'acf-field', '', 0),
(104, 1, '2023-06-12 14:46:13', '2023-06-12 13:46:13', '', 'footer', '', 'inherit', 'open', 'closed', '', 'footer', '', '', '2023-06-12 14:46:13', '2023-06-12 13:46:13', '', 7, 'http://creative.lm/wp-content/uploads/2023/06/footer.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2023-06-12 14:46:19', '2023-06-12 13:46:19', '<div>\r\n<div>&lt;?php echo get_field(\'work_title\'); ?&gt;</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:46:19', '2023-06-12 13:46:19', '', 7, 'http://creative.lm/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-06-12 14:47:24', '2023-06-12 13:47:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2023-06-12 14:47:24', '2023-06-12 13:47:24', '', 7, 'http://creative.lm/?p=106', 0, 'revision', '', 0),
(107, 1, '2023-06-12 14:48:40', '2023-06-12 13:48:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-12 14:48:40', '2023-06-12 13:48:40', '', 7, 'http://creative.lm/?p=107', 0, 'revision', '', 0),
(108, 1, '2023-06-12 14:49:19', '2023-06-12 13:49:19', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-06-12 14:49:19', '2023-06-12 13:49:19', '', 45, 'http://creative.lm/?p=108', 0, 'revision', '', 0),
(109, 1, '2023-06-12 14:50:14', '2023-06-12 13:50:14', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"45\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Privacy Policy', 'privacy-policy', 'publish', 'closed', 'closed', '', 'group_64872266461bb', '', '', '2023-06-12 14:53:06', '2023-06-12 13:53:06', '', 0, 'http://creative.lm/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2023-06-12 14:50:14', '2023-06-12 13:50:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Privacy Title 1', 'privacy_title_1', 'publish', 'closed', 'closed', '', 'field_648722667f466', '', '', '2023-06-12 14:51:07', '2023-06-12 13:51:07', '', 109, 'http://creative.lm/?post_type=acf-field&#038;p=110', 1, 'acf-field', '', 0),
(111, 1, '2023-06-12 14:50:14', '2023-06-12 13:50:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Privacy Text 1 Line 1', 'privacy_text_1_line_1', 'publish', 'closed', 'closed', '', 'field_6487227a7f467', '', '', '2023-06-12 14:53:04', '2023-06-12 13:53:04', '', 109, 'http://creative.lm/?post_type=acf-field&#038;p=111', 2, 'acf-field', '', 0),
(112, 1, '2023-06-12 14:50:14', '2023-06-12 13:50:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Privacy Title 2', 'privacy_title_2', 'publish', 'closed', 'closed', '', 'field_648722827f468', '', '', '2023-06-12 14:53:04', '2023-06-12 13:53:04', '', 109, 'http://creative.lm/?post_type=acf-field&#038;p=112', 4, 'acf-field', '', 0),
(113, 1, '2023-06-12 14:50:14', '2023-06-12 13:50:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Privacy Text 2 Line 1', 'privacy_text_2_line_1', 'publish', 'closed', 'closed', '', 'field_6487228b7f469', '', '', '2023-06-12 14:53:04', '2023-06-12 13:53:04', '', 109, 'http://creative.lm/?post_type=acf-field&#038;p=113', 5, 'acf-field', '', 0),
(114, 1, '2023-06-12 14:51:07', '2023-06-12 13:51:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Header Text', 'header_text', 'publish', 'closed', 'closed', '', 'field_648722bcd5265', '', '', '2023-06-12 14:51:07', '2023-06-12 13:51:07', '', 109, 'http://creative.lm/?post_type=acf-field&p=114', 0, 'acf-field', '', 0),
(115, 1, '2023-06-12 14:53:04', '2023-06-12 13:53:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Privacy Text 1 Line 2', 'privacy_text_1_line_2', 'publish', 'closed', 'closed', '', 'field_648723097fc45', '', '', '2023-06-12 14:53:04', '2023-06-12 13:53:04', '', 109, 'http://creative.lm/?post_type=acf-field&p=115', 3, 'acf-field', '', 0),
(116, 1, '2023-06-12 14:53:04', '2023-06-12 13:53:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Privacy Text 2 Line 2', 'privacy_text_2_line_2', 'publish', 'closed', 'closed', '', 'field_648723327fc46', '', '', '2023-06-12 14:53:04', '2023-06-12 13:53:04', '', 109, 'http://creative.lm/?post_type=acf-field&p=116', 6, 'acf-field', '', 0),
(117, 1, '2023-06-12 14:54:04', '2023-06-12 13:54:04', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2023-06-12 14:54:04', '2023-06-12 13:54:04', '', 45, 'http://creative.lm/?p=117', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_termmeta`
--

CREATE TABLE `cs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cs_terms`
--

CREATE TABLE `cs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_terms`
--

INSERT INTO `cs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'Digital', 'digital', 0),
(5, 'Digital', 'digital', 0),
(6, 'Creative', 'creative', 0),
(7, 'Placemaking', 'placemaking', 0),
(8, 'Brand', 'brand', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_term_relationships`
--

CREATE TABLE `cs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_term_relationships`
--

INSERT INTO `cs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(47, 3, 0),
(52, 4, 0),
(52, 5, 0),
(54, 6, 0),
(56, 7, 0),
(58, 8, 0),
(60, 6, 0),
(62, 5, 0),
(64, 6, 0),
(66, 8, 0),
(68, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_term_taxonomy`
--

CREATE TABLE `cs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_term_taxonomy`
--

INSERT INTO `cs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'categoires', '', 0, 1),
(5, 5, 'categories', '', 0, 2),
(6, 6, 'categories', '', 0, 3),
(7, 7, 'categories', '', 0, 2),
(8, 8, 'categories', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cs_usermeta`
--

CREATE TABLE `cs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_usermeta`
--

INSERT INTO `cs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'core'),
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
(12, 1, 'cs_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'cs_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'cs_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'session_tokens', 'a:3:{s:64:\"ce38090f49f77f06956fa24d85f27e1e189737e49d75dccdcb3e2a4f2f6f4418\";a:4:{s:10:\"expiration\";i:1686563435;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0\";s:5:\"login\";i:1686390635;}s:64:\"6f1e83516681d0f3b1ad4febc1e5ab50117f4eba8002526e2219eb80ea3cfe13\";a:4:{s:10:\"expiration\";i:1686693477;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0\";s:5:\"login\";i:1686520677;}s:64:\"e8702f7b14a86be9b1f71ff6333558f0954f5652426dc84c5a0ea358feae0c6f\";a:4:{s:10:\"expiration\";i:1686693631;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0\";s:5:\"login\";i:1686520831;}}'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'cs_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-06-10T06:41:21.292Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(25, 1, 'acf_user_settings', 'a:1:{s:20:\"taxonomies-first-run\";b:1;}'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'closedpostboxes_page', 'a:0:{}'),
(29, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:9:\"authordiv\";}'),
(30, 1, 'cs_user-settings', 'libraryContent=browse'),
(31, 1, 'cs_user-settings-time', '1686562539'),
(32, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:203:\"acf-group_6487194baea7e,acf-group_64871a53cc24f,acf-group_64871d203dcb6,acf-group_64871de2175f6,commentstatusdiv,commentsdiv,acf-group_64871fba866a6,acf-group_64871f6f5697c,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cs_users`
--

CREATE TABLE `cs_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `cs_users`
--

INSERT INTO `cs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'core', '$P$BJe4eI.T5LS4OWo6i.nQ/iZoF3ty3r.', 'core', 'lukemuldoon87@gmail.com', 'http://localhost/core-marketing-luke-muldoon', '2023-06-08 16:31:19', '', 0, 'core');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cs_commentmeta`
--
ALTER TABLE `cs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cs_comments`
--
ALTER TABLE `cs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `cs_links`
--
ALTER TABLE `cs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `cs_options`
--
ALTER TABLE `cs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `cs_postmeta`
--
ALTER TABLE `cs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cs_posts`
--
ALTER TABLE `cs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `cs_termmeta`
--
ALTER TABLE `cs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cs_terms`
--
ALTER TABLE `cs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `cs_term_relationships`
--
ALTER TABLE `cs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `cs_term_taxonomy`
--
ALTER TABLE `cs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `cs_usermeta`
--
ALTER TABLE `cs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `cs_users`
--
ALTER TABLE `cs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cs_commentmeta`
--
ALTER TABLE `cs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs_comments`
--
ALTER TABLE `cs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cs_links`
--
ALTER TABLE `cs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs_options`
--
ALTER TABLE `cs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `cs_postmeta`
--
ALTER TABLE `cs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- AUTO_INCREMENT for table `cs_posts`
--
ALTER TABLE `cs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `cs_termmeta`
--
ALTER TABLE `cs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs_terms`
--
ALTER TABLE `cs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cs_term_taxonomy`
--
ALTER TABLE `cs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cs_usermeta`
--
ALTER TABLE `cs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cs_users`
--
ALTER TABLE `cs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
