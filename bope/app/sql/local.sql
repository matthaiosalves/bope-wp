-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_commentmeta` VALUES (1,1,'_wp_trash_meta_status','1');
INSERT INTO `wp_commentmeta` VALUES (2,1,'_wp_trash_meta_time','1658422609');
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-07-18 01:27:14','2022-07-18 01:27:14','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'trash','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1638 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10016','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10016','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','FMB','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:96:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"branda-white-labeling/ultimate-branding.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:96:\"C:\\Users\\forca\\Local Sites\\fabhabbo\\app\\public/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','military-habbo/military-habbo','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','military-habbo/military-habbo','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:43:\"branda-white-labeling/ultimate-branding.php\";s:30:\"branda_register_uninstall_hook\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','33','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1673659632','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','2','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:10:{i:1658554035;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1658582835;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1658583023;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1658626035;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658626223;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658626226;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658626603;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658713003;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1658798835;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','9f3RV^gbCB(uwHCft/z_@T[&mCIh|eg=taO6qg-<Q)*|D7b(bH=l7{?RQ1WT9nD)','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','J#M=$zL8</>)i[J$-Qs?<c=){j&Jq&E.X[zLXyNW aSOct+.-Iu[pHaW2 ;^s2G~','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1658548039;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1658540484;s:7:\"checked\";a:1:{s:29:\"military-habbo/military-habbo\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'auth_key','T%4g%{jfE@E`VqVU@afB@ EWNSJ[0w(=MW#rj@[B-!34;sQoW)nV>n8hikqW0!vP','no');
INSERT INTO `wp_options` VALUES (130,'auth_salt','T.W^0#krndP5:$]- OVp5tq-KPRO,E;~+p`qj/gnDLTLSdD+!|*Q<Wk_Om>]ueaz','no');
INSERT INTO `wp_options` VALUES (131,'logged_in_key','%^vWO!z#C62y&XY5LuN!!O[xTjrze~e79>Ymu5gXwvLHGM>n=V%ci|@2V4[Ub[TJ','no');
INSERT INTO `wp_options` VALUES (132,'logged_in_salt','a_Y#nXn^n7t%P^896M.:(MO%hhZ_cGH[QJpEkOrGtcp2@e]g=8Dl026k5T5kAWdN','no');
INSERT INTO `wp_options` VALUES (134,'_site_transient_timeout_browser_a0909810a6d132832e28ef6da18ec77c','1658712625','no');
INSERT INTO `wp_options` VALUES (135,'_site_transient_browser_a0909810a6d132832e28ef6da18ec77c','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (136,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1658712626','no');
INSERT INTO `wp_options` VALUES (137,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (154,'recently_activated','a:2:{s:35:\"wp-user-manager/wp-user-manager.php\";i:1658423769;s:33:\"classic-editor/classic-editor.php\";i:1658284341;}','yes');
INSERT INTO `wp_options` VALUES (157,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (160,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"19.3\";}','yes');
INSERT INTO `wp_options` VALUES (161,'wpseo','a:87:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"19.3\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1658108203;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:22:\"http://localhost:10016\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1658108204;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}','yes');
INSERT INTO `wp_options` VALUES (162,'wpseo_titles','a:106:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (163,'wpseo_social','a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (197,'acf_version','5.12.3','yes');
INSERT INTO `wp_options` VALUES (200,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (227,'theme_mods_twentytwentytwo','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1658168540;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (228,'current_theme','Military Habbo','yes');
INSERT INTO `wp_options` VALUES (229,'theme_mods_military-habbo/military-habbo','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"meu_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (230,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (267,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (268,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (284,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (670,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (683,'recovery_mode_email_last_sent','1658340169','yes');
INSERT INTO `wp_options` VALUES (831,'wporg_options','a:1:{s:16:\"wporg_field_pill\";s:4:\"blue\";}','yes');
INSERT INTO `wp_options` VALUES (887,'ub_version','3.4.7','yes');
INSERT INTO `wp_options` VALUES (888,'branda_first_installed_version','3.4.7','yes');
INSERT INTO `wp_options` VALUES (889,'branda_db_version','20190205','yes');
INSERT INTO `wp_options` VALUES (890,'ub_permissions_users','a:1:{i:0;i:1;}','yes');
INSERT INTO `wp_options` VALUES (899,'ultimatebranding_activated_modules','a:9:{s:18:\"utilities/data.php\";s:3:\"yes\";s:25:\"utilities/permissions.php\";s:3:\"yes\";s:27:\"utilities/accessibility.php\";s:3:\"yes\";s:20:\"utilities/export.php\";s:3:\"yes\";s:20:\"utilities/import.php\";s:3:\"yes\";s:27:\"front-end/db-error-page.php\";s:3:\"yes\";s:13:\"admin/bar.php\";s:3:\"yes\";s:14:\"admin/menu.php\";s:3:\"yes\";s:17:\"admin/message.php\";s:3:\"yes\";}','yes');
INSERT INTO `wp_options` VALUES (900,'ub_stats','a:3:{s:7:\"modules\";a:9:{s:27:\"front-end/db-error-page.php\";a:4:{s:5:\"write\";i:1;s:10:\"last_write\";i:1658415428;s:4:\"read\";i:1;s:9:\"last_read\";i:1658415429;}s:13:\"admin/bar.php\";a:4:{s:5:\"write\";i:13;s:10:\"last_write\";i:1658421601;s:4:\"read\";i:18;s:9:\"last_read\";i:1658421202;}s:14:\"admin/menu.php\";a:3:{s:5:\"write\";i:0;s:4:\"read\";i:7;s:9:\"last_read\";i:1658421202;}s:17:\"admin/message.php\";a:4:{s:5:\"write\";i:2;s:4:\"read\";i:6;s:9:\"last_read\";i:1658421202;s:10:\"last_write\";i:1658420717;}s:18:\"utilities/data.php\";a:3:{s:5:\"write\";i:0;s:4:\"read\";i:1;s:9:\"last_read\";i:1658421258;}s:25:\"utilities/permissions.php\";a:3:{s:5:\"write\";i:0;s:4:\"read\";i:1;s:9:\"last_read\";i:1658421258;}s:27:\"utilities/accessibility.php\";a:3:{s:5:\"write\";i:0;s:4:\"read\";i:1;s:9:\"last_read\";i:1658421258;}s:20:\"utilities/export.php\";a:3:{s:5:\"write\";i:0;s:4:\"read\";i:1;s:9:\"last_read\";i:1658421258;}s:20:\"utilities/import.php\";a:3:{s:5:\"write\";i:0;s:4:\"read\";i:1;s:9:\"last_read\";i:1658421258;}}s:6:\"groups\";a:3:{s:9:\"front-end\";i:1;s:5:\"admin\";i:51;s:4:\"data\";i:5;}s:9:\"activites\";a:1:{s:8:\"activate\";s:17:\"admin/message.php\";}}','yes');
INSERT INTO `wp_options` VALUES (901,'ub_db_error_page','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (902,'ub_admin_bar','a:7:{s:4:\"logo\";a:2:{s:4:\"logo\";s:2:\"61\";s:9:\"logo_meta\";a:4:{i:0;s:60:\"http://localhost:10016/wp-content/uploads/2022/07/pery-1.gif\";i:1;i:854;i:2;i:480;i:3;b:0;}}s:10:\"visibility\";a:1:{s:10:\"visibility\";a:8:{s:13:\"administrator\";s:2:\"on\";s:6:\"author\";s:2:\"on\";s:11:\"contributor\";s:2:\"on\";s:6:\"editor\";s:2:\"on\";s:12:\"wpseo_editor\";s:2:\"on\";s:13:\"wpseo_manager\";s:2:\"on\";s:10:\"subscriber\";s:2:\"on\";s:11:\"hidden_role\";s:2:\"on\";}}s:5:\"items\";a:4:{s:10:\"visibility\";s:4:\"hide\";s:14:\"disabled_menus\";a:5:{s:8:\"comments\";s:2:\"on\";s:11:\"menu-toggle\";s:2:\"on\";s:8:\"my-sites\";s:2:\"on\";s:10:\"wpseo-menu\";s:2:\"on\";s:7:\"updates\";s:2:\"on\";}s:13:\"wp_menu_roles\";a:7:{s:6:\"author\";s:2:\"on\";s:11:\"contributor\";s:2:\"on\";s:6:\"editor\";s:2:\"on\";s:12:\"wpseo_editor\";s:2:\"on\";s:13:\"wpseo_manager\";s:2:\"on\";s:10:\"subscriber\";s:2:\"on\";s:5:\"guest\";s:2:\"on\";}s:14:\"custom-entries\";s:4:\"show\";}s:3:\"css\";a:1:{s:3:\"css\";s:36:\"#wpadminbar {\r\n  display:block;\r\n}\r\n\";}s:8:\"builders\";a:1:{s:10:\"get_params\";s:0:\"\";}s:8:\"settings\";a:1:{s:5:\"nodes\";a:10:{s:9:\"wpum_node\";s:6:\" Users\";s:11:\"new-content\";s:7:\"Add New\";s:8:\"comments\";s:8:\"Comments\";s:10:\"my-account\";s:16:\"Howdy, Matthaios\";s:11:\"menu-toggle\";s:4:\"Menu\";s:8:\"my-sites\";s:8:\"My Sites\";s:10:\"wpseo-menu\";s:19:\"SEO 11 notification\";s:9:\"site-name\";s:9:\"Site menu\";s:7:\"updates\";s:7:\"Updates\";s:7:\"wp-logo\";s:14:\"WordPress menu\";}}s:14:\"plugin_version\";s:5:\"3.4.7\";}','yes');
INSERT INTO `wp_options` VALUES (935,'ub_saved_admin_menus','a:1:{s:13:\"administrator\";a:2:{s:4:\"menu\";a:16:{i:2;a:7:{i:0;s:9:\"Dashboard\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";i:3;s:0:\"\";i:4;s:57:\"menu-top menu-top-first menu-icon-dashboard menu-top-last\";i:5;s:14:\"menu-dashboard\";i:6;s:19:\"dashicons-dashboard\";}i:4;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator1\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:5;a:7:{i:0;s:5:\"Posts\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";i:3;s:0:\"\";i:4;s:52:\"menu-top menu-icon-post open-if-no-js menu-top-first\";i:5;s:10:\"menu-posts\";i:6;s:20:\"dashicons-admin-post\";}i:10;a:7:{i:0;s:5:\"Media\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-media\";i:5;s:10:\"menu-media\";i:6;s:21:\"dashicons-admin-media\";}i:20;a:7:{i:0;s:5:\"Pages\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";i:3;s:0:\"\";i:4;s:23:\"menu-top menu-icon-page\";i:5;s:10:\"menu-pages\";i:6;s:20:\"dashicons-admin-page\";}i:25;a:7:{i:0;s:198:\"Comments <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 Comments in moderation</span></span>\";i:1;s:10:\"edit_posts\";i:2;s:17:\"edit-comments.php\";i:3;s:0:\"\";i:4;s:41:\"menu-top menu-icon-comments menu-top-last\";i:5;s:13:\"menu-comments\";i:6;s:24:\"dashicons-admin-comments\";}i:59;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator2\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:60;a:7:{i:0;s:10:\"Appearance\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";i:3;s:0:\"\";i:4;s:44:\"menu-top menu-icon-appearance menu-top-first\";i:5;s:15:\"menu-appearance\";i:6;s:26:\"dashicons-admin-appearance\";}i:65;a:7:{i:0;s:87:\"Plugins <span class=\"update-plugins count-0\"><span class=\"plugin-count\">0</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-plugins\";i:5;s:12:\"menu-plugins\";i:6;s:23:\"dashicons-admin-plugins\";}i:70;a:7:{i:0;s:5:\"Users\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-users\";i:5;s:10:\"menu-users\";i:6;s:21:\"dashicons-admin-users\";}i:75;a:7:{i:0;s:5:\"Tools\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-tools\";i:5;s:10:\"menu-tools\";i:6;s:21:\"dashicons-admin-tools\";}i:80;a:7:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";i:3;s:0:\"\";i:4;s:27:\"menu-top menu-icon-settings\";i:5;s:13:\"menu-settings\";i:6;s:24:\"dashicons-admin-settings\";}s:8:\"80.54801\";a:7:{i:0;s:13:\"Custom Fields\";i:1;s:14:\"manage_options\";i:2;s:34:\"edit.php?post_type=acf-field-group\";i:3;s:13:\"Custom Fields\";i:4;s:67:\"menu-top toplevel_page_edit?post_type=acf-field-group menu-top-last\";i:5;s:44:\"toplevel_page_edit?post_type=acf-field-group\";i:6;s:31:\"dashicons-welcome-widgets-menus\";}i:99;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:14:\"separator-last\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}s:8:\"99.23465\";a:7:{i:0;s:162:\"Yoast SEO <span class=\"update-plugins count-1\"><span class=\"plugin-count\" aria-hidden=\"true\">1</span><span class=\"screen-reader-text\">1 notification</span></span>\";i:1;s:20:\"wpseo_manage_options\";i:2;s:15:\"wpseo_dashboard\";i:3;s:20:\"Yoast SEO: Dashboard\";i:4;s:53:\"menu-top toplevel_page_wpseo_dashboard menu-top-first\";i:5;s:29:\"toplevel_page_wpseo_dashboard\";i:6;s:1174:\"data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgc3R5bGU9ImZpbGw6IzgyODc4YyIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHJvbGU9ImltZyIgYXJpYS1oaWRkZW49InRydWUiIGZvY3VzYWJsZT0iZmFsc2UiPjxnPjxnPjxnPjxnPjxwYXRoIGQ9Ik0yMDMuNiwzOTVjNi44LTE3LjQsNi44LTM2LjYsMC01NGwtNzkuNC0yMDRoNzAuOWw0Ny43LDE0OS40bDc0LjgtMjA3LjZIMTE2LjRjLTQxLjgsMC03NiwzNC4yLTc2LDc2VjM1N2MwLDQxLjgsMzQuMiw3Niw3Niw3NkgxNzNDMTg5LDQyNC4xLDE5Ny42LDQxMC4zLDIwMy42LDM5NXoiLz48L2c+PGc+PHBhdGggZD0iTTQ3MS42LDE1NC44YzAtNDEuOC0zNC4yLTc2LTc2LTc2aC0zTDI4NS43LDM2NWMtOS42LDI2LjctMTkuNCw0OS4zLTMwLjMsNjhoMjE2LjJWMTU0Ljh6Ii8+PC9nPjwvZz48cGF0aCBzdHJva2Utd2lkdGg9IjIuOTc0IiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0zMzgsMS4zbC05My4zLDI1OS4xbC00Mi4xLTEzMS45aC04OS4xbDgzLjgsMjE1LjJjNiwxNS41LDYsMzIuNSwwLDQ4Yy03LjQsMTktMTksMzcuMy01Myw0MS45bC03LjIsMXY3Nmg4LjNjODEuNywwLDExOC45LTU3LjIsMTQ5LjYtMTQyLjlMNDMxLjYsMS4zSDMzOHogTTI3OS40LDM2MmMtMzIuOSw5Mi02Ny42LDEyOC43LTEyNS43LDEzMS44di00NWMzNy41LTcuNSw1MS4zLTMxLDU5LjEtNTEuMWM3LjUtMTkuMyw3LjUtNDAuNywwLTYwbC03NS0xOTIuN2g1Mi44bDUzLjMsMTY2LjhsMTA1LjktMjk0aDU4LjFMMjc5LjQsMzYyeiIvPjwvZz48L2c+PC9zdmc+\";}i:100;a:7:{i:0;s:6:\"Branda\";i:1;s:4:\"read\";i:2;s:8:\"branding\";i:3;s:6:\"Branda\";i:4;s:45:\"menu-top toplevel_page_branding menu-top-last\";i:5;s:22:\"toplevel_page_branding\";i:6;s:982:\"data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE3LjIzIDguMDZMMTEuMTcgMkgyVjExLjFMOC44NTk5OSAxNy4yTDE3LjIzIDguMDZaTTAgMEgxMkwyMCA4TDkgMjBMMCAxMlYwWk0zLjY2NjY0IDMuMjUyODFDMy45MTMzMSAzLjA4Nzk5IDQuMjAzMzQgMyA0LjUwMDAxIDNDNC44OTc4NCAzIDUuMjc5MzggMy4xNTgwMyA1LjU2MDY4IDMuNDM5MzNDNS44NDE5OSAzLjcyMDY0IDYuMDAwMDEgNC4xMDIxOCA2LjAwMDAxIDQuNUM2LjAwMDAxIDQuNzk2NjcgNS45MTIwMyA1LjA4NjcgNS43NDcyIDUuMzMzMzdDNS41ODIzOCA1LjU4MDA1IDUuMzQ4MTQgNS43NzIyNyA1LjA3NDA1IDUuODg1OEM0Ljc5OTk2IDUuOTk5MzMgNC40OTgzMiA2LjAyOTA3IDQuMjA3MzUgNS45NzExOUMzLjkxNjM4IDUuOTEzMzEgMy42NDkxMiA1Ljc3MDQ1IDMuNDM5MzQgNS41NjA2N0MzLjIyOTU2IDUuMzUwODkgMy4wODY3IDUuMDgzNjQgMy4wMjg4MiA0Ljc5MjY2QzIuOTcwOTQgNC41MDE2OSAzLjAwMDY4IDQuMjAwMDUgMy4xMTQyMSAzLjkyNTk2QzMuMjI3NzQgMy42NTE4OCAzLjQxOTk3IDMuNDE3NjMgMy42NjY2NCAzLjI1MjgxWiIgZmlsbD0iI0YwRjZGQyIvPjwvc3ZnPg==\";}}s:7:\"submenu\";a:14:{s:9:\"index.php\";a:2:{i:0;a:3:{i:0;s:4:\"Home\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";}i:10;a:3:{i:0;s:87:\"Updates <span class=\"update-plugins count-0\"><span class=\"update-count\">0</span></span>\";i:1;s:11:\"update_core\";i:2;s:15:\"update-core.php\";}}s:10:\"upload.php\";a:2:{i:5;a:3:{i:0;s:7:\"Library\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:12:\"upload_files\";i:2;s:13:\"media-new.php\";}}s:8:\"edit.php\";a:4:{i:5;a:3:{i:0;s:9:\"All Posts\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_posts\";i:2;s:12:\"post-new.php\";}i:15;a:3:{i:0;s:10:\"Categories\";i:1;s:17:\"manage_categories\";i:2;s:31:\"edit-tags.php?taxonomy=category\";}i:16;a:3:{i:0;s:4:\"Tags\";i:1;s:16:\"manage_post_tags\";i:2;s:31:\"edit-tags.php?taxonomy=post_tag\";}}s:23:\"edit.php?post_type=page\";a:2:{i:5;a:3:{i:0;s:9:\"All Pages\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_pages\";i:2;s:27:\"post-new.php?post_type=page\";}}s:10:\"themes.php\";a:9:{i:5;a:3:{i:0;s:85:\"Themes <span class=\"update-plugins count-0\"><span class=\"theme-count\">0</span></span>\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";}i:6;a:5:{i:0;s:9:\"Customize\";i:1;s:9:\"customize\";i:2;s:35:\"customize.php?return=%2Fwp-admin%2F\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:7;a:3:{i:0;s:7:\"Widgets\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"widgets.php\";}i:10;a:3:{i:0;s:5:\"Menus\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"nav-menus.php\";}i:15;a:5:{i:0;s:6:\"Header\";i:1;s:13:\"switch_themes\";i:2;s:76:\"customize.php?return=%2Fwp-admin%2F&#038;autofocus%5Bcontrol%5D=header_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:20;a:5:{i:0;s:10:\"Background\";i:1;s:13:\"switch_themes\";i:2;s:80:\"customize.php?return=%2Fwp-admin%2F&#038;autofocus%5Bcontrol%5D=background_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:21;a:4:{i:0;s:6:\"Header\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"custom-header\";i:3;s:6:\"Header\";}i:22;a:4:{i:0;s:10:\"Background\";i:1;s:18:\"edit_theme_options\";i:2;s:17:\"custom-background\";i:3;s:10:\"Background\";}i:23;a:4:{i:0;s:17:\"Theme File Editor\";i:1;s:11:\"edit_themes\";i:2;s:16:\"theme-editor.php\";i:3;s:17:\"Theme File Editor\";}}s:11:\"plugins.php\";a:3:{i:5;a:3:{i:0;s:17:\"Installed Plugins\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:15:\"install_plugins\";i:2;s:18:\"plugin-install.php\";}i:15;a:3:{i:0;s:18:\"Plugin File Editor\";i:1;s:12:\"edit_plugins\";i:2;s:17:\"plugin-editor.php\";}}s:9:\"users.php\";a:3:{i:5;a:3:{i:0;s:9:\"All Users\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:12:\"create_users\";i:2;s:12:\"user-new.php\";}i:15;a:3:{i:0;s:7:\"Profile\";i:1;s:4:\"read\";i:2;s:11:\"profile.php\";}}s:9:\"tools.php\";a:6:{i:5;a:3:{i:0;s:15:\"Available Tools\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";}i:10;a:3:{i:0;s:6:\"Import\";i:1;s:6:\"import\";i:2;s:10:\"import.php\";}i:15;a:3:{i:0;s:6:\"Export\";i:1;s:6:\"export\";i:2;s:10:\"export.php\";}i:20;a:3:{i:0;s:11:\"Site Health\";i:1;s:23:\"view_site_health_checks\";i:2;s:15:\"site-health.php\";}i:25;a:3:{i:0;s:20:\"Export Personal Data\";i:1;s:27:\"export_others_personal_data\";i:2;s:24:\"export-personal-data.php\";}i:30;a:3:{i:0;s:19:\"Erase Personal Data\";i:1;s:26:\"erase_others_personal_data\";i:2;s:23:\"erase-personal-data.php\";}}s:19:\"options-general.php\";a:7:{i:10;a:3:{i:0;s:7:\"General\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";}i:15;a:3:{i:0;s:7:\"Writing\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-writing.php\";}i:20;a:3:{i:0;s:7:\"Reading\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-reading.php\";}i:25;a:3:{i:0;s:10:\"Discussion\";i:1;s:14:\"manage_options\";i:2;s:22:\"options-discussion.php\";}i:30;a:3:{i:0;s:5:\"Media\";i:1;s:14:\"manage_options\";i:2;s:17:\"options-media.php\";}i:40;a:3:{i:0;s:10:\"Permalinks\";i:1;s:14:\"manage_options\";i:2;s:21:\"options-permalink.php\";}i:45;a:3:{i:0;s:7:\"Privacy\";i:1;s:22:\"manage_privacy_options\";i:2;s:19:\"options-privacy.php\";}}s:15:\"wpseo_dashboard\";a:7:{i:0;a:4:{i:0;s:7:\"General\";i:1;s:20:\"wpseo_manage_options\";i:2;s:15:\"wpseo_dashboard\";i:3;s:19:\"General - Yoast SEO\";}i:1;a:4:{i:0;s:17:\"Search Appearance\";i:1;s:20:\"wpseo_manage_options\";i:2;s:12:\"wpseo_titles\";i:3;s:29:\"Search Appearance - Yoast SEO\";}i:2;a:4:{i:0;s:6:\"Social\";i:1;s:20:\"wpseo_manage_options\";i:2;s:12:\"wpseo_social\";i:3;s:18:\"Social - Yoast SEO\";}i:3;a:4:{i:0;s:5:\"Tools\";i:1;s:20:\"wpseo_manage_options\";i:2;s:11:\"wpseo_tools\";i:3;s:17:\"Tools - Yoast SEO\";}i:4;a:4:{i:0;s:7:\"Premium\";i:1;s:20:\"wpseo_manage_options\";i:2;s:14:\"wpseo_licenses\";i:3;s:19:\"Premium - Yoast SEO\";}i:5;a:4:{i:0;s:62:\"Workouts <span class=\"yoast-badge yoast-premium-badge\"></span>\";i:1;s:17:\"edit_others_posts\";i:2;s:14:\"wpseo_workouts\";i:3;s:74:\"Workouts <span class=\"yoast-badge yoast-premium-badge\"></span> - Yoast SEO\";}i:6;a:4:{i:0;s:63:\"Redirects <span class=\"yoast-badge yoast-premium-badge\"></span>\";i:1;s:17:\"edit_others_posts\";i:2;s:15:\"wpseo_redirects\";i:3;s:75:\"Redirects <span class=\"yoast-badge yoast-premium-badge\"></span> - Yoast SEO\";}}s:32:\"wpseo_fake_menu_parent_page_slug\";a:1:{i:0;a:4:{i:0;s:14:\"Search Console\";i:1;s:20:\"wpseo_manage_options\";i:2;s:20:\"wpseo_search_console\";i:3;s:26:\"Search Console - Yoast SEO\";}}s:0:\"\";a:2:{i:0;a:4:{i:0;N;i:1;s:14:\"manage_options\";i:2;s:34:\"wpseo_installation_successful_free\";i:3;s:23:\"Installation Successful\";}i:1;a:4:{i:0;N;i:1;s:14:\"manage_options\";i:2;s:18:\"wpseo_configurator\";i:3;s:24:\"Old Configuration Wizard\";}}s:34:\"edit.php?post_type=acf-field-group\";a:3:{i:0;a:4:{i:0;s:12:\"Field Groups\";i:1;s:14:\"manage_options\";i:2;s:34:\"edit.php?post_type=acf-field-group\";i:3;s:12:\"Field Groups\";}i:1;a:4:{i:0;s:7:\"Add New\";i:1;s:14:\"manage_options\";i:2;s:38:\"post-new.php?post_type=acf-field-group\";i:3;s:7:\"Add New\";}i:2;a:4:{i:0;s:5:\"Tools\";i:1;s:14:\"manage_options\";i:2;s:9:\"acf-tools\";i:3;s:5:\"Tools\";}}s:8:\"branding\";a:8:{i:0;a:4:{i:0;s:9:\"Dashboard\";i:1;s:4:\"read\";i:2;s:8:\"branding\";i:3;s:9:\"Dashboard\";}i:1;a:4:{i:0;s:10:\"Admin Area\";i:1;s:4:\"read\";i:2;s:20:\"branding_group_admin\";i:3;s:10:\"Admin Area\";}i:2;a:4:{i:0;s:6:\"Emails\";i:1;s:4:\"read\";i:2;s:21:\"branding_group_emails\";i:3;s:6:\"Emails\";}i:3;a:4:{i:0;s:9:\"Front-end\";i:1;s:4:\"read\";i:2;s:24:\"branding_group_front-end\";i:3;s:9:\"Front-end\";}i:4;a:4:{i:0;s:9:\"Utilities\";i:1;s:4:\"read\";i:2;s:24:\"branding_group_utilities\";i:3;s:9:\"Utilities\";}i:5;a:4:{i:0;s:7:\"Widgets\";i:1;s:4:\"read\";i:2;s:22:\"branding_group_widgets\";i:3;s:7:\"Widgets\";}i:6;a:4:{i:0;s:8:\"Settings\";i:1;s:4:\"read\";i:2;s:19:\"branding_group_data\";i:3;s:8:\"Settings\";}i:7;a:4:{i:0;s:10:\"Branda Pro\";i:1;s:4:\"read\";i:2;s:10:\"branda_pro\";i:3;s:10:\"Branda Pro\";}}}}}','yes');
INSERT INTO `wp_options` VALUES (940,'ub_admin_message','a:2:{s:5:\"admin\";a:2:{s:7:\"message\";s:96:\"Bem-vindo ao Painel Administrativo. Tenha uma ótima experiência.\r\n\r\nAtt, desenvolvedor Matheus\";s:12:\"message_meta\";s:108:\"<p>Bem-vindo ao Painel Administrativo. Tenha uma ótima experiência.</p>\n<p>Att, desenvolvedor Matheus</p>\n\";}s:14:\"plugin_version\";s:5:\"3.4.7\";}','yes');
INSERT INTO `wp_options` VALUES (985,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1658540484;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:43:\"branda-white-labeling/ultimate-branding.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/branda-white-labeling\";s:4:\"slug\";s:21:\"branda-white-labeling\";s:6:\"plugin\";s:43:\"branda-white-labeling/ultimate-branding.php\";s:11:\"new_version\";s:5:\"3.4.7\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/branda-white-labeling/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/branda-white-labeling.3.4.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/branda-white-labeling/assets/icon-256x256.png?rev=2746495\";s:2:\"1x\";s:74:\"https://ps.w.org/branda-white-labeling/assets/icon-128x128.png?rev=2746495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/branda-white-labeling/assets/banner-1544x500.png?rev=2625091\";s:2:\"1x\";s:76:\"https://ps.w.org/branda-white-labeling/assets/banner-772x250.png?rev=2625091\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"19.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.8\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.3\";s:43:\"branda-white-labeling/ultimate-branding.php\";s:5:\"3.4.7\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"19.3\";}}','no');
INSERT INTO `wp_options` VALUES (999,'v202_upgrade','1','yes');
INSERT INTO `wp_options` VALUES (1007,'widget_wpum_login_form_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1008,'widget_wpum_password_recovery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1009,'widget_wpum_recently_registered_users','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1010,'widget_wpum_registration_form_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1507,'_site_transient_timeout_theme_roots','1658542283','no');
INSERT INTO `wp_options` VALUES (1508,'_site_transient_theme_roots','a:1:{s:29:\"military-habbo/military-habbo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1634,'_transient_timeout_global_styles_military-habbo/military-habbo','1658551772','no');
INSERT INTO `wp_options` VALUES (1635,'_transient_global_styles_military-habbo/military-habbo','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (1636,'_transient_timeout_global_styles_svg_filters_military-habbo/military-habbo','1658551772','no');
INSERT INTO `wp_options` VALUES (1637,'_transient_global_styles_svg_filters_military-habbo/military-habbo','<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,7,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (4,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (5,7,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (6,7,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (7,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (8,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (9,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (10,7,'_menu_item_url','http://localhost:10016/');
INSERT INTO `wp_postmeta` VALUES (11,7,'_menu_item_orphaned','1658172124');
INSERT INTO `wp_postmeta` VALUES (12,8,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (13,8,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (14,8,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (15,8,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (16,8,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (17,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (18,8,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (19,8,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (20,8,'_menu_item_orphaned','1658172124');
INSERT INTO `wp_postmeta` VALUES (21,9,'_edit_lock','1658269948:1');
INSERT INTO `wp_postmeta` VALUES (22,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,9,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (24,9,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (25,12,'_edit_lock','1658260873:1');
INSERT INTO `wp_postmeta` VALUES (26,12,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (27,12,'_wp_trash_meta_time','1658260912');
INSERT INTO `wp_postmeta` VALUES (28,13,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (29,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,13,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (31,13,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (32,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,13,'_menu_item_url','http://localhost:10016/');
INSERT INTO `wp_postmeta` VALUES (36,13,'_menu_item_orphaned','1658261428');
INSERT INTO `wp_postmeta` VALUES (37,14,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (38,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (39,14,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (40,14,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (41,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (42,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (43,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (44,14,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,14,'_menu_item_orphaned','1658261428');
INSERT INTO `wp_postmeta` VALUES (46,15,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (47,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (48,15,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (49,15,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (50,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (51,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (52,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (53,15,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,15,'_menu_item_orphaned','1658261428');
INSERT INTO `wp_postmeta` VALUES (55,16,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (56,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,16,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (58,16,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (59,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,16,'_menu_item_url','http://localhost:10016/');
INSERT INTO `wp_postmeta` VALUES (63,16,'_menu_item_orphaned','1658261440');
INSERT INTO `wp_postmeta` VALUES (64,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,17,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (67,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (72,17,'_menu_item_orphaned','1658261440');
INSERT INTO `wp_postmeta` VALUES (73,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,18,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (76,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,18,'_menu_item_orphaned','1658261440');
INSERT INTO `wp_postmeta` VALUES (82,21,'_edit_lock','1658270057:1');
INSERT INTO `wp_postmeta` VALUES (83,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (84,21,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (85,21,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (86,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (87,9,'_wp_trash_meta_time','1658270418');
INSERT INTO `wp_postmeta` VALUES (88,9,'_wp_desired_post_slug','teste');
INSERT INTO `wp_postmeta` VALUES (89,21,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (90,21,'_wp_trash_meta_time','1658270421');
INSERT INTO `wp_postmeta` VALUES (91,21,'_wp_desired_post_slug','anne');
INSERT INTO `wp_postmeta` VALUES (92,24,'_edit_lock','1658412031:1');
INSERT INTO `wp_postmeta` VALUES (93,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (94,24,'_yoast_wpseo_estimated-reading-time-minutes','0');
INSERT INTO `wp_postmeta` VALUES (95,24,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (96,27,'_edit_lock','1658412037:1');
INSERT INTO `wp_postmeta` VALUES (97,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (98,27,'_yoast_wpseo_estimated-reading-time-minutes','0');
INSERT INTO `wp_postmeta` VALUES (99,27,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (100,29,'_edit_lock','1658420155:1');
INSERT INTO `wp_postmeta` VALUES (101,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (102,29,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (103,29,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (104,32,'_wp_attached_file','2022/07/pery.gif');
INSERT INTO `wp_postmeta` VALUES (105,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:854;s:6:\"height\";i:480;s:4:\"file\";s:16:\"2022/07/pery.gif\";s:8:\"filesize\";i:1468737;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"pery-300x169.gif\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:20712;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"pery-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:12804;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"pery-768x432.gif\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:195727;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (106,33,'_wp_attached_file','2022/07/cropped-pery.gif');
INSERT INTO `wp_postmeta` VALUES (107,33,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (108,33,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2022/07/cropped-pery.gif\";s:8:\"filesize\";i:156995;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"cropped-pery-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:45742;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-pery-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:11512;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:24:\"cropped-pery-270x270.gif\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:36498;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:24:\"cropped-pery-192x192.gif\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:15928;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:24:\"cropped-pery-180x180.gif\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:13903;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:22:\"cropped-pery-32x32.gif\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:1346;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (109,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (110,34,'_wp_trash_meta_time','1658280689');
INSERT INTO `wp_postmeta` VALUES (111,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (112,3,'_wp_trash_meta_time','1658282411');
INSERT INTO `wp_postmeta` VALUES (113,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (114,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (115,2,'_wp_trash_meta_time','1658282413');
INSERT INTO `wp_postmeta` VALUES (116,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (117,39,'_edit_lock','1658286243:1');
INSERT INTO `wp_postmeta` VALUES (118,40,'_wp_attached_file','2022/07/CxDCGy8.png');
INSERT INTO `wp_postmeta` VALUES (119,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:280;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2022/07/CxDCGy8.png\";s:8:\"filesize\";i:3746;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"CxDCGy8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13903;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (120,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (121,39,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (122,39,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (123,45,'_wp_attached_file','2022/07/CxDCGy8-1.png');
INSERT INTO `wp_postmeta` VALUES (124,45,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:280;s:6:\"height\";i:200;s:4:\"file\";s:21:\"2022/07/CxDCGy8-1.png\";s:8:\"filesize\";i:3746;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"CxDCGy8-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13903;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (125,48,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (126,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (127,48,'_menu_item_object_id','48');
INSERT INTO `wp_postmeta` VALUES (128,48,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (129,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (130,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (131,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (132,48,'_menu_item_url','http://localhost:10016/');
INSERT INTO `wp_postmeta` VALUES (134,49,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (135,49,'_menu_item_menu_item_parent','48');
INSERT INTO `wp_postmeta` VALUES (136,49,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (137,49,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (138,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (139,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (140,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (141,49,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (143,50,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (144,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (145,50,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (146,50,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (147,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (148,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (149,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (150,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (152,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (153,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (154,51,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (155,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (156,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (157,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (158,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (159,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (161,52,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (162,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (163,52,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (164,52,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (165,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (166,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (167,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (168,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (170,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (171,53,'_edit_lock','1658411932:1');
INSERT INTO `wp_postmeta` VALUES (172,53,'_wp_trash_meta_status','acf-disabled');
INSERT INTO `wp_postmeta` VALUES (173,53,'_wp_trash_meta_time','1658412082');
INSERT INTO `wp_postmeta` VALUES (174,53,'_wp_desired_post_slug','group_62d959a65082f');
INSERT INTO `wp_postmeta` VALUES (175,54,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (176,54,'_wp_trash_meta_time','1658412083');
INSERT INTO `wp_postmeta` VALUES (177,54,'_wp_desired_post_slug','field_62d95a1a59ac3');
INSERT INTO `wp_postmeta` VALUES (178,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (179,55,'_edit_lock','1658412230:1');
INSERT INTO `wp_postmeta` VALUES (180,33,'_oembed_94783c811f4c39156a3900a34444f810','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (181,33,'_oembed_94783c811f4c39156a3900a34444f810','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (182,29,'_thumbnail_id','33');
INSERT INTO `wp_postmeta` VALUES (183,59,'_edit_lock','1658412576:1');
INSERT INTO `wp_postmeta` VALUES (184,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,59,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (186,59,'_wp_trash_meta_status','pending');
INSERT INTO `wp_postmeta` VALUES (187,59,'_wp_trash_meta_time','1658412575');
INSERT INTO `wp_postmeta` VALUES (188,59,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (189,59,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (190,61,'_wp_attached_file','2022/07/pery-1.gif');
INSERT INTO `wp_postmeta` VALUES (191,61,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:854;s:6:\"height\";i:480;s:4:\"file\";s:18:\"2022/07/pery-1.gif\";s:8:\"filesize\";i:1468737;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"pery-1-300x169.gif\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:20712;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"pery-1-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:12804;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"pery-1-768x432.gif\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:195727;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (192,65,'_edit_lock','1658422481:2');
INSERT INTO `wp_postmeta` VALUES (193,64,'_edit_lock','1658422495:2');
INSERT INTO `wp_postmeta` VALUES (194,66,'_edit_lock','1658423400:2');
INSERT INTO `wp_postmeta` VALUES (195,66,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (196,66,'_yoast_wpseo_estimated-reading-time-minutes','0');
INSERT INTO `wp_postmeta` VALUES (197,66,'_yoast_wpseo_wordproof_timestamp','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-07-18 01:27:14','2022-07-18 01:27:14','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-07-18 01:27:14','2022-07-18 01:27:14','',0,'http://localhost:10016/?p=1',0,'post','',0);
INSERT INTO `wp_posts` VALUES (2,1,'2022-07-18 01:27:14','2022-07-18 01:27:14','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10016/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-07-20 02:00:13','2022-07-20 02:00:13','',0,'http://localhost:10016/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-07-18 01:27:14','2022-07-18 01:27:14','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10016.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2022-07-20 02:00:11','2022-07-20 02:00:11','',0,'http://localhost:10016/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2022-07-18 01:30:26','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-07-18 01:30:26','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-07-18 01:39:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-07-18 01:39:39','0000-00-00 00:00:00','',0,'http://localhost:10016/?post_type=acf-field-group&p=5',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-07-18 01:40:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-07-18 01:40:00','0000-00-00 00:00:00','',0,'http://localhost:10016/?post_type=acf-field-group&p=6',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-07-18 19:22:04','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2022-07-18 19:22:04','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=7',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-07-18 19:22:04','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-07-18 19:22:04','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=8',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-07-19 19:51:01','2022-07-19 19:51:01','<!-- wp:paragraph -->\n<p>fdfdsfdsfdsfds</p>\n<!-- /wp:paragraph -->','Teste','','trash','closed','closed','','teste__trashed','','','2022-07-19 22:40:18','2022-07-19 22:40:18','',0,'http://localhost:10016/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-07-19 19:51:00','2022-07-19 19:51:00','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-military-habbo%2fmilitary-habbo','','','2022-07-19 19:51:00','2022-07-19 19:51:00','',0,'http://localhost:10016/wp-global-styles-military-habbo%2fmilitary-habbo/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-07-19 19:51:01','2022-07-19 19:51:01','','Teste','','inherit','closed','closed','','9-revision-v1','','','2022-07-19 19:51:01','2022-07-19 19:51:01','',9,'http://localhost:10016/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-07-19 20:01:52','2022-07-19 20:01:52','{\n    \"blogname\": {\n        \"value\": \"FMB\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-19 20:01:13\"\n    }\n}','','','trash','closed','closed','','31429a37-a7bc-4282-96cb-fe8761ceac9c','','','2022-07-19 20:01:52','2022-07-19 20:01:52','',0,'http://localhost:10016/?p=12',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-07-19 20:10:28','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2022-07-19 20:10:28','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-07-19 20:10:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-07-19 20:10:28','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=14',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-07-19 20:10:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-07-19 20:10:28','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=15',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-07-19 20:10:40','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2022-07-19 20:10:40','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=16',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-07-19 20:10:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-07-19 20:10:40','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-07-19 20:10:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-07-19 20:10:40','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-07-19 20:19:33','2022-07-19 20:19:33','<!-- wp:paragraph -->\n<p>fdfdsfdsfdsfds</p>\n<!-- /wp:paragraph -->','Teste','','inherit','closed','closed','','9-revision-v1','','','2022-07-19 20:19:33','2022-07-19 20:19:33','',9,'http://localhost:10016/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-07-19 22:32:48','2022-07-19 22:32:48','<!-- wp:paragraph -->\n<p>dsfdsfdsfds</p>\n<!-- /wp:paragraph -->','anne','','trash','closed','closed','','anne__trashed','','','2022-07-19 22:40:21','2022-07-19 22:40:21','',0,'http://localhost:10016/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-07-19 22:32:48','2022-07-19 22:32:48','<!-- wp:paragraph -->\n<p>anne</p>\n<!-- /wp:paragraph -->','anne','','inherit','closed','closed','','21-revision-v1','','','2022-07-19 22:32:48','2022-07-19 22:32:48','',21,'http://localhost:10016/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-07-19 22:34:16','2022-07-19 22:34:16','<!-- wp:paragraph -->\n<p>dsfdsfdsfds</p>\n<!-- /wp:paragraph -->','anne','','inherit','closed','closed','','21-revision-v1','','','2022-07-19 22:34:16','2022-07-19 22:34:16','',21,'http://localhost:10016/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-07-19 22:40:31','2022-07-19 22:40:31','<!-- wp:paragraph -->\n<p>Fardamentos</p>\n<!-- /wp:paragraph -->','Fardamentos','','publish','closed','closed','','fardamentos','','','2022-07-19 23:01:45','2022-07-19 23:01:45','',0,'http://localhost:10016/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-07-19 22:40:31','2022-07-19 22:40:31','','Fardamentos','','inherit','closed','closed','','24-revision-v1','','','2022-07-19 22:40:31','2022-07-19 22:40:31','',24,'http://localhost:10016/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-07-19 22:42:54','2022-07-19 22:42:54','<!-- wp:paragraph -->\n<p>dsfdsfdsfsdfsfds</p>\n<!-- /wp:paragraph -->','Hierarquia','','publish','closed','closed','','hierarquia','','','2022-07-20 01:40:09','2022-07-20 01:40:09','',0,'http://localhost:10016/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-07-19 22:42:54','2022-07-19 22:42:54','','Hierarquia','','inherit','closed','closed','','27-revision-v1','','','2022-07-19 22:42:54','2022-07-19 22:42:54','',27,'http://localhost:10016/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-07-19 22:44:08','2022-07-19 22:44:08','<!-- wp:image {\"align\":\"center\",\"id\":45,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8-1.png\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->','Como baixar o Discord?','','publish','closed','closed','','como-baixar','','','2022-07-21 14:05:05','2022-07-21 14:05:05','',0,'http://localhost:10016/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-07-19 22:44:08','2022-07-19 22:44:08','<!-- wp:paragraph -->\n<p>aaaa</p>\n<!-- /wp:paragraph -->','Como baixar o Discord?','','inherit','closed','closed','','29-revision-v1','','','2022-07-19 22:44:08','2022-07-19 22:44:08','',29,'http://localhost:10016/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-07-19 23:01:44','2022-07-19 23:01:44','<!-- wp:paragraph -->\n<p>Fardamentos</p>\n<!-- /wp:paragraph -->','Fardamentos','','inherit','closed','closed','','24-revision-v1','','','2022-07-19 23:01:44','2022-07-19 23:01:44','',24,'http://localhost:10016/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-07-20 01:31:20','2022-07-20 01:31:20','','pery','','inherit','open','closed','','pery','','','2022-07-20 01:31:20','2022-07-20 01:31:20','',0,'http://localhost:10016/wp-content/uploads/2022/07/pery.gif',0,'attachment','image/gif',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-07-20 01:31:26','2022-07-20 01:31:26','http://localhost:10016/wp-content/uploads/2022/07/cropped-pery.gif','cropped-pery.gif','','inherit','open','closed','','cropped-pery-gif','','','2022-07-20 01:31:26','2022-07-20 01:31:26','',0,'http://localhost:10016/wp-content/uploads/2022/07/cropped-pery.gif',0,'attachment','image/gif',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-07-20 01:31:29','2022-07-20 01:31:29','{\n    \"site_icon\": {\n        \"value\": 33,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-20 01:31:29\"\n    }\n}','','','trash','closed','closed','','b3d3b31f-8991-4093-9e44-dbfa0c4a19fb','','','2022-07-20 01:31:29','2022-07-20 01:31:29','',0,'http://localhost:10016/b3d3b31f-8991-4093-9e44-dbfa0c4a19fb/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-07-20 01:35:55','2022-07-20 01:35:55','<!-- wp:paragraph -->\n<p>asasas</p>\n<!-- /wp:paragraph -->','Como baixar o Discord?','','inherit','closed','closed','','29-revision-v1','','','2022-07-20 01:35:55','2022-07-20 01:35:55','',29,'http://localhost:10016/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-07-20 01:40:08','2022-07-20 01:40:08','<!-- wp:paragraph -->\n<p>dsfdsfdsfsdfsfds</p>\n<!-- /wp:paragraph -->','Hierarquia','','inherit','closed','closed','','27-revision-v1','','','2022-07-20 01:40:08','2022-07-20 01:40:08','',27,'http://localhost:10016/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-07-20 02:00:11','2022-07-20 02:00:11','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10016.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-07-20 02:00:11','2022-07-20 02:00:11','',3,'http://localhost:10016/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-07-20 02:00:13','2022-07-20 02:00:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10016/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-07-20 02:00:13','2022-07-20 02:00:13','',2,'http://localhost:10016/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-07-20 02:01:22','2022-07-20 02:01:22','<!-- wp:image {\"align\":\"center\",\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->','Duarte','','publish','closed','closed','','duarte','','','2022-07-20 02:01:23','2022-07-20 02:01:23','',0,'http://localhost:10016/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-07-20 02:01:15','2022-07-20 02:01:15','','CxDCGy8','','inherit','open','closed','','cxdcgy8','','','2022-07-20 02:01:15','2022-07-20 02:01:15','',39,'http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-07-20 02:01:22','2022-07-20 02:01:22','<!-- wp:image {\"align\":\"center\",\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->','Duarte','','inherit','closed','closed','','39-revision-v1','','','2022-07-20 02:01:22','2022-07-20 02:01:22','',39,'http://localhost:10016/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-07-20 02:31:09','2022-07-20 02:31:09','<!-- wp:paragraph -->\r\n<p>ghjghjghjghjghjghjghjghjghjghjghjghjghjghj</p>\r\n<p><img class=\"size-full wp-image-40 aligncenter\" src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png\" alt=\"\" width=\"280\" height=\"200\" /></p>\r\n<!-- /wp:paragraph -->','Como baixar o Discord?','','inherit','closed','closed','','29-revision-v1','','','2022-07-20 02:31:09','2022-07-20 02:31:09','',29,'http://localhost:10016/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-07-20 02:31:36','2022-07-20 02:31:36','<!-- wp:paragraph -->\r\n<p>ghjghjghjghjghjghjghjghjghjghjghjghjghjghj</p>\r\n<p><img class=\"size-full wp-image-40 alignright\" src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png\" alt=\"\" width=\"280\" height=\"200\" /></p>\r\n<!-- /wp:paragraph -->','Como baixar o Discord?','','inherit','closed','closed','','29-revision-v1','','','2022-07-20 02:31:36','2022-07-20 02:31:36','',29,'http://localhost:10016/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-07-20 02:32:45','2022-07-20 02:32:45','<!-- wp:paragraph -->\n<p><p>ghjghjghjghjghjghjghjghjghjghjghjghjghjghj</p>\n<p><img class=\"size-full wp-image-40 alignright\" src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png\" alt=\"\" width=\"280\" height=\"200\"></p></p>\n<!-- /wp:paragraph -->','Como baixar o Discord?','','inherit','closed','closed','','29-revision-v1','','','2022-07-20 02:32:45','2022-07-20 02:32:45','',29,'http://localhost:10016/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-07-20 02:33:40','2022-07-20 02:33:40','','CxDCGy8-1','','inherit','open','closed','','cxdcgy8-1','','','2022-07-20 02:33:40','2022-07-20 02:33:40','',29,'http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-07-20 02:33:46','2022-07-20 02:33:46','<!-- wp:image {\"align\":\"center\",\"id\":45,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8-1.png\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->','Como baixar o Discord?','','inherit','closed','closed','','29-revision-v1','','','2022-07-20 02:33:46','2022-07-20 02:33:46','',29,'http://localhost:10016/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-07-20 02:51:37','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-07-20 02:51:37','0000-00-00 00:00:00','',0,'http://localhost:10016/?post_type=acf-field-group&p=47',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-07-20 18:44:46','2022-07-20 17:51:18','','Home','','publish','closed','closed','','home','','','2022-07-20 18:44:46','2022-07-20 18:44:46','',0,'http://localhost:10016/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-07-20 18:44:47','2022-07-20 17:51:18','','Baixar','','publish','closed','closed','','49','','','2022-07-20 18:44:47','2022-07-20 18:44:47','',0,'http://localhost:10016/?p=49',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-07-20 18:44:47','2022-07-20 17:51:18',' ','','','publish','closed','closed','','50','','','2022-07-20 18:44:47','2022-07-20 18:44:47','',0,'http://localhost:10016/?p=50',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-07-20 18:44:47','2022-07-20 17:51:18',' ','','','publish','closed','closed','','51','','','2022-07-20 18:44:47','2022-07-20 18:44:47','',0,'http://localhost:10016/?p=51',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-07-20 18:44:47','2022-07-20 17:51:18',' ','','','publish','closed','closed','','52','','','2022-07-20 18:44:47','2022-07-20 18:44:47','',0,'http://localhost:10016/?p=52',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-07-21 13:52:33','2022-07-21 13:52:33','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','teset','teset','trash','closed','closed','','group_62d959a65082f__trashed','','','2022-07-21 14:01:23','2022-07-21 14:01:23','',0,'http://localhost:10016/?post_type=acf-field-group&#038;p=53',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-07-21 13:52:33','2022-07-21 13:52:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','teste','teste','trash','closed','closed','','field_62d95a1a59ac3__trashed','','','2022-07-21 14:01:23','2022-07-21 14:01:23','',53,'http://localhost:10016/?post_type=acf-field&#038;p=54',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-07-21 14:02:34','2022-07-21 14:02:34','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','a','a','publish','closed','closed','','group_62d95c34cc1e4','','','2022-07-21 14:04:26','2022-07-21 14:04:26','',0,'http://localhost:10016/?post_type=acf-field-group&#038;p=55',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-07-21 14:02:35','2022-07-21 14:02:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','a','a','publish','closed','closed','','field_62d95c7843828','','','2022-07-21 14:02:35','2022-07-21 14:02:35','',55,'http://localhost:10016/?post_type=acf-field&p=56',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-07-21 14:06:41','2022-07-21 14:06:41','<!-- wp:image {\"align\":\"center\",\"id\":45,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8-1.png\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->','Como baixar o Discord?','','inherit','closed','closed','','29-autosave-v1','','','2022-07-21 14:06:41','2022-07-21 14:06:41','',29,'http://localhost:10016/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,2,'2022-07-21 14:08:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-07-21 14:08:13','0000-00-00 00:00:00','',0,'http://localhost:10016/?p=58',0,'post','',0);
INSERT INTO `wp_posts` VALUES (59,2,'2022-07-21 14:09:35','2022-07-21 14:09:35','<!-- wp:paragraph -->\n<p>teste</p>\n<!-- /wp:paragraph -->','teste','','trash','open','open','','__trashed','','','2022-07-21 14:09:36','2022-07-21 14:09:36','',0,'http://localhost:10016/?p=59',0,'post','',0);
INSERT INTO `wp_posts` VALUES (60,2,'2022-07-21 14:08:53','2022-07-21 14:08:53','<!-- wp:paragraph -->\n<p>teste</p>\n<!-- /wp:paragraph -->','teste','','inherit','closed','closed','','59-revision-v1','','','2022-07-21 14:08:53','2022-07-21 14:08:53','',59,'http://localhost:10016/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-07-21 14:58:04','2022-07-21 14:58:04','','pery','','inherit','open','closed','','pery-2','','','2022-07-21 14:58:04','2022-07-21 14:58:04','',0,'http://localhost:10016/wp-content/uploads/2022/07/pery-1.gif',0,'attachment','image/gif',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-07-21 16:39:58','2022-07-21 16:39:58','<!-- wp:wpum/login-form /-->','Log In','','publish','closed','closed','','log-in','','','2022-07-21 16:39:58','2022-07-21 16:39:58','',0,'http://localhost:10016/log-in/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-07-21 16:39:59','2022-07-21 16:39:59','<!-- wp:wpum/password-recovery-form /-->','Password Reset','','publish','closed','closed','','password-reset','','','2022-07-21 16:39:59','2022-07-21 16:39:59','',0,'http://localhost:10016/password-reset/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-07-21 16:39:59','2022-07-21 16:39:59','<!-- wp:wpum/registration-form /-->','Register','','publish','closed','closed','','register','','','2022-07-21 16:39:59','2022-07-21 16:39:59','',0,'http://localhost:10016/register/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-07-21 16:39:59','2022-07-21 16:39:59','<!-- wp:wpum/account-page /-->','Account','','publish','closed','closed','','account','','','2022-07-21 16:39:59','2022-07-21 16:39:59','',0,'http://localhost:10016/account/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-07-21 16:39:59','2022-07-21 16:39:59','<!-- wp:wpum/profile-page /-->','Profile','','publish','closed','closed','','profile','','','2022-07-21 17:09:35','2022-07-21 17:09:35','',0,'http://localhost:10016/profile/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,2,'2022-07-21 17:09:34','2022-07-21 17:09:34','<!-- wp:wpum/profile-page /-->','Profile','','inherit','closed','closed','','66-revision-v1','','','2022-07-21 17:09:34','2022-07-21 17:09:34','',66,'http://localhost:10016/?p=67',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,2,0);
INSERT INTO `wp_term_relationships` VALUES (48,3,0);
INSERT INTO `wp_term_relationships` VALUES (49,3,0);
INSERT INTO `wp_term_relationships` VALUES (50,3,0);
INSERT INTO `wp_term_relationships` VALUES (51,3,0);
INSERT INTO `wp_term_relationships` VALUES (52,3,0);
INSERT INTO `wp_term_relationships` VALUES (59,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'military-habbo/military-habbo','military-habbo-military-habbo',0);
INSERT INTO `wp_terms` VALUES (3,'meu_menu','meu_menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Matthaios');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:5:{s:64:\"266bd8e998c7f0c0e4b470695b9a88d8594c3cbe7c7799c6b61acf392b62eef8\";a:4:{s:10:\"expiration\";i:1658433038;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658260238;}s:64:\"cc81cb5b4c541f3d43f658c05be4ef30f5571987de93c73fd3c9381a1168e586\";a:4:{s:10:\"expiration\";i:1658456457;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658283657;}s:64:\"6568a479ac882832e130436b317abd9b6888bbbd7dee53f1a4903bd4c4ba1b99\";a:4:{s:10:\"expiration\";i:1658582309;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658409509;}s:64:\"7293ad8272a0be1deb5db4cb9ab912380ed3a467f79c45cf217d1826dc7ff965\";a:4:{s:10:\"expiration\";i:1658583838;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658411038;}s:64:\"1f9ab880605c5e018b5c670e6fe3400bcde4e29a2c710140a9977c46c347a8a3\";a:4:{s:10:\"expiration\";i:1658601516;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658428716;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','editor=tinymce&ampamplibraryContent=browse&ampampmfold=o&amplibraryContent=browse&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1658280704');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'_yoast_wpseo_profile_updated','1658168541');
INSERT INTO `wp_usermeta` VALUES (24,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (33,2,'nickname','teste');
INSERT INTO `wp_usermeta` VALUES (34,2,'first_name','teste');
INSERT INTO `wp_usermeta` VALUES (35,2,'last_name','teste');
INSERT INTO `wp_usermeta` VALUES (36,2,'description','');
INSERT INTO `wp_usermeta` VALUES (37,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (39,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (40,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (41,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (42,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (43,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (44,2,'wp_capabilities','a:1:{s:6:\"editor\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (45,2,'wp_user_level','7');
INSERT INTO `wp_usermeta` VALUES (46,2,'_yoast_wpseo_profile_updated','1658412834');
INSERT INTO `wp_usermeta` VALUES (47,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (48,2,'facebook','');
INSERT INTO `wp_usermeta` VALUES (49,2,'instagram','');
INSERT INTO `wp_usermeta` VALUES (50,2,'linkedin','');
INSERT INTO `wp_usermeta` VALUES (51,2,'myspace','');
INSERT INTO `wp_usermeta` VALUES (52,2,'pinterest','');
INSERT INTO `wp_usermeta` VALUES (53,2,'soundcloud','');
INSERT INTO `wp_usermeta` VALUES (54,2,'tumblr','');
INSERT INTO `wp_usermeta` VALUES (55,2,'twitter','');
INSERT INTO `wp_usermeta` VALUES (56,2,'youtube','');
INSERT INTO `wp_usermeta` VALUES (57,2,'wikipedia','');
INSERT INTO `wp_usermeta` VALUES (58,2,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (59,2,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (60,2,'wpseo_noindex_author','');
INSERT INTO `wp_usermeta` VALUES (61,2,'wpseo_content_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (62,2,'wpseo_keyword_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (64,2,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (65,2,'wp_dashboard_quick_press_last_post_id','58');
INSERT INTO `wp_usermeta` VALUES (70,2,'user_cover','http://localhost:10016/wp-content/uploads/wp-user-manager-uploads/2022/07/pery.gif');
INSERT INTO `wp_usermeta` VALUES (71,2,'_user_cover_path','C:UsersforcaLocal Sitesfabhabboapppublic/wp-content/uploads/wp-user-manager-uploads/2022/07/pery.gif');
INSERT INTO `wp_usermeta` VALUES (72,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:335:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://localhost:10016/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:9:\"Matthaios\";s:9:\"user_pass\";s:34:\"$P$BbkStSarxp/gMtbM6u2.T4.onRiKdc1\";s:13:\"user_nicename\";s:9:\"matthaios\";s:10:\"user_email\";s:24:\"dev-email@flywheel.local\";s:8:\"user_url\";s:22:\"http://localhost:10016\";s:15:\"user_registered\";s:19:\"2022-07-18 01:27:14\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:9:\"Matthaios\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Matthaios','$P$BbkStSarxp/gMtbM6u2.T4.onRiKdc1','matthaios','dev-email@flywheel.local','http://localhost:10016','2022-07-18 01:27:14','',0,'Matthaios');
INSERT INTO `wp_users` VALUES (2,'teste','$P$B0BezfEJ6RUqZabGvPTNZPEyeowZN80','teste','teste@gmail.com','','2022-07-21 14:06:39','',0,'teste teste');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,NULL,NULL,2,'post','page',1,0,NULL,NULL,'Sample Page','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2022-07-18 01:36:44','2022-07-19 17:15:48',1,NULL,NULL,NULL,NULL,0,NULL,0,'2022-07-18 01:27:14','2022-07-18 01:27:14');
INSERT INTO `wp_yoast_indexable` VALUES (2,NULL,NULL,1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-18 01:36:44','2022-07-19 17:15:48',1,NULL,NULL,NULL,NULL,0,NULL,0,'2022-07-18 01:27:14','2022-07-18 01:27:14');
INSERT INTO `wp_yoast_indexable` VALUES (3,NULL,NULL,1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-18 01:36:45','2022-07-19 17:15:48',1,NULL,NULL,NULL,NULL,0,NULL,0,'2022-07-18 01:27:14','2022-07-18 01:27:14');
INSERT INTO `wp_yoast_indexable` VALUES (4,'http://localhost:10016/wp-global-styles-military-habbo%2fmilitary-habbo/','72:ed50b124cdb2b9c2dd9e80bb3a775c1e',10,'post','wp_global_styles',1,0,NULL,NULL,'Custom Styles','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-19 19:51:00','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-19 19:51:00','2022-07-19 19:51:00');
INSERT INTO `wp_yoast_indexable` VALUES (5,'http://localhost:10016/author/matthaios/','40:e9cec1d60e71cc3220ed42cbdfb0cad4',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://0.gravatar.com/avatar/c2b06ae950033b392998ada50767b50e?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://0.gravatar.com/avatar/c2b06ae950033b392998ada50767b50e?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2022-07-19 19:51:00','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 17:09:35','2022-07-18 01:27:14');
INSERT INTO `wp_yoast_indexable` VALUES (6,'http://localhost:10016/teste/','29:70c2fc5be81dd196439c82b0c78026f6',9,'post','page',1,0,NULL,NULL,'Teste','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-19 19:51:01','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,1,2,'2022-07-19 20:19:34','2022-07-19 19:51:01');
INSERT INTO `wp_yoast_indexable` VALUES (7,'http://localhost:10016/anne/','28:89eb7dce9b8d83bd6e893b89342feaef',21,'post','page',1,0,NULL,NULL,'anne','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-19 22:32:48','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,1,2,'2022-07-19 22:34:17','2022-07-19 22:32:48');
INSERT INTO `wp_yoast_indexable` VALUES (8,'http://localhost:10016/fardamentos/','35:b3c091bc6de7c4d9d8ff89297284e37b',24,'post','page',1,0,NULL,NULL,'Fardamentos','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-19 22:40:31','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,0,2,'2022-07-19 23:01:45','2022-07-19 22:40:31');
INSERT INTO `wp_yoast_indexable` VALUES (9,'http://localhost:10016/hierarquia/','34:3953f2cfa74ba6078f2a17c7ea239b6c',27,'post','page',1,0,NULL,NULL,'Hierarquia','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-19 22:42:54','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,0,2,'2022-07-20 01:40:09','2022-07-19 22:42:54');
INSERT INTO `wp_yoast_indexable` VALUES (10,'http://localhost:10016/como-baixar/','35:68f5fd7204374095c53cd8739cde0040',29,'post','page',1,0,NULL,NULL,'Como baixar o Discord?','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2022/07/cropped-pery.gif',NULL,'33','featured-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2022/07/cropped-pery.gif','33','featured-image','{\n    \"width\": 512,\n    \"height\": 512,\n    \"filesize\": 156995,\n    \"url\": \"http://localhost:10016/wp-content/uploads/2022/07/cropped-pery.gif\",\n    \"path\": \"C:\\\\Users\\\\forca\\\\Local Sites\\\\fabhabbo\\\\app\\\\public/wp-content/uploads/2022/07/cropped-pery.gif\",\n    \"size\": \"full\",\n    \"id\": 33,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/gif\"\n}',0,NULL,NULL,'2022-07-19 22:44:08','2022-07-21 18:26:40',1,NULL,NULL,NULL,NULL,0,1,2,'2022-07-21 14:05:05','2022-07-19 22:44:08');
INSERT INTO `wp_yoast_indexable` VALUES (11,'http://localhost:10016/duarte/','30:418bf7301fb0abb3c5d81602ab4d3bf9',39,'post','page',1,0,NULL,NULL,'Duarte','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,'http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png',NULL,NULL,'first-content-image',NULL,NULL,'http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png',NULL,'first-content-image',NULL,0,NULL,NULL,'2022-07-20 02:01:22','2022-07-21 18:26:40',1,NULL,NULL,NULL,NULL,0,1,2,'2022-07-20 02:01:23','2022-07-20 02:01:22');
INSERT INTO `wp_yoast_indexable` VALUES (12,'http://localhost:10016/home/','28:e29c6f690b0007f0ec8cf66d96e2a4a2',48,'post','nav_menu_item',1,0,NULL,NULL,'Home','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-20 17:51:18','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-20 18:44:46','2022-07-20 17:51:18');
INSERT INTO `wp_yoast_indexable` VALUES (13,'http://localhost:10016/49/','26:5805694ad968235efd3dad944af01e70',49,'post','nav_menu_item',1,0,NULL,NULL,'Baixar','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-20 17:51:18','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-20 18:44:47','2022-07-20 17:51:18');
INSERT INTO `wp_yoast_indexable` VALUES (14,'http://localhost:10016/50/','26:deaecb4e39147c6d0ca6b16ebecae4d0',50,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-20 17:51:18','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-20 18:44:47','2022-07-20 17:51:18');
INSERT INTO `wp_yoast_indexable` VALUES (15,'http://localhost:10016/51/','26:bf08a6e395c83349e4e381d57429be66',51,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-20 17:51:18','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-20 18:44:47','2022-07-20 17:51:18');
INSERT INTO `wp_yoast_indexable` VALUES (16,'http://localhost:10016/52/','26:debd50ecd2baff5ecc6623205f4e162f',52,'post','nav_menu_item',1,0,NULL,NULL,'','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-20 17:51:18','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-20 18:44:47','2022-07-20 17:51:18');
INSERT INTO `wp_yoast_indexable` VALUES (17,'http://localhost:10016/?post_type=acf-field&p=54','48:57bd874c07886d3eb93197aacc0f0847',54,'post','acf-field',1,53,NULL,NULL,'teste','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-21 13:52:33','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 13:52:33','2022-07-21 13:52:33');
INSERT INTO `wp_yoast_indexable` VALUES (18,'http://localhost:10016/?post_type=acf-field&p=56','48:2f1315e86bacb96f31dcd45aa1f371cb',56,'post','acf-field',1,55,NULL,NULL,'a','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-21 14:02:35','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 14:02:35','2022-07-21 14:02:35');
INSERT INTO `wp_yoast_indexable` VALUES (19,'http://localhost:10016/?post_type=acf-field-group&p=55','54:f40df7267913c897ce391cd4d4a5821a',55,'post','acf-field-group',1,0,NULL,NULL,'a','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-21 14:02:35','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 14:04:26','2022-07-21 14:02:34');
INSERT INTO `wp_yoast_indexable` VALUES (20,'http://localhost:10016/author/teste/','36:32741f0ea24d9f72879ef90da67974cc',2,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://1.gravatar.com/avatar/d1ca18cecaa470117672980092647dfe?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://1.gravatar.com/avatar/d1ca18cecaa470117672980092647dfe?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2022-07-21 14:06:39','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 16:58:12',NULL);
INSERT INTO `wp_yoast_indexable` VALUES (21,'http://localhost:10016/log-in/','30:4132ff4da4c0e1a0168cd0e69aa9fa02',62,'post','page',1,0,NULL,NULL,'Log In','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-21 16:39:59','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 16:39:58','2022-07-21 16:39:58');
INSERT INTO `wp_yoast_indexable` VALUES (22,'http://localhost:10016/password-reset/','38:8f8c95b0251984d077f40f09d857870f',63,'post','page',1,0,NULL,NULL,'Password Reset','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-21 16:39:59','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 16:39:59','2022-07-21 16:39:59');
INSERT INTO `wp_yoast_indexable` VALUES (23,'http://localhost:10016/register/','32:f70e5f367548251ecdc2653445901954',64,'post','page',1,0,NULL,NULL,'Register','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2022-07-21 16:39:59','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 16:39:59','2022-07-21 16:39:59');
INSERT INTO `wp_yoast_indexable` VALUES (24,'http://localhost:10016/account/','31:f302254caac7b5d4d1f7abb37ee99806',65,'post','page',1,0,NULL,NULL,'Account','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,'2022-07-21 16:39:59','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,NULL,2,'2022-07-21 16:39:59','2022-07-21 16:39:59');
INSERT INTO `wp_yoast_indexable` VALUES (25,'http://localhost:10016/profile/','31:28c7f9ab536544520b9f868701d949cc',66,'post','page',1,0,NULL,NULL,'Profile','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,'2022-07-21 16:39:59','2022-07-21 18:26:39',1,NULL,NULL,NULL,NULL,0,0,2,'2022-07-21 17:09:35','2022-07-21 16:39:59');
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (2,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (6,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (7,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (8,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (9,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (10,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (11,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (12,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (13,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (14,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (15,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (16,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (19,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (20,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (21,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (22,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (23,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (24,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (25,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
INSERT INTO `wp_yoast_migrations` VALUES (23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'http://localhost:10016/wp-admin/',2,NULL,'internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (3,'http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8.png',39,40,'image-in',11,NULL,200,280,3746,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (5,'http://localhost:10016/wp-content/uploads/2022/07/CxDCGy8-1.png',29,45,'image-in',10,NULL,200,280,3746,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (6,'http://localhost:10016/profile/teste',66,NULL,'internal',25,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (7,'http://localhost:10016/account/',66,65,'internal',25,24,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (8,'http://localhost:10016/profile/teste/about',66,NULL,'internal',25,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (9,'http://1.gravatar.com/avatar/d1ca18cecaa470117672980092647dfe?s=128&#038;d=mm&#038;r=g',66,NULL,'image-ex',25,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23  1:51:56
