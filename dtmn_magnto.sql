-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 01:24 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtmn_magnto`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) UNSIGNED NOT NULL COMMENT 'Notification id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

-- --------------------------------------------------------

--
-- Table structure for table `admin_passwords`
--

CREATE TABLE `admin_passwords` (
  `password_id` int(10) UNSIGNED NOT NULL COMMENT 'Password Id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Deprecated',
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Last Updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Dumping data for table `admin_passwords`
--

INSERT INTO `admin_passwords` (`password_id`, `user_id`, `password_hash`, `expires`, `last_updated`) VALUES
(2, 2, '09edd2d35bbb1e85b33fd6ba199ad0c081ccdfd47a439d505016898cb2c7aae6:K4TCZW5n7c1fXVx3KjnpFFpxeJgPDJYU:1', 0, 1524652890),
(3, 3, 'd6825a41964ea533db113aeac9f119dde41cd80d814c190a4d07dd0ee2306eec:HnK8LhtVM6DEGXWWJGYej0tLuNxdtlBN:1', 0, 1524653083),
(4, 3, '2dc668832d8012e8e406d2a544b5af6e8a6064aae3b76f8cea51fa3422d696f4:QZeUCB30qBPjhs2SZnYK6QRSDXYcRPYt:1', 0, 1524653152),
(5, 3, '6b6daa7947f9612fa729f7608a7759baca3165557d7dbd1d3817d7baf10ffe80:U58NvmVJ57zKJDOfEIyP4NnvUQzBh8tE:1', 0, 1524653249);

-- --------------------------------------------------------

--
-- Table structure for table `admin_system_messages`
--

CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Dumping data for table `admin_system_messages`
--

INSERT INTO `admin_system_messages` (`identity`, `severity`, `created_at`) VALUES
('3c5a51dbe9feac32c1f6eef4200f26a0', 1, '2018-05-16 11:17:15'),
('b5b5de0a0651791ec61cdd9636a7e87b', 2, '2018-04-27 11:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  `refresh_token` text COMMENT 'Email connector refresh token'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`, `interface_locale`, `failures_num`, `first_failure`, `lock_expires`, `refresh_token`) VALUES
(1, 'Shesh', 'Shesh', 'shesh.kumar@datman.in', 'Shesh', '2c83e4e73a9e3b0f8f54b86ec5d65f2d0123c7bacc5fd6260041ae0387fe2145:wMgMjBM4pSLzi0qx1p5zc5722FzYd5yp:1', '2018-04-20 03:04:09', '2018-05-16 10:59:16', '2018-05-16 10:59:16', 91, 0, 1, '{"configState":{"general_country":"1","general_region":"1","general_locale":"0","general_store_information":"1","general_single_store_mode":"0","currency_options":"1","currency_yahoofinance":"1","currency_fixerio":"1","currency_webservicex":"1","currency_import":"1","trans_email_ident_general":"1","trans_email_ident_sales":"1","trans_email_ident_support":"1","trans_email_ident_custom1":"1","trans_email_ident_custom2":"1","contact_contact":"1","contact_email":"1","newrelicreporting_general":"1","cms_wysiwyg":"1","web_default":"1","web_cookie":"1","web_session":"1","web_browser_capabilities":"1","web_seo":"0","web_unsecure":"1","web_secure":"1","web_url":"0","connector_configuration_dynamic_content":"1","connector_configuration_dynamic_content_style":"1","connector_configuration_data_fields":"1","connector_configuration_tracking":"1","connector_configuration_transactional_data":"1","connector_configuration_abandoned_carts":"1","connector_configuration_catalog_sync":"1","connector_configuration_customer_addressbook":"1","catalog_frontend":"1","catalog_review":"1","catalog_productalert":"0","catalog_productalert_cron":"0","catalog_recently_products":"1","catalog_search":"1","catalog_navigation":"1","catalog_fields_masks":"0","catalog_placeholder":"0","catalog_product_video":"1","catalog_layered_navigation":"1","catalog_seo":"1","catalog_downloadable":"1","catalog_custom_options":"0","cataloginventory_options":"1","cataloginventory_item_options":"1","catalog_price":"1","webapi_soap":"0","webapi_webapisecurity":"1","cpanelsection_listpagegroup":"0","cpanelsection_viewpagegroup":"0","cpanelsection_contactpagegroup":"0","cpanelsection_headergroup":"1","cpanelsection_footergroup":"0","wishlist_general":"1","wishlist_email":"1","wishlist_wishlist_link":"1","scrollsection_scrollgroup":"1","outofstock_product_outofstockproduct":"1","productslider_general":"1","productslider_slider_settings":"0","jnext_mega_config_general":"1","jnext_mega_config_category_labels":"1","swissup_absolute_background":"1","swissup_absolute_footer":"1","swissup_absolute_navigation":"1","swissup_absolute_fonts":"1","swissup_core_notification":"1"}}', NULL, NULL, 'en_US', 0, NULL, NULL, NULL),
(2, 'Brajesh', 'Kumar', 'brajeshkumar@gmail.com', 'Brajesh', '09edd2d35bbb1e85b33fd6ba199ad0c081ccdfd47a439d505016898cb2c7aae6:K4TCZW5n7c1fXVx3KjnpFFpxeJgPDJYU:1', '2018-04-25 10:41:29', '2018-04-25 10:48:18', '2018-04-25 10:48:18', 1, 0, 1, 'null', NULL, NULL, 'hi_IN', 0, NULL, NULL, NULL),
(3, 'developer_1', 'technodevlab', 'shesh@technodevlab.com', 'Developer_1', '6b6daa7947f9612fa729f7608a7759baca3165557d7dbd1d3817d7baf10ffe80:U58NvmVJ57zKJDOfEIyP4NnvUQzBh8tE:1', '2018-04-25 10:44:43', '2018-05-07 09:20:16', '2018-04-25 11:21:47', 2, 0, 1, 'null', NULL, NULL, 'hi_IN', 1, '2018-05-07 09:20:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_session`
--

CREATE TABLE `admin_user_session` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

INSERT INTO `admin_user_session` (`id`, `session_id`, `user_id`, `status`, `created_at`, `updated_at`, `ip`) VALUES
(2, 'b92rkegae3u4e105jmqub9sdu3', 1, 1, '2018-05-14 09:14:19', '2018-05-14 09:42:38', '::1'),
(3, '0fn60mi44t21rb0h1rq9e7alj6', 1, 1, '2018-05-14 10:11:05', '2018-05-14 10:16:26', '::1'),
(4, 'kovjme6lslafkh95ak03htc7f4', 1, 0, '2018-05-14 10:36:00', '2018-05-14 11:05:50', '::1'),
(5, 'rriohnas9oamhc2ih5cpd585p3', 1, 0, '2018-05-14 11:11:52', '2018-05-14 12:11:28', '::1'),
(6, 'lk42vk6vq7hsu8j25p664bsjp2', 1, 0, '2018-05-14 12:43:49', '2018-05-14 12:44:11', '::1'),
(7, '9rnjf5l97ncnbjlcainpc1r566', 1, 0, '2018-05-16 08:34:15', '2018-05-16 08:43:14', '::1'),
(8, 'a3jusf2n4rkb4oka9m1b2is0q4', 1, 1, '2018-05-16 08:54:50', '2018-05-16 09:14:54', '::1'),
(9, 'gscl0u0n53u3l2b8ptajl64b76', 1, 1, '2018-05-16 09:49:29', '2018-05-16 10:11:43', '::1'),
(10, 'ip3g7e9tabeqem2pgugb11h8g3', 1, 1, '2018-05-16 10:34:14', '2018-05-16 10:34:45', '::1'),
(11, 'dt9ilvor3gbuh92lf83443tl06', 1, 1, '2018-05-16 10:59:17', '2018-05-16 11:24:01', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `authorization_role`
--

CREATE TABLE `authorization_role` (
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

INSERT INTO `authorization_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `user_type`, `role_name`) VALUES
(2, 0, 1, 1, 'G', 0, '2', 'Administrators'),
(3, 2, 2, 0, 'U', 1, '2', 'Shesh'),
(23, 0, 1, 0, 'G', 0, '2', 'Support Team'),
(24, 0, 1, 0, 'G', 0, '2', 'Developer'),
(25, 23, 2, 0, 'U', 2, '2', 'Brajesh'),
(29, 24, 2, 0, 'U', 3, '2', 'developer_1'),
(150, 0, 1, 0, 'U', 141, '1', '1141');

-- --------------------------------------------------------

--
-- Table structure for table `authorization_rule`
--

CREATE TABLE `authorization_rule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

INSERT INTO `authorization_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `permission`) VALUES
(455, 2, 'Magento_Backend::all', NULL, 'allow'),
(13395, 24, 'Magento_Backend::all', NULL, 'deny'),
(13396, 24, 'Magento_Backend::admin', NULL, 'allow'),
(13397, 24, 'Magento_Backend::dashboard', NULL, 'allow'),
(13398, 24, 'Magento_Analytics::analytics', NULL, 'allow'),
(13399, 24, 'Magento_Analytics::analytics_api', NULL, 'allow'),
(13400, 24, 'Magento_Sales::sales', NULL, 'allow'),
(13401, 24, 'Magento_Sales::sales_operation', NULL, 'allow'),
(13402, 24, 'Magento_Sales::sales_order', NULL, 'deny'),
(13403, 24, 'Magento_Sales::actions', NULL, 'deny'),
(13404, 24, 'Magento_Sales::create', NULL, 'deny'),
(13405, 24, 'Magento_Sales::actions_view', NULL, 'deny'),
(13406, 24, 'Magento_Sales::email', NULL, 'deny'),
(13407, 24, 'Magento_Sales::reorder', NULL, 'deny'),
(13408, 24, 'Magento_Sales::actions_edit', NULL, 'deny'),
(13409, 24, 'Magento_Sales::cancel', NULL, 'deny'),
(13410, 24, 'Magento_Sales::review_payment', NULL, 'deny'),
(13411, 24, 'Magento_Sales::capture', NULL, 'deny'),
(13412, 24, 'Magento_Sales::invoice', NULL, 'deny'),
(13413, 24, 'Magento_Sales::creditmemo', NULL, 'deny'),
(13414, 24, 'Magento_Sales::hold', NULL, 'deny'),
(13415, 24, 'Magento_Sales::unhold', NULL, 'deny'),
(13416, 24, 'Magento_Sales::ship', NULL, 'deny'),
(13417, 24, 'Magento_Sales::comment', NULL, 'deny'),
(13418, 24, 'Magento_Sales::emails', NULL, 'deny'),
(13419, 24, 'Magento_Sales::sales_invoice', NULL, 'deny'),
(13420, 24, 'Magento_Sales::shipment', NULL, 'allow'),
(13421, 24, 'Temando_Shipping::dispatches', NULL, 'allow'),
(13422, 24, 'Magento_Sales::sales_creditmemo', NULL, 'deny'),
(13423, 24, 'Magento_Paypal::billing_agreement', NULL, 'deny'),
(13424, 24, 'Magento_Paypal::billing_agreement_actions', NULL, 'deny'),
(13425, 24, 'Magento_Paypal::billing_agreement_actions_view', NULL, 'deny'),
(13426, 24, 'Magento_Paypal::actions_manage', NULL, 'deny'),
(13427, 24, 'Magento_Paypal::use', NULL, 'deny'),
(13428, 24, 'Magento_Sales::transactions', NULL, 'allow'),
(13429, 24, 'Magento_Sales::transactions_fetch', NULL, 'allow'),
(13430, 24, 'Magento_Catalog::catalog', NULL, 'allow'),
(13431, 24, 'Magento_Catalog::catalog_inventory', NULL, 'allow'),
(13432, 24, 'Magento_Catalog::products', NULL, 'allow'),
(13433, 24, 'Magento_Catalog::categories', NULL, 'allow'),
(13434, 24, 'Magento_Customer::customer', NULL, 'allow'),
(13435, 24, 'Magento_Customer::manage', NULL, 'allow'),
(13436, 24, 'Magento_Customer::online', NULL, 'allow'),
(13437, 24, 'Magento_Cart::cart', NULL, 'allow'),
(13438, 24, 'Magento_Cart::manage', NULL, 'allow'),
(13439, 24, 'Magento_Backend::myaccount', NULL, 'allow'),
(13440, 24, 'Magento_Backend::marketing', NULL, 'allow'),
(13441, 24, 'Magento_CatalogRule::promo', NULL, 'allow'),
(13442, 24, 'Magento_CatalogRule::promo_catalog', NULL, 'allow'),
(13443, 24, 'Magento_SalesRule::quote', NULL, 'allow'),
(13444, 24, 'Dotdigitalgroup_Email::automation', NULL, 'allow'),
(13445, 24, 'Dotdigitalgroup_Email::automation_studio', NULL, 'deny'),
(13446, 24, 'Dotdigitalgroup_Email::exclusion_rules', NULL, 'deny'),
(13447, 24, 'Magento_Backend::marketing_communications', NULL, 'allow'),
(13448, 24, 'Magento_Email::template', NULL, 'allow'),
(13449, 24, 'Magento_Newsletter::template', NULL, 'allow'),
(13450, 24, 'Magento_Newsletter::queue', NULL, 'allow'),
(13451, 24, 'Magento_Newsletter::subscriber', NULL, 'allow'),
(13452, 24, 'Magento_Backend::marketing_seo', NULL, 'allow'),
(13453, 24, 'Magento_Search::search', NULL, 'allow'),
(13454, 24, 'Magento_Search::synonyms', NULL, 'allow'),
(13455, 24, 'Magento_UrlRewrite::urlrewrite', NULL, 'deny'),
(13456, 24, 'Magento_Sitemap::sitemap', NULL, 'deny'),
(13457, 24, 'Magento_Backend::marketing_user_content', NULL, 'allow'),
(13458, 24, 'Magento_Review::reviews_all', NULL, 'allow'),
(13459, 24, 'Magento_Review::pending', NULL, 'allow'),
(13460, 24, 'Magento_Backend::content', NULL, 'allow'),
(13461, 24, 'Magento_Backend::content_elements', NULL, 'allow'),
(13462, 24, 'Magento_Cms::page', NULL, 'allow'),
(13463, 24, 'Magento_Cms::save', NULL, 'allow'),
(13464, 24, 'Magento_Cms::page_delete', NULL, 'deny'),
(13465, 24, 'Magento_Cms::block', NULL, 'allow'),
(13466, 24, 'Magento_Widget::widget_instance', NULL, 'deny'),
(13467, 24, 'Magento_Cms::media_gallery', NULL, 'deny'),
(13468, 24, 'Magento_Backend::design', NULL, 'allow'),
(13469, 24, 'Magento_Theme::theme', NULL, 'allow'),
(13470, 24, 'Magento_Backend::schedule', NULL, 'deny'),
(13471, 24, 'Magento_Backend::content_translation', NULL, 'deny'),
(13472, 24, 'Magento_Reports::report', NULL, 'allow'),
(13473, 24, 'Dotdigitalgroup_Email::reports', NULL, 'deny'),
(13474, 24, 'Dotdigitalgroup_Email::contact', NULL, 'deny'),
(13475, 24, 'Dotdigitalgroup_Email::order', NULL, 'deny'),
(13476, 24, 'Dotdigitalgroup_Email::review', NULL, 'deny'),
(13477, 24, 'Dotdigitalgroup_Email::wishlist', NULL, 'deny'),
(13478, 24, 'Dotdigitalgroup_Email::catalog', NULL, 'deny'),
(13479, 24, 'Dotdigitalgroup_Email::importer', NULL, 'deny'),
(13480, 24, 'Dotdigitalgroup_Email::campaign', NULL, 'deny'),
(13481, 24, 'Dotdigitalgroup_Email::cron', NULL, 'deny'),
(13482, 24, 'Dotdigitalgroup_Email::dashboard', NULL, 'deny'),
(13483, 24, 'Dotdigitalgroup_Email::automation_enrollment', NULL, 'deny'),
(13484, 24, 'Dotdigitalgroup_Email::logviewer', NULL, 'deny'),
(13485, 24, 'Magento_Reports::report_marketing', NULL, 'allow'),
(13486, 24, 'Magento_Reports::shopcart', NULL, 'allow'),
(13487, 24, 'Magento_Reports::product', NULL, 'allow'),
(13488, 24, 'Magento_Reports::abandoned', NULL, 'deny'),
(13489, 24, 'Magento_Reports::report_search', NULL, 'allow'),
(13490, 24, 'Magento_Newsletter::problem', NULL, 'allow'),
(13491, 24, 'Magento_Reports::review', NULL, 'allow'),
(13492, 24, 'Magento_Reports::review_customer', NULL, 'allow'),
(13493, 24, 'Magento_Reports::review_product', NULL, 'allow'),
(13494, 24, 'Magento_Reports::salesroot', NULL, 'allow'),
(13495, 24, 'Magento_Reports::salesroot_sales', NULL, 'allow'),
(13496, 24, 'Magento_Reports::tax', NULL, 'allow'),
(13497, 24, 'Magento_Reports::invoiced', NULL, 'allow'),
(13498, 24, 'Magento_Reports::shipping', NULL, 'allow'),
(13499, 24, 'Magento_Reports::refunded', NULL, 'allow'),
(13500, 24, 'Magento_Reports::coupons', NULL, 'allow'),
(13501, 24, 'Magento_Paypal::paypal_settlement_reports', NULL, 'deny'),
(13502, 24, 'Magento_Paypal::paypal_settlement_reports_view', NULL, 'deny'),
(13503, 24, 'Magento_Paypal::fetch', NULL, 'deny'),
(13504, 24, 'Magento_Braintree::settlement_report', NULL, 'deny'),
(13505, 24, 'Magento_Reports::customers', NULL, 'allow'),
(13506, 24, 'Magento_Reports::totals', NULL, 'allow'),
(13507, 24, 'Magento_Reports::customers_orders', NULL, 'allow'),
(13508, 24, 'Magento_Reports::accounts', NULL, 'deny'),
(13509, 24, 'Magento_Reports::report_products', NULL, 'allow'),
(13510, 24, 'Magento_Reports::viewed', NULL, 'allow'),
(13511, 24, 'Magento_Reports::bestsellers', NULL, 'allow'),
(13512, 24, 'Magento_Reports::lowstock', NULL, 'allow'),
(13513, 24, 'Magento_Reports::sold', NULL, 'deny'),
(13514, 24, 'Magento_Reports::downloads', NULL, 'deny'),
(13515, 24, 'Magento_Reports::statistics', NULL, 'allow'),
(13516, 24, 'Magento_Reports::statistics_refresh', NULL, 'allow'),
(13517, 24, 'Magento_Analytics::business_intelligence', NULL, 'allow'),
(13518, 24, 'Magento_Analytics::advanced_reporting', NULL, 'allow'),
(13519, 24, 'Magento_Analytics::bi_essentials', NULL, 'allow'),
(13520, 24, 'Magento_Backend::stores', NULL, 'deny'),
(13521, 24, 'Magento_Backend::stores_settings', NULL, 'deny'),
(13522, 24, 'Magento_Backend::store', NULL, 'deny'),
(13523, 24, 'Magento_Config::config', NULL, 'deny'),
(13524, 24, 'Dotdigitalgroup_Email::config', NULL, 'deny'),
(13525, 24, 'Magento_Cms::config_cms', NULL, 'deny'),
(13526, 24, 'Magento_GoogleAnalytics::google', NULL, 'deny'),
(13527, 24, 'Magento_Downloadable::downloadable', NULL, 'deny'),
(13528, 24, 'Magento_Newsletter::newsletter', NULL, 'deny'),
(13529, 24, 'Magento_Contact::contact', NULL, 'deny'),
(13530, 24, 'Magento_CatalogInventory::cataloginventory', NULL, 'deny'),
(13531, 24, 'Magento_Payment::payment_services', NULL, 'deny'),
(13532, 24, 'Magento_Payment::payment', NULL, 'deny'),
(13533, 24, 'Magento_Catalog::config_catalog', NULL, 'deny'),
(13534, 24, 'Magento_CatalogSearch::config_catalog_search', NULL, 'deny'),
(13535, 24, 'Magento_Sales::fraud_protection', NULL, 'deny'),
(13536, 24, 'Magento_Shipping::config_shipping', NULL, 'deny'),
(13537, 24, 'Magento_Shipping::shipping_policy', NULL, 'deny'),
(13538, 24, 'Magento_Shipping::carriers', NULL, 'deny'),
(13539, 24, 'Magento_Multishipping::config_multishipping', NULL, 'deny'),
(13540, 24, 'Magento_Config::config_general', NULL, 'deny'),
(13541, 24, 'Magento_Config::web', NULL, 'deny'),
(13542, 24, 'Magento_Config::config_design', NULL, 'deny'),
(13543, 24, 'Magento_Customer::config_customer', NULL, 'deny'),
(13544, 24, 'Magento_Paypal::paypal', NULL, 'deny'),
(13545, 24, 'Magento_Tax::config_tax', NULL, 'deny'),
(13546, 24, 'Magento_Checkout::checkout', NULL, 'deny'),
(13547, 24, 'Magento_Sales::config_sales', NULL, 'deny'),
(13548, 24, 'Magento_Persistent::persistent', NULL, 'deny'),
(13549, 24, 'Magento_Sales::sales_email', NULL, 'deny'),
(13550, 24, 'Magento_Sales::sales_pdf', NULL, 'deny'),
(13551, 24, 'Magento_Reports::reports', NULL, 'deny'),
(13552, 24, 'Magento_Sitemap::config_sitemap', NULL, 'deny'),
(13553, 24, 'Magento_Wishlist::config_wishlist', NULL, 'deny'),
(13554, 24, 'Magento_Config::config_system', NULL, 'deny'),
(13555, 24, 'Magento_SalesRule::config_promo', NULL, 'deny'),
(13556, 24, 'Magento_Config::advanced', NULL, 'deny'),
(13557, 24, 'Magento_Config::config_admin', NULL, 'deny'),
(13558, 24, 'Magento_Config::trans_email', NULL, 'deny'),
(13559, 24, 'Magento_Config::dev', NULL, 'deny'),
(13560, 24, 'Magento_Config::currency', NULL, 'deny'),
(13561, 24, 'Magento_Rss::rss', NULL, 'deny'),
(13562, 24, 'Magento_Config::sendfriend', NULL, 'deny'),
(13563, 24, 'Magento_Analytics::analytics_settings', NULL, 'deny'),
(13564, 24, 'Magento_NewRelicReporting::config_newrelicreporting', NULL, 'deny'),
(13565, 24, 'Magento_CheckoutAgreements::checkoutagreement', NULL, 'deny'),
(13566, 24, 'Magento_Sales::order_statuses', NULL, 'deny'),
(13567, 24, 'Temando_Shipping::shipping', NULL, 'deny'),
(13568, 24, 'Temando_Shipping::carriers', NULL, 'deny'),
(13569, 24, 'Temando_Shipping::locations', NULL, 'deny'),
(13570, 24, 'Temando_Shipping::packaging', NULL, 'deny'),
(13571, 24, 'Magento_Tax::manage_tax', NULL, 'deny'),
(13572, 24, 'Magento_CurrencySymbol::system_currency', NULL, 'deny'),
(13573, 24, 'Magento_CurrencySymbol::currency_rates', NULL, 'deny'),
(13574, 24, 'Magento_CurrencySymbol::symbols', NULL, 'deny'),
(13575, 24, 'Magento_Backend::stores_attributes', NULL, 'deny'),
(13576, 24, 'Magento_Catalog::attributes_attributes', NULL, 'deny'),
(13577, 24, 'Magento_Catalog::update_attributes', NULL, 'deny'),
(13578, 24, 'Magento_Catalog::sets', NULL, 'deny'),
(13579, 24, 'Magento_Review::ratings', NULL, 'deny'),
(13580, 24, 'Magento_Swatches::iframe', NULL, 'deny'),
(13581, 24, 'Magento_Backend::stores_other_settings', NULL, 'deny'),
(13582, 24, 'Magento_Customer::group', NULL, 'deny'),
(13583, 24, 'Magento_Backend::system', NULL, 'allow'),
(13584, 24, 'Magento_Backend::convert', NULL, 'deny'),
(13585, 24, 'Magento_ImportExport::import', NULL, 'deny'),
(13586, 24, 'Magento_ImportExport::export', NULL, 'deny'),
(13587, 24, 'Magento_TaxImportExport::import_export', NULL, 'deny'),
(13588, 24, 'Magento_ImportExport::history', NULL, 'deny'),
(13589, 24, 'Magento_Backend::extensions', NULL, 'deny'),
(13590, 24, 'Magento_Backend::local', NULL, 'deny'),
(13591, 24, 'Magento_Backend::custom', NULL, 'deny'),
(13592, 24, 'Magento_Backend::tools', NULL, 'allow'),
(13593, 24, 'Magento_Backend::cache', NULL, 'allow'),
(13594, 24, 'Magento_Backend::main_actions', NULL, 'allow'),
(13595, 24, 'Magento_Backend::flush_cache_storage', NULL, 'allow'),
(13596, 24, 'Magento_Backend::flush_magento_cache', NULL, 'allow'),
(13597, 24, 'Magento_Backend::mass_actions', NULL, 'allow'),
(13598, 24, 'Magento_Backend::toggling_cache_type', NULL, 'allow'),
(13599, 24, 'Magento_Backend::refresh_cache_type', NULL, 'allow'),
(13600, 24, 'Magento_Backend::additional_cache_management', NULL, 'allow'),
(13601, 24, 'Magento_Backend::flush_catalog_images', NULL, 'allow'),
(13602, 24, 'Magento_Backend::flush_js_css', NULL, 'deny'),
(13603, 24, 'Magento_Backend::flush_static_files', NULL, 'allow'),
(13604, 24, 'Magento_Backend::setup_wizard', NULL, 'allow'),
(13605, 24, 'Magento_Backup::backup', NULL, 'allow'),
(13606, 24, 'Magento_Backup::rollback', NULL, 'allow'),
(13607, 24, 'Magento_Indexer::index', NULL, 'allow'),
(13608, 24, 'Magento_Indexer::changeMode', NULL, 'allow'),
(13609, 24, 'Magento_User::acl', NULL, 'deny'),
(13610, 24, 'Magento_User::acl_users', NULL, 'deny'),
(13611, 24, 'Magento_User::locks', NULL, 'deny'),
(13612, 24, 'Magento_User::acl_roles', NULL, 'deny'),
(13613, 24, 'Magento_Backend::system_other_settings', NULL, 'allow'),
(13614, 24, 'Magento_AdminNotification::adminnotification', NULL, 'allow'),
(13615, 24, 'Magento_AdminNotification::show_toolbar', NULL, 'allow'),
(13616, 24, 'Magento_AdminNotification::show_list', NULL, 'allow'),
(13617, 24, 'Magento_AdminNotification::mark_as_read', NULL, 'allow'),
(13618, 24, 'Magento_AdminNotification::adminnotification_remove', NULL, 'deny'),
(13619, 24, 'Magento_Variable::variable', NULL, 'deny'),
(13620, 24, 'Magento_EncryptionKey::crypt_key', NULL, 'deny'),
(13621, 24, 'Magento_Backend::global_search', NULL, 'allow'),
(13622, 23, 'Magento_Backend::all', NULL, 'deny'),
(13623, 23, 'Magento_Backend::admin', NULL, 'allow'),
(13624, 23, 'Magento_Backend::dashboard', NULL, 'allow'),
(13625, 23, 'Magento_Analytics::analytics', NULL, 'allow'),
(13626, 23, 'Magento_Analytics::analytics_api', NULL, 'allow'),
(13627, 23, 'Magento_Sales::sales', NULL, 'allow'),
(13628, 23, 'Magento_Sales::sales_operation', NULL, 'allow'),
(13629, 23, 'Magento_Sales::sales_order', NULL, 'allow'),
(13630, 23, 'Magento_Sales::actions', NULL, 'allow'),
(13631, 23, 'Magento_Sales::create', NULL, 'deny'),
(13632, 23, 'Magento_Sales::actions_view', NULL, 'allow'),
(13633, 23, 'Magento_Sales::email', NULL, 'allow'),
(13634, 23, 'Magento_Sales::reorder', NULL, 'allow'),
(13635, 23, 'Magento_Sales::actions_edit', NULL, 'deny'),
(13636, 23, 'Magento_Sales::cancel', NULL, 'allow'),
(13637, 23, 'Magento_Sales::review_payment', NULL, 'allow'),
(13638, 23, 'Magento_Sales::capture', NULL, 'allow'),
(13639, 23, 'Magento_Sales::invoice', NULL, 'deny'),
(13640, 23, 'Magento_Sales::creditmemo', NULL, 'deny'),
(13641, 23, 'Magento_Sales::hold', NULL, 'allow'),
(13642, 23, 'Magento_Sales::unhold', NULL, 'allow'),
(13643, 23, 'Magento_Sales::ship', NULL, 'allow'),
(13644, 23, 'Magento_Sales::comment', NULL, 'allow'),
(13645, 23, 'Magento_Sales::emails', NULL, 'allow'),
(13646, 23, 'Magento_Sales::sales_invoice', NULL, 'allow'),
(13647, 23, 'Magento_Sales::shipment', NULL, 'allow'),
(13648, 23, 'Temando_Shipping::dispatches', NULL, 'allow'),
(13649, 23, 'Magento_Sales::sales_creditmemo', NULL, 'allow'),
(13650, 23, 'Magento_Paypal::billing_agreement', NULL, 'allow'),
(13651, 23, 'Magento_Paypal::billing_agreement_actions', NULL, 'allow'),
(13652, 23, 'Magento_Paypal::billing_agreement_actions_view', NULL, 'allow'),
(13653, 23, 'Magento_Paypal::actions_manage', NULL, 'allow'),
(13654, 23, 'Magento_Paypal::use', NULL, 'allow'),
(13655, 23, 'Magento_Sales::transactions', NULL, 'allow'),
(13656, 23, 'Magento_Sales::transactions_fetch', NULL, 'allow'),
(13657, 23, 'Magento_Catalog::catalog', NULL, 'deny'),
(13658, 23, 'Magento_Catalog::catalog_inventory', NULL, 'deny'),
(13659, 23, 'Magento_Catalog::products', NULL, 'deny'),
(13660, 23, 'Magento_Catalog::categories', NULL, 'deny'),
(13661, 23, 'Magento_Customer::customer', NULL, 'deny'),
(13662, 23, 'Magento_Customer::manage', NULL, 'deny'),
(13663, 23, 'Magento_Customer::online', NULL, 'deny'),
(13664, 23, 'Magento_Cart::cart', NULL, 'deny'),
(13665, 23, 'Magento_Cart::manage', NULL, 'deny'),
(13666, 23, 'Magento_Backend::myaccount', NULL, 'deny'),
(13667, 23, 'Magento_Backend::marketing', NULL, 'deny'),
(13668, 23, 'Magento_CatalogRule::promo', NULL, 'deny'),
(13669, 23, 'Magento_CatalogRule::promo_catalog', NULL, 'deny'),
(13670, 23, 'Magento_SalesRule::quote', NULL, 'deny'),
(13671, 23, 'Dotdigitalgroup_Email::automation', NULL, 'deny'),
(13672, 23, 'Dotdigitalgroup_Email::automation_studio', NULL, 'deny'),
(13673, 23, 'Dotdigitalgroup_Email::exclusion_rules', NULL, 'deny'),
(13674, 23, 'Magento_Backend::marketing_communications', NULL, 'deny'),
(13675, 23, 'Magento_Email::template', NULL, 'deny'),
(13676, 23, 'Magento_Newsletter::template', NULL, 'deny'),
(13677, 23, 'Magento_Newsletter::queue', NULL, 'deny'),
(13678, 23, 'Magento_Newsletter::subscriber', NULL, 'deny'),
(13679, 23, 'Magento_Backend::marketing_seo', NULL, 'deny'),
(13680, 23, 'Magento_Search::search', NULL, 'deny'),
(13681, 23, 'Magento_Search::synonyms', NULL, 'deny'),
(13682, 23, 'Magento_UrlRewrite::urlrewrite', NULL, 'deny'),
(13683, 23, 'Magento_Sitemap::sitemap', NULL, 'deny'),
(13684, 23, 'Magento_Backend::marketing_user_content', NULL, 'deny'),
(13685, 23, 'Magento_Review::reviews_all', NULL, 'deny'),
(13686, 23, 'Magento_Review::pending', NULL, 'deny'),
(13687, 23, 'Magento_Backend::content', NULL, 'deny'),
(13688, 23, 'Magento_Backend::content_elements', NULL, 'deny'),
(13689, 23, 'Magento_Cms::page', NULL, 'deny'),
(13690, 23, 'Magento_Cms::save', NULL, 'deny'),
(13691, 23, 'Magento_Cms::page_delete', NULL, 'deny'),
(13692, 23, 'Magento_Cms::block', NULL, 'deny'),
(13693, 23, 'Magento_Widget::widget_instance', NULL, 'deny'),
(13694, 23, 'Magento_Cms::media_gallery', NULL, 'deny'),
(13695, 23, 'Magento_Backend::design', NULL, 'deny'),
(13696, 23, 'Magento_Theme::theme', NULL, 'deny'),
(13697, 23, 'Magento_Backend::schedule', NULL, 'deny'),
(13698, 23, 'Magento_Backend::content_translation', NULL, 'deny'),
(13699, 23, 'Magento_Reports::report', NULL, 'deny'),
(13700, 23, 'Dotdigitalgroup_Email::reports', NULL, 'deny'),
(13701, 23, 'Dotdigitalgroup_Email::contact', NULL, 'deny'),
(13702, 23, 'Dotdigitalgroup_Email::order', NULL, 'deny'),
(13703, 23, 'Dotdigitalgroup_Email::review', NULL, 'deny'),
(13704, 23, 'Dotdigitalgroup_Email::wishlist', NULL, 'deny'),
(13705, 23, 'Dotdigitalgroup_Email::catalog', NULL, 'deny'),
(13706, 23, 'Dotdigitalgroup_Email::importer', NULL, 'deny'),
(13707, 23, 'Dotdigitalgroup_Email::campaign', NULL, 'deny'),
(13708, 23, 'Dotdigitalgroup_Email::cron', NULL, 'deny'),
(13709, 23, 'Dotdigitalgroup_Email::dashboard', NULL, 'deny'),
(13710, 23, 'Dotdigitalgroup_Email::automation_enrollment', NULL, 'deny'),
(13711, 23, 'Dotdigitalgroup_Email::logviewer', NULL, 'deny'),
(13712, 23, 'Magento_Reports::report_marketing', NULL, 'deny'),
(13713, 23, 'Magento_Reports::shopcart', NULL, 'deny'),
(13714, 23, 'Magento_Reports::product', NULL, 'deny'),
(13715, 23, 'Magento_Reports::abandoned', NULL, 'deny'),
(13716, 23, 'Magento_Reports::report_search', NULL, 'deny'),
(13717, 23, 'Magento_Newsletter::problem', NULL, 'deny'),
(13718, 23, 'Magento_Reports::review', NULL, 'deny'),
(13719, 23, 'Magento_Reports::review_customer', NULL, 'deny'),
(13720, 23, 'Magento_Reports::review_product', NULL, 'deny'),
(13721, 23, 'Magento_Reports::salesroot', NULL, 'deny'),
(13722, 23, 'Magento_Reports::salesroot_sales', NULL, 'deny'),
(13723, 23, 'Magento_Reports::tax', NULL, 'deny'),
(13724, 23, 'Magento_Reports::invoiced', NULL, 'deny'),
(13725, 23, 'Magento_Reports::shipping', NULL, 'deny'),
(13726, 23, 'Magento_Reports::refunded', NULL, 'deny'),
(13727, 23, 'Magento_Reports::coupons', NULL, 'deny'),
(13728, 23, 'Magento_Paypal::paypal_settlement_reports', NULL, 'deny'),
(13729, 23, 'Magento_Paypal::paypal_settlement_reports_view', NULL, 'deny'),
(13730, 23, 'Magento_Paypal::fetch', NULL, 'deny'),
(13731, 23, 'Magento_Braintree::settlement_report', NULL, 'deny'),
(13732, 23, 'Magento_Reports::customers', NULL, 'deny'),
(13733, 23, 'Magento_Reports::totals', NULL, 'deny'),
(13734, 23, 'Magento_Reports::customers_orders', NULL, 'deny'),
(13735, 23, 'Magento_Reports::accounts', NULL, 'deny'),
(13736, 23, 'Magento_Reports::report_products', NULL, 'deny'),
(13737, 23, 'Magento_Reports::viewed', NULL, 'deny'),
(13738, 23, 'Magento_Reports::bestsellers', NULL, 'deny'),
(13739, 23, 'Magento_Reports::lowstock', NULL, 'deny'),
(13740, 23, 'Magento_Reports::sold', NULL, 'deny'),
(13741, 23, 'Magento_Reports::downloads', NULL, 'deny'),
(13742, 23, 'Magento_Reports::statistics', NULL, 'deny'),
(13743, 23, 'Magento_Reports::statistics_refresh', NULL, 'deny'),
(13744, 23, 'Magento_Analytics::business_intelligence', NULL, 'deny'),
(13745, 23, 'Magento_Analytics::advanced_reporting', NULL, 'deny'),
(13746, 23, 'Magento_Analytics::bi_essentials', NULL, 'deny'),
(13747, 23, 'Magento_Backend::stores', NULL, 'allow'),
(13748, 23, 'Magento_Backend::stores_settings', NULL, 'allow'),
(13749, 23, 'Magento_Backend::store', NULL, 'allow'),
(13750, 23, 'Magento_Config::config', NULL, 'allow'),
(13751, 23, 'Dotdigitalgroup_Email::config', NULL, 'allow'),
(13752, 23, 'Magento_Cms::config_cms', NULL, 'allow'),
(13753, 23, 'Magento_GoogleAnalytics::google', NULL, 'allow'),
(13754, 23, 'Magento_Downloadable::downloadable', NULL, 'allow'),
(13755, 23, 'Magento_Newsletter::newsletter', NULL, 'allow'),
(13756, 23, 'Magento_Contact::contact', NULL, 'allow'),
(13757, 23, 'Magento_CatalogInventory::cataloginventory', NULL, 'deny'),
(13758, 23, 'Magento_Payment::payment_services', NULL, 'deny'),
(13759, 23, 'Magento_Payment::payment', NULL, 'deny'),
(13760, 23, 'Magento_Catalog::config_catalog', NULL, 'allow'),
(13761, 23, 'Magento_CatalogSearch::config_catalog_search', NULL, 'allow'),
(13762, 23, 'Magento_Sales::fraud_protection', NULL, 'allow'),
(13763, 23, 'Magento_Shipping::config_shipping', NULL, 'allow'),
(13764, 23, 'Magento_Shipping::shipping_policy', NULL, 'allow'),
(13765, 23, 'Magento_Shipping::carriers', NULL, 'allow'),
(13766, 23, 'Magento_Multishipping::config_multishipping', NULL, 'allow'),
(13767, 23, 'Magento_Config::config_general', NULL, 'allow'),
(13768, 23, 'Magento_Config::web', NULL, 'allow'),
(13769, 23, 'Magento_Config::config_design', NULL, 'allow'),
(13770, 23, 'Magento_Customer::config_customer', NULL, 'allow'),
(13771, 23, 'Magento_Paypal::paypal', NULL, 'deny'),
(13772, 23, 'Magento_Tax::config_tax', NULL, 'deny'),
(13773, 23, 'Magento_Checkout::checkout', NULL, 'allow'),
(13774, 23, 'Magento_Sales::config_sales', NULL, 'allow'),
(13775, 23, 'Magento_Persistent::persistent', NULL, 'deny'),
(13776, 23, 'Magento_Sales::sales_email', NULL, 'allow'),
(13777, 23, 'Magento_Sales::sales_pdf', NULL, 'allow'),
(13778, 23, 'Magento_Reports::reports', NULL, 'allow'),
(13779, 23, 'Magento_Sitemap::config_sitemap', NULL, 'allow'),
(13780, 23, 'Magento_Wishlist::config_wishlist', NULL, 'allow'),
(13781, 23, 'Magento_Config::config_system', NULL, 'allow'),
(13782, 23, 'Magento_SalesRule::config_promo', NULL, 'allow'),
(13783, 23, 'Magento_Config::advanced', NULL, 'allow'),
(13784, 23, 'Magento_Config::config_admin', NULL, 'allow'),
(13785, 23, 'Magento_Config::trans_email', NULL, 'allow'),
(13786, 23, 'Magento_Config::dev', NULL, 'allow'),
(13787, 23, 'Magento_Config::currency', NULL, 'allow'),
(13788, 23, 'Magento_Rss::rss', NULL, 'allow'),
(13789, 23, 'Magento_Config::sendfriend', NULL, 'allow'),
(13790, 23, 'Magento_Analytics::analytics_settings', NULL, 'allow'),
(13791, 23, 'Magento_NewRelicReporting::config_newrelicreporting', NULL, 'allow'),
(13792, 23, 'Magento_CheckoutAgreements::checkoutagreement', NULL, 'allow'),
(13793, 23, 'Magento_Sales::order_statuses', NULL, 'allow'),
(13794, 23, 'Temando_Shipping::shipping', NULL, 'allow'),
(13795, 23, 'Temando_Shipping::carriers', NULL, 'allow'),
(13796, 23, 'Temando_Shipping::locations', NULL, 'allow'),
(13797, 23, 'Temando_Shipping::packaging', NULL, 'allow'),
(13798, 23, 'Magento_Tax::manage_tax', NULL, 'allow'),
(13799, 23, 'Magento_CurrencySymbol::system_currency', NULL, 'allow'),
(13800, 23, 'Magento_CurrencySymbol::currency_rates', NULL, 'allow'),
(13801, 23, 'Magento_CurrencySymbol::symbols', NULL, 'allow'),
(13802, 23, 'Magento_Backend::stores_attributes', NULL, 'allow'),
(13803, 23, 'Magento_Catalog::attributes_attributes', NULL, 'allow'),
(13804, 23, 'Magento_Catalog::update_attributes', NULL, 'allow'),
(13805, 23, 'Magento_Catalog::sets', NULL, 'allow'),
(13806, 23, 'Magento_Review::ratings', NULL, 'allow'),
(13807, 23, 'Magento_Swatches::iframe', NULL, 'allow'),
(13808, 23, 'Magento_Backend::stores_other_settings', NULL, 'allow'),
(13809, 23, 'Magento_Customer::group', NULL, 'allow'),
(13810, 23, 'Magento_Backend::system', NULL, 'allow'),
(13811, 23, 'Magento_Backend::convert', NULL, 'allow'),
(13812, 23, 'Magento_ImportExport::import', NULL, 'allow'),
(13813, 23, 'Magento_ImportExport::export', NULL, 'allow'),
(13814, 23, 'Magento_TaxImportExport::import_export', NULL, 'deny'),
(13815, 23, 'Magento_ImportExport::history', NULL, 'allow'),
(13816, 23, 'Magento_Backend::extensions', NULL, 'allow'),
(13817, 23, 'Magento_Backend::local', NULL, 'allow'),
(13818, 23, 'Magento_Backend::custom', NULL, 'allow'),
(13819, 23, 'Magento_Backend::tools', NULL, 'allow'),
(13820, 23, 'Magento_Backend::cache', NULL, 'allow'),
(13821, 23, 'Magento_Backend::main_actions', NULL, 'allow'),
(13822, 23, 'Magento_Backend::flush_cache_storage', NULL, 'allow'),
(13823, 23, 'Magento_Backend::flush_magento_cache', NULL, 'allow'),
(13824, 23, 'Magento_Backend::mass_actions', NULL, 'allow'),
(13825, 23, 'Magento_Backend::toggling_cache_type', NULL, 'allow'),
(13826, 23, 'Magento_Backend::refresh_cache_type', NULL, 'allow'),
(13827, 23, 'Magento_Backend::additional_cache_management', NULL, 'allow'),
(13828, 23, 'Magento_Backend::flush_catalog_images', NULL, 'allow'),
(13829, 23, 'Magento_Backend::flush_js_css', NULL, 'deny'),
(13830, 23, 'Magento_Backend::flush_static_files', NULL, 'allow'),
(13831, 23, 'Magento_Backend::setup_wizard', NULL, 'allow'),
(13832, 23, 'Magento_Backup::backup', NULL, 'allow'),
(13833, 23, 'Magento_Backup::rollback', NULL, 'allow'),
(13834, 23, 'Magento_Indexer::index', NULL, 'allow'),
(13835, 23, 'Magento_Indexer::changeMode', NULL, 'allow'),
(13836, 23, 'Magento_User::acl', NULL, 'allow'),
(13837, 23, 'Magento_User::acl_users', NULL, 'allow'),
(13838, 23, 'Magento_User::locks', NULL, 'deny'),
(13839, 23, 'Magento_User::acl_roles', NULL, 'deny'),
(13840, 23, 'Magento_Backend::system_other_settings', NULL, 'allow'),
(13841, 23, 'Magento_AdminNotification::adminnotification', NULL, 'allow'),
(13842, 23, 'Magento_AdminNotification::show_toolbar', NULL, 'allow'),
(13843, 23, 'Magento_AdminNotification::show_list', NULL, 'allow'),
(13844, 23, 'Magento_AdminNotification::mark_as_read', NULL, 'allow'),
(13845, 23, 'Magento_AdminNotification::adminnotification_remove', NULL, 'allow'),
(13846, 23, 'Magento_Variable::variable', NULL, 'allow'),
(13847, 23, 'Magento_EncryptionKey::crypt_key', NULL, 'deny'),
(13848, 23, 'Magento_Backend::global_search', NULL, 'allow'),
(99384, 150, 'Magento_Backend::all', NULL, 'deny'),
(99385, 150, 'Magento_Backend::admin', NULL, 'allow'),
(99386, 150, 'Magento_Backend::dashboard', NULL, 'deny'),
(99387, 150, 'Swissup_Core::swissup', NULL, 'deny'),
(99388, 150, 'Swissup_Core::services', NULL, 'deny'),
(99389, 150, 'Swissup_Core::installer_index', NULL, 'deny'),
(99390, 150, 'Swissup_Core::installer_form', NULL, 'deny'),
(99391, 150, 'Swissup_Core::installer_install', NULL, 'deny'),
(99392, 150, 'Swissup_Core::installer_upgrade', NULL, 'deny'),
(99393, 150, 'Swissup_Core::general', NULL, 'deny'),
(99394, 150, 'Trive_Core::admin', NULL, 'deny'),
(99395, 150, 'Trive_Revo::productslider', NULL, 'deny'),
(99396, 150, 'Trive_Revo::manage_sliders', NULL, 'deny'),
(99397, 150, 'Trive_Revo::config', NULL, 'deny'),
(99398, 150, 'Magento_Analytics::analytics', NULL, 'deny'),
(99399, 150, 'Magento_Analytics::analytics_api', NULL, 'deny'),
(99400, 150, 'Magento_Sales::sales', NULL, 'deny'),
(99401, 150, 'Magento_Sales::sales_operation', NULL, 'deny'),
(99402, 150, 'Magento_Sales::sales_order', NULL, 'deny'),
(99403, 150, 'Magento_Sales::actions', NULL, 'deny'),
(99404, 150, 'Magento_Sales::create', NULL, 'deny'),
(99405, 150, 'Magento_Sales::actions_view', NULL, 'deny'),
(99406, 150, 'Magento_Sales::email', NULL, 'deny'),
(99407, 150, 'Magento_Sales::reorder', NULL, 'deny'),
(99408, 150, 'Magento_Sales::actions_edit', NULL, 'deny'),
(99409, 150, 'Magento_Sales::cancel', NULL, 'deny'),
(99410, 150, 'Magento_Sales::review_payment', NULL, 'deny'),
(99411, 150, 'Magento_Sales::capture', NULL, 'deny'),
(99412, 150, 'Magento_Sales::invoice', NULL, 'deny'),
(99413, 150, 'Magento_Sales::creditmemo', NULL, 'deny'),
(99414, 150, 'Magento_Sales::hold', NULL, 'deny'),
(99415, 150, 'Magento_Sales::unhold', NULL, 'deny'),
(99416, 150, 'Magento_Sales::ship', NULL, 'deny'),
(99417, 150, 'Magento_Sales::comment', NULL, 'deny'),
(99418, 150, 'Magento_Sales::emails', NULL, 'deny'),
(99419, 150, 'Magento_Sales::sales_invoice', NULL, 'deny'),
(99420, 150, 'Magento_Sales::shipment', NULL, 'deny'),
(99421, 150, 'Temando_Shipping::dispatches', NULL, 'deny'),
(99422, 150, 'Magento_Sales::sales_creditmemo', NULL, 'deny'),
(99423, 150, 'Magento_Paypal::billing_agreement', NULL, 'deny'),
(99424, 150, 'Magento_Paypal::billing_agreement_actions', NULL, 'deny'),
(99425, 150, 'Magento_Paypal::billing_agreement_actions_view', NULL, 'deny'),
(99426, 150, 'Magento_Paypal::actions_manage', NULL, 'deny'),
(99427, 150, 'Magento_Paypal::use', NULL, 'deny'),
(99428, 150, 'Magento_Sales::transactions', NULL, 'deny'),
(99429, 150, 'Magento_Sales::transactions_fetch', NULL, 'deny'),
(99430, 150, 'Magento_Catalog::catalog', NULL, 'allow'),
(99431, 150, 'Magento_Catalog::catalog_inventory', NULL, 'allow'),
(99432, 150, 'Magento_Catalog::products', NULL, 'allow'),
(99433, 150, 'Magento_Catalog::categories', NULL, 'deny'),
(99434, 150, 'Magento_Customer::customer', NULL, 'deny'),
(99435, 150, 'Magento_Customer::manage', NULL, 'deny'),
(99436, 150, 'Magento_Customer::online', NULL, 'deny'),
(99437, 150, 'Magento_Cart::cart', NULL, 'deny'),
(99438, 150, 'Magento_Cart::manage', NULL, 'deny'),
(99439, 150, 'Magento_Backend::myaccount', NULL, 'deny'),
(99440, 150, 'Magento_Backend::marketing', NULL, 'deny'),
(99441, 150, 'Magento_CatalogRule::promo', NULL, 'deny'),
(99442, 150, 'Magento_CatalogRule::promo_catalog', NULL, 'deny'),
(99443, 150, 'Magento_SalesRule::quote', NULL, 'deny'),
(99444, 150, 'Dotdigitalgroup_Email::automation', NULL, 'deny'),
(99445, 150, 'Dotdigitalgroup_Email::automation_studio', NULL, 'deny'),
(99446, 150, 'Dotdigitalgroup_Email::exclusion_rules', NULL, 'deny'),
(99447, 150, 'Magento_Backend::marketing_communications', NULL, 'deny'),
(99448, 150, 'Magento_Email::template', NULL, 'deny'),
(99449, 150, 'Magento_Newsletter::template', NULL, 'deny'),
(99450, 150, 'Magento_Newsletter::queue', NULL, 'deny'),
(99451, 150, 'Magento_Newsletter::subscriber', NULL, 'deny'),
(99452, 150, 'Magento_Backend::marketing_seo', NULL, 'deny'),
(99453, 150, 'Magento_Search::search', NULL, 'deny'),
(99454, 150, 'Magento_Search::synonyms', NULL, 'deny'),
(99455, 150, 'Magento_UrlRewrite::urlrewrite', NULL, 'deny'),
(99456, 150, 'Magento_Sitemap::sitemap', NULL, 'deny'),
(99457, 150, 'Magento_Backend::marketing_user_content', NULL, 'deny'),
(99458, 150, 'Magento_Review::reviews_all', NULL, 'deny'),
(99459, 150, 'Magento_Review::pending', NULL, 'deny'),
(99460, 150, 'Magento_Backend::content', NULL, 'deny'),
(99461, 150, 'Magento_Backend::content_elements', NULL, 'deny'),
(99462, 150, 'Magento_Cms::page', NULL, 'deny'),
(99463, 150, 'Magento_Cms::save', NULL, 'deny'),
(99464, 150, 'Magento_Cms::page_delete', NULL, 'deny'),
(99465, 150, 'Magento_Cms::block', NULL, 'deny'),
(99466, 150, 'Magento_Widget::widget_instance', NULL, 'deny'),
(99467, 150, 'Magento_Cms::media_gallery', NULL, 'deny'),
(99468, 150, 'Magento_Backend::design', NULL, 'deny'),
(99469, 150, 'Magento_Theme::theme', NULL, 'deny'),
(99470, 150, 'Magento_Backend::schedule', NULL, 'deny'),
(99471, 150, 'Magento_Backend::content_translation', NULL, 'deny'),
(99472, 150, 'Magento_Reports::report', NULL, 'deny'),
(99473, 150, 'Dotdigitalgroup_Email::reports', NULL, 'deny'),
(99474, 150, 'Dotdigitalgroup_Email::contact', NULL, 'deny'),
(99475, 150, 'Dotdigitalgroup_Email::order', NULL, 'deny'),
(99476, 150, 'Dotdigitalgroup_Email::review', NULL, 'deny'),
(99477, 150, 'Dotdigitalgroup_Email::wishlist', NULL, 'deny'),
(99478, 150, 'Dotdigitalgroup_Email::catalog', NULL, 'deny'),
(99479, 150, 'Dotdigitalgroup_Email::importer', NULL, 'deny'),
(99480, 150, 'Dotdigitalgroup_Email::campaign', NULL, 'deny'),
(99481, 150, 'Dotdigitalgroup_Email::cron', NULL, 'deny'),
(99482, 150, 'Dotdigitalgroup_Email::dashboard', NULL, 'deny'),
(99483, 150, 'Dotdigitalgroup_Email::automation_enrollment', NULL, 'deny'),
(99484, 150, 'Dotdigitalgroup_Email::logviewer', NULL, 'deny'),
(99485, 150, 'Magento_Reports::report_marketing', NULL, 'deny'),
(99486, 150, 'Magento_Reports::shopcart', NULL, 'deny'),
(99487, 150, 'Magento_Reports::product', NULL, 'deny'),
(99488, 150, 'Magento_Reports::abandoned', NULL, 'deny'),
(99489, 150, 'Magento_Reports::report_search', NULL, 'deny'),
(99490, 150, 'Magento_Newsletter::problem', NULL, 'deny'),
(99491, 150, 'Magento_Reports::review', NULL, 'deny'),
(99492, 150, 'Magento_Reports::review_customer', NULL, 'deny'),
(99493, 150, 'Magento_Reports::review_product', NULL, 'deny'),
(99494, 150, 'Magento_Reports::salesroot', NULL, 'deny'),
(99495, 150, 'Magento_Reports::salesroot_sales', NULL, 'deny'),
(99496, 150, 'Magento_Reports::tax', NULL, 'deny'),
(99497, 150, 'Magento_Reports::invoiced', NULL, 'deny'),
(99498, 150, 'Magento_Reports::shipping', NULL, 'deny'),
(99499, 150, 'Magento_Reports::refunded', NULL, 'deny'),
(99500, 150, 'Magento_Reports::coupons', NULL, 'deny'),
(99501, 150, 'Magento_Paypal::paypal_settlement_reports', NULL, 'deny'),
(99502, 150, 'Magento_Paypal::paypal_settlement_reports_view', NULL, 'deny'),
(99503, 150, 'Magento_Paypal::fetch', NULL, 'deny'),
(99504, 150, 'Magento_Braintree::settlement_report', NULL, 'deny'),
(99505, 150, 'Magento_Reports::customers', NULL, 'deny'),
(99506, 150, 'Magento_Reports::totals', NULL, 'deny'),
(99507, 150, 'Magento_Reports::customers_orders', NULL, 'deny'),
(99508, 150, 'Magento_Reports::accounts', NULL, 'deny'),
(99509, 150, 'Magento_Reports::report_products', NULL, 'deny'),
(99510, 150, 'Magento_Reports::viewed', NULL, 'deny'),
(99511, 150, 'Magento_Reports::bestsellers', NULL, 'deny'),
(99512, 150, 'Magento_Reports::lowstock', NULL, 'deny'),
(99513, 150, 'Magento_Reports::sold', NULL, 'deny'),
(99514, 150, 'Magento_Reports::downloads', NULL, 'deny'),
(99515, 150, 'Magento_Reports::statistics', NULL, 'deny'),
(99516, 150, 'Magento_Reports::statistics_refresh', NULL, 'deny'),
(99517, 150, 'Magento_Analytics::business_intelligence', NULL, 'deny'),
(99518, 150, 'Magento_Analytics::advanced_reporting', NULL, 'deny'),
(99519, 150, 'Magento_Analytics::bi_essentials', NULL, 'deny'),
(99520, 150, 'Magento_Backend::stores', NULL, 'allow'),
(99521, 150, 'Magento_Backend::stores_settings', NULL, 'allow'),
(99522, 150, 'Magento_Backend::store', NULL, 'allow'),
(99523, 150, 'Magento_Config::config', NULL, 'deny'),
(99524, 150, 'Jnext_Megamenu::jnext_mega_config', NULL, 'deny'),
(99525, 150, 'Magento_Cms::config_cms', NULL, 'deny'),
(99526, 150, 'Dotdigitalgroup_Email::config', NULL, 'deny'),
(99527, 150, 'Magento_Sales::fraud_protection', NULL, 'deny'),
(99528, 150, 'Magento_GoogleAnalytics::google', NULL, 'deny'),
(99529, 150, 'Magento_Newsletter::newsletter', NULL, 'deny'),
(99530, 150, 'Magento_Contact::contact', NULL, 'deny'),
(99531, 150, 'Magento_CatalogInventory::cataloginventory', NULL, 'deny'),
(99532, 150, 'Magento_Payment::payment_services', NULL, 'deny'),
(99533, 150, 'Magento_Payment::payment', NULL, 'deny'),
(99534, 150, 'Magento_Catalog::config_catalog', NULL, 'deny'),
(99535, 150, 'Magento_CatalogSearch::config_catalog_search', NULL, 'deny'),
(99536, 150, 'Magento_Downloadable::downloadable', NULL, 'deny'),
(99537, 150, 'Magento_Shipping::carriers', NULL, 'deny'),
(99538, 150, 'Magento_Shipping::shipping_policy', NULL, 'deny'),
(99539, 150, 'Magento_Shipping::config_shipping', NULL, 'deny'),
(99540, 150, 'Magento_Multishipping::config_multishipping', NULL, 'deny'),
(99541, 150, 'Magento_Config::config_general', NULL, 'deny'),
(99542, 150, 'Magento_Config::web', NULL, 'deny'),
(99543, 150, 'Magento_Config::config_design', NULL, 'deny'),
(99544, 150, 'Magento_Paypal::paypal', NULL, 'deny'),
(99545, 150, 'Magento_Customer::config_customer', NULL, 'deny'),
(99546, 150, 'Magento_Tax::config_tax', NULL, 'deny'),
(99547, 150, 'Magento_Checkout::checkout', NULL, 'deny'),
(99548, 150, 'Magento_Sales::config_sales', NULL, 'deny'),
(99549, 150, 'Magento_Persistent::persistent', NULL, 'deny'),
(99550, 150, 'Magento_Sales::sales_email', NULL, 'deny'),
(99551, 150, 'Magento_Sales::sales_pdf', NULL, 'deny'),
(99552, 150, 'Magento_Reports::reports', NULL, 'deny'),
(99553, 150, 'Magento_Sitemap::config_sitemap', NULL, 'deny'),
(99554, 150, 'Magento_Config::config_system', NULL, 'deny'),
(99555, 150, 'Magento_Wishlist::config_wishlist', NULL, 'deny'),
(99556, 150, 'Magento_SalesRule::config_promo', NULL, 'deny'),
(99557, 150, 'Magento_Config::advanced', NULL, 'deny'),
(99558, 150, 'Magento_Config::config_admin', NULL, 'deny'),
(99559, 150, 'Magento_Config::trans_email', NULL, 'deny'),
(99560, 150, 'Magento_Config::dev', NULL, 'deny'),
(99561, 150, 'Magento_Config::currency', NULL, 'deny'),
(99562, 150, 'Magento_Rss::rss', NULL, 'deny'),
(99563, 150, 'Magento_Config::sendfriend', NULL, 'deny'),
(99564, 150, 'Magento_Analytics::analytics_settings', NULL, 'deny'),
(99565, 150, 'Swissup_ThemeEditor::config', NULL, 'deny'),
(99566, 150, 'Swissup_ThemeEditorSwissupAbsolute::config', NULL, 'deny'),
(99567, 150, 'Swissup_Core::swissup_config', NULL, 'deny'),
(99568, 150, 'Swissup_Core::core_config', NULL, 'deny'),
(99569, 150, 'Swissup_FontAwesome::config_fontawesome', NULL, 'deny'),
(99570, 150, 'Magento_NewRelicReporting::config_newrelicreporting', NULL, 'deny'),
(99571, 150, 'Magento_CheckoutAgreements::checkoutagreement', NULL, 'deny'),
(99572, 150, 'Magento_Sales::order_statuses', NULL, 'deny'),
(99573, 150, 'Temando_Shipping::shipping', NULL, 'deny'),
(99574, 150, 'Temando_Shipping::carriers', NULL, 'deny'),
(99575, 150, 'Temando_Shipping::locations', NULL, 'deny'),
(99576, 150, 'Temando_Shipping::packaging', NULL, 'deny'),
(99577, 150, 'Magento_Tax::manage_tax', NULL, 'deny'),
(99578, 150, 'Magento_CurrencySymbol::system_currency', NULL, 'deny'),
(99579, 150, 'Magento_CurrencySymbol::currency_rates', NULL, 'deny'),
(99580, 150, 'Magento_CurrencySymbol::symbols', NULL, 'deny'),
(99581, 150, 'Magento_Backend::stores_attributes', NULL, 'deny'),
(99582, 150, 'Magento_Catalog::attributes_attributes', NULL, 'deny'),
(99583, 150, 'Magento_Catalog::update_attributes', NULL, 'deny'),
(99584, 150, 'Magento_Catalog::sets', NULL, 'deny'),
(99585, 150, 'Magento_Review::ratings', NULL, 'deny'),
(99586, 150, 'Magento_Swatches::iframe', NULL, 'deny'),
(99587, 150, 'Magento_Backend::stores_other_settings', NULL, 'deny'),
(99588, 150, 'Magento_Customer::group', NULL, 'deny'),
(99589, 150, 'Magento_Backend::system', NULL, 'deny'),
(99590, 150, 'Magento_Backend::convert', NULL, 'deny'),
(99591, 150, 'Magento_ImportExport::import', NULL, 'deny'),
(99592, 150, 'Magento_ImportExport::export', NULL, 'deny'),
(99593, 150, 'Magento_TaxImportExport::import_export', NULL, 'deny'),
(99594, 150, 'Magento_ImportExport::history', NULL, 'deny'),
(99595, 150, 'Magento_Backend::extensions', NULL, 'deny'),
(99596, 150, 'Magento_Backend::local', NULL, 'deny'),
(99597, 150, 'Magento_Backend::custom', NULL, 'deny'),
(99598, 150, 'Magento_Backend::tools', NULL, 'deny'),
(99599, 150, 'Magento_Backend::cache', NULL, 'deny'),
(99600, 150, 'Magento_Backend::main_actions', NULL, 'deny'),
(99601, 150, 'Magento_Backend::flush_cache_storage', NULL, 'deny'),
(99602, 150, 'Magento_Backend::flush_magento_cache', NULL, 'deny'),
(99603, 150, 'Magento_Backend::mass_actions', NULL, 'deny'),
(99604, 150, 'Magento_Backend::toggling_cache_type', NULL, 'deny'),
(99605, 150, 'Magento_Backend::refresh_cache_type', NULL, 'deny'),
(99606, 150, 'Magento_Backend::additional_cache_management', NULL, 'deny'),
(99607, 150, 'Magento_Backend::flush_catalog_images', NULL, 'deny'),
(99608, 150, 'Magento_Backend::flush_js_css', NULL, 'deny'),
(99609, 150, 'Magento_Backend::flush_static_files', NULL, 'deny'),
(99610, 150, 'Magento_Backend::setup_wizard', NULL, 'deny'),
(99611, 150, 'Magento_Backup::backup', NULL, 'deny'),
(99612, 150, 'Magento_Backup::rollback', NULL, 'deny'),
(99613, 150, 'Magento_Indexer::index', NULL, 'deny'),
(99614, 150, 'Magento_Indexer::changeMode', NULL, 'deny'),
(99615, 150, 'Magento_User::acl', NULL, 'deny'),
(99616, 150, 'Magento_User::acl_users', NULL, 'deny'),
(99617, 150, 'Magento_User::locks', NULL, 'deny'),
(99618, 150, 'Magento_User::acl_roles', NULL, 'deny'),
(99619, 150, 'Magento_Backend::system_other_settings', NULL, 'deny'),
(99620, 150, 'Magento_AdminNotification::adminnotification', NULL, 'deny'),
(99621, 150, 'Magento_AdminNotification::show_toolbar', NULL, 'deny'),
(99622, 150, 'Magento_AdminNotification::show_list', NULL, 'deny'),
(99623, 150, 'Magento_AdminNotification::mark_as_read', NULL, 'deny'),
(99624, 150, 'Magento_AdminNotification::adminnotification_remove', NULL, 'deny'),
(99625, 150, 'Magento_Variable::variable', NULL, 'deny'),
(99626, 150, 'Magento_EncryptionKey::crypt_key', NULL, 'deny'),
(99627, 150, 'Magento_Backend::global_search', NULL, 'deny');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `cache_tag`
--

CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Dumping data for table `captcha_log`
--

INSERT INTO `captcha_log` (`type`, `value`, `count`, `updated_at`) VALUES
('2', 'brajesh.kumar@gmail.com', 1, '2018-04-25 11:10:18'),
('2', 'brajeshkumar@gmail.com', 3, '2018-04-25 11:14:02'),
('2', 'Developer_1', 3, '2018-05-07 09:20:15'),
('2', 'mishrakshesh14287@gmail.com', 8, '2018-05-02 04:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `website_id`, `stock_name`) VALUES
(1, 0, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_cl`
--

CREATE TABLE `cataloginventory_stock_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cataloginventory_stock_cl';

--
-- Dumping data for table `cataloginventory_stock_cl`
--

INSERT INTO `cataloginventory_stock_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 11),
(10, 12),
(11, 13),
(12, 14),
(13, 15),
(14, 23),
(15, 24),
(16, 25),
(17, 26),
(18, 27),
(19, 28),
(20, 29),
(21, 30),
(22, 31),
(23, 32),
(24, 33);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`, `website_id`) VALUES
(1, 1, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(2, 2, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(3, 3, 1, '500.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(12, 12, 1, '1500.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(13, 13, 1, '1200.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(14, 14, 1, '1100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(15, 15, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(16, 23, 1, '2000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(17, 24, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(18, 25, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(19, 26, 1, '50.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(20, 27, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(21, 28, 1, '80.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(22, 29, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(23, 30, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(24, 31, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(25, 32, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(26, 33, 1, '43.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0);

--
-- Triggers `cataloginventory_stock_item`
--
DELIMITER $$
CREATE TRIGGER `trg_cataloginventory_stock_item_after_delete` AFTER DELETE ON `cataloginventory_stock_item` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`product_id`);
INSERT IGNORE INTO `cataloginventory_stock_cl` (`entity_id`) VALUES (OLD.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_cataloginventory_stock_item_after_insert` AFTER INSERT ON `cataloginventory_stock_item` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`);
INSERT IGNORE INTO `cataloginventory_stock_cl` (`entity_id`) VALUES (NEW.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_cataloginventory_stock_item_after_update` AFTER UPDATE ON `cataloginventory_stock_item` FOR EACH ROW BEGIN
IF (NEW.`item_id` != OLD.`item_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`stock_id` != OLD.`stock_id` OR NEW.`qty` != OLD.`qty` OR NEW.`min_qty` != OLD.`min_qty` OR NEW.`use_config_min_qty` != OLD.`use_config_min_qty` OR NEW.`is_qty_decimal` != OLD.`is_qty_decimal` OR NEW.`backorders` != OLD.`backorders` OR NEW.`use_config_backorders` != OLD.`use_config_backorders` OR NEW.`min_sale_qty` != OLD.`min_sale_qty` OR NEW.`use_config_min_sale_qty` != OLD.`use_config_min_sale_qty` OR NEW.`max_sale_qty` != OLD.`max_sale_qty` OR NEW.`use_config_max_sale_qty` != OLD.`use_config_max_sale_qty` OR NEW.`is_in_stock` != OLD.`is_in_stock` OR NEW.`low_stock_date` != OLD.`low_stock_date` OR NEW.`notify_stock_qty` != OLD.`notify_stock_qty` OR NEW.`use_config_notify_stock_qty` != OLD.`use_config_notify_stock_qty` OR NEW.`manage_stock` != OLD.`manage_stock` OR NEW.`use_config_manage_stock` != OLD.`use_config_manage_stock` OR NEW.`stock_status_changed_auto` != OLD.`stock_status_changed_auto` OR NEW.`use_config_qty_increments` != OLD.`use_config_qty_increments` OR NEW.`qty_increments` != OLD.`qty_increments` OR NEW.`use_config_enable_qty_inc` != OLD.`use_config_enable_qty_inc` OR NEW.`enable_qty_increments` != OLD.`enable_qty_increments` OR NEW.`is_decimal_divided` != OLD.`is_decimal_divided` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
IF (NEW.`item_id` != OLD.`item_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`stock_id` != OLD.`stock_id` OR NEW.`qty` != OLD.`qty` OR NEW.`min_qty` != OLD.`min_qty` OR NEW.`use_config_min_qty` != OLD.`use_config_min_qty` OR NEW.`is_qty_decimal` != OLD.`is_qty_decimal` OR NEW.`backorders` != OLD.`backorders` OR NEW.`use_config_backorders` != OLD.`use_config_backorders` OR NEW.`min_sale_qty` != OLD.`min_sale_qty` OR NEW.`use_config_min_sale_qty` != OLD.`use_config_min_sale_qty` OR NEW.`max_sale_qty` != OLD.`max_sale_qty` OR NEW.`use_config_max_sale_qty` != OLD.`use_config_max_sale_qty` OR NEW.`is_in_stock` != OLD.`is_in_stock` OR NEW.`low_stock_date` != OLD.`low_stock_date` OR NEW.`notify_stock_qty` != OLD.`notify_stock_qty` OR NEW.`use_config_notify_stock_qty` != OLD.`use_config_notify_stock_qty` OR NEW.`manage_stock` != OLD.`manage_stock` OR NEW.`use_config_manage_stock` != OLD.`use_config_manage_stock` OR NEW.`stock_status_changed_auto` != OLD.`stock_status_changed_auto` OR NEW.`use_config_qty_increments` != OLD.`use_config_qty_increments` OR NEW.`qty_increments` != OLD.`qty_increments` OR NEW.`use_config_enable_qty_inc` != OLD.`use_config_enable_qty_inc` OR NEW.`enable_qty_increments` != OLD.`enable_qty_increments` OR NEW.`is_decimal_divided` != OLD.`is_decimal_divided` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `cataloginventory_stock_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 0, 1, '1000.0000', 1),
(2, 0, 1, '100.0000', 1),
(3, 0, 1, '500.0000', 1),
(12, 0, 1, '1500.0000', 1),
(13, 0, 1, '1200.0000', 1),
(14, 0, 1, '1100.0000', 1),
(15, 0, 1, '0.0000', 1),
(23, 0, 1, '2000.0000', 1),
(24, 0, 1, '0.0000', 1),
(25, 0, 1, '100.0000', 1),
(26, 0, 1, '50.0000', 1),
(27, 0, 1, '100.0000', 1),
(28, 0, 1, '80.0000', 1),
(29, 0, 1, '100.0000', 1),
(30, 0, 1, '10.0000', 1),
(31, 0, 1, '10.0000', 1),
(32, 0, 1, '10.0000', 1),
(33, 0, 1, '43.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_replica`
--

CREATE TABLE `cataloginventory_stock_status_replica` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status_replica`
--

INSERT INTO `cataloginventory_stock_status_replica` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 0, 1, '1000.0000', 1),
(2, 0, 1, '100.0000', 1),
(3, 0, 1, '500.0000', 1),
(12, 0, 1, '1500.0000', 1),
(13, 0, 1, '1200.0000', 1),
(14, 0, 1, '1100.0000', 1),
(15, 0, 1, '0.0000', 1),
(23, 0, 1, '2000.0000', 1),
(24, 0, 1, '0.0000', 1),
(25, 0, 1, '100.0000', 1),
(26, 0, 1, '50.0000', 1),
(27, 0, 1, '100.0000', 1),
(28, 0, 1, '80.0000', 1),
(29, 0, 1, '100.0000', 1),
(30, 0, 1, '10.0000', 1),
(31, 0, 1, '10.0000', 1),
(32, 0, 1, '10.0000', 1),
(33, 0, 1, '43.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

CREATE TABLE `catalogrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

--
-- Dumping data for table `catalogrule`
--

INSERT INTO `catalogrule` (`rule_id`, `name`, `description`, `from_date`, `to_date`, `is_active`, `conditions_serialized`, `actions_serialized`, `stop_rules_processing`, `sort_order`, `simple_action`, `discount_amount`) VALUES
(1, ' Dell Laptop purchase offer 10% off ', 'We are providing some summer discounts on the Dell laptop products to our customer.', '2018-04-25', '2018-05-31', 1, '{"type":"Magento\\\\CatalogRule\\\\Model\\\\Rule\\\\Condition\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\CatalogRule\\\\Model\\\\Rule\\\\Condition\\\\Product","attribute":"category_ids","operator":"==","value":"14, 15","is_value_processed":false},{"type":"Magento\\\\CatalogRule\\\\Model\\\\Rule\\\\Condition\\\\Product","attribute":"attribute_set_id","operator":"==","value":"13","is_value_processed":false}]}', '{"type":"Magento\\\\CatalogRule\\\\Model\\\\Rule\\\\Action\\\\Collection","attribute":null,"operator":"=","value":null}', 0, 0, 'by_percent', '10.0000');

--
-- Triggers `catalogrule`
--
DELIMITER $$
CREATE TRIGGER `trg_catalogrule_after_delete` AFTER DELETE ON `catalogrule` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_rule_cl` (`entity_id`) VALUES (OLD.`rule_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalogrule_after_insert` AFTER INSERT ON `catalogrule` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_rule_cl` (`entity_id`) VALUES (NEW.`rule_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalogrule_after_update` AFTER UPDATE ON `catalogrule` FOR EACH ROW BEGIN
IF (NEW.`rule_id` != OLD.`rule_id` OR NEW.`name` != OLD.`name` OR NEW.`description` != OLD.`description` OR NEW.`from_date` != OLD.`from_date` OR NEW.`to_date` != OLD.`to_date` OR NEW.`is_active` != OLD.`is_active` OR NEW.`conditions_serialized` != OLD.`conditions_serialized` OR NEW.`actions_serialized` != OLD.`actions_serialized` OR NEW.`stop_rules_processing` != OLD.`stop_rules_processing` OR NEW.`sort_order` != OLD.`sort_order` OR NEW.`simple_action` != OLD.`simple_action` OR NEW.`discount_amount` != OLD.`discount_amount`) THEN INSERT IGNORE INTO `catalogrule_rule_cl` (`entity_id`) VALUES (NEW.`rule_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_customer_group`
--

CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

--
-- Dumping data for table `catalogrule_customer_group`
--

INSERT INTO `catalogrule_customer_group` (`rule_id`, `customer_group_id`) VALUES
(1, 0),
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website_replica`
--

CREATE TABLE `catalogrule_group_website_replica` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_cl`
--

CREATE TABLE `catalogrule_product_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogrule_product_cl';

--
-- Dumping data for table `catalogrule_product_cl`
--

INSERT INTO `catalogrule_product_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 7),
(87, 7),
(88, 7),
(89, 7),
(90, 7),
(91, 7),
(92, 7),
(93, 7),
(94, 7),
(95, 7),
(96, 7),
(97, 7),
(98, 7),
(99, 7),
(100, 7),
(101, 7),
(102, 7),
(103, 7),
(104, 7),
(105, 7),
(106, 7),
(107, 7),
(108, 4),
(109, 5),
(110, 6),
(111, 7),
(112, 8),
(113, 8),
(114, 8),
(115, 8),
(116, 8),
(117, 8),
(118, 8),
(119, 8),
(120, 8),
(121, 8),
(122, 8),
(123, 8),
(124, 8),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 8),
(130, 8),
(131, 8),
(132, 8),
(133, 8),
(134, 8),
(135, 8),
(136, 8),
(137, 8),
(138, 9),
(139, 9),
(140, 9),
(141, 9),
(142, 9),
(143, 9),
(144, 9),
(145, 9),
(146, 9),
(147, 9),
(148, 9),
(149, 9),
(150, 9),
(151, 9),
(152, 9),
(153, 9),
(154, 9),
(155, 9),
(156, 9),
(157, 9),
(158, 9),
(159, 9),
(160, 9),
(161, 9),
(162, 9),
(163, 9),
(164, 10),
(165, 10),
(166, 10),
(167, 10),
(168, 10),
(169, 10),
(170, 10),
(171, 10),
(172, 10),
(173, 10),
(174, 10),
(175, 10),
(176, 10),
(177, 10),
(178, 10),
(179, 10),
(180, 10),
(181, 10),
(182, 10),
(183, 10),
(184, 10),
(185, 10),
(186, 10),
(187, 10),
(188, 10),
(189, 10),
(190, 11),
(191, 11),
(192, 11),
(193, 11),
(194, 11),
(195, 11),
(196, 11),
(197, 11),
(198, 11),
(199, 11),
(200, 11),
(201, 11),
(202, 11),
(203, 11),
(204, 11),
(205, 11),
(206, 11),
(207, 11),
(208, 11),
(209, 11),
(210, 11),
(211, 11),
(212, 11),
(213, 11),
(214, 11),
(215, 11),
(216, 11),
(217, 11),
(218, 11),
(219, 11),
(220, 11),
(221, 8),
(222, 9),
(223, 10),
(224, 11),
(225, 12),
(226, 12),
(227, 12),
(228, 12),
(229, 12),
(230, 12),
(231, 12),
(232, 12),
(233, 12),
(234, 12),
(235, 12),
(236, 12),
(237, 12),
(238, 12),
(239, 12),
(240, 12),
(241, 12),
(242, 12),
(243, 12),
(244, 12),
(245, 12),
(246, 12),
(247, 12),
(248, 12),
(249, 12),
(250, 12),
(251, 12),
(252, 13),
(253, 13),
(254, 13),
(255, 13),
(256, 13),
(257, 13),
(258, 13),
(259, 13),
(260, 13),
(261, 13),
(262, 13),
(263, 13),
(264, 13),
(265, 13),
(266, 13),
(267, 13),
(268, 13),
(269, 13),
(270, 13),
(271, 13),
(272, 13),
(273, 13),
(274, 13),
(275, 13),
(276, 13),
(277, 13),
(278, 13),
(279, 14),
(280, 14),
(281, 14),
(282, 14),
(283, 14),
(284, 14),
(285, 14),
(286, 14),
(287, 14),
(288, 14),
(289, 14),
(290, 14),
(291, 14),
(292, 14),
(293, 14),
(294, 14),
(295, 14),
(296, 14),
(297, 14),
(298, 14),
(299, 14),
(300, 14),
(301, 14),
(302, 14),
(303, 14),
(304, 14),
(305, 14),
(306, 15),
(307, 15),
(308, 15),
(309, 15),
(310, 15),
(311, 15),
(312, 15),
(313, 15),
(314, 15),
(315, 15),
(316, 15),
(317, 15),
(318, 15),
(319, 15),
(320, 15),
(321, 15),
(322, 15),
(323, 15),
(324, 15),
(325, 15),
(326, 15),
(327, 15),
(328, 15),
(329, 15),
(471, 23),
(472, 23),
(473, 23),
(474, 23),
(475, 23),
(476, 23),
(477, 23),
(478, 23),
(479, 23),
(480, 23),
(481, 23),
(482, 23),
(483, 23),
(484, 23),
(485, 23),
(486, 23),
(487, 23),
(488, 24),
(489, 24),
(490, 24),
(491, 24),
(492, 24),
(493, 24),
(494, 24),
(495, 24),
(496, 24),
(497, 24),
(498, 24),
(499, 24),
(500, 24),
(501, 24),
(502, 24),
(503, 24),
(504, 24),
(505, 24),
(506, 24),
(507, 24),
(508, 24),
(509, 24),
(510, 24),
(511, 24),
(512, 24),
(513, 24),
(514, 24),
(515, 24),
(516, 24),
(517, 24),
(518, 15),
(519, 15),
(520, 15),
(521, 15),
(522, 2),
(523, 2),
(524, 2),
(525, 2),
(526, 3),
(527, 3),
(528, 3),
(529, 3),
(530, 25),
(531, 25),
(532, 25),
(533, 25),
(534, 25),
(535, 25),
(536, 25),
(537, 25),
(538, 25),
(539, 25),
(540, 25),
(541, 25),
(542, 25),
(543, 25),
(544, 25),
(545, 25),
(546, 25),
(547, 25),
(548, 25),
(549, 25),
(550, 25),
(551, 25),
(552, 25),
(553, 25),
(554, 25),
(555, 25),
(556, 25),
(557, 25),
(558, 25),
(559, 25),
(560, 25),
(561, 25),
(562, 25),
(563, 25),
(564, 25),
(565, 25),
(566, 25),
(567, 26),
(568, 26),
(569, 26),
(570, 26),
(571, 26),
(572, 26),
(573, 26),
(574, 26),
(575, 26),
(576, 26),
(577, 26),
(578, 26),
(579, 26),
(580, 26),
(581, 26),
(582, 26),
(583, 26),
(584, 26),
(585, 26),
(586, 26),
(587, 26),
(588, 26),
(589, 26),
(590, 26),
(591, 26),
(592, 26),
(593, 26),
(594, 26),
(595, 26),
(596, 26),
(597, 26),
(598, 26),
(599, 26),
(600, 26),
(601, 26),
(602, 26),
(603, 26),
(604, 23),
(605, 23),
(606, 23),
(607, 23),
(608, 23),
(609, 23),
(610, 23),
(611, 23),
(612, 23),
(613, 23),
(614, 23),
(615, 23),
(616, 23),
(617, 23),
(618, 23),
(619, 23),
(620, 23),
(621, 23),
(622, 23),
(623, 23),
(624, 23),
(625, 23),
(626, 23),
(627, 23),
(628, 23),
(629, 23),
(630, 23),
(631, 23),
(632, 23),
(633, 27),
(634, 27),
(635, 27),
(636, 27),
(637, 27),
(638, 27),
(639, 27),
(640, 27),
(641, 27),
(642, 27),
(643, 27),
(644, 27),
(645, 27),
(646, 27),
(647, 27),
(648, 27),
(649, 27),
(650, 27),
(651, 27),
(652, 27),
(653, 27),
(654, 27),
(655, 27),
(656, 27),
(657, 27),
(658, 27),
(659, 27),
(660, 27),
(661, 28),
(662, 28),
(663, 28),
(664, 28),
(665, 28),
(666, 28),
(667, 28),
(668, 28),
(669, 28),
(670, 28),
(671, 28),
(672, 28),
(673, 28),
(674, 28),
(675, 28),
(676, 28),
(677, 28),
(678, 28),
(679, 28),
(680, 28),
(681, 28),
(682, 28),
(683, 28),
(684, 28),
(685, 28),
(686, 28),
(687, 28),
(688, 28),
(689, 28),
(690, 28),
(691, 28),
(692, 2),
(693, 1),
(694, 3),
(695, 27),
(696, 28),
(697, 28),
(698, 28),
(699, 28),
(700, 28),
(701, 28),
(702, 28),
(703, 28),
(704, 28),
(705, 28),
(706, 28),
(707, 28),
(708, 28),
(709, 23),
(710, 23),
(711, 23),
(712, 23),
(713, 23),
(714, 23),
(715, 23),
(716, 1),
(717, 1),
(718, 1),
(719, 1),
(720, 1),
(721, 28),
(722, 28),
(723, 28),
(724, 28),
(725, 28),
(726, 28),
(727, 28),
(728, 28),
(729, 28),
(730, 27),
(731, 27),
(732, 27),
(733, 27),
(734, 23),
(735, 23),
(736, 23),
(737, 23),
(738, 23),
(739, 23),
(740, 23),
(741, 23),
(742, 23),
(743, 23),
(744, 23),
(745, 23),
(746, 23),
(747, 23),
(748, 29),
(749, 29),
(750, 29),
(751, 29),
(752, 29),
(753, 29),
(754, 29),
(755, 29),
(756, 29),
(757, 29),
(758, 29),
(759, 29),
(760, 29),
(761, 29),
(762, 29),
(763, 29),
(764, 29),
(765, 29),
(766, 29),
(767, 29),
(768, 29),
(769, 29),
(770, 29),
(771, 29),
(772, 29),
(773, 29),
(774, 29),
(775, 29),
(776, 29),
(777, 1),
(778, 2),
(779, 3),
(780, 12),
(781, 13),
(782, 14),
(783, 15),
(784, 23),
(785, 24),
(786, 25),
(787, 26),
(788, 27),
(789, 28),
(790, 29),
(791, 29),
(792, 29),
(793, 29),
(794, 29),
(795, 29),
(796, 29),
(797, 29),
(798, 29),
(799, 29),
(800, 29),
(801, 29),
(802, 25),
(803, 26),
(804, 28),
(805, 29),
(806, 26),
(807, 29),
(808, 25),
(809, 25),
(810, 25),
(811, 25),
(812, 25),
(813, 25),
(814, 25),
(815, 28),
(816, 1),
(817, 2),
(818, 3),
(819, 12),
(820, 13),
(821, 14),
(822, 15),
(823, 24),
(824, 27),
(825, 23),
(826, 25),
(827, 26),
(828, 28),
(829, 29),
(830, 26),
(831, 29),
(832, 1),
(833, 27),
(834, 28),
(835, 1),
(836, 27),
(837, 28),
(838, 1),
(839, 1),
(840, 1),
(841, 1),
(842, 1),
(843, 1),
(844, 28),
(845, 1),
(846, 2),
(847, 3),
(848, 12),
(849, 13),
(850, 14),
(851, 15),
(852, 23),
(853, 27),
(854, 28),
(855, 1),
(856, 2),
(857, 3),
(858, 12),
(859, 13),
(860, 14),
(861, 15),
(862, 23),
(863, 27),
(864, 28),
(865, 1),
(866, 27),
(867, 28),
(868, 29),
(869, 29),
(870, 29),
(871, 29),
(872, 29),
(873, 29),
(874, 29),
(875, 29),
(876, 29),
(877, 29),
(878, 29),
(879, 29),
(880, 29),
(881, 29),
(882, 30),
(883, 30),
(884, 30),
(885, 30),
(886, 30),
(887, 30),
(888, 30),
(889, 30),
(890, 30),
(891, 30),
(892, 30),
(893, 30),
(894, 30),
(895, 30),
(896, 30),
(897, 30),
(898, 30),
(899, 30),
(900, 30),
(901, 30),
(902, 30),
(903, 30),
(904, 30),
(905, 30),
(906, 30),
(907, 30),
(908, 30),
(909, 30),
(910, 30),
(911, 30),
(912, 30),
(913, 30),
(914, 30),
(915, 30),
(916, 30),
(917, 30),
(918, 30),
(919, 30),
(920, 30),
(921, 31),
(922, 31),
(923, 31),
(924, 31),
(925, 31),
(926, 31),
(927, 31),
(928, 31),
(929, 31),
(930, 31),
(931, 31),
(932, 31),
(933, 31),
(934, 31),
(935, 31),
(936, 31),
(937, 31),
(938, 31),
(939, 31),
(940, 31),
(941, 31),
(942, 31),
(943, 31),
(944, 31),
(945, 31),
(946, 31),
(947, 31),
(948, 31),
(949, 32),
(950, 32),
(951, 32),
(952, 32),
(953, 32),
(954, 32),
(955, 32),
(956, 32),
(957, 32),
(958, 32),
(959, 32),
(960, 32),
(961, 32),
(962, 32),
(963, 32),
(964, 32),
(965, 32),
(966, 32),
(967, 32),
(968, 32),
(969, 32),
(970, 32),
(971, 32),
(972, 32),
(973, 32),
(974, 32),
(975, 32),
(976, 33),
(977, 33),
(978, 33),
(979, 33),
(980, 33),
(981, 33),
(982, 33),
(983, 33),
(984, 33),
(985, 33),
(986, 33),
(987, 33),
(988, 33),
(989, 33),
(990, 33),
(991, 33),
(992, 33),
(993, 33),
(994, 33),
(995, 33),
(996, 33),
(997, 33),
(998, 33),
(999, 33),
(1000, 33),
(1001, 33),
(1002, 33),
(1003, 30),
(1004, 31),
(1005, 32),
(1006, 33),
(1007, 30),
(1008, 31),
(1009, 25),
(1010, 26),
(1011, 29),
(1012, 30),
(1013, 31),
(1014, 1),
(1015, 2),
(1016, 3),
(1017, 12),
(1018, 13),
(1019, 14),
(1020, 15),
(1021, 23),
(1022, 27),
(1023, 28),
(1024, 1),
(1025, 2),
(1026, 3),
(1027, 12),
(1028, 13),
(1029, 14),
(1030, 15),
(1031, 27),
(1032, 28),
(1042, 25),
(1043, 26),
(1044, 29),
(1045, 30),
(1046, 31),
(1047, 32),
(1048, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price_replica`
--

CREATE TABLE `catalogrule_product_price_replica` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_replica`
--

CREATE TABLE `catalogrule_product_replica` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_rule_cl`
--

CREATE TABLE `catalogrule_rule_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogrule_rule_cl';

--
-- Dumping data for table `catalogrule_rule_cl`
--

INSERT INTO `catalogrule_rule_cl` (`version_id`, `entity_id`) VALUES
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
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_website`
--

CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

--
-- Dumping data for table `catalogrule_website`
--

INSERT INTO `catalogrule_website` (`rule_id`, `website_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext_cl`
--

CREATE TABLE `catalogsearch_fulltext_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_cl';

--
-- Dumping data for table `catalogsearch_fulltext_cl`
--

INSERT INTO `catalogsearch_fulltext_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 7),
(87, 7),
(88, 7),
(89, 7),
(90, 7),
(91, 7),
(92, 7),
(93, 7),
(94, 7),
(95, 7),
(96, 7),
(97, 7),
(98, 7),
(99, 7),
(100, 4),
(101, 5),
(102, 6),
(103, 7),
(104, 7),
(105, 7),
(106, 7),
(107, 4),
(108, 5),
(109, 6),
(110, 4),
(111, 5),
(112, 6),
(113, 4),
(114, 5),
(115, 6),
(116, 4),
(117, 5),
(118, 6),
(119, 4),
(120, 5),
(121, 6),
(122, 7),
(123, 8),
(124, 8),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 8),
(130, 8),
(131, 8),
(132, 8),
(133, 8),
(134, 8),
(135, 8),
(136, 8),
(137, 8),
(138, 8),
(139, 8),
(140, 8),
(141, 8),
(142, 8),
(143, 8),
(144, 8),
(145, 8),
(146, 8),
(147, 8),
(148, 8),
(149, 9),
(150, 9),
(151, 9),
(152, 9),
(153, 9),
(154, 9),
(155, 9),
(156, 9),
(157, 9),
(158, 9),
(159, 9),
(160, 9),
(161, 9),
(162, 9),
(163, 9),
(164, 9),
(165, 9),
(166, 9),
(167, 9),
(168, 9),
(169, 9),
(170, 9),
(171, 9),
(172, 9),
(173, 9),
(174, 9),
(175, 10),
(176, 10),
(177, 10),
(178, 10),
(179, 10),
(180, 10),
(181, 10),
(182, 10),
(183, 10),
(184, 10),
(185, 10),
(186, 10),
(187, 10),
(188, 10),
(189, 10),
(190, 10),
(191, 10),
(192, 10),
(193, 10),
(194, 10),
(195, 10),
(196, 10),
(197, 10),
(198, 10),
(199, 10),
(200, 10),
(201, 11),
(202, 11),
(203, 11),
(204, 11),
(205, 11),
(206, 11),
(207, 11),
(208, 11),
(209, 11),
(210, 11),
(211, 11),
(212, 11),
(213, 11),
(214, 11),
(215, 11),
(216, 11),
(217, 11),
(218, 11),
(219, 11),
(220, 11),
(221, 11),
(222, 8),
(223, 9),
(224, 10),
(225, 11),
(226, 11),
(227, 11),
(228, 11),
(229, 8),
(230, 9),
(231, 10),
(232, 8),
(233, 9),
(234, 10),
(235, 11),
(236, 11),
(237, 8),
(238, 9),
(239, 10),
(240, 11),
(241, 8),
(242, 9),
(243, 10),
(244, 11),
(245, 12),
(246, 12),
(247, 12),
(248, 12),
(249, 12),
(250, 12),
(251, 12),
(252, 12),
(253, 12),
(254, 12),
(255, 12),
(256, 12),
(257, 12),
(258, 12),
(259, 12),
(260, 12),
(261, 12),
(262, 12),
(263, 12),
(264, 12),
(265, 12),
(266, 12),
(267, 12),
(268, 12),
(269, 12),
(270, 12),
(271, 12),
(272, 13),
(273, 13),
(274, 13),
(275, 13),
(276, 13),
(277, 13),
(278, 13),
(279, 13),
(280, 13),
(281, 13),
(282, 13),
(283, 13),
(284, 13),
(285, 13),
(286, 13),
(287, 13),
(288, 13),
(289, 13),
(290, 13),
(291, 13),
(292, 13),
(293, 13),
(294, 13),
(295, 13),
(296, 13),
(297, 13),
(298, 13),
(299, 14),
(300, 14),
(301, 14),
(302, 14),
(303, 14),
(304, 14),
(305, 14),
(306, 14),
(307, 14),
(308, 14),
(309, 14),
(310, 14),
(311, 14),
(312, 14),
(313, 14),
(314, 14),
(315, 14),
(316, 14),
(317, 14),
(318, 14),
(319, 14),
(320, 14),
(321, 14),
(322, 14),
(323, 14),
(324, 14),
(325, 14),
(326, 15),
(327, 15),
(328, 15),
(329, 15),
(330, 15),
(331, 15),
(332, 15),
(333, 15),
(334, 15),
(335, 15),
(336, 15),
(337, 15),
(338, 15),
(339, 15),
(340, 15),
(341, 15),
(342, 15),
(343, 15),
(344, 15),
(345, 15),
(346, 15),
(347, 15),
(348, 12),
(349, 13),
(350, 14),
(351, 15),
(352, 15),
(490, 23),
(491, 23),
(492, 23),
(493, 23),
(494, 23),
(495, 23),
(496, 23),
(497, 23),
(498, 23),
(499, 23),
(500, 23),
(501, 23),
(502, 23),
(503, 23),
(504, 23),
(505, 23),
(506, 23),
(507, 23),
(508, 24),
(509, 24),
(510, 24),
(511, 24),
(512, 24),
(513, 24),
(514, 24),
(515, 24),
(516, 24),
(517, 24),
(518, 24),
(519, 24),
(520, 24),
(521, 24),
(522, 24),
(523, 24),
(524, 24),
(525, 24),
(526, 24),
(527, 24),
(528, 24),
(529, 24),
(530, 24),
(531, 24),
(532, 24),
(533, 24),
(534, 24),
(535, 24),
(536, 24),
(537, 24),
(538, 24),
(539, 24),
(540, 24),
(541, 15),
(542, 15),
(543, 12),
(544, 13),
(545, 14),
(546, 12),
(547, 13),
(548, 14),
(549, 15),
(550, 15),
(551, 15),
(552, 2),
(553, 2),
(554, 3),
(555, 3),
(556, 25),
(557, 25),
(558, 25),
(559, 25),
(560, 25),
(561, 25),
(562, 25),
(563, 25),
(564, 25),
(565, 25),
(566, 25),
(567, 25),
(568, 25),
(569, 25),
(570, 25),
(571, 25),
(572, 25),
(573, 25),
(574, 25),
(575, 25),
(576, 25),
(577, 25),
(578, 25),
(579, 25),
(580, 25),
(581, 25),
(582, 25),
(583, 25),
(584, 25),
(585, 25),
(586, 25),
(587, 25),
(588, 26),
(589, 26),
(590, 26),
(591, 26),
(592, 26),
(593, 26),
(594, 26),
(595, 26),
(596, 26),
(597, 26),
(598, 26),
(599, 26),
(600, 26),
(601, 26),
(602, 26),
(603, 26),
(604, 26),
(605, 26),
(606, 26),
(607, 26),
(608, 26),
(609, 26),
(610, 26),
(611, 26),
(612, 26),
(613, 26),
(614, 26),
(615, 26),
(616, 26),
(617, 26),
(618, 23),
(619, 23),
(620, 23),
(621, 23),
(622, 23),
(623, 23),
(624, 23),
(625, 23),
(626, 23),
(627, 23),
(628, 23),
(629, 23),
(630, 23),
(631, 23),
(632, 23),
(633, 23),
(634, 23),
(635, 23),
(636, 23),
(637, 23),
(638, 23),
(639, 23),
(640, 23),
(641, 23),
(642, 23),
(643, 27),
(644, 27),
(645, 27),
(646, 27),
(647, 27),
(648, 27),
(649, 27),
(650, 27),
(651, 27),
(652, 27),
(653, 27),
(654, 27),
(655, 27),
(656, 27),
(657, 27),
(658, 27),
(659, 27),
(660, 27),
(661, 27),
(662, 27),
(663, 27),
(664, 27),
(665, 27),
(666, 27),
(667, 27),
(668, 27),
(669, 27),
(670, 27),
(671, 27),
(672, 28),
(673, 28),
(674, 28),
(675, 28),
(676, 28),
(677, 28),
(678, 28),
(679, 28),
(680, 28),
(681, 28),
(682, 28),
(683, 28),
(684, 28),
(685, 28),
(686, 28),
(687, 28),
(688, 28),
(689, 28),
(690, 28),
(691, 28),
(692, 28),
(693, 28),
(694, 28),
(695, 28),
(696, 28),
(697, 28),
(698, 28),
(699, 28),
(700, 28),
(701, 28),
(702, 28),
(703, 28),
(704, 28),
(705, 28),
(706, 28),
(707, 28),
(708, 28),
(709, 28),
(710, 28),
(711, 28),
(712, 28),
(713, 2),
(714, 1),
(715, 3),
(716, 27),
(717, 28),
(718, 28),
(719, 28),
(720, 28),
(721, 28),
(722, 28),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 28),
(728, 28),
(729, 28),
(730, 23),
(731, 23),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 28),
(740, 28),
(741, 28),
(742, 28),
(743, 28),
(744, 27),
(745, 27),
(746, 27),
(747, 27),
(748, 23),
(749, 23),
(750, 23),
(751, 23),
(752, 23),
(753, 23),
(754, 23),
(755, 23),
(756, 23),
(757, 23),
(758, 23),
(759, 29),
(760, 29),
(761, 29),
(762, 29),
(763, 29),
(764, 29),
(765, 29),
(766, 29),
(767, 29),
(768, 29),
(769, 29),
(770, 29),
(771, 29),
(772, 29),
(773, 29),
(774, 29),
(775, 29),
(776, 29),
(777, 29),
(778, 29),
(779, 29),
(780, 29),
(781, 29),
(782, 29),
(783, 29),
(784, 29),
(785, 29),
(786, 29),
(787, 29),
(788, 29),
(789, 29),
(790, 29),
(791, 29),
(792, 29),
(793, 29),
(794, 25),
(795, 25),
(796, 1),
(797, 1),
(798, 1),
(799, 1),
(800, 1),
(801, 1),
(802, 1),
(803, 1),
(804, 29),
(805, 29),
(806, 29),
(807, 29),
(808, 29),
(809, 29),
(810, 29),
(811, 29),
(812, 29),
(813, 29),
(814, 29),
(815, 29),
(816, 29),
(817, 30),
(818, 30),
(819, 30),
(820, 30),
(821, 30),
(822, 30),
(823, 30),
(824, 30),
(825, 30),
(826, 30),
(827, 30),
(828, 30),
(829, 30),
(830, 30),
(831, 30),
(832, 30),
(833, 30),
(834, 30),
(835, 30),
(836, 30),
(837, 30),
(838, 30),
(839, 30),
(840, 30),
(841, 30),
(842, 30),
(843, 30),
(844, 30),
(845, 30),
(846, 30),
(847, 30),
(848, 30),
(849, 31),
(850, 31),
(851, 31),
(852, 31),
(853, 31),
(854, 31),
(855, 31),
(856, 31),
(857, 31),
(858, 31),
(859, 31),
(860, 31),
(861, 31),
(862, 31),
(863, 31),
(864, 31),
(865, 31),
(866, 31),
(867, 31),
(868, 31),
(869, 31),
(870, 31),
(871, 31),
(872, 31),
(873, 31),
(874, 31),
(875, 31),
(876, 32),
(877, 32),
(878, 32),
(879, 32),
(880, 32),
(881, 32),
(882, 32),
(883, 32),
(884, 32),
(885, 32),
(886, 32),
(887, 32),
(888, 32),
(889, 32),
(890, 32),
(891, 32),
(892, 32),
(893, 32),
(894, 32),
(895, 32),
(896, 32),
(897, 32),
(898, 32),
(899, 32),
(900, 32),
(901, 32),
(902, 32),
(903, 33),
(904, 33),
(905, 33),
(906, 33),
(907, 33),
(908, 33),
(909, 33),
(910, 33),
(911, 33),
(912, 33),
(913, 33),
(914, 33),
(915, 33),
(916, 33),
(917, 33),
(918, 33),
(919, 33),
(920, 33),
(921, 33),
(922, 33),
(923, 33),
(924, 33),
(925, 33),
(926, 33),
(927, 33),
(928, 33),
(929, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1_tmp';

--
-- Dumping data for table `catalogsearch_fulltext_scope1`
--

INSERT INTO `catalogsearch_fulltext_scope1` (`entity_id`, `attribute_id`, `data_index`) VALUES
(1, 73, 'Dell Inspirion'),
(1, 74, 'Dell'),
(1, 75, 'Dell 15 Core i3 4th Gen - (4 GB/500 GB HDD/Windows 8.1) 3542 Laptop (15.6 inch, SIlver, 2.16 kg)'),
(1, 76, 'Dell 15 Core i3 4th Gen'),
(2, 73, 'Lenovo'),
(2, 74, 'Lenovo'),
(2, 75, 'Lenovo Laptop core i3 6th generation 8GB RAM, 1 TB HDD'),
(2, 76, 'Lenovo Laptop core i3 '),
(3, 73, 'Accer Aspire'),
(3, 74, 'Accer Aspire'),
(3, 75, 'Accer Aspire Laptop Key Features Intel Core i3-6100U Processor 2.3 GHz Processor 4 GB DDR3L 1024 GB HDD Intel HD Graphics 15.6 Inches &amp; 1366 x 768 Pixels'),
(3, 76, 'Accer Aspire Laptop '),
(15, 73, 'HP | HP-2 | HP-4 | HP-6'),
(15, 74, 'HP'),
(24, 0, 'laptop | Pendrive'),
(24, 73, 'Gift | Dell Inspirion | Lenovo | HP-6 | Sandisk-Pendrive'),
(24, 74, 'Gift'),
(24, 75, 'Dell 15 Core i3 4th Gen - (4 GB/500 GB HDD/Windows 8.1) 3542 Laptop (15.6 inch, SIlver, 2.16 kg) | Lenovo Laptop core i3 6th generation 8GB RAM, 1 TB HDD | pendrive'),
(24, 76, 'Dell 15 Core i3 4th Gen | Lenovo Laptop core i3  | pendrive'),
(25, 73, 'Addidas T-Shirts'),
(25, 74, 'Addidas T-Shirts'),
(25, 75, 'Addidas Men''s T-Shirts with different sizes in XL,XXL in coton'),
(25, 76, 'Addidas Men''s T-Shirts'),
(26, 73, 'Black Trousers'),
(26, 74, 'Black Trousers'),
(26, 75, 'Black Men''s Elegant Trousers'),
(26, 76, 'Black Trousers'),
(27, 73, 'Dell Inspiron 3552 (Z565162HIN9) Notebook'),
(27, 74, 'Dell-3552'),
(27, 75, 'Dell Inspiron 3552 (Z565162HIN9) Notebook (15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G) 2.4GHz Intel Pentium N3700 processor4GB DDR3L RAM500GB 5400rpm Serial ATA hard drive15.6-inch screen, Integrated GraphicsWindows 10 operating system'),
(27, 76, 'Dell Inspiron 3552 (Z565162HIN9) Notebook (15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G)'),
(28, 73, 'Dell 3467 (A561201UIN9) Notebook'),
(28, 74, 'Dell-3467'),
(28, 75, 'Dell 3467 (A561201UIN9) Notebook (14 inch|Core i3|4 GB|Linux|1 TB) 14 inch Screen Intel Core i3 Processor 4 GB Memory 1 TB HDD'),
(28, 76, 'Dell 3467 (A561201UIN9) Notebook'),
(29, 73, 'Formal Trouser'),
(29, 74, 'Formal Men''s Trouser'),
(29, 75, 'Men- Formal Trouser'),
(29, 76, 'Men Formal Trouser'),
(30, 73, 'Proteus Fitness Jackshirt'),
(30, 74, 'MJ12'),
(30, 75, 'Proteus Fitness Jackshirt For Men'),
(30, 76, 'Proteus Fitness Jackshirt '),
(31, 73, 'Proteus Fitness Jackshirt-XL-Orange'),
(31, 74, 'MJ12-XL-Orange'),
(32, 73, 'Proteus Fitness Jackshirt-XL-Blue'),
(32, 74, 'MJ12-XL-Blue'),
(32, 75, 'Proteus Fitness Jackshirt-XL-Blue for men'),
(32, 76, 'Proteus Fitness Jackshirt-XL-Blue'),
(33, 73, 'Proteus Fitness Jackshirt-XL-Black'),
(33, 74, 'MJ12-XL-Black'),
(33, 75, 'Proteus Fitness Jackshirt-XL-Black for Men'),
(33, 76, 'Proteus Fitness Jackshirt-XL-Black');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, '2018-04-20 08:31:41', '2018-05-01 09:41:13', '1', 0, 0, 3),
(8, 3, 1, '2018-04-27 11:23:12', '2018-05-02 11:42:46', '1/8', 1, 1, 0),
(10, 3, 8, '2018-04-28 08:06:52', '2018-05-03 04:55:59', '1/8/10', 3, 2, 3),
(11, 3, 10, '2018-04-28 08:08:19', '2018-05-02 08:28:56', '1/8/10/11', 1, 3, 0),
(12, 3, 10, '2018-04-28 08:10:16', '2018-05-01 06:02:41', '1/8/10/12', 2, 3, 0),
(14, 3, 8, '2018-04-28 09:11:26', '2018-05-02 12:48:28', '1/8/14', 5, 2, 1),
(15, 3, 14, '2018-04-28 09:14:10', '2018-05-01 06:03:48', '1/8/14/15', 1, 3, 0),
(16, 3, 10, '2018-05-01 09:41:13', '2018-05-01 10:51:35', '1/8/10/16', 3, 3, 0);

--
-- Triggers `catalog_category_entity`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_after_delete` AFTER DELETE ON `catalog_category_entity` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_after_insert` AFTER INSERT ON `catalog_category_entity` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_after_update` AFTER UPDATE ON `catalog_category_entity` FOR EACH ROW BEGIN
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`attribute_set_id` != OLD.`attribute_set_id` OR NEW.`parent_id` != OLD.`parent_id` OR NEW.`created_at` != OLD.`created_at` OR NEW.`path` != OLD.`path` OR NEW.`position` != OLD.`position` OR NEW.`level` != OLD.`level` OR NEW.`children_count` != OLD.`children_count`) THEN INSERT IGNORE INTO `catalog_category_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(11, 61, 0, 8, NULL),
(12, 62, 0, 8, NULL),
(13, 61, 0, 11, NULL),
(14, 62, 0, 11, NULL),
(15, 61, 0, 10, NULL),
(16, 62, 0, 10, NULL),
(19, 61, 0, 14, NULL),
(20, 62, 0, 14, NULL),
(23, 61, 0, 15, NULL),
(24, 62, 0, 15, NULL),
(25, 61, 0, 12, NULL),
(26, 62, 0, 12, NULL),
(27, 61, 0, 16, NULL),
(28, 62, 0, 16, NULL);

--
-- Triggers `catalog_category_entity_datetime`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_datetime_after_delete` AFTER DELETE ON `catalog_category_entity_datetime` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_datetime_after_insert` AFTER INSERT ON `catalog_category_entity_datetime` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_datetime_after_update` AFTER UPDATE ON `catalog_category_entity_datetime` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Triggers `catalog_category_entity_decimal`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_decimal_after_delete` AFTER DELETE ON `catalog_category_entity_decimal` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_decimal_after_insert` AFTER INSERT ON `catalog_category_entity_decimal` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_decimal_after_update` AFTER UPDATE ON `catalog_category_entity_decimal` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 69, 0, 1, 1),
(36, 46, 0, 8, 1),
(37, 54, 0, 8, 0),
(38, 69, 0, 8, 0),
(39, 70, 0, 8, 0),
(40, 71, 0, 8, 1),
(43, 53, 0, 8, NULL),
(49, 46, 0, 10, 1),
(50, 54, 0, 10, 1),
(51, 69, 0, 10, 1),
(52, 70, 0, 10, 0),
(53, 71, 0, 10, 1),
(54, 46, 0, 11, 1),
(55, 54, 0, 11, 1),
(56, 69, 0, 11, 1),
(57, 70, 0, 11, 0),
(58, 71, 0, 11, 1),
(59, 46, 0, 12, 1),
(60, 54, 0, 12, 1),
(61, 69, 0, 12, 1),
(62, 70, 0, 12, 1),
(63, 71, 0, 12, 1),
(64, 53, 0, 11, NULL),
(65, 53, 0, 10, NULL),
(72, 46, 0, 14, 1),
(73, 54, 0, 14, 1),
(74, 69, 0, 14, 1),
(75, 70, 0, 14, 0),
(76, 71, 0, 14, 0),
(77, 53, 0, 14, NULL),
(78, 46, 0, 15, 1),
(79, 54, 0, 15, 1),
(80, 69, 0, 15, 1),
(81, 70, 0, 15, 1),
(82, 71, 0, 15, 1),
(84, 53, 0, 15, NULL),
(85, 53, 0, 12, NULL),
(86, 46, 0, 16, 1),
(87, 54, 0, 16, 1),
(88, 69, 0, 16, 1),
(89, 70, 0, 16, 0),
(90, 71, 0, 16, 1),
(91, 53, 0, 16, NULL),
(92, 145, 0, 14, NULL),
(93, 148, 0, 14, 8),
(94, 152, 0, 14, 2),
(95, 156, 0, 14, NULL),
(96, 145, 0, 10, NULL),
(97, 148, 0, 10, 1),
(98, 152, 0, 10, 5),
(99, 156, 0, 10, NULL),
(100, 145, 0, 11, NULL),
(101, 148, 0, 11, NULL),
(102, 152, 0, 11, NULL),
(103, 156, 0, 11, NULL),
(104, 145, 0, 8, NULL),
(105, 148, 0, 8, NULL),
(106, 152, 0, 8, NULL),
(107, 156, 0, 8, NULL);

--
-- Triggers `catalog_category_entity_int`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_int_after_delete` AFTER DELETE ON `catalog_category_entity_int` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_int_after_insert` AFTER INSERT ON `catalog_category_entity_int` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_int_after_update` AFTER UPDATE ON `catalog_category_entity_int` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_category_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(32, 47, 0, 8, NULL),
(33, 50, 0, 8, NULL),
(34, 51, 0, 8, NULL),
(35, 64, 0, 8, NULL),
(36, 50, 0, 10, 'Men'),
(37, 47, 0, 11, NULL),
(38, 50, 0, 11, 'trouser'),
(39, 51, 0, 11, 'trouser'),
(40, 64, 0, 11, NULL),
(41, 47, 0, 10, NULL),
(42, 51, 0, 10, NULL),
(43, 64, 0, 10, NULL),
(44, 67, 0, 11, 'position,name,price'),
(50, 47, 0, 14, NULL),
(51, 50, 0, 14, 'laptop'),
(52, 51, 0, 14, 'laptop'),
(53, 64, 0, 14, NULL),
(54, 50, 0, 15, 'dell'),
(55, 51, 0, 15, 'dell'),
(56, 67, 0, 15, 'position,name,price'),
(61, 47, 0, 15, NULL),
(62, 64, 0, 15, NULL),
(63, 47, 0, 12, NULL),
(64, 50, 0, 12, NULL),
(65, 51, 0, 12, NULL),
(66, 64, 0, 12, NULL),
(67, 47, 0, 16, NULL),
(68, 50, 0, 16, NULL),
(69, 51, 0, 16, NULL),
(70, 64, 0, 16, NULL),
(71, 146, 0, 14, NULL),
(72, 149, 0, 14, NULL),
(73, 153, 0, 14, NULL),
(74, 157, 0, 14, NULL),
(75, 146, 0, 10, NULL),
(76, 149, 0, 10, '<p>Men</p>'),
(77, 153, 0, 10, NULL),
(78, 157, 0, 10, NULL),
(79, 146, 0, 11, NULL),
(80, 149, 0, 11, NULL),
(81, 153, 0, 11, NULL),
(82, 157, 0, 11, NULL),
(83, 146, 0, 8, NULL),
(84, 149, 0, 8, NULL),
(85, 153, 0, 8, NULL),
(86, 157, 0, 8, NULL);

--
-- Triggers `catalog_category_entity_text`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_text_after_delete` AFTER DELETE ON `catalog_category_entity_text` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_text_after_insert` AFTER INSERT ON `catalog_category_entity_text` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_text_after_update` AFTER UPDATE ON `catalog_category_entity_text` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 45, 0, 1, 'Root Catalog'),
(64, 45, 0, 8, 'Default Category'),
(65, 52, 0, 8, 'PRODUCTS'),
(66, 117, 0, 8, 'default-category'),
(72, 49, 0, 8, NULL),
(73, 60, 0, 8, ''),
(74, 63, 0, 8, '2columns-left'),
(111, 45, 0, 10, 'Men'),
(112, 49, 0, 10, 'Men'),
(113, 52, 0, 10, 'PRODUCTS'),
(114, 117, 0, 10, 'men'),
(115, 118, 0, 10, 'men'),
(116, 45, 0, 11, 'Trouser'),
(117, 52, 0, 11, 'PRODUCTS_AND_PAGE'),
(118, 117, 0, 11, 'trouser'),
(119, 118, 0, 11, 'men/trouser'),
(120, 45, 0, 12, 'T-Shirts'),
(121, 52, 0, 12, 'PRODUCTS'),
(122, 117, 0, 12, 't-shirts'),
(123, 118, 0, 12, 'men/t-shirts'),
(126, 49, 0, 11, 'trouser'),
(127, 60, 0, 11, ''),
(128, 63, 0, 11, '2columns-left'),
(133, 60, 0, 10, ''),
(134, 63, 0, 10, '2columns-left'),
(154, 45, 0, 14, 'Laptop'),
(155, 52, 0, 14, 'PRODUCTS'),
(156, 117, 0, 14, 'laptop'),
(157, 118, 0, 14, 'laptop'),
(159, 49, 0, 14, 'laptop'),
(160, 60, 0, 14, ''),
(161, 63, 0, 14, '2columns-left'),
(163, 45, 0, 15, 'Dell'),
(164, 49, 0, 15, 'dell'),
(165, 52, 0, 15, 'PRODUCTS'),
(166, 117, 0, 15, 'dell'),
(167, 118, 0, 15, 'laptop/dell'),
(175, 60, 0, 15, ''),
(176, 63, 0, 15, '2columns-left'),
(181, 49, 0, 12, NULL),
(182, 60, 0, 12, NULL),
(183, 63, 0, 12, '2columns-left'),
(184, 45, 0, 16, 'Jackets'),
(185, 52, 0, 16, 'PRODUCTS'),
(186, 117, 0, 16, 'jackets-men'),
(187, 118, 0, 16, 'men/jackets-men'),
(189, 49, 0, 16, NULL),
(190, 60, 0, 16, ''),
(191, 63, 0, 16, '2columns-left'),
(193, 140, 0, 14, 'mega'),
(194, 141, 0, 14, 'width_100'),
(195, 142, 0, 14, NULL),
(196, 144, 0, 14, 'only_block_content'),
(197, 147, 0, 14, 'sub_expanded'),
(198, 150, 0, 14, 'width_100'),
(199, 151, 0, 14, 'only_static_block'),
(200, 154, 0, 14, 'width_standard'),
(201, 155, 0, 14, 'no'),
(206, 140, 0, 10, 'mega'),
(207, 141, 0, 10, 'width_standard'),
(208, 142, 0, 10, 'category_label1'),
(209, 144, 0, 10, 'only_block_content'),
(210, 147, 0, 10, 'sub_menu'),
(211, 150, 0, 10, 'width_100'),
(212, 151, 0, 10, 'only_static_block'),
(213, 154, 0, 10, 'width_standard'),
(214, 155, 0, 10, 'no'),
(219, 140, 0, 11, 'mega'),
(220, 141, 0, 11, 'width_100'),
(221, 142, 0, 11, 'category_label1'),
(222, 144, 0, 11, 'no'),
(223, 147, 0, 11, 'no'),
(224, 150, 0, 11, 'width_standard'),
(225, 151, 0, 11, 'no'),
(226, 154, 0, 11, 'width_standard'),
(227, 155, 0, 11, 'no'),
(237, 140, 0, 8, 'mega'),
(238, 141, 0, 8, 'width_standard'),
(239, 142, 0, 8, NULL),
(240, 144, 0, 8, 'no'),
(241, 147, 0, 8, 'no'),
(242, 150, 0, 8, 'width_standard'),
(243, 151, 0, 8, 'no'),
(244, 154, 0, 8, 'width_standard'),
(245, 155, 0, 8, 'no'),
(247, 118, 0, 8, NULL),
(249, 143, 0, 10, 'mt09-blue_main.jpg');

--
-- Triggers `catalog_category_entity_varchar`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_varchar_after_delete` AFTER DELETE ON `catalog_category_entity_varchar` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_varchar_after_insert` AFTER INSERT ON `catalog_category_entity_varchar` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_entity_varchar_after_update` AFTER UPDATE ON `catalog_category_entity_varchar` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_category_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_flat_cl`
--

CREATE TABLE `catalog_category_flat_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalog_category_flat_cl';

--
-- Dumping data for table `catalog_category_flat_cl`
--

INSERT INTO `catalog_category_flat_cl` (`version_id`, `entity_id`) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 1),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 1),
(39, 4),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 1),
(58, 4),
(59, 5),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 1),
(79, 4),
(80, 5),
(81, 6),
(82, 1),
(83, 4),
(84, 7),
(85, 7),
(86, 7),
(87, 7),
(88, 7),
(89, 7),
(90, 7),
(91, 7),
(92, 7),
(93, 7),
(94, 7),
(95, 7),
(96, 7),
(97, 7),
(98, 7),
(99, 7),
(100, 7),
(101, 7),
(102, 5),
(103, 5),
(104, 5),
(105, 5),
(106, 5),
(107, 5),
(108, 5),
(109, 2),
(110, 2),
(111, 8),
(112, 8),
(113, 8),
(114, 10),
(115, 14),
(116, 9),
(117, 9),
(118, 9),
(119, 9),
(120, 9),
(121, 9),
(122, 9),
(123, 9),
(124, 9),
(125, 9),
(126, 9),
(127, 9),
(128, 9),
(129, 1),
(130, 8),
(131, 9),
(132, 15),
(133, 15),
(134, 15),
(135, 15),
(136, 15),
(137, 15),
(138, 15),
(139, 8),
(140, 8),
(141, 8),
(142, 10),
(143, 12),
(144, 12),
(145, 12),
(146, 12),
(147, 12),
(148, 12),
(149, 12),
(150, 12),
(151, 12),
(152, 12),
(153, 12),
(154, 14),
(155, 10),
(156, 12),
(157, 11),
(158, 10),
(159, 11),
(160, 12),
(161, 15),
(162, 14),
(163, 16),
(164, 16),
(165, 16),
(166, 16),
(167, 16),
(168, 16),
(169, 16),
(170, 16),
(171, 16),
(172, 16),
(173, 16),
(174, 16),
(175, 16),
(176, 14),
(177, 14),
(178, 14),
(179, 14),
(180, 14),
(181, 14),
(182, 14),
(183, 14),
(184, 14),
(185, 14),
(186, 14),
(187, 14),
(188, 14),
(189, 14),
(190, 14),
(191, 14),
(192, 14),
(193, 14),
(194, 14),
(195, 14),
(196, 14),
(197, 14),
(198, 10),
(199, 10),
(200, 10),
(201, 10),
(202, 10),
(203, 10),
(204, 10),
(205, 10),
(206, 10),
(207, 10),
(208, 10),
(209, 10),
(210, 10),
(211, 10),
(212, 10),
(213, 10),
(214, 10),
(215, 10),
(216, 10),
(217, 11),
(218, 11),
(219, 11),
(220, 11),
(221, 11),
(222, 11),
(223, 11),
(224, 11),
(225, 11),
(226, 11),
(227, 11),
(228, 11),
(229, 11),
(230, 8),
(231, 8),
(232, 8),
(233, 8),
(234, 8),
(235, 8),
(236, 8),
(237, 8),
(238, 8),
(239, 8),
(240, 8),
(241, 8),
(242, 8),
(243, 8),
(244, 8),
(245, 8),
(246, 8),
(247, 8),
(248, 8),
(249, 10),
(250, 15),
(251, 10),
(252, 11),
(253, 8),
(254, 14),
(255, 16);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_flat_store_1`
--

CREATE TABLE `catalog_category_flat_store_1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'created_at',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `mega_bottom_block_content` text COMMENT 'Bottom Block Content',
  `mega_bottom_block_id` int(11) DEFAULT NULL COMMENT 'Selct Bottom Static Block',
  `mega_category_label` varchar(255) DEFAULT NULL COMMENT 'Category Label',
  `mega_category_thumbnail_image` varchar(255) DEFAULT NULL COMMENT 'Category Thumbnail Image',
  `mega_display_bottom_block` varchar(255) DEFAULT NULL COMMENT 'Display Bottom Block?',
  `mega_display_left_block` varchar(255) DEFAULT NULL COMMENT 'Display Left Block?',
  `mega_display_right_block` varchar(255) DEFAULT NULL COMMENT 'Display Right Block?',
  `mega_display_top_block` varchar(255) DEFAULT NULL COMMENT 'Display Top Block?',
  `mega_left_block_content` text COMMENT 'Left Block Content',
  `mega_left_block_id` int(11) DEFAULT NULL COMMENT 'Selct Left Static Block',
  `mega_left_block_width` varchar(255) DEFAULT NULL COMMENT 'Left Block Width',
  `mega_menu_type` varchar(255) DEFAULT NULL COMMENT 'Menu Type',
  `mega_menu_width` varchar(255) DEFAULT NULL COMMENT 'Menu Width',
  `mega_right_block_content` text COMMENT 'Right Block Content',
  `mega_right_block_id` int(11) DEFAULT NULL COMMENT 'Selct Right Static Block',
  `mega_right_block_width` varchar(255) DEFAULT NULL COMMENT 'Right Block Width',
  `mega_top_block_content` text COMMENT 'Top Block Content',
  `mega_top_block_id` int(11) DEFAULT NULL COMMENT 'Selct Top Static Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat';

--
-- Dumping data for table `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `mega_bottom_block_content`, `mega_bottom_block_id`, `mega_category_label`, `mega_category_thumbnail_image`, `mega_display_bottom_block`, `mega_display_left_block`, `mega_display_right_block`, `mega_display_top_block`, `mega_left_block_content`, `mega_left_block_id`, `mega_left_block_width`, `mega_menu_type`, `mega_menu_width`, `mega_right_block_content`, `mega_right_block_id`, `mega_right_block_width`, `mega_top_block_content`, `mega_top_block_id`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `url_key`, `url_path`) VALUES
(1, 3, 0, '2018-04-20 08:31:41', '2018-05-01 09:41:13', '1', 0, 0, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, NULL),
(8, 3, 1, '2018-04-27 11:23:12', '2018-05-02 11:42:46', '1/8', 1, 1, 0, 1, NULL, NULL, NULL, 1, '11', NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'no', 'no', 'no', 'no', NULL, NULL, 'width_standard', 'mega', 'width_standard', NULL, NULL, 'width_standard', NULL, NULL, NULL, NULL, NULL, 'Default Category', '2columns-left', NULL, 'default-category', NULL),
(10, 3, 8, '2018-04-28 08:06:52', '2018-05-03 04:55:59', '1/8/10', 3, 2, 3, 1, NULL, NULL, NULL, 1, '11', NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'category_label1', 'mt09-blue_main.jpg', 'no', 'sub_menu', 'only_static_block', 'only_block_content', '<p>Men</p>', 1, 'width_100', 'mega', 'width_standard', NULL, 5, 'width_standard', NULL, NULL, NULL, 'Men', 'Men', 'Men', '2columns-left', NULL, 'men', 'men'),
(11, 3, 10, '2018-04-28 08:08:19', '2018-05-02 08:28:56', '1/8/10/11', 1, 3, 0, 1, NULL, 'position,name,price', NULL, 1, '11', NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS_AND_PAGE', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'category_label1', NULL, 'no', 'no', 'no', 'no', NULL, NULL, 'width_standard', 'mega', 'width_100', NULL, NULL, 'width_standard', NULL, NULL, 'trouser', 'trouser', 'trouser', 'Trouser', '2columns-left', NULL, 'trouser', 'men/trouser'),
(12, 3, 10, '2018-04-28 08:10:16', '2018-05-01 06:02:41', '1/8/10/12', 2, 3, 0, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T-Shirts', '2columns-left', NULL, 't-shirts', 'men/t-shirts'),
(14, 3, 8, '2018-04-28 09:11:26', '2018-05-02 12:48:28', '1/8/14', 5, 2, 1, 1, NULL, NULL, NULL, 0, '11', NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 'no', 'sub_expanded', 'only_static_block', 'only_block_content', NULL, 8, 'width_100', 'mega', 'width_100', NULL, 2, 'width_standard', NULL, NULL, 'laptop', 'laptop', 'laptop', 'Laptop', '2columns-left', NULL, 'laptop', 'laptop'),
(15, 3, 14, '2018-04-28 09:14:10', '2018-05-01 06:03:48', '1/8/14/15', 1, 3, 0, 1, NULL, 'position,name,price', NULL, 1, '11', NULL, NULL, NULL, 1, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dell', 'dell', 'dell', 'Dell', '2columns-left', NULL, 'dell', 'laptop/dell'),
(16, 3, 10, '2018-05-01 09:41:13', '2018-05-01 10:51:35', '1/8/10/16', 3, 3, 0, 1, NULL, NULL, NULL, 1, '11', NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jackets', '2columns-left', NULL, 'jackets-men', 'men/jackets-men');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL COMMENT 'Entity ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`entity_id`, `category_id`, `product_id`, `position`) VALUES
(28, 8, 1, 0),
(29, 8, 2, 0),
(30, 8, 3, 0),
(31, 8, 12, 0),
(32, 8, 13, 0),
(33, 8, 14, 0),
(34, 8, 15, 0),
(35, 8, 23, 0),
(36, 8, 24, 0),
(37, 8, 25, 0),
(38, 8, 26, 0),
(39, 8, 27, 0),
(40, 8, 28, 0),
(41, 8, 29, 0),
(46, 11, 26, 1),
(47, 11, 29, 1),
(48, 12, 25, 0),
(62, 15, 1, 1),
(63, 15, 27, 1),
(64, 15, 28, 1),
(66, 16, 30, 1),
(68, 16, 31, 1),
(69, 16, 32, 1),
(70, 16, 33, 1),
(71, 14, 1, 1),
(72, 14, 2, 1),
(73, 14, 3, 1),
(74, 14, 12, 1),
(75, 14, 13, 1),
(76, 14, 14, 1),
(77, 14, 15, 1),
(78, 14, 27, 1),
(79, 14, 28, 1),
(80, 10, 25, 1),
(81, 10, 26, 1),
(82, 10, 29, 1),
(83, 10, 30, 1),
(84, 10, 31, 1),
(85, 10, 32, 1),
(86, 10, 33, 1);

--
-- Triggers `catalog_category_product`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_product_after_delete` AFTER DELETE ON `catalog_category_product` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`product_id`);
INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (OLD.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_product_after_insert` AFTER INSERT ON `catalog_category_product` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`product_id`);
INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (NEW.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_category_product_after_update` AFTER UPDATE ON `catalog_category_product` FOR EACH ROW BEGIN
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`category_id` != OLD.`category_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`position` != OLD.`position`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`category_id` != OLD.`category_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`position` != OLD.`position`) THEN INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_cl`
--

CREATE TABLE `catalog_category_product_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalog_category_product_cl';

--
-- Dumping data for table `catalog_category_product_cl`
--

INSERT INTO `catalog_category_product_cl` (`version_id`, `entity_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 1),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 1),
(18, 4),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 1),
(27, 4),
(28, 5),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 1),
(37, 4),
(38, 5),
(39, 6),
(40, 1),
(41, 4),
(42, 7),
(43, 7),
(44, 7),
(45, 7),
(46, 7),
(47, 7),
(48, 7),
(49, 5),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 2),
(55, 2),
(56, 2),
(57, 3),
(58, 1),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
(64, 8),
(65, 8),
(66, 2),
(67, 4),
(68, 8),
(69, 8),
(70, 8),
(71, 1),
(72, 1),
(73, 8),
(74, 4),
(75, 8),
(76, 3),
(77, 2),
(78, 8),
(79, 1),
(80, 1),
(81, 8),
(82, 8),
(83, 5),
(84, 7),
(85, 4),
(86, 4),
(87, 3),
(88, 1),
(89, 8),
(90, 9),
(91, 9),
(92, 9),
(93, 9),
(94, 9),
(95, 9),
(96, 9),
(97, 1),
(98, 8),
(99, 1),
(100, 8),
(101, 9),
(102, 5),
(103, 7),
(104, 4),
(105, 4),
(106, 1),
(107, 8),
(108, 9),
(109, 1),
(110, 8),
(111, 5),
(112, 7),
(113, 4),
(114, 4),
(115, 1),
(116, 8),
(117, 1),
(118, 4),
(119, 8),
(120, 5),
(121, 1),
(122, 4),
(123, 8),
(124, 7),
(125, 4),
(126, 1),
(127, 8),
(128, 10),
(129, 10),
(130, 10),
(131, 10),
(132, 10),
(133, 10),
(134, 10),
(135, 1),
(136, 8),
(137, 10),
(138, 11),
(139, 11),
(140, 11),
(141, 11),
(142, 11),
(143, 11),
(144, 11),
(145, 1),
(146, 8),
(147, 10),
(148, 12),
(149, 12),
(150, 12),
(151, 12),
(152, 12),
(153, 12),
(154, 12),
(155, 11),
(156, 10),
(157, 11),
(158, 1),
(159, 2),
(160, 8),
(161, 13),
(162, 13),
(163, 13),
(164, 13),
(165, 13),
(166, 13),
(167, 13),
(168, 1),
(169, 2),
(170, 8),
(171, 1),
(172, 2),
(173, 8),
(174, 13),
(175, 1),
(176, 2),
(177, 8),
(178, 1),
(179, 2),
(180, 8),
(181, 13),
(182, 13),
(183, 1),
(184, 8),
(185, 1),
(186, 2),
(187, 8),
(188, 13),
(189, 1),
(190, 2),
(191, 8),
(192, 3),
(193, 2),
(194, 1),
(195, 8),
(196, 14),
(197, 14),
(198, 14),
(199, 14),
(200, 14),
(201, 14),
(202, 14),
(203, 14),
(204, 1),
(205, 8),
(206, 1),
(207, 8),
(208, 14),
(209, 1),
(210, 8),
(211, 14),
(212, 15),
(213, 15),
(214, 15),
(215, 15),
(216, 15),
(217, 15),
(218, 15),
(219, 8),
(220, 10),
(221, 14),
(222, 9),
(223, 9),
(224, 9),
(225, 9),
(226, 1),
(227, 8),
(228, 9),
(229, 15),
(230, 12),
(231, 12),
(232, 11),
(233, 12),
(234, 15),
(235, 1),
(236, 8),
(237, 10),
(238, 16),
(239, 16),
(240, 16),
(241, 16),
(242, 16),
(243, 16),
(244, 16),
(245, 16),
(246, 16),
(247, 16),
(248, 16),
(249, 14),
(250, 14),
(251, 14),
(252, 14),
(253, 10),
(254, 10),
(255, 10),
(256, 10),
(257, 11),
(258, 11),
(259, 11),
(260, 11),
(261, 11),
(262, 8),
(263, 8),
(264, 8),
(265, 8),
(266, 14);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(8, 1, 0, 1, 1, 4),
(8, 2, 0, 1, 1, 4),
(8, 3, 0, 1, 1, 4),
(8, 15, 0, 1, 1, 4),
(8, 24, 0, 1, 1, 4),
(8, 25, 0, 1, 1, 4),
(8, 26, 0, 1, 1, 4),
(8, 27, 0, 1, 1, 4),
(8, 28, 0, 1, 1, 4),
(8, 29, 0, 1, 1, 4),
(8, 30, 1, 1, 1, 4),
(8, 31, 1, 1, 1, 4),
(8, 32, 1, 1, 1, 4),
(8, 33, 1, 1, 1, 4),
(10, 25, 1, 1, 1, 4),
(10, 26, 1, 1, 1, 4),
(10, 29, 1, 1, 1, 4),
(10, 30, 1, 1, 1, 4),
(10, 31, 1, 1, 1, 4),
(10, 32, 1, 1, 1, 4),
(10, 33, 1, 1, 1, 4),
(11, 26, 1, 1, 1, 4),
(11, 29, 1, 1, 1, 4),
(12, 25, 0, 1, 1, 4),
(14, 1, 1, 1, 1, 4),
(14, 2, 1, 1, 1, 4),
(14, 3, 1, 1, 1, 4),
(14, 15, 1, 1, 1, 4),
(14, 27, 1, 1, 1, 4),
(14, 28, 1, 1, 1, 4),
(15, 1, 1, 1, 1, 4),
(15, 27, 1, 1, 1, 4),
(15, 28, 1, 1, 1, 4),
(16, 30, 1, 1, 1, 4),
(16, 31, 1, 1, 1, 4),
(16, 32, 1, 1, 1, 4),
(16, 33, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_replica`
--

CREATE TABLE `catalog_category_product_index_replica` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index_replica`
--

INSERT INTO `catalog_category_product_index_replica` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(8, 1, 0, 1, 1, 4),
(8, 2, 0, 1, 1, 4),
(8, 3, 0, 1, 1, 4),
(8, 15, 0, 1, 1, 4),
(8, 24, 0, 1, 1, 4),
(8, 25, 0, 1, 1, 4),
(8, 26, 0, 1, 1, 4),
(8, 27, 0, 1, 1, 4),
(8, 28, 0, 1, 1, 4),
(8, 29, 0, 1, 1, 4),
(8, 30, 1, 1, 1, 4),
(8, 31, 1, 1, 1, 4),
(8, 32, 1, 1, 1, 4),
(8, 33, 1, 1, 1, 4),
(10, 25, 1, 1, 1, 4),
(10, 26, 1, 1, 1, 4),
(10, 29, 1, 1, 1, 4),
(10, 30, 1, 1, 1, 4),
(10, 31, 1, 1, 1, 4),
(10, 32, 1, 1, 1, 4),
(10, 33, 1, 1, 1, 4),
(11, 26, 1, 1, 1, 4),
(11, 29, 1, 1, 1, 4),
(12, 25, 0, 1, 1, 4),
(14, 1, 1, 1, 1, 4),
(14, 2, 1, 1, 1, 4),
(14, 3, 1, 1, 1, 4),
(14, 15, 1, 1, 1, 4),
(14, 27, 1, 1, 1, 4),
(14, 28, 1, 1, 1, 4),
(15, 1, 1, 1, 1, 4),
(15, 27, 1, 1, 1, 4),
(15, 28, 1, 1, 1, 4),
(16, 30, 1, 1, 1, 4),
(16, 31, 1, 1, 1, 4),
(16, 32, 1, 1, 1, 4),
(16, 33, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer temporary table';

--
-- Dumping data for table `catalog_category_product_index_tmp`
--

INSERT INTO `catalog_category_product_index_tmp` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(10, 25, 1, 1, 1, 4),
(10, 26, 1, 1, 1, 4),
(10, 29, 1, 1, 1, 4),
(10, 30, 1, 1, 1, 4),
(10, 31, 1, 1, 1, 4),
(10, 32, 1, 1, 1, 4),
(10, 33, 1, 1, 1, 4),
(11, 26, 1, 1, 1, 4),
(11, 29, 1, 1, 1, 4),
(12, 25, 0, 1, 1, 4),
(16, 30, 1, 1, 1, 4),
(16, 31, 1, 1, 1, 4),
(16, 32, 1, 1, 1, 4),
(16, 33, 1, 1, 1, 4),
(14, 1, 1, 1, 1, 4),
(14, 2, 1, 1, 1, 4),
(14, 3, 1, 1, 1, 4),
(14, 15, 1, 1, 1, 4),
(14, 27, 1, 1, 1, 4),
(14, 28, 1, 1, 1, 4),
(15, 1, 1, 1, 1, 4),
(15, 27, 1, 1, 1, 4),
(15, 28, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Compare Item ID',
  `visitor_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Dumping data for table `catalog_compare_item`
--

INSERT INTO `catalog_compare_item` (`catalog_compare_item_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`) VALUES
(2, 36, NULL, 24, 1),
(3, 162, 1, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`, `is_required_in_admin_store`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `search_weight`, `additional_data`) VALUES
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(47, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(51, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(52, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(53, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(54, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(57, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(58, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(59, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(63, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(64, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(65, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(66, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(67, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(68, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(70, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(71, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(72, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(73, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 5, NULL),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 6, NULL),
(75, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(76, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, NULL, 1, 0, 1, 0, 0, 1, 0, 0, 1, NULL),
(77, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 'simple,virtual,downloadable,bundle,configurable', 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(78, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(80, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(81, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(82, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(83, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(88, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(89, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(90, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(91, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable,bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(93, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple,virtual,configurable', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(95, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(96, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(97, 'Magento\\Framework\\Data\\Form\\Element\\Hidden', 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(98, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(99, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(100, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(101, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(105, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(107, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(109, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(110, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(111, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(112, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(113, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(114, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,bundle,grouped,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(115, 'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(116, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(117, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(118, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(119, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(120, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(121, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(122, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(124, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(125, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(126, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(127, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(128, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(129, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(130, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(131, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(132, 'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(133, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(134, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(135, NULL, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(137, NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, NULL, 0, 0, 0, 0, 0, 1, 1, 1, 1, NULL),
(138, NULL, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, 0, 0, 0, 0, 1, 1, 1, 1, NULL),
(140, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(141, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(142, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(143, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(144, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(145, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(146, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(147, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(148, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(149, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(150, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(151, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(152, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(153, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(154, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(155, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(156, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(157, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_attribute_cl`
--

CREATE TABLE `catalog_product_attribute_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalog_product_attribute_cl';

--
-- Dumping data for table `catalog_product_attribute_cl`
--

INSERT INTO `catalog_product_attribute_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 7),
(68, 7),
(69, 7),
(70, 7),
(71, 7),
(72, 7),
(73, 7),
(74, 7),
(75, 7),
(76, 7),
(77, 7),
(78, 7),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 7),
(87, 7),
(88, 8),
(89, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(94, 8),
(95, 8),
(96, 8),
(97, 8),
(98, 8),
(99, 8),
(100, 8),
(101, 8),
(102, 8),
(103, 8),
(104, 8),
(105, 8),
(106, 8),
(107, 8),
(108, 8),
(109, 8),
(110, 9),
(111, 9),
(112, 9),
(113, 9),
(114, 9),
(115, 9),
(116, 9),
(117, 9),
(118, 9),
(119, 9),
(120, 9),
(121, 9),
(122, 9),
(123, 9),
(124, 9),
(125, 9),
(126, 9),
(127, 9),
(128, 9),
(129, 9),
(130, 9),
(131, 9),
(132, 10),
(133, 10),
(134, 10),
(135, 10),
(136, 10),
(137, 10),
(138, 10),
(139, 10),
(140, 10),
(141, 10),
(142, 10),
(143, 10),
(144, 10),
(145, 10),
(146, 10),
(147, 10),
(148, 10),
(149, 10),
(150, 10),
(151, 10),
(152, 10),
(153, 10),
(154, 11),
(155, 11),
(156, 11),
(157, 11),
(158, 11),
(159, 11),
(160, 11),
(161, 11),
(162, 11),
(163, 11),
(164, 11),
(165, 11),
(166, 11),
(167, 11),
(168, 11),
(169, 11),
(170, 11),
(171, 11),
(172, 11),
(173, 11),
(174, 11),
(175, 11),
(176, 12),
(177, 12),
(178, 12),
(179, 12),
(180, 12),
(181, 12),
(182, 12),
(183, 12),
(184, 12),
(185, 12),
(186, 12),
(187, 12),
(188, 12),
(189, 12),
(190, 12),
(191, 12),
(192, 12),
(193, 12),
(194, 12),
(195, 12),
(196, 12),
(197, 12),
(198, 12),
(199, 13),
(200, 13),
(201, 13),
(202, 13),
(203, 13),
(204, 13),
(205, 13),
(206, 13),
(207, 13),
(208, 13),
(209, 13),
(210, 13),
(211, 13),
(212, 13),
(213, 13),
(214, 13),
(215, 13),
(216, 13),
(217, 13),
(218, 13),
(219, 13),
(220, 13),
(221, 13),
(222, 14),
(223, 14),
(224, 14),
(225, 14),
(226, 14),
(227, 14),
(228, 14),
(229, 14),
(230, 14),
(231, 14),
(232, 14),
(233, 14),
(234, 14),
(235, 14),
(236, 14),
(237, 14),
(238, 14),
(239, 14),
(240, 14),
(241, 14),
(242, 14),
(243, 14),
(244, 14),
(245, 15),
(246, 15),
(247, 15),
(248, 15),
(249, 15),
(250, 15),
(251, 15),
(252, 15),
(253, 15),
(254, 15),
(255, 15),
(256, 15),
(257, 15),
(258, 15),
(259, 15),
(260, 15),
(261, 15),
(262, 15),
(263, 15),
(264, 15),
(378, 23),
(379, 23),
(380, 23),
(381, 23),
(382, 23),
(383, 23),
(384, 23),
(385, 23),
(386, 23),
(387, 23),
(388, 23),
(389, 23),
(390, 24),
(391, 24),
(392, 24),
(393, 24),
(394, 24),
(395, 24),
(396, 24),
(397, 24),
(398, 24),
(399, 24),
(400, 24),
(401, 24),
(402, 24),
(403, 24),
(404, 24),
(405, 24),
(406, 24),
(407, 24),
(408, 24),
(409, 24),
(410, 24),
(411, 24),
(412, 24),
(413, 15),
(414, 15),
(415, 25),
(416, 25),
(417, 25),
(418, 25),
(419, 25),
(420, 25),
(421, 25),
(422, 25),
(423, 25),
(424, 25),
(425, 25),
(426, 25),
(427, 25),
(428, 25),
(429, 25),
(430, 25),
(431, 25),
(432, 25),
(433, 25),
(434, 25),
(435, 25),
(436, 25),
(437, 25),
(438, 26),
(439, 26),
(440, 26),
(441, 26),
(442, 26),
(443, 26),
(444, 26),
(445, 26),
(446, 26),
(447, 26),
(448, 26),
(449, 26),
(450, 26),
(451, 26),
(452, 26),
(453, 26),
(454, 26),
(455, 26),
(456, 26),
(457, 26),
(458, 26),
(459, 26),
(460, 26),
(461, 23),
(462, 23),
(463, 23),
(464, 23),
(465, 23),
(466, 23),
(467, 23),
(468, 23),
(469, 23),
(470, 23),
(471, 23),
(472, 23),
(473, 23),
(474, 23),
(475, 23),
(476, 23),
(477, 23),
(478, 23),
(479, 23),
(480, 23),
(481, 23),
(482, 27),
(483, 27),
(484, 27),
(485, 27),
(486, 27),
(487, 27),
(488, 27),
(489, 27),
(490, 27),
(491, 27),
(492, 27),
(493, 27),
(494, 27),
(495, 27),
(496, 27),
(497, 27),
(498, 27),
(499, 27),
(500, 27),
(501, 27),
(502, 27),
(503, 27),
(504, 28),
(505, 28),
(506, 28),
(507, 28),
(508, 28),
(509, 28),
(510, 28),
(511, 28),
(512, 28),
(513, 28),
(514, 28),
(515, 28),
(516, 28),
(517, 28),
(518, 28),
(519, 28),
(520, 28),
(521, 28),
(522, 28),
(523, 28),
(524, 28),
(525, 28),
(526, 28),
(527, 2),
(528, 1),
(529, 3),
(530, 27),
(531, 28),
(532, 23),
(533, 28),
(534, 28),
(535, 27),
(536, 23),
(537, 23),
(538, 23),
(539, 23),
(540, 23),
(541, 23),
(542, 23),
(543, 23),
(544, 23),
(545, 23),
(546, 23),
(547, 29),
(548, 29),
(549, 29),
(550, 29),
(551, 29),
(552, 29),
(553, 29),
(554, 29),
(555, 29),
(556, 29),
(557, 29),
(558, 29),
(559, 29),
(560, 29),
(561, 29),
(562, 29),
(563, 29),
(564, 29),
(565, 29),
(566, 29),
(567, 29),
(568, 29),
(569, 29),
(570, 29),
(571, 29),
(572, 29),
(573, 25),
(574, 25),
(575, 1),
(576, 1),
(577, 1),
(578, 29),
(579, 29),
(580, 29),
(581, 29),
(582, 29),
(583, 29),
(584, 29),
(585, 29),
(586, 29),
(587, 29),
(588, 29),
(589, 29),
(590, 30),
(591, 30),
(592, 30),
(593, 30),
(594, 30),
(595, 30),
(596, 30),
(597, 30),
(598, 30),
(599, 30),
(600, 30),
(601, 30),
(602, 30),
(603, 30),
(604, 30),
(605, 30),
(606, 30),
(607, 30),
(608, 30),
(609, 30),
(610, 30),
(611, 30),
(612, 30),
(613, 30),
(614, 30),
(615, 31),
(616, 31),
(617, 31),
(618, 31),
(619, 31),
(620, 31),
(621, 31),
(622, 31),
(623, 31),
(624, 31),
(625, 31),
(626, 31),
(627, 31),
(628, 31),
(629, 31),
(630, 31),
(631, 31),
(632, 31),
(633, 31),
(634, 31),
(635, 31),
(636, 31),
(637, 31),
(638, 32),
(639, 32),
(640, 32),
(641, 32),
(642, 32),
(643, 32),
(644, 32),
(645, 32),
(646, 32),
(647, 32),
(648, 32),
(649, 32),
(650, 32),
(651, 32),
(652, 32),
(653, 32),
(654, 32),
(655, 32),
(656, 32),
(657, 32),
(658, 32),
(659, 33),
(660, 33),
(661, 33),
(662, 33),
(663, 33),
(664, 33),
(665, 33),
(666, 33),
(667, 33),
(668, 33),
(669, 33),
(670, 33),
(671, 33),
(672, 33),
(673, 33),
(674, 33),
(675, 33),
(676, 33),
(677, 33),
(678, 33),
(679, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

--
-- Dumping data for table `catalog_product_bundle_option`
--

INSERT INTO `catalog_product_bundle_option` (`option_id`, `parent_id`, `required`, `position`, `type`) VALUES
(1, 24, 1, 1, 'radio'),
(2, 24, 0, 2, 'checkbox');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

--
-- Dumping data for table `catalog_product_bundle_option_value`
--

INSERT INTO `catalog_product_bundle_option_value` (`value_id`, `option_id`, `parent_product_id`, `store_id`, `title`) VALUES
(1, 1, 24, 0, 'laptop'),
(2, 2, 24, 0, 'Pendrive');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

--
-- Dumping data for table `catalog_product_bundle_selection`
--

INSERT INTO `catalog_product_bundle_selection` (`selection_id`, `option_id`, `parent_product_id`, `product_id`, `position`, `is_default`, `selection_price_type`, `selection_price_value`, `selection_qty`, `selection_can_change_qty`) VALUES
(1, 1, 24, 1, 1, 1, 0, '0.0000', '1.0000', 1),
(2, 1, 24, 2, 2, 0, 0, '0.0000', '1.0000', 0),
(3, 1, 24, 14, 3, 0, 0, '0.0000', '1.0000', 0),
(4, 2, 24, 23, 1, 1, 0, '0.0000', '1.0000', 1);

--
-- Triggers `catalog_product_bundle_selection`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_bundle_selection_after_delete` AFTER DELETE ON `catalog_product_bundle_selection` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`parent_product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_bundle_selection_after_insert` AFTER INSERT ON `catalog_product_bundle_selection` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`parent_product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_bundle_selection_after_update` AFTER UPDATE ON `catalog_product_bundle_selection` FOR EACH ROW BEGIN
IF (NEW.`selection_id` != OLD.`selection_id` OR NEW.`option_id` != OLD.`option_id` OR NEW.`parent_product_id` != OLD.`parent_product_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`position` != OLD.`position` OR NEW.`is_default` != OLD.`is_default` OR NEW.`selection_price_type` != OLD.`selection_price_type` OR NEW.`selection_price_value` != OLD.`selection_price_value` OR NEW.`selection_qty` != OLD.`selection_qty` OR NEW.`selection_can_change_qty` != OLD.`selection_can_change_qty`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`parent_product_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_category_cl`
--

CREATE TABLE `catalog_product_category_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalog_product_category_cl';

--
-- Dumping data for table `catalog_product_category_cl`
--

INSERT INTO `catalog_product_category_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 7),
(28, 7),
(29, 7),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 9),
(38, 9),
(39, 9),
(40, 9),
(41, 9),
(42, 9),
(43, 9),
(44, 10),
(45, 10),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10),
(51, 11),
(52, 11),
(53, 11),
(54, 11),
(55, 11),
(56, 11),
(57, 11),
(58, 11),
(59, 11),
(60, 12),
(61, 12),
(62, 12),
(63, 12),
(64, 12),
(65, 12),
(66, 12),
(67, 12),
(68, 13),
(69, 13),
(70, 13),
(71, 13),
(72, 13),
(73, 13),
(74, 13),
(75, 13),
(76, 14),
(77, 14),
(78, 14),
(79, 14),
(80, 14),
(81, 14),
(82, 14),
(83, 14),
(84, 15),
(85, 15),
(86, 15),
(87, 15),
(88, 15),
(89, 15),
(90, 15),
(91, 15),
(131, 23),
(132, 23),
(133, 23),
(134, 23),
(135, 23),
(136, 23),
(137, 23),
(138, 24),
(139, 24),
(140, 24),
(141, 24),
(142, 24),
(143, 24),
(144, 24),
(145, 24),
(146, 24),
(147, 24),
(148, 24),
(149, 24),
(150, 15),
(151, 25),
(152, 25),
(153, 25),
(154, 25),
(155, 25),
(156, 25),
(157, 25),
(158, 25),
(159, 26),
(160, 26),
(161, 26),
(162, 26),
(163, 26),
(164, 26),
(165, 26),
(166, 26),
(167, 27),
(168, 27),
(169, 27),
(170, 27),
(171, 27),
(172, 27),
(173, 28),
(174, 28),
(175, 28),
(176, 28),
(177, 28),
(178, 28),
(179, 23),
(180, 23),
(181, 23),
(182, 23),
(183, 29),
(184, 29),
(185, 29),
(186, 29),
(187, 29),
(188, 29),
(189, 29),
(190, 29),
(191, 1),
(192, 2),
(193, 3),
(194, 12),
(195, 13),
(196, 14),
(197, 15),
(198, 23),
(199, 24),
(200, 25),
(201, 26),
(202, 27),
(203, 28),
(204, 29),
(205, 25),
(206, 26),
(207, 28),
(208, 29),
(209, 26),
(210, 29),
(211, 25),
(212, 25),
(213, 25),
(214, 28),
(215, 1),
(216, 2),
(217, 3),
(218, 12),
(219, 13),
(220, 14),
(221, 15),
(222, 24),
(223, 27),
(224, 23),
(225, 25),
(226, 26),
(227, 28),
(228, 29),
(229, 26),
(230, 29),
(231, 1),
(232, 27),
(233, 28),
(234, 1),
(235, 27),
(236, 28),
(237, 1),
(238, 28),
(239, 1),
(240, 2),
(241, 3),
(242, 12),
(243, 13),
(244, 14),
(245, 15),
(246, 23),
(247, 27),
(248, 28),
(249, 1),
(250, 2),
(251, 3),
(252, 12),
(253, 13),
(254, 14),
(255, 15),
(256, 23),
(257, 27),
(258, 28),
(259, 1),
(260, 27),
(261, 28),
(262, 30),
(263, 30),
(264, 30),
(265, 30),
(266, 30),
(267, 30),
(268, 30),
(269, 30),
(270, 30),
(271, 31),
(272, 31),
(273, 31),
(274, 31),
(275, 31),
(276, 31),
(277, 31),
(278, 31),
(279, 32),
(280, 32),
(281, 32),
(282, 32),
(283, 32),
(284, 32),
(285, 32),
(286, 33),
(287, 33),
(288, 33),
(289, 33),
(290, 33),
(291, 33),
(292, 33),
(293, 30),
(294, 31),
(295, 32),
(296, 33),
(297, 30),
(298, 31),
(299, 25),
(300, 26),
(301, 29),
(302, 30),
(303, 31),
(304, 1),
(305, 2),
(306, 3),
(307, 12),
(308, 13),
(309, 14),
(310, 15),
(311, 23),
(312, 27),
(313, 28),
(314, 1),
(315, 2),
(316, 3),
(317, 12),
(318, 13),
(319, 14),
(320, 15),
(321, 27),
(322, 28),
(332, 25),
(333, 26),
(334, 29),
(335, 30),
(336, 31),
(337, 32),
(338, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 9, 'simple', 'Dell', 0, 0, '2018-04-20 10:58:12', '2018-04-28 08:46:24'),
(2, 9, 'simple', 'Lenovo', 0, 0, '2018-04-23 06:02:57', '2018-04-24 05:38:47'),
(3, 9, 'simple', 'Accer Aspire', 1, 1, '2018-04-23 08:21:39', '2018-04-24 05:46:18'),
(12, 10, 'simple', 'HP-2', 0, 0, '2018-04-23 11:46:02', '2018-04-23 11:46:02'),
(13, 10, 'simple', 'HP-4', 0, 0, '2018-04-23 11:46:04', '2018-04-23 11:46:04'),
(14, 10, 'simple', 'HP-6', 0, 0, '2018-04-23 11:46:06', '2018-04-23 11:46:06'),
(15, 10, 'configurable', 'HP', 1, 1, '2018-04-23 11:46:06', '2018-04-24 04:47:45'),
(23, 4, 'virtual', 'Pendrive', 0, 0, '2018-04-23 12:22:36', '2018-04-27 04:35:19'),
(24, 4, 'bundle', 'Gift', 1, 1, '2018-04-23 12:27:37', '2018-04-23 12:27:37'),
(25, 11, 'virtual', 'Addidas T-Shirts', 0, 0, '2018-04-24 11:03:53', '2018-04-28 08:21:34'),
(26, 11, 'simple', 'Black Trousers', 0, 0, '2018-04-24 12:04:00', '2018-04-24 12:22:42'),
(27, 9, 'simple', 'Dell-3552', 0, 0, '2018-04-25 06:28:46', '2018-04-26 06:18:21'),
(28, 9, 'simple', 'Dell-3467', 0, 0, '2018-04-25 06:40:39', '2018-04-26 06:16:17'),
(29, 11, 'simple', 'Formal Men''s Trouser', 0, 0, '2018-04-27 09:09:45', '2018-04-30 11:15:38'),
(30, 11, 'simple', 'MJ12', 0, 0, '2018-05-01 09:51:51', '2018-05-01 10:02:07'),
(31, 11, 'simple', 'MJ12-XL-Orange', 0, 0, '2018-05-01 10:17:16', '2018-05-01 10:17:16'),
(32, 11, 'simple', 'MJ12-XL-Blue', 0, 0, '2018-05-01 10:28:27', '2018-05-01 10:28:27'),
(33, 11, 'simple', 'MJ12-XL-Black', 0, 0, '2018-05-01 10:39:33', '2018-05-01 10:39:33');

--
-- Triggers `catalog_product_entity`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_after_delete` AFTER DELETE ON `catalog_product_entity` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_after_insert` AFTER INSERT ON `catalog_product_entity` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_after_update` AFTER UPDATE ON `catalog_product_entity` FOR EACH ROW BEGIN
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`attribute_set_id` != OLD.`attribute_set_id` OR NEW.`type_id` != OLD.`type_id` OR NEW.`sku` != OLD.`sku` OR NEW.`has_options` != OLD.`has_options` OR NEW.`required_options` != OLD.`required_options` OR NEW.`created_at` != OLD.`created_at`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`attribute_set_id` != OLD.`attribute_set_id` OR NEW.`type_id` != OLD.`type_id` OR NEW.`sku` != OLD.`sku` OR NEW.`has_options` != OLD.`has_options` OR NEW.`required_options` != OLD.`required_options` OR NEW.`created_at` != OLD.`created_at`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`attribute_set_id` != OLD.`attribute_set_id` OR NEW.`type_id` != OLD.`type_id` OR NEW.`sku` != OLD.`sku` OR NEW.`has_options` != OLD.`has_options` OR NEW.`required_options` != OLD.`required_options` OR NEW.`created_at` != OLD.`created_at`) THEN INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`entity_id` != OLD.`entity_id` OR NEW.`attribute_set_id` != OLD.`attribute_set_id` OR NEW.`type_id` != OLD.`type_id` OR NEW.`sku` != OLD.`sku` OR NEW.`has_options` != OLD.`has_options` OR NEW.`required_options` != OLD.`required_options` OR NEW.`created_at` != OLD.`created_at`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 94, 0, 1, '2018-04-20 00:00:00'),
(2, 95, 0, 1, '2018-04-24 00:00:00'),
(3, 94, 0, 2, '2018-04-23 00:00:00'),
(4, 95, 0, 2, '2018-04-30 00:00:00'),
(7, 94, 0, 24, '2018-04-23 00:00:00'),
(8, 95, 0, 24, '2018-05-29 00:00:00'),
(9, 94, 0, 25, '2018-04-24 00:00:00'),
(10, 95, 0, 25, '2018-04-30 00:00:00');

--
-- Triggers `catalog_product_entity_datetime`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_datetime_after_delete` AFTER DELETE ON `catalog_product_entity_datetime` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_datetime_after_insert` AFTER INSERT ON `catalog_product_entity_datetime` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_datetime_after_update` AFTER UPDATE ON `catalog_product_entity_datetime` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 77, 0, 1, '24500.0000'),
(2, 82, 0, 1, '4.0000'),
(3, 78, 0, 1, NULL),
(4, 77, 0, 2, '85000.0000'),
(5, 82, 0, 2, '4.0000'),
(6, 78, 0, 2, NULL),
(7, 77, 0, 3, '35000.0000'),
(8, 82, 0, 3, '5.0000'),
(9, 78, 0, 3, NULL),
(26, 77, 0, 12, '40000.0000'),
(27, 82, 0, 12, '6.0000'),
(28, 77, 0, 13, '45000.0000'),
(29, 82, 0, 13, '6.0000'),
(30, 77, 0, 14, '46000.0000'),
(31, 82, 0, 14, '6.0000'),
(32, 82, 0, 15, '6.0000'),
(45, 77, 0, 23, '700.0000'),
(46, 78, 0, 15, NULL),
(47, 77, 0, 25, '400.0000'),
(48, 78, 0, 25, NULL),
(49, 77, 0, 26, '1800.0000'),
(50, 82, 0, 26, '0.3000'),
(51, 78, 0, 26, NULL),
(52, 78, 0, 23, NULL),
(55, 77, 0, 27, '25440.0000'),
(56, 82, 0, 27, '5.0000'),
(57, 77, 0, 28, '25990.0000'),
(58, 82, 0, 28, '5.0000'),
(59, 78, 0, 28, NULL),
(60, 78, 0, 27, NULL),
(61, 77, 0, 29, '1200.0000'),
(62, 82, 0, 29, '0.4000'),
(63, 78, 0, 29, NULL),
(64, 77, 0, 30, '2700.0000'),
(65, 82, 0, 30, '4.0000'),
(66, 78, 0, 30, NULL),
(67, 77, 0, 31, '2700.0000'),
(68, 82, 0, 31, '4.0000'),
(69, 77, 0, 32, '2700.0000'),
(70, 82, 0, 32, '3.0000'),
(71, 77, 0, 33, '2700.0000'),
(72, 82, 0, 33, '3.0000');

--
-- Triggers `catalog_product_entity_decimal`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_decimal_after_delete` AFTER DELETE ON `catalog_product_entity_decimal` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_decimal_after_insert` AFTER INSERT ON `catalog_product_entity_decimal` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_decimal_after_update` AFTER UPDATE ON `catalog_product_entity_decimal` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

--
-- Triggers `catalog_product_entity_gallery`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_gallery_after_delete` AFTER DELETE ON `catalog_product_entity_gallery` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_gallery_after_insert` AFTER INSERT ON `catalog_product_entity_gallery` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_gallery_after_update` AFTER UPDATE ON `catalog_product_entity_gallery` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`position` != OLD.`position` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`position` != OLD.`position` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 97, 0, 1, 1),
(2, 99, 0, 1, 4),
(3, 115, 0, 1, 1),
(4, 134, 0, 1, 2),
(5, 97, 0, 2, 1),
(6, 99, 0, 2, 4),
(7, 115, 0, 2, 1),
(8, 134, 0, 2, 2),
(9, 97, 0, 3, 1),
(10, 99, 0, 3, 4),
(11, 115, 0, 3, 1),
(12, 134, 0, 3, 2),
(54, 97, 0, 12, 1),
(55, 99, 0, 12, 1),
(56, 115, 0, 12, 1),
(57, 134, 0, 12, 2),
(59, 137, 0, 12, 8),
(60, 97, 0, 13, 1),
(61, 99, 0, 13, 1),
(62, 115, 0, 13, 1),
(63, 134, 0, 13, 2),
(65, 137, 0, 13, 9),
(66, 97, 0, 14, 1),
(67, 99, 0, 14, 1),
(68, 115, 0, 14, 1),
(69, 134, 0, 14, 2),
(71, 137, 0, 14, 10),
(72, 97, 0, 15, 1),
(73, 99, 0, 15, 4),
(74, 115, 0, 15, 1),
(75, 134, 0, 15, 2),
(113, 97, 0, 23, 1),
(114, 99, 0, 23, 4),
(115, 115, 0, 23, 1),
(116, 134, 0, 23, 2),
(118, 97, 0, 24, 1),
(119, 99, 0, 24, 4),
(120, 115, 0, 24, 1),
(121, 127, 0, 24, 0),
(122, 128, 0, 24, 0),
(123, 129, 0, 24, 0),
(124, 130, 0, 24, 0),
(125, 131, 0, 24, 0),
(126, 134, 0, 24, 2),
(128, 97, 0, 25, 1),
(129, 99, 0, 25, 4),
(130, 115, 0, 25, 1),
(131, 134, 0, 25, 2),
(133, 97, 0, 26, 1),
(134, 99, 0, 26, 4),
(135, 115, 0, 26, 1),
(136, 134, 0, 26, 2),
(138, 97, 0, 27, 1),
(139, 99, 0, 27, 4),
(140, 115, 0, 27, 1),
(141, 134, 0, 27, 2),
(142, 97, 0, 28, 1),
(143, 99, 0, 28, 4),
(144, 115, 0, 28, 1),
(145, 134, 0, 28, 2),
(147, 97, 0, 29, 1),
(148, 99, 0, 29, 4),
(149, 115, 0, 29, 1),
(150, 134, 0, 29, 2),
(154, 97, 0, 30, 1),
(155, 99, 0, 30, 4),
(156, 115, 0, 30, 1),
(157, 134, 0, 30, 2),
(159, 97, 0, 31, 1),
(160, 99, 0, 31, 4),
(161, 115, 0, 31, 1),
(162, 134, 0, 31, 2),
(164, 97, 0, 32, 1),
(165, 99, 0, 32, 4),
(166, 115, 0, 32, 1),
(167, 134, 0, 32, 2),
(169, 97, 0, 33, 1),
(170, 99, 0, 33, 4),
(171, 115, 0, 33, 1),
(172, 134, 0, 33, 2);

--
-- Triggers `catalog_product_entity_int`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_int_after_delete` AFTER DELETE ON `catalog_product_entity_int` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_int_after_insert` AFTER INSERT ON `catalog_product_entity_int` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_int_after_update` AFTER UPDATE ON `catalog_product_entity_int` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `value`, `media_type`, `disabled`) VALUES
(1, 90, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg', 'image', 0),
(2, 90, '//l/e/lenovo-ideapad-720s-13-front-1.png', 'image', 0),
(3, 90, '//a/c/accer.jpg', 'image', 0),
(4, 90, '//a/c/accer-2.jpg', 'image', 0),
(5, 90, '//a/c/accer-2_1.jpg', 'image', 0),
(6, 90, '//a/c/accer-2_2.jpg', 'image', 0),
(7, 90, '//a/c/accer2.jpeg', 'image', 0),
(8, 90, '//a/c/accer2_1.jpeg', 'image', 0),
(9, 90, '//a/c/accer2_1_1.jpeg', 'image', 0),
(10, 90, '//a/c/accer2_1_2.jpeg', 'image', 0),
(11, 90, '//a/c/accer2_2.jpeg', 'image', 0),
(12, 90, '//a/c/accer2_2_1.jpeg', 'image', 0),
(13, 90, '//a/c/accer2_2_1_1.jpeg', 'image', 0),
(14, 90, '//a/c/accer2_2_2.jpeg', 'image', 0),
(15, 90, '//a/c/accer2_1_3.jpeg', 'image', 0),
(20, 90, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg', 'image', 0),
(21, 90, '//m/o/moserbeer_5.jpg', 'image', 0),
(22, 90, '//a/d/addidas_t-shirts.jpg', 'image', 0),
(23, 90, '//b/l/black_trousers_men_1.jpg', 'image', 0),
(25, 90, '//d/e/dell_inspiron_3552.jpg', 'image', 0),
(26, 90, '//d/e/dell_3467.jpg', 'image', 0),
(27, 90, '//s/a/sandisk_2.jpg', 'image', 0),
(29, 90, '//f/r/fromal-t.jpg', 'image', 0),
(30, 90, '//m/j/mj12-orange_main.jpg', 'image', 0),
(31, 90, '//m/j/mj12-orange_main_1.jpg', 'image', 0),
(32, 90, '//m/j/mj06-blue_main.jpg', 'image', 0),
(33, 90, '//m/j/mj11-black_main.jpg', 'image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) UNSIGNED NOT NULL COMMENT 'Record Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `entity_id`, `label`, `position`, `disabled`, `record_id`) VALUES
(12, 0, 12, NULL, 1, 0, 25),
(13, 0, 13, NULL, 1, 0, 26),
(14, 0, 14, NULL, 1, 0, 27),
(20, 0, 24, NULL, 1, 0, 33),
(21, 0, 24, NULL, 2, 0, 34),
(15, 0, 15, NULL, 1, 0, 35),
(2, 0, 2, NULL, 1, 0, 36),
(3, 0, 3, NULL, 1, 0, 37),
(23, 0, 26, NULL, 1, 0, 44),
(24, 1, 23, NULL, 1, 0, 47),
(26, 0, 28, NULL, 1, 0, 60),
(25, 0, 27, NULL, 1, 0, 61),
(24, 0, 23, NULL, 1, 0, 62),
(27, 0, 23, NULL, 2, 0, 63),
(28, 0, 29, NULL, 1, 0, 66),
(22, 0, 25, NULL, 1, 0, 68),
(1, 0, 1, NULL, 1, 0, 69),
(29, 0, 29, NULL, 2, 0, 70),
(30, 0, 30, NULL, 1, 0, 74),
(31, 0, 31, NULL, 1, 0, 75),
(32, 0, 32, NULL, 1, 0, 76),
(33, 0, 33, NULL, 1, 0, 77);

--
-- Triggers `catalog_product_entity_media_gallery_value`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_media_gallery_value_after_delete` AFTER DELETE ON `catalog_product_entity_media_gallery_value` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_media_gallery_value_after_insert` AFTER INSERT ON `catalog_product_entity_media_gallery_value` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_media_gallery_value_after_update` AFTER UPDATE ON `catalog_product_entity_media_gallery_value` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`label` != OLD.`label` OR NEW.`position` != OLD.`position` OR NEW.`disabled` != OLD.`disabled` OR NEW.`record_id` != OLD.`record_id`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`label` != OLD.`label` OR NEW.`position` != OLD.`position` OR NEW.`disabled` != OLD.`disabled` OR NEW.`record_id` != OLD.`record_id`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Product entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` (`value_id`, `entity_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(20, 24),
(21, 24),
(22, 25),
(23, 26),
(25, 27),
(26, 28),
(27, 23),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 75, 0, 1, '<p>Dell 15 Core i3 4th Gen - (4 GB/500 GB HDD/Windows 8.1) 3542 Laptop (15.6 inch, SIlver, 2.16 kg)</p>'),
(2, 76, 0, 1, '<p>Dell 15 Core i3 4th Gen</p>'),
(4, 85, 0, 2, 'Lenovo'),
(5, 85, 0, 3, 'Acer Aspire'),
(14, 85, 0, 12, 'HP'),
(15, 85, 0, 13, 'HP'),
(16, 85, 0, 14, 'HP'),
(17, 85, 0, 15, 'HP'),
(31, 75, 0, 23, '<p>pendrive</p>'),
(32, 76, 0, 23, '<p>pendrive</p>'),
(33, 85, 0, 23, 'Pendrive'),
(34, 85, 0, 24, 'Gift'),
(35, 75, 0, 2, '<p>Lenovo Laptop core i3 6th generation 8GB RAM, 1 TB HDD</p>'),
(36, 76, 0, 2, '<p>Lenovo Laptop core i3 </p>'),
(37, 75, 0, 3, '<p>Accer Aspire Laptop </p>\r\n<p>Key Features</p>\r\n<section class="keyfeature">\r\n<ul>\r\n<li>Intel Core i3-6100U Processor</li>\r\n<li>2.3 GHz Processor</li>\r\n<li>4 GB DDR3L</li>\r\n<li>1024 GB HDD</li>\r\n<li>Intel HD Graphics</li>\r\n<li>15.6 Inches &amp; 1366 x 768 Pixels</li>\r\n</ul>\r\n</section>'),
(38, 76, 0, 3, '<p>Accer Aspire Laptop </p>'),
(39, 75, 0, 25, '<p>Addidas Men''s T-Shirts with different sizes in XL,XXL in coton</p>'),
(40, 76, 0, 25, '<p>Addidas Men''s T-Shirts</p>'),
(41, 85, 0, 25, 'Addidas T-Shirts'),
(42, 75, 0, 26, '<p>Black Men''s Elegant Trousers</p>'),
(43, 76, 0, 26, '<p>Black Trousers</p>'),
(44, 85, 0, 26, 'Black Trousers'),
(45, 75, 1, 23, '<p>pendrive</p>'),
(46, 76, 1, 23, '<p>pendrive</p>'),
(47, 85, 1, 23, 'Pendrive'),
(48, 75, 0, 27, '<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="475976">Dell Inspiron 3552 (Z565162HIN9) Notebook</h1>\r\n<span class="prdct-dtl__ttl-vrnt" data-model="15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G">(15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G)</span></div>\r\n<p>2.4GHz Intel Pentium N3700 processor4GB DDR3L RAM500GB 5400rpm Serial ATA hard drive15.6-inch screen, Integrated GraphicsWindows 10 operating system</p>'),
(49, 76, 0, 27, '<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="475976">Dell Inspiron 3552 (Z565162HIN9) Notebook</h1>\r\n<span class="prdct-dtl__ttl-vrnt" data-model="15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G">(15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G)</span></div>'),
(50, 85, 0, 27, NULL),
(52, 75, 0, 28, '<div class="sctn clearfix">\r\n<div class="sctn__inr clearfix">\r\n<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="502940">Dell 3467 (A561201UIN9) Notebook</h1>\r\n<span class="prdct-dtl__ttl-vrnt" data-model="14 inch|Core i3|4 GB|Linux|1 TB">(14 inch|Core i3|4 GB|Linux|1 TB)</span></div>\r\n<br />\r\n<ul class="prdct-dtl__spfctn-wrpr prdct-dtl__spfctn-wrpr--non-mbl" style="width: 100%;">\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">14 inch Screen</span></li>\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">Intel Core i3 Processor</span></li>\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">4 GB Memory</span></li>\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">1 TB HDD</span></li>\r\n</ul>\r\n</div>\r\n</div>'),
(53, 76, 0, 28, '<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="502940">Dell 3467 (A561201UIN9) Notebook</h1>\r\n</div>'),
(54, 75, 0, 29, '<p>Men- Formal Trouser</p>'),
(55, 76, 0, 29, '<p>Men Formal Trouser</p>'),
(56, 85, 0, 29, 'Men-fomral-trouser'),
(57, 75, 0, 30, '<p><span>Proteus Fitness Jackshirt For Men</span></p>'),
(58, 76, 0, 30, '<p><span>Proteus Fitness Jackshirt </span></p>'),
(59, 85, 0, 30, 'Proteus Fitness Jackshirt'),
(60, 85, 0, 31, 'Proteus Fitness Jackshirt-XL-Orange'),
(61, 75, 0, 32, '<p>Proteus Fitness Jackshirt-XL-Blue for men</p>'),
(62, 76, 0, 32, '<p>Proteus Fitness Jackshirt-XL-Blue</p>'),
(63, 85, 0, 32, 'Proteus Fitness Jackshirt-XL-Blue'),
(64, 75, 0, 33, '<p>Proteus Fitness Jackshirt-XL-Black for Men</p>'),
(65, 76, 0, 33, '<p>Proteus Fitness Jackshirt-XL-Black</p>'),
(66, 85, 0, 33, 'Proteus Fitness Jackshirt-XL-Black');

--
-- Triggers `catalog_product_entity_text`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_text_after_delete` AFTER DELETE ON `catalog_product_entity_text` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_text_after_insert` AFTER INSERT ON `catalog_product_entity_text` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_text_after_update` AFTER UPDATE ON `catalog_product_entity_text` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `percentage_value` decimal(5,2) DEFAULT NULL COMMENT 'Percentage value',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

--
-- Triggers `catalog_product_entity_tier_price`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_tier_price_after_delete` AFTER DELETE ON `catalog_product_entity_tier_price` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_tier_price_after_insert` AFTER INSERT ON `catalog_product_entity_tier_price` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_tier_price_after_update` AFTER UPDATE ON `catalog_product_entity_tier_price` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`all_groups` != OLD.`all_groups` OR NEW.`customer_group_id` != OLD.`customer_group_id` OR NEW.`qty` != OLD.`qty` OR NEW.`value` != OLD.`value` OR NEW.`percentage_value` != OLD.`percentage_value` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`all_groups` != OLD.`all_groups` OR NEW.`customer_group_id` != OLD.`customer_group_id` OR NEW.`qty` != OLD.`qty` OR NEW.`value` != OLD.`value` OR NEW.`percentage_value` != OLD.`percentage_value` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`all_groups` != OLD.`all_groups` OR NEW.`customer_group_id` != OLD.`customer_group_id` OR NEW.`qty` != OLD.`qty` OR NEW.`value` != OLD.`value` OR NEW.`percentage_value` != OLD.`percentage_value` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `catalog_product_price_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 73, 0, 1, 'Dell Inspirion'),
(4, 106, 0, 1, 'container2'),
(5, 114, 0, 1, 'CN'),
(6, 119, 0, 1, 'dell-inspirion'),
(7, 132, 0, 1, '2'),
(8, 87, 0, 1, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg'),
(9, 88, 0, 1, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg'),
(10, 89, 0, 1, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg'),
(11, 133, 0, 1, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg'),
(12, 73, 0, 2, 'Lenovo'),
(13, 84, 0, 2, 'Lenovo'),
(14, 86, 0, 2, 'Lenovo '),
(15, 106, 0, 2, 'container2'),
(16, 114, 0, 2, 'JP'),
(17, 119, 0, 2, 'lenovo'),
(18, 132, 0, 2, '2'),
(19, 87, 0, 2, '//l/e/lenovo-ideapad-720s-13-front-1.png'),
(20, 88, 0, 2, '//l/e/lenovo-ideapad-720s-13-front-1.png'),
(21, 89, 0, 2, '//l/e/lenovo-ideapad-720s-13-front-1.png'),
(22, 133, 0, 2, '//l/e/lenovo-ideapad-720s-13-front-1.png'),
(53, 73, 0, 3, 'Accer Aspire'),
(54, 84, 0, 3, 'Acer Aspire'),
(55, 86, 0, 3, 'Acer Aspire '),
(56, 87, 0, 3, '//a/c/accer.jpg'),
(57, 88, 0, 3, '//a/c/accer.jpg'),
(58, 89, 0, 3, '//a/c/accer.jpg'),
(59, 106, 0, 3, 'container2'),
(60, 114, 0, 3, 'BS'),
(61, 119, 0, 3, 'acer-aspire'),
(62, 132, 0, 3, '2'),
(63, 133, 0, 3, '//a/c/accer.jpg'),
(209, 73, 0, 12, 'HP-2'),
(210, 84, 0, 12, 'HP'),
(211, 86, 0, 12, 'HP '),
(212, 87, 0, 12, '//a/c/accer2_2_1.jpeg'),
(213, 88, 0, 12, '//a/c/accer2_2_1.jpeg'),
(214, 89, 0, 12, '//a/c/accer2_2_1.jpeg'),
(215, 106, 0, 12, 'container2'),
(216, 114, 0, 12, 'AF'),
(217, 119, 0, 12, 'hp-2'),
(218, 132, 0, 12, '0'),
(219, 133, 0, 12, '//a/c/accer2_2_1.jpeg'),
(224, 73, 0, 13, 'HP-4'),
(225, 84, 0, 13, 'HP'),
(226, 86, 0, 13, 'HP '),
(227, 87, 0, 13, '//a/c/accer2_2_1_1.jpeg'),
(228, 88, 0, 13, '//a/c/accer2_2_1_1.jpeg'),
(229, 89, 0, 13, '//a/c/accer2_2_1_1.jpeg'),
(230, 106, 0, 13, 'container2'),
(231, 114, 0, 13, 'AF'),
(232, 119, 0, 13, 'hp-4'),
(233, 132, 0, 13, '0'),
(234, 133, 0, 13, '//a/c/accer2_2_1_1.jpeg'),
(239, 73, 0, 14, 'HP-6'),
(240, 84, 0, 14, 'HP'),
(241, 86, 0, 14, 'HP '),
(242, 87, 0, 14, '//a/c/accer2_2_2.jpeg'),
(243, 88, 0, 14, '//a/c/accer2_2_2.jpeg'),
(244, 89, 0, 14, '//a/c/accer2_2_2.jpeg'),
(245, 106, 0, 14, 'container2'),
(246, 114, 0, 14, 'AF'),
(247, 119, 0, 14, 'hp-6'),
(248, 132, 0, 14, '0'),
(249, 133, 0, 14, '//a/c/accer2_2_2.jpeg'),
(254, 73, 0, 15, 'HP'),
(255, 84, 0, 15, 'HP'),
(256, 86, 0, 15, 'HP '),
(257, 87, 0, 15, '//a/c/accer2_1_3.jpeg'),
(258, 88, 0, 15, '//a/c/accer2_1_3.jpeg'),
(259, 89, 0, 15, '//a/c/accer2_1_3.jpeg'),
(260, 106, 0, 15, 'container2'),
(261, 114, 0, 15, 'AF'),
(262, 119, 0, 15, 'hp'),
(263, 132, 0, 15, '2'),
(333, 73, 0, 23, 'Sandisk-Pendrive'),
(334, 84, 0, 23, 'Pendrive'),
(335, 86, 0, 23, 'Pendrive'),
(336, 106, 0, 23, 'container2'),
(337, 119, 0, 23, 'pendrive'),
(338, 132, 0, 23, '2'),
(339, 73, 0, 24, 'Gift'),
(340, 84, 0, 24, 'Gift'),
(341, 86, 0, 24, 'Gift '),
(342, 87, 0, 24, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg'),
(343, 88, 0, 24, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg'),
(344, 89, 0, 24, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg'),
(345, 106, 0, 24, 'container2'),
(346, 114, 0, 24, 'IT'),
(347, 119, 0, 24, 'gift'),
(348, 132, 0, 24, '2'),
(357, 73, 0, 25, 'Addidas T-Shirts'),
(358, 84, 0, 25, 'Addidas T-Shirts'),
(359, 86, 0, 25, 'Addidas T-Shirts with different sizes in XL,XXL in coton'),
(360, 87, 0, 25, '//a/d/addidas_t-shirts.jpg'),
(361, 88, 0, 25, '//a/d/addidas_t-shirts.jpg'),
(362, 89, 0, 25, '//a/d/addidas_t-shirts.jpg'),
(363, 106, 0, 25, 'container2'),
(364, 119, 0, 25, 'addidas-t-shirts'),
(365, 132, 0, 25, '2'),
(366, 133, 0, 25, '//a/d/addidas_t-shirts.jpg'),
(379, 73, 0, 26, 'Black Trousers'),
(380, 84, 0, 26, 'Black Trousers'),
(381, 86, 0, 26, 'Black Trousers Black Men''s Elegant Trousers'),
(382, 87, 0, 26, '//b/l/black_trousers_men_1.jpg'),
(383, 88, 0, 26, '//b/l/black_trousers_men_1.jpg'),
(384, 89, 0, 26, '//b/l/black_trousers_men_1.jpg'),
(385, 106, 0, 26, 'container2'),
(386, 114, 0, 26, 'IN'),
(387, 119, 0, 26, 'black-trousers'),
(388, 132, 0, 26, '2'),
(389, 133, 0, 26, '//b/l/black_trousers_men_1.jpg'),
(390, 87, 0, 23, '//s/a/sandisk_2.jpg'),
(391, 88, 0, 23, '//s/a/sandisk_2.jpg'),
(392, 89, 0, 23, '//s/a/sandisk_2.jpg'),
(393, 133, 0, 23, '//s/a/sandisk_2.jpg'),
(402, 84, 1, 23, 'Pendrive'),
(403, 86, 1, 23, 'Pendrive'),
(407, 106, 1, 23, 'container2'),
(408, 119, 1, 23, 'pendrive'),
(415, 73, 0, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook'),
(416, 84, 0, 27, NULL),
(417, 86, 0, 27, NULL),
(418, 87, 0, 27, '//d/e/dell_inspiron_3552.jpg'),
(419, 88, 0, 27, '//d/e/dell_inspiron_3552.jpg'),
(420, 89, 0, 27, '//d/e/dell_inspiron_3552.jpg'),
(421, 106, 0, 27, 'container2'),
(422, 114, 0, 27, 'BS'),
(423, 119, 0, 27, 'dell-inspiron-3552-z565162hin9-notebook'),
(424, 132, 0, 27, '2'),
(425, 133, 0, 27, '//d/e/dell_inspiron_3552.jpg'),
(431, 73, 0, 28, 'Dell 3467 (A561201UIN9) Notebook'),
(434, 87, 0, 28, '//d/e/dell_3467.jpg'),
(435, 88, 0, 28, '//d/e/dell_3467.jpg'),
(436, 89, 0, 28, '//d/e/dell_3467.jpg'),
(437, 106, 0, 28, 'container2'),
(438, 114, 0, 28, 'IT'),
(439, 119, 0, 28, 'dell-3467-a561201uin9-notebook'),
(440, 132, 0, 28, '2'),
(441, 133, 0, 28, '//d/e/dell_3467.jpg'),
(450, 73, 0, 29, 'Formal Trouser'),
(451, 84, 0, 29, 'Men-fomral-trouser'),
(452, 86, 0, 29, 'Men-fomral-trouser'),
(453, 87, 0, 29, '//f/r/fromal-t.jpg'),
(454, 88, 0, 29, '//f/r/fromal-t.jpg'),
(455, 89, 0, 29, '//f/r/fromal-t.jpg'),
(456, 106, 0, 29, 'container1'),
(457, 114, 0, 29, 'IN'),
(458, 119, 0, 29, 'men-fomral-trouser'),
(459, 132, 0, 29, '2'),
(460, 133, 0, 29, '//f/r/fromal-t.jpg'),
(461, 100, 0, 29, '7'),
(462, 104, 0, 29, '2columns-left'),
(463, 116, 0, 29, '2columns-left'),
(464, 73, 0, 30, 'Proteus Fitness Jackshirt'),
(465, 84, 0, 30, 'Proteus Fitness Jackshirt'),
(466, 86, 0, 30, 'Proteus Fitness Jackshirt Proteus Fitness Jackshirt For Men'),
(467, 87, 0, 30, '//m/j/mj12-orange_main.jpg'),
(468, 88, 0, 30, '//m/j/mj12-orange_main.jpg'),
(469, 89, 0, 30, '//m/j/mj12-orange_main.jpg'),
(470, 106, 0, 30, 'container2'),
(471, 114, 0, 30, 'IN'),
(472, 119, 0, 30, 'proteus-fitness-jackshirt'),
(473, 132, 0, 30, '2'),
(474, 133, 0, 30, '//m/j/mj12-orange_main.jpg'),
(479, 104, 0, 30, '2columns-left'),
(492, 73, 0, 31, 'Proteus Fitness Jackshirt-XL-Orange'),
(493, 84, 0, 31, 'Proteus Fitness Jackshirt-XL-Orange'),
(494, 86, 0, 31, 'Proteus Fitness Jackshirt-XL-Orange '),
(495, 87, 0, 31, '//m/j/mj12-orange_main_1.jpg'),
(496, 88, 0, 31, '//m/j/mj12-orange_main_1.jpg'),
(497, 89, 0, 31, '//m/j/mj12-orange_main_1.jpg'),
(498, 104, 0, 31, '2columns-left'),
(499, 106, 0, 31, 'container2'),
(500, 114, 0, 31, 'IN'),
(501, 119, 0, 31, 'proteus-fitness-jackshirt-xl-orange'),
(502, 132, 0, 31, '2'),
(503, 133, 0, 31, '//m/j/mj12-orange_main_1.jpg'),
(508, 73, 0, 32, 'Proteus Fitness Jackshirt-XL-Blue'),
(509, 84, 0, 32, 'Proteus Fitness Jackshirt-XL-Blue'),
(510, 86, 0, 32, 'Proteus Fitness Jackshirt-XL-Blue Proteus Fitness Jackshirt-XL-Blue for men'),
(511, 87, 0, 32, '//m/j/mj06-blue_main.jpg'),
(512, 88, 0, 32, '//m/j/mj06-blue_main.jpg'),
(513, 89, 0, 32, '//m/j/mj06-blue_main.jpg'),
(514, 106, 0, 32, 'container2'),
(515, 119, 0, 32, 'proteus-fitness-jackshirt-xl-blue'),
(516, 132, 0, 32, '2'),
(517, 133, 0, 32, '//m/j/mj06-blue_main.jpg'),
(522, 73, 0, 33, 'Proteus Fitness Jackshirt-XL-Black'),
(523, 84, 0, 33, 'Proteus Fitness Jackshirt-XL-Black'),
(524, 86, 0, 33, 'Proteus Fitness Jackshirt-XL-Black Proteus Fitness Jackshirt-XL-Black for Men'),
(525, 87, 0, 33, '//m/j/mj11-black_main.jpg'),
(526, 88, 0, 33, '//m/j/mj11-black_main.jpg'),
(527, 89, 0, 33, '//m/j/mj11-black_main.jpg'),
(528, 106, 0, 33, 'container2'),
(529, 119, 0, 33, 'proteus-fitness-jackshirt-xl-black'),
(530, 132, 0, 33, '2'),
(531, 133, 0, 33, '//m/j/mj11-black_main.jpg');

--
-- Triggers `catalog_product_entity_varchar`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_varchar_after_delete` AFTER DELETE ON `catalog_product_entity_varchar` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (OLD.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (OLD.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_varchar_after_insert` AFTER INSERT ON `catalog_product_entity_varchar` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (NEW.`entity_id`);
INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_entity_varchar_after_update` AFTER UPDATE ON `catalog_product_entity_varchar` FOR EACH ROW BEGIN
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_flat_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalog_product_attribute_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
IF (NEW.`value_id` != OLD.`value_id` OR NEW.`attribute_id` != OLD.`attribute_id` OR NEW.`store_id` != OLD.`store_id` OR NEW.`entity_id` != OLD.`entity_id` OR NEW.`value` != OLD.`value`) THEN INSERT IGNORE INTO `catalogrule_product_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_flat_1`
--

CREATE TABLE `catalog_product_flat_1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type Id',
  `core_hp` int(11) DEFAULT NULL COMMENT 'core_hp column',
  `core_hp_value` varchar(255) DEFAULT NULL COMMENT 'core_hp column',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `description` longtext COMMENT 'description',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available column',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image` varchar(255) DEFAULT NULL COMMENT 'image',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` text COMMENT 'msrp_display_actual_price_type',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'Bundle Price View price_view column',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'required_options',
  `short_description` longtext COMMENT 'short_description',
  `size` varchar(255) DEFAULT NULL COMMENT 'size column',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `swatch_image` varchar(255) DEFAULT NULL COMMENT 'swatch_image',
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'tax_class_id tax column',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `touchscreen` varchar(255) DEFAULT NULL COMMENT 'touchscreen',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Catalog Product Visibility visibility column',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

--
-- Dumping data for table `catalog_product_flat_1`
--

INSERT INTO `catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `core_hp`, `core_hp_value`, `cost`, `created_at`, `description`, `gift_message_available`, `has_options`, `image`, `image_label`, `links_exist`, `links_purchased_separately`, `links_title`, `msrp`, `msrp_display_actual_price_type`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `required_options`, `short_description`, `size`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `swatch_image`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `touchscreen`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(1, 9, 'simple', NULL, NULL, NULL, '2018-04-20 10:58:12', '<p>Dell 15 Core i3 4th Gen - (4 GB/500 GB HDD/Windows 8.1) 3542 Laptop (15.6 inch, SIlver, 2.16 kg)</p>', 2, 0, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Dell Inspirion', '2018-04-20 00:00:00', '2018-04-24 00:00:00', '24500.0000', NULL, NULL, 0, '<p>Dell 15 Core i3 4th Gen</p>', NULL, 'Dell', NULL, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg', NULL, NULL, NULL, NULL, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg', 2, '//d/e/dell-inspiron_core_-i3_4th_gen.jpg', NULL, NULL, '2018-04-28 08:46:24', 'dell-inspirion', NULL, 4, '4.0000', NULL),
(2, 9, 'simple', NULL, NULL, NULL, '2018-04-23 06:02:57', '<p>Lenovo Laptop core i3 6th generation 8GB RAM, 1 TB HDD</p>', 2, 0, '//l/e/lenovo-ideapad-720s-13-front-1.png', NULL, NULL, NULL, NULL, NULL, NULL, 'Lenovo', '2018-04-23 00:00:00', '2018-04-30 00:00:00', '85000.0000', NULL, NULL, 0, '<p>Lenovo Laptop core i3 </p>', NULL, 'Lenovo', NULL, '//l/e/lenovo-ideapad-720s-13-front-1.png', NULL, NULL, NULL, NULL, '//l/e/lenovo-ideapad-720s-13-front-1.png', 2, '//l/e/lenovo-ideapad-720s-13-front-1.png', NULL, NULL, '2018-04-24 05:38:47', 'lenovo', NULL, 4, '4.0000', NULL),
(3, 9, 'simple', NULL, NULL, NULL, '2018-04-23 08:21:39', '<p>Accer Aspire Laptop </p>\r\n<p>Key Features</p>\r\n<section class="keyfeature">\r\n<ul>\r\n<li>Intel Core i3-6100U Processor</li>\r\n<li>2.3 GHz Processor</li>\r\n<li>4 GB DDR3L</li>\r\n<li>1024 GB HDD</li>\r\n<li>Intel HD Graphics</li>\r\n<li>15.6 Inches &amp; 1366 x 768 Pixels</li>\r\n</ul>\r\n</section>', 2, 1, '//a/c/accer.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Accer Aspire', NULL, NULL, '35000.0000', NULL, NULL, 1, '<p>Accer Aspire Laptop </p>', NULL, 'Accer Aspire', NULL, '//a/c/accer.jpg', NULL, NULL, NULL, NULL, '//a/c/accer.jpg', 2, '//a/c/accer.jpg', NULL, NULL, '2018-04-24 05:46:18', 'acer-aspire', NULL, 4, '5.0000', NULL),
(12, 10, 'simple', 8, '4', NULL, '2018-04-23 11:46:02', NULL, 0, 0, '//a/c/accer2_2_1.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'HP-2', NULL, NULL, '40000.0000', NULL, NULL, 0, NULL, NULL, 'HP-2', NULL, '//a/c/accer2_2_1.jpeg', NULL, NULL, NULL, NULL, '//a/c/accer2_2_1.jpeg', 2, '//a/c/accer2_2_1.jpeg', NULL, NULL, '2018-04-23 11:46:02', 'hp-2', NULL, 1, '6.0000', NULL),
(13, 10, 'simple', 9, '6', NULL, '2018-04-23 11:46:04', NULL, 0, 0, '//a/c/accer2_2_1_1.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'HP-4', NULL, NULL, '45000.0000', NULL, NULL, 0, NULL, NULL, 'HP-4', NULL, '//a/c/accer2_2_1_1.jpeg', NULL, NULL, NULL, NULL, '//a/c/accer2_2_1_1.jpeg', 2, '//a/c/accer2_2_1_1.jpeg', NULL, NULL, '2018-04-23 11:46:04', 'hp-4', NULL, 1, '6.0000', NULL),
(14, 10, 'simple', 10, '8', NULL, '2018-04-23 11:46:06', NULL, 0, 0, '//a/c/accer2_2_2.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'HP-6', NULL, NULL, '46000.0000', NULL, NULL, 0, NULL, NULL, 'HP-6', NULL, '//a/c/accer2_2_2.jpeg', NULL, NULL, NULL, NULL, '//a/c/accer2_2_2.jpeg', 2, '//a/c/accer2_2_2.jpeg', NULL, NULL, '2018-04-23 11:46:06', 'hp-6', NULL, 1, '6.0000', NULL),
(15, 10, 'configurable', NULL, NULL, NULL, '2018-04-23 11:46:06', NULL, 2, 1, '//a/c/accer2_1_3.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'HP', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'HP', NULL, '//a/c/accer2_1_3.jpeg', NULL, NULL, NULL, NULL, NULL, 2, '//a/c/accer2_1_3.jpeg', NULL, NULL, '2018-04-24 04:47:45', 'hp', NULL, 4, '6.0000', NULL),
(24, 4, 'bundle', NULL, NULL, NULL, '2018-04-23 12:27:37', NULL, 2, 1, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Gift', '2018-04-23 00:00:00', '2018-05-29 00:00:00', NULL, 0, 0, 1, NULL, NULL, 'Gift', 0, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg', NULL, NULL, NULL, NULL, NULL, 2, '//d/e/dell-inspiron_core_-i3_4th_gen_1.jpg', NULL, NULL, '2018-04-23 12:27:37', 'gift', NULL, 4, NULL, 0),
(25, 11, 'virtual', NULL, NULL, NULL, '2018-04-24 11:03:53', '<p>Addidas Men''s T-Shirts with different sizes in XL,XXL in coton</p>', 2, 0, '//a/d/addidas_t-shirts.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Addidas T-Shirts', '2018-04-24 00:00:00', '2018-04-30 00:00:00', '400.0000', NULL, NULL, 0, '<p>Addidas Men''s T-Shirts</p>', NULL, 'Addidas T-Shirts', NULL, '//a/d/addidas_t-shirts.jpg', NULL, NULL, NULL, NULL, '//a/d/addidas_t-shirts.jpg', 2, '//a/d/addidas_t-shirts.jpg', NULL, NULL, '2018-04-28 08:21:34', 'addidas-t-shirts', NULL, 4, NULL, NULL),
(26, 11, 'simple', NULL, NULL, NULL, '2018-04-24 12:04:00', '<p>Black Men''s Elegant Trousers</p>', 2, 0, '//b/l/black_trousers_men_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Black Trousers', NULL, NULL, '1800.0000', NULL, NULL, 0, '<p>Black Trousers</p>', NULL, 'Black Trousers', NULL, '//b/l/black_trousers_men_1.jpg', NULL, NULL, NULL, NULL, '//b/l/black_trousers_men_1.jpg', 2, '//b/l/black_trousers_men_1.jpg', NULL, NULL, '2018-04-24 12:22:42', 'black-trousers', NULL, 4, '0.3000', NULL),
(27, 9, 'simple', NULL, NULL, NULL, '2018-04-25 06:28:46', '<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="475976">Dell Inspiron 3552 (Z565162HIN9) Notebook</h1>\r\n<span class="prdct-dtl__ttl-vrnt" data-model="15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G">(15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G)</span></div>\r\n<p>2.4GHz Intel Pentium N3700 processor4GB DDR3L RAM500GB 5400rpm Serial ATA hard drive15.6-inch screen, Integrated GraphicsWindows 10 operating system</p>', 2, 0, '//d/e/dell_inspiron_3552.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', NULL, NULL, '25440.0000', NULL, NULL, 0, '<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="475976">Dell Inspiron 3552 (Z565162HIN9) Notebook</h1>\r\n<span class="prdct-dtl__ttl-vrnt" data-model="15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G">(15.6 inch|Pentium Quad Core|4 GB|Win 10 Home|500 G)</span></div>', NULL, 'Dell-3552', NULL, '//d/e/dell_inspiron_3552.jpg', NULL, NULL, NULL, NULL, '//d/e/dell_inspiron_3552.jpg', 2, '//d/e/dell_inspiron_3552.jpg', NULL, NULL, '2018-04-26 06:18:21', 'dell-inspiron-3552-z565162hin9-notebook', NULL, 4, '5.0000', NULL),
(28, 9, 'simple', NULL, NULL, NULL, '2018-04-25 06:40:39', '<div class="sctn clearfix">\r\n<div class="sctn__inr clearfix">\r\n<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="502940">Dell 3467 (A561201UIN9) Notebook</h1>\r\n<span class="prdct-dtl__ttl-vrnt" data-model="14 inch|Core i3|4 GB|Linux|1 TB">(14 inch|Core i3|4 GB|Linux|1 TB)</span></div>\r\n<br />\r\n<ul class="prdct-dtl__spfctn-wrpr prdct-dtl__spfctn-wrpr--non-mbl" style="width: 100%;">\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">14 inch Screen</span></li>\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">Intel Core i3 Processor</span></li>\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">4 GB Memory</span></li>\r\n<li class="prdct-dtl__spfctn"><span class="prdct-dtl__spfctn-txt">1 TB HDD</span></li>\r\n</ul>\r\n</div>\r\n</div>', 2, 0, '//d/e/dell_3467.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Dell 3467 (A561201UIN9) Notebook', NULL, NULL, '25990.0000', NULL, NULL, 0, '<div class="prdct-dtl__ttl-cntnr">\r\n<h1 class="prdct-dtl__ttl" data-mspid="502940">Dell 3467 (A561201UIN9) Notebook</h1>\r\n</div>', NULL, 'Dell-3467', NULL, '//d/e/dell_3467.jpg', NULL, NULL, NULL, NULL, '//d/e/dell_3467.jpg', 2, '//d/e/dell_3467.jpg', NULL, NULL, '2018-04-26 06:16:17', 'dell-3467-a561201uin9-notebook', NULL, 4, '5.0000', NULL),
(29, 11, 'simple', NULL, NULL, NULL, '2018-04-27 09:09:45', '<p>Men- Formal Trouser</p>', 2, 0, '//f/r/fromal-t.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Formal Trouser', NULL, NULL, '1200.0000', NULL, NULL, 0, '<p>Men Formal Trouser</p>', NULL, 'Formal Men''s Trouser', NULL, '//f/r/fromal-t.jpg', NULL, NULL, NULL, NULL, '//f/r/fromal-t.jpg', 2, '//f/r/fromal-t.jpg', NULL, NULL, '2018-04-30 11:15:38', 'men-fomral-trouser', NULL, 4, '0.4000', NULL),
(30, 11, 'simple', NULL, NULL, NULL, '2018-05-01 09:51:51', '<p><span>Proteus Fitness Jackshirt For Men</span></p>', 2, 0, '//m/j/mj12-orange_main.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Proteus Fitness Jackshirt', NULL, NULL, '2700.0000', NULL, NULL, 0, '<p><span>Proteus Fitness Jackshirt </span></p>', NULL, 'MJ12', NULL, '//m/j/mj12-orange_main.jpg', NULL, NULL, NULL, NULL, '//m/j/mj12-orange_main.jpg', 2, '//m/j/mj12-orange_main.jpg', NULL, NULL, '2018-05-01 10:02:07', 'proteus-fitness-jackshirt', NULL, 4, '4.0000', NULL),
(31, 11, 'simple', NULL, NULL, NULL, '2018-05-01 10:17:16', NULL, 2, 0, '//m/j/mj12-orange_main_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Proteus Fitness Jackshirt-XL-Orange', NULL, NULL, '2700.0000', NULL, NULL, 0, NULL, NULL, 'MJ12-XL-Orange', NULL, '//m/j/mj12-orange_main_1.jpg', NULL, NULL, NULL, NULL, '//m/j/mj12-orange_main_1.jpg', 2, '//m/j/mj12-orange_main_1.jpg', NULL, NULL, '2018-05-01 10:17:16', 'proteus-fitness-jackshirt-xl-orange', NULL, 4, '4.0000', NULL),
(32, 11, 'simple', NULL, NULL, NULL, '2018-05-01 10:28:27', '<p>Proteus Fitness Jackshirt-XL-Blue for men</p>', 2, 0, '//m/j/mj06-blue_main.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Proteus Fitness Jackshirt-XL-Blue', NULL, NULL, '2700.0000', NULL, NULL, 0, '<p>Proteus Fitness Jackshirt-XL-Blue</p>', NULL, 'MJ12-XL-Blue', NULL, '//m/j/mj06-blue_main.jpg', NULL, NULL, NULL, NULL, '//m/j/mj06-blue_main.jpg', 2, '//m/j/mj06-blue_main.jpg', NULL, NULL, '2018-05-01 10:28:27', 'proteus-fitness-jackshirt-xl-blue', NULL, 4, '3.0000', NULL),
(33, 11, 'simple', NULL, NULL, NULL, '2018-05-01 10:39:33', '<p>Proteus Fitness Jackshirt-XL-Black for Men</p>', 2, 0, '//m/j/mj11-black_main.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Proteus Fitness Jackshirt-XL-Black', NULL, NULL, '2700.0000', NULL, NULL, 0, '<p>Proteus Fitness Jackshirt-XL-Black</p>', NULL, 'MJ12-XL-Black', NULL, '//m/j/mj11-black_main.jpg', NULL, NULL, NULL, NULL, '//m/j/mj11-black_main.jpg', 2, '//m/j/mj11-black_main.jpg', NULL, NULL, '2018-05-01 10:39:33', 'proteus-fitness-jackshirt-xl-black', NULL, 4, '3.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_flat_cl`
--

CREATE TABLE `catalog_product_flat_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalog_product_flat_cl';

--
-- Dumping data for table `catalog_product_flat_cl`
--

INSERT INTO `catalog_product_flat_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 7),
(77, 7),
(78, 7),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 7),
(87, 7),
(88, 7),
(89, 7),
(90, 7),
(91, 7),
(92, 7),
(93, 7),
(94, 7),
(95, 7),
(96, 7),
(97, 7),
(98, 7),
(99, 7),
(100, 7),
(101, 7),
(102, 7),
(103, 7),
(104, 4),
(105, 5),
(106, 6),
(107, 7),
(108, 8),
(109, 8),
(110, 8),
(111, 8),
(112, 8),
(113, 8),
(114, 8),
(115, 8),
(116, 8),
(117, 8),
(118, 8),
(119, 8),
(120, 8),
(121, 8),
(122, 8),
(123, 8),
(124, 8),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 8),
(130, 8),
(131, 8),
(132, 8),
(133, 9),
(134, 9),
(135, 9),
(136, 9),
(137, 9),
(138, 9),
(139, 9),
(140, 9),
(141, 9),
(142, 9),
(143, 9),
(144, 9),
(145, 9),
(146, 9),
(147, 9),
(148, 9),
(149, 9),
(150, 9),
(151, 9),
(152, 9),
(153, 9),
(154, 9),
(155, 9),
(156, 9),
(157, 9),
(158, 10),
(159, 10),
(160, 10),
(161, 10),
(162, 10),
(163, 10),
(164, 10),
(165, 10),
(166, 10),
(167, 10),
(168, 10),
(169, 10),
(170, 10),
(171, 10),
(172, 10),
(173, 10),
(174, 10),
(175, 10),
(176, 10),
(177, 10),
(178, 10),
(179, 10),
(180, 10),
(181, 10),
(182, 10),
(183, 11),
(184, 11),
(185, 11),
(186, 11),
(187, 11),
(188, 11),
(189, 11),
(190, 11),
(191, 11),
(192, 11),
(193, 11),
(194, 11),
(195, 11),
(196, 11),
(197, 11),
(198, 11),
(199, 11),
(200, 11),
(201, 11),
(202, 11),
(203, 11),
(204, 11),
(205, 11),
(206, 11),
(207, 11),
(208, 11),
(209, 11),
(210, 11),
(211, 11),
(212, 11),
(213, 8),
(214, 9),
(215, 10),
(216, 11),
(217, 12),
(218, 12),
(219, 12),
(220, 12),
(221, 12),
(222, 12),
(223, 12),
(224, 12),
(225, 12),
(226, 12),
(227, 12),
(228, 12),
(229, 12),
(230, 12),
(231, 12),
(232, 12),
(233, 12),
(234, 12),
(235, 12),
(236, 12),
(237, 12),
(238, 12),
(239, 12),
(240, 12),
(241, 12),
(242, 12),
(243, 13),
(244, 13),
(245, 13),
(246, 13),
(247, 13),
(248, 13),
(249, 13),
(250, 13),
(251, 13),
(252, 13),
(253, 13),
(254, 13),
(255, 13),
(256, 13),
(257, 13),
(258, 13),
(259, 13),
(260, 13),
(261, 13),
(262, 13),
(263, 13),
(264, 13),
(265, 13),
(266, 13),
(267, 13),
(268, 13),
(269, 14),
(270, 14),
(271, 14),
(272, 14),
(273, 14),
(274, 14),
(275, 14),
(276, 14),
(277, 14),
(278, 14),
(279, 14),
(280, 14),
(281, 14),
(282, 14),
(283, 14),
(284, 14),
(285, 14),
(286, 14),
(287, 14),
(288, 14),
(289, 14),
(290, 14),
(291, 14),
(292, 14),
(293, 14),
(294, 14),
(295, 15),
(296, 15),
(297, 15),
(298, 15),
(299, 15),
(300, 15),
(301, 15),
(302, 15),
(303, 15),
(304, 15),
(305, 15),
(306, 15),
(307, 15),
(308, 15),
(309, 15),
(310, 15),
(311, 15),
(312, 15),
(313, 15),
(314, 15),
(315, 15),
(316, 15),
(317, 15),
(457, 23),
(458, 23),
(459, 23),
(460, 23),
(461, 23),
(462, 23),
(463, 23),
(464, 23),
(465, 23),
(466, 23),
(467, 23),
(468, 23),
(469, 23),
(470, 23),
(471, 23),
(472, 23),
(473, 24),
(474, 24),
(475, 24),
(476, 24),
(477, 24),
(478, 24),
(479, 24),
(480, 24),
(481, 24),
(482, 24),
(483, 24),
(484, 24),
(485, 24),
(486, 24),
(487, 24),
(488, 24),
(489, 24),
(490, 24),
(491, 24),
(492, 24),
(493, 24),
(494, 24),
(495, 24),
(496, 24),
(497, 24),
(498, 24),
(499, 24),
(500, 24),
(501, 24),
(502, 15),
(503, 15),
(504, 15),
(505, 15),
(506, 2),
(507, 2),
(508, 2),
(509, 2),
(510, 3),
(511, 3),
(512, 3),
(513, 3),
(514, 25),
(515, 25),
(516, 25),
(517, 25),
(518, 25),
(519, 25),
(520, 25),
(521, 25),
(522, 25),
(523, 25),
(524, 25),
(525, 25),
(526, 25),
(527, 25),
(528, 25),
(529, 25),
(530, 25),
(531, 25),
(532, 25),
(533, 25),
(534, 25),
(535, 25),
(536, 25),
(537, 25),
(538, 25),
(539, 25),
(540, 25),
(541, 25),
(542, 25),
(543, 25),
(544, 25),
(545, 25),
(546, 25),
(547, 25),
(548, 25),
(549, 26),
(550, 26),
(551, 26),
(552, 26),
(553, 26),
(554, 26),
(555, 26),
(556, 26),
(557, 26),
(558, 26),
(559, 26),
(560, 26),
(561, 26),
(562, 26),
(563, 26),
(564, 26),
(565, 26),
(566, 26),
(567, 26),
(568, 26),
(569, 26),
(570, 26),
(571, 26),
(572, 26),
(573, 26),
(574, 26),
(575, 26),
(576, 26),
(577, 26),
(578, 26),
(579, 26),
(580, 26),
(581, 26),
(582, 26),
(583, 26),
(584, 23),
(585, 23),
(586, 23),
(587, 23),
(588, 23),
(589, 23),
(590, 23),
(591, 23),
(592, 23),
(593, 23),
(594, 23),
(595, 23),
(596, 23),
(597, 23),
(598, 23),
(599, 23),
(600, 23),
(601, 23),
(602, 23),
(603, 23),
(604, 23),
(605, 23),
(606, 23),
(607, 23),
(608, 23),
(609, 23),
(610, 23),
(611, 23),
(612, 23),
(613, 27),
(614, 27),
(615, 27),
(616, 27),
(617, 27),
(618, 27),
(619, 27),
(620, 27),
(621, 27),
(622, 27),
(623, 27),
(624, 27),
(625, 27),
(626, 27),
(627, 27),
(628, 27),
(629, 27),
(630, 27),
(631, 27),
(632, 27),
(633, 27),
(634, 27),
(635, 27),
(636, 27),
(637, 27),
(638, 27),
(639, 27),
(640, 28),
(641, 28),
(642, 28),
(643, 28),
(644, 28),
(645, 28),
(646, 28),
(647, 28),
(648, 28),
(649, 28),
(650, 28),
(651, 28),
(652, 28),
(653, 28),
(654, 28),
(655, 28),
(656, 28),
(657, 28),
(658, 28),
(659, 28),
(660, 28),
(661, 28),
(662, 28),
(663, 28),
(664, 28),
(665, 28),
(666, 28),
(667, 28),
(668, 28),
(669, 28),
(670, 2),
(671, 1),
(672, 3),
(673, 27),
(674, 28),
(675, 28),
(676, 28),
(677, 28),
(678, 28),
(679, 28),
(680, 28),
(681, 28),
(682, 28),
(683, 28),
(684, 28),
(685, 28),
(686, 28),
(687, 23),
(688, 23),
(689, 23),
(690, 23),
(691, 23),
(692, 23),
(693, 23),
(694, 29),
(695, 29),
(696, 29),
(697, 29),
(698, 29),
(699, 29),
(700, 29),
(701, 29),
(702, 29),
(703, 29),
(704, 29),
(705, 29),
(706, 29),
(707, 29),
(708, 30),
(709, 30),
(710, 30),
(711, 30),
(712, 30),
(713, 30),
(714, 30),
(715, 30),
(716, 30),
(717, 30),
(718, 30),
(719, 30),
(720, 30),
(721, 30),
(722, 30),
(723, 30),
(724, 30),
(725, 30),
(726, 30),
(727, 30),
(728, 30),
(729, 30),
(730, 30),
(731, 30),
(732, 30),
(733, 30),
(734, 30),
(735, 30),
(736, 30),
(737, 30),
(738, 30),
(739, 30),
(740, 30),
(741, 30),
(742, 30),
(743, 30),
(744, 30),
(745, 31),
(746, 31),
(747, 31),
(748, 31),
(749, 31),
(750, 31),
(751, 31),
(752, 31),
(753, 31),
(754, 31),
(755, 31),
(756, 31),
(757, 31),
(758, 31),
(759, 31),
(760, 31),
(761, 31),
(762, 31),
(763, 31),
(764, 31),
(765, 31),
(766, 31),
(767, 31),
(768, 31),
(769, 31),
(770, 31),
(771, 32),
(772, 32),
(773, 32),
(774, 32),
(775, 32),
(776, 32),
(777, 32),
(778, 32),
(779, 32),
(780, 32),
(781, 32),
(782, 32),
(783, 32),
(784, 32),
(785, 32),
(786, 32),
(787, 32),
(788, 32),
(789, 32),
(790, 32),
(791, 32),
(792, 32),
(793, 32),
(794, 32),
(795, 32),
(796, 32),
(797, 33),
(798, 33),
(799, 33),
(800, 33),
(801, 33),
(802, 33),
(803, 33),
(804, 33),
(805, 33),
(806, 33),
(807, 33),
(808, 33),
(809, 33),
(810, 33),
(811, 33),
(812, 33),
(813, 33),
(814, 33),
(815, 33),
(816, 33),
(817, 33),
(818, 33),
(819, 33),
(820, 33),
(821, 33),
(822, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_frontend_action`
--

CREATE TABLE `catalog_product_frontend_action` (
  `action_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product Action Id',
  `type_id` varchar(64) NOT NULL COMMENT 'Type of product action',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `added_at` bigint(20) NOT NULL COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Frontend Action Table';

--
-- Dumping data for table `catalog_product_frontend_action`
--

INSERT INTO `catalog_product_frontend_action` (`action_id`, `type_id`, `visitor_id`, `customer_id`, `product_id`, `added_at`) VALUES
(18, 'recently_viewed_product', NULL, 1, 2, 1524819047),
(19, 'recently_viewed_product', NULL, 1, 25, 1524819105),
(84, 'recently_compared_product', NULL, 1, 25, 1524818937),
(85, 'recently_compared_product', NULL, 1, 26, 1524820772),
(86, 'recently_compared_product', NULL, 1, 29, 1524820772),
(89, 'recently_viewed_product', 103, NULL, 25, 1524906011),
(90, 'recently_viewed_product', 104, NULL, 25, 1524921382),
(106, 'recently_viewed_product', 107, NULL, 3, 1524631901),
(107, 'recently_viewed_product', 107, NULL, 23, 1524631994),
(112, 'recently_viewed_product', 133, NULL, 2, 1525093473),
(117, 'recently_viewed_product', 153, NULL, 28, 1525155433),
(119, 'recently_viewed_product', 162, NULL, 33, 1525173420),
(120, 'recently_viewed_product', NULL, 1, 33, 1525173528),
(126, 'recently_compared_product', NULL, 1, 24, 1525178695),
(134, 'recently_compared_product', 165, NULL, 24, 1525181262),
(136, 'recently_viewed_product', 167, NULL, 24, 1525251836),
(138, 'recently_viewed_product', 167, NULL, 29, 1525251910),
(143, 'recently_viewed_product', 167, NULL, 33, 1525256695),
(144, 'recently_viewed_product', 170, NULL, 32, 1525323195),
(146, 'recently_viewed_product', 178, NULL, 27, 1525427416),
(148, 'recently_viewed_product', 0, NULL, 1, 1526466820);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`, `source_id`) VALUES
(1, 99, 1, 4, 1),
(2, 99, 1, 4, 2),
(3, 99, 1, 4, 3),
(15, 99, 1, 1, 12),
(15, 99, 1, 1, 13),
(15, 99, 1, 1, 14),
(15, 99, 1, 4, 15),
(15, 137, 1, 8, 12),
(15, 137, 1, 9, 13),
(15, 137, 1, 10, 14),
(23, 99, 1, 4, 23),
(24, 99, 1, 1, 14),
(24, 99, 1, 4, 1),
(24, 99, 1, 4, 2),
(24, 99, 1, 4, 23),
(24, 99, 1, 4, 24),
(24, 137, 1, 10, 14),
(25, 99, 1, 4, 25),
(26, 99, 1, 4, 26),
(27, 99, 1, 4, 27),
(28, 99, 1, 4, 28),
(29, 99, 1, 4, 29),
(30, 99, 1, 4, 30),
(31, 99, 1, 4, 31),
(32, 99, 1, 4, 32),
(33, 99, 1, 4, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_replica`
--

CREATE TABLE `catalog_product_index_eav_decimal_replica` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_replica`
--

CREATE TABLE `catalog_product_index_eav_replica` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav_replica`
--

INSERT INTO `catalog_product_index_eav_replica` (`entity_id`, `attribute_id`, `store_id`, `value`, `source_id`) VALUES
(1, 99, 1, 4, 1),
(2, 99, 1, 4, 2),
(3, 99, 1, 4, 3),
(15, 99, 1, 1, 12),
(15, 99, 1, 1, 13),
(15, 99, 1, 1, 14),
(15, 99, 1, 4, 15),
(15, 137, 1, 8, 12),
(15, 137, 1, 9, 13),
(15, 137, 1, 10, 14),
(23, 99, 1, 4, 23),
(24, 99, 1, 1, 14),
(24, 99, 1, 4, 1),
(24, 99, 1, 4, 2),
(24, 99, 1, 4, 23),
(24, 99, 1, 4, 24),
(24, 137, 1, 10, 14),
(25, 99, 1, 4, 25),
(26, 99, 1, 4, 26),
(27, 99, 1, 4, 27),
(28, 99, 1, 4, 28),
(29, 99, 1, 4, 29),
(30, 99, 1, 4, 30),
(31, 99, 1, 4, 31),
(32, 99, 1, 4, 32),
(33, 99, 1, 4, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(1, 0, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(1, 1, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(1, 2, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(1, 3, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(2, 0, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(2, 1, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(2, 2, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(2, 3, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(3, 0, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(3, 1, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(3, 2, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(3, 3, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(12, 0, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(12, 1, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(12, 2, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(12, 3, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(13, 0, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(13, 1, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(13, 2, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(13, 3, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(14, 0, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(14, 1, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(14, 2, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(14, 3, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(15, 0, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(15, 1, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(15, 2, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(15, 3, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(24, 0, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(24, 1, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(24, 2, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(24, 3, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(25, 0, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(25, 1, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(25, 2, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(25, 3, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(26, 0, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(26, 1, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(26, 2, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(26, 3, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(27, 0, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(27, 1, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(27, 2, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(27, 3, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(28, 0, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(28, 1, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(28, 2, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(28, 3, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(29, 0, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(29, 1, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(29, 2, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(29, 3, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(30, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(30, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(30, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(30, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_replica`
--

CREATE TABLE `catalog_product_index_price_replica` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price_replica`
--

INSERT INTO `catalog_product_index_price_replica` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(1, 0, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(1, 1, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(1, 2, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(1, 3, 1, 2, '24500.0000', '24500.0000', '24500.0000', '24500.0000', NULL),
(2, 0, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(2, 1, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(2, 2, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(2, 3, 1, 2, '85000.0000', '85000.0000', '85000.0000', '85000.0000', NULL),
(3, 0, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(3, 1, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(3, 2, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(3, 3, 1, 2, '35000.0000', '35000.0000', '35000.0000', '40250.0000', NULL),
(12, 0, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(12, 1, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(12, 2, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(12, 3, 1, 2, '40000.0000', '40000.0000', '40000.0000', '40000.0000', NULL),
(13, 0, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(13, 1, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(13, 2, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(13, 3, 1, 2, '45000.0000', '45000.0000', '45000.0000', '45000.0000', NULL),
(14, 0, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(14, 1, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(14, 2, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(14, 3, 1, 2, '46000.0000', '46000.0000', '46000.0000', '46000.0000', NULL),
(15, 0, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(15, 1, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(15, 2, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(15, 3, 1, 2, '0.0000', '0.0000', '40000.0000', '46000.0000', NULL),
(24, 0, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(24, 1, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(24, 2, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(24, 3, 1, 0, '0.0000', '0.0000', '24500.0000', '85000.0000', NULL),
(25, 0, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(25, 1, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(25, 2, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(25, 3, 1, 2, '400.0000', '400.0000', '400.0000', '400.0000', NULL),
(26, 0, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(26, 1, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(26, 2, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(26, 3, 1, 2, '1800.0000', '1800.0000', '1800.0000', '1800.0000', NULL),
(27, 0, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(27, 1, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(27, 2, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(27, 3, 1, 2, '25440.0000', '25440.0000', '25440.0000', '25440.0000', NULL),
(28, 0, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(28, 1, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(28, 2, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(28, 3, 1, 2, '25990.0000', '25990.0000', '25990.0000', '25990.0000', NULL),
(29, 0, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(29, 1, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(29, 2, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(29, 3, 1, 2, '1200.0000', '1200.0000', '1200.0000', '1200.0000', NULL),
(30, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(30, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(30, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(30, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(31, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(32, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 0, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 1, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 2, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL),
(33, 3, 1, 2, '2700.0000', '2700.0000', '2700.0000', '2700.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2018-05-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

CREATE TABLE `catalog_product_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

--
-- Dumping data for table `catalog_product_link`
--

INSERT INTO `catalog_product_link` (`link_id`, `product_id`, `linked_product_id`, `link_type_id`) VALUES
(14, 1, 1, 1),
(20, 1, 27, 1),
(1, 15, 23, 1),
(19, 27, 1, 1),
(21, 1, 3, 4),
(3, 15, 2, 4),
(15, 1, 1, 5),
(2, 15, 3, 5);

--
-- Triggers `catalog_product_link`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_link_after_delete` AFTER DELETE ON `catalog_product_link` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_link_after_insert` AFTER INSERT ON `catalog_product_link` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_link_after_update` AFTER UPDATE ON `catalog_product_link` FOR EACH ROW BEGIN
IF (NEW.`link_id` != OLD.`link_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`linked_product_id` != OLD.`linked_product_id` OR NEW.`link_type_id` != OLD.`link_type_id`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 4, 'position', 'int'),
(3, 5, 'position', 'int'),
(4, 3, 'position', 'int'),
(5, 3, 'qty', 'decimal');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute_int`
--

INSERT INTO `catalog_product_link_attribute_int` (`value_id`, `product_link_attribute_id`, `link_id`, `value`) VALUES
(1, 1, 1, 1),
(2, 3, 2, 1),
(3, 2, 3, 1),
(14, 1, 14, 2),
(15, 3, 15, 1),
(19, 1, 19, 1),
(20, 1, 20, 1),
(21, 2, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

CREATE TABLE `catalog_product_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) UNSIGNED DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

--
-- Dumping data for table `catalog_product_option`
--

INSERT INTO `catalog_product_option` (`option_id`, `product_id`, `type`, `is_require`, `sku`, `max_characters`, `file_extension`, `image_size_x`, `image_size_y`, `sort_order`) VALUES
(1, 3, 'file', 1, NULL, 0, 'jpeg', 1080, 720, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Price ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

--
-- Dumping data for table `catalog_product_option_price`
--

INSERT INTO `catalog_product_option_price` (`option_price_id`, `option_id`, `store_id`, `price`, `price_type`) VALUES
(1, 1, 0, '15.0000', 'percent');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Title ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

--
-- Dumping data for table `catalog_product_option_title`
--

INSERT INTO `catalog_product_option_title` (`option_title_id`, `option_id`, `store_id`, `title`) VALUES
(1, 1, 0, 'Laptop Skin');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Price ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

--
-- Dumping data for table `catalog_product_option_type_price`
--

INSERT INTO `catalog_product_option_type_price` (`option_type_price_id`, `option_type_id`, `store_id`, `price`, `price_type`) VALUES
(1, 1, 0, '0.0000', 'fixed');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Title ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

--
-- Dumping data for table `catalog_product_option_type_title`
--

INSERT INTO `catalog_product_option_type_title` (`option_type_title_id`, `option_type_id`, `store_id`, `title`) VALUES
(1, 1, 0, 'Laptop skin');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

--
-- Dumping data for table `catalog_product_option_type_value`
--

INSERT INTO `catalog_product_option_type_value` (`option_type_id`, `option_id`, `sku`, `sort_order`) VALUES
(1, 1, '15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_price_cl`
--

CREATE TABLE `catalog_product_price_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalog_product_price_cl';

--
-- Dumping data for table `catalog_product_price_cl`
--

INSERT INTO `catalog_product_price_cl` (`version_id`, `entity_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 7),
(26, 7),
(27, 7),
(28, 7),
(29, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 4),
(35, 5),
(36, 6),
(37, 7),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(45, 8),
(46, 9),
(47, 9),
(48, 9),
(49, 9),
(50, 9),
(51, 9),
(52, 9),
(53, 9),
(54, 10),
(55, 10),
(56, 10),
(57, 10),
(58, 10),
(59, 10),
(60, 10),
(61, 10),
(62, 11),
(63, 11),
(64, 11),
(65, 11),
(66, 11),
(67, 11),
(68, 11),
(69, 11),
(70, 11),
(71, 11),
(72, 11),
(73, 8),
(74, 9),
(75, 10),
(76, 11),
(77, 12),
(78, 12),
(79, 12),
(80, 12),
(81, 12),
(82, 12),
(83, 12),
(84, 12),
(85, 12),
(86, 13),
(87, 13),
(88, 13),
(89, 13),
(90, 13),
(91, 13),
(92, 13),
(93, 13),
(94, 13),
(95, 14),
(96, 14),
(97, 14),
(98, 14),
(99, 14),
(100, 14),
(101, 14),
(102, 14),
(103, 14),
(104, 15),
(105, 15),
(106, 15),
(107, 15),
(108, 15),
(109, 15),
(110, 15),
(111, 15),
(168, 23),
(169, 23),
(170, 23),
(171, 23),
(172, 23),
(173, 23),
(174, 23),
(175, 24),
(176, 24),
(177, 24),
(178, 24),
(179, 24),
(180, 24),
(181, 24),
(182, 24),
(183, 24),
(184, 24),
(185, 24),
(186, 24),
(187, 24),
(188, 15),
(189, 15),
(190, 25),
(191, 25),
(192, 25),
(193, 25),
(194, 25),
(195, 25),
(196, 25),
(197, 25),
(198, 25),
(199, 25),
(200, 25),
(201, 26),
(202, 26),
(203, 26),
(204, 26),
(205, 26),
(206, 26),
(207, 26),
(208, 26),
(209, 26),
(210, 26),
(211, 23),
(212, 27),
(213, 27),
(214, 27),
(215, 27),
(216, 27),
(217, 27),
(218, 27),
(219, 28),
(220, 28),
(221, 28),
(222, 28),
(223, 28),
(224, 28),
(225, 28),
(226, 28),
(227, 28),
(228, 28),
(229, 28),
(230, 28),
(231, 23),
(232, 1),
(233, 28),
(234, 28),
(235, 27),
(236, 27),
(237, 23),
(238, 23),
(239, 29),
(240, 29),
(241, 29),
(242, 29),
(243, 29),
(244, 29),
(245, 29),
(246, 29),
(247, 29),
(248, 25),
(249, 25),
(250, 1),
(251, 30),
(252, 30),
(253, 30),
(254, 30),
(255, 30),
(256, 30),
(257, 30),
(258, 30),
(259, 30),
(260, 30),
(261, 30),
(262, 31),
(263, 31),
(264, 31),
(265, 31),
(266, 31),
(267, 31),
(268, 31),
(269, 31),
(270, 32),
(271, 32),
(272, 32),
(273, 32),
(274, 32),
(275, 32),
(276, 32),
(277, 32),
(278, 33),
(279, 33),
(280, 33),
(281, 33),
(282, 33),
(283, 33),
(284, 33),
(285, 33);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Dumping data for table `catalog_product_relation`
--

INSERT INTO `catalog_product_relation` (`parent_id`, `child_id`) VALUES
(15, 12),
(15, 13),
(15, 14),
(24, 1),
(24, 2),
(24, 14),
(24, 23);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Super Attribute ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Dumping data for table `catalog_product_super_attribute`
--

INSERT INTO `catalog_product_super_attribute` (`product_super_attribute_id`, `product_id`, `attribute_id`, `position`) VALUES
(7, 15, 137, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Dumping data for table `catalog_product_super_attribute_label`
--

INSERT INTO `catalog_product_super_attribute_label` (`value_id`, `product_super_attribute_id`, `store_id`, `use_default`, `value`) VALUES
(7, 7, 0, 0, 'core-hp');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Dumping data for table `catalog_product_super_link`
--

INSERT INTO `catalog_product_super_link` (`link_id`, `product_id`, `parent_id`) VALUES
(19, 12, 15),
(20, 13, 15),
(21, 14, 15);

--
-- Triggers `catalog_product_super_link`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_super_link_after_delete` AFTER DELETE ON `catalog_product_super_link` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_super_link_after_insert` AFTER INSERT ON `catalog_product_super_link` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_super_link_after_update` AFTER UPDATE ON `catalog_product_super_link` FOR EACH ROW BEGIN
IF (NEW.`link_id` != OLD.`link_id` OR NEW.`product_id` != OLD.`product_id` OR NEW.`parent_id` != OLD.`parent_id`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

CREATE TABLE `catalog_product_website` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1);

--
-- Triggers `catalog_product_website`
--
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_website_after_delete` AFTER DELETE ON `catalog_product_website` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (OLD.`product_id`);
INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (OLD.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_website_after_insert` AFTER INSERT ON `catalog_product_website` FOR EACH ROW BEGIN
INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`);
INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (NEW.`product_id`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_catalog_product_website_after_update` AFTER UPDATE ON `catalog_product_website` FOR EACH ROW BEGIN
IF (NEW.`product_id` != OLD.`product_id` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `catalogsearch_fulltext_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
IF (NEW.`product_id` != OLD.`product_id` OR NEW.`website_id` != OLD.`website_id`) THEN INSERT IGNORE INTO `catalog_product_category_cl` (`entity_id`) VALUES (NEW.`product_id`); END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'category_id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'product_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

INSERT INTO `catalog_url_rewrite_product_category` (`url_rewrite_id`, `category_id`, `product_id`) VALUES
(246, 15, 1),
(247, 14, 1),
(249, 14, 2),
(251, 14, 3),
(253, 14, 15),
(255, 15, 27),
(256, 14, 27),
(258, 15, 28),
(259, 14, 28),
(261, 12, 25),
(262, 10, 25),
(264, 11, 26),
(265, 10, 26),
(267, 11, 29),
(268, 10, 29),
(271, 16, 30),
(272, 10, 30),
(274, 16, 31),
(275, 10, 31),
(277, 16, 32),
(278, 10, 32),
(280, 16, 33),
(281, 10, 33);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Home Page Block', 'home-page-block', '<p style="text-align: center;"><span style="text-decoration: underline; font-size: medium;"><strong>Welcome</strong></span></p>', '2018-04-26 04:33:55', '2018-04-26 04:33:55', 1),
(2, 'Contact us info', 'contact-us-info', '<p>We love hearing from you, our customers.Please contact us about anything at all. Reach us however you like</p>\r\n<p><strong>Contact Us Info</strong></p>\r\n<p><strong>Phone</strong></p>\r\n<p><strong>1-800-300-2004</strong></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong><br /></strong></p>', '2018-04-26 07:07:10', '2018-04-26 07:07:10', 1),
(3, 'Home Advertisement 1', 'home_advertisement1', '<div class="hat-main pad-main">\n    <div class="hat-row">\n        <div class="hat-inner">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-320.png"}}" alt="img-400-320" />\n            </a>\n        </div>\n        <div class="hat-inner">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-320.png"}}" alt="img-400-320" />\n            </a>\n        </div>\n        <div class="hat-inner">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-320.png"}}" alt="img-400-320" />\n            </a>\n        </div>\n    </div>\n</div>\n', '2018-04-26 11:23:49', '2018-04-26 11:23:49', 1),
(4, 'Home Advertisement 2', 'home_advertisement2', '<div class="hab-main pad-main">\n    <div class="hab-row">\n        <div class="hab-inner">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-610-490.png"}}" alt="img-610-490" />\n            </a>\n        </div>\n        <div class="hab-inner">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-610-245.png"}}" alt="img-610-245" />\n            </a>\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-610-245.png"}}" alt="img-610-245" />\n            </a>\n        </div>\n    </div>\n</div>\n', '2018-04-26 11:23:49', '2018-04-26 11:23:49', 1),
(5, 'Home banner Block', 'home_banner', '<div class="hb-main pad-main-bottom">\n    <div class="hb-left">\n        <ul class="hb-slider">\n            <li>\n                <a href="#">\n                    <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-925-456.png"}}" alt="img-925-456" />\n                </a>\n            </li>\n            <li>\n                <a href="#">\n                    <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-925-456.png"}}" alt="img-925-456" />\n                </a>\n            </li>\n        </ul>\n        <script>\n            require([''jquery'', ''cpowlcarousel''], function ($) {\n                $(document).ready(function () {\n                    $(".hb-slider").owlCarousel({\n                        items: 1,\n                        itemsDesktop: [1080, 1],\n                        itemsDesktopSmall: [860, 1],\n                        itemsTablet: [768, 1],\n                        itemsTabletSmall: [639, 1],\n                        itemsMobile: [360, 1],\n                        pagination: true,\n                        navigationText: ["<i class=''fa fa-angle-left''></i>", "<i class=''fa fa-angle-right''>"],\n                        navigation: false,\n                    });\n                });\n            });\n        </script>\n    </div>\n    <div class="hb-right">\n        <div class="hb-top">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-295-218.png"}}" alt="img-295-218" />\n            </a>\n        </div>\n        <div class="hb-bottom">\n            <a href="#">\n                <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-295-218.png"}}" alt="img-295-218" />\n            </a>\n        </div>\n    </div>\n</div>\n', '2018-04-26 11:23:49', '2018-04-26 11:23:49', 1),
(6, 'Home Blogs', 'home_blogs', '<div class="hpb-main pad-main">\n    <div class="block-title-main">\n        <h2>Latest Posts</h2>\n        <div class="title-border"></div>\n    </div>\n    <div style="margin: 0 -10px;">\n        <div class="hpb-main hpb-slider">\n            <div class="hpb-inner">\n                <div class="hpb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-250.png"}}" alt="img-400-250" />\n                    </a>\n                </div>\n                <div class="hpb-content-main">\n                    <div class="hpb-content">\n                        <h2>John Doe</h2>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna...\n                        </p>\n                    </div>\n                    <div class="hpb-info">\n                        <span class="hpb-poster">\n                            <i class="fa fa-user"></i> <em>Admin</em>\n                        </span>\n                        <span class="hpb-poster">\n                            <i class="fa fa-calendar" aria-hidden="true"></i> <em>22 May, 2016</em>\n                        </span>\n                        <span class="readmore">\n                            <a href="#">Read More</a>\n                        </span>\n                    </div>\n                </div>\n            </div>\n            <div class="hpb-inner">\n                <div class="hpb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-250.png"}}" alt="img-400-250" />\n                    </a>\n                </div>\n                <div class="hpb-content-main">\n                    <div class="hpb-content">\n                        <h2>John Doe</h2>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna...\n                        </p>\n                    </div>\n                    <div class="hpb-info">\n                        <span class="hpb-poster">\n                            <i class="fa fa-user"></i> <em>Admin</em>\n                        </span>\n                        <span class="hpb-poster">\n                            <i class="fa fa-calendar" aria-hidden="true"></i> <em>22 May, 2016</em>\n                        </span>\n                        <span class="readmore">\n                            <a href="#">Read More</a>\n                        </span>\n                    </div>\n                </div>\n            </div>\n            <div class="hpb-inner">\n                <div class="hpb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-250.png"}}" alt="img-400-250" />\n                    </a>\n                </div>\n                <div class="hpb-content-main">\n                    <div class="hpb-content">\n                        <h2>John Doe</h2>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna...\n                        </p>\n                    </div>\n                    <div class="hpb-info">\n                        <span class="hpb-poster">\n                            <i class="fa fa-user"></i> <em>Admin</em>\n                        </span>\n                        <span class="hpb-poster">\n                            <i class="fa fa-calendar" aria-hidden="true"></i> <em>22 May, 2016</em>\n                        </span>\n                        <span class="readmore">\n                            <a href="#">Read More</a>\n                        </span>\n                    </div>\n                </div>\n            </div>\n            <div class="hpb-inner">\n                <div class="hpb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-250.png"}}" alt="img-400-250" />\n                    </a>\n                </div>\n                <div class="hpb-content-main">\n                    <div class="hpb-content">\n                        <h2>John Doe</h2>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna...\n                        </p>\n                    </div>\n                    <div class="hpb-info">\n                        <span class="hpb-poster">\n                            <i class="fa fa-user"></i> <em>Admin</em>\n                        </span>\n                        <span class="hpb-poster">\n                            <i class="fa fa-calendar" aria-hidden="true"></i> <em>22 May, 2016</em>\n                        </span>\n                        <span class="readmore">\n                            <a href="#">Read More</a>\n                        </span>\n                    </div>\n                </div>\n            </div>\n            <div class="hpb-inner">\n                <div class="hpb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-250.png"}}" alt="img-400-250" />\n                    </a>\n                </div>\n                <div class="hpb-content-main">\n                    <div class="hpb-content">\n                        <h2>John Doe</h2>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna...\n                        </p>\n                    </div>\n                    <div class="hpb-info">\n                        <span class="hpb-poster">\n                            <i class="fa fa-user"></i> <em>Admin</em>\n                        </span>\n                        <span class="hpb-poster">\n                            <i class="fa fa-calendar" aria-hidden="true"></i> <em>22 May, 2016</em>\n                        </span>\n                        <span class="readmore">\n                            <a href="#">Read More</a>\n                        </span>\n                    </div>\n                </div>\n            </div>\n            <div class="hpb-inner">\n                <div class="hpb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-400-250.png"}}" alt="img-400-250" />\n                    </a>\n                </div>\n                <div class="hpb-content-main">\n                    <div class="hpb-content">\n                        <h2>John Doe</h2>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna...\n                        </p>\n                    </div>\n                    <div class="hpb-info">\n                        <span class="hpb-poster">\n                            <i class="fa fa-user"></i> <em>Admin</em>\n                        </span>\n                        <span class="hpb-poster">\n                            <i class="fa fa-calendar" aria-hidden="true"></i> <em>22 May, 2016</em>\n                        </span>\n                        <span class="readmore">\n                            <a href="#">Read More</a>\n                        </span>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <script>\n            require([''jquery'', ''cpowlcarousel''], function ($) {\n                $(document).ready(function () {\n                    $(".hpb-slider").owlCarousel({\n                        items: 3,\n                        itemsDesktop: [1080, 3],\n                        itemsDesktopSmall: [860, 3],\n                        itemsTablet: [768, 2],\n                        itemsTabletSmall: [639, 2],\n                        itemsMobile: [479, 1],\n                        pagination: false,\n                        navigationText: [''<div class="lft-btn"><i class="fa fa-angle-left"></i></div>'', ''<div class="rgt-btn"><i class="fa fa-angle-right"></div>''],\n                        navigation: true,\n                    });\n                });\n            });\n        </script>\n    </div>\n</div>', '2018-04-26 11:23:50', '2018-04-26 11:23:50', 1),
(7, 'Home Testimonials', 'home_testimonials', '<div class="htb-main pad-main">\n    <div class="block-title-main">\n        <h2>What Our Customer Says</h2>\n        <div class="title-border"></div>\n    </div>\n    <div class="htb-main">\n        <div class="htb-content htb-slider">\n            <div class="htb-inner">\n                <div class="htb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-85-85.png"}}" alt="img-85-85" />\n                    </a>\n                </div>\n                <div class="htb-content-inner">\n                    <p>\n                        <em>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n                        </em>\n                    </p>\n                    <div class="htb-sept"></div>\n                    <div class="htb-info">\n                        <div class="htb-name">\n                            John Doe\n                        </div>\n                        <p>\n                            graphic designer\n                        </p>\n                    </div>\n                </div>\n            </div>\n            <div class="htb-inner">\n                <div class="htb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-85-85.png"}}" alt="img-85-85" />\n                    </a>\n                </div>\n                <div class="htb-content-inner">\n                    <p>\n                        <em>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n                        </em>\n                    </p>\n                    <div class="htb-sept"></div>\n                    <div class="htb-info">\n                        <div class="htb-name">\n                            John Doe\n                        </div>\n                        <p>\n                            graphic designer\n                        </p>\n                    </div>\n                </div>\n            </div>\n            <div class="htb-inner">\n                <div class="htb-img">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-85-85.png"}}" alt="img-85-85" />\n                    </a>\n                </div>\n                <div class="htb-content-inner">\n                    <p>\n                        <em>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n                        </em>\n                    </p>\n                    <div class="htb-sept"></div>\n                    <div class="htb-info">\n                        <div class="htb-name">\n                            John Doe\n                        </div>\n                        <p>\n                            graphic designer\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <script>\n            require([''jquery'', ''cpowlcarousel''], function ($) {\n                $(document).ready(function () {\n                    $(".htb-slider").owlCarousel({\n                        items: 1,\n                        itemsDesktop: [1080, 1],\n                        itemsDesktopSmall: [860, 1],\n                        itemsTablet: [768, 1],\n                        itemsTabletSmall: [639, 1],\n                        itemsMobile: [479, 1],\n                        pagination: false,\n                        navigationText: [''<div class="lft-btn"><i class="fa fa-angle-left"></i></div>'', ''<div class="rgt-btn"><i class="fa fa-angle-right"></div>''],\n                        navigation: true,\n                    });\n                });\n            });\n        </script>\n    </div>\n</div>\n', '2018-04-26 11:23:50', '2018-04-26 11:23:50', 1),
(8, 'Home Brands', 'home_brands', '<div class="hbr-main pad-main">\n    <div class="block-title-main">\n        <h2>Our Brands</h2>\n        <div class="title-border"></div>\n    </div>\n    <div class="hbr-main">\n        <div style="margin: 0 -10px">\n            <div class="hbr-content hbr-slider">\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n                <div class="hbr-inner">\n                    <a href="#">\n                        <img class="img-resp center-b" src="{{media url="wysiwyg/home/img-232-86.png"}}" alt="img-232-86" />\n                    </a>\n                </div>\n            </div>\n        </div>\n        <script>\n            require([''jquery'', ''cpowlcarousel''], function ($) {\n                $(document).ready(function () {\n                    $(".hbr-slider").owlCarousel({\n                        items: 5,\n                        itemsDesktop: [1080, 4],\n                        itemsDesktopSmall: [860, 3],\n                        itemsTablet: [768, 3],\n                        itemsTabletSmall: [639, 3],\n                        itemsMobile: [479, 2],\n                        pagination: false,\n                        navigationText: [''<div class="lft-btn"><i class="fa fa-angle-left"></i></div>'', ''<div class="rgt-btn"><i class="fa fa-angle-right"></div>''],\n                        navigation: true,\n                    });\n                });\n            });\n        </script>\n    </div>\n</div>', '2018-04-26 11:23:50', '2018-04-26 11:23:50', 1),
(9, 'Footer Theme Features', 'footer_theme_features', '<ul>\n            <li><a href="#"><em class="fa fa-check"></em>&nbsp;&nbsp;&nbsp;Premium Magento 2 theme</a></li>\n            <li><a href="#"><em class="fa fa-check"></em>&nbsp;&nbsp;&nbsp;Fully responsive</a></li>\n            <li><a href="#"><em class="fa fa-check"></em>&nbsp;&nbsp;&nbsp;Powerful admin panel</a></li>\n            <li><a href="#"><em class="fa fa-check"></em>&nbsp;&nbsp;&nbsp;2 unique homepage layouts</a></li>\n            <li><a href="#"><em class="fa fa-check"></em>&nbsp;&nbsp;&nbsp;Available in 6 colors</a></li>\n        </ul>', '2018-04-26 11:23:50', '2018-04-26 11:23:50', 1),
(10, 'Footer Our Services', 'footer_our_services', '<div class="fs-row">\n            <div class="fs-inner">\n                <div class="fs-left">\n                    <i class="fa fa-car" aria-hidden="true"></i>\n                </div>\n                <div class="fs-right">\n                    <h3>Free Shipping</h3>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit sedeiusmod.</p>\n                </div>\n            </div>\n            <div class="fs-inner">\n                <div class="fs-left">\n                    <i class="fa fa-life-ring" aria-hidden="true"></i>\n                </div>\n                <div class="fs-right">\n                    <h3>Online Support</h3>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit sedeiusmod.</p>\n                </div>\n            </div>\n            <div class="fs-inner">\n                <div class="fs-left">\n                    <i class="fa fa-money" aria-hidden="true"></i>\n                </div>\n                <div class="fs-right">\n                    <h3>Money Back Guarantee</h3>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit sedeiusmod.</p>\n                </div>\n            </div>\n        </div>', '2018-04-26 11:23:50', '2018-04-26 11:23:50', 1),
(11, 'Category:Men', 'Category:Men Product -Slider', '<p>{{widget type="Magento\\CatalogWidget\\Block\\Product\\ProductsList" title="Category:Men- Products List" show_pager="0" products_count="10" template="product/widget/content/grid.phtml" conditions_encoded="^[`1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Combine`,`aggregator`:`all`,`value`:`1`,`new_child`:``^],`1--1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Product`,`attribute`:`category_ids`,`operator`:`==`,`value`:`10`^]^]"}}</p>', '2018-05-02 11:40:55', '2018-05-02 11:40:55', 1),
(12, 'Category:Laptop ', 'Category:Laptop Product Slider', '<p>{{widget type="Magento\\CatalogWidget\\Block\\Product\\ProductsList" title="Category:Laptop Product " show_pager="0" products_count="10" template="product/widget/content/grid.phtml" conditions_encoded="^[`1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Combine`,`aggregator`:`all`,`value`:`1`,`new_child`:``^],`1--1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Product`,`attribute`:`category_ids`,`operator`:`==`,`value`:`14`^]^]"}}</p>', '2018-05-02 11:47:57', '2018-05-02 11:47:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 1),
(12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`) VALUES
(1, '404 Not Found', '2columns-right', 'Page keywords', 'Page description', 'no-route', 'Whoops, our bad...', '<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl>\r\n', '2018-04-20 08:31:18', '2018-04-20 08:31:18', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home Page', '2columns-left', '', '', 'home', 'Welcome', '<p> {{widget type="Magento\\Catalog\\Block\\Product\\Widget\\NewWidget" display_type="new_products" show_pager="0" products_count="10" template="product/widget/new/content/new_grid.phtml"}}</p>', '2018-04-20 08:31:19', '2018-05-16 08:54:21', 1, 0, '', NULL, '2columns-left', '', NULL, NULL, ''),
(3, 'Enable Cookies', '1column', '', '', 'enable-cookies', 'What are Cookies?', '<div class="enable-cookies cms-content">\r\n<p>"Cookies" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style="margin-bottom: 20px;">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href="https://support.google.com/accounts/answer/61416?hl=en" target="_blank">Google Chrome</a></li>\r\n<li><a href="http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies" target="_blank">Internet Explorer</a></li>\r\n<li><a href="http://support.apple.com/kb/PH19214" target="_blank">Safari</a></li>\r\n<li><a href="https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences" target="_blank">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>', '2018-04-20 08:31:19', '2018-05-16 08:54:21', 1, 0, '', NULL, '1column', NULL, NULL, NULL, ''),
(4, 'Privacy and Cookie Policy', '1column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy and Cookie Policy', '<div class="privacy-policy cms-content">\n    <div class="message info">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter "the Store") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer''s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name="list"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class="data-table data-table-definition-list">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '2018-04-20 08:31:19', '2018-04-20 08:31:19', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'web/seo/use_rewrites', '1'),
(2, 'default', 0, 'web/unsecure/base_url', 'http://localhost/Magento_Pro/'),
(3, 'default', 0, 'web/secure/base_url', 'http://localhost/Magento_Pro/'),
(4, 'default', 0, 'general/locale/code', 'en_US'),
(5, 'default', 0, 'web/secure/use_in_frontend', NULL),
(6, 'default', 0, 'web/secure/use_in_adminhtml', NULL),
(7, 'default', 0, 'general/locale/timezone', 'UTC'),
(8, 'default', 0, 'currency/options/base', 'INR'),
(9, 'default', 0, 'currency/options/default', 'USD'),
(11, 'default', 0, 'general/region/display_all', '1'),
(12, 'default', 0, 'general/region/state_required', 'AT,BR,CA,HR,EE,FI,LV,LT,RO,ES,CH,US'),
(13, 'default', 0, 'catalog/category/root_id', '2'),
(14, 'default', 0, 'analytics/subscription/enabled', '1'),
(15, 'default', 0, 'crontab/default/jobs/analytics_subscribe/schedule/cron_expr', '0 * * * *'),
(16, 'website', 0, 'connector_configuration/transactional_data/order_statuses', 'canceled,closed,complete,fraud,holded,payment_review,paypal_canceled_reversal,paypal_reversed,pending,pending_payment,pending_paypal,processing'),
(17, 'website', 0, 'connector_configuration/catalog_sync/catalog_type', 'simple,virtual,downloadable,bundle,grouped,configurable'),
(18, 'website', 0, 'connector_configuration/catalog_sync/catalog_visibility', '1,2,3,4'),
(19, 'websites', 1, 'design/pagination/pagination_frame_skip', NULL),
(20, 'websites', 1, 'design/pagination/anchor_text_for_previous', NULL),
(21, 'websites', 1, 'design/pagination/anchor_text_for_next', NULL),
(24, 'websites', 1, 'design/head/title_prefix', NULL),
(25, 'websites', 1, 'design/head/title_suffix', '|E-COM'),
(26, 'websites', 1, 'design/head/default_description', NULL),
(27, 'websites', 1, 'design/head/default_keywords', NULL),
(28, 'websites', 1, 'design/head/includes', NULL),
(30, 'websites', 1, 'design/header/logo_width', NULL),
(31, 'websites', 1, 'design/header/logo_height', NULL),
(32, 'websites', 1, 'design/header/logo_alt', 'Dataman E-Commerce'),
(33, 'websites', 1, 'design/header/welcome', 'Dataman_ECOM'),
(34, 'websites', 1, 'design/footer/copyright', 'Copyright © 2013-2018 Dataman Computer Systems Pvt. Ltd., All rights reserved.'),
(35, 'websites', 1, 'design/footer/absolute_footer', NULL),
(36, 'websites', 1, 'design/search_engine_robots/custom_instructions', NULL),
(37, 'websites', 1, 'design/watermark/image_size', NULL),
(38, 'websites', 1, 'design/watermark/image_imageOpacity', NULL),
(39, 'websites', 1, 'design/watermark/small_image_size', NULL),
(40, 'websites', 1, 'design/watermark/small_image_imageOpacity', NULL),
(41, 'websites', 1, 'design/watermark/thumbnail_size', NULL),
(42, 'websites', 1, 'design/watermark/thumbnail_imageOpacity', NULL),
(43, 'websites', 1, 'design/email/logo_alt', NULL),
(44, 'websites', 1, 'design/email/logo_width', NULL),
(45, 'websites', 1, 'design/email/logo_height', NULL),
(46, 'websites', 1, 'design/watermark/swatch_image_size', NULL),
(47, 'websites', 1, 'design/watermark/swatch_image_imageOpacity', NULL),
(48, 'default', 0, 'general/country/default', 'IN'),
(49, 'default', 0, 'general/country/allow', 'AS,AD,AO,AI,AQ,AG,AR,AM,AW,AU,AT,AZ,BS,BH,BD,BB,BY,BE,BZ,BJ,BM,BT,BO,BA,BW,BV,BR,IO,VG,BN,BG,BF,BI,KH,CM,CA,CV,KY,CF,TD,CL,CN,CX,CC,CO,KM,CG,CD,CK,CR,HR,CU,CY,CZ,CI,DK,DJ,DM,DO,EC,EG,SV,GQ,ER,EE,ET,FK,FO,FJ,FI,FR,GF,PF,TF,GA,GM,GE,DE,GH,GI,GR,GL,GD,GP,GU,GT,GG,GN,GW,GY,HT,HM,HN,HK,HU,IS,IN,ID,IR,IQ,IE,IM,IL,IT,JM,JP,JE,JO,KZ,KE,KI,KW,KG,LA,LV,LB,LS,LR,LY,LI,LT,LU,MO,MK,MG,MW,MY,MV,ML,MT,MH,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MA,MZ,MM,NA,NR,NP,NL,NC,NZ,NI,NE,NG,NU,NF,KP,MP,NO,OM,PK,PW,PS,PA,PG,PY,PE,PH,PN,PL,PT,QA,RO,RU,RW,RE,WS,SM,SA,SN,RS,SC,SL,SG,SK,SI,SB,SO,ZA,GS,KR,ES,LK,BL,SH,KN,LC,MF,PM,VC,SD,SR,SJ,SZ,SE,CH,SY,ST,TW,TJ,TZ,TH,TL,TG,TK,TO,TT,TN,TR,TM,TC,TV,UM,VI,UG,UA,AE,GB,US,UY,UZ,VU,VA,VE,VN,WF,EH,YE,ZM,ZW'),
(50, 'default', 0, 'general/country/destinations', 'IN'),
(51, 'default', 0, 'general/store_information/name', 'Dataman Computers Pvt. Ltd.'),
(52, 'default', 0, 'general/store_information/phone', '9307984402'),
(53, 'default', 0, 'general/store_information/hours', '9'),
(54, 'default', 0, 'general/store_information/country_id', 'IN'),
(55, 'default', 0, 'general/store_information/region_id', 'Uttar Pradesh'),
(56, 'default', 0, 'general/store_information/postcode', '208002'),
(57, 'default', 0, 'general/store_information/city', 'http://www.dataman.in'),
(58, 'default', 0, 'general/store_information/street_line1', 'Dataman Computers Pvt. Ltd. ,Karachi Khaana Near Saagar market'),
(59, 'default', 0, 'general/store_information/street_line2', 'Kanpur'),
(60, 'default', 0, 'general/store_information/merchant_vat_number', NULL),
(61, 'default', 0, 'general/single_store_mode/enabled', '0'),
(62, 'default', 0, 'currency/yahoofinance/timeout', '100'),
(63, 'default', 0, 'currency/fixerio/timeout', '100'),
(64, 'default', 0, 'currency/import/enabled', '1'),
(65, 'default', 0, 'currency/import/service', 'yahoofinance'),
(66, 'default', 0, 'crontab/default/jobs/currency_rates_update/schedule/cron_expr', '0 0 * * *'),
(67, 'default', 0, 'currency/import/time', '00,00,00'),
(68, 'default', 0, 'currency/import/frequency', 'D'),
(69, 'default', 0, 'currency/import/error_email', 'shesh.kumar@dataman.in'),
(70, 'default', 0, 'trans_email/ident_general/name', 'Dataman Computers system Pvt. Ltd.'),
(71, 'default', 0, 'trans_email/ident_custom2/name', 'Business Related Email'),
(72, 'default', 0, 'trans_email/ident_custom2/email', 'noreply@dataman.in'),
(73, 'default', 0, 'contact/email/recipient_email', 'shesh.kumar@dataman.in'),
(74, 'default', 0, 'cms/wysiwyg/use_static_urls_in_catalog', '0'),
(75, 'default', 0, 'catalog/frontend/list_allow_all', '1'),
(76, 'default', 0, 'catalog/frontend/flat_catalog_product', '1'),
(77, 'default', 0, 'catalog/productalert_cron/frequency', 'D'),
(78, 'default', 0, 'crontab/default/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *'),
(79, 'default', 0, 'crontab/default/jobs/catalog_product_alert/run/model', NULL),
(80, 'default', 0, 'catalog/productalert_cron/time', '00,00,00'),
(81, 'default', 0, 'catalog/productalert_cron/error_email', NULL),
(82, 'default', 0, 'catalog/product_video/youtube_api_key', NULL),
(84, 'default', 0, 'catalog/downloadable/shareable', '0'),
(85, 'default', 0, 'catalog/downloadable/content_disposition', 'inline'),
(86, 'default', 0, 'catalog/custom_options/use_calendar', '0'),
(87, 'default', 0, 'catalog/custom_options/year_range', ','),
(88, 'default', 0, 'catalog/placeholder/image_placeholder', NULL),
(89, 'default', 0, 'catalog/placeholder/small_image_placeholder', NULL),
(90, 'default', 0, 'catalog/placeholder/swatch_image_placeholder', NULL),
(91, 'default', 0, 'catalog/placeholder/thumbnail_placeholder', NULL),
(93, 'default', 0, 'catalog/price/scope', '0'),
(94, 'default', 0, 'system/full_page_cache/varnish/access_list', 'localhost'),
(95, 'default', 0, 'system/full_page_cache/varnish/backend_host', 'localhost'),
(96, 'default', 0, 'system/full_page_cache/varnish/backend_port', '8080'),
(97, 'default', 0, 'system/full_page_cache/varnish/grace_period', '300'),
(98, 'default', 0, 'cpanelsection/headergroup/top_header_notification', NULL),
(99, 'default', 0, 'cpanelsection/headergroup/sharingaddon', '0'),
(100, 'default', 0, 'cpanelsection/headergroup/addhomelink', '1'),
(101, 'default', 0, 'cpanelsection/footergroup/shownewsletter', '0'),
(102, 'default', 0, 'cpanelsection/footergroup/footer_newsletter_title', 'Newsletter'),
(103, 'default', 0, 'cpanelsection/footergroup/footer_newsletter_text', 'Sign up to be the first to hear about us'),
(104, 'default', 0, 'cpanelsection/footergroup/showsocial', '1'),
(105, 'default', 0, 'cpanelsection/footergroup/showfacebook', '1'),
(106, 'default', 0, 'cpanelsection/footergroup/facebook_link', '#'),
(107, 'default', 0, 'cpanelsection/footergroup/showtwitter', '1'),
(108, 'default', 0, 'cpanelsection/footergroup/twitter_link', '#'),
(109, 'default', 0, 'cpanelsection/footergroup/showlinkedin', '1'),
(110, 'default', 0, 'cpanelsection/footergroup/linkedin_link', '#'),
(111, 'default', 0, 'cpanelsection/footergroup/showgoogle', '1'),
(112, 'default', 0, 'cpanelsection/footergroup/google_link', '#'),
(113, 'default', 0, 'cpanelsection/footergroup/showpinterest', '1'),
(114, 'default', 0, 'cpanelsection/footergroup/pinterest_link', '#'),
(115, 'default', 0, 'cpanelsection/footergroup/footer_logo', NULL),
(116, 'default', 0, 'cpanelsection/listpagegroup/newlabel', '1'),
(117, 'default', 0, 'cpanelsection/listpagegroup/salelabel', '1'),
(118, 'default', 0, 'cpanelsection/viewpagegroup/sharingaddon', '0'),
(119, 'default', 0, 'cpanelsection/viewpagegroup/showproducts', '1'),
(120, 'default', 0, 'cpanelsection/contactpagegroup/showgooglemap', '0'),
(121, 'default', 0, 'cpanelsection/contactpagegroup/storename', NULL),
(122, 'default', 0, 'cpanelsection/contactpagegroup/storeaddress', NULL),
(123, 'default', 0, 'cpanelsection/contactpagegroup/contactinfo', NULL),
(124, 'default', 0, 'cpanelsection/contactpagegroup/storeemail', NULL),
(127, 'default', 0, 'design/pagination/pagination_frame', '5'),
(128, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(129, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(130, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(132, 'default', 0, 'design/head/default_title', 'Dataman E-Commerce'),
(133, 'default', 0, 'design/head/title_prefix', NULL),
(134, 'default', 0, 'design/head/title_suffix', '! E-Commerce'),
(135, 'default', 0, 'design/head/default_description', NULL),
(136, 'default', 0, 'design/head/default_keywords', NULL),
(137, 'default', 0, 'design/head/includes', NULL),
(138, 'default', 0, 'design/head/demonotice', '0'),
(139, 'default', 0, 'design/header/logo_width', NULL),
(140, 'default', 0, 'design/header/logo_height', NULL),
(141, 'default', 0, 'design/header/logo_alt', NULL),
(142, 'default', 0, 'design/header/welcome', 'Default welcome msg!'),
(143, 'default', 0, 'design/footer/copyright', 'Copyright © 2013-2018 Dataman Computer Systems Pvt. Ld., All rights reserved.'),
(144, 'default', 0, 'design/footer/absolute_footer', NULL),
(145, 'default', 0, 'design/search_engine_robots/default_robots', 'INDEX,FOLLOW'),
(146, 'default', 0, 'design/search_engine_robots/custom_instructions', NULL),
(147, 'default', 0, 'design/watermark/image_size', NULL),
(148, 'default', 0, 'design/watermark/image_imageOpacity', NULL),
(149, 'default', 0, 'design/watermark/image_position', 'stretch'),
(150, 'default', 0, 'design/watermark/small_image_size', NULL),
(151, 'default', 0, 'design/watermark/small_image_imageOpacity', NULL),
(152, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(153, 'default', 0, 'design/watermark/thumbnail_size', NULL),
(154, 'default', 0, 'design/watermark/thumbnail_imageOpacity', NULL),
(155, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(156, 'default', 0, 'design/email/logo_alt', NULL),
(157, 'default', 0, 'design/email/logo_width', NULL),
(158, 'default', 0, 'design/email/logo_height', NULL),
(159, 'default', 0, 'design/email/header_template', 'design_email_header_template'),
(160, 'default', 0, 'design/email/footer_template', 'design_email_footer_template'),
(161, 'default', 0, 'design/watermark/swatch_image_size', NULL),
(162, 'default', 0, 'design/watermark/swatch_image_imageOpacity', NULL),
(163, 'default', 0, 'design/watermark/swatch_image_position', 'stretch'),
(165, 'default', 0, 'wishlist/wishlist_link/use_qty', '0'),
(166, 'default', 0, 'catalog/recently_products/synchronize_with_backend', '1'),
(167, 'default', 0, 'catalog/recently_products/scope', 'group'),
(169, 'stores', 1, 'design/pagination/pagination_frame_skip', NULL),
(170, 'stores', 1, 'design/pagination/anchor_text_for_previous', NULL),
(171, 'stores', 1, 'design/pagination/anchor_text_for_next', NULL),
(172, 'stores', 1, 'design/head/title_prefix', NULL),
(173, 'stores', 1, 'design/head/default_description', NULL),
(174, 'stores', 1, 'design/head/default_keywords', NULL),
(175, 'stores', 1, 'design/head/includes', NULL),
(176, 'stores', 1, 'design/header/logo_width', NULL),
(177, 'stores', 1, 'design/header/logo_height', NULL),
(178, 'stores', 1, 'design/footer/absolute_footer', NULL),
(179, 'stores', 1, 'design/search_engine_robots/custom_instructions', NULL),
(180, 'stores', 1, 'design/watermark/image_size', NULL),
(181, 'stores', 1, 'design/watermark/image_imageOpacity', NULL),
(182, 'stores', 1, 'design/watermark/small_image_size', NULL),
(183, 'stores', 1, 'design/watermark/small_image_imageOpacity', NULL),
(184, 'stores', 1, 'design/watermark/thumbnail_size', NULL),
(185, 'stores', 1, 'design/watermark/thumbnail_imageOpacity', NULL),
(186, 'stores', 1, 'design/email/logo_alt', NULL),
(187, 'stores', 1, 'design/email/logo_width', NULL),
(188, 'stores', 1, 'design/email/logo_height', NULL),
(189, 'stores', 1, 'design/watermark/swatch_image_size', NULL),
(190, 'stores', 1, 'design/watermark/swatch_image_imageOpacity', NULL),
(192, 'default', 0, 'design/theme/theme_id', '15'),
(193, 'websites', 1, 'design/theme/theme_id', '15'),
(194, 'default', 0, 'scrollsection/scrollgroup/active', '1'),
(195, 'default', 0, 'outofstock_product/outofstockproduct/enableoutofstock', '0'),
(196, 'default', 0, 'productslider/general/enable_productslider', '1'),
(197, 'default', 0, 'productslider/slider_settings/products_number', '9'),
(198, 'default', 0, 'productslider/slider_settings/display_title', '0'),
(199, 'default', 0, 'productslider/slider_settings/display_price', '1'),
(200, 'default', 0, 'productslider/slider_settings/display_cart', '1'),
(201, 'default', 0, 'productslider/slider_settings/display_wishlist', '1'),
(202, 'default', 0, 'productslider/slider_settings/display_compare', '1'),
(203, 'default', 0, 'productslider/slider_settings/enable_swatches', '0'),
(204, 'default', 0, 'productslider/slider_settings/enable_ajaxcart', '0'),
(205, 'default', 0, 'productslider/slider_settings/grid', '0'),
(206, 'default', 0, 'productslider/slider_settings/exclude_from_cart', '0'),
(207, 'default', 0, 'productslider/slider_settings/exclude_from_checkout', '0'),
(208, 'default', 0, 'productslider/slider_settings/navigation', '0'),
(209, 'default', 0, 'productslider/slider_settings/infinite', '1'),
(210, 'default', 0, 'productslider/slider_settings/slides_to_show', '4'),
(211, 'default', 0, 'productslider/slider_settings/slides_to_scroll', '2'),
(212, 'default', 0, 'productslider/slider_settings/speed', '500'),
(213, 'default', 0, 'productslider/slider_settings/autoplay', '0'),
(214, 'default', 0, 'productslider/slider_settings/autoplay_speed', '1000'),
(215, 'default', 0, 'productslider/slider_settings/rtl', '0'),
(216, 'default', 0, 'productslider/slider_settings/breakpoint_large', '1024'),
(217, 'default', 0, 'productslider/slider_settings/large_slides_to_show', '3'),
(218, 'default', 0, 'productslider/slider_settings/large_slides_to_scroll', '2'),
(219, 'default', 0, 'productslider/slider_settings/breakpoint_medium', '768'),
(220, 'default', 0, 'productslider/slider_settings/medium_slides_to_show', '2'),
(221, 'default', 0, 'productslider/slider_settings/medium_slides_to_scroll', '1'),
(222, 'default', 0, 'productslider/slider_settings/breakpoint_small', '480'),
(223, 'default', 0, 'productslider/slider_settings/small_slides_to_show', '1'),
(224, 'default', 0, 'productslider/slider_settings/small_slides_to_scroll', '1'),
(225, 'default', 0, 'jnext_mega_config/general/enabledisable', '1'),
(226, 'default', 0, 'jnext_mega_config/category_labels/category_label1', 'Men'),
(227, 'default', 0, 'jnext_mega_config/category_labels/category_label1_bgcolor', '#d6368b'),
(228, 'default', 0, 'jnext_mega_config/category_labels/category_label2', 'Laptop'),
(229, 'default', 0, 'jnext_mega_config/category_labels/category_label2_bgcolor', '#41d167'),
(230, 'default', 0, 'jnext_mega_config/category_labels/category_label3', NULL),
(231, 'default', 0, 'jnext_mega_config/category_labels/category_label3_bgcolor', NULL),
(232, 'default', 0, 'jnext_mega_config/category_labels/category_label4', NULL),
(233, 'default', 0, 'jnext_mega_config/category_labels/category_label4_bgcolor', NULL),
(234, 'default', 0, 'scrollsection/scrollgroup/display', '1'),
(235, 'default', 0, 'scrollsection/scrollgroup/position', '1'),
(236, 'default', 0, 'scrollsection/scrollgroup/link_text', 'Top'),
(237, 'default', 0, 'scrollsection/scrollgroup/bgclr', '#ffffff'),
(238, 'default', 0, 'scrollsection/scrollgroup/bghoverclr', '#000000'),
(239, 'default', 0, 'scrollsection/scrollgroup/textclr', '#333333'),
(240, 'default', 0, 'scrollsection/scrollgroup/texthoverclr', '#ffffff'),
(241, 'default', 0, 'scrollsection/scrollgroup/link_image', NULL),
(242, 'default', 0, 'scrollsection/scrollgroup/link_hover_image', NULL),
(243, 'default', 0, 'swissup_core/notification/enabled', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) UNSIGNED NOT NULL COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validation request success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_dummy_cl`
--

CREATE TABLE `customer_dummy_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_dummy_cl';

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `is_searchable_in_grid`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL, 1, 1, 1, 0),
(2, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(3, 1, NULL, 0, NULL, 1, 20, NULL, 1, 1, 0, 1),
(4, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(5, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 40, NULL, 0, 0, 0, 0),
(6, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(7, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 60, NULL, 0, 0, 0, 0),
(8, 0, NULL, 0, NULL, 0, 70, NULL, 0, 0, 0, 0),
(9, 1, NULL, 0, '{"input_validation":"email"}', 1, 80, NULL, 1, 1, 1, 1),
(10, 1, NULL, 0, NULL, 1, 25, NULL, 1, 1, 1, 0),
(11, 0, 'date', 0, '{"input_validation":"date"}', 0, 90, NULL, 1, 1, 1, 0),
(12, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(13, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(14, 0, NULL, 0, '{"input_validation":"date"}', 1, 0, NULL, 0, 0, 0, 0),
(15, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(16, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(17, 0, NULL, 0, '{"max_text_length":255}', 0, 100, NULL, 1, 1, 0, 1),
(18, 0, NULL, 0, NULL, 1, 0, NULL, 1, 1, 1, 0),
(19, 0, NULL, 0, NULL, 0, 0, NULL, 1, 1, 1, 0),
(20, 0, NULL, 0, '[]', 0, 110, NULL, 1, 1, 1, 0),
(21, 1, NULL, 0, NULL, 1, 28, NULL, 0, 0, 0, 0),
(22, 0, NULL, 0, NULL, 0, 10, NULL, 0, 0, 0, 0),
(23, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 20, NULL, 1, 0, 0, 1),
(24, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(25, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 40, NULL, 1, 0, 0, 1),
(26, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(27, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 60, NULL, 1, 0, 0, 1),
(28, 1, NULL, 2, '{"max_text_length":255,"min_text_length":1}', 1, 70, NULL, 1, 0, 0, 1),
(29, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 80, NULL, 1, 0, 0, 1),
(30, 1, NULL, 0, NULL, 1, 90, NULL, 1, 1, 1, 0),
(31, 1, NULL, 0, NULL, 1, 100, NULL, 1, 1, 0, 1),
(32, 1, NULL, 0, NULL, 1, 100, NULL, 0, 0, 0, 0),
(33, 1, NULL, 0, '[]', 1, 110, 'Magento\\Customer\\Model\\Attribute\\Data\\Postcode', 1, 1, 1, 1),
(34, 1, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 1, 120, NULL, 1, 1, 1, 1),
(35, 0, NULL, 0, '{"max_text_length":255,"min_text_length":1}', 0, 130, NULL, 1, 0, 0, 1),
(36, 1, NULL, 0, NULL, 1, 140, NULL, 0, 0, 0, 0),
(37, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(38, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(39, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(40, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(41, 0, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(42, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(43, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(44, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Multiline Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

INSERT INTO `customer_eav_attribute_website` (`attribute_id`, `website_id`, `is_visible`, `is_required`, `default_value`, `multiline_count`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, NULL, NULL),
(19, 1, NULL, NULL, NULL, NULL),
(20, 1, NULL, NULL, NULL, NULL),
(21, 1, NULL, NULL, NULL, NULL),
(23, 1, NULL, NULL, NULL, NULL),
(25, 1, NULL, NULL, NULL, NULL),
(27, 1, NULL, NULL, NULL, NULL),
(28, 1, NULL, NULL, NULL, NULL),
(29, 1, NULL, NULL, NULL, NULL),
(30, 1, NULL, NULL, NULL, NULL),
(31, 1, NULL, NULL, NULL, NULL),
(32, 1, NULL, NULL, NULL, NULL),
(33, 1, NULL, NULL, NULL, NULL),
(34, 1, NULL, NULL, NULL, NULL),
(35, 1, NULL, NULL, NULL, NULL),
(36, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE `customer_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Dumping data for table `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`, `created_in`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `password_hash`, `rp_token`, `rp_token_created_at`, `default_billing`, `default_shipping`, `taxvat`, `confirmation`, `gender`, `failures_num`, `first_failure`, `lock_expires`) VALUES
(1, 1, 'mishrakshesh14287@gmail.com', 1, NULL, 1, '2018-04-25 05:36:04', '2018-05-02 04:46:41', 1, 0, 'Default Store View', NULL, 'Ajay', NULL, 'Mishra', NULL, NULL, '2beda2a79f90185b04fd21b8e3af413815757e866e76d33f6fee658204253098:kYpiuS6BWQFQIMpdqiu45GQXjpNtwnPU:1', 'bd62681a28cd267584148cd4eaa63355', '2018-05-02 04:46:41', NULL, NULL, NULL, NULL, NULL, 1, '2018-05-02 04:44:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_checkout', 9),
('adminhtml_checkout', 10),
('adminhtml_checkout', 11),
('adminhtml_checkout', 17),
('adminhtml_checkout', 20),
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('adminhtml_customer', 5),
('adminhtml_customer', 6),
('adminhtml_customer', 7),
('adminhtml_customer', 8),
('adminhtml_customer', 9),
('adminhtml_customer', 10),
('adminhtml_customer', 11),
('adminhtml_customer', 17),
('adminhtml_customer', 19),
('adminhtml_customer', 20),
('adminhtml_customer', 21),
('adminhtml_customer_address', 22),
('adminhtml_customer_address', 23),
('adminhtml_customer_address', 24),
('adminhtml_customer_address', 25),
('adminhtml_customer_address', 26),
('adminhtml_customer_address', 27),
('adminhtml_customer_address', 28),
('adminhtml_customer_address', 29),
('adminhtml_customer_address', 30),
('adminhtml_customer_address', 31),
('adminhtml_customer_address', 32),
('adminhtml_customer_address', 33),
('adminhtml_customer_address', 34),
('adminhtml_customer_address', 35),
('adminhtml_customer_address', 36),
('customer_account_create', 4),
('customer_account_create', 5),
('customer_account_create', 6),
('customer_account_create', 7),
('customer_account_create', 8),
('customer_account_create', 9),
('customer_account_create', 11),
('customer_account_create', 17),
('customer_account_create', 19),
('customer_account_create', 20),
('customer_account_edit', 4),
('customer_account_edit', 5),
('customer_account_edit', 6),
('customer_account_edit', 7),
('customer_account_edit', 8),
('customer_account_edit', 9),
('customer_account_edit', 11),
('customer_account_edit', 17),
('customer_account_edit', 19),
('customer_account_edit', 20),
('customer_address_edit', 22),
('customer_address_edit', 23),
('customer_address_edit', 24),
('customer_address_edit', 25),
('customer_address_edit', 26),
('customer_address_edit', 27),
('customer_address_edit', 28),
('customer_address_edit', 29),
('customer_address_edit', 30),
('customer_address_edit', 31),
('customer_address_edit', 32),
('customer_address_edit', 33),
('customer_address_edit', 34),
('customer_address_edit', 35),
('customer_address_edit', 36),
('customer_register_address', 22),
('customer_register_address', 23),
('customer_register_address', 24),
('customer_register_address', 25),
('customer_register_address', 26),
('customer_register_address', 27),
('customer_register_address', 28),
('customer_register_address', 29),
('customer_register_address', 30),
('customer_register_address', 31),
('customer_register_address', 32),
('customer_register_address', 33),
('customer_register_address', 34),
('customer_register_address', 35),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_grid_flat`
--

CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Dumping data for table `customer_grid_flat`
--

INSERT INTO `customer_grid_flat` (`entity_id`, `name`, `email`, `group_id`, `created_at`, `website_id`, `confirmation`, `created_in`, `dob`, `gender`, `taxvat`, `lock_expires`, `shipping_full`, `billing_full`, `billing_firstname`, `billing_lastname`, `billing_telephone`, `billing_postcode`, `billing_country_id`, `billing_region`, `billing_street`, `billing_city`, `billing_fax`, `billing_vat_id`, `billing_company`) VALUES
(1, 'Ajay Mishra', 'mishrakshesh14287@gmail.com', 1, '2018-04-25 05:36:04', 1, NULL, 'Default Store View', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_log`
--

CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Dumping data for table `customer_log`
--

INSERT INTO `customer_log` (`log_id`, `customer_id`, `last_login_at`, `last_logout_at`) VALUES
(1, 1, '2018-05-01 11:18:39', '2018-04-27 11:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `customer_visitor`
--

CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

INSERT INTO `customer_visitor` (`visitor_id`, `customer_id`, `session_id`, `last_visit_at`) VALUES
(1, NULL, '33qcebeqqc67ili0nlc57gddr0', '2018-04-20 08:35:57'),
(2, NULL, 'hveh9m430df2bajuv68g38apm4', '2018-04-20 10:14:15'),
(3, NULL, '9bht3pal53qo4l38gq1o57rh05', '2018-04-20 09:56:40'),
(4, NULL, 'joh7ofhbqa67jhkuppgi6i7922', '2018-04-20 10:13:28'),
(5, NULL, 'aq4ls6m0g2l4jmcco9krhfp6q7', '2018-04-20 11:06:10'),
(6, NULL, 'ki9j08amirtkvr6kohtas8coq3', '2018-04-20 12:52:23'),
(7, NULL, 'kggvr3vfcep9nhhgo90htrje55', '2018-04-23 04:07:43'),
(8, NULL, 'g3u1ocodhjt5d8526n8nc9bkk6', '2018-04-23 04:07:59'),
(9, NULL, '67mcegfg4vj2pqkn4vspadagu1', '2018-04-23 04:14:11'),
(10, NULL, '0lu79num2ja8mo6v5hevrg86d7', '2018-04-23 04:23:41'),
(11, NULL, 'f2vvstkutvinkrh8pv3vkh43p1', '2018-04-23 04:24:17'),
(12, NULL, '9iarrvn6eqir6tbi3c7tjpp1h5', '2018-04-23 04:28:54'),
(14, NULL, 'kuvc6t8n25n7eeqrd6tg2oaoj3', '2018-04-23 04:45:36'),
(15, NULL, 'ujd87t8gdkp4osb2p0lt2o0p56', '2018-04-23 04:47:29'),
(16, NULL, 'o7sq389q65u6f5hsm8u5arfdc1', '2018-04-23 04:47:30'),
(17, NULL, '7pd49du7he6grts774qikdllt6', '2018-04-23 04:51:08'),
(18, NULL, 'bns4ccs81u7b29p1n9667te381', '2018-04-23 04:57:17'),
(19, NULL, 'tn37iliasjmtva3mh034ds1u51', '2018-04-23 05:09:23'),
(20, NULL, 'a52i9a18p214opslsau2n1elb7', '2018-04-23 06:10:51'),
(21, NULL, 'sh4q44rgc7pi0jn865aa0doc55', '2018-04-23 06:39:22'),
(22, NULL, '995mjsnup1j7vtufcsjeimccs3', '2018-04-23 07:02:23'),
(23, NULL, 'ath5kd8f9mubj8fnpnah6n7at3', '2018-04-23 09:42:37'),
(24, NULL, 'i3epkt71780odiishp78rshsv7', '2018-04-23 08:35:26'),
(25, NULL, '6a8go41dsl11ppse7vois143r4', '2018-04-23 08:36:02'),
(28, NULL, 'e2c16i0gqj4t930fvh3ach7is7', '2018-04-23 08:39:18'),
(29, NULL, '885se6vv6pv2ap0nco8i0iark5', '2018-04-23 09:55:26'),
(30, NULL, 'oq03evqvema6hcv1o4mfe69o34', '2018-04-23 09:55:29'),
(31, NULL, 'b989rh05jog0cau3i1novdc7n6', '2018-04-23 09:55:57'),
(32, NULL, '3n6a0lash6tob3j3trlq2aaet4', '2018-04-23 09:56:10'),
(33, NULL, 'qe1la774nuem0jlhblkugkg065', '2018-04-23 09:57:15'),
(34, NULL, '9dvpo4h0qq9ofrcrvgqru4fmi3', '2018-04-23 09:57:15'),
(35, NULL, 'uaukm28gg9knrrc6fktbjifa65', '2018-04-23 09:57:16'),
(36, NULL, '078tev2m0v03ao93jkl78ok1t0', '2018-04-23 12:48:05'),
(37, NULL, 'hco708i4iheaom2568heo5g5i3', '2018-04-24 04:31:35'),
(38, NULL, 'pd9h8uln7p93khqmbkk0msmjk0', '2018-04-24 04:32:50'),
(39, NULL, 'ikn467g1h586vrk3k4tckonfj4', '2018-04-24 04:32:57'),
(40, NULL, 'u01sd681bomh30sfrm00u8ohe2', '2018-04-24 04:33:49'),
(41, NULL, 'g0h2gdibnv3miig48qs5df7s93', '2018-04-24 04:33:53'),
(42, NULL, 'bvke3rpo6m1nfn8lo560pibv76', '2018-04-24 04:40:44'),
(43, NULL, 'nvlt157uuj3rcm7ietft0lbvt0', '2018-04-24 04:40:53'),
(44, NULL, '59e3n830fnnp33s3616qds2vf6', '2018-04-24 04:40:53'),
(45, NULL, 'qmhis0u3r6gbacralcnlbdssl5', '2018-04-24 04:41:04'),
(46, NULL, 'v9rh5ehbpkuaaf8phsmgf66cf6', '2018-04-24 04:41:55'),
(47, NULL, 'vjrkolp5qpbf3esntjd1nlm0s6', '2018-04-24 04:50:31'),
(48, NULL, 'nsr1e6ipo2mk843cn74a8l4g80', '2018-04-24 04:50:40'),
(49, NULL, 'dvmuq6ub2b2a5gvagpooegui33', '2018-04-24 04:50:48'),
(50, NULL, '89itorv4ehqjlptj1k1bb82pl1', '2018-04-24 04:51:08'),
(51, NULL, 'ajqv333blp8p9sfnj89h6fd0o6', '2018-04-24 04:52:55'),
(52, NULL, 'n2jm2l2mhs831tg3mmlt89f1k3', '2018-04-24 05:03:38'),
(53, NULL, 'udva4s8ctfor5uk5s8dv4ejjm5', '2018-04-24 05:25:35'),
(54, NULL, '4jhp4876n0l7mkr4ich7t5jto6', '2018-04-24 05:25:58'),
(55, NULL, '27roevpr2f18912pme49l09eg1', '2018-04-24 05:27:20'),
(56, NULL, 'mvhjrng4lj24gt7u5e7dpl8sm1', '2018-04-24 05:27:33'),
(57, NULL, 'jd5hgpqu8lt71m2jsjdvg92775', '2018-04-24 05:32:49'),
(58, NULL, 'ei09i0qgcmugs258fdu3rp23m0', '2018-04-24 05:33:15'),
(59, NULL, 'njgj06cev1jd2k8n4nd2m00vi2', '2018-04-24 09:24:58'),
(60, NULL, 'k9a1ll352cto46163crb7dcrk0', '2018-04-24 13:14:33'),
(61, NULL, '4g0phndab6pu9s9df01qhuhti6', '2018-04-25 05:05:44'),
(62, NULL, 'jp7qucjfjirv3rolqtub2i5av4', '2018-04-25 05:34:53'),
(63, NULL, '1vfo8l7oh7mcf97u2tusr41nv7', '2018-04-25 05:35:22'),
(64, NULL, 'u1ge5td57u2vb61rcv8lqotpb3', '2018-04-25 05:35:27'),
(65, 1, 'oj4as79jv0rljncqarjtgl3u82', '2018-04-25 05:46:42'),
(66, NULL, 'p0lvkngvqghh4t6tj7n96336o7', '2018-04-25 07:18:14'),
(67, NULL, '8s5kovq6l95a8ue4ciu7knetb0', '2018-04-25 08:08:07'),
(68, 1, 'kqvrs7jkuh7v4i0deoapamfb41', '2018-04-25 09:38:12'),
(69, NULL, 'fu79cjbo5s2rj33t7osu8mho64', '2018-04-25 08:08:13'),
(70, NULL, '1vivcakr3qt92rek6tbglh70s3', '2018-04-25 08:08:14'),
(71, NULL, '6sg2j8q7f51jvssiggim5r2ph0', '2018-04-25 11:59:45'),
(72, NULL, 'jod3i4746mal0enj1v8t34tnc4', '2018-04-26 04:14:03'),
(73, NULL, '7u970ecqbukkqhhgbi10qsr3n7', '2018-04-26 04:14:28'),
(74, NULL, '31g9onj2773tk0173p6tfktg15', '2018-04-26 04:38:16'),
(75, NULL, 'auce5v5ha0oo83621g6j3prhf1', '2018-04-26 05:07:17'),
(76, NULL, '35d5s8j8kt9lq9j6i533rj7bu6', '2018-04-26 06:27:19'),
(77, NULL, '2ro6du9uuh6p38ghgm67jl6uo0', '2018-04-26 06:28:09'),
(78, NULL, '2a4lsj9l8b05f17vb6niem07e2', '2018-04-26 06:40:42'),
(79, NULL, 'f49nnt5shqkidosgqherleh7n5', '2018-04-26 06:42:20'),
(80, NULL, '8p7qngq47ke7unvah3r73fg4b5', '2018-04-26 06:46:17'),
(81, NULL, 't4c1evom23d7s0lgosl29gvvm2', '2018-04-26 06:57:03'),
(82, NULL, 'gle0alffaqmghsel4kfl63cup1', '2018-04-26 07:09:55'),
(83, NULL, 'hh0u54a6ct8ikalhc9mjphg1s5', '2018-04-26 07:12:41'),
(84, NULL, 'k3hl7qc5kfd5kjgi6f8uuqo067', '2018-04-26 07:15:38'),
(85, NULL, '1hj9navqvibmjg2hd9rqjaeeu1', '2018-04-26 07:19:43'),
(86, NULL, 'de5esaglsth33ti2m7v05mitd4', '2018-04-26 07:20:50'),
(87, NULL, '4b3t76km160apfde9cnu27fuh7', '2018-04-26 09:14:36'),
(88, NULL, 'lfdfiumjnus5npk04ld6074m06', '2018-04-26 10:50:50'),
(89, NULL, 'auqnil0un03mi5v7g20s9tq2n6', '2018-04-26 13:14:50'),
(90, NULL, 'jg5iiislru5j5ggav9q168c493', '2018-04-26 12:46:45'),
(91, 1, 'aetq1s6jqr8lebfbmq7fplk6u1', '2018-04-27 06:06:53'),
(92, NULL, 'bf0k9ho943k7hnn1oplnopkkn7', '2018-04-27 06:22:40'),
(93, NULL, '4i47d7bu2gscb29gg3fo54v6u4', '2018-04-27 06:22:43'),
(94, NULL, 'jp8vi0qgbhs89jdke9isb9sfj6', '2018-04-27 06:27:09'),
(95, 1, '32q133s6v304pf10sjakp2k0v2', '2018-04-27 06:59:59'),
(96, NULL, '0bfh7h178vk6q69ekbc4ha6l63', '2018-04-27 08:03:22'),
(97, 1, 'u6cd73ge7gmccqujkdgasifur1', '2018-04-27 11:48:51'),
(98, NULL, '5ank2vb99urlp92n2s6ub6rrt1', '2018-04-27 12:08:04'),
(99, NULL, 'ij3kabpncouq4liukh43gpah75', '2018-04-28 04:09:24'),
(100, NULL, '3dnq86fc2fnv4cm6srnakulia2', '2018-04-28 04:39:21'),
(101, NULL, 'f65bfbresjq4clf0j3hk16rge5', '2018-04-28 04:39:43'),
(102, NULL, 'ch3pjurdgoomo6ih5l8iems5k7', '2018-04-28 04:41:59'),
(103, NULL, 'l90ro802297em062ln25ejju53', '2018-04-28 10:06:56'),
(104, NULL, 'lof3fd12ihi4hbjff2usdb9bk1', '2018-04-28 13:16:36'),
(105, NULL, '05epa8aekiqit9idhrsl2nhm01', '2018-04-28 12:55:09'),
(106, NULL, 'daai7jska9uqv1b5j09kigldi4', '2018-04-30 04:58:37'),
(107, NULL, '2a2ncnunivaarlmohqnm3kpsk1', '2018-04-30 05:33:02'),
(108, NULL, '037bp4pk7ktfabebkof4mukv31', '2018-04-30 05:29:02'),
(109, NULL, 'lg764821js3l7g1i8o8ttnqa25', '2018-04-30 07:24:08'),
(110, NULL, '524h8d7mnqg5pqiol40cld4ls3', '2018-04-30 08:15:07'),
(111, NULL, 'p2df8psi981bm2i91q32vrmpr2', '2018-04-30 08:17:52'),
(112, NULL, '97uc0r0ra8vek9jacgfop7pf45', '2018-04-30 08:36:04'),
(113, NULL, 'nf1irdfnutedr4l95cgjhghgm2', '2018-04-30 08:36:28'),
(114, NULL, '37hiucmt9tkr6b88t5jn0v1ov0', '2018-04-30 08:37:59'),
(115, NULL, 'luham49hl65uflk7ikgg8v19e7', '2018-04-30 08:38:54'),
(116, NULL, '5sug9nm0a37orku42unbf6ufs3', '2018-04-30 08:40:11'),
(117, NULL, 'fq0anjk7s9eilk2uq3s04jd766', '2018-04-30 08:40:17'),
(118, NULL, 'fpkiipmrn836s0m7ss5n1f2c56', '2018-04-30 08:41:13'),
(119, NULL, 's0lughq8k2a5kte3q3t96c4do3', '2018-04-30 08:43:16'),
(120, NULL, 's7clvn1cod33t6kugom62rsbr6', '2018-04-30 08:43:18'),
(121, NULL, 'd80ies3iigg7nitnananhgk183', '2018-04-30 08:45:17'),
(122, NULL, '984q3q56a0o7i7euof439ui8p2', '2018-04-30 08:48:56'),
(123, NULL, '2t52dhhd6105cehc8jngbsulo1', '2018-04-30 08:49:02'),
(125, NULL, 'll4lt0c3uumu03iqodsis475h5', '2018-04-30 08:49:47'),
(127, NULL, 'p4f7muhbougsq2r8mlqbebard2', '2018-04-30 08:50:03'),
(128, NULL, 'jp1fllbkdfci140gubuguen674', '2018-04-30 08:50:03'),
(129, NULL, 'm9vl9dmir5ppnh0veiqs6o59o5', '2018-04-30 08:51:28'),
(130, NULL, 'ifn9ebc3mb04hqdtf1u6hs6tu0', '2018-04-30 11:18:26'),
(131, NULL, 'birvaa1keuqfek4js10vj3j7b3', '2018-04-30 11:30:34'),
(132, NULL, 'e4b7g5l7seq51cl1jmmi6p4ei4', '2018-04-30 11:30:39'),
(133, NULL, '08ce268m8mgdrgf6psdsml0823', '2018-04-30 13:14:34'),
(134, NULL, 'fmt7crdo4rae0votkk3sq3a2i5', '2018-04-30 12:11:37'),
(135, NULL, 'hnrif6nh0hla2fg2uaerpfbek7', '2018-05-01 04:04:51'),
(136, NULL, '40g91j50221jakntpus00b1v23', '2018-05-01 04:05:11'),
(137, NULL, '6pvgknd0dr43j8bqg3p8h16tn2', '2018-05-01 04:05:17'),
(138, NULL, 'e1up593jho4v6su2b0v0r87f46', '2018-05-01 04:05:19'),
(139, NULL, 'b6mcpd0ga9sfnc2br45of13pe5', '2018-05-01 04:05:19'),
(140, NULL, '56gkj79b0ke55mppp9dbntu2o1', '2018-05-01 04:05:53'),
(141, NULL, 'vmv34ts6d2cuida6fr47e6csu3', '2018-05-01 04:07:19'),
(142, NULL, 'dlp6uts8b315lbsrbnmqjemj27', '2018-05-01 04:07:45'),
(143, NULL, '39ju1vb3k3h4f4oir82ttolhc1', '2018-05-01 04:16:06'),
(144, NULL, 'p4ptobs6muhdricjpo3cc69ub4', '2018-05-01 04:17:34'),
(145, NULL, '25cvqt3ouuhg70r3fq6s9cvgf5', '2018-05-01 04:17:52'),
(146, NULL, '0nt0fivi7t89vntgbeh4tkpcu6', '2018-05-01 04:18:03'),
(147, NULL, 'mv5jn8h8u2mp1q61e017q9fgs2', '2018-05-01 04:18:09'),
(148, NULL, 'pbtnsisacg63a9jvmu2dlcfrb0', '2018-05-01 04:18:16'),
(149, NULL, '2qpk06jgc9i3dbn2840651csm7', '2018-05-01 04:19:24'),
(150, NULL, 'qutsk2gepinmsocpekttc3q096', '2018-05-01 04:19:47'),
(151, NULL, 'n1fr14aacv6mpgurgboboces02', '2018-05-01 04:28:14'),
(152, NULL, 'v2vijeo2k5f5hg741tic5fdmv7', '2018-05-01 04:28:17'),
(153, NULL, 'pqrkt0jn8231n462agsm30nuc1', '2018-05-01 07:24:20'),
(154, NULL, 'ddl96slhta1dokgak69qoajop7', '2018-05-01 04:28:18'),
(155, NULL, 'aa0uuuerj5t0fkp7kd88o2fc05', '2018-05-01 09:41:25'),
(156, NULL, 'detdsj8gv5b2g8sq2ksf3o0a66', '2018-05-01 09:43:17'),
(157, NULL, 'ibl2qpraid485hhc871ll5bp51', '2018-05-01 09:52:25'),
(158, NULL, 'sc2spns1h0v87tf5nsgh2ovpr0', '2018-05-01 09:53:58'),
(159, NULL, 'jhp8gv5gqe7pbps41b051uvn82', '2018-05-01 09:54:02'),
(160, NULL, '2pujfdc77augi17eua4uhrfvb1', '2018-05-01 09:55:29'),
(161, NULL, 'frltg5j67cc9bcclk7cnpl7290', '2018-05-01 09:56:17'),
(162, 1, '7j6d8oqsnnh5e4k9cfnuhmomn2', '2018-05-01 13:27:44'),
(163, NULL, 'u9scnspl2t9kvrep7246k2frb7', '2018-05-02 04:22:44'),
(164, NULL, 'mfgekl15qhg45qn89s0606nua5', '2018-05-02 04:29:33'),
(165, NULL, 'ln9apud7nnofqno0tvq52dfmf3', '2018-05-02 04:46:47'),
(166, NULL, 'fu7jlfisdt057s39vmfd2jle70', '2018-05-02 06:07:48'),
(167, NULL, 'bh264206qonhoije9g7gsn15m3', '2018-05-02 13:13:23'),
(168, NULL, '4pdrso8keg2clhdulemg2vbcm5', '2018-05-02 06:12:01'),
(169, NULL, '4f2ev4svulaqd2airilj92v1q1', '2018-05-03 04:16:11'),
(170, NULL, 'c9sul6jeumt99hpqjsffdn7gl3', '2018-05-03 05:37:47'),
(171, NULL, 'eom1m0s3qbo6smhpenrdl49223', '2018-05-03 04:17:09'),
(172, NULL, 'l83op9g7b64rledca3gc27i9t0', '2018-05-03 04:17:09'),
(173, NULL, '43cgmv4tkglqfvng5tucrfjkv6', '2018-05-04 05:24:27'),
(174, NULL, '7kvck74dsq7988torbihgrlv05', '2018-05-04 05:24:52'),
(175, NULL, 'k5ud02e02c4cmq5bqjeusdl506', '2018-05-04 05:31:44'),
(176, NULL, 't57l66jt75n2gulv81jfpq3da3', '2018-05-04 05:46:51'),
(177, NULL, '2t0qjbmk2vhjtca3706g2kktj4', '2018-05-04 07:15:45'),
(178, NULL, 'g9jhmdbdj1jqifc1qtobmbphk0', '2018-05-04 11:55:31'),
(179, NULL, 'hge59lv3lr1of33422mptpkbi0', '2018-05-07 06:29:38'),
(180, NULL, 'g9617g1knofed0h5mkgt83gms6', '2018-05-07 08:39:39'),
(181, NULL, '8keo0qc9oc5h1nenunl63e5ja6', '2018-05-07 08:50:56'),
(182, NULL, 'fgrhatrk7ntou8hs3f08nhp2b4', '2018-05-14 09:10:56'),
(183, NULL, 'va7g3obphaluaodgme6s4g9u07', '2018-05-14 10:04:18'),
(184, NULL, 'rvhh6dbplqdak5p6vfphf00iq5', '2018-05-14 11:41:02'),
(185, NULL, '12to41hct16qgg82qri77oa3j3', '2018-05-14 12:45:04'),
(186, NULL, 'ug4qvfnqmlgj0nhp17js4k9e94', '2018-05-14 12:45:02'),
(187, NULL, 'js4g363eitspa1fpc4nd0si871', '2018-05-14 12:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL COMMENT 'Design Change Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- --------------------------------------------------------

--
-- Table structure for table `design_config_dummy_cl`
--

CREATE TABLE `design_config_dummy_cl` (
  `version_id` int(10) UNSIGNED NOT NULL COMMENT 'Version ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_dummy_cl';

-- --------------------------------------------------------

--
-- Table structure for table `design_config_grid_flat`
--

CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

INSERT INTO `design_config_grid_flat` (`entity_id`, `store_website_id`, `store_group_id`, `store_id`, `theme_theme_id`) VALUES
(0, NULL, NULL, NULL, '15'),
(1, 1, NULL, NULL, '15'),
(2, 1, 1, 1, '15');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) UNSIGNED NOT NULL COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE `directory_country_region` (
  `region_id` int(10) UNSIGNED NOT NULL COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AE', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AE', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AE', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Vorarlberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 'BR', 'AC', 'Acre'),
(486, 'BR', 'AL', 'Alagoas'),
(487, 'BR', 'AP', 'Amapá'),
(488, 'BR', 'AM', 'Amazonas'),
(489, 'BR', 'BA', 'Bahia'),
(490, 'BR', 'CE', 'Ceará'),
(491, 'BR', 'ES', 'Espírito Santo'),
(492, 'BR', 'GO', 'Goiás'),
(493, 'BR', 'MA', 'Maranhão'),
(494, 'BR', 'MT', 'Mato Grosso'),
(495, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 'BR', 'MG', 'Minas Gerais'),
(497, 'BR', 'PA', 'Pará'),
(498, 'BR', 'PB', 'Paraíba'),
(499, 'BR', 'PR', 'Paraná'),
(500, 'BR', 'PE', 'Pernambuco'),
(501, 'BR', 'PI', 'Piauí'),
(502, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 'BR', 'RO', 'Rondônia'),
(506, 'BR', 'RR', 'Roraima'),
(507, 'BR', 'SC', 'Santa Catarina'),
(508, 'BR', 'SP', 'São Paulo'),
(509, 'BR', 'SE', 'Sergipe'),
(510, 'BR', 'TO', 'Tocantins'),
(511, 'BR', 'DF', 'Distrito Federal'),
(512, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 'HR', 'HR-13', 'Zadarska županija'),
(525, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 'HR', 'HR-18', 'Istarska županija'),
(530, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 'HR', 'HR-20', 'Međimurska županija'),
(532, 'HR', 'HR-21', 'Grad Zagreb');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Vorarlberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis'),
('en_US', 485, 'Acre'),
('en_US', 486, 'Alagoas'),
('en_US', 487, 'Amapá'),
('en_US', 488, 'Amazonas'),
('en_US', 489, 'Bahia'),
('en_US', 490, 'Ceará'),
('en_US', 491, 'Espírito Santo'),
('en_US', 492, 'Goiás'),
('en_US', 493, 'Maranhão'),
('en_US', 494, 'Mato Grosso'),
('en_US', 495, 'Mato Grosso do Sul'),
('en_US', 496, 'Minas Gerais'),
('en_US', 497, 'Pará'),
('en_US', 498, 'Paraíba'),
('en_US', 499, 'Paraná'),
('en_US', 500, 'Pernambuco'),
('en_US', 501, 'Piauí'),
('en_US', 502, 'Rio de Janeiro'),
('en_US', 503, 'Rio Grande do Norte'),
('en_US', 504, 'Rio Grande do Sul'),
('en_US', 505, 'Rondônia'),
('en_US', 506, 'Roraima'),
('en_US', 507, 'Santa Catarina'),
('en_US', 508, 'São Paulo'),
('en_US', 509, 'Sergipe'),
('en_US', 510, 'Tocantins'),
('en_US', 511, 'Distrito Federal'),
('en_US', 512, 'Zagrebačka županija'),
('en_US', 513, 'Krapinsko-zagorska županija'),
('en_US', 514, 'Sisačko-moslavačka županija'),
('en_US', 515, 'Karlovačka županija'),
('en_US', 516, 'Varaždinska županija'),
('en_US', 517, 'Koprivničko-križevačka županija'),
('en_US', 518, 'Bjelovarsko-bilogorska županija'),
('en_US', 519, 'Primorsko-goranska županija'),
('en_US', 520, 'Ličko-senjska županija'),
('en_US', 521, 'Virovitičko-podravska županija'),
('en_US', 522, 'Požeško-slavonska županija'),
('en_US', 523, 'Brodsko-posavska županija'),
('en_US', 524, 'Zadarska županija'),
('en_US', 525, 'Osječko-baranjska županija'),
('en_US', 526, 'Šibensko-kninska županija'),
('en_US', 527, 'Vukovarsko-srijemska županija'),
('en_US', 528, 'Splitsko-dalmatinska županija'),
('en_US', 529, 'Istarska županija'),
('en_US', 530, 'Dubrovačko-neretvanska županija'),
('en_US', 531, 'Međimurska županija'),
('en_US', 532, 'Grad Zagreb');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('INR', 'INR', '1.000000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

CREATE TABLE `downloadable_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) UNSIGNED NOT NULL COMMENT 'Price ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) UNSIGNED NOT NULL COMMENT 'Purchased ID',
  `order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item ID',
  `purchased_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) UNSIGNED NOT NULL COMMENT 'Sample ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `sample_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) NOT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'static', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'static', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Date of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password', 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'rp_token', NULL, NULL, 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'rp_token_created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'default_billing', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing', 'static', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'default_shipping', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping', 'static', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'taxvat', NULL, NULL, 'static', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'confirmation', NULL, NULL, 'static', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(19, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 1, 'gender', NULL, NULL, 'static', NULL, NULL, 'select', 'Gender', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 0, 0, NULL, 0, NULL),
(21, 1, 'disable_auto_group_change', NULL, 'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(23, 2, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(24, 2, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(27, 2, 'company', NULL, NULL, 'static', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(28, 2, 'street', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend', 'static', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(29, 2, 'city', NULL, NULL, 'static', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(30, 2, 'country_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Country', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country', 1, 0, NULL, 0, NULL),
(31, 2, 'region', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region', 'static', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(32, 2, 'region_id', NULL, NULL, 'static', NULL, NULL, 'hidden', 'State/Province', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region', 0, 0, NULL, 0, NULL),
(33, 2, 'postcode', NULL, NULL, 'static', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 2, 'telephone', NULL, NULL, 'static', NULL, NULL, 'text', 'Phone Number', NULL, NULL, 1, 0, NULL, 0, NULL),
(35, 2, 'fax', NULL, NULL, 'static', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 1, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Updated At', NULL, NULL, 0, 0, NULL, 0, NULL),
(42, 1, 'failures_num', NULL, NULL, 'static', NULL, NULL, 'hidden', 'Failures Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(43, 1, 'first_failure', NULL, NULL, 'static', NULL, NULL, 'date', 'First Failure Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 1, 'lock_expires', NULL, NULL, 'static', NULL, NULL, 'date', 'Failures Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(46, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, NULL, 0, NULL),
(47, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'image', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(50, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(51, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(52, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode', 0, 0, NULL, 0, NULL),
(53, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(54, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '1', 0, NULL),
(55, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(59, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(61, 3, 'custom_design_from', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(62, 3, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(64, 3, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(66, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(67, 3, 'available_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(68, 3, 'default_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(69, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, '1', 0, NULL),
(70, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(71, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(72, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(73, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Product Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(76, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(78, 4, 'special_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'special_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(80, 4, 'special_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(81, 4, 'cost', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'weight', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight', 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(84, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(85, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),
(87, 4, 'image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Base', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Small', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'media_gallery', NULL, NULL, 'static', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'tier_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(93, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(94, 4, 'news_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'news_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(97, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Product', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status', 0, 0, '1', 0, NULL),
(98, 4, 'minimal_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'Magento\\Catalog\\Model\\Product\\Visibility', 0, 0, '4', 0, NULL),
(100, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'New Theme', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(101, 4, 'custom_design_from', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(103, 4, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Layout Update XML', NULL, NULL, 0, 0, NULL, 0, NULL),
(104, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(105, 4, 'category_ids', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category', 'static', NULL, NULL, 'text', 'Categories', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container', 0, 0, 'container2', 0, NULL),
(107, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(108, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(110, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(113, 4, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(114, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture', 0, 0, NULL, 0, NULL),
(115, 4, 'quantity_and_stock_status', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock', 'int', NULL, NULL, 'select', 'Quantity', NULL, 'Magento\\CatalogInventory\\Model\\Source\\Stock', 0, 0, '1', 0, NULL),
(116, 4, 'custom_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'New Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(117, 3, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(118, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(119, 4, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(120, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'msrp', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(122, 4, 'msrp_display_actual_price_type', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price', 0, 0, '0', 0, NULL),
(123, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(127, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic Price', NULL, NULL, 1, 0, '0', 0, NULL),
(128, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic SKU', NULL, NULL, 1, 0, '0', 0, NULL),
(129, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic Weight', NULL, NULL, 1, 0, '0', 0, NULL),
(130, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View', 1, 0, NULL, 0, NULL),
(131, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, 'select', 'Ship Bundle Items', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type', 1, 0, '0', 0, NULL),
(132, 4, 'gift_message_available', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(133, 4, 'swatch_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Swatch', NULL, NULL, 0, 0, NULL, 0, NULL),
(134, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'Magento\\Tax\\Model\\TaxClass\\Source\\Product', 0, 0, '2', 0, NULL),
(135, 4, 'touchscreen', NULL, NULL, 'varchar', NULL, NULL, 'text', 'TouchScreen', NULL, NULL, 1, 1, NULL, 0, NULL),
(137, 4, 'core_hp', NULL, NULL, 'int', NULL, NULL, 'select', 'core-hp', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 1, 1, '8', 0, NULL),
(138, 4, 'size', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\ArrayBackend', 'varchar', NULL, NULL, 'multiselect', 'size', NULL, NULL, 1, 1, '11', 0, NULL),
(140, 3, 'mega_menu_type', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Menu Type', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Menutypes', 0, 0, NULL, 0, NULL),
(141, 3, 'mega_menu_width', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Menu Width', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Blockwidth', 0, 0, NULL, 0, NULL),
(142, 3, 'mega_category_label', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Category Label', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Categorylabels', 0, 0, NULL, 0, NULL),
(143, 3, 'mega_category_thumbnail_image', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Category Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(144, 3, 'mega_display_top_block', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Top Block?', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Blockoptions', 0, 0, NULL, 0, NULL),
(145, 3, 'mega_top_block_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Selct Top Static Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(146, 3, 'mega_top_block_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Top Block Content', NULL, NULL, 0, 0, NULL, 0, NULL),
(147, 3, 'mega_display_left_block', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Left Block?', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Leftblockoptions', 0, 0, NULL, 0, NULL),
(148, 3, 'mega_left_block_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Selct Left Static Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(149, 3, 'mega_left_block_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Left Block Content', NULL, NULL, 0, 0, NULL, 0, NULL),
(150, 3, 'mega_left_block_width', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Left Block Width', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Blockwidth', 0, 0, NULL, 0, NULL),
(151, 3, 'mega_display_right_block', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Right Block?', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Blockoptions', 0, 0, NULL, 0, NULL),
(152, 3, 'mega_right_block_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Selct Right Static Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(153, 3, 'mega_right_block_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Right Block Content', NULL, NULL, 0, 0, NULL, 0, NULL),
(154, 3, 'mega_right_block_width', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Right Block Width', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Blockwidth', 0, 0, NULL, 0, NULL),
(155, 3, 'mega_display_bottom_block', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Bottom Block?', NULL, 'Jnext\\Megamenu\\Model\\Category\\Attribute\\Source\\Blockoptions', 0, 0, NULL, 0, NULL),
(156, 3, 'mega_bottom_block_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Selct Bottom Static Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(157, 3, 'mega_bottom_block_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Bottom Block Content', NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`, `attribute_group_code`, `tab_group_code`) VALUES
(1, 1, 'General', 1, 1, 'general', NULL),
(2, 2, 'General', 1, 1, 'general', NULL),
(3, 3, 'General', 10, 1, 'general', NULL),
(4, 3, 'General Information', 2, 0, 'general-information', NULL),
(5, 3, 'Display Settings', 20, 0, 'display-settings', NULL),
(6, 3, 'Custom Design', 30, 0, 'custom-design', NULL),
(7, 4, 'Product Details', 1, 1, 'product-details', 'basic'),
(8, 4, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(9, 4, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(10, 4, 'Images', 4, 0, 'image-management', 'basic'),
(11, 4, 'Design', 7, 0, 'design', 'advanced'),
(12, 4, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(13, 4, 'Content', 2, 0, 'content', 'basic'),
(14, 4, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(15, 5, 'General', 1, 1, 'general', NULL),
(16, 6, 'General', 1, 1, 'general', NULL),
(17, 7, 'General', 1, 1, 'general', NULL),
(18, 8, 'General', 1, 1, 'general', NULL),
(19, 4, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(20, 4, 'Gift Options', 10, 0, 'gift-options', NULL),
(22, 9, 'Gift Options', 10, 0, 'gift-options', NULL),
(23, 9, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(24, 9, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(25, 9, 'Design', 7, 0, 'design', 'advanced'),
(26, 9, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(27, 9, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(28, 9, 'Images', 4, 0, 'image-management', 'basic'),
(29, 9, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(30, 9, 'Content', 2, 0, 'content', 'basic'),
(31, 9, 'Product Details', 1, 1, 'product-details', 'basic'),
(32, 9, 'Attributes', 11, 0, 'attributes', NULL),
(33, 10, 'Gift Options', 10, 0, 'gift-options', NULL),
(34, 10, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(35, 10, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(36, 10, 'Design', 7, 0, 'design', 'advanced'),
(37, 10, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(38, 10, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(39, 10, 'Images', 4, 0, 'image-management', 'basic'),
(40, 10, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(41, 10, 'Content', 2, 0, 'content', 'basic'),
(42, 10, 'Product Details', 1, 1, 'product-details', 'basic'),
(43, 11, 'Gift Options', 10, 0, 'gift-options', NULL),
(44, 11, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(45, 11, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(46, 11, 'Design', 7, 0, 'design', 'advanced'),
(47, 11, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(48, 11, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(49, 11, 'Images', 4, 0, 'image-management', 'basic'),
(50, 11, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(51, 11, 'Content', 2, 0, 'content', 'basic'),
(52, 11, 'Product Details', 1, 1, 'product-details', 'basic'),
(53, 4, 'Attributes', 11, 0, 'attributes', NULL),
(54, 12, 'Gift Options', 10, 0, 'gift-options', NULL),
(55, 12, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(56, 12, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(57, 12, 'Design', 7, 0, 'design', 'advanced'),
(58, 12, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(59, 12, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(60, 12, 'Images', 4, 0, 'image-management', 'basic'),
(61, 12, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(62, 12, 'Content', 2, 0, 'content', 'basic'),
(63, 12, 'Product Details', 1, 1, 'product-details', 'basic'),
(64, 12, 'Attributes', 11, 0, 'attributes', NULL),
(65, 13, 'Attributes', 11, 0, 'attributes', NULL),
(66, 13, 'Gift Options', 10, 0, 'gift-options', NULL),
(67, 13, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(68, 13, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(69, 13, 'Design', 7, 0, 'design', 'advanced'),
(70, 13, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(71, 13, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(72, 13, 'Images', 4, 0, 'image-management', 'basic'),
(73, 13, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(74, 13, 'Content', 2, 0, 'content', 'basic'),
(75, 13, 'Product Details', 1, 1, 'product-details', 'basic'),
(76, 3, 'Megamenu', 1000, 0, 'megamenu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Dumping data for table `eav_attribute_label`
--

INSERT INTO `eav_attribute_label` (`attribute_label_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 135, 1, 'TouchScreen'),
(5, 137, 1, 'core-hp');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 20, 0),
(2, 20, 1),
(3, 20, 3),
(8, 137, 1),
(9, 137, 2),
(10, 137, 3),
(11, 138, 1),
(12, 138, 2),
(13, 138, 3),
(14, 138, 4),
(15, 138, 5);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_swatch`
--

CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) UNSIGNED NOT NULL COMMENT 'Swatch ID',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `type` smallint(5) UNSIGNED NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female'),
(3, 3, 0, 'Not Specified'),
(12, 8, 1, '4'),
(13, 8, 0, '2'),
(14, 9, 1, '6'),
(15, 9, 0, '4'),
(16, 10, 1, '8'),
(17, 10, 0, '6'),
(18, 11, 0, 'M'),
(19, 11, 1, 'M'),
(20, 12, 0, 'S'),
(21, 12, 1, 'S'),
(22, 13, 0, 'L'),
(23, 13, 1, 'L'),
(24, 14, 0, 'XL'),
(25, 14, 1, 'XL'),
(26, 15, 0, 'XXL'),
(27, 15, 1, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 2),
(2, 2, 'Default', 2),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1),
(9, 4, 'Laptop', 0),
(10, 4, 'core-hp', 0),
(11, 4, 'Men', 0),
(12, 4, 'T-Shirts', 0),
(13, 4, 'Dell', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE `eav_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 20),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 81),
(13, 1, 1, 1, 13, 115),
(14, 1, 1, 1, 14, 120),
(15, 1, 1, 1, 15, 82),
(16, 1, 1, 1, 16, 83),
(17, 1, 1, 1, 17, 100),
(18, 1, 1, 1, 18, 0),
(19, 1, 1, 1, 19, 0),
(20, 1, 1, 1, 20, 110),
(21, 1, 1, 1, 21, 28),
(22, 2, 2, 2, 22, 10),
(23, 2, 2, 2, 23, 20),
(24, 2, 2, 2, 24, 30),
(25, 2, 2, 2, 25, 40),
(26, 2, 2, 2, 26, 50),
(27, 2, 2, 2, 27, 60),
(28, 2, 2, 2, 28, 70),
(29, 2, 2, 2, 29, 80),
(30, 2, 2, 2, 30, 90),
(31, 2, 2, 2, 31, 100),
(32, 2, 2, 2, 32, 100),
(33, 2, 2, 2, 33, 110),
(34, 2, 2, 2, 34, 120),
(35, 2, 2, 2, 35, 130),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 1, 1, 1, 41, 87),
(42, 1, 1, 1, 42, 100),
(43, 1, 1, 1, 43, 110),
(44, 1, 1, 1, 44, 120),
(45, 3, 3, 4, 45, 1),
(46, 3, 3, 4, 46, 2),
(47, 3, 3, 4, 47, 4),
(48, 3, 3, 4, 48, 5),
(49, 3, 3, 4, 49, 6),
(50, 3, 3, 4, 50, 7),
(51, 3, 3, 4, 51, 8),
(52, 3, 3, 5, 52, 10),
(53, 3, 3, 5, 53, 20),
(54, 3, 3, 5, 54, 30),
(55, 3, 3, 4, 55, 12),
(56, 3, 3, 4, 56, 13),
(57, 3, 3, 4, 57, 14),
(58, 3, 3, 4, 58, 15),
(59, 3, 3, 4, 59, 16),
(60, 3, 3, 6, 60, 10),
(61, 3, 3, 6, 61, 30),
(62, 3, 3, 6, 62, 40),
(63, 3, 3, 6, 63, 50),
(64, 3, 3, 6, 64, 60),
(65, 3, 3, 4, 65, 24),
(66, 3, 3, 4, 66, 25),
(67, 3, 3, 5, 67, 40),
(68, 3, 3, 5, 68, 50),
(69, 3, 3, 4, 69, 10),
(70, 3, 3, 6, 70, 5),
(71, 3, 3, 6, 71, 6),
(72, 3, 3, 5, 72, 51),
(90, 4, 4, 7, 91, 6),
(96, 4, 4, 8, 98, 8),
(105, 4, 4, 7, 107, 14),
(106, 4, 4, 7, 108, 15),
(107, 4, 4, 7, 109, 16),
(108, 4, 4, 7, 110, 17),
(109, 4, 4, 7, 111, 18),
(110, 4, 4, 7, 112, 19),
(111, 4, 4, 7, 113, 20),
(115, 3, 3, 4, 117, 3),
(116, 3, 3, 4, 118, 17),
(118, 4, 4, 7, 120, 11),
(121, 4, 4, 7, 123, 111),
(122, 4, 4, 7, 124, 112),
(123, 4, 4, 7, 125, 113),
(124, 4, 4, 7, 126, 114),
(179, 4, 4, 7, 73, 2),
(180, 4, 4, 7, 74, 3),
(181, 4, 4, 7, 77, 5),
(182, 4, 4, 7, 82, 9),
(183, 4, 4, 7, 94, 13),
(184, 4, 4, 7, 95, 14),
(185, 4, 4, 7, 97, 1),
(186, 4, 4, 7, 99, 12),
(187, 4, 4, 7, 105, 11),
(188, 4, 4, 7, 114, 15),
(189, 4, 4, 7, 115, 8),
(190, 4, 4, 7, 127, 6),
(191, 4, 4, 7, 128, 4),
(192, 4, 4, 7, 129, 10),
(193, 4, 4, 7, 134, 7),
(194, 4, 4, 13, 75, 1),
(195, 4, 4, 13, 76, 2),
(196, 4, 4, 19, 131, 1),
(197, 4, 4, 10, 87, 1),
(198, 4, 4, 10, 88, 2),
(199, 4, 4, 10, 89, 3),
(200, 4, 4, 10, 90, 5),
(201, 4, 4, 10, 96, 6),
(202, 4, 4, 10, 133, 4),
(203, 4, 4, 9, 84, 2),
(204, 4, 4, 9, 85, 3),
(205, 4, 4, 9, 86, 4),
(206, 4, 4, 9, 119, 1),
(207, 4, 4, 8, 78, 1),
(208, 4, 4, 8, 79, 2),
(209, 4, 4, 8, 80, 3),
(210, 4, 4, 8, 81, 4),
(211, 4, 4, 8, 92, 5),
(212, 4, 4, 8, 121, 6),
(213, 4, 4, 8, 122, 7),
(214, 4, 4, 8, 130, 8),
(215, 4, 4, 11, 103, 3),
(216, 4, 4, 11, 104, 1),
(217, 4, 4, 11, 106, 2),
(218, 4, 4, 14, 100, 3),
(219, 4, 4, 14, 101, 1),
(220, 4, 4, 14, 102, 2),
(221, 4, 4, 14, 116, 4),
(222, 4, 4, 20, 132, 1),
(238, 4, 9, 26, 98, 8),
(258, 4, 9, 31, 91, 6),
(265, 4, 9, 31, 120, 11),
(269, 4, 9, 31, 107, 14),
(270, 4, 9, 31, 108, 15),
(272, 4, 9, 31, 109, 16),
(273, 4, 9, 31, 110, 17),
(274, 4, 9, 31, 111, 18),
(275, 4, 9, 31, 112, 19),
(276, 4, 9, 31, 113, 20),
(277, 4, 9, 31, 123, 111),
(278, 4, 9, 31, 124, 112),
(279, 4, 9, 31, 125, 113),
(280, 4, 9, 31, 126, 114),
(328, 4, 10, 33, 132, 1),
(329, 4, 10, 35, 101, 1),
(330, 4, 10, 35, 102, 2),
(331, 4, 10, 35, 100, 3),
(332, 4, 10, 35, 116, 4),
(333, 4, 10, 36, 104, 1),
(334, 4, 10, 36, 106, 2),
(335, 4, 10, 36, 103, 3),
(336, 4, 10, 37, 78, 1),
(337, 4, 10, 37, 79, 2),
(338, 4, 10, 37, 80, 3),
(339, 4, 10, 37, 81, 4),
(340, 4, 10, 37, 92, 5),
(341, 4, 10, 37, 121, 6),
(342, 4, 10, 37, 122, 7),
(343, 4, 10, 37, 98, 8),
(344, 4, 10, 37, 130, 8),
(345, 4, 10, 38, 119, 1),
(346, 4, 10, 38, 84, 2),
(347, 4, 10, 38, 85, 3),
(348, 4, 10, 38, 86, 4),
(349, 4, 10, 39, 87, 1),
(350, 4, 10, 39, 88, 2),
(351, 4, 10, 39, 89, 3),
(352, 4, 10, 39, 133, 4),
(353, 4, 10, 39, 90, 5),
(354, 4, 10, 39, 96, 6),
(355, 4, 10, 40, 131, 1),
(356, 4, 10, 41, 75, 1),
(357, 4, 10, 41, 76, 2),
(358, 4, 10, 42, 97, 1),
(359, 4, 10, 42, 73, 2),
(360, 4, 10, 42, 74, 3),
(361, 4, 10, 42, 128, 4),
(362, 4, 10, 42, 77, 5),
(363, 4, 10, 42, 127, 6),
(364, 4, 10, 42, 91, 6),
(365, 4, 10, 42, 134, 7),
(366, 4, 10, 42, 115, 8),
(367, 4, 10, 42, 82, 9),
(368, 4, 10, 42, 129, 10),
(369, 4, 10, 42, 120, 11),
(370, 4, 10, 42, 105, 11),
(371, 4, 10, 42, 99, 12),
(372, 4, 10, 42, 94, 13),
(373, 4, 10, 42, 95, 14),
(374, 4, 10, 42, 107, 14),
(375, 4, 10, 42, 114, 15),
(376, 4, 10, 42, 108, 15),
(377, 4, 10, 42, 109, 16),
(378, 4, 10, 42, 110, 17),
(379, 4, 10, 42, 111, 18),
(380, 4, 10, 42, 112, 19),
(381, 4, 10, 42, 113, 20),
(382, 4, 10, 42, 123, 111),
(383, 4, 10, 42, 124, 112),
(384, 4, 10, 42, 125, 113),
(385, 4, 10, 42, 126, 114),
(388, 4, 10, 42, 137, 118),
(404, 4, 11, 47, 98, 8),
(425, 4, 11, 52, 91, 6),
(430, 4, 11, 52, 120, 11),
(435, 4, 11, 52, 107, 14),
(437, 4, 11, 52, 108, 15),
(438, 4, 11, 52, 109, 16),
(439, 4, 11, 52, 110, 17),
(440, 4, 11, 52, 111, 18),
(441, 4, 11, 52, 112, 19),
(442, 4, 11, 52, 113, 20),
(443, 4, 11, 52, 123, 111),
(444, 4, 11, 52, 124, 112),
(445, 4, 11, 52, 125, 113),
(446, 4, 11, 52, 126, 114),
(583, 4, 4, 53, 93, 1),
(673, 4, 9, 31, 73, 2),
(674, 4, 9, 31, 74, 3),
(675, 4, 9, 31, 77, 5),
(676, 4, 9, 31, 82, 9),
(677, 4, 9, 31, 94, 13),
(678, 4, 9, 31, 95, 14),
(679, 4, 9, 31, 97, 1),
(680, 4, 9, 31, 99, 12),
(681, 4, 9, 31, 105, 11),
(682, 4, 9, 31, 114, 15),
(683, 4, 9, 31, 115, 8),
(684, 4, 9, 31, 127, 6),
(685, 4, 9, 31, 128, 4),
(686, 4, 9, 31, 129, 10),
(687, 4, 9, 31, 134, 7),
(688, 4, 9, 30, 75, 1),
(689, 4, 9, 30, 76, 2),
(690, 4, 9, 29, 131, 1),
(691, 4, 9, 28, 87, 1),
(692, 4, 9, 28, 88, 2),
(693, 4, 9, 28, 89, 3),
(694, 4, 9, 28, 90, 5),
(695, 4, 9, 28, 96, 6),
(696, 4, 9, 28, 133, 4),
(697, 4, 9, 27, 84, 2),
(698, 4, 9, 27, 85, 3),
(699, 4, 9, 27, 86, 4),
(700, 4, 9, 27, 119, 1),
(701, 4, 9, 26, 78, 1),
(702, 4, 9, 26, 79, 2),
(703, 4, 9, 26, 80, 3),
(704, 4, 9, 26, 81, 4),
(705, 4, 9, 26, 92, 5),
(706, 4, 9, 26, 121, 6),
(707, 4, 9, 26, 122, 7),
(708, 4, 9, 26, 130, 8),
(709, 4, 9, 25, 103, 3),
(710, 4, 9, 25, 104, 1),
(711, 4, 9, 25, 106, 2),
(712, 4, 9, 24, 100, 3),
(713, 4, 9, 24, 101, 1),
(714, 4, 9, 24, 102, 2),
(715, 4, 9, 24, 116, 4),
(716, 4, 9, 22, 132, 1),
(721, 4, 11, 52, 73, 2),
(722, 4, 11, 52, 74, 3),
(723, 4, 11, 52, 77, 5),
(724, 4, 11, 52, 82, 9),
(725, 4, 11, 52, 94, 13),
(726, 4, 11, 52, 95, 14),
(727, 4, 11, 52, 97, 1),
(728, 4, 11, 52, 99, 12),
(729, 4, 11, 52, 105, 11),
(730, 4, 11, 52, 114, 15),
(731, 4, 11, 52, 115, 8),
(732, 4, 11, 52, 127, 6),
(733, 4, 11, 52, 128, 4),
(734, 4, 11, 52, 129, 10),
(735, 4, 11, 52, 134, 7),
(737, 4, 11, 51, 75, 1),
(738, 4, 11, 51, 76, 2),
(739, 4, 11, 50, 131, 1),
(740, 4, 11, 49, 87, 1),
(741, 4, 11, 49, 88, 2),
(742, 4, 11, 49, 89, 3),
(743, 4, 11, 49, 90, 5),
(744, 4, 11, 49, 96, 6),
(745, 4, 11, 49, 133, 4),
(746, 4, 11, 48, 84, 2),
(747, 4, 11, 48, 85, 3),
(748, 4, 11, 48, 86, 4),
(749, 4, 11, 48, 119, 1),
(750, 4, 11, 47, 78, 1),
(751, 4, 11, 47, 79, 2),
(752, 4, 11, 47, 80, 3),
(753, 4, 11, 47, 81, 4),
(754, 4, 11, 47, 92, 5),
(755, 4, 11, 47, 121, 6),
(756, 4, 11, 47, 122, 7),
(757, 4, 11, 47, 130, 8),
(758, 4, 11, 46, 103, 3),
(759, 4, 11, 46, 104, 1),
(760, 4, 11, 46, 106, 2),
(761, 4, 11, 45, 100, 3),
(762, 4, 11, 45, 101, 1),
(763, 4, 11, 45, 102, 2),
(764, 4, 11, 45, 116, 4),
(765, 4, 11, 43, 132, 1),
(781, 4, 12, 58, 98, 8),
(802, 4, 12, 63, 91, 6),
(808, 4, 12, 63, 120, 11),
(812, 4, 12, 63, 107, 14),
(813, 4, 12, 63, 108, 15),
(815, 4, 12, 63, 109, 16),
(817, 4, 12, 63, 110, 17),
(818, 4, 12, 63, 111, 18),
(819, 4, 12, 63, 112, 19),
(820, 4, 12, 63, 113, 20),
(821, 4, 12, 63, 123, 111),
(822, 4, 12, 63, 124, 112),
(823, 4, 12, 63, 125, 113),
(824, 4, 12, 63, 126, 114),
(825, 4, 12, 63, 73, 2),
(826, 4, 12, 63, 74, 3),
(827, 4, 12, 63, 77, 5),
(828, 4, 12, 63, 82, 9),
(829, 4, 12, 63, 94, 13),
(830, 4, 12, 63, 95, 14),
(831, 4, 12, 63, 97, 1),
(832, 4, 12, 63, 99, 12),
(833, 4, 12, 63, 105, 11),
(834, 4, 12, 63, 114, 15),
(835, 4, 12, 63, 115, 8),
(836, 4, 12, 63, 127, 6),
(837, 4, 12, 63, 128, 4),
(838, 4, 12, 63, 129, 10),
(839, 4, 12, 63, 134, 7),
(841, 4, 12, 62, 75, 1),
(842, 4, 12, 62, 76, 2),
(843, 4, 12, 61, 131, 1),
(844, 4, 12, 60, 87, 1),
(845, 4, 12, 60, 88, 2),
(846, 4, 12, 60, 89, 3),
(847, 4, 12, 60, 90, 5),
(848, 4, 12, 60, 96, 6),
(849, 4, 12, 60, 133, 4),
(850, 4, 12, 59, 84, 2),
(851, 4, 12, 59, 85, 3),
(852, 4, 12, 59, 86, 4),
(853, 4, 12, 59, 119, 1),
(854, 4, 12, 58, 78, 1),
(855, 4, 12, 58, 79, 2),
(856, 4, 12, 58, 80, 3),
(857, 4, 12, 58, 81, 4),
(858, 4, 12, 58, 92, 5),
(859, 4, 12, 58, 121, 6),
(860, 4, 12, 58, 122, 7),
(861, 4, 12, 58, 130, 8),
(862, 4, 12, 57, 103, 3),
(863, 4, 12, 57, 104, 1),
(864, 4, 12, 57, 106, 2),
(865, 4, 12, 56, 100, 3),
(866, 4, 12, 56, 101, 1),
(867, 4, 12, 56, 102, 2),
(868, 4, 12, 56, 116, 4),
(869, 4, 12, 54, 132, 1),
(870, 4, 12, 64, 93, 1),
(886, 4, 13, 70, 98, 8),
(907, 4, 13, 75, 91, 6),
(912, 4, 13, 75, 120, 11),
(917, 4, 13, 75, 107, 14),
(919, 4, 13, 75, 108, 15),
(920, 4, 13, 75, 109, 16),
(921, 4, 13, 75, 110, 17),
(922, 4, 13, 75, 111, 18),
(923, 4, 13, 75, 112, 19),
(924, 4, 13, 75, 113, 20),
(926, 4, 13, 75, 123, 111),
(927, 4, 13, 75, 124, 112),
(928, 4, 13, 75, 125, 113),
(929, 4, 13, 75, 126, 114),
(978, 4, 13, 75, 73, 2),
(979, 4, 13, 75, 74, 3),
(980, 4, 13, 75, 77, 5),
(981, 4, 13, 75, 82, 9),
(982, 4, 13, 75, 94, 13),
(983, 4, 13, 75, 95, 14),
(984, 4, 13, 75, 97, 1),
(985, 4, 13, 75, 99, 12),
(986, 4, 13, 75, 105, 11),
(987, 4, 13, 75, 114, 15),
(988, 4, 13, 75, 115, 8),
(989, 4, 13, 75, 127, 6),
(990, 4, 13, 75, 128, 4),
(991, 4, 13, 75, 129, 10),
(992, 4, 13, 75, 134, 7),
(994, 4, 13, 74, 75, 1),
(995, 4, 13, 74, 76, 2),
(996, 4, 13, 73, 131, 1),
(997, 4, 13, 72, 87, 1),
(998, 4, 13, 72, 88, 2),
(999, 4, 13, 72, 89, 3),
(1000, 4, 13, 72, 90, 5),
(1001, 4, 13, 72, 96, 6),
(1002, 4, 13, 72, 133, 4),
(1003, 4, 13, 71, 84, 2),
(1004, 4, 13, 71, 85, 3),
(1005, 4, 13, 71, 86, 4),
(1006, 4, 13, 71, 119, 1),
(1007, 4, 13, 70, 78, 1),
(1008, 4, 13, 70, 79, 2),
(1009, 4, 13, 70, 80, 3),
(1010, 4, 13, 70, 81, 4),
(1011, 4, 13, 70, 92, 5),
(1012, 4, 13, 70, 121, 6),
(1013, 4, 13, 70, 122, 7),
(1014, 4, 13, 70, 130, 8),
(1015, 4, 13, 69, 103, 3),
(1016, 4, 13, 69, 104, 1),
(1017, 4, 13, 69, 106, 2),
(1018, 4, 13, 68, 100, 3),
(1019, 4, 13, 68, 101, 1),
(1020, 4, 13, 68, 102, 2),
(1021, 4, 13, 68, 116, 4),
(1022, 4, 13, 66, 132, 1),
(1023, 3, 3, 76, 140, 30),
(1024, 3, 3, 76, 141, 2),
(1025, 3, 3, 76, 142, 32),
(1026, 3, 3, 76, 143, 33),
(1027, 3, 3, 76, 144, 34),
(1028, 3, 3, 76, 145, 35),
(1029, 3, 3, 76, 146, 36),
(1030, 3, 3, 76, 147, 37),
(1031, 3, 3, 76, 148, 38),
(1032, 3, 3, 76, 149, 39),
(1033, 3, 3, 76, 150, 40),
(1034, 3, 3, 76, 151, 41),
(1035, 3, 3, 76, 152, 42),
(1036, 3, 3, 76, 153, 43),
(1037, 3, 3, 76, 154, 44),
(1038, 3, 3, 76, 155, 45),
(1039, 3, 3, 76, 156, 46),
(1040, 3, 3, 76, 157, 47),
(1041, 3, 3, 76, 0, 31);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) UNSIGNED NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'Magento\\Customer\\Model\\ResourceModel\\Customer', 'Magento\\Customer\\Model\\Attribute', 'customer_entity', NULL, NULL, 1, 'default', 1, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),
(2, 'customer_address', 'Magento\\Customer\\Model\\ResourceModel\\Address', 'Magento\\Customer\\Model\\Attribute', 'customer_address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),
(3, 'catalog_category', 'Magento\\Catalog\\Model\\ResourceModel\\Category', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_category_entity', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),
(4, 'catalog_product', 'Magento\\Catalog\\Model\\ResourceModel\\Product', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_product_entity', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),
(5, 'order', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_order', NULL, NULL, 1, 'default', 5, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_invoice', NULL, NULL, 1, 'default', 6, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo', NULL, 'sales_creditmemo', NULL, NULL, 1, 'default', 7, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment', NULL, 'sales_shipment', NULL, NULL, 1, 'default', 8, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE `eav_form_element` (
  `element_id` int(10) UNSIGNED NOT NULL COMMENT 'Element Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 23, 0),
(2, 1, NULL, 25, 1),
(3, 1, NULL, 27, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 28, 4),
(6, 1, NULL, 29, 5),
(7, 1, NULL, 31, 6),
(8, 1, NULL, 33, 7),
(9, 1, NULL, 30, 8),
(10, 1, NULL, 34, 9),
(11, 1, NULL, 35, 10),
(12, 2, NULL, 23, 0),
(13, 2, NULL, 25, 1),
(14, 2, NULL, 27, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 28, 4),
(17, 2, NULL, 29, 5),
(18, 2, NULL, 31, 6),
(19, 2, NULL, 33, 7),
(20, 2, NULL, 30, 8),
(21, 2, NULL, 34, 9),
(22, 2, NULL, 35, 10),
(23, 3, NULL, 23, 0),
(24, 3, NULL, 25, 1),
(25, 3, NULL, 27, 2),
(26, 3, NULL, 28, 3),
(27, 3, NULL, 29, 4),
(28, 3, NULL, 31, 5),
(29, 3, NULL, 33, 6),
(30, 3, NULL, 30, 7),
(31, 3, NULL, 34, 8),
(32, 3, NULL, 35, 9),
(33, 4, NULL, 23, 0),
(34, 4, NULL, 25, 1),
(35, 4, NULL, 27, 2),
(36, 4, NULL, 28, 3),
(37, 4, NULL, 29, 4),
(38, 4, NULL, 31, 5),
(39, 4, NULL, 33, 6),
(40, 4, NULL, 30, 7),
(41, 4, NULL, 34, 8),
(42, 4, NULL, 35, 9);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `email_abandoned_cart`
--

CREATE TABLE `email_abandoned_cart` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `quote_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Quote Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Quote Active',
  `quote_updated_at` timestamp NULL DEFAULT NULL COMMENT 'Quote updated at',
  `abandoned_cart_number` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Abandoned Cart number',
  `items_count` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Quote items count',
  `items_ids` varchar(255) DEFAULT NULL COMMENT 'Quote item ids',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Abandoned Carts Table';

-- --------------------------------------------------------

--
-- Table structure for table `email_automation`
--

CREATE TABLE `email_automation` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `automation_type` varchar(255) DEFAULT NULL COMMENT 'Automation Type',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Automation Type',
  `enrolment_status` varchar(255) NOT NULL COMMENT 'Entrolment Status',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `type_id` varchar(255) DEFAULT NULL COMMENT 'Type ID',
  `program_id` varchar(255) DEFAULT NULL COMMENT 'Program ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `message` varchar(255) NOT NULL COMMENT 'Message',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Automation Status';

-- --------------------------------------------------------

--
-- Table structure for table `email_campaign`
--

CREATE TABLE `email_campaign` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `campaign_id` int(10) UNSIGNED NOT NULL COMMENT 'Campaign ID',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Contact Email',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `sent_at` timestamp NULL DEFAULT NULL COMMENT 'Send Date',
  `order_increment_id` varchar(50) NOT NULL COMMENT 'Order Increment ID',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Sales Quote ID',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT 'Error Message',
  `checkout_method` varchar(255) NOT NULL DEFAULT '' COMMENT 'Checkout Method Used',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `event_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Event Name',
  `send_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Send Id',
  `send_status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Campaign send status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Campaigns';

-- --------------------------------------------------------

--
-- Table structure for table `email_catalog`
--

CREATE TABLE `email_catalog` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Imported',
  `modified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Modified',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Catalog';

--
-- Dumping data for table `email_catalog`
--

INSERT INTO `email_catalog` (`id`, `product_id`, `imported`, `modified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2018-04-20 10:58:14', '2018-04-20 10:58:14'),
(2, 2, NULL, NULL, '2018-04-23 06:02:59', '2018-04-23 06:02:59'),
(3, 3, NULL, NULL, '2018-04-23 08:21:42', '2018-04-23 08:21:42'),
(12, 12, NULL, NULL, '2018-04-23 11:46:04', '2018-04-23 11:46:04'),
(13, 13, NULL, NULL, '2018-04-23 11:46:05', '2018-04-23 11:46:05'),
(14, 14, NULL, NULL, '2018-04-23 11:46:06', '2018-04-23 11:46:06'),
(15, 15, NULL, NULL, '2018-04-23 11:46:07', '2018-04-23 11:46:07'),
(16, 23, NULL, NULL, '2018-04-23 12:22:38', '2018-04-23 12:22:38'),
(17, 24, NULL, NULL, '2018-04-23 12:27:39', '2018-04-23 12:27:39'),
(18, 25, NULL, NULL, '2018-04-24 11:03:55', '2018-04-24 11:03:55'),
(19, 26, NULL, NULL, '2018-04-24 12:04:02', '2018-04-24 12:04:02'),
(20, 27, NULL, NULL, '2018-04-25 06:28:48', '2018-04-25 06:28:48'),
(21, 28, NULL, NULL, '2018-04-25 06:40:41', '2018-04-25 06:40:41'),
(22, 29, NULL, NULL, '2018-04-27 09:09:47', '2018-04-27 09:09:47'),
(23, 30, NULL, NULL, '2018-05-01 09:51:53', '2018-05-01 09:51:53'),
(24, 31, NULL, NULL, '2018-05-01 10:17:18', '2018-05-01 10:17:18'),
(25, 32, NULL, NULL, '2018-05-01 10:28:30', '2018-05-01 10:28:30'),
(26, 33, NULL, NULL, '2018-05-01 10:39:35', '2018-05-01 10:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `email_contact`
--

CREATE TABLE `email_contact` (
  `email_contact_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `is_guest` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Guest',
  `contact_id` varchar(15) DEFAULT NULL COMMENT 'Connector Contact ID',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Customer Email',
  `is_subscriber` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Subscriber',
  `subscriber_status` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Subscriber status',
  `email_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Imported',
  `subscriber_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Imported',
  `suppressed` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Suppressed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Contacts';

--
-- Dumping data for table `email_contact`
--

INSERT INTO `email_contact` (`email_contact_id`, `is_guest`, `contact_id`, `customer_id`, `website_id`, `store_id`, `email`, `is_subscriber`, `subscriber_status`, `email_imported`, `subscriber_imported`, `suppressed`) VALUES
(1, NULL, NULL, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_importer`
--

CREATE TABLE `email_importer` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `import_type` varchar(255) NOT NULL DEFAULT '' COMMENT 'Import Type',
  `website_id` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `import_status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Import Status',
  `import_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Import Id',
  `import_data` mediumblob NOT NULL COMMENT 'Import Data',
  `import_mode` varchar(255) NOT NULL DEFAULT '' COMMENT 'Import Mode',
  `import_file` text NOT NULL COMMENT 'Import File',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT 'Error Message',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `import_started` timestamp NULL DEFAULT NULL COMMENT 'Import Started',
  `import_finished` timestamp NULL DEFAULT NULL COMMENT 'Import Finished'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Importer';

-- --------------------------------------------------------

--
-- Table structure for table `email_order`
--

CREATE TABLE `email_order` (
  `email_order_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order ID',
  `order_status` varchar(255) NOT NULL COMMENT 'Order Status',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Sales Quote ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `email_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Order Imported',
  `modified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Order Modified',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Transactional Order Data';

-- --------------------------------------------------------

--
-- Table structure for table `email_review`
--

CREATE TABLE `email_review` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `review_id` int(10) UNSIGNED NOT NULL COMMENT 'Review Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `review_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Review Imported',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Reviews';

--
-- Dumping data for table `email_review`
--

INSERT INTO `email_review` (`id`, `review_id`, `customer_id`, `store_id`, `review_imported`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, '2018-04-25 05:46:08', '2018-04-25 05:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `email_rules`
--

CREATE TABLE `email_rules` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Rule Name',
  `website_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Rule Type',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `combination` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rule Condition',
  `conditions` blob NOT NULL COMMENT 'Rule Conditions',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Rules';

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- --------------------------------------------------------

--
-- Table structure for table `email_wishlist`
--

CREATE TABLE `email_wishlist` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `wishlist_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist Id',
  `item_count` int(10) UNSIGNED NOT NULL COMMENT 'Item Count',
  `customer_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `wishlist_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Wishlist Imported',
  `wishlist_modified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Wishlist Modified',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Wishlist';

--
-- Dumping data for table `email_wishlist`
--

INSERT INTO `email_wishlist` (`id`, `wishlist_id`, `item_count`, `customer_id`, `store_id`, `wishlist_imported`, `wishlist_modified`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, NULL, NULL, '2018-04-27 08:51:05', '2018-04-27 08:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `flag`
--

CREATE TABLE `flag` (
  `flag_id` int(10) UNSIGNED NOT NULL COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Dumping data for table `flag`
--

INSERT INTO `flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'analytics_link_attempts_reverse_counter', 0, '24', '2018-04-20 08:32:50'),
(2, 'report_order_aggregated', 0, NULL, '2018-05-16 11:23:39'),
(3, 'report_tax_aggregated', 0, NULL, '2018-05-16 11:23:39'),
(4, 'report_shipping_aggregated', 0, NULL, '2018-05-16 11:23:39'),
(5, 'report_invoiced_aggregated', 0, NULL, '2018-05-16 11:23:40'),
(6, 'report_refunded_aggregated', 0, NULL, '2018-05-16 11:23:40'),
(7, 'report_coupons_aggregated', 0, NULL, '2018-05-16 11:23:40'),
(8, 'report_bestsellers_aggregated', 0, NULL, '2018-05-16 11:23:41'),
(9, 'report_product_viewed_aggregated', 0, NULL, '2018-05-16 11:23:42'),
(10, 'catalog_rules_dirty', 0, NULL, '2018-04-28 09:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

CREATE TABLE `gift_message` (
  `gift_message_id` int(10) UNSIGNED NOT NULL COMMENT 'GiftMessage Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- --------------------------------------------------------

--
-- Table structure for table `googleoptimizer_code`
--

CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) UNSIGNED NOT NULL COMMENT 'Google experiment code id',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

-- --------------------------------------------------------

--
-- Table structure for table `importexport_importdata`
--

CREATE TABLE `importexport_importdata` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- --------------------------------------------------------

--
-- Table structure for table `import_history`
--

CREATE TABLE `import_history` (
  `history_id` int(10) UNSIGNED NOT NULL COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

-- --------------------------------------------------------

--
-- Table structure for table `indexer_state`
--

CREATE TABLE `indexer_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

INSERT INTO `indexer_state` (`state_id`, `indexer_id`, `status`, `updated`, `hash_config`) VALUES
(1, 'design_config_grid', 'valid', '2018-05-16 11:15:32', '34ec592bfa6c952bed4d0a1d58c98770'),
(2, 'customer_grid', 'valid', '2018-05-16 11:15:40', 'b9632e06cf957d6e8103eb236ca38cc1'),
(3, 'catalog_category_product', 'valid', '2018-05-16 11:15:56', '2124d5bfcd83b609c67eee94a0e4708c'),
(4, 'catalog_product_category', 'valid', '2018-04-20 12:16:39', '77b6356629f3259568a68ea64c773238'),
(5, 'catalog_product_price', 'valid', '2018-05-16 11:16:00', '2c3434338353a47cb4c5783800c0bdbe'),
(6, 'catalog_product_attribute', 'valid', '2018-05-16 11:16:04', 'f73cae77ec4dee3b587a60a2f38dd26a'),
(7, 'cataloginventory_stock', 'valid', '2018-05-16 11:16:10', '1bf66e64558a5171e523b32f25cb99ca'),
(8, 'catalogrule_rule', 'valid', '2018-05-16 11:16:16', 'c4f8344a2e6a7d8ebc065631454a4724'),
(9, 'catalogrule_product', 'valid', '2018-04-28 09:19:21', '667205576ee3764b1ee81c4a076d10ae'),
(10, 'catalogsearch_fulltext', 'valid', '2018-05-16 11:16:24', 'cc2d2701487ee835df4e72b15254852b'),
(11, 'catalog_category_flat', 'valid', '2018-05-07 05:27:49', 'e6a117e283e0ea6606bb6609429350ec'),
(12, 'catalog_product_flat', 'valid', '2018-05-16 11:15:54', '4bab4debcc94e5fee020709a540eb42d');

-- --------------------------------------------------------

--
-- Table structure for table `integration`
--

CREATE TABLE `integration` (
  `integration_id` int(10) UNSIGNED NOT NULL COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) UNSIGNED NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

--
-- Dumping data for table `integration`
--

INSERT INTO `integration` (`integration_id`, `name`, `email`, `endpoint`, `status`, `consumer_id`, `created_at`, `updated_at`, `setup_type`, `identity_link_url`) VALUES
(141, 'Magento Social', 'social-support@magento.com', 'https://fbapp.ezsocialshop.com/facebook/index.php/magento_auth', 2, 141, '2018-05-16 11:13:12', '2018-05-16 11:13:12', 1, 'https://fbapp.ezsocialshop.com/facebook/index.php/magento2/show_magento_success_popup');

-- --------------------------------------------------------

--
-- Table structure for table `layout_link`
--

CREATE TABLE `layout_link` (
  `layout_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

-- --------------------------------------------------------

--
-- Table structure for table `layout_update`
--

CREATE TABLE `layout_update` (
  `layout_update_id` int(10) UNSIGNED NOT NULL COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_productslider_slider`
--

CREATE TABLE `mageplaza_productslider_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL COMMENT 'Slider ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Slider Name',
  `store_views` text COMMENT 'Slider Store View',
  `active_from` datetime DEFAULT NULL COMMENT 'Slider Active From',
  `active_to` varchar(255) DEFAULT NULL COMMENT 'Slider Active To',
  `status` int(11) DEFAULT NULL COMMENT 'Slider Status',
  `serialized_data` text COMMENT 'Slider Data',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Slider Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Slider Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Slider Table';

-- --------------------------------------------------------

--
-- Table structure for table `mview_state`
--

CREATE TABLE `mview_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'View Version Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

--
-- Dumping data for table `mview_state`
--

INSERT INTO `mview_state` (`state_id`, `view_id`, `mode`, `status`, `updated`, `version_id`) VALUES
(1, 'design_config_dummy', 'enabled', 'idle', '2018-05-16 11:15:32', 0),
(2, 'customer_dummy', 'enabled', 'idle', '2018-05-16 11:15:40', 0),
(3, 'catalog_product_flat', 'enabled', 'idle', '2018-05-16 11:15:54', 822),
(4, 'catalog_category_flat', 'enabled', 'idle', '2018-05-07 05:27:49', 249),
(5, 'catalog_category_product', 'enabled', 'idle', '2018-05-16 11:15:56', 266),
(6, 'catalog_product_category', 'enabled', 'idle', '2018-05-16 11:13:34', NULL),
(7, 'catalog_product_price', 'enabled', 'idle', '2018-05-16 11:16:00', 285),
(8, 'catalog_product_attribute', 'enabled', 'idle', '2018-05-16 11:16:04', 679),
(9, 'cataloginventory_stock', 'enabled', 'idle', '2018-05-16 11:16:10', 24),
(10, 'catalogrule_rule', 'enabled', 'idle', '2018-05-16 11:16:17', 20),
(11, 'catalogrule_product', 'enabled', 'idle', '2018-05-16 11:14:06', NULL),
(12, 'catalogsearch_fulltext', 'enabled', 'idle', '2018-05-16 11:16:25', 929);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) UNSIGNED NOT NULL COMMENT 'Problem Id',
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) UNSIGNED DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Id',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Link Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) UNSIGNED NOT NULL COMMENT 'Subscriber Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

CREATE TABLE `newsletter_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

--
-- Dumping data for table `oauth_consumer`
--

INSERT INTO `oauth_consumer` (`entity_id`, `created_at`, `updated_at`, `name`, `key`, `secret`, `callback_url`, `rejected_callback_url`) VALUES
(1, '2018-04-20 08:29:11', '0000-00-00 00:00:00', 'Integration1', 'ilsghcawcskm3ewww6u2f1qaw9j1vyb6', 'l3gn9te95xai04do59fgo7ta44pltwi3', NULL, ''),
(2, '2018-04-24 06:33:50', '0000-00-00 00:00:00', 'Integration2', '19a28rb20b9bosvbvxdqu2lnuevpn2v3', 'e22bievbv7tcfaossr7f3xvgxg3bi1pi', NULL, ''),
(3, '2018-04-24 06:40:14', '0000-00-00 00:00:00', 'Integration3', 'qgvtv3sd2shilcxhpnvlbqjf9cigao20', 'abdrc1e03t3t4l8m55prrxs1g3t4mxb4', NULL, ''),
(4, '2018-04-24 07:21:41', '0000-00-00 00:00:00', 'Integration4', '7i7kgfhknw6666w1hafsguodb9hhw0e0', '8hsk54euuibcef2vq2rds31ebnjp4d7d', NULL, ''),
(5, '2018-04-24 10:09:41', '0000-00-00 00:00:00', 'Integration5', 'ftlsbxpb2exob314130yqrdv95ll4l5t', 'k7tskxjy7dli7pq8alkfgg8jf27gv8pb', NULL, ''),
(6, '2018-04-24 10:51:18', '0000-00-00 00:00:00', 'Integration6', 'jtug1mq9qy6loe7jm4npxp3gaiw0j11n', 'fll453mxbirxg0txq82ddvab3lrc9uqp', NULL, ''),
(7, '2018-04-24 11:23:24', '0000-00-00 00:00:00', 'Integration7', 'q6bdwnc0kqqjpo6ctmeitmysixrs3qmg', '7mxey97aadoisqxafqilmy3mxc2cvp1i', NULL, ''),
(8, '2018-04-24 12:29:34', '0000-00-00 00:00:00', 'Integration8', '9v1ls1t73k01j4iw2l8fj4ofxp354n5i', 'st2tbxacttjh4g1pvpa3mefigh2eqndb', NULL, ''),
(9, '2018-04-25 04:14:34', '0000-00-00 00:00:00', 'Integration9', '93u2rfaer8iondflu0nfqnafhjrjoly5', 'lioe2g3fe84n6k6hcy2srg6q85rxh9fn', NULL, ''),
(10, '2018-04-25 04:58:54', '0000-00-00 00:00:00', 'Integration10', 'hww8f0q59dywp74f6ba17q7wr6jdydvc', 'axdl5gw538hgv4c3aujyfgk5r5laum5k', NULL, ''),
(11, '2018-04-25 05:56:33', '0000-00-00 00:00:00', 'Integration11', '4uupho57q98vemt4vqsrkvnls7523yck', 'qww0pswfn6v88dns2w9uwqqrawtn3ja4', NULL, ''),
(12, '2018-04-25 06:29:41', '0000-00-00 00:00:00', 'Integration12', 'k7dr1vktfkbt400np9k65e4y0ubqo7pc', '97v6944q1ucvfs9n71qlml7gmf9j0qxh', NULL, ''),
(13, '2018-04-25 06:41:31', '0000-00-00 00:00:00', 'Integration13', 'w0towtn2s2vu0yx6apw3n31g0p9p58uv', 'ogekrqc2xum69f0k0a4jp0yi96vq211u', NULL, ''),
(14, '2018-04-25 06:42:40', '0000-00-00 00:00:00', 'Integration14', 'egnehleyeuw9lckkykk5egjd4vt8mv2i', 'p1v2yp1vikc0hsivka3rx3qn4t1mp8bv', NULL, ''),
(15, '2018-04-25 06:59:38', '0000-00-00 00:00:00', 'Integration15', '8lbmxxpu11nrunqtuk18ccmf4k0fl9ed', 'xnwakwj1xibkcbkikckhpugo74s4713f', NULL, ''),
(16, '2018-04-25 08:17:55', '0000-00-00 00:00:00', 'Integration16', 'ca5vhl0bpa3o57s8bm5yf87hi2csnsir', '4ts9vmls6739hnww7uuwaq2p647haai9', NULL, ''),
(17, '2018-04-25 08:31:34', '0000-00-00 00:00:00', 'Integration17', 'v2io8llreu8fcak8wtr4fn1nm6jrdsbh', 'b0xhnj7ncpe0m6xjilgeg8scw7j3gpiy', NULL, ''),
(18, '2018-04-25 09:06:41', '0000-00-00 00:00:00', 'Integration18', 'brg7p7lqgbdb8tteqcroud98wn9gpmn7', 'cfkama7dvx32trul58mtbvrra1wtqkof', NULL, ''),
(19, '2018-04-25 09:40:11', '0000-00-00 00:00:00', 'Integration19', 'c7ynt6r54svtsakt35rlix95u375g7mi', '7xga18nyl8m3rn0y7is6h2tewkrapese', NULL, ''),
(20, '2018-04-25 09:53:48', '0000-00-00 00:00:00', 'Integration20', 'jfkw77d4lf30qf322dgttp0v2tpgvacp', 'hqcdymwk97v6thvjx4mirjbj1covk36x', NULL, ''),
(21, '2018-04-25 10:51:42', '0000-00-00 00:00:00', 'Integration21', 'arjt8vqlrgffe0ih9rrkjrn2duqdvigu', 'h2fej7tkfy5t49wui0o481vk2qwitv2b', NULL, ''),
(22, '2018-04-25 11:03:05', '0000-00-00 00:00:00', 'Integration22', 'hbj2iwdx9oe5jtk6lsuob8ni11k9oorl', 'vmyp3w56ap98d6bnfktw5ml9r4bx59w0', NULL, ''),
(23, '2018-04-25 11:04:01', '0000-00-00 00:00:00', 'Integration23', 'ccvyw45r95fbd6kir1su56co1ao9nuvl', 'bb3y8jt40uoa05ilg2l67sfad5deo483', NULL, ''),
(24, '2018-04-25 12:16:08', '0000-00-00 00:00:00', 'Integration24', '0n0iemun4fppqsfuusj0rprov0kh1v7a', 'tfu1yak4pxlahhrpce060ql6w9cpb7hx', NULL, ''),
(25, '2018-04-26 04:19:15', '0000-00-00 00:00:00', 'Integration25', 'w5vi2ewm4fy0ubeuyu5dw5hcmuvts6k9', 'vh7t5h09tfyuvgibjta80fp1kxrsijfs', NULL, ''),
(26, '2018-04-26 06:35:59', '0000-00-00 00:00:00', 'Integration26', 'ugbr47p4pe1a98tfy1rdwy9fskk9wwyi', 't7yg0y3v477fsfnobn47820fumuudy2g', NULL, ''),
(27, '2018-04-26 06:42:17', '0000-00-00 00:00:00', 'Integration27', 'nwkbbdn7hgqm02vh7aexbo3qp06q7s4e', 'wmxq753erui6vw22k8co5hqaj6q5c9ng', NULL, ''),
(28, '2018-04-26 06:52:27', '0000-00-00 00:00:00', 'Integration28', '52uvqhio197wlmnujgoop3qf4jd7csjb', 'wavwa7041cicswy50rxml4c3jrf2ohh4', NULL, ''),
(29, '2018-04-26 07:09:53', '0000-00-00 00:00:00', 'Integration29', 'tsftkjvkr67lprj3fwsxorg1axoafbf4', 'd88t6s4hewyqmv3pa37ovennl65qhx3s', NULL, ''),
(30, '2018-04-26 07:24:30', '0000-00-00 00:00:00', 'Integration30', 'qglp7qcw2gpld0x8g6k6ddbnh0tnwvoi', 'w59hknmpb2wot4actio6vjbxfknr9qgq', NULL, ''),
(31, '2018-04-26 09:22:34', '0000-00-00 00:00:00', 'Integration31', 'jns0yl8sdjn35m5u87ed9wv8qjjyx68q', '2evwxflmekwmlidsw8rfujypdu2hgho9', NULL, ''),
(32, '2018-04-26 09:42:17', '0000-00-00 00:00:00', 'Integration32', 'ekrrbpm73inl1uvigo8w4tjoketykh9p', 'i8t81sbua1qiyjias6pn2jmb2x2c54n1', NULL, ''),
(33, '2018-04-26 09:43:57', '0000-00-00 00:00:00', 'Integration33', 'h041ovqy9tvhafs3xrhs2phwdeho5h7s', 'kv3upsg4vbgwmjlkqo98f84ergor7nua', NULL, ''),
(34, '2018-04-26 09:53:27', '0000-00-00 00:00:00', 'Integration34', 'w9r6u2kha2c6hcxnvhhj5yxhnn9cok9i', 'dym7cjsyh6s3pq953hbqmdrpqcpsfsq7', NULL, ''),
(35, '2018-04-26 10:19:11', '0000-00-00 00:00:00', 'Integration35', 'l8dqs51tf0jnxoukwfk75xjeu45o4i63', 'ctfbesx8c8ph8ulorfg5xoxbck0pykjo', NULL, ''),
(36, '2018-04-26 10:28:09', '0000-00-00 00:00:00', 'Integration36', '9xq4wfh7hrsqd9olgwbgx1ypxl1ow0g3', 'a7rb9gl05r90ro7pog56tiqxgcnu997c', NULL, ''),
(37, '2018-04-26 10:38:03', '0000-00-00 00:00:00', 'Integration37', 'vcnlhotymt0fodyqtuui1k8wt896i9h7', 'kcb7fgn9hl5aywvhv1rdmwa3m0kwvqsr', NULL, ''),
(38, '2018-04-26 10:42:52', '0000-00-00 00:00:00', 'Integration38', 'ksgnyuq8iv5hbirtxnxecb51yd8trfxn', 'h296359kkdbb94bjcyk5y25ubegy34si', NULL, ''),
(39, '2018-04-26 11:16:03', '0000-00-00 00:00:00', 'Integration39', 'hxajnog5s7s9rfgnl6ym37jf8u5vcfjq', 'f8ny36h8fi5dhw3v07huumvq9d97v16n', NULL, ''),
(40, '2018-04-26 11:23:38', '0000-00-00 00:00:00', 'Integration40', 'fpblbnobni1lih36r7a2hricgmm6mvl2', '230mmgbko20mvmkqqa556k0illps8imu', NULL, ''),
(41, '2018-04-26 12:42:00', '0000-00-00 00:00:00', 'Integration41', '8u2pxt07qk2j9f433k9mr68lf8pd0f4l', '36yie7m1ge1cowh31oi2uvfda5iu30ou', NULL, ''),
(42, '2018-04-27 04:20:47', '0000-00-00 00:00:00', 'Integration42', 'lukqowjd5fw7s644430n8edq556t63ue', 'ff4didedmuu70nc32o3wmnw1aakqng19', NULL, ''),
(43, '2018-04-27 05:22:49', '0000-00-00 00:00:00', 'Integration43', 'e3mgahkcyhp2qswnf3i41sdu8f07xx7k', 'xu28rcf6et1c12cmdnf59j4fux52q4i5', NULL, ''),
(44, '2018-04-27 06:15:42', '0000-00-00 00:00:00', 'Integration44', 'a6r9r00xj7xjrwybfgv788qftqjtnhwb', 'ttr5s8j3etgp2oqsjykxbg62pr2ymi10', NULL, ''),
(45, '2018-04-27 07:27:52', '0000-00-00 00:00:00', 'Integration45', 'my3r1bconycfcftq73sur0t02hofvnc1', 'oalnye99oh4f3sydlii5bndsdue6rkxg', NULL, ''),
(46, '2018-04-27 11:05:10', '2018-04-27 11:44:25', 'Integration46', 'ay5g5uhama1frqi1yhp1v7unua8peuo0', '3easjmdt5oewdpso6x2e05b8xk8hc4kd', NULL, ''),
(47, '2018-04-27 11:57:50', '0000-00-00 00:00:00', 'Integration47', 'vs0do10gbyg6stuxq2scdojw3d4b5nyi', 'm4s6idcwaq48efptu1l3obq6bkog2e9e', NULL, ''),
(48, '2018-04-28 04:39:13', '0000-00-00 00:00:00', 'Integration48', 'cfr47231iukxuxb3rr4qsfjlqiulmloe', 'b9och3493hy50i3185d3t8ex26n6x33n', NULL, ''),
(49, '2018-04-28 06:10:38', '0000-00-00 00:00:00', 'Integration49', '30cq3cm37inwdjrinpu6mhauyw6krl72', '056hdi8by1rnepjoasa3nqwxyxel8742', NULL, ''),
(50, '2018-04-28 06:28:23', '0000-00-00 00:00:00', 'Integration50', 'v5li4xd3oqp6d0vf22j6l3mtat8wo9yb', 'yb9hapgjqwx6ufyspmij9glesby76v2a', NULL, ''),
(51, '2018-04-28 08:26:11', '0000-00-00 00:00:00', 'Integration51', 'oc24qvtlf46y7mk9jabfncdvncq4omum', 'ycstxl09lnfurax5i5pfn2q51tjer9qc', NULL, ''),
(52, '2018-04-28 09:16:10', '0000-00-00 00:00:00', 'Integration52', '5jdgfgk3rrkvlyl1xxwu0js9a1e38cpb', 'd0unoj9dnmtxwve90gi30hsrvwf66dqj', NULL, ''),
(53, '2018-04-28 09:29:56', '0000-00-00 00:00:00', 'Integration53', 'cs1i7iham6vqre0rjy3suc0knl7j67ff', 'tdduxux4mxkkr2387g4njwhm5cdd3hdn', NULL, ''),
(54, '2018-04-28 09:43:37', '0000-00-00 00:00:00', 'Integration54', 'bm3vo5dvyroe3et6en176xxwgbghvoe2', 'r9nhtp8vc2rixncls771fddmak3prk4w', NULL, ''),
(55, '2018-04-28 09:59:51', '0000-00-00 00:00:00', 'Integration55', 'audmdjcs7dm97vvgytul4g71inyqp7nd', 'cs2pppb3xw1dr0pcu6xp9cw49u4p0mhy', NULL, ''),
(56, '2018-04-28 10:49:39', '0000-00-00 00:00:00', 'Integration56', '96frvh9lnon4i7io71gxq144mkgluu8b', 'jvvm5asjj84s67k7ylul05bk4g6h7cs5', NULL, ''),
(57, '2018-04-28 11:41:08', '0000-00-00 00:00:00', 'Integration57', 'keb5f3l7sr07hh74mcw6p92pduno6exd', 't9n9e7g84jd42j4dj4jfavy7jwuua762', NULL, ''),
(58, '2018-04-28 11:58:05', '0000-00-00 00:00:00', 'Integration58', '9ty7kl0tx8vt5u1gqb2736ynagsuklvy', 'yif5w8si4k6itcbw65bu1c8atfor5ukg', NULL, ''),
(59, '2018-04-28 12:43:01', '0000-00-00 00:00:00', 'Integration59', 'p1tpv7rjdtfj7sy5p2fcco22f9ecxx6g', 'jcmtx0epy89p0m0macicawvg93on1eum', NULL, ''),
(60, '2018-04-28 12:58:41', '0000-00-00 00:00:00', 'Integration60', 'dqm3gm87cyi9o3jrg75xpfkaveu8awhd', '05buq4lok15o6g4c0iuh4i4idxdgvfsw', NULL, ''),
(61, '2018-04-30 07:01:27', '0000-00-00 00:00:00', 'Integration61', 'uuvkjdiexndd8nmbm74juv6k9egwri7q', '92it9ojh8hbcaoed4ktdh3a203iudx4a', NULL, ''),
(62, '2018-04-30 08:28:42', '0000-00-00 00:00:00', 'Integration62', '6ae78ilsbhnqa4h7xex76o62uhxuuqh2', 'e6m5ocsrke29ynn3a7qfd5v56vtp8ggn', NULL, ''),
(63, '2018-04-30 09:07:49', '0000-00-00 00:00:00', 'Integration63', 'i3yg1huwcbu2hso7ticabc16akvf0lnr', 'reqwgwu70vuaefj7n1jskaq55odg2x69', NULL, ''),
(64, '2018-04-30 09:46:10', '0000-00-00 00:00:00', 'Integration64', 'wwkttf9ph8pch6335biiext7s1k5gfw6', 'tbe6gnvsbha8m1xk34fjrp26c2dy44bf', NULL, ''),
(65, '2018-04-30 10:18:04', '0000-00-00 00:00:00', 'Integration65', 'jnpyxadch8083s1gll1balo4aaiaq7xp', 'mslqhgaj4x0nj4rx76r3ib5mcj4dx913', NULL, ''),
(66, '2018-04-30 10:33:29', '0000-00-00 00:00:00', 'Integration66', 'lc50l88lp0eny27ys51kty2jappbwh4g', '9m4w3gfjlfpic4q4tyfdpvo1bsqc37t0', NULL, ''),
(67, '2018-04-30 10:44:58', '0000-00-00 00:00:00', 'Integration67', '0fyh83otkqvx366jb23gxjbw4ig3ovbc', '7nu1i85yx7x9o04c85ts5qitd24wcshn', NULL, ''),
(68, '2018-04-30 11:31:40', '0000-00-00 00:00:00', 'Integration68', 'f2n5wwq1keq6itl1s0do6swsml0egorh', 'e81m62mv7hly7p9rmhu5a9ti3hmys3ji', NULL, ''),
(69, '2018-04-30 12:52:06', '0000-00-00 00:00:00', 'Integration69', '5gvnsajl4i8vx5oa9jwssxs7imrwhvsg', 'tnnydr4lau38msx7ynuiwnrhl2poomfs', NULL, ''),
(70, '2018-05-01 04:06:53', '0000-00-00 00:00:00', 'Integration70', '8mufqy551cbf7rt4lwtr72600kflcfeu', 'sx6jumqe6j283tih8e7gxmjad1qs76d6', NULL, ''),
(71, '2018-05-01 06:27:22', '0000-00-00 00:00:00', 'Integration71', 'cj61su854l7u5k9y0qiflc2j5np2yk9p', 'k2272rtbdl0xcfol1sb8vxwnds7bwybm', NULL, ''),
(72, '2018-05-01 06:48:18', '0000-00-00 00:00:00', 'Integration72', 'byiasdrb3gu4ufc241llufv5w049d9tc', 'vdktx7lliq0r9pqnw1mh1i24q84xu2yl', NULL, ''),
(73, '2018-05-01 07:10:15', '0000-00-00 00:00:00', 'Integration73', 'ysyix5go8hmy3nme4elvqtm9uthr7s72', 'jal6cgwwl84375bj04ou0glvkhfy5kag', NULL, ''),
(74, '2018-05-01 12:10:55', '0000-00-00 00:00:00', 'Integration74', 'jqhma00t5x017qm0extoo87p46ujqiq9', 'jxerdojycovymfcdd4q1lnp5rsv8cpun', NULL, ''),
(75, '2018-05-01 12:31:54', '0000-00-00 00:00:00', 'Integration75', 'q6gvytk0g1shc31js1wbbqiefm9wdc23', 'edh9vjmoxjw4dpoe040rkmqlsy6ci05a', NULL, ''),
(76, '2018-05-01 12:34:59', '0000-00-00 00:00:00', 'Integration76', 'nhscw85nmjxafc8jewhwwhhtdep67s40', 's1gs37io656ajib2usxdvnrp4n70kd3q', NULL, ''),
(77, '2018-05-01 12:36:41', '0000-00-00 00:00:00', 'Integration77', 'j68aixvnsu742ro1ota9e07edjgs1wvg', 'qemq177hv4g1kl2mb20gto1n3gf4xhh3', NULL, ''),
(78, '2018-05-01 12:38:30', '0000-00-00 00:00:00', 'Integration78', '651uyw8g306pdqx28s6kte6yfeomy1d8', 'glgkga1thh95k1nme5a3r24f8jjn97ib', NULL, ''),
(79, '2018-05-01 12:55:32', '0000-00-00 00:00:00', 'Integration79', 'a9vb43095ulu1vf4x629bjytpbhclyvv', 'uvp9frfo0nftrtbryb7cecnq9k6ifml7', NULL, ''),
(80, '2018-05-01 13:01:49', '0000-00-00 00:00:00', 'Integration80', '30wq2fx64pn92slassa6b97476lqf7km', 'bpdq4m6nbfo80r7tv2005cd8j712m0lo', NULL, ''),
(81, '2018-05-01 13:10:45', '0000-00-00 00:00:00', 'Integration81', 'y2j9t6q40ta62vqifcq4vyekfq0savp9', 'fn9gcnrio36k7nfa798yo8jchii8nu2p', NULL, ''),
(82, '2018-05-01 13:18:20', '0000-00-00 00:00:00', 'Integration82', 'alvx9uti7iusy38x1y8syi7s62raw9h4', '07dn4sbloak4dg2h53wv125ou42akfea', NULL, ''),
(83, '2018-05-02 04:57:16', '0000-00-00 00:00:00', 'Integration83', 'kuvihenpxglntprwg4ehmnb10r8wxfms', 'b823n8nt1qpmy6aem4sm50tytj0aasnx', NULL, ''),
(84, '2018-05-02 05:21:14', '0000-00-00 00:00:00', 'Integration84', 'ylu1tmg4cjj3nkkfdjbtvwtrxuckw57u', 'ulshorbmq1y9bxk6lbwodj6co4y47lcy', NULL, ''),
(85, '2018-05-02 06:02:53', '0000-00-00 00:00:00', 'Integration85', 'oyqvxuy1f9dxyf4xombs6uxfiqsf4yav', '2b8b2jjelwje7ysigo51fstxu7x7qowm', NULL, ''),
(86, '2018-05-02 06:22:30', '0000-00-00 00:00:00', 'Integration86', 'rlo84rtw0a30buxbykljq3i5c94kmqfv', 'iyqhgbdxu7gdvpp17v2crkb8gh477fnr', NULL, ''),
(87, '2018-05-02 06:36:38', '0000-00-00 00:00:00', 'Integration87', '2ugbr0mllyrmr8asv8og7unay0l27owy', 'euf1m76g9lwr67smxdq54wq08lbgxyt7', NULL, ''),
(88, '2018-05-02 06:48:57', '0000-00-00 00:00:00', 'Integration88', '2hask5ka76kwc43lm0mp1oiugeo3k5ml', 'v8t6vgh0t186g4hpbi9aegesx3fps4mh', NULL, ''),
(89, '2018-05-02 07:06:25', '0000-00-00 00:00:00', 'Integration89', 'bj6ldjk22r18cpmm05wm3runub2i7n2v', 'sipyeomppfs7teo0gg72lfh0oknan3oi', NULL, ''),
(90, '2018-05-02 07:15:42', '0000-00-00 00:00:00', 'Integration90', '0wfcfcdumx3ttwf7h7cvpgq3p8fg9ipy', 'qmqkl0f5r2e6149eoverpy97mjgrnkd9', NULL, ''),
(91, '2018-05-02 08:58:29', '0000-00-00 00:00:00', 'Integration91', 'yjvxj9rm3gn5ddiyyeppxqk8lm18yy5j', 'uupg1xuprihvmntk8jbe7rc0c3vvqo5i', NULL, ''),
(92, '2018-05-02 09:10:19', '0000-00-00 00:00:00', 'Integration92', 'm0p7ftinegtd8f9tolavaubjie4dr4ai', '117suw22laipishqikqdbfbgw0hc9vxy', NULL, ''),
(93, '2018-05-02 09:55:15', '0000-00-00 00:00:00', 'Integration93', 'uyonrgbmngua8me3pn8twcuensn3btub', 'nwl4qwefhkkvwq9aqf98qcir5mafa7ba', NULL, ''),
(94, '2018-05-02 10:52:20', '0000-00-00 00:00:00', 'Integration94', '96yt0066bwlepihdv0k7jctgvrjg76s6', 'h9m2yltmfpy78eswc2ob83gapj1k8v95', NULL, ''),
(95, '2018-05-02 12:19:21', '0000-00-00 00:00:00', 'Integration95', '62fxow4sj6scgd5t81rx3uxlde2wul6x', 'xi2p2te2ob1qfhapkdmkhiywol8gbosi', NULL, ''),
(96, '2018-05-02 12:34:44', '0000-00-00 00:00:00', 'Integration96', 'xfr48rap8myd9foitwtk24t0ip5mddxq', '5rs1gkuvdqxw42mv71s0vum50bno51q5', NULL, ''),
(97, '2018-05-03 04:38:44', '0000-00-00 00:00:00', 'Integration97', 'flr9041yfhpgo335txcuixjihgdk00i0', '1vlwakjieaa94n6ek268x36go0jg7hg2', NULL, ''),
(98, '2018-05-03 05:54:23', '0000-00-00 00:00:00', 'Integration98', 'scevvv71hx97vgm2raq0bvr9oysavewh', 'tavgnobbxli1i5fxtmoond2f5370lc64', NULL, ''),
(99, '2018-05-04 05:30:06', '0000-00-00 00:00:00', 'Integration99', '00f4yye6ru1jwtyyqsinih71ohp0h9j4', '04w1k2vkprchonekipn2vyncd1jkv4s0', NULL, ''),
(100, '2018-05-04 06:33:09', '0000-00-00 00:00:00', 'Integration100', '8wvcf716kfpnsim7sncq3frtiyewyowa', 'mtss8qdhrovajx82t7ybx324e3vqwi6m', NULL, ''),
(101, '2018-05-04 08:44:47', '0000-00-00 00:00:00', 'Integration101', 'dv6fct2v8994wlfr82v359lsk9ncuo2c', 'w6ndskmjgoeafqkjv07vr7d1x9xagfuu', NULL, ''),
(102, '2018-05-04 09:08:50', '0000-00-00 00:00:00', 'Integration102', 'ms0v59wnu8wqp03rvm9ip3wk1ow6h9ss', 'v7uloce27bro7gigft9atfnna5ayo9gu', NULL, ''),
(103, '2018-05-04 09:24:02', '0000-00-00 00:00:00', 'Integration103', '2659v5ew0tg1uiy3sskgi515d7n92u8h', 'c5dspsrxtlhdt6yhcs5qdeolwxg2bspf', NULL, ''),
(104, '2018-05-04 10:20:57', '0000-00-00 00:00:00', 'Integration104', 'osi540xd883xwowg99o3bovkwqc9o4x5', '7s117uwrok1to9yc3en551frcyqxfi42', NULL, ''),
(105, '2018-05-04 10:24:47', '0000-00-00 00:00:00', 'Integration105', 'etndit03x5b8d3gvg9g6cbqeflm6gkir', '36h962mceaet7dsnurg3jsg4sohh68wm', NULL, ''),
(106, '2018-05-04 10:46:49', '0000-00-00 00:00:00', 'Integration106', '7l2s8potiaisdrfo2e376ucxj3nux9vc', 'rd98wfwimhbiugge3l9pn2mdbmg9b7s4', NULL, ''),
(107, '2018-05-04 11:00:45', '0000-00-00 00:00:00', 'Integration107', '1kxxtbyp1srs7gyipbpqj99b3nt86d55', 'p0hky2f4n8new0e44n3i4eqa4820kvh1', NULL, ''),
(108, '2018-05-04 11:37:09', '0000-00-00 00:00:00', 'Integration108', 'xpc0n8ljnaw8ubfqfilbnfvqar9l89sx', 'mreltri6v4ecax6666ok69k9bglobmhl', NULL, ''),
(109, '2018-05-04 12:06:54', '0000-00-00 00:00:00', 'Integration109', '9ommyspggsegwowymq3awhppj3hkuh6f', 'ssdbi9ppt897eltmvbb12axkg7ey9kig', NULL, ''),
(110, '2018-05-04 12:51:54', '0000-00-00 00:00:00', 'Integration110', 'ck64qyc4wrgrcsn3b83cbk2b27uccvro', 'sowj17d0ra3uh56jpu162797els168nn', NULL, ''),
(111, '2018-05-07 04:51:31', '0000-00-00 00:00:00', 'Integration111', 'ip5siw1e5x8xdeevy1kw09mofy5yuhq3', 'bcw7liapuxr6r387bxaxuxx067gd3cej', NULL, ''),
(112, '2018-05-07 05:04:28', '0000-00-00 00:00:00', 'Integration112', 'qvbww3ragg8vlffum6vi7ntxw8ew8a25', '4x7fcusngdyox55pjvifolp3qp7bcp5a', NULL, ''),
(113, '2018-05-07 05:07:16', '0000-00-00 00:00:00', 'Integration113', 'blog3tpyd7i5ph54y95inqwdg24gr97c', 'ojqf6vw06v9x9g0t6xg5o1qjn0adm5rj', NULL, ''),
(114, '2018-05-07 05:23:27', '0000-00-00 00:00:00', 'Integration114', 'sgn3jiomcb7ngv7gnhvlqjg1khxs2hd3', 'e5ia1nmpoouscd82ceibj2hg9nqtou3t', NULL, ''),
(115, '2018-05-07 05:37:46', '0000-00-00 00:00:00', 'Integration115', 'rm45tht4l101t0dipn0vpwihc0wer745', '0umnqf1lnpkadwb7sii5rr07q8efca7j', NULL, ''),
(116, '2018-05-07 05:47:18', '0000-00-00 00:00:00', 'Integration116', 'ovr6vljttagxcnoeu9mg21cc9issbsod', 'lenxp1gswbb7sg4p1r450en6xn25u41e', NULL, ''),
(117, '2018-05-07 05:57:40', '0000-00-00 00:00:00', 'Integration117', 'q6g7j3wbly58i4pdt9g6ybitgxjlc059', 'q5qb7i2goip48l8jb58xoc6cnxkxv7es', NULL, ''),
(118, '2018-05-07 06:22:10', '0000-00-00 00:00:00', 'Integration118', 'xwlqka69k6ysnyd2ntqs3fp7bni7q6pp', 'ek2gv5idcgyc7eu6s7w18o9jr11f3yrh', NULL, ''),
(119, '2018-05-07 06:41:21', '0000-00-00 00:00:00', 'Integration119', 'fa2yp0e2ccw4sf7hgnw04qpmc9gbnn48', 'xyd340ujj555s3uvv09ldhugn0ms21qw', NULL, ''),
(120, '2018-05-07 07:15:06', '0000-00-00 00:00:00', 'Integration120', 'rbwc0eou8j71lvp6kgwd3vdegr7pb26j', 'hlaecg3dueu5fxk4205fpyi6yiw2ggx8', NULL, ''),
(121, '2018-05-07 08:07:10', '0000-00-00 00:00:00', 'Integration121', 'nvrvb3egt66emn74svvtfsgmdv81d3cj', 'llvufbugqtrgmv33n6j4xgp7lb95xv1t', NULL, ''),
(122, '2018-05-07 08:21:14', '0000-00-00 00:00:00', 'Integration122', '84mc0w0t4daef9m505irqoo1esiv8eih', 'k0gpwy6mmc5qrn1btopjd8uceodnnmps', NULL, ''),
(123, '2018-05-07 08:46:06', '0000-00-00 00:00:00', 'Integration123', 'pdbm65arqensotqlmejiggdhagype59l', 'lgfa13aok3sjl6m8orb669lmm48f4pk1', NULL, ''),
(124, '2018-05-07 09:58:00', '0000-00-00 00:00:00', 'Integration124', 'coi8i1b2v3hv8jb0pmh1x8n3s38tdq68', 'ggqsoidgfepdh90cvp66rw6be3d9payw', NULL, ''),
(125, '2018-05-14 09:05:41', '0000-00-00 00:00:00', 'Integration125', '78gj1v98xj315i2kcnjb33th4iaqmpa4', '1lwurr2hsjfismhuy0yq1m6tox3w3loh', NULL, ''),
(126, '2018-05-14 09:50:56', '0000-00-00 00:00:00', 'Integration126', 's5mvbwb21jq2b5m5iqmjfpnya577ig5w', '1i26q88ub99mdl8i1sqdb1u1khidkmp7', NULL, ''),
(127, '2018-05-14 10:05:38', '0000-00-00 00:00:00', 'Integration127', 'sdxmrpr4oquhd0wqwfuqbmqxxbmr3rjg', '9xkmiqlx6xefvry0ydt20ndhd75edjpu', NULL, ''),
(128, '2018-05-14 10:26:44', '0000-00-00 00:00:00', 'Integration128', 'qsw30ljfqrp7b1l2tjmirio23s2xx1q9', 'gbygjxw6kdp6y026intofe6kn90og6ea', NULL, ''),
(129, '2018-05-14 10:30:50', '0000-00-00 00:00:00', 'Integration129', 'xlpe95h12io8ef048osw181u3skgddna', '1g2yhpatuebmae0j6rsa16dccr32prm4', NULL, ''),
(130, '2018-05-14 10:51:43', '0000-00-00 00:00:00', 'Integration130', 'pi76hwcof81lvmo40yd3ih0b34eo2e7h', 'xo315uedjghvdr1l4xeothok417g40px', NULL, ''),
(131, '2018-05-14 11:23:16', '0000-00-00 00:00:00', 'Integration131', '8hwhxv2c978u1lx9cra6853n7kcfev5y', 'f024cu5fc8pvtqubjgcg573ulx25w95y', NULL, ''),
(132, '2018-05-16 08:18:47', '0000-00-00 00:00:00', 'Integration132', '4rw9kfshlile3ibjjhm2j7nmf3a7s2g5', '27vbh9s1iiobnc615exatxg2x0iartuj', NULL, ''),
(133, '2018-05-16 08:31:33', '0000-00-00 00:00:00', 'Integration133', 'ukm8gwug7627qsfbnrul1cf2kafud1mt', 'kf7f3ewulrhdp4nak5ndsg5i8xw0o4of', NULL, ''),
(134, '2018-05-16 08:45:52', '0000-00-00 00:00:00', 'Integration134', 'h4khikob96oibfiif74821mdb2o5mja6', 'h0ntb8akrnddgkqwsnc7fsy88ua7o9we', NULL, ''),
(135, '2018-05-16 08:48:09', '0000-00-00 00:00:00', 'Integration135', 'py10w3n7bexlxmcxvuntmktcas3j73at', 'tqslkqb4qby9xggt6ohiwh3g2m3ickyq', NULL, ''),
(136, '2018-05-16 09:41:03', '0000-00-00 00:00:00', 'Integration136', '2tlm4ht0vovwc9upiivf2bsnd2mmb5qx', 'uhwysio428sop8ivkvaxes36p3dnitqx', NULL, ''),
(137, '2018-05-16 10:05:29', '0000-00-00 00:00:00', 'Integration137', 'cmg3dq0k7nprk0mxo9h1c5uaqb2l2h4h', 'tr42ysn0xveny4h13rcsomh6c95i1hwk', NULL, ''),
(138, '2018-05-16 10:19:56', '0000-00-00 00:00:00', 'Integration138', 'ql1hk5eve5egk8r4bp2g0d93osuf6x2e', 'ikilngquyujlek6uluqrf3miubld4who', NULL, ''),
(139, '2018-05-16 10:28:02', '0000-00-00 00:00:00', 'Integration139', 'u73fam0vo43fluyalo6fgko8fwx91acs', '2rd7cagja9r9sb3kw5oj487h0v2buvx9', NULL, ''),
(140, '2018-05-16 10:49:45', '0000-00-00 00:00:00', 'Integration140', 'k5j9l0wnshcyy3ieu3nv4hk3omrlsnjo', 'lj6wlb9k9b9oip51o3vf9webkqkdpw6w', NULL, ''),
(141, '2018-05-16 11:13:12', '0000-00-00 00:00:00', 'Integration141', 'vhluicvusx8uxwr8n9mseaupilmtoh45', 'v2mpbt5f8bggswmnh68oe7viugx0gg4m', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) UNSIGNED NOT NULL COMMENT 'Consumer ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE `oauth_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

--
-- Dumping data for table `oauth_token`
--

INSERT INTO `oauth_token` (`entity_id`, `consumer_id`, `admin_id`, `customer_id`, `type`, `token`, `secret`, `verifier`, `callback_url`, `revoked`, `authorized`, `user_type`, `created_at`) VALUES
(1, 46, NULL, NULL, 'verifier', 'tbka0o46a7rxmycjjh0ito57s6mb0xny', 'k7g748blj6ju2dtcb5veswvtskwhl0ya', 'dc803a4a65i6xhw1b09kp0bibtvtipgf', 'oob', 0, 0, 1, '2018-04-27 11:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token_request_log`
--

CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) UNSIGNED NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_request_event`
--

CREATE TABLE `password_reset_request_event` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `request_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

--
-- Dumping data for table `password_reset_request_event`
--

INSERT INTO `password_reset_request_event` (`id`, `request_type`, `account_reference`, `created_at`, `ip`) VALUES
(1, 0, 'mishrakshesh14287@gmail.com', '2018-05-02 04:46:41', '::1'),
(2, 1, 'shesh.kumar@dataman.in', '2018-05-07 08:30:07', '::1'),
(3, 1, 'shesh.kumar@dataman.in', '2018-05-07 08:56:02', '::1'),
(4, 1, 'shesh.kumar@dataman.in', '2018-05-07 09:09:28', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement`
--

CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement_order`
--

CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_cert`
--

CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Cert Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_transaction`
--

CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `report_date` date DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) UNSIGNED NOT NULL COMMENT 'Row Id',
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- --------------------------------------------------------

--
-- Table structure for table `persistent_session`
--

CREATE TABLE `persistent_session` (
  `persistent_id` int(10) UNSIGNED NOT NULL COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert price id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert stock id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) UNSIGNED DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `is_persistent`, `gift_message_id`) VALUES
(1, 1, '2018-04-24 13:14:06', '2018-04-24 13:14:06', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'INR', 'INR', 'INR', '1800.0000', '1800.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'INR', '1.0000', '1.0000', NULL, NULL, '1800.0000', '1800.0000', '1800.0000', '1800.0000', 1, 0, NULL, 0, NULL),
(2, 1, '2018-04-25 05:36:09', '2018-05-01 11:20:16', NULL, 1, 0, 0, 4, '4.0000', 0, '0.0000', '0.0000', 'INR', 'INR', 'INR', '135340.0000', '135340.0000', NULL, 1, 3, 1, 'mishrakshesh14287@gmail.com', NULL, 'Ajay', NULL, 'Mishra', NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'INR', '1.0000', '1.0000', NULL, NULL, '135340.0000', '135340.0000', '135340.0000', '135340.0000', 1, 0, NULL, 0, NULL),
(4, 1, '2018-04-25 10:12:13', '2018-04-25 10:18:24', NULL, 1, 0, 0, 0, '0.0000', 0, '0.0000', '0.0000', 'INR', 'INR', 'INR', '0.0000', '0.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'INR', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_address`
--

CREATE TABLE `quote_address` (
  `address_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(40) DEFAULT NULL COMMENT 'City',
  `region` varchar(40) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(20) DEFAULT NULL COMMENT 'Phone Number',
  `fax` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(120) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

INSERT INTO `quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `shipping_discount_tax_compensation_amount`, `base_shipping_discount_tax_compensation_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `free_shipping`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(1, 1, '2018-04-24 13:14:06', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2018-04-24 13:14:06', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '0.3000', '1800.0000', '1800.0000', '1800.0000', '1800.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '1800.0000', '1800.0000', NULL, '[]', NULL, '0.0000', '0.0000', '1800.0000', '1800.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2018-04-25 05:36:10', '0000-00-00 00:00:00', 1, 0, NULL, 'billing', 'mishrakshesh14287@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2018-04-25 05:36:10', '0000-00-00 00:00:00', 1, 0, NULL, 'shipping', 'mishrakshesh14287@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '13.0000', '135340.0000', '135340.0000', '135340.0000', '135340.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '135340.0000', '135340.0000', NULL, '[]', NULL, '0.0000', '0.0000', '135340.0000', '135340.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, '2018-04-25 10:12:13', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, '2018-04-25 10:12:13', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '82800.0000', '82800.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, '0.0000', '0.0000', '0.0000', '82800.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_address_item`
--

CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Item Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) UNSIGNED DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Free Shipping',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- --------------------------------------------------------

--
-- Table structure for table `quote_id_mask`
--

CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Dumping data for table `quote_id_mask`
--

INSERT INTO `quote_id_mask` (`entity_id`, `quote_id`, `masked_id`) VALUES
(1, 1, 'bd0e0f2a304dd50fc1f87f6cb3924055'),
(3, 4, 'e347872f1eaee0f3c6709ae5453eb1dc');

-- --------------------------------------------------------

--
-- Table structure for table `quote_item`
--

CREATE TABLE `quote_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

INSERT INTO `quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `free_shipping`, `gift_message_id`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(1, 1, '2018-04-24 13:14:07', '0000-00-00 00:00:00', 26, 1, NULL, 0, 'Black Trousers', 'Black Trousers', NULL, NULL, NULL, 0, 0, '0.3000', '1.0000', '1800.0000', '1800.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '1800.0000', '1800.0000', '0.0000', '0.3000', 'simple', NULL, NULL, NULL, NULL, NULL, '1800.0000', '1800.0000', '1800.0000', '1800.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2018-04-25 08:08:53', '2018-05-01 11:20:16', 27, 1, NULL, 0, 'Dell-3552', 'Dell Inspiron 3552 (Z565162HIN9) Notebook', NULL, NULL, NULL, 0, 0, '5.0000', '1.0000', '25440.0000', '25440.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '25440.0000', '25440.0000', '0.0000', '5.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '25440.0000', '25440.0000', '25440.0000', '25440.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, '2018-04-27 05:32:35', '2018-05-01 11:20:16', 2, 1, NULL, 0, 'Lenovo', 'Lenovo', NULL, NULL, NULL, 0, 0, '4.0000', '1.0000', '85000.0000', '85000.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '85000.0000', '85000.0000', '0.0000', '4.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '85000.0000', '85000.0000', '85000.0000', '85000.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, '2018-04-27 05:36:17', '2018-05-01 11:20:16', 1, 1, NULL, 0, 'Dell', 'Dell Inspirion', NULL, NULL, NULL, 0, 0, '4.0000', '1.0000', '24500.0000', '24500.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '24500.0000', '24500.0000', '0.0000', '4.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '24500.0000', '24500.0000', '24500.0000', '24500.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, '2018-04-27 08:04:43', '0000-00-00 00:00:00', 25, 1, NULL, 1, 'Addidas T-Shirts', 'Addidas T-Shirts', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '400.0000', '400.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '400.0000', '400.0000', '0.0000', '0.0000', 'virtual', NULL, NULL, NULL, NULL, NULL, '400.0000', '400.0000', '400.0000', '400.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_item_option`
--

CREATE TABLE `quote_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

INSERT INTO `quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 26, 'info_buyRequest', '{"uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvL2JsYWNrLXRyb3VzZXJzLmh0bWw,","product":"26","selected_configurable_option":"","related_product":"","qty":"1"}'),
(3, 3, 27, 'info_buyRequest', '{"uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvL2RlbGwtaW5zcGlyb24tMzU1Mi16NTY1MTYyaGluOS1ub3RlYm9vay5odG1s","product":"27","selected_configurable_option":"","related_product":"","qty":"1"}'),
(5, 5, 2, 'info_buyRequest', '{"uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvLw,,","product":"2","qty":1}'),
(6, 6, 1, 'info_buyRequest', '{"uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvL2NhdGFsb2dzZWFyY2gvcmVzdWx0Lz9xPWxhcHRvcA,,","product":"1","qty":1}'),
(8, 8, 25, 'info_buyRequest', '{"uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvLw,,","product":"25","qty":1}');

-- --------------------------------------------------------

--
-- Table structure for table `quote_payment`
--

CREATE TABLE `quote_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

-- --------------------------------------------------------

--
-- Table structure for table `quote_shipping_rate`
--

CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) UNSIGNED NOT NULL COMMENT 'Rate Id',
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Rating Id',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`, `is_active`) VALUES
(1, 1, 'Quality', 0, 1),
(2, 1, 'Value', 0, 1),
(3, 1, 'Price', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

CREATE TABLE `rating_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Rating Option Id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Vote id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

--
-- Dumping data for table `rating_option_vote`
--

INSERT INTO `rating_option_vote` (`vote_id`, `option_id`, `remote_ip`, `remote_ip_long`, `customer_id`, `entity_pk_value`, `rating_id`, `review_id`, `percent`, `value`) VALUES
(1, 14, '::1', 0, 1, 1, 3, 1, 80, 4),
(2, 4, '::1', 0, 1, 1, 1, 1, 80, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

--
-- Dumping data for table `rating_option_vote_aggregated`
--

INSERT INTO `rating_option_vote_aggregated` (`primary_id`, `rating_id`, `entity_pk_value`, `vote_count`, `vote_value_sum`, `percent`, `percent_approved`, `store_id`) VALUES
(1, 3, 1, 1, 4, 80, 80, 0),
(2, 3, 1, 1, 4, 80, 80, 1),
(3, 1, 1, 1, 4, 80, 80, 0),
(4, 1, 1, 1, 4, 80, 80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

CREATE TABLE `rating_store` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

--
-- Dumping data for table `rating_store`
--

INSERT INTO `rating_store` (`rating_id`, `store_id`) VALUES
(1, 0),
(1, 1),
(3, 0),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

CREATE TABLE `rating_title` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `release_notification_viewer_log`
--

CREATE TABLE `release_notification_viewer_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `viewer_id` int(10) UNSIGNED NOT NULL COMMENT 'Viewer admin user ID',
  `last_view_version` varchar(16) NOT NULL COMMENT 'Viewer last view on product version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Release Notification Viewer Log Table';

--
-- Dumping data for table `release_notification_viewer_log`
--

INSERT INTO `release_notification_viewer_log` (`id`, `viewer_id`, `last_view_version`) VALUES
(1, 1, '2.2.3');

-- --------------------------------------------------------

--
-- Table structure for table `reporting_counts`
--

CREATE TABLE `reporting_counts` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) UNSIGNED DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_module_status`
--

CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_orders`
--

CREATE TABLE `reporting_orders` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(10,0) UNSIGNED DEFAULT NULL,
  `total_base` decimal(10,0) UNSIGNED DEFAULT NULL,
  `item_count` int(10) UNSIGNED NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_system_updates`
--

CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_users`
--

CREATE TABLE `reporting_users` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Dumping data for table `report_compared_product_index`
--

INSERT INTO `report_compared_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 23, NULL, 1, NULL, '2018-04-23 08:56:43'),
(2, 36, NULL, 24, NULL, '2018-04-23 12:34:09'),
(3, NULL, 1, 26, NULL, '2018-04-27 08:47:52'),
(5, NULL, 1, 25, NULL, '2018-04-27 08:48:07'),
(6, NULL, 1, 29, NULL, '2018-04-27 09:14:50'),
(7, NULL, 1, 24, NULL, '2018-05-01 11:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

CREATE TABLE `report_event` (
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2018-04-20 11:06:54', 1, 1, 6, 1, 1),
(2, '2018-04-20 11:07:33', 1, 1, 6, 1, 1),
(3, '2018-04-20 11:07:35', 1, 1, 6, 1, 1),
(4, '2018-04-20 11:45:13', 1, 1, 6, 1, 1),
(5, '2018-04-20 12:34:53', 1, 1, 6, 1, 1),
(6, '2018-04-23 08:19:32', 1, 1, 23, 1, 1),
(7, '2018-04-23 08:19:33', 1, 1, 23, 1, 1),
(8, '2018-04-23 08:20:06', 1, 1, 23, 1, 1),
(9, '2018-04-23 08:56:31', 1, 1, 23, 1, 1),
(10, '2018-04-23 08:56:43', 3, 1, 23, 1, 1),
(11, '2018-04-23 10:35:21', 1, 3, 36, 1, 1),
(12, '2018-04-23 10:37:48', 1, 3, 36, 1, 1),
(13, '2018-04-23 10:49:25', 1, 2, 36, 1, 1),
(14, '2018-04-23 10:57:44', 1, 3, 36, 1, 1),
(15, '2018-04-23 11:04:55', 1, 3, 36, 1, 1),
(16, '2018-04-23 11:38:30', 1, 11, 36, 1, 1),
(17, '2018-04-23 11:46:59', 1, 15, 36, 1, 1),
(18, '2018-04-23 11:54:39', 1, 15, 36, 1, 1),
(19, '2018-04-23 12:29:57', 1, 15, 36, 1, 1),
(20, '2018-04-23 12:30:29', 1, 24, 36, 1, 1),
(21, '2018-04-23 12:34:09', 3, 24, 36, 1, 1),
(22, '2018-04-23 12:34:44', 1, 3, 36, 1, 1),
(23, '2018-04-24 04:33:07', 1, 15, 39, 1, 1),
(24, '2018-04-24 04:41:05', 1, 24, 45, 1, 1),
(25, '2018-04-24 04:50:32', 1, 24, 47, 1, 1),
(26, '2018-04-24 04:50:49', 1, 15, 49, 1, 1),
(27, '2018-04-24 04:57:48', 1, 1, 52, 1, 1),
(28, '2018-04-24 04:58:11', 1, 2, 52, 1, 1),
(29, '2018-04-24 05:27:22', 1, 1, 55, 1, 1),
(30, '2018-04-24 12:35:30', 1, 26, 60, 1, 1),
(31, '2018-04-24 12:40:36', 1, 26, 60, 1, 1),
(32, '2018-04-24 12:40:39', 1, 26, 60, 1, 1),
(33, '2018-04-24 12:42:40', 1, 25, 60, 1, 1),
(34, '2018-04-24 13:12:42', 1, 26, 60, 1, 1),
(35, '2018-04-24 13:14:06', 4, 26, 60, 1, 1),
(36, '2018-04-24 13:14:18', 1, 26, 60, 1, 1),
(37, '2018-04-25 04:30:54', 1, 1, 61, 1, 1),
(38, '2018-04-25 04:30:59', 1, 1, 61, 1, 1),
(39, '2018-04-25 04:31:02', 1, 1, 61, 1, 1),
(40, '2018-04-25 04:35:37', 1, 1, 61, 1, 1),
(41, '2018-04-25 04:39:28', 1, 1, 61, 1, 1),
(42, '2018-04-25 04:43:42', 1, 1, 61, 1, 1),
(43, '2018-04-25 04:48:27', 1, 3, 61, 1, 1),
(44, '2018-04-25 04:51:38', 1, 3, 61, 1, 1),
(45, '2018-04-25 04:53:12', 1, 23, 61, 1, 1),
(46, '2018-04-25 04:55:31', 1, 1, 61, 1, 1),
(47, '2018-04-25 05:42:56', 1, 1, 1, 0, 1),
(48, '2018-04-25 05:44:13', 1, 1, 1, 0, 1),
(49, '2018-04-25 05:46:22', 1, 1, 1, 0, 1),
(50, '2018-04-25 05:47:21', 1, 1, 66, 1, 1),
(51, '2018-04-25 06:00:59', 1, 1, 66, 1, 1),
(52, '2018-04-25 06:49:39', 1, 28, 66, 1, 1),
(53, '2018-04-25 06:50:41', 1, 27, 66, 1, 1),
(54, '2018-04-25 07:30:05', 1, 27, 66, 1, 1),
(55, '2018-04-25 08:08:34', 1, 27, 68, 1, 1),
(56, '2018-04-25 08:08:53', 4, 27, 68, 1, 1),
(57, '2018-04-25 08:14:35', 4, 27, 1, 0, 1),
(58, '2018-04-25 08:25:23', 1, 27, 1, 0, 1),
(59, '2018-04-25 08:36:12', 1, 2, 1, 0, 1),
(60, '2018-04-25 08:49:45', 1, 1, 1, 0, 1),
(61, '2018-04-25 09:11:43', 1, 1, 1, 0, 1),
(62, '2018-04-25 09:15:40', 1, 28, 1, 0, 1),
(63, '2018-04-25 09:27:08', 1, 28, 1, 0, 1),
(64, '2018-04-25 09:37:57', 1, 28, 1, 0, 1),
(65, '2018-04-25 09:38:58', 1, 1, 71, 1, 1),
(66, '2018-04-25 09:44:34', 1, 1, 71, 1, 1),
(67, '2018-04-25 09:47:10', 1, 15, 71, 1, 1),
(68, '2018-04-25 09:55:52', 1, 15, 71, 1, 1),
(69, '2018-04-25 09:56:50', 1, 15, 71, 1, 1),
(70, '2018-04-25 10:12:13', 4, 15, 71, 1, 1),
(71, '2018-04-25 10:17:58', 1, 15, 71, 1, 1),
(72, '2018-04-25 10:19:05', 1, 1, 71, 1, 1),
(73, '2018-04-25 10:19:27', 1, 24, 71, 1, 1),
(74, '2018-04-25 10:57:07', 1, 24, 71, 1, 1),
(75, '2018-04-25 11:44:05', 1, 15, 71, 1, 1),
(76, '2018-04-25 12:02:22', 1, 28, 71, 1, 1),
(77, '2018-04-26 09:14:29', 1, 24, 87, 1, 1),
(78, '2018-04-27 04:56:11', 1, 24, 91, 1, 1),
(79, '2018-04-27 04:56:19', 1, 24, 91, 1, 1),
(80, '2018-04-27 04:56:23', 1, 24, 91, 1, 1),
(81, '2018-04-27 04:56:26', 1, 24, 91, 1, 1),
(82, '2018-04-27 05:32:35', 4, 2, 91, 1, 1),
(83, '2018-04-27 05:34:23', 4, 2, 1, 0, 1),
(84, '2018-04-27 05:36:17', 4, 1, 1, 0, 1),
(85, '2018-04-27 05:37:19', 1, 2, 1, 0, 1),
(86, '2018-04-27 08:04:43', 4, 25, 97, 1, 1),
(87, '2018-04-27 08:09:57', 4, 25, 1, 0, 1),
(88, '2018-04-27 08:15:33', 1, 25, 1, 0, 1),
(89, '2018-04-27 08:16:20', 1, 24, 1, 0, 1),
(90, '2018-04-27 08:47:52', 3, 26, 1, 0, 1),
(91, '2018-04-27 08:47:53', 3, 26, 1, 0, 1),
(92, '2018-04-27 08:48:07', 3, 25, 1, 0, 1),
(93, '2018-04-27 08:50:45', 1, 2, 1, 0, 1),
(94, '2018-04-27 08:51:05', 5, 2, 1, 0, 1),
(95, '2018-04-27 08:51:43', 1, 25, 1, 0, 1),
(96, '2018-04-27 08:52:19', 5, 25, 1, 0, 1),
(97, '2018-04-27 09:14:50', 3, 29, 1, 0, 1),
(98, '2018-04-27 09:17:52', 1, 26, 1, 0, 1),
(99, '2018-04-27 10:28:06', 1, 25, 1, 0, 1),
(100, '2018-04-27 10:41:00', 1, 25, 1, 0, 1),
(101, '2018-04-28 09:00:06', 1, 25, 103, 1, 1),
(102, '2018-04-28 09:00:14', 1, 25, 103, 1, 1),
(103, '2018-04-28 13:16:16', 1, 25, 104, 1, 1),
(104, '2018-04-28 13:16:32', 1, 25, 104, 1, 1),
(105, '2018-04-30 13:03:18', 1, 2, 133, 1, 1),
(106, '2018-04-30 13:04:17', 1, 2, 133, 1, 1),
(107, '2018-05-01 05:40:06', 1, 1, 153, 1, 1),
(108, '2018-05-01 06:09:44', 1, 28, 153, 1, 1),
(109, '2018-05-01 06:11:23', 1, 28, 153, 1, 1),
(110, '2018-05-01 06:16:34', 1, 28, 153, 1, 1),
(111, '2018-05-01 06:17:16', 1, 28, 153, 1, 1),
(112, '2018-05-01 11:16:41', 1, 33, 162, 1, 1),
(113, '2018-05-01 11:16:48', 1, 33, 162, 1, 1),
(114, '2018-05-01 11:17:40', 1, 33, 162, 1, 1),
(115, '2018-05-01 11:18:42', 1, 33, 1, 0, 1),
(116, '2018-05-01 11:25:53', 3, 24, 1, 0, 1),
(117, '2018-05-02 08:57:33', 1, 24, 167, 1, 1),
(118, '2018-05-02 08:58:17', 1, 24, 167, 1, 1),
(119, '2018-05-02 09:00:27', 1, 24, 167, 1, 1),
(120, '2018-05-02 09:01:01', 1, 24, 167, 1, 1),
(121, '2018-05-02 09:01:21', 1, 24, 167, 1, 1),
(122, '2018-05-02 09:03:52', 1, 24, 167, 1, 1),
(123, '2018-05-02 09:04:04', 1, 24, 167, 1, 1),
(124, '2018-05-02 09:05:02', 1, 29, 167, 1, 1),
(125, '2018-05-02 10:10:44', 1, 33, 167, 1, 1),
(126, '2018-05-02 10:10:51', 1, 33, 167, 1, 1),
(127, '2018-05-02 10:24:48', 1, 33, 167, 1, 1),
(128, '2018-05-03 04:53:03', 1, 32, 170, 1, 1),
(129, '2018-05-03 04:53:29', 1, 32, 170, 1, 1),
(130, '2018-05-04 05:46:54', 1, 1, 176, 1, 1),
(131, '2018-05-04 06:30:31', 1, 1, 177, 1, 1),
(132, '2018-05-04 09:50:05', 1, 27, 178, 1, 1),
(133, '2018-05-04 09:50:24', 1, 27, 178, 1, 1),
(134, '2018-05-16 08:30:16', 1, 29, 0, 1, 1),
(135, '2018-05-16 08:30:35', 1, 1, 0, 1, 1),
(136, '2018-05-16 08:30:41', 1, 1, 0, 1, 1),
(137, '2018-05-16 10:33:33', 1, 1, 0, 1, 1),
(138, '2018-05-16 10:33:48', 1, 1, 0, 1, 1),
(139, '2018-05-16 11:08:40', 1, 28, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Dumping data for table `report_viewed_product_aggregated_daily`
--

INSERT INTO `report_viewed_product_aggregated_daily` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2018-04-20', 1, 1, 'Dell Inspirion', '24500.0000', 5, 1),
(2, '2018-04-23', 1, 1, 'Dell Inspirion', '24500.0000', 4, 2),
(3, '2018-04-23', 1, 2, 'Lenovo', '85000.0000', 1, 5),
(4, '2018-04-23', 1, 3, 'Accer Aspire', '35000.0000', 5, 1),
(5, '2018-04-23', 1, 15, 'HP', '0.0000', 3, 3),
(6, '2018-04-23', 1, 24, 'Gift', '0.0000', 1, 4),
(7, '2018-04-24', 1, 1, 'Dell Inspirion', '24500.0000', 2, 2),
(8, '2018-04-24', 1, 2, 'Lenovo', '85000.0000', 1, 5),
(9, '2018-04-24', 1, 15, 'HP', '0.0000', 2, 3),
(10, '2018-04-24', 1, 24, 'Gift', '0.0000', 2, 4),
(11, '2018-04-24', 1, 25, 'Addidas T-Shirts', '400.0000', 1, 6),
(12, '2018-04-24', 1, 26, 'Black Trousers', '1800.0000', 5, 1),
(13, '2018-04-25', 1, 1, 'Dell Inspirion', '24500.0000', 17, 1),
(14, '2018-04-25', 1, 2, 'Lenovo', '85000.0000', 1, 7),
(15, '2018-04-25', 1, 3, 'Accer Aspire', '35000.0000', 2, 6),
(16, '2018-04-25', 1, 15, 'HP', '0.0000', 5, 3),
(17, '2018-04-25', 1, 23, 'Sandisk-Pendrive', '700.0000', 1, 8),
(18, '2018-04-25', 1, 24, 'Gift', '0.0000', 2, 5),
(19, '2018-04-25', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 4, 4),
(20, '2018-04-25', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 5, 2),
(21, '2018-04-26', 1, 24, 'Gift', '0.0000', 1, 1),
(22, '2018-04-27', 1, 2, 'Lenovo', '85000.0000', 2, 3),
(23, '2018-04-27', 1, 24, 'Gift', '0.0000', 5, 1),
(24, '2018-04-27', 1, 25, 'Addidas T-Shirts', '400.0000', 4, 2),
(25, '2018-04-27', 1, 26, 'Black Trousers', '1800.0000', 1, 4),
(26, '2018-04-28', 1, 25, 'Addidas T-Shirts', '400.0000', 4, 1),
(27, '2018-04-30', 1, 2, 'Lenovo', '85000.0000', 2, 1),
(28, '2018-05-01', 1, 1, 'Dell Inspirion', '24500.0000', 1, 3),
(29, '2018-05-01', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 4, 1),
(30, '2018-05-01', 1, 33, 'Proteus Fitness Jackshirt-XL-Black', '2700.0000', 4, 2),
(31, '2018-05-02', 1, 24, 'Gift', '0.0000', 7, 1),
(32, '2018-05-02', 1, 29, 'Formal Trouser', '1200.0000', 1, 3),
(33, '2018-05-02', 1, 33, 'Proteus Fitness Jackshirt-XL-Black', '2700.0000', 3, 2),
(34, '2018-05-03', 1, 32, 'Proteus Fitness Jackshirt-XL-Blue', '2700.0000', 2, 1),
(35, '2018-05-04', 1, 1, 'Dell Inspirion', '24500.0000', 2, 1),
(36, '2018-05-04', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 2, 2),
(37, '2018-05-16', 1, 1, 'Dell Inspirion', '24500.0000', 4, 1),
(38, '2018-05-16', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 1, 2),
(39, '2018-05-16', 1, 29, 'Formal Trouser', '1200.0000', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`);

--
-- Indexes for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD PRIMARY KEY (`password_id`),
  ADD KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`);

--
-- Indexes for table `admin_system_messages`
--
ALTER TABLE `admin_system_messages`
  ADD PRIMARY KEY (`identity`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ADMIN_USER_USERNAME` (`username`);

--
-- Indexes for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  ADD KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`);

--
-- Indexes for table `authorization_role`
--
ALTER TABLE `authorization_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  ADD KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Indexes for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  ADD KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CACHE_EXPIRE_TIME` (`expire_time`);

--
-- Indexes for table `cache_tag`
--
ALTER TABLE `cache_tag`
  ADD PRIMARY KEY (`tag`,`cache_id`),
  ADD KEY `CACHE_TAG_CACHE_ID` (`cache_id`);

--
-- Indexes for table `captcha_log`
--
ALTER TABLE `captcha_log`
  ADD PRIMARY KEY (`type`,`value`);

--
-- Indexes for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_cl`
--
ALTER TABLE `cataloginventory_stock_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`);

--
-- Indexes for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`);

--
-- Indexes for table `cataloginventory_stock_status_idx`
--
ALTER TABLE `cataloginventory_stock_status_idx`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_replica`
--
ALTER TABLE `cataloginventory_stock_status_replica`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`);

--
-- Indexes for table `cataloginventory_stock_status_tmp`
--
ALTER TABLE `cataloginventory_stock_status_tmp`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule`
--
ALTER TABLE `catalogrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_group_website_replica`
--
ALTER TABLE `catalogrule_group_website_replica`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_cl`
--
ALTER TABLE `catalogrule_product_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_price_replica`
--
ALTER TABLE `catalogrule_product_price_replica`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_replica`
--
ALTER TABLE `catalogrule_product_replica`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_rule_cl`
--
ALTER TABLE `catalogrule_rule_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogsearch_fulltext_cl`
--
ALTER TABLE `catalogsearch_fulltext_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalogsearch_fulltext_scope1`
--
ALTER TABLE `catalogsearch_fulltext_scope1`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`);
ALTER TABLE `catalogsearch_fulltext_scope1` ADD FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Indexes for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_PATH` (`path`);

--
-- Indexes for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_flat_cl`
--
ALTER TABLE `catalog_category_flat_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_FLAT_STORE_1_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_CATEGORY_FLAT_STORE_1_TMP_PATH` (`path`),
  ADD KEY `CATALOG_CATEGORY_FLAT_STORE_1_TMP_LEVEL` (`level`);

--
-- Indexes for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_category_product_cl`
--
ALTER TABLE `catalog_category_product_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_replica`
--
ALTER TABLE `catalog_category_product_index_replica`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_tmp`
--
ALTER TABLE `catalog_category_product_index_tmp`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`);

--
-- Indexes for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD PRIMARY KEY (`catalog_compare_item_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`);

--
-- Indexes for table `catalog_product_attribute_cl`
--
ALTER TABLE `catalog_product_attribute_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_BNDL_OPT_VAL_OPT_ID_PARENT_PRD_ID_STORE_ID` (`option_id`,`parent_product_id`,`store_id`);

--
-- Indexes for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD PRIMARY KEY (`selection_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD PRIMARY KEY (`selection_id`,`parent_product_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_bundle_stock_index`
--
ALTER TABLE `catalog_product_bundle_stock_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`);

--
-- Indexes for table `catalog_product_category_cl`
--
ALTER TABLE `catalog_product_category_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`);

--
-- Indexes for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_TYPE_ID` (`type_id`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_CORE_HP` (`core_hp`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_CORE_HP_VALUE` (`core_hp_value`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_NAME` (`name`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_PRICE` (`price`),
  ADD KEY `CATALOG_PRODUCT_FLAT_1_TMP_INDEXER_TOUCHSCREEN` (`touchscreen`);

--
-- Indexes for table `catalog_product_flat_cl`
--
ALTER TABLE `catalog_product_flat_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalog_product_frontend_action`
--
ALTER TABLE `catalog_product_frontend_action`
  ADD PRIMARY KEY (`action_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_VISITOR_ID_PRODUCT_ID_TYPE_ID` (`visitor_id`,`product_id`,`type_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_CUSTOMER_ID_PRODUCT_ID_TYPE_ID` (`customer_id`,`product_id`,`type_id`);

--
-- Indexes for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_idx`
--
ALTER TABLE `catalog_product_index_eav_decimal_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_replica`
--
ALTER TABLE `catalog_product_index_eav_decimal_replica`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_tmp`
--
ALTER TABLE `catalog_product_index_eav_decimal_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_idx`
--
ALTER TABLE `catalog_product_index_eav_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_replica`
--
ALTER TABLE `catalog_product_index_eav_replica`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_tmp`
--
ALTER TABLE `catalog_product_index_eav_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_bundle_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_idx`
--
ALTER TABLE `catalog_product_index_price_downlod_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_tmp`
--
ALTER TABLE `catalog_product_index_price_downlod_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_idx`
--
ALTER TABLE `catalog_product_index_price_final_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_tmp`
--
ALTER TABLE `catalog_product_index_price_final_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_idx`
--
ALTER TABLE `catalog_product_index_price_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_opt_agr_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_agr_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_idx`
--
ALTER TABLE `catalog_product_index_price_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_replica`
--
ALTER TABLE `catalog_product_index_price_replica`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_tmp`
--
ALTER TABLE `catalog_product_index_price_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD PRIMARY KEY (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`);

--
-- Indexes for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`);

--
-- Indexes for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD PRIMARY KEY (`product_link_attribute_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`);

--
-- Indexes for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  ADD PRIMARY KEY (`link_type_id`);

--
-- Indexes for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD PRIMARY KEY (`option_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD PRIMARY KEY (`option_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD PRIMARY KEY (`option_type_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD PRIMARY KEY (`option_type_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD PRIMARY KEY (`option_type_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`);

--
-- Indexes for table `catalog_product_price_cl`
--
ALTER TABLE `catalog_product_price_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD PRIMARY KEY (`parent_id`,`child_id`),
  ADD KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`);

--
-- Indexes for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD PRIMARY KEY (`product_super_attribute_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`);

--
-- Indexes for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD PRIMARY KEY (`product_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  ADD KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`);

--
-- Indexes for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Indexes for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD PRIMARY KEY (`agreement_id`,`store_id`),
  ADD KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- Indexes for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD PRIMARY KEY (`block_id`,`store_id`),
  ADD KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `CMS_PAGE_IDENTIFIER` (`identifier`);
ALTER TABLE `cms_page` ADD FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`);

--
-- Indexes for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`),
  ADD KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- Indexes for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  ADD KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`);

--
-- Indexes for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`);

--
-- Indexes for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_dummy_cl`
--
ALTER TABLE `customer_dummy_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD PRIMARY KEY (`attribute_id`,`website_id`),
  ADD KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  ADD KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  ADD KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  ADD KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`);

--
-- Indexes for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD PRIMARY KEY (`form_code`,`attribute_id`),
  ADD KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_grid_flat`
--
ALTER TABLE `customer_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  ADD KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  ADD KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  ADD KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  ADD KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`);
ALTER TABLE `customer_grid_flat` ADD FULLTEXT KEY `FTI_8746F705702DD5F6D45B8C7CE7FE9F2F` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `customer_log`
--
ALTER TABLE `customer_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  ADD KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`);

--
-- Indexes for table `design_change`
--
ALTER TABLE `design_change`
  ADD PRIMARY KEY (`design_change_id`),
  ADD KEY `DESIGN_CHANGE_STORE_ID` (`store_id`);

--
-- Indexes for table `design_config_dummy_cl`
--
ALTER TABLE `design_config_dummy_cl`
  ADD PRIMARY KEY (`version_id`);

--
-- Indexes for table `design_config_grid_flat`
--
ALTER TABLE `design_config_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`);
ALTER TABLE `design_config_grid_flat` ADD FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`);

--
-- Indexes for table `directory_country`
--
ALTER TABLE `directory_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  ADD PRIMARY KEY (`country_format_id`),
  ADD UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`);

--
-- Indexes for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`);

--
-- Indexes for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD PRIMARY KEY (`locale`,`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`);

--
-- Indexes for table `directory_currency_rate`
--
ALTER TABLE `directory_currency_rate`
  ADD PRIMARY KEY (`currency_from`,`currency_to`),
  ADD KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`);

--
-- Indexes for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`);

--
-- Indexes for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`purchased_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`);

--
-- Indexes for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD PRIMARY KEY (`sample_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`);

--
-- Indexes for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_CODE` (`attribute_set_id`,`attribute_group_code`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  ADD KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- Indexes for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD PRIMARY KEY (`attribute_label_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`);

--
-- Indexes for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD PRIMARY KEY (`swatch_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  ADD KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`);

--
-- Indexes for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD PRIMARY KEY (`attribute_set_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  ADD KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`);

--
-- Indexes for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD PRIMARY KEY (`entity_attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD PRIMARY KEY (`entity_store_id`),
  ADD KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  ADD PRIMARY KEY (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`);

--
-- Indexes for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD PRIMARY KEY (`element_id`),
  ADD UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  ADD KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  ADD KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD PRIMARY KEY (`fieldset_id`),
  ADD UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`);

--
-- Indexes for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD PRIMARY KEY (`fieldset_id`,`store_id`),
  ADD KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  ADD KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD PRIMARY KEY (`type_id`,`entity_type_id`),
  ADD KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Indexes for table `email_abandoned_cart`
--
ALTER TABLE `email_abandoned_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_ABANDONED_CART_QUOTE_ID` (`quote_id`),
  ADD KEY `EMAIL_ABANDONED_CART_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_ABANDONED_CART_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_ABANDONED_CART_EMAIL` (`email`);

--
-- Indexes for table `email_automation`
--
ALTER TABLE `email_automation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_AUTOMATION_AUTOMATION_TYPE` (`automation_type`),
  ADD KEY `EMAIL_AUTOMATION_ENROLMENT_STATUS` (`enrolment_status`),
  ADD KEY `EMAIL_AUTOMATION_TYPE_ID` (`type_id`),
  ADD KEY `EMAIL_AUTOMATION_EMAIL` (`email`),
  ADD KEY `EMAIL_AUTOMATION_PROGRAM_ID` (`program_id`),
  ADD KEY `EMAIL_AUTOMATION_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_AUTOMATION_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_AUTOMATION_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `email_campaign`
--
ALTER TABLE `email_campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_CAMPAIGN_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_CAMPAIGN_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `EMAIL_CAMPAIGN_EMAIL` (`email`),
  ADD KEY `EMAIL_CAMPAIGN_SEND_ID` (`send_id`),
  ADD KEY `EMAIL_CAMPAIGN_SEND_STATUS` (`send_status`),
  ADD KEY `EMAIL_CAMPAIGN_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_CAMPAIGN_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_CAMPAIGN_SENT_AT` (`sent_at`),
  ADD KEY `EMAIL_CAMPAIGN_EVENT_NAME` (`event_name`),
  ADD KEY `EMAIL_CAMPAIGN_MESSAGE` (`message`),
  ADD KEY `EMAIL_CAMPAIGN_QUOTE_ID` (`quote_id`),
  ADD KEY `EMAIL_CAMPAIGN_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `email_catalog`
--
ALTER TABLE `email_catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_CATALOG_PRODUCT_ID` (`product_id`),
  ADD KEY `EMAIL_CATALOG_IMPORTED` (`imported`),
  ADD KEY `EMAIL_CATALOG_MODIFIED` (`modified`),
  ADD KEY `EMAIL_CATALOG_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_CATALOG_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `email_contact`
--
ALTER TABLE `email_contact`
  ADD PRIMARY KEY (`email_contact_id`),
  ADD KEY `EMAIL_CONTACT_EMAIL_CONTACT_ID` (`email_contact_id`),
  ADD KEY `EMAIL_CONTACT_IS_GUEST` (`is_guest`),
  ADD KEY `EMAIL_CONTACT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_CONTACT_WEBSITE_ID` (`website_id`),
  ADD KEY `EMAIL_CONTACT_IS_SUBSCRIBER` (`is_subscriber`),
  ADD KEY `EMAIL_CONTACT_SUBSCRIBER_STATUS` (`subscriber_status`),
  ADD KEY `EMAIL_CONTACT_EMAIL_IMPORTED` (`email_imported`),
  ADD KEY `EMAIL_CONTACT_SUBSCRIBER_IMPORTED` (`subscriber_imported`),
  ADD KEY `EMAIL_CONTACT_SUPPRESSED` (`suppressed`),
  ADD KEY `EMAIL_CONTACT_EMAIL` (`email`),
  ADD KEY `EMAIL_CONTACT_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `email_importer`
--
ALTER TABLE `email_importer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_TYPE` (`import_type`),
  ADD KEY `EMAIL_IMPORTER_WEBSITE_ID` (`website_id`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_STATUS` (`import_status`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_MODE` (`import_mode`),
  ADD KEY `EMAIL_IMPORTER_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_IMPORTER_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_ID` (`import_id`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_STARTED` (`import_started`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_FINISHED` (`import_finished`);

--
-- Indexes for table `email_order`
--
ALTER TABLE `email_order`
  ADD PRIMARY KEY (`email_order_id`),
  ADD KEY `EMAIL_ORDER_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_ORDER_QUOTE_ID` (`quote_id`),
  ADD KEY `EMAIL_ORDER_EMAIL_IMPORTED` (`email_imported`),
  ADD KEY `EMAIL_ORDER_ORDER_STATUS` (`order_status`),
  ADD KEY `EMAIL_ORDER_MODIFIED` (`modified`),
  ADD KEY `EMAIL_ORDER_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_ORDER_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` (`order_id`);

--
-- Indexes for table `email_review`
--
ALTER TABLE `email_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_REVIEW_REVIEW_ID` (`review_id`),
  ADD KEY `EMAIL_REVIEW_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_REVIEW_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_REVIEW_REVIEW_IMPORTED` (`review_imported`),
  ADD KEY `EMAIL_REVIEW_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_REVIEW_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `email_rules`
--
ALTER TABLE `email_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  ADD KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `email_wishlist`
--
ALTER TABLE `email_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_WISHLIST_WISHLIST_ID` (`wishlist_id`),
  ADD KEY `EMAIL_WISHLIST_ITEM_COUNT` (`item_count`),
  ADD KEY `EMAIL_WISHLIST_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_WISHLIST_WISHLIST_MODIFIED` (`wishlist_modified`),
  ADD KEY `EMAIL_WISHLIST_WISHLIST_IMPORTED` (`wishlist_imported`),
  ADD KEY `EMAIL_WISHLIST_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_WISHLIST_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_WISHLIST_STORE_ID` (`store_id`);

--
-- Indexes for table `flag`
--
ALTER TABLE `flag`
  ADD PRIMARY KEY (`flag_id`),
  ADD KEY `FLAG_LAST_UPDATE` (`last_update`);

--
-- Indexes for table `gift_message`
--
ALTER TABLE `gift_message`
  ADD PRIMARY KEY (`gift_message_id`);

--
-- Indexes for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`);

--
-- Indexes for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_history`
--
ALTER TABLE `import_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `indexer_state`
--
ALTER TABLE `indexer_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`);

--
-- Indexes for table `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`integration_id`),
  ADD UNIQUE KEY `INTEGRATION_NAME` (`name`),
  ADD UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`);

--
-- Indexes for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD PRIMARY KEY (`layout_link_id`),
  ADD KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  ADD KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  ADD KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `layout_update`
--
ALTER TABLE `layout_update`
  ADD PRIMARY KEY (`layout_update_id`),
  ADD KEY `LAYOUT_UPDATE_HANDLE` (`handle`);

--
-- Indexes for table `mageplaza_productslider_slider`
--
ALTER TABLE `mageplaza_productslider_slider`
  ADD PRIMARY KEY (`slider_id`);
ALTER TABLE `mageplaza_productslider_slider` ADD FULLTEXT KEY `MAGEPLAZA_PRODUCTSLIDER_SLIDER_NAME_ACTIVE_TO_SERIALIZED_DATA` (`name`,`active_to`,`serialized_data`);

--
-- Indexes for table `mview_state`
--
ALTER TABLE `mview_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  ADD KEY `MVIEW_STATE_MODE` (`mode`);

--
-- Indexes for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`);

--
-- Indexes for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`);

--
-- Indexes for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD PRIMARY KEY (`queue_link_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`);

--
-- Indexes for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD PRIMARY KEY (`queue_id`,`store_id`),
  ADD KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  ADD KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  ADD KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  ADD KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  ADD KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`);

--
-- Indexes for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  ADD KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  ADD KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  ADD KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`);

--
-- Indexes for table `password_reset_request_event`
--
ALTER TABLE `password_reset_request_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  ADD KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`);

--
-- Indexes for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD PRIMARY KEY (`agreement_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`);

--
-- Indexes for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD PRIMARY KEY (`agreement_id`,`order_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`);

--
-- Indexes for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`);

--
-- Indexes for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`);

--
-- Indexes for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD PRIMARY KEY (`persistent_id`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  ADD KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD PRIMARY KEY (`alert_price_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD PRIMARY KEY (`alert_stock_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  ADD KEY `QUOTE_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD PRIMARY KEY (`address_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`);

--
-- Indexes for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD PRIMARY KEY (`entity_id`,`quote_id`),
  ADD KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`);

--
-- Indexes for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`);

--
-- Indexes for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  ADD KEY `RATING_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `rating_entity`
--
ALTER TABLE `rating_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`);

--
-- Indexes for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `RATING_OPTION_RATING_ID` (`rating_id`);

--
-- Indexes for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  ADD KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`);

--
-- Indexes for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `release_notification_viewer_log`
--
ALTER TABLE `release_notification_viewer_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID` (`viewer_id`);

--
-- Indexes for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_users`
--
ALTER TABLE `reporting_users`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_event`
--
ALTER TABLE `report_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  ADD KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  ADD KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  ADD KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  ADD KEY `REPORT_EVENT_STORE_ID` (`store_id`);

--
-- Indexes for table `report_event_types`
--
ALTER TABLE `report_event_types`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Notification id';
--
-- AUTO_INCREMENT for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  MODIFY `password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Password Id', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User ID', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `authorization_role`
--
ALTER TABLE `authorization_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Role ID', AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule ID', AUTO_INCREMENT=99628;
--
-- AUTO_INCREMENT for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  MODIFY `stock_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Stock Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cataloginventory_stock_cl`
--
ALTER TABLE `cataloginventory_stock_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `catalogrule`
--
ALTER TABLE `catalogrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';
--
-- AUTO_INCREMENT for table `catalogrule_product_cl`
--
ALTER TABLE `catalogrule_product_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=1049;
--
-- AUTO_INCREMENT for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';
--
-- AUTO_INCREMENT for table `catalogrule_product_price_replica`
--
ALTER TABLE `catalogrule_product_price_replica`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';
--
-- AUTO_INCREMENT for table `catalogrule_product_replica`
--
ALTER TABLE `catalogrule_product_replica`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';
--
-- AUTO_INCREMENT for table `catalogrule_rule_cl`
--
ALTER TABLE `catalogrule_rule_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `catalogsearch_fulltext_cl`
--
ALTER TABLE `catalogsearch_fulltext_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=930;
--
-- AUTO_INCREMENT for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `catalog_category_flat_cl`
--
ALTER TABLE `catalog_category_flat_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `catalog_category_product_cl`
--
ALTER TABLE `catalog_category_product_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=267;
--
-- AUTO_INCREMENT for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  MODIFY `catalog_compare_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `catalog_product_attribute_cl`
--
ALTER TABLE `catalog_product_attribute_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=680;
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  MODIFY `selection_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Selection Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `catalog_product_category_cl`
--
ALTER TABLE `catalog_product_category_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=339;
--
-- AUTO_INCREMENT for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  MODIFY `record_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record Id', AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=532;
--
-- AUTO_INCREMENT for table `catalog_product_flat_cl`
--
ALTER TABLE `catalog_product_flat_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=823;
--
-- AUTO_INCREMENT for table `catalog_product_frontend_action`
--
ALTER TABLE `catalog_product_frontend_action`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Action Id', AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  MODIFY `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  MODIFY `link_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  MODIFY `option_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  MODIFY `option_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  MODIFY `option_type_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  MODIFY `option_type_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  MODIFY `option_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_price_cl`
--
ALTER TABLE `catalog_product_price_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID', AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  MODIFY `product_super_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  MODIFY `schedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id';
--
-- AUTO_INCREMENT for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_dummy_cl`
--
ALTER TABLE `customer_dummy_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID';
--
-- AUTO_INCREMENT for table `customer_entity`
--
ALTER TABLE `customer_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_log`
--
ALTER TABLE `customer_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  MODIFY `visitor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID', AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `design_change`
--
ALTER TABLE `design_change`
  MODIFY `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id';
--
-- AUTO_INCREMENT for table `design_config_dummy_cl`
--
ALTER TABLE `design_config_dummy_cl`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Version ID';
--
-- AUTO_INCREMENT for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  MODIFY `country_format_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id';
--
-- AUTO_INCREMENT for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  MODIFY `region_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Region Id', AUTO_INCREMENT=533;
--
-- AUTO_INCREMENT for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Price ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `purchased_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item ID';
--
-- AUTO_INCREMENT for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  MODIFY `sample_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sample ID';
--
-- AUTO_INCREMENT for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id', AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id', AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  MODIFY `attribute_label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  MODIFY `swatch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID';
--
-- AUTO_INCREMENT for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  MODIFY `attribute_set_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `eav_entity`
--
ALTER TABLE `eav_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  MODIFY `entity_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id', AUTO_INCREMENT=1042;
--
-- AUTO_INCREMENT for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  MODIFY `entity_store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id';
--
-- AUTO_INCREMENT for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  MODIFY `entity_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  MODIFY `element_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Element Id', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  MODIFY `fieldset_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id';
--
-- AUTO_INCREMENT for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  MODIFY `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email_abandoned_cart`
--
ALTER TABLE `email_abandoned_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `email_automation`
--
ALTER TABLE `email_automation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `email_campaign`
--
ALTER TABLE `email_campaign`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `email_catalog`
--
ALTER TABLE `email_catalog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `email_contact`
--
ALTER TABLE `email_contact`
  MODIFY `email_contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_importer`
--
ALTER TABLE `email_importer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `email_order`
--
ALTER TABLE `email_order`
  MODIFY `email_order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `email_review`
--
ALTER TABLE `email_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_rules`
--
ALTER TABLE `email_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';
--
-- AUTO_INCREMENT for table `email_wishlist`
--
ALTER TABLE `email_wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `flag`
--
ALTER TABLE `flag`
  MODIFY `flag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Flag Id', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gift_message`
--
ALTER TABLE `gift_message`
  MODIFY `gift_message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id';
--
-- AUTO_INCREMENT for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id';
--
-- AUTO_INCREMENT for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `import_history`
--
ALTER TABLE `import_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'History record Id';
--
-- AUTO_INCREMENT for table `indexer_state`
--
ALTER TABLE `indexer_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `integration`
--
ALTER TABLE `integration`
  MODIFY `integration_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Integration ID', AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `layout_link`
--
ALTER TABLE `layout_link`
  MODIFY `layout_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Id';
--
-- AUTO_INCREMENT for table `layout_update`
--
ALTER TABLE `layout_update`
  MODIFY `layout_update_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id';
--
-- AUTO_INCREMENT for table `mageplaza_productslider_slider`
--
ALTER TABLE `mageplaza_productslider_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Slider ID';
--
-- AUTO_INCREMENT for table `mview_state`
--
ALTER TABLE `mview_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'View State Id', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  MODIFY `problem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Problem Id';
--
-- AUTO_INCREMENT for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';
--
-- AUTO_INCREMENT for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  MODIFY `queue_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id';
--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `subscriber_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id';
--
-- AUTO_INCREMENT for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';
--
-- AUTO_INCREMENT for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `oauth_token`
--
ALTER TABLE `oauth_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log Id';
--
-- AUTO_INCREMENT for table `password_reset_request_event`
--
ALTER TABLE `password_reset_request_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  MODIFY `cert_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Cert Id';
--
-- AUTO_INCREMENT for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Report Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  MODIFY `row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Row Id';
--
-- AUTO_INCREMENT for table `persistent_session`
--
ALTER TABLE `persistent_session`
  MODIFY `persistent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Session id';
--
-- AUTO_INCREMENT for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  MODIFY `alert_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id';
--
-- AUTO_INCREMENT for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  MODIFY `alert_stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id';
--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `quote_address`
--
ALTER TABLE `quote_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  MODIFY `address_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id';
--
-- AUTO_INCREMENT for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quote_item`
--
ALTER TABLE `quote_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quote_payment`
--
ALTER TABLE `quote_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Payment Id';
--
-- AUTO_INCREMENT for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  MODIFY `rate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rate Id';
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_entity`
--
ALTER TABLE `rating_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_option`
--
ALTER TABLE `rating_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  MODIFY `vote_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vote id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  MODIFY `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `release_notification_viewer_log`
--
ALTER TABLE `release_notification_viewer_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Module Id';
--
-- AUTO_INCREMENT for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_users`
--
ALTER TABLE `reporting_users`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `report_event`
--
ALTER TABLE `report_event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Id', AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `report_event_types`
--
ALTER TABLE `report_event_types`
  MODIFY `event_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=64;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_frontend_action`
--
ALTER TABLE `catalog_product_frontend_action`
  ADD CONSTRAINT `CAT_PRD_FRONTEND_ACTION_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

--
-- Constraints for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

--
-- Constraints for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_campaign`
--
ALTER TABLE `email_campaign`
  ADD CONSTRAINT `EMAIL_CAMPAIGN_STORE_ID_CORE/STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_catalog`
--
ALTER TABLE `email_catalog`
  ADD CONSTRAINT `EMAIL_CATALOG_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_contact`
--
ALTER TABLE `email_contact`
  ADD CONSTRAINT `EMAIL_CONTACT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_order`
--
ALTER TABLE `email_order`
  ADD CONSTRAINT `EMAIL_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EMAIL_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `integration`
--
ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

--
-- Constraints for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `release_notification_viewer_log`
--
ALTER TABLE `release_notification_viewer_log`
  ADD CONSTRAINT `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`viewer_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
