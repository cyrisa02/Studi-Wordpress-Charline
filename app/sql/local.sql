-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-04-08 12:56:41','2022-04-08 12:56:41','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_fea_submissions`
--

DROP TABLE IF EXISTS `wp_fea_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_fea_submissions` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user` int(11) NOT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_fea_submissions`
--

LOCK TABLES `wp_fea_submissions` WRITE;
/*!40000 ALTER TABLE `wp_fea_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_fea_submissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10013','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10013','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','studi-laporte','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:143:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"races/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"races/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"races/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"races/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"races/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"races/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"races/([^/]+)/embed/?$\";s:38:\"index.php?races=$matches[1]&embed=true\";s:26:\"races/([^/]+)/trackback/?$\";s:32:\"index.php?races=$matches[1]&tb=1\";s:34:\"races/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?races=$matches[1]&paged=$matches[2]\";s:41:\"races/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?races=$matches[1]&cpage=$matches[2]\";s:30:\"races/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?races=$matches[1]&page=$matches[2]\";s:22:\"races/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"races/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"races/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"races/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"races/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"races/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"tax_races_championschip/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?tax_races_championschip=$matches[1]&feed=$matches[2]\";s:59:\"tax_races_championschip/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?tax_races_championschip=$matches[1]&feed=$matches[2]\";s:40:\"tax_races_championschip/([^/]+)/embed/?$\";s:56:\"index.php?tax_races_championschip=$matches[1]&embed=true\";s:52:\"tax_races_championschip/([^/]+)/page/?([0-9]{1,})/?$\";s:63:\"index.php?tax_races_championschip=$matches[1]&paged=$matches[2]\";s:34:\"tax_races_championschip/([^/]+)/?$\";s:45:\"index.php?tax_races_championschip=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"tax_project_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tax_project_type=$matches[1]&feed=$matches[2]\";s:52:\"tax_project_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tax_project_type=$matches[1]&feed=$matches[2]\";s:33:\"tax_project_type/([^/]+)/embed/?$\";s:49:\"index.php?tax_project_type=$matches[1]&embed=true\";s:45:\"tax_project_type/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?tax_project_type=$matches[1]&paged=$matches[2]\";s:27:\"tax_project_type/([^/]+)/?$\";s:38:\"index.php?tax_project_type=$matches[1]\";s:60:\"tax_project_clients/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?tax_project_clients=$matches[1]&feed=$matches[2]\";s:55:\"tax_project_clients/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?tax_project_clients=$matches[1]&feed=$matches[2]\";s:36:\"tax_project_clients/([^/]+)/embed/?$\";s:52:\"index.php?tax_project_clients=$matches[1]&embed=true\";s:48:\"tax_project_clients/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?tax_project_clients=$matches[1]&paged=$matches[2]\";s:30:\"tax_project_clients/([^/]+)/?$\";s:41:\"index.php?tax_project_clients=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:1;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','studi','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','studi','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','51917','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
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
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','8','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','13','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1664974599','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','51917','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1651762603;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1651798603;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1651841802;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651842480;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651842481;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651928202;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','%-zW[{T+?(y.$sZP%Zn2j =(~sU,&fXqTYu!Mg^9.Fbqo6#p?r=q(s=gmJ}DB#rC','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','w[|-]*hiI~dHhv Q?t.B2iXXoP~9wx3o^Sjj$X/SFu-GFnUmev}-mb.V*%$Lc(ZP','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}','yes');
INSERT INTO `wp_options` VALUES (128,'auth_key','d(^JnX?&cU4J),o5l>>G0wlfDE<4G6h98{)[s>Kh22([)vG}Qcf^lQM3V=Im@qwX','no');
INSERT INTO `wp_options` VALUES (129,'auth_salt','$*F=P1t3?bJ_y0(q?sU0@X77F7LR]akcKoC*_<[<DRmcOcG t?8&mm|id.ASo1l,','no');
INSERT INTO `wp_options` VALUES (130,'logged_in_key','`!.#HM6/Dcv6(yfKOhPi|,Y.GNx8TxKbhnTm.YREa4_m OfC!|VwCj`P!;?*sFcy','no');
INSERT INTO `wp_options` VALUES (131,'logged_in_salt','HCbvfByBHrG&%+v%bx[R4+9[Yc=aVE]zAbk]O00?U])h3bpI=.qB7tc%Y]$k}^#Q','no');
INSERT INTO `wp_options` VALUES (139,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (154,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (157,'WPLANG','fr_FR','yes');
INSERT INTO `wp_options` VALUES (158,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (161,'recently_activated','a:2:{s:42:\"acf-frontend-form-element/acf-frontend.php\";i:1649424750;s:29:\"acf-extended/acf-extended.php\";i:1649424598;}','yes');
INSERT INTO `wp_options` VALUES (171,'auto_update_plugins','a:1:{i:0;s:29:\"acf-extended/acf-extended.php\";}','no');
INSERT INTO `wp_options` VALUES (176,'fs_active_plugins','O:8:\"stdClass\":0:{}','yes');
INSERT INTO `wp_options` VALUES (177,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (178,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:5212;a:3:{s:4:\"slug\";s:25:\"acf-frontend-form-element\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:42:\"acf-frontend-form-element/acf-frontend.php\";}}s:11:\"plugin_data\";a:1:{s:25:\"acf-frontend-form-element\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:42:\"acf-frontend-form-element/acf-frontend.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1649424651;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.4.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:15:\"localhost:10013\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1649424651;s:7:\"version\";s:5:\"3.4.1\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1649424662;s:7:\"version\";s:5:\"3.4.1\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"13\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:42:\"acf-frontend-form-element/acf-frontend.php\";s:25:\"acf-frontend-form-element\";}s:7:\"plugins\";a:1:{s:25:\"acf-frontend-form-element\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"ACF Frontend\";s:4:\"slug\";s:25:\"acf-frontend-form-element\";s:12:\"premium_slug\";s:29:\"acf-frontend-form-element-pro\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:42:\"acf-frontend-form-element/acf-frontend.php\";s:7:\"version\";s:5:\"3.4.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_771aff8259bcf0305b376eceb7637\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"5212\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"e6ad020a0b028404b85a9607e6515aa3\";s:13:\"admin_notices\";a:1:{s:25:\"acf-frontend-form-element\";a:0:{}}}','yes');
INSERT INTO `wp_options` VALUES (179,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (180,'fs_api_cache','a:0:{}','no');
INSERT INTO `wp_options` VALUES (187,'frontend_admin_hide_wp_dashboard','1','yes');
INSERT INTO `wp_options` VALUES (188,'frontend_admin_hide_by','a:1:{i:0;s:4:\"user\";}','yes');
INSERT INTO `wp_options` VALUES (189,'acf_version','5.12.2','yes');
INSERT INTO `wp_options` VALUES (202,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (218,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1649772858;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (224,'current_theme','Studi','yes');
INSERT INTO `wp_options` VALUES (225,'theme_mods_studi','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (226,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (227,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (229,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (299,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1651760022;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (300,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651760024;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.2\";}}','no');
INSERT INTO `wp_options` VALUES (301,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651760024;s:7:\"checked\";a:4:{s:5:\"studi\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (308,'category_children','a:1:{i:3;a:2:{i:0;i:4;i:1;i:5;}}','yes');
INSERT INTO `wp_options` VALUES (316,'tax_races_championschip_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (341,'tax_project_clients_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (471,'recovery_mode_email_last_sent','1651152539','yes');
INSERT INTO `wp_options` VALUES (481,'_site_transient_timeout_theme_roots','1651761823','no');
INSERT INTO `wp_options` VALUES (482,'_site_transient_theme_roots','a:4:{s:5:\"studi\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (483,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1652364827','no');
INSERT INTO `wp_options` VALUES (484,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1650978609:1');
INSERT INTO `wp_postmeta` VALUES (4,8,'_edit_lock','1650978913:1');
INSERT INTO `wp_postmeta` VALUES (5,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (6,3,'_wp_trash_meta_time','1649856715');
INSERT INTO `wp_postmeta` VALUES (7,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (9,2,'_wp_trash_meta_time','1649856717');
INSERT INTO `wp_postmeta` VALUES (10,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (11,12,'_wp_attached_file','2022/04/screenshot.png');
INSERT INTO `wp_postmeta` VALUES (12,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:381;s:6:\"height\";i:132;s:4:\"file\";s:22:\"2022/04/screenshot.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"screenshot-300x104.png\";s:5:\"width\";i:300;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-150x132.png\";s:5:\"width\";i:150;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (13,13,'_wp_attached_file','2022/04/cropped-screenshot.png');
INSERT INTO `wp_postmeta` VALUES (14,13,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (15,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2022/04/cropped-screenshot.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-screenshot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-screenshot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-screenshot-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-screenshot-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-screenshot-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-screenshot-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (16,14,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (17,14,'_wp_trash_meta_time','1649856966');
INSERT INTO `wp_postmeta` VALUES (18,15,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (19,15,'_wp_trash_meta_time','1649857087');
INSERT INTO `wp_postmeta` VALUES (20,16,'_edit_lock','1650531683:1');
INSERT INTO `wp_postmeta` VALUES (21,8,'_wp_page_template','tpl-home.php');
INSERT INTO `wp_postmeta` VALUES (22,5,'_wp_page_template','tpl-contact.php');
INSERT INTO `wp_postmeta` VALUES (23,18,'_edit_lock','1649859613:1');
INSERT INTO `wp_postmeta` VALUES (24,18,'_wp_page_template','tpl-subnav.php');
INSERT INTO `wp_postmeta` VALUES (25,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (26,21,'_edit_lock','1650463544:1');
INSERT INTO `wp_postmeta` VALUES (27,1,'_edit_lock','1650465785:1');
INSERT INTO `wp_postmeta` VALUES (30,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (31,26,'_edit_lock','1650981407:1');
INSERT INTO `wp_postmeta` VALUES (32,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (33,27,'_edit_lock','1650981512:1');
INSERT INTO `wp_postmeta` VALUES (34,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (35,29,'_edit_lock','1650981395:1');
INSERT INTO `wp_postmeta` VALUES (36,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (37,31,'_edit_lock','1650532997:1');
INSERT INTO `wp_postmeta` VALUES (38,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (39,35,'_edit_lock','1650616703:1');
INSERT INTO `wp_postmeta` VALUES (40,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (41,37,'_edit_lock','1650981419:1');
INSERT INTO `wp_postmeta` VALUES (42,37,'header_color','red: Rouge');
INSERT INTO `wp_postmeta` VALUES (43,37,'_header_color','field_62611d9c8d850');
INSERT INTO `wp_postmeta` VALUES (44,37,'image','');
INSERT INTO `wp_postmeta` VALUES (45,37,'_image','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (46,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (47,38,'_edit_lock','1650533449:1');
INSERT INTO `wp_postmeta` VALUES (48,38,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (49,38,'_wp_trash_meta_time','1650533490');
INSERT INTO `wp_postmeta` VALUES (50,38,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (51,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (52,42,'_edit_lock','1650981479:1');
INSERT INTO `wp_postmeta` VALUES (53,42,'texte','');
INSERT INTO `wp_postmeta` VALUES (54,42,'_texte','field_626125d897de2');
INSERT INTO `wp_postmeta` VALUES (55,42,'image','');
INSERT INTO `wp_postmeta` VALUES (56,42,'_image','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (57,27,'image','');
INSERT INTO `wp_postmeta` VALUES (58,27,'_image','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (59,26,'cover','12');
INSERT INTO `wp_postmeta` VALUES (60,26,'_cover','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (61,26,'introduction','Mon introduction de page modifier l\'url');
INSERT INTO `wp_postmeta` VALUES (62,26,'_introduction','field_6261616dbb60b');
INSERT INTO `wp_postmeta` VALUES (63,26,'show_button','1');
INSERT INTO `wp_postmeta` VALUES (64,26,'_show_button','field_62616ba8ef588');
INSERT INTO `wp_postmeta` VALUES (65,47,'_wp_attached_file','2022/04/IMG_1808-e1650619868985.jpg');
INSERT INTO `wp_postmeta` VALUES (66,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:150;s:6:\"height\";i:113;s:4:\"file\";s:35:\"2022/04/IMG_1808-e1650619868985.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_1808-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_1808-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_1808-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_1808-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_1808-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon IXUS 160\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1650383490\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:6:\"14.852\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (67,27,'cover','47');
INSERT INTO `wp_postmeta` VALUES (68,27,'_cover','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (69,27,'introduction','Guépard');
INSERT INTO `wp_postmeta` VALUES (70,27,'_introduction','field_6261616dbb60b');
INSERT INTO `wp_postmeta` VALUES (71,27,'show_button','1');
INSERT INTO `wp_postmeta` VALUES (72,27,'_show_button','field_62616ba8ef588');
INSERT INTO `wp_postmeta` VALUES (73,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (74,48,'_edit_lock','1650633491:1');
INSERT INTO `wp_postmeta` VALUES (75,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (76,8,'cover','79');
INSERT INTO `wp_postmeta` VALUES (77,8,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (78,8,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (79,8,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (80,8,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (81,8,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (82,52,'cover','47');
INSERT INTO `wp_postmeta` VALUES (83,52,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (84,52,'chiffre','');
INSERT INTO `wp_postmeta` VALUES (85,52,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (86,52,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (87,52,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (88,53,'cover','47');
INSERT INTO `wp_postmeta` VALUES (89,53,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (90,53,'chiffre','');
INSERT INTO `wp_postmeta` VALUES (91,53,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (92,53,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (93,53,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (94,55,'cover','47');
INSERT INTO `wp_postmeta` VALUES (95,55,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (96,55,'chiffre','');
INSERT INTO `wp_postmeta` VALUES (97,55,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (98,55,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (99,55,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (100,57,'cover','47');
INSERT INTO `wp_postmeta` VALUES (101,57,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (102,57,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (103,57,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (104,57,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (105,57,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (112,47,'_wp_attachment_image_alt','Texte de présentation');
INSERT INTO `wp_postmeta` VALUES (113,47,'_wp_attachment_backup_sizes','a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:12:\"IMG_1808.jpg\";}}');
INSERT INTO `wp_postmeta` VALUES (114,8,'text_about','C\'est Cyril!!!!\r\norem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (115,8,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (116,8,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (117,8,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (118,63,'cover','47');
INSERT INTO `wp_postmeta` VALUES (119,63,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (120,63,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (121,63,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (122,63,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (123,63,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (124,63,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (125,63,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (126,63,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (127,63,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (128,64,'cover','47');
INSERT INTO `wp_postmeta` VALUES (129,64,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (130,64,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (131,64,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (132,64,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (133,64,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (134,64,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (135,64,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (136,64,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (137,64,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (138,65,'cover','47');
INSERT INTO `wp_postmeta` VALUES (139,65,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (140,65,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (141,65,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (142,65,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (143,65,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (144,65,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (145,65,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (146,65,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (147,65,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (148,8,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (149,8,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (150,8,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (151,8,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (152,69,'cover','47');
INSERT INTO `wp_postmeta` VALUES (153,69,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (154,69,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (155,69,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (156,69,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (157,69,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (158,69,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (159,69,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (160,69,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (161,69,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (162,69,'text_project','');
INSERT INTO `wp_postmeta` VALUES (163,69,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (164,69,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (165,69,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (166,70,'cover','47');
INSERT INTO `wp_postmeta` VALUES (167,70,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (168,70,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (169,70,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (170,70,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (171,70,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (172,70,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (173,70,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (174,70,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (175,70,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (176,70,'text_project','');
INSERT INTO `wp_postmeta` VALUES (177,70,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (178,70,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (179,70,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (180,71,'cover','47');
INSERT INTO `wp_postmeta` VALUES (181,71,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (182,71,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (183,71,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (184,71,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (185,71,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (186,71,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (187,71,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (188,71,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (189,71,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (190,71,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (191,71,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (192,71,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (193,71,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (194,72,'cover','47');
INSERT INTO `wp_postmeta` VALUES (195,72,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (196,72,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (197,72,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (198,72,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (199,72,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (200,72,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (201,72,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (202,72,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (203,72,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (204,72,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (205,72,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (206,72,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (207,72,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (208,73,'cover','47');
INSERT INTO `wp_postmeta` VALUES (209,73,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (210,73,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (211,73,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (212,73,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (213,73,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (214,73,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (215,73,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (216,73,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (217,73,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (218,73,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (219,73,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (220,73,'projects','a:3:{i:0;s:2:\"27\";i:1;s:2:\"37\";i:2;s:2:\"26\";}');
INSERT INTO `wp_postmeta` VALUES (221,73,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (222,8,'text_projects','Je m\'appelle Alice\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (223,8,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (224,74,'cover','47');
INSERT INTO `wp_postmeta` VALUES (225,74,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (226,74,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (227,74,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (228,74,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (229,74,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (230,74,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (231,74,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (232,74,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (233,74,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (234,74,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (235,74,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (236,74,'projects','a:3:{i:0;s:2:\"27\";i:1;s:2:\"37\";i:2;s:2:\"26\";}');
INSERT INTO `wp_postmeta` VALUES (237,74,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (238,74,'text_projects','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (239,74,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (240,75,'cover','47');
INSERT INTO `wp_postmeta` VALUES (241,75,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (242,75,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (243,75,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (244,75,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (245,75,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (246,75,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (247,75,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (248,75,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (249,75,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (250,75,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (251,75,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (252,75,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (253,75,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (254,75,'text_projects','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (255,75,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (256,37,'cover','12');
INSERT INTO `wp_postmeta` VALUES (257,37,'_cover','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (258,37,'introduction','Mon introduction de page');
INSERT INTO `wp_postmeta` VALUES (259,37,'_introduction','field_6261616dbb60b');
INSERT INTO `wp_postmeta` VALUES (260,37,'show_button','0');
INSERT INTO `wp_postmeta` VALUES (261,37,'_show_button','field_62616ba8ef588');
INSERT INTO `wp_postmeta` VALUES (262,77,'cover','47');
INSERT INTO `wp_postmeta` VALUES (263,77,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (264,77,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (265,77,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (266,77,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (267,77,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (268,77,'text_about','orem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (269,77,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (270,77,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (271,77,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (272,77,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (273,77,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (274,77,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (275,77,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (276,77,'text_projects','Je m\'appelle Alice\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (277,77,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (278,78,'cover','47');
INSERT INTO `wp_postmeta` VALUES (279,78,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (280,78,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (281,78,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (282,78,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (283,78,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (284,78,'text_about','C\'est Cyril!!!!\r\norem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (285,78,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (286,78,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (287,78,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (288,78,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (289,78,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (290,78,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (291,78,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (292,78,'text_projects','Je m\'appelle Alice\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (293,78,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (294,79,'_wp_attached_file','2022/04/IMG_1792-e1650704337420.jpg');
INSERT INTO `wp_postmeta` VALUES (295,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:150;s:6:\"height\";i:113;s:4:\"file\";s:35:\"2022/04/IMG_1792-e1650704337420.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_1792-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_1792-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_1792-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_1792-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_1792-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon IXUS 160\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1650374547\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:6:\"29.595\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (296,80,'cover','79');
INSERT INTO `wp_postmeta` VALUES (297,80,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (298,80,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (299,80,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (300,80,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (301,80,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (302,80,'text_about','C\'est Cyril!!!!\r\norem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (303,80,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (304,80,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (305,80,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (306,80,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (307,80,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (308,80,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (309,80,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (310,80,'text_projects','Je m\'appelle Alice\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (311,80,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (312,79,'_wp_attachment_backup_sizes','a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:12:\"IMG_1792.jpg\";}}');
INSERT INTO `wp_postmeta` VALUES (313,81,'cover','79');
INSERT INTO `wp_postmeta` VALUES (314,81,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (315,81,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (316,81,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (317,81,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (318,81,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (319,81,'text_about','C\'est Cyril!!!!\r\norem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (320,81,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (321,81,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (322,81,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (323,81,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (324,81,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (325,81,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (326,81,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (327,81,'text_projects','Je m\'appelle Alice\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (328,81,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (329,82,'cover','79');
INSERT INTO `wp_postmeta` VALUES (330,82,'_cover','field_62626a30abe6a');
INSERT INTO `wp_postmeta` VALUES (331,82,'chiffre','3');
INSERT INTO `wp_postmeta` VALUES (332,82,'_chiffre','field_62626a50abe6b');
INSERT INTO `wp_postmeta` VALUES (333,82,'intro','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n\r\n\r\n');
INSERT INTO `wp_postmeta` VALUES (334,82,'_intro','field_62626a65abe6c');
INSERT INTO `wp_postmeta` VALUES (335,82,'text_about','C\'est Cyril!!!!\r\norem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type \r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (336,82,'_text_about','field_62628c3cb4939');
INSERT INTO `wp_postmeta` VALUES (337,82,'link','a:3:{s:5:\"title\";s:10:\"Traduction\";s:3:\"url\";s:178:\"https://www.google.com/search?q=traducteur+anglais+francais&oq=traducteur&aqs=chrome.2.69i57j0i433i512l2j0i131i433i512l2j0i512j0i433i512l3j0i512.3594j0j7&sourceid=chrome&ie=UTF-8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (338,82,'_link','field_62628cdcb493a');
INSERT INTO `wp_postmeta` VALUES (339,82,'text_project','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (340,82,'_text_project','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (341,82,'projects','a:2:{i:0;s:2:\"27\";i:1;s:2:\"37\";}');
INSERT INTO `wp_postmeta` VALUES (342,82,'_projects','field_6262a6b5ad61b');
INSERT INTO `wp_postmeta` VALUES (343,82,'text_projects','Je m\'appelle Alice\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n\r\nspecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 196');
INSERT INTO `wp_postmeta` VALUES (344,82,'_text_projects','field_6262a676ad61a');
INSERT INTO `wp_postmeta` VALUES (345,84,'_edit_lock','1650980585:1');
INSERT INTO `wp_postmeta` VALUES (346,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (347,84,'_wp_page_template','tpl-projects.php');
INSERT INTO `wp_postmeta` VALUES (348,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (349,87,'_edit_lock','1651152995:1');
INSERT INTO `wp_postmeta` VALUES (350,84,'intro','qsdqsdsqf');
INSERT INTO `wp_postmeta` VALUES (351,84,'_intro','field_6267f2cc490c3');
INSERT INTO `wp_postmeta` VALUES (352,84,'nombre_de_projets_a_afficher','1');
INSERT INTO `wp_postmeta` VALUES (353,84,'_nombre_de_projets_a_afficher','field_6267f5ac8674d');
INSERT INTO `wp_postmeta` VALUES (354,90,'intro','qsdqsdsqf');
INSERT INTO `wp_postmeta` VALUES (355,90,'_intro','field_6267f2cc490c3');
INSERT INTO `wp_postmeta` VALUES (356,90,'nombre_de_projets_a_afficher','1');
INSERT INTO `wp_postmeta` VALUES (357,90,'_nombre_de_projets_a_afficher','field_6267f5ac8674d');
INSERT INTO `wp_postmeta` VALUES (358,27,'state','online: En ligne');
INSERT INTO `wp_postmeta` VALUES (359,27,'_state','field_6267f88d6eb0f');
INSERT INTO `wp_postmeta` VALUES (360,37,'state','private: En local');
INSERT INTO `wp_postmeta` VALUES (361,37,'_state','field_6267f88d6eb0f');
INSERT INTO `wp_postmeta` VALUES (362,42,'cover','');
INSERT INTO `wp_postmeta` VALUES (363,42,'_cover','field_62601d35075a9');
INSERT INTO `wp_postmeta` VALUES (364,42,'introduction','');
INSERT INTO `wp_postmeta` VALUES (365,42,'_introduction','field_6261616dbb60b');
INSERT INTO `wp_postmeta` VALUES (366,42,'show_button','0');
INSERT INTO `wp_postmeta` VALUES (367,42,'_show_button','field_62616ba8ef588');
INSERT INTO `wp_postmeta` VALUES (368,42,'state','online: En ligne');
INSERT INTO `wp_postmeta` VALUES (369,42,'_state','field_6267f88d6eb0f');
INSERT INTO `wp_postmeta` VALUES (370,26,'state','online: En ligne');
INSERT INTO `wp_postmeta` VALUES (371,26,'_state','field_6267f88d6eb0f');
INSERT INTO `wp_postmeta` VALUES (372,94,'_edit_lock','1651154171:1');
INSERT INTO `wp_postmeta` VALUES (373,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (374,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (375,96,'_edit_lock','1651154152:1');
INSERT INTO `wp_postmeta` VALUES (376,94,'_wp_page_template','tpl-empty.php');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-04-08 12:56:41','2022-04-08 12:56:41','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-04-20 12:44:49','2022-04-20 12:44:49','',0,'http://localhost:10013/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-04-08 12:56:41','2022-04-08 12:56:41','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10013/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-04-13 13:31:57','2022-04-13 13:31:57','',0,'http://localhost:10013/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-04-08 12:56:41','2022-04-08 12:56:41','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10013.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2022-04-13 13:31:55','2022-04-13 13:31:55','',0,'http://localhost:10013/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-04-13 13:26:17','2022-04-13 13:26:17','','Contact','','publish','closed','closed','','contact','','','2022-04-13 14:06:21','2022-04-13 14:06:21','',0,'http://localhost:10013/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-04-13 13:25:41','2022-04-13 13:25:41','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-studi','','','2022-04-13 13:25:41','2022-04-13 13:25:41','',0,'http://localhost:10013/wp-global-styles-studi/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-04-13 13:26:17','2022-04-13 13:26:17','','Contact','','inherit','closed','closed','','5-revision-v1','','','2022-04-13 13:26:17','2022-04-13 13:26:17','',5,'http://localhost:10013/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-04-13 13:31:46','2022-04-13 13:31:46','','Accueil','','publish','closed','closed','','accueil','','','2022-04-23 09:06:01','2022-04-23 09:06:01','',0,'http://localhost:10013/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-04-13 13:31:46','2022-04-13 13:31:46','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-13 13:31:46','2022-04-13 13:31:46','',8,'http://localhost:10013/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-04-13 13:31:55','2022-04-13 13:31:55','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10013.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-04-13 13:31:55','2022-04-13 13:31:55','',3,'http://localhost:10013/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-04-13 13:31:57','2022-04-13 13:31:57','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10013/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-04-13 13:31:57','2022-04-13 13:31:57','',2,'http://localhost:10013/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-04-13 13:35:18','2022-04-13 13:35:18','','screenshot','','inherit','open','closed','','screenshot','','','2022-04-21 13:53:15','2022-04-21 13:53:15','',26,'http://localhost:10013/wp-content/uploads/2022/04/screenshot.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-04-13 13:35:45','2022-04-13 13:35:45','http://localhost:10013/wp-content/uploads/2022/04/cropped-screenshot.png','cropped-screenshot.png','','inherit','open','closed','','cropped-screenshot-png','','','2022-04-13 13:35:45','2022-04-13 13:35:45','',0,'http://localhost:10013/wp-content/uploads/2022/04/cropped-screenshot.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-04-13 13:36:05','2022-04-13 13:36:05','{\n    \"site_icon\": {\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-13 13:36:05\"\n    }\n}','','','trash','closed','closed','','958c57ee-d915-413e-af88-c31c2cdac681','','','2022-04-13 13:36:05','2022-04-13 13:36:05','',0,'http://localhost:10013/958c57ee-d915-413e-af88-c31c2cdac681/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-04-13 13:38:07','2022-04-13 13:38:07','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-13 13:38:07\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-04-13 13:38:07\"\n    }\n}','','','trash','closed','closed','','e73b1e23-024b-4bcc-a8f6-803beead1a64','','','2022-04-13 13:38:07','2022-04-13 13:38:07','',0,'http://localhost:10013/e73b1e23-024b-4bcc-a8f6-803beead1a64/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-04-13 13:40:03','2022-04-13 13:40:03','','A propos','','publish','closed','closed','','a-propos','','','2022-04-13 13:40:03','2022-04-13 13:40:03','',0,'http://localhost:10013/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-04-13 13:40:03','2022-04-13 13:40:03','','A propos','','inherit','closed','closed','','16-revision-v1','','','2022-04-13 13:40:03','2022-04-13 13:40:03','',16,'http://localhost:10013/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-04-13 14:15:21','2022-04-13 14:15:21','','Page A','','publish','closed','closed','','page-a','','','2022-04-13 14:15:21','2022-04-13 14:15:21','',0,'http://localhost:10013/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-04-13 14:15:21','2022-04-13 14:15:21','','Page A','','inherit','closed','closed','','18-revision-v1','','','2022-04-13 14:15:21','2022-04-13 14:15:21','',18,'http://localhost:10013/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-04-14 14:13:47','2022-04-14 14:13:47','','GP numéro 1','','publish','closed','closed','','gp-numero-1','','','2022-04-14 14:13:53','2022-04-14 14:13:53','',0,'http://localhost:10013/?post_type=races&#038;p=21',0,'races','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-04-20 12:44:49','2022-04-20 12:44:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2022-04-20 12:44:49','2022-04-20 12:44:49','',1,'http://localhost:10013/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-04-20 14:17:38','2022-04-20 14:17:38','','Projet #1','','publish','closed','closed','','projet-1','','','2022-04-26 13:59:05','2022-04-26 13:59:05','',0,'http://localhost:10013/?post_type=project&#038;p=26',0,'project','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-04-20 14:17:50','2022-04-20 14:17:50','<h1>WISIWYG</h1>\r\nWhat You See Is What You Get\r\n\r\n&nbsp;','Projet #2','','publish','closed','closed','','projet-2','','','2022-04-26 14:00:52','2022-04-26 14:00:52','',0,'http://localhost:10013/?post_type=project&#038;p=27',0,'project','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-04-20 14:48:48','2022-04-20 14:48:48','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Groupe de champs - Projet','groupe-de-champs-projet','publish','closed','closed','','group_62601d259aa0c','','','2022-04-26 13:53:05','2022-04-26 13:53:05','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=29',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-04-20 14:48:48','2022-04-20 14:48:48','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image de couverture','cover','publish','closed','closed','','field_62601d35075a9','','','2022-04-21 14:00:26','2022-04-21 14:00:26','',29,'http://localhost:10013/?post_type=acf-field&#038;p=30',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-04-21 07:38:10','2022-04-21 07:38:10','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"tax_project_clients\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Groupe de champs -Taxo client','groupe-de-champs-taxo-client','publish','closed','closed','','group_626108cbaad46','','','2022-04-21 07:49:47','2022-04-21 07:49:47','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=31',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-04-21 07:38:10','2022-04-21 07:38:10','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Logo','logo','publish','closed','closed','','field_6261092c5caea','','','2022-04-21 07:38:10','2022-04-21 07:38:10','',31,'http://localhost:10013/?post_type=acf-field&p=32',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-04-21 07:49:47','2022-04-21 07:49:47','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Site internet','site_internet','publish','closed','closed','','field_62610c5cecc8b','','','2022-04-21 07:49:47','2022-04-21 07:49:47','',31,'http://localhost:10013/?post_type=acf-field&p=33',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-04-21 09:03:26','2022-04-21 09:03:26','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Groupe de champs - Menu','groupe-de-champs-menu','publish','closed','closed','','group_62611d8c77edb','','','2022-04-21 13:39:51','2022-04-21 13:39:51','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=35',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-04-21 09:03:26','2022-04-21 09:03:26','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_626125d897de2\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:12:\"white: Blanc\";s:12:\"white: Blanc\";s:24:\"transparent: Transparent\";s:24:\"transparent: Transparent\";s:10:\"red: Rouge\";s:10:\"red: Rouge\";s:5:\"black\";s:5:\"black\";}s:13:\"default_value\";s:5:\"black\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Couleur de mon header','header_color','publish','closed','closed','','field_62611d9c8d850','','','2022-04-21 09:42:07','2022-04-21 09:42:07','',35,'http://localhost:10013/?post_type=acf-field&#038;p=36',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-04-21 09:29:23','2022-04-21 09:29:23','','Projet #3','','publish','closed','closed','','projet-3','','','2022-04-26 13:53:37','2022-04-26 13:53:37','',0,'http://localhost:10013/?post_type=project&#038;p=37',0,'project','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-04-21 09:31:30','2022-04-21 09:31:30','','Projet #4','','trash','closed','closed','','__trashed','','','2022-04-21 09:31:30','2022-04-21 09:31:30','',0,'http://localhost:10013/?post_type=project&#038;p=38',0,'project','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-04-21 09:38:26','2022-04-21 09:38:26','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_62611d9c8d850\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"black\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Champs à afficher si couleur header transparent','texte','publish','closed','closed','','field_626125d897de2','','','2022-04-21 13:39:51','2022-04-21 13:39:51','',35,'http://localhost:10013/?post_type=acf-field&#038;p=41',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-04-21 09:43:00','2022-04-21 09:43:00','','Projet #5','','publish','closed','closed','','projet-5','','','2022-04-26 14:00:06','2022-04-26 14:00:06','',0,'http://localhost:10013/?post_type=project&#038;p=42',0,'project','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-04-21 13:51:56','2022-04-21 13:51:56','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Introduction','introduction','publish','closed','closed','','field_6261616dbb60b','','','2022-04-21 13:51:56','2022-04-21 13:51:56','',29,'http://localhost:10013/?post_type=acf-field&p=44',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-04-21 14:36:45','2022-04-21 14:36:45','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:84:\"Cochez cette case si vous souhaitez afficher un bouton \"Retour à la page d\'accueil\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','Afficher un lien vers la page d\'accueil','show_button','publish','closed','closed','','field_62616ba8ef588','','','2022-04-21 14:36:45','2022-04-21 14:36:45','',29,'http://localhost:10013/?post_type=acf-field&p=46',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-04-21 15:03:13','2022-04-21 15:03:13','','IMG_1808','','inherit','open','closed','','img_1808','','','2022-04-22 09:30:59','2022-04-22 09:30:59','',27,'http://localhost:10013/wp-content/uploads/2022/04/IMG_1808.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-04-22 08:42:26','2022-04-22 08:42:26','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"tpl-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Groupe de champs - Accueil','groupe-de-champs-accueil','publish','closed','closed','','group_62626a1a6a30b','','','2022-04-22 13:18:11','2022-04-22 13:18:11','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=48',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-04-22 08:42:26','2022-04-22 08:42:26','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image de couverture','cover','publish','closed','closed','','field_62626a30abe6a','','','2022-04-22 11:16:15','2022-04-22 11:16:15','',48,'http://localhost:10013/?post_type=acf-field&#038;p=49',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-04-22 08:42:26','2022-04-22 08:42:26','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}','Texte introduction','intro','publish','closed','closed','','field_62626a65abe6c','','','2022-04-22 11:16:15','2022-04-22 11:16:15','',48,'http://localhost:10013/?post_type=acf-field&#038;p=51',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-04-22 08:57:53','2022-04-22 08:57:53','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 08:57:53','2022-04-22 08:57:53','',8,'http://localhost:10013/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-04-22 08:57:58','2022-04-22 08:57:58','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 08:57:58','2022-04-22 08:57:58','',8,'http://localhost:10013/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-04-22 09:05:12','2022-04-22 09:05:12','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 09:05:12','2022-04-22 09:05:12','',8,'http://localhost:10013/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-04-22 09:10:02','2022-04-22 09:10:02','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 09:10:02','2022-04-22 09:10:02','',8,'http://localhost:10013/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-04-22 11:11:28','2022-04-22 11:11:28','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:2:\"br\";}','Texte à propos','text_about','publish','closed','closed','','field_62628c3cb4939','','','2022-04-22 11:17:29','2022-04-22 11:17:29','',48,'http://localhost:10013/?post_type=acf-field&#038;p=59',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-04-22 11:11:28','2022-04-22 11:11:28','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}','Lien','link','publish','closed','closed','','field_62628cdcb493a','','','2022-04-22 11:17:29','2022-04-22 11:17:29','',48,'http://localhost:10013/?post_type=acf-field&#038;p=60',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-04-22 11:15:53','2022-04-22 11:15:53','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Couverture','','publish','closed','closed','','field_62628e2826dd8','','','2022-04-22 11:16:15','2022-04-22 11:16:15','',48,'http://localhost:10013/?post_type=acf-field&#038;p=61',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-04-22 11:17:10','2022-04-22 11:17:10','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','A propos','a_propos','publish','closed','closed','','field_62628e9ffbaab','','','2022-04-22 11:17:29','2022-04-22 11:17:29','',48,'http://localhost:10013/?post_type=acf-field&#038;p=62',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-04-22 11:23:49','2022-04-22 11:23:49','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 11:23:49','2022-04-22 11:23:49','',8,'http://localhost:10013/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-04-22 11:24:50','2022-04-22 11:24:50','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 11:24:50','2022-04-22 11:24:50','',8,'http://localhost:10013/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-04-22 11:52:02','2022-04-22 11:52:02','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 11:52:02','2022-04-22 11:52:02','',8,'http://localhost:10013/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-04-22 13:00:34','2022-04-22 13:00:34','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Projets','projets','publish','closed','closed','','field_62629877ad619','','','2022-04-22 13:00:34','2022-04-22 13:00:34','',48,'http://localhost:10013/?post_type=acf-field&p=66',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-04-22 13:00:34','2022-04-22 13:00:34','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:2:\"br\";}','Texte introduction','text_projects','publish','closed','closed','','field_6262a676ad61a','','','2022-04-22 13:10:57','2022-04-22 13:10:57','',48,'http://localhost:10013/?post_type=acf-field&#038;p=67',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-04-22 13:00:34','2022-04-22 13:00:34','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"project\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:2:\"id\";}','Projets à afficher','projects','publish','closed','closed','','field_6262a6b5ad61b','','','2022-04-22 13:18:11','2022-04-22 13:18:11','',48,'http://localhost:10013/?post_type=acf-field&#038;p=68',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-04-22 13:06:01','2022-04-22 13:06:01','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:06:01','2022-04-22 13:06:01','',8,'http://localhost:10013/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-04-22 13:09:20','2022-04-22 13:09:20','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:09:20','2022-04-22 13:09:20','',8,'http://localhost:10013/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-04-22 13:09:56','2022-04-22 13:09:56','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:09:56','2022-04-22 13:09:56','',8,'http://localhost:10013/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2022-04-22 13:10:08','2022-04-22 13:10:08','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:10:08','2022-04-22 13:10:08','',8,'http://localhost:10013/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2022-04-22 13:10:32','2022-04-22 13:10:32','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:10:32','2022-04-22 13:10:32','',8,'http://localhost:10013/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-04-22 13:11:35','2022-04-22 13:11:35','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:11:35','2022-04-22 13:11:35','',8,'http://localhost:10013/?p=74',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-04-22 13:13:44','2022-04-22 13:13:44','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-22 13:13:44','2022-04-22 13:13:44','',8,'http://localhost:10013/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-04-23 08:57:35','2022-04-23 08:57:35','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-23 08:57:35','2022-04-23 08:57:35','',8,'http://localhost:10013/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-04-23 08:57:56','2022-04-23 08:57:56','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-23 08:57:56','2022-04-23 08:57:56','',8,'http://localhost:10013/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-04-23 08:58:18','2022-04-23 08:58:18','','IMG_1792','','inherit','open','closed','','img_1792','','','2022-04-23 08:58:18','2022-04-23 08:58:18','',8,'http://localhost:10013/wp-content/uploads/2022/04/IMG_1792.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-04-23 08:58:24','2022-04-23 08:58:24','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-23 08:58:24','2022-04-23 08:58:24','',8,'http://localhost:10013/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-04-23 08:59:52','2022-04-23 08:59:52','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-23 08:59:52','2022-04-23 08:59:52','',8,'http://localhost:10013/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-04-23 09:06:01','2022-04-23 09:06:01','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2022-04-23 09:06:01','2022-04-23 09:06:01','',8,'http://localhost:10013/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-04-26 13:12:43','2022-04-26 13:12:43','','Accueil','','inherit','closed','closed','','8-autosave-v1','','','2022-04-26 13:12:43','2022-04-26 13:12:43','',8,'http://localhost:10013/?p=83',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-04-26 13:15:55','2022-04-26 13:15:55','','Projets','','publish','closed','closed','','projets','','','2022-04-26 13:43:04','2022-04-26 13:43:04','',0,'http://localhost:10013/?page_id=84',0,'page','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-04-26 13:15:55','2022-04-26 13:15:55','','Projets','','inherit','closed','closed','','84-revision-v1','','','2022-04-26 13:15:55','2022-04-26 13:15:55','',84,'http://localhost:10013/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-04-26 13:37:05','2022-04-26 13:37:05','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"tpl-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Groupe de champs - Pages Projets','groupe-de-champs-pages-projets','publish','closed','closed','','group_6267f2b148479','','','2022-04-26 13:42:46','2022-04-26 13:42:46','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-04-26 13:37:05','2022-04-26 13:37:05','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texte introduction','intro','publish','closed','closed','','field_6267f2cc490c3','','','2022-04-26 13:37:05','2022-04-26 13:37:05','',87,'http://localhost:10013/?post_type=acf-field&p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-04-26 13:38:30','2022-04-26 13:38:30','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:20;s:4:\"step\";i:1;}','Nombre de projets à afficher','nombre_de_projets_a_afficher','publish','closed','closed','','field_6267f5ac8674d','','','2022-04-26 13:38:30','2022-04-26 13:38:30','',87,'http://localhost:10013/?post_type=acf-field&p=89',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-04-26 13:43:04','2022-04-26 13:43:04','','Projets','','inherit','closed','closed','','84-revision-v1','','','2022-04-26 13:43:04','2022-04-26 13:43:04','',84,'http://localhost:10013/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-04-26 13:43:08','2022-04-26 13:43:08','','Projets','','inherit','closed','closed','','84-autosave-v1','','','2022-04-26 13:43:08','2022-04-26 13:43:08','',84,'http://localhost:10013/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-04-26 13:53:05','2022-04-26 13:53:05','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:16:\"online: En ligne\";s:16:\"online: En ligne\";s:30:\"development: En développement\";s:30:\"development: En développement\";s:17:\"private: En local\";s:17:\"private: En local\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Etat','state','publish','closed','closed','','field_6267f88d6eb0f','','','2022-04-26 13:53:05','2022-04-26 13:53:05','',29,'http://localhost:10013/?post_type=acf-field&p=92',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2022-04-28 13:39:36','2022-04-28 13:39:36','','Informations générales','','publish','closed','closed','','informations-generales','','','2022-04-28 13:57:25','2022-04-28 13:57:25','',0,'http://localhost:10013/?page_id=94',0,'page','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-04-28 13:39:36','2022-04-28 13:39:36','','Informations générales','','inherit','closed','closed','','94-revision-v1','','','2022-04-28 13:39:36','2022-04-28 13:39:36','',94,'http://localhost:10013/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"tpl-empty.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Groupe de champ - Informations générales','groupe-de-champ-informations-generales','publish','closed','closed','','group_626a99221d73a','','','2022-04-28 13:58:11','2022-04-28 13:58:11','',0,'http://localhost:10013/?post_type=acf-field-group&#038;p=96',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}','Réseaux Sociaux','reseaux_sociaux','publish','closed','closed','','field_626a99347ba72','','','2022-04-28 13:42:11','2022-04-28 13:42:11','',96,'http://localhost:10013/?post_type=acf-field&p=97',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Facebook','facebook','publish','closed','closed','','field_626a99527ba73','','','2022-04-28 13:42:11','2022-04-28 13:42:11','',96,'http://localhost:10013/?post_type=acf-field&p=98',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Twitter','twitter','publish','closed','closed','','field_626a99667ba74','','','2022-04-28 13:42:11','2022-04-28 13:42:11','',96,'http://localhost:10013/?post_type=acf-field&p=99',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Instagram','instagram','publish','closed','closed','','field_626a99777ba75','','','2022-04-28 13:42:11','2022-04-28 13:42:11','',96,'http://localhost:10013/?post_type=acf-field&p=100',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','LinkedIn','linkedin','publish','closed','closed','','field_626a99857ba76','','','2022-04-28 13:42:11','2022-04-28 13:42:11','',96,'http://localhost:10013/?post_type=acf-field&p=101',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2022-04-28 13:42:11','2022-04-28 13:42:11','a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}','Coordonnées','coordonnees','publish','closed','closed','','field_626a99977ba77','','','2022-04-28 13:42:11','2022-04-28 13:42:11','',96,'http://localhost:10013/?post_type=acf-field&p=102',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2022-04-28 13:42:40','2022-04-28 13:42:40','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Téléphone','telephone','publish','closed','closed','','field_626a99bbc7adb','','','2022-04-28 13:42:40','2022-04-28 13:42:40','',96,'http://localhost:10013/?post_type=acf-field&p=103',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2022-04-28 13:43:12','2022-04-28 13:43:12','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Email','email','publish','closed','closed','','field_626a99d6e4dbe','','','2022-04-28 13:43:12','2022-04-28 13:43:12','',96,'http://localhost:10013/?post_type=acf-field&p=104',7,'acf-field','',0);
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
INSERT INTO `wp_term_relationships` VALUES (1,3,0);
INSERT INTO `wp_term_relationships` VALUES (1,4,0);
INSERT INTO `wp_term_relationships` VALUES (1,5,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',3,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',3,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'tax_races_championschip','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'tax_races_championschip','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'tax_project_clients','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'tax_project_clients','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,8,'logo','');
INSERT INTO `wp_termmeta` VALUES (2,8,'_logo','field_6261092c5caea');
INSERT INTO `wp_termmeta` VALUES (3,9,'logo','');
INSERT INTO `wp_termmeta` VALUES (4,9,'_logo','field_6261092c5caea');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'studi','studi',0);
INSERT INTO `wp_terms` VALUES (3,'Médias','medias',0);
INSERT INTO `wp_terms` VALUES (4,'Images','images',0);
INSERT INTO `wp_terms` VALUES (5,'Vidéos','videos',0);
INSERT INTO `wp_terms` VALUES (6,'Année 2022','2022',0);
INSERT INTO `wp_terms` VALUES (7,'Année 2021','2021',0);
INSERT INTO `wp_terms` VALUES (8,'Client A','client-a',0);
INSERT INTO `wp_terms` VALUES (9,'Client B','client-b',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','laporte');
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
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','93');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse&mfold=o&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1650982698');
INSERT INTO `wp_usermeta` VALUES (21,1,'meta-box-order_project','a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_62601d259aa0c\";s:4:\"side\";s:53:\"submitdiv,tax_project_typediv,acf-group_62611d8c77edb\";s:6:\"normal\";s:30:\"tax_project_clientsdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'screen_layout_project','2');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_project','a:1:{i:0;s:23:\"acf-group_62611d8c77edb\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_project','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_page','a:1:{i:0;s:23:\"acf-group_62611d8c77edb\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_page','a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:23:\"acf-group_62611d8c77edb\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'laporte','$P$BQU37WwtOc7jKGFZktzt.LX99ZXm1r.','laporte','dev-email@flywheel.local','http://localhost:10013','2022-04-08 12:56:41','',0,'laporte');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05 16:20:09
