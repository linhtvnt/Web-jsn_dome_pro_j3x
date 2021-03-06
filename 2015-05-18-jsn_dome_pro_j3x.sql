-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2015 at 12:00 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jsn_dome_pro_j3x`
--

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_assets`
--

CREATE TABLE IF NOT EXISTS `lrfic_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `lrfic_assets`
--

INSERT INTO `lrfic_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 536, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 13, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 14, 15, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 16, 17, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 18, 19, 1, 'com_config', 'com_config', '{}'),
(7, 1, 20, 91, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 92, 389, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 390, 391, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 392, 393, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":0},"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 394, 395, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 396, 397, 1, 'com_login', 'com_login', '{}'),
(13, 1, 398, 399, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 400, 401, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 402, 403, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 404, 405, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 408, 413, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 414, 421, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 422, 423, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 424, 425, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 426, 427, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 428, 429, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 430, 431, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 432, 449, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 450, 451, 1, 'com_wrapper', 'com_wrapper', '{}'),
(34, 8, 109, 112, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 25, 26, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 417, 418, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 439, 440, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 113, 298, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 27, 88, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 419, 420, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 441, 448, 2, 'com_weblinks.category.18', 'Sample Data-Weblinks', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 114, 245, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 115, 222, 4, 'com_content.category.20', 'Extensions', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 116, 131, 5, 'com_content.category.21', 'Components', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 132, 191, 5, 'com_content.category.22', 'Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 192, 203, 5, 'com_content.category.23', 'Templates', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 204, 205, 5, 'com_content.category.24', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 206, 221, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 246, 277, 3, 'com_content.category.26', 'Park Site', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 247, 252, 4, 'com_content.category.27', 'Park Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 253, 274, 4, 'com_content.category.28', 'Photo Gallery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 39, 278, 291, 3, 'com_content.category.29', 'Fruit Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 54, 279, 284, 4, 'com_content.category.30', 'Growers', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(56, 43, 442, 443, 3, 'com_weblinks.category.31', 'Park Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 444, 447, 3, 'com_weblinks.category.32', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 445, 446, 4, 'com_weblinks.category.33', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 28, 29, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 30, 87, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 31, 32, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 33, 86, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 34, 35, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 36, 37, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 38, 39, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 40, 41, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 42, 43, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 44, 45, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 46, 47, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 48, 49, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 50, 51, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 52, 53, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 54, 55, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 56, 57, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 58, 59, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 60, 61, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 62, 63, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 64, 65, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 66, 67, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 68, 69, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 70, 71, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 72, 73, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 74, 75, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 76, 77, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 78, 79, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 80, 81, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 82, 83, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 84, 85, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 117, 118, 6, 'com_content.article.1', 'Administrator Components', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 134, 135, 7, 'com_content.article.2', 'Archive Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 136, 137, 7, 'com_content.article.3', 'Article Categories Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 138, 139, 7, 'com_content.article.4', 'Articles Category Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 133, 148, 6, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 149, 156, 6, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 157, 170, 6, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 171, 182, 6, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 193, 194, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 195, 196, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 197, 198, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 199, 200, 6, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 207, 208, 6, 'com_content.article.5', 'Authentication', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 275, 276, 4, 'com_content.article.6', 'Australian Parks ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 158, 159, 7, 'com_content.article.7', 'Banner Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 223, 224, 4, 'com_content.article.8', 'Beginners', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 119, 120, 6, 'com_content.article.9', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 121, 122, 6, 'com_content.article.10', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 265, 266, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 254, 263, 5, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 264, 273, 5, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 160, 161, 7, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 285, 286, 4, 'com_content.article.13', 'Directions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 209, 210, 6, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 211, 212, 6, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 162, 163, 7, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 248, 249, 5, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 250, 251, 5, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 164, 165, 7, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 287, 288, 4, 'com_content.article.20', 'Fruit Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 225, 226, 4, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 227, 228, 4, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 280, 281, 5, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 229, 230, 4, 'com_content.article.24', 'Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 255, 256, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 172, 173, 7, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 140, 141, 7, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 150, 151, 7, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 186, 187, 7, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 142, 143, 7, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 144, 145, 7, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 231, 232, 4, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 257, 258, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 267, 268, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 233, 234, 4, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 166, 167, 7, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 146, 147, 7, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 235, 236, 4, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 123, 124, 6, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 174, 175, 7, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 213, 214, 6, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 292, 293, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 259, 260, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 176, 177, 7, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 178, 179, 7, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 215, 216, 6, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 237, 238, 4, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 239, 240, 4, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 201, 202, 6, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 241, 242, 4, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 217, 218, 6, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 125, 126, 6, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 243, 244, 4, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 127, 128, 6, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 168, 169, 7, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 152, 153, 7, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 261, 262, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 282, 283, 5, 'com_content.article.58', 'Wonderful Watermelon', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 180, 181, 7, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 129, 130, 6, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 188, 189, 7, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 219, 220, 6, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 269, 270, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 271, 272, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 154, 155, 7, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 185, 190, 6, 'com_content.category.75', 'Navigation Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 54, 289, 290, 4, 'com_content.category.76', 'Recipes', '{"core.create":{"12":1,"10":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"12":1,"10":1}}'),
(168, 34, 110, 111, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 8, 299, 388, 2, 'com_content.category.77', 'Template Details', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(170, 169, 300, 315, 3, 'com_content.category.78', 'Design & Features', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(171, 169, 316, 345, 3, 'com_content.category.79', 'Advanced Stuff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(172, 169, 346, 357, 3, 'com_content.category.80', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(173, 169, 358, 371, 3, 'com_content.category.81', 'Layout Variations', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(174, 169, 372, 373, 3, 'com_content.category.82', 'Testimonials', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(175, 169, 374, 387, 3, 'com_content.category.83', 'Menu Styles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(176, 170, 301, 302, 4, 'com_content.article.68', 'Color Variations', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(177, 170, 303, 304, 4, 'com_content.article.69', 'Font Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(178, 170, 305, 306, 4, 'com_content.article.70', 'JSN Dome Design ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(179, 170, 307, 308, 4, 'com_content.article.71', 'Layout', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(180, 170, 309, 310, 4, 'com_content.article.72', 'Menu Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(181, 170, 311, 312, 4, 'com_content.article.73', 'Module Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(182, 170, 313, 314, 4, 'com_content.article.74', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(183, 171, 317, 318, 4, 'com_content.article.75', 'CSS / JS Compression', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(184, 171, 319, 320, 4, 'com_content.article.76', 'Docs / Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(185, 171, 321, 322, 4, 'com_content.article.77', 'Easy to Start', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(186, 171, 323, 324, 4, 'com_content.article.78', 'Extended styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(187, 171, 325, 326, 4, 'com_content.article.79', 'Image Gallery', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(188, 171, 327, 328, 4, 'com_content.article.80', 'Flash Gallery Alternative', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(189, 171, 329, 330, 4, 'com_content.article.81', 'Joomla! 2.5 & Joomla! 3.x Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(190, 171, 331, 332, 4, 'com_content.article.82', 'Responsive Layout', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(191, 171, 333, 334, 4, 'com_content.article.83', 'Multilingual Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(192, 171, 335, 336, 4, 'com_content.article.84', 'Painless Configuration ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(193, 171, 337, 338, 4, 'com_content.article.85', 'RTL Layout Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(194, 171, 339, 340, 4, 'com_content.article.86', 'SEO / Accessibility', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(195, 173, 359, 360, 4, 'com_content.article.87', 'Layout variation Center | Innerright | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(196, 173, 361, 362, 4, 'com_content.article.88', 'Layout variation Innerleft | Center | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(197, 173, 363, 364, 4, 'com_content.article.89', 'Layout variation Left | Center | Innerright ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(198, 173, 365, 366, 4, 'com_content.article.90', 'Layout variation Left | Center | Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(199, 173, 367, 368, 4, 'com_content.article.91', 'Layout variation Left | Innerleft | Center', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(200, 173, 369, 370, 4, 'com_content.article.92', 'Main content only', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(201, 175, 375, 376, 4, 'com_content.article.93', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(202, 175, 377, 378, 4, 'com_content.article.94', 'Rich Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(203, 175, 379, 380, 4, 'com_content.article.95', 'Side Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(204, 175, 381, 382, 4, 'com_content.article.96', 'Side Menu RTL', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(205, 175, 383, 384, 4, 'com_content.article.97', 'Top Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(206, 175, 385, 386, 4, 'com_content.article.98', 'Tree Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(207, 171, 341, 342, 4, 'com_content.article.99', 'JSN Dome Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(208, 171, 343, 344, 4, 'com_content.article.100', 'K2 Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(209, 172, 347, 348, 4, 'com_content.article.101', 'JSN Dome Product Tour', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(210, 172, 349, 350, 4, 'com_content.article.102', '5 reasons to choose JSN Dome', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(211, 172, 351, 352, 4, 'com_content.article.103', 'Introducing JSN Dome', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(212, 172, 353, 354, 4, 'com_content.article.104', 'JSN Dome Showcase', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(213, 3, 11, 12, 2, 'com_banners.category.84', 'Promo', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(215, 7, 89, 90, 2, 'com_contact.category.85', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(216, 1, 514, 515, 1, 'com_poweradmin', 'poweradmin', '{}'),
(217, 1, 516, 517, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.delete":{"6":1},"core.edit.state":{"6":1,"5":1}}'),
(218, 1, 518, 519, 1, 'com_imageshow', 'imageshow', '{}'),
(219, 1, 520, 521, 1, 'com_uniform', 'uniform', '{}'),
(220, 172, 355, 356, 4, 'com_content.article.105', 'Form Builder', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(221, 39, 296, 297, 3, 'com_content.article.106', 'JSN PowerAdmin - Managing your Joomla website can’t be easier', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(222, 1, 522, 523, 1, 'com_k2', 'com_k2', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(223, 1, 524, 525, 1, 'com_kunena', 'com_kunena', '{}'),
(224, 1, 526, 527, 1, 'com_finder', 'com_finder', '{}'),
(225, 1, 528, 529, 1, 'com_tags', 'com_tags', '{}'),
(226, 1, 530, 531, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(227, 1, 532, 533, 1, 'com_ajax', 'com_ajax', '{}'),
(228, 1, 534, 535, 1, 'com_postinstall', 'com_postinstall', '{}'),
(229, 18, 409, 410, 2, 'com_modules.module.189', 'Extended style', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(230, 18, 411, 412, 2, 'com_modules.module.169', 'JSN PowerAdmin Quick Icons', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_associations`
--

CREATE TABLE IF NOT EXISTS `lrfic_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_banners`
--

CREATE TABLE IF NOT EXISTS `lrfic_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lrfic_banners`
--

INSERT INTO `lrfic_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(2, 1, 0, 'Shop 1', 'shop-1', 0, 16, 0, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 15, 'Get books about Joomla! at the Joomla! book shop.', '', 0, 1, '', '{"imageurl":"images\\/banners\\/shop-ad-books.jpg","width":"","height":"","alt":"Joomla! Books"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 0, '', '0000-00-00 00:00:00', 0, 1),
(3, 1, 0, 'Shop 2', 'shop-2', 0, 22, 0, 'http://shop.joomla.org', 1, 15, 'T Shirts, caps and more from the Joomla! Shop.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/shop-ad.jpg","width":"","height":"","alt":"Joomla! Shop"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB', 0, '', '0000-00-00 00:00:00', 0, 1),
(4, 1, 0, 'Support Joomla!', 'support-joomla', 0, 19, 0, 'http://contribute.joomla.org', 1, 15, 'Your contributions of time, talent and money make Joomla! possible.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en-GB', 0, '', '0000-00-00 00:00:00', 0, 1),
(5, 1, 1, 'Product Tour', 'product-tour', 0, 318, 4, 'index.php?option=com_content&view=article&id=101&Itemid=497', 1, 84, '', '<a title="Product Tour" target="_blank" href="index.php?option=com_content&amp;view=article&amp;id=101&amp;Itemid=497"><img alt="Product Tour" src="images/banners/product-tour.jpg"/></a>', 0, 1, '', '{"imageurl":"images\\/banners\\/product-tour.jpg","width":"","height":"","alt":""}', 0, '', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-04-01 08:32:43', '*', 0, '', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_banner_clients`
--

CREATE TABLE IF NOT EXISTS `lrfic_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_banner_clients`
--

INSERT INTO `lrfic_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `lrfic_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_categories`
--

CREATE TABLE IF NOT EXISTS `lrfic_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `lrfic_categories`
--

INSERT INTO `lrfic_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 151, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(9, 34, 1, 131, 132, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(13, 38, 1, 57, 58, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', 'Sample Data-Weblinks', 'sample-data-weblinks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensions', 'extensions', '', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla! extensions.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Components', 'components', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-component.png" class="image-left" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed.In the Joomla! administrator there are additional extensions suce as Menus, Redirection, and the extension managers.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Modules', 'modules', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-module.png" alt="Media Image" class="image-left" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 17 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Templates', 'templates', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colors, type faces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with four templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Template_Manager_Templates">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:42:02', 0, '*', 1),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Languages', 'languages', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Language_Manager_Installed">Help</a></p>\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation.</p>\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:07:45', 0, '*', 1),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla!. Most beginning users do not need to change any of the plugins that install with Joomla!. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Plugin_Manager_Edit">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:05:05', 0, '*', 1),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Park Blog', 'park-blog', '', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\n<p><em>You can make a blog on your website by creating a category to write you blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description (this part) displayed. </em></p>\n<p><em>To enhance your blog you may want to add  extensions for <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>, <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, and <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>.   You will also enable the syndication that is included in Joomla! (in the Integration Options set Show Feed Link to Show an make sure to display the syndication module on the page).</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Photo Gallery', 'photo-gallery', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', 'Fruit Shop Site', 'fruit-shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', 'Growers', 'growers', '', '<p>We search the whole countryside for the best fruit growers.</p>\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a users who is in the suppliers group.  <br />Create one page in the growers category for that user and make that supplier the author of the page.  That user will be able to edit his or her page. </em></p>\n<p><em>This illustrates the use of the Edit Own permission. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', 'Park Links', 'park-links', '', '<p>Here are links to some of my favorite parks.</p>\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', 'Joomla! Specific Links', 'joomla-specific-links', '', '<p><div style="font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 76%; background-color: #ffffff; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.3em; color: #333333;"><p>A selection of links that are all related to the Joomla! Project.</p></div></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', 'Other Resources', 'other-resources', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Content Modules', 'articles-modules', '', '<p>Content modules display article and other information from the content component.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'User Modules', 'user-modules', '', '<p>User modules interact with the user system, allowing users to login, showing who is logged in, and showing the most recently registered users.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Display Modules', 'display-modules', '', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utility Modules', 'utility-modules', '', '<p>Utility modules provide useful functionality such as search, syndication, and statistics.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*', 1),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\n<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\n<p> </p>\n<ul>\n<li><a href="index.php?Itemid=285">Home Page</a></li>\n<li><a href="index.php?Itemid=316">Typography</a></li>\n</ul>\n<p> </p>\n<p> </p>\n<p><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right; margin: 5px,80px,5px,25px;" /></p>\n<p>Beez 2.0 is a versatile, easy to customize template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\n<ul>\n<li><a href="index.php?Itemid=424">Home Page</a></li>\n<li><a href="index.php?Itemid=423">Typography</a></li>\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez5', 'com_content', 'Beez5', 'beez5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\n<p> </p>\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\n<ul>\n<li><a href="index.php?Itemid=458">Home Page</a></li>\n<li><a href="index.php?Itemid=457">Typography</a></li>\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animals', 'animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Scenery', 'scenery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB', 1),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', 'Recipes', 'recipes', '', '<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. The will not be able to edit other users'' pages.</em><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*', 1),
(77, 169, 1, 133, 146, 1, 'template-details', 'com_content', 'Template Details', 'template-details', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:52:47', 0, '0000-00-00 00:00:00', 0, '*', 1),
(78, 170, 77, 134, 135, 2, 'template-details/design-a-features', 'com_content', 'Design & Features', 'design-a-features', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:14', 0, '0000-00-00 00:00:00', 0, '*', 1),
(79, 171, 77, 136, 137, 2, 'template-details/advanced-stuff', 'com_content', 'Advanced Stuff', 'advanced-stuff', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:27', 0, '0000-00-00 00:00:00', 0, '*', 1),
(80, 172, 77, 138, 139, 2, 'template-details/general', 'com_content', 'General', 'general', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:39', 0, '0000-00-00 00:00:00', 0, '*', 1),
(81, 173, 77, 140, 141, 2, 'template-details/layout-variations', 'com_content', 'Layout Variations', 'layout-variations', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(82, 174, 77, 142, 143, 2, 'template-details/testimonials', 'com_content', 'Testimonials', 'testimonials', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(83, 175, 77, 144, 145, 2, 'template-details/menu-styles', 'com_content', 'Menu Styles', 'menu-styles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:54:08', 0, '0000-00-00 00:00:00', 0, '*', 1),
(84, 213, 1, 147, 148, 1, 'promo', 'com_banners', 'Promo', 'promo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 08:36:56', 0, '0000-00-00 00:00:00', 0, '*', 1),
(85, 215, 1, 149, 150, 1, 'contacts', 'com_contact', 'Contacts', 'contacts', '', 'Contact Details for this Web site', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-13 07:17:36', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_contact_details`
--

CREATE TABLE IF NOT EXISTS `lrfic_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `lrfic_contact_details`
--

INSERT INTO `lrfic_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-08 17:39:00', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', '', '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(5, 'Bananas', 'bananas', 'Scientific Name: Musa', 'Image Credit: Enzik\nRights: Creative Commons Share Alike Unported 3.0\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\n<p> </p>', 'images/sampledata/fruitshop/bananas_2.jpg', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 39, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(6, 'Apples', 'apples', 'Scientific Name: Malus domestica', 'Image Credit: Fievet\nRights: Public Domain\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 38, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(7, 'Tamarind', 'tamarind', 'Scientific Name: Tamarindus indica', 'Image Credit: Franz Eugen Köhler, Köhler''s Medizinal-Pflanzen \nRights: Public Domain\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\n<p> </p>', 'images/sampledata/fruitshop/tamarind.jpg', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 57, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(9, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'images/powered_by.png', 'email@email.com', 0, -2, 0, '0000-00-00 00:00:00', 3, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 85, 1, '', '', '', '', '', '*', '2011-04-13 07:20:25', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_content`
--

CREATE TABLE IF NOT EXISTS `lrfic_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `lrfic_content`
--

INSERT INTO `lrfic_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrator Components', 'administrator-components', '<p>All components also are used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\n<ul>\n<li>Media Manager</li>\n<li>Extensions Manager</li>\n<li>Menu Manager</li>\n<li>Global Configuration</li>\n<li>Banners</li>\n<li>Redirect</li>\n</ul>\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<p> </p>\n<h3>Media Manager</h3>\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Extensions Manager</h3>\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned for Joomla! 1.6, although the core install and uninstall functionality remains the same as in Joomla 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Menu Manager</h3>\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Global Configuration</h3>\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines an indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Banners</h3>\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\n<h3>\n<hr title="Redirect" class="system-pagebreak" />\n</h3>\n<h3><br />Redirect</h3>\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 12:57:27', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 7, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'Archive Module', 'archive-module', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\n<p>{loadposition archiveload}</p>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:21:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 5, 'modules, content', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Article Categories Module', 'article-categories-module', '<p>This module displays a list of categories from one parent category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\n<p>{loadposition articlescategoriesload}</p>\n<p> </p>', '', 1, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:24:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 6, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Articles Category Module', 'articles-category-module', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category">Help</a></p>\n<p>{loadposition articlescategoryload}</p>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:57:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 4, 7, '', 'articles,content', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Authentication', 'authentication', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p><p>Default on:</p><ul><li>Joomla</li></ul><p>Default off:</p><ul><li>Gmail</li><li>LDAP</li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 3, '', '', 1, 0, '', 0, '*', ''),
(6, 102, 'Australian Parks ', 'australian-parks', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\n<p>Welcome!</p>\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site,"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\n<p><em> Read more about the site in the About Parks module.</em></p>\n<p> </p>', '', 1, 26, '2011-01-01 00:00:01', 42, 'Parks webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Banner Module', 'banner-module', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners">Help</a>.</p>\n<p>{loadposition bannersload}</p>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:41:15', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 6, '', '', 1, 2, '', 0, '*', ''),
(8, 104, 'Beginners', 'beginners', '<p>If this is your first Joomla site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla!.</p>\n', '\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works.(When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the beginners'' areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the Joomla Site Showcase to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\n<p>The basic Joomla! installation will let you get a great site up and running, but when you are ready for more features the power of Joomla! is in the creative ways that developers have extended it to do all kinds of things. Visit the Joomla! Extensions Directory to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional on the Joomla! Resources Directory.</p>\n<p>Want to learn more? Consider attending a Joomla! Day or other event or joining a local Joomla! Users Group. Can''t find one near you? Start one yourself.</p>', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-04-01 07:22:14', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 4, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 105, 'Contacts', 'contact', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:15:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'Content', 'content', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created an edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, '', '2011-01-10 04:28:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 1, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '<p><img src="images/sampledata/parks/landscape/250px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Alan J.W.C.</p><p class="caption">License: GNU Free Documentation License v . 1.2 or later</p>', 1, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 7, '', 0, '*', ''),
(12, 110, 'Custom HTML Module', 'custom-html-module', '<p>This Module allows you to create your own HTML Module using a WYSIWYG editor. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\n<p>{loadposition customload}</p>', '', 1, 66, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:46:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 1, '', '', 1, 2, '', 0, '*', ''),
(13, 111, 'Directions', 'directions', '<p>Here''s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>', '', 1, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(14, 112, 'Editors', 'editors', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p><p>Default on:</p><ul><li>CodeMirror Help</li><li>TinyMCE Help</li><li>No Editor Help</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 5, '', '', 1, 0, '', 0, '*', ''),
(15, 113, 'Editors-xtd', 'editors-xtd', '<p>These plugins are behind the buttons found beneath your editor. They only run when an editor plugin runs.</p><p>Default on:</p><ul><li>Editor Button: Image</li><li>Editor Button: Readmore</li><li>Editor Button: Page Break</li><li>Editor Button: Article</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 6, '', '', 1, 0, '', 0, '*', ''),
(16, 114, 'Feed Display', 'feed-display', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p><p>{loadposition feeddisplayload}</p>', '', 1, 66, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(17, 115, 'First Blog Post', 'first-blog-post', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 1, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, '', '', 1, 5, '', 0, '*', ''),
(18, 116, 'Second Blog Post', 'second-blog-post', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 1, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, '', '', 1, 5, '', 0, '*', ''),
(19, 117, 'Footer Module', 'footer-module', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\n<p>{loadposition footerload}</p>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:43:33', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 3, '', '', 1, 2, '', 0, '*', ''),
(20, 118, 'Fruit Shop', 'fruit-shop', '<h2>Welcome to the Fruit Shop</h2><p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p><p ><em>This mini site will show you how you might want to set up a site for a business, in this case one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you would might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href="http://extensions.joomla.org"><em> Joomla! Extensions Directory</em></a>.</p><p><em>To understand this site you will probably want to make one user with groups set to customer and one with group set to grower. By logging in with different privileges  you can see how access control works.</em></p>', '', 1, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(21, 119, 'Getting Help', 'getting-help', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\n<ul>\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\n<li><a href="http://docs.joomla.org">Documentation</a></li>\n<li><a href="http://resources.joomla.org">Professionals</a></li>\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\n</ul>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 15:32:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 10, 8, '', '', 1, 17, '', 0, '*', ''),
(22, 120, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see.  The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p><p>Log in to the administrator using the username and password created during the installation of Joomla!.</p><h3>Logging in</h3><p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name an password that were created as part of the installation process. Once logged in you will be able to create and edit articles.</p><p>In managing your site, you will be able to create content that only logged in users are able to see.</p><h3>Creating an article</h3><p>Once you are logged in, a new menu will be visible.  To create a new article, click on the "submit article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title an put something in the content area. To make it easy to find, set the state to published an put it in the Joomla! category.</p><div>You can edit an existing article by  clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 9, '', '', 1, 0, '', 0, '*', ''),
(23, 121, 'Happy Orange Orchard', 'happy-orange-orchard', '<p>At our orchard we grow the world''s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>', '', 1, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(24, 122, 'Joomla!', 'joomla', '<p>Congratulations! You have a Joomla! site! Joomla! makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\n<p>Joomla! is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-04-01 07:22:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 123, 'Koala', 'koala', '<p><img src="images/sampledata/parks/animals/180px_koala_ag1.jpg" border="0" alt="Koala  Thumbnail" width="180" height="123" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/800px_koala_ag1.jpg" border="0" alt="Koala Climbing Tree" width="500" height="341" style="vertical-align: middle; border: 0;" /></p><p> </p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Koala-ag1.jpg</p><p class="caption">Author: Arnaud Gaillard</p><p><span class="caption">License: Creative Commons Share Alike Attribution Generic 1.0</span></p>', 1, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 5, '', 0, '*', ''),
(26, 124, 'Language Switcher', 'language-switcher', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\n<p>This module displays a list of available Content Languages for switching between them.</p>\n<p>When switching languages, it redirects to the Home page defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labellled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:57:35', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 3, '', '', 1, 3, '', 0, '*', ''),
(27, 125, 'Latest Articles Module', 'latest-articles-module', '<p>This Module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\n<p>{loadposition articleslatestload}</p>', '', 1, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:18:38', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 1, 'modules, content', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 126, 'Login Module', 'login-module', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login" title="Login">Help</a></p>\n<p>{loadposition loginload}</p>', '', 1, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:36:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 2, '', '', 1, 3, '', 0, '*', ''),
(29, 127, 'Menu Module', 'menu-module', '<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu">Help</a></p>\n<p>{loadposition menuload}</p>', '', 1, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:07:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 1, '', '', 1, 4, '', 0, '*', ''),
(30, 128, 'Most Read Content', 'most-read-content', '<p>This Module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\n<p>{loadposition articlespopularload}</p>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:13:53', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 3, 2, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'News Flash', 'news-flash', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\n<p>{loadposition newsflashload}</p>', '', 1, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:16:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 3, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Parameters', 'parameters', '<p>As you make your Joomla! site using the extension you will control the details of the display using <em>parameter</em><strong>s</strong>. Parameters control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p><p>Default parameters for each components are changed using the Options button on the component toolbar.</p><p>Parameters can also be set on an individual item, such as an article or contact and in menu links.</p><p>If you are happy with how your site looks, it is fine to leave all of the parameters set to the defaults that were created when your site was installed. As you become more experienced with Joomla! you will use parameters more.</p><p> </p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 10, '', '', 1, 1, '', 0, '*', ''),
(33, 131, 'Phyllopteryx', 'phyllopteryx', '<p><img src="images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p> </p>', '<p><img src="images/sampledata/parks/animals/800px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p> </p><p>Source: http://en.wikipedia.org/wiki/File:Phyllopteryx_taeniolatus1.jpg</p><p>Author: Richard Ling</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 3, '', '', 1, 2, '', 0, '*', '');
INSERT INTO `lrfic_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(34, 132, 'Pinnacles', 'pinnacles', '<p><img src="images/sampledata/parks/landscape/120px_pinnacles_western_australia.jpg" border="0" alt="Kings Canyon" width="120" height="90" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_pinnacles_western_australia.jpg" border="0" alt="King''s Canyon" width="500" height="374" style="vertical-align: middle; border: 0;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Pinnacles_Western_Australia.jpg</p><p class="caption">Author: <a class="new" href="http://commons.wikimedia.org/w/index.php?title=User:Markdoe&action=edit&redlink=1" title="User:Markdoe (page does not exist)"></a>Martin Gloss</p><p class="caption">License: GNU Free Documentation license v 1.2 or later.</p>', 1, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 4, '', '', 1, 4, '', 0, '*', ''),
(35, 133, 'Professionals', 'professionals', '<p>Joomla! 1.6 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\n', '\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above and ending legacy support for Joomla 1.0 extensions makes Joomla! lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\n<p>Access control lists are now incorporated using a new system developed for Joomla!. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\n<p>Learn about:</p>\n<ul>\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">Changes since 1.5</a></li>\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\n<li><a href="http://docs.joomla.org/API16:Framework">Joomla! 1.6 AP</a>I</li>\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\n<li><a href="http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6">Xmlrpc</a></li>\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\n</ul>', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-04-01 07:22:26', 42, 0, '0000-00-00 00:00:00', '2011-01-09 16:41:13', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 13, 5, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 134, 'Random Image Module', 'random-image-module', '<p>This Module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\n<p>{loadposition randomimageload}</p>', '', 1, 66, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:39:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 4, '', '', 1, 2, '', 0, '*', ''),
(37, 135, 'Related Items Module', 'related-items-module', '<p>This Module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\n<p>{loadposition relateditemsload}</p>', '', 1, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:23:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 4, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sample Sites', 'sample-sites', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with builidng your own site.</p><p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows you you an quickly and easily build a personal site with just the building blocks that are part of Joomla!. It includes a personal blog, weblinks, and a very simple image gallery.</p><p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p><p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla! users start off by modifying the <a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 11, '', '', 1, 0, '', 0, '*', ''),
(39, 137, 'Search', 'search-component', '<p>The search component proviedes basic search functionality for the information contained in your core components. Many third part extensions also can be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:19:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 138, 'Search Module', 'search-module', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search" title="Search">Help</a></p>\n<p>{loadposition searchload}</p>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:55:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 4, '', '', 1, 2, '', 0, '*', ''),
(41, 139, 'Search ', 'search-plugin', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p><p>Default On:</p><ul><li>Content Help</li><li>Contacts Help</li><li>Weblinks Help</li><li>News Feeds Help</li><li>Categories Help</li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(42, 140, 'Site Map', 'site-map', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', 1, 14, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '<p><img src="images/sampledata/parks/animals/220px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/789px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle;" /></p><p> </p><p>Source: http://en.wikipedia.org/wiki/File:SpottedQuoll_2005_SeanMcClean.jpg</p><p>Author: Sean McClean</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 4, '', '', 1, 3, '', 0, '*', ''),
(44, 142, 'Statistics Module', 'statistics', '<p>The Statistics Module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p><p>{loadposition statisticsload}</p>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 5, '', '', 1, 0, '', 0, '*', ''),
(45, 143, 'Syndicate Module', 'syndicate-module', '<p>The syndicate module allows you to display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p><p>{loadposition syndicateload}</p>', '', 1, 67, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 6, '', '', 1, 0, '', 0, '*', ''),
(46, 144, 'System', 'system', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled.  New in 1.6 is the redirect plugin that with the redirect component assist you in managing changes in URLs.</p><p>Default on:</p><ul><li>Remember me Help</li><li>SEF Help</li><li>Debug Help</li></ul><p>Default off:</p><ul><li>Cache Help</li><li>Log Help</li><li>Redirect Help</li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 5, '', 0, '*', ''),
(47, 145, 'The Joomla! Community', 'the-joomla-community', '<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p><p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 4, '', '', 1, 12, '', 0, '*', ''),
(48, 146, 'The Joomla! Project', 'the-joomla-project', '<p>The Joomla! Project consists of all of the people who make and support the Joomla! Web Platform and Content Management System.</p><p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p><p>The core values are:</p><ul><li>Freedom</li><li>Equality</li><li>Trust</li><li>Community</li><li>Collaboration</li><li>Usability</li></ul><p>In our vision, we see:</p><ul><li>People publishing and collaborating in their communities and around the world</li><li>Software that is free, secure, and high-quality</li><li>A community that is enjoyable and rewarding to participate in</li><li>People around the world using their preferred languages</li><li>A project that acts autonomously</li><li>A project that is socially responsible</li><li>A project dedicated to maintaining the trust of its users</li></ul><p>There are millions of users around the world and thousands of people who contribute to the Joomla! Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p><p>Joomla! is a free and open source project, which uses the GNU General Public License version 2 or later.</p>', '', 1, 19, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 10, '', 0, '*', ''),
(49, 147, 'Typography', 'typography', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', '', 1, 23, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(50, 148, 'Upgraders', 'upgraders', '<p>If you are an experienced Joomla! 1.5 user, 1.6 will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories.</p>\n', '\n<p>The new user manager which will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. In 1.6 sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\n<p>All layouts have been redesigned to improve accessibility and flexibility. If you would like to keep the 1.5 layouts, you can find them in the html folder of the MilkyWay template. Simply copy the layouts you want to the html folder of your template.</p>\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\n<p> </p>', 1, 19, '2011-01-01 00:00:01', 42, '', '2011-04-01 07:22:36', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 5, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(51, 149, 'User', 'user-plugins', '<p>Default on:</p><ul><li>Joomla Help</li></ul><p>Default off:</p><p>Two new plugins are available in 1.6 but are disabled by default.</p><ul><li>Contact Creator Help<br />Creates a new linked contact record for each new user created. </li><li>Profile Help<br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create. </li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 4, '', '', 1, 0, '', 0, '*', ''),
(52, 150, 'Users', 'users-component', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager">Help</a></p>\n<p>Please note that some of the user views will not display if you are not logged in to the site.</p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:52:55', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 5, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 151, 'Using Joomla!', 'using-joomla', '<p>With Joomla! You can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p><p>This section of the sample data provides you with a brief introduction to Joomla! concepts and reference material to help you understand how Joomla! works.</p><p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', '', 1, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 7, '', '', 1, 8, '', 0, '*', ''),
(54, 152, 'Weblinks', 'weblinks', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:20:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 153, 'Weblinks Module', 'weblinks-module', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\n<p>{loadposition weblinksload}</p>', '', 1, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:45:52', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 5, '', '', 1, 2, '', 0, '*', ''),
(56, 154, 'Who''s Online', 'whos-online', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\n<p>{loadposition whosonlineload}</p>', '', 1, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:34:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 1, '', '', 1, 6, '', 0, '*', ''),
(57, 155, 'Wobbegone', 'wobbegone', '<p><img src="images/sampledata/parks/animals/180px_wobbegong.jpg" border="0" alt="Wobbegone" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/800px_wobbegong.jpg" border="0" style="vertical-align: middle; border: 0;" /></p><p>Source: http://en.wikipedia.org/wiki/File:Wobbegong.jpg</p><p>Author: Richard Ling</p><p>Rights: GNU Free Documentation License v 1.2 or later</p>', 1, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 0, '', 0, '*', ''),
(58, 156, 'Wonderful Watermelon', 'wonderful-watermelon', '<p>Watermelon is a wonderful and healthy treat. We grow the world''s sweetest watermelon. We have the largest watermelon patch in our country.</p>', '', 1, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 1, '', '', 1, 3, '', 0, '*', ''),
(59, 157, 'Wrapper Module', 'wrapper-module', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\n<p>{loadposition wrapperload}</p>', '', 1, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:44:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 1, '', '', 1, 3, '', 0, '*', ''),
(60, 158, 'News Feeds', 'news-feeds', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you an incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds">Help</a></p>', '', 1, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:17:08', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 159, 'Breadcrumbs Module', 'breadcrumbs-module', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\n<p>{loadposition breadcrumbsload}</p>', '', 1, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:10:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 2, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 160, 'Content', 'content-plugins', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p><p>Default on:</p><ul><li>Email Cloaking Help</li><li>Load Module Help</li><li>Page Break Help</li><li>Page Navigation Help</li><li>Rating Help</li></ul><p>Default off:</p><ul><li>Code Highlighting (Geshi) Help</li></ul>', '', 1, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 7, '', '', 1, 1, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '<p><img src="images/sampledata/parks/landscape/120px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" /></p>', '<p><img src="images/sampledata/parks/landscape/727px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" style="vertical-align: middle;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Adam J.W.C.</p><p class="caption">License: GNU Free Documentation License</p>', 1, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 2, '', '', 1, 0, '', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '<p><img src="images/sampledata/parks/landscape/180px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" style="border: 0;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" height="375" style="vertical-align: middle; border: 0;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Ormiston_Pound.JPG</p><p class="caption">Author:</p><p class="caption">License: GNU Free Public Documentation License</p>', 1, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 3, '', '', 1, 2, '', 0, '*', ''),
(66, 165, 'Latest Users Module', 'latest-users-module', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users">Help</a></p>\n<p>{loadposition userslatestload}</p>', '', 1, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:31:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 3, '', '', 1, 4, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\n<ul>\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\n<li>Extended integration of external applications through Web services</li>\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\n</ul>', '', 2, 9, '2011-01-01 00:00:01', 42, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 176, 'Color Variations', 'color-variations', '<style>\r\n#hidden-content {\r\n    display: none;\r\n}\r\n.placeholder-text {\r\n    color: #fff;\r\n    width: 500px;\r\n    max-width: 100%;\r\n    text-align: center;\r\n    padding: 40px 20px;\r\n    margin: 20px auto;\r\n    background: #307451\\9;\r\n    background:radial-gradient(#22a563,#307451);\r\n}\r\n.placeholder-text p {\r\n    font-size: 1.3em;\r\n    max-width: 400px;\r\n    margin: 0 auto 20px;\r\n     text-shadow: 1px 1px 0 rgba(0,0,0,0.35);\r\n}\r\n</style>\r\n\r\n<script type="text/javascript">\r\n/* Insert JSN ImageShow place-holder content when the component isn''t installed */\r\n\r\nfunction addPlaceHolder(containerClass, placeholderID, classInsertedElement)\r\n{\r\n	var pattern = /\\{imageshow (.*)\\/\\}/i;\r\n	var elePlaceholder = document.id(placeholderID);\r\n\r\n	var contentElePlaceholder = elePlaceholder.get(''html''); \r\n\r\n        $$(''.'' + containerClass).each(function(item, index){\r\n\r\n        var content = item.get(''html'');\r\n	\r\n	if (pattern.test(content)) \r\n	{\r\n		item.set(''html'', '''');\r\n		var insertedEle = new Element("div", {class: classInsertedElement, html: contentElePlaceholder});\r\n                item.adopt(insertedEle); \r\n	}\r\n\r\n        });\r\n\r\n}\r\n\r\nwindow.addEvent(''domready'', function() {\r\naddPlaceHolder(''is-demo-theme'', ''hidden-content'', ''jsn-is-placeholder-content'');\r\n});\r\n</script>\r\n\r\n<div id="hidden-content">\r\n<div class="placeholder-text">\r\n<p>Here should be the presentation of JSN ImageShow,<br />but it is not installed on your website.</p>\r\n<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" class="link-button button-light">Free Download Now</a>\r\n</div>\r\n</div>\r\n\r\n<p>JSN Dome provides<strong> 6 major color variations</strong> for your taste. Each color variation covers not only the main background, but also color of drop-down menu, links, table''s header and some others.</p>\r\n<h3>Color variations</h3>\r\n<div class="content-center">\r\n<p><strong>Click on any screenshot to LIVE demo of that color variation. (<a href="index.php?option=com_content&view=article&id=68&Itemid=623" class="link-action">reset to default</a>)</strong></p>\r\n<div style="max-width: 600px; margin: 0 auto;"><div class="is-demo-theme"> {imageshow sl=1 sc=1 h=300 /}</div></div>\r\n<p>Interactive images presentation by <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow extension</a></p>\r\n</div>\r\n<hr class="line-dots" />\r\n<h3>Color configuration</h3>\r\n<p>Each template color can be configured by 3 different ways:</p>\r\n<div class="grid-layout">\r\n<div>\r\n<h4>By  template parameter</h4>\r\n<p><img src="images/content/template-details/design-features/color-variations/color-config-tp.png" alt="Configure color by Template Parameter"  width="225" height="125"  /></p>\r\n<p>Template color can be set by template parameter <strong>Template Color</strong> in administration panel.</p>\r\n</div>\r\n<div>\r\n<h4>By &quot;Page Class Suffix&quot;</h4>\r\n<p><img src="images/content/template-details/design-features/color-variations/color-config-pcs.png" alt="Configure color by Page Class Suffix" width="225" height="125" /></p>\r\n<p>Template color can be defined in parameter <strong>Page Class Suffix</strong> of menu items as <strong>custom-color-xxx</strong><strong>.</strong></p>\r\n</div>\r\n<div>\r\n<h4>By  Site tools panel</h4>\r\n<p><img src="images/content/template-details/design-features/color-variations/color-config-st.png" alt="Configure color by Site Tools Pannel" width="225" height="125" /></p>\r\n<p>Template color can be selected by website visitor from <strong>Color Selector</strong> in <strong>Site tools</strong>.</p>\r\n</div>\r\n</div>', '', 1, 78, '2011-04-01 02:55:34', 42, '', '2013-11-25 04:43:29', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:55:34', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 6, '', '', 1, 140, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 177, 'Font Styles', 'font-styles', '<h3>Font Face</h3>\r\n<p>JSN Dome provides <strong>3 font face options </strong>for major website types. Each font face option is actually a combination of 2 font types: one for content text, another for heading text and main navigation text.</p>\r\n<h4>Special Font (powered by Google Font Directory)</h4>\r\n<p>To make your website content look even better, we included feature to load special fonts directly from Google Font Directory. We have carefully selected the most approprfiate special font for each text styles. Since this service is provided by Google, it''s very reliable and fast.</p>\r\n<div class="content-center">\r\n<p><strong>Click on any screenshot to see LIVE demo of that font face. (<a href="index.php?option=com_content&view=article&id=69&Itemid=628" class="link-action">reset to default</a>)</strong></p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=69&Itemid=628"><img src="images/content/template-details/design-features/font-styles/font-face-business-special.png" border="0" alt="Font Face Business Special" /></a></p>\r\n<p><strong>""Business / Corporation" style with special font"</strong></p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=69&Itemid=629"><img src="images/content/template-details/design-features/font-styles/font-face-personal-special.png" border="0" alt="Font Face Personal Special" /></a></p>\r\n<p><strong>"Personal / Blog" style with special font </strong></p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=69&Itemid=630"><img src="images/content/template-details/design-features/font-styles/font-face-news-special.png" border="0" alt="Font Face News Special" /></a></p>\r\n<p><strong>"Online News / Magazine" style with special font </strong></p>\r\n</div>\r\n<hr class="line-dots" />\r\n<h3>Font Size</h3>\r\n<p>JSN Dome provides <strong>3 text size options</strong> for major website audience.</p>\r\n<div class="content-center">\r\n<p><strong>Click on any screenshot to see LIVE demo of  that font size. (<a href="index.php?option=com_content&amp;view=article&amp;id=69&amp;Itemid=471&amp;jsn_settextsize=medium" class="link-action">reset to default</a>)</strong></p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=69&Itemid=471&jsn_settextsize=small"><img src="images/content/template-details/design-features/font-styles/font-size-small.png" border="0" alt="Font Size Small" /></a></p>\r\n<p><strong>Small font size</strong></p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=69&Itemid=471&jsn_settextsize=medium"><img src="images/content/template-details/design-features/font-styles/font-size-medium.png" border="0" alt="Font Size Medium" /></a></p>\r\n<p><strong>Medium font size</strong></p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=69&Itemid=471&jsn_settextsize=big"><img src="images/content/template-details/design-features/font-styles/font-size-large.png" border="0" alt="Font Size Large" /></a></p>\r\n<p><strong>Big font size</strong></p>\r\n</div>', '', 1, 78, '2011-04-01 02:55:57', 42, '', '2013-03-14 09:29:06', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:55:57', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 5, '', '', 1, 98, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `lrfic_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(70, 178, 'JSN Dome Design ', 'jsn-dome-design', '<p>JSN Dome has incredibly beautiful clean design with ultra flexible layout built-up from 37+ module positions. The combination of 6 colors variation, 5 menu styles and 6 module styles results in a really remarkable website. In addition, super rich typography makes your content look stunning and clear for all users.</p>\n<div class="grid-layout">\n<div>\n<h3>Layout</h3>\n<p><strong>37+ module styles </strong>allowing you to have multiple layout configurations. All module positions are collapsible and can arrange modules in horizontal or vertical layout.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=71&amp;Itemid=466" class="link-button button-light"><span class="link-icon jsn-icon-info">Read more about layout</span></a></p>\n</div>\n<div>\n<h3>Color Variations</h3>\n<p><strong>6 major color variations</strong> for your taste. Each color variation covers not only the main background, but also color of drop-down menu, links, table''s header and more.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=68&amp;Itemid=467" class="link-button button-light"><span class="link-icon jsn-icon-info">Read more about color variations</span></a></p>\n</div>\n</div>\n<div class="grid-layout">\n<div>\n<h3>Menu Styles</h3>\n<p><strong>5 menu styles </strong>to display your website navigation on multiple positions. And...you don''t need to install any external menu extension, cool huh.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=72&amp;Itemid=468" class="link-button button-light"><span class="link-icon jsn-icon-info">Read more about menu styles</span></a></p>\n</div>\n<div>\n<h3>Typography</h3>\n<p><strong>Super rich typography</strong> ready for the most comprehensive content presentation. Headings, text, links, tables, everything was designed with care.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=74&amp;Itemid=469" class="link-button button-light"><span class="link-icon jsn-icon-info">Read more about typography</span></a></p>\n</div>\n</div>\n<div class="grid-layout">\n<div>\n<h3>Module Styles</h3>\n<p><strong>6 box designs</strong> for module background styling and <strong>20 icon designs </strong>for module title styling. Combination usage gives you <strong>120 module styles in total</strong>. Pretty amazing!</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=73&amp;Itemid=470" class="link-button button-light"><span class="link-icon jsn-icon-info">Read more about module styles</span></a></p>\n</div>\n<div>\n<h3>Font Styles</h3>\n<p><strong>3 font face</strong> options for major website types and <strong>3 font size</strong> options for major audience. Each font face option is a combination of 2 font types, which looks stunning..</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=69&amp;Itemid=471" class="link-button button-light"><span class="link-icon jsn-icon-info">Read more about font styles</span></a></p>\n</div>\n</div>', '', 1, 78, '2011-04-01 02:56:18', 42, '', '2012-11-26 09:50:48', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:56:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 4, '', '', 1, 93, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 179, 'Layout', 'layout', '<h3>Module Positions</h3>\n<p>JSN Dome provides <strong>36+ module positions</strong> allowing you to have multiple layout configurations. All module positions are collapsible which means if you don''t publish any modules in some positions it will not take any blank spaces leaving those for neighbor modules. Some positions are designed to arrange modules inside in horizontal layout which makes it very easy to reorder modules inside it.</p>\n<ul>\n	<li><a class="link-action" href="images/content/template-details/design-features/layout/layout-full.png" target="_blank">See all module positions outline</a></li>\n</ul>\n<hr class="line-dots" />\n<h3>Layout Configuration</h3>\n<p class="content-center"><img src="images/content/template-details/design-features/layout/params-layout.png" border="0" alt="Layout configuration by template parameters" width="600" height="390" /></p>\n<p>JSN Dome allows you to change the width size for several critical layout elements. All settings can be done via template parameters in section <strong>LAYOUT SETTINGS</strong>.</p>\n<hr class="line-dots" />\n<h3>Layout Variations</h3>\n<p>JSN Dome layout system is very flexible and capable. Module positions are designed in smart way to cover all possible spot where you might want to put content. Moreover, you can specify width of both overall layout and specific columns conveniently via template parameters. Bellow is live presentation of some most popular layout variations:</p>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=90&amp;Itemid=472" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | Right</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=92&amp;Itemid=477" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" style="vertical-align: middle;" class="margin-right" /><br />\n		Main content only</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=89&amp;Itemid=474" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | InnerRight</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=88&amp;Itemid=476" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		InnerLeft | Center | Right</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=91&amp;Itemid=473" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | InnerLeft | Center</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=87&amp;Itemid=475" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Center | InnerRight | Right</a></div>\n</div>', '', 1, 78, '2011-04-01 02:56:37', 42, '', '2012-07-30 11:28:16', 43, 0, '0000-00-00 00:00:00', '2011-04-01 02:56:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 3, '', '', 1, 121, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 180, 'Menu Styles', 'menu-styles', '<p>JSN Dome provides <strong>5 menu styles </strong>to present your website navigation. The default Joomla! built-in menu module <strong>(mod_mainmenu)</strong> is utilized, so you don''t need to install any external menu modules.</p>\n<h3>Top Menu</h3>\n<p class="content-center"><img src="images/content/template-details/design-features/menu-styles/menu-topmenu-icons.png" border="0" alt="Top Menu" width="600" height="175" /></p>\n<p>Top Menu  allows you to arrange menu items in horizontal line and assign icons to them. All icons are configured directly in menu item settings page which is very convenient.</p>\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=97&amp;Itemid=478" class="link-button button-light"><span class="link-icon jsn-icon-display">See live demo of Top Menu</span></a></p>\n<hr class="line-dots" />\n<h3>Main Menu</h3>\n<p class="content-center"><img src="images/content/template-details/design-features/menu-styles/menu-mainmenu-submenus.png" border="0" alt="Main Menu" width="600" height="300" /></p>\n<p>Main Menu is very powerful menu built with clean accessible XHTML code structure and effective drop-down submenu panels.</p>\n<h4>Main Menu with icons and rich text</h4>\n<p class="content-center"><img src="images/content/template-details/design-features/menu-styles/menu-mainmenu-richicons.png" border="0" alt="Main Menu Rich Text combined with Icons" width="600" height="175" /></p>\n<p>You can add icon and descriptive text to each menu item to make them much clearer and more  appealing. Both descriptive text and icons are configured directly in menu item settings page, which is very convenient.</p>\n<p class="content-center"><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=93&amp;Itemid=479"><span class="link-icon jsn-icon-display">See live demo of Main Menu</span></a></p>\n<hr class="line-dots" />\n<h3>Side Menu</h3>\n<p class="content-center"><img src="images/content/template-details/design-features/menu-styles/menu-sidemenu.png" border="0" alt="Side Menu" width="600" height="300" /></p>\n<p>Side Menu is very unique vertical menu with slide-out panels. This menu is extremely efficient when you have complex navigation with a lot of menu items.</p>\n<p class="content-center"><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=95&amp;Itemid=480"><span class="link-icon jsn-icon-display">See live demo of Side Menu</span></a></p>\n<hr class="line-dots" />\n<h3>Tree Menu</h3>\n<p class="content-center"><img src="images/content/template-details/design-features/menu-styles/menu-treemenu.png" alt="Tree Menu" border="0" width="600" height="300" /></p>\n<p>Tree Menu represents menu items in clear tree-like hierarchy, which is very appropriate for indexing menu. By default all submenu items are collapsed until you select the parent menu item.</p>\n<p class="content-center"><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=98&amp;Itemid=482"><span class="link-icon jsn-icon-display">See live demo of Tree Menu</span></a></p>\n<hr class="line-dots" />\n<h3>Div Menu</h3>\n<p class="content-center"><img src="images/content/template-details/design-features/menu-styles/menu-divmenu.png" border="0" alt="Div Menu" width="600" height="175" /></p>\n<p>Div Menu is simple yet nice menu bar with items separated by slightly visible dashes. This menu is very suitable for footer navigation presentation.</p>', '', 1, 78, '2011-04-01 02:56:55', 42, '', '2011-07-11 01:38:03', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:56:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 8, 2, '', '', 1, 63, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 181, 'Module Styles', 'module-styles', '<p>JSN Dome provides <strong>6 box designs</strong> for module background styling, which can be combined with <strong>20 predefined icons</strong> for module title styling. Take a look around to see how module styles are applied.</p>\n<p>Module styles are configured by module''s parameter <strong>Module Class Suffix</strong> with very simple syntax. To set up icons, you need to add string <strong>icon-xxx</strong> to module class suffix, where <strong>xxx</strong> is the icon name.</p>\n<ul>\n<li><a href="images/content/template-details/design-features/uniicons.png" target="_blank" class="link-action">See preview of all icons</a></li></ul>', '', 1, 78, '2011-04-01 02:57:11', 42, '', '2012-07-27 07:38:31', 43, 0, '0000-00-00 00:00:00', '2011-04-01 02:57:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 81, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 182, 'Typography', 'typography', '<p>JSN Dome was developed with <strong>extreme focus on typography</strong> and we believe it provides the most comprehensive content presentation capability. Headings, text, links, tables, images, everything was designed with high level of refinement. Let''s take a look.</p>\n<h3>Headings</h3>\n<div class="grid-layout">\n  <div>\n    <h1>This is an H1 Header</h1>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h2>This is an H2 Header</h2>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h3>This is an H3 Header</h3>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h4>This is an H4 Header</h4>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>This is an H5 Header</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h6>This is an H6 Header</h6>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<hr class="line-dots" />\n<h3>Text columns</h3>\n<p>You can arrange  content in multiple columns by using very simple html code. JSN Dome will detect the amount of columns you defined and automatically make arrangement.</p>\n<p> <span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;div class=&rdquo;grid-layout&rdquo;&gt;&lt;div&gt;</strong>Text in column 1<strong>&lt;/div&gt;&lt;div&gt;</strong>Text in column 2<strong>&lt;/div&gt;&lt;/div&gt;</strong></p>\n<h4>Content arranged in 2 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<h4>Content arranged in 3 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<h4>Content arranged in 4 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<h4>Content arranged in 5 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n</div>\n<hr class="line-dots" />\n<h3>Text styles</h3>\n<h4>Preformatted text (&lt;pre&gt; tag)</h4>\n<pre>\n\ndiv.grid-layout2 div.grid-col {\n float: left;\n width: 49.95%;\n}\ndiv.grid-layout3 div.grid-col {\n float: left;\n width: 33.3%;\n}\n\n</pre>\n\n<h4>Quote text (<strong>&lt;blockquote&gt;</strong> tag)</h4>\n<blockquote>\n  <p>You can us this style to quote somebody''s speech, idea or a fragment from some book, articles, etc. Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus  laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem.  Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;blockquote&gt;</strong>This is your quote<strong>&lt;/blockquote&gt;</strong></p>\n</blockquote>\n\n<h4>Drop Cap</h4>\n<div class="text-dropcap">\n<p>You can use this special drop cap symbol style for magazine / newspaper text paragraph. Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-dropcap&quot;&gt;</strong>This is the text with dropcap symbol.<strong>&lt;/p&gt;</strong></p>\n</div>\n\n<h4>Highlighted Text</h4>\n<p>You can use this style to <span class="text-highlight">highlight important words and / or keyword expression</span> in search result page. Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus  laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem.  Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;span class=&quot;text-highlight&quot;&gt;</strong>This is the text to be highlighted.<strong>&lt;/span&gt;</strong></p>\n\n<h4>Highlighted Text on mouse over</h4>\n<div class="grid-layout">\n<div><div class="text-box-highlight">\n<p>You can use this style to highlight important text block on mouse over. Just roll mouse over this text block to see how it''s highlighted.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;div class=&quot;text-box-highlight&quot;&gt;</strong>This is the text to be highlighted.<strong>&lt;/div&gt;</strong></p>\n</div></div>\n<div>\n  <div class="text-box-highlight">\n<p>You can use this style to highlight important text block on mouse over. Just roll mouse over this text block to see how it''s highlighted.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;div class=&quot;text-box-highlight&quot;&gt;</strong>This is the text to be highlighted.<strong>&lt;/div&gt;</strong></p>\n</div></div>\n</div>\n\n<h4>Alert Text</h4>\n<div class="text-alert">\n<p>You can use this style for alert or warning text paragraph requiring user''s attention. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-alert&quot;&gt;</strong>This is text that requires user''s attentions.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Info Text</h4>\n<div class="text-info">\n<p>You can use this style for regular information text paragraph that does not require much user''s attentions. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-info&quot;&gt;</strong>This is your d text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Download Text</h4>\n<div class="text-download">\n<p>You can use this style for information text paragraph related to download process. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-download&quot;&gt;</strong>This is download related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Tip Text</h4>\n<div class="text-tip">\n<p>You can use this style for useful information like tips, hint or help text. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-tip&quot;&gt;</strong>This is yourtip hint or help text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Comment Text</h4>\n<div class="text-comment">\n<p>You can use this style for comment text paragraph. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-comment&quot;&gt;</strong>This is your comment text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Attachment Text</h4>\n<div class="text-attachment">\n<p>You can use this style for information text paragraph related to attachment file. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-attachment&quot;&gt;</strong>This is your attachment related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Video Text</h4>\n<div class="text-comment">\n<p>You can use this style for description text paragraph that related to video file. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-video&quot;&gt;</strong>This is your video related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Audio Text</h4>\n<div class="text-audio">\n<p>You can use this style for description text paragraph related to audio file. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-audio&quot;&gt;</strong>This is your audio related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<hr class="line-dots" />\n<h3>Link Styles</h3>\n<h4>Link Icon Styles</h4>\n<p>You  can attach up to <strong>20 predefined</strong> <strong>icons</strong> to the front of any link by  adding simple class to it.</p>\n<div class="grid-layout">\n  <div>\n    <ul class="list-nobullet">\n      <li><a class="link-icon jsn-icon-article">Link with article icon</a></li>\n      <li><a class="link-icon jsn-icon-calendar">Link with calendar icon</a></li>\n      <li><a class="link-icon jsn-icon-cart">Link with cart icon</a></li>\n      <li><a class="link-icon jsn-icon-comment">Link with comment icon</a></li>\n      <li><a class="link-icon jsn-icon-display">Link with display icon</a></li>\n      <li><a class="link-icon jsn-icon-download">Link with download icon</a></li>\n      <li><a class="link-icon jsn-icon-online">Link with online icon</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul class="list-nobullet">\n      <li><a class="link-icon jsn-icon-folder">Link with folder icon</a></li>\n      <li><a class="link-icon jsn-icon-help">Link with help icon</a></li>\n      <li><a class="link-icon jsn-icon-home">Link with home icon</a></li>\n      <li><a class="link-icon jsn-icon-image">Link with image icon</a></li>\n      <li><a class="link-icon jsn-icon-info">Link with info icon</a></li>\n      <li><a class="link-icon jsn-icon-mail">Link with mail icon</a></li>\n      <li><a class="link-icon jsn-icon-rss">Link with rss icon</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul class="list-nobullet">\n      <li><a class="link-icon jsn-icon-search">Link with search icon</a></li>\n      <li><a class="link-icon jsn-icon-selection">Link with selection icon</a></li>\n      <li><a class="link-icon jsn-icon-settings">Link with settings icon</a></li>\n      <li><a class="link-icon jsn-icon-star">Link with star icon</a></li>\n      <li><a class="link-icon jsn-icon-statistics">Link with statistics icon</a></li>\n      <li><a class="link-icon jsn-icon-user">Link with user icon</a></li>\n    </ul>\n  </div>\n</div>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-icon jsn-icon-xxx&quot;&gt;</strong>This is link  text.<strong>&lt;/a&gt;</strong>, where <strong>xxx</strong> is the name of icon to be applied. Detailed information about all icon names can be found in template documentation.</p>\n<p><span class="text-highlight highlight-light"><strong>Example:</strong></span> <strong>&lt;a  class=&quot;link-icon jsn-icon-download&quot;&gt;</strong>This is link to download something.<strong>&lt;/a&gt;</strong></p>\n<h4>Link Button Styles</h4>\n<p>JSN  Dome offers<strong> 6 button styles </strong>to decorate  any call-to-action links you have in the content.</p>\n<div class="grid-layout">\n  <div>\n  	<p><a href="#" class="link-button button-light">Link as light button</a></p>\n    <p><a href="#" class="link-button button-dark">Link as dark button</a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-blue">Link as blue button</a></p>\n  <p><a href="#" class="link-button button-green">Link as green button</a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-red">Link as red button</a></p>\n  <p><a href="#" class="link-button button-orange">Link as orange button</a></p>\n  </div>\n</div>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-button button-xxx&quot;&gt;</strong>This  is link text.<strong>&lt;/a&gt;</strong>, where <strong>xxx</strong> is the button color name selected from: <strong>light</strong>, <strong>dark</strong>, <strong>green</strong>, <strong>orange</strong>, <strong>blue</strong> and <strong>red</strong>.</p>\n<p><span class="text-highlight highlight-light"><strong>Example:</strong></span> <strong>&lt;a  class=&quot;link-button button-orange&quot;&gt;</strong>See plans / pricing.<strong>&lt;/a&gt;</strong></p>\n<h4>Combination of Button and Icon Styles</h4>\n<p>You can use both button and icon link style combined.</p>\n<div class="grid-layout">\n  <div>\n  <p><a href="#" class="link-button button-light"><span class="link-icon jsn-icon-home">Light button &amp; Home icon</span></a></p>\n  <p><a href="#" class="link-button button-dark"><span class="link-icon jsn-icon-calendar">Dark button &amp; Calendar icon</span></a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-blue"><span class="link-icon jsn-icon-mail">Blue button &amp; Mail icon</span></a></p>\n  <p><a href="#" class="link-button button-green"><span class="link-icon jsn-icon-image">Green button &amp; Image icon</span></a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-red"><span class="link-icon jsn-icon-star">Red button &amp; Star icon</span></a></p>\n  <p><a href="#" class="link-button button-orange"><span class="link-icon jsn-icon-user">Orange button &amp; User icon</span></a></p>\n  </div>\n</div>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-button button-xxx&quot;&gt;&lt;span  class=&quot;link-icon jsn-icon-yyy&quot;&gt;</strong>This is link text.<strong>&lt;/span&gt;&lt;/a&gt;</strong>, where <strong>xxx</strong> and <strong>yyy</strong> are button color and icon names  respectively.</p>\n<p><span class="text-highlight highlight-light"><strong>Example:</strong></span> <strong>&lt;a  class=&quot;link-button button-green&quot;&gt;&lt;span class=&quot;link-icon jsn-icon-cart&quot;&gt;</strong>Add  to cart.<strong>&lt;/span&gt;&lt;/a&gt;</strong></p>\n<h4>Extension  link styles</h4>\n<p>JSN  Dome is able to attach not only descriptive icon to the front of link as  described in above section, but also <strong>23 extension  icons</strong> to the end of the link.</p>\n<div class="grid-layout">\n  <div>\n    <ul>\n      <li><a class="link-icon-ext jsn-icon-ext-aim">AIM contact link (aim:)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-application">Application file (.app)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-archive">Archive file (.zip, .rar, .gzip)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-calendar">Calendar file (.ical)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-css">Cascading Style Sheet file (.css)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-doc">Microsoft Word file (.doc)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-excel">Microsoft Excel file (.xls)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-feed">Feed item (.rss, .atom)</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul>\n      <li><a class="link-icon-ext jsn-icon-ext-flash">Adobe Flash / Flex file (.fla, .swf)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-font">Font file (.ttf)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-mail">Email link (mailto:)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-mobile">Call link (callto:)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-movie">Movie file (.mp4, .avi, .mpg)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-msn">MSN IM contact link (msnim:)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-music">Music file (.mp3, .wav, .wma)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-pdf">Adobe PDF file (.pdf)</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul>\n      <li><a class="link-icon-ext jsn-icon-ext-powerpoint">Microsoft PowerPoint file (.pps)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-quicktime">QuickTime movie file (.mov)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-skype">Skype contact link (skype:)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-text">Regular text file (.txt)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-torrent">Torrent metainfo file (.torrent)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-vcard">Electronic business card  (.vcard)</a></li>\n      <li><a class="link-icon-ext jsn-icon-ext-yahoo">Yahoo Messenger contact  (ymsgr:)</a></li>\n    </ul>\n  </div>\n</div>\n<p>All icons can be assigned automatically by enabling a template parameter or manually by adding simple class to the link.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-icon-ext jsn-icon-ext-xxx&quot;&gt;</strong>This  is link text.<strong>&lt;/a&gt;</strong>, where <strong>xxx</strong> is the icon name. Detailed information about all icon names can be found in template documentation.</p>\n<hr class="line-dots" />\n<h3>Table Styles</h3>\n<h4>Plain  Rows table style</h4>\n<table width="100%" border="0" class="table-style style-colorheader">\n  <thead>\n    <tr>\n      <th>Table header</th>\n      <th>Column header 1</th>\n      <th class="highlight">Column header 2</th>\n      <th>Column header 3</th>\n    </tr>\n  </thead>\n  <tfoot>\n    <tr>\n      <th>Table footer</th>\n      <td colspan="3">Footer data</td>\n    </tr>\n  </tfoot>\n  <tbody>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n  </tbody>\n</table>\n<h4>Color Stripes table style</h4>\n<table width="100%" border="0" class="table-style style-colorstripes">\n  <thead>\n    <tr>\n      <th>Table header</th>\n      <th>Column header 1</th>\n      <th class="highlight">Column header 2</th>\n      <th>Column header 3</th>\n    </tr>\n  </thead>\n  <tfoot>\n    <tr>\n      <th>Table footer</th>\n      <td colspan="3">Footer data</td>\n    </tr>\n  </tfoot>\n  <tbody>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n  </tbody>\n</table>\n<h4>Grey Stripes table style</h4>\n<table width="100%" border="0" class="table-style style-greystripes">\n  <thead>\n    <tr>\n      <th>Table header</th>\n      <th>Column header 1</th>\n      <th class="highlight">Column header 2</th>\n      <th>Column header 3</th>\n    </tr>\n  </thead>\n  <tfoot>\n    <tr>\n      <th>Table footer</th>\n      <td colspan="3">Footer data</td>\n    </tr>\n  </tfoot>\n  <tbody>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n  </tbody>\n</table>\n<hr class="line-dots" />\n<h3>List styles</h3>\n<h4>Standard list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Unordered list</h5>\n    <ul>\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Ordered list</h5>\n    <ol>\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ol>\n  </div>\n</div>\n<h4>Arrow list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Red arrow</h5>\n    <ul class="list-arrow arrow-red">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Blue arrow</h5>\n    <ul class="list-arrow arrow-blue">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Green arrow</h5>\n    <ul class="list-arrow arrow-green">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<h4>Icon list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Article icon list</h5>\n    <ul class="list-icon jsn-icon-article">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Folder icon list</h5>\n    <ul class="list-icon jsn-icon-folder">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Image icon list</h5>\n    <ul class="list-icon jsn-icon-image">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Online icon list</h5>\n    <ul class="list-icon jsn-icon-online">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Star icon list</h5>\n    <ul class="list-icon jsn-icon-star">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>User icon list</h5>\n    <ul class="list-icon jsn-icon-user">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<p class="text-tip">You can assign any of predefined 20 icons to list items. 6 icons shown above are just samples.</p>\n<h4>Number list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Blue Bullet number list</h5>\n    <ul class="list-number-bullet bullet-blue">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Green Bullet number list</h5>\n    <ul class="list-number-bullet bullet-green">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Grey Bullet number list</h5>\n    <ul class="list-number-bullet bullet-grey">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Orange Bullet number list</h5>\n    <ul class="list-number-bullet bullet-orange">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Red Bullet number list</h5>\n    <ul class="list-number-bullet bullet-red">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Violet Bullet number list</h5>\n    <ul class="list-number-bullet bullet-violet">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Blue Digit number list</h5>\n    <ul class="list-number-digit digit-blue">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Green Digit number list</h5>\n    <ul class="list-number-digit digit-green">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Grey Digit number list</h5>\n    <ul class="list-number-digit digit-grey">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Orange Digit number list</h5>\n    <ul class="list-number-digit digit-orange">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Red Digit number list</h5>\n    <ul class="list-number-digit digit-red">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Violet Digit number list</h5>\n    <ul class="list-number-digit digit-violet">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>', '', 1, 78, '2011-04-01 02:57:27', 42, '', '2012-07-26 03:38:00', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:57:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 47, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(75, 183, 'CSS / JS Compression', 'cssjs-compression', '<p>At JoomlaShine.com, we put great efforts in optimizing our templates performance by multiple techniques like image sprites application, clean html code output and now one new step &ndash; <strong>CSS / JS Compression</strong>.</p>\n<p>What it does is to combine all CSS / JS files into a single file and deliver it in GZIP compressed state to browser. This feature significantly reduce http request number to server as well as overall loading size, which results in 35% performance boost.</p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/cssjs-compression/system-compression-filesbefore.png" border="0" alt="Before enabling CSS / JS compression" width="600" height="380" /></p>\n<p class="content-center"><em>Before enabling CSS / JS compression</em></p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/cssjs-compression/system-compression-filesafter.png" border="0" alt="After enabling CSS / JS compression" width="600" height="200" /></p>\n<p class="content-center"><em>After enabling CSS / JS compression</em></p>\n<p>CSS / JS Compression feature is enabled on this demo website. You can check the source code to see how it works.</p>\n<hr class="line-dots" />\n<h3>Custom CSS File(s)</h3>\n<p>This feature allows you to load multiple custom CSS files among with template default files. This feature is very useful, when you have special dedicated CSS file for content styling.</p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/cssjs-compression/system-customcss.png" border="0" alt="Custom CSS files are loaded among with other template CSS files" width="600" height="320" /></p>\n<p class="content-center"><em>Custom CSS files are loaded among with other template CSS files</em></p>\n<p>Just put custom CSS files to template''s CSS folder and define them in template parameter <strong>Custom CSS File(s)</strong> each file name at a line. If you enable <strong>CSS / JS Compression </strong>feature, all custom CSS files will be compressed as well.</p>', '', 1, 79, '2011-04-01 03:05:52', 42, '', '2011-07-08 09:31:34', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:05:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 13, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `lrfic_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(76, 184, 'Docs / Support', 'docs-and-support-2', '<h3>Documentation</h3>\r\n<p>JSN Epic is equipped with very comprehensive documentation package that will help you with template utilization.</p>\r\n<ul>\r\n<li><h4>Configuration Manual</h4>This PDF document gives you detailed description of every template feature. You can print and use this document as a reference every time you want to configure your template. You also can watch <a href="http://www.youtube.com/playlist?list=PL068EB32BB584F3F7">our play list JoomlaShine Template Configuration</a>. </li>\r\n<li><h4>Customization Manual</h4>This PDF document gives you easy-to-understand instruction how to customize template elements to make it suites you or your client. You also can watch <a href="http://www.youtube.com/playlist?list=PL0B473CA36B16C3FD">our playlist JoomlaShine Template Customization</a>. </li> \r\n</ul>\r\n<p class="content-center"><a class="link-button button-light" href="http://www.joomlashine.com/joomla-templates/jsn-dome-docs.zip"><span class="link-icon jsn-icon-download">Download documentation</span></a></p>\r\n<hr class="line-dots" />\r\n<h3>Support</h3>\r\n<p>When purchasing our products you are backed up with professional and timely support providing via:</p>\r\n<ul>\r\n<li><h4>Support Forum</h4>In the <a href="http://www.joomlashine.com/forum.html">support forum</a> we provide support for everyone who bought the <strong>PRO Edition</strong> of our products. Here you will get support from our support team as well as thousands of active members.</li>\r\n<li><h4>Dedicated Ticket Support</h4><a href="http://www.joomlashine.com/dedicated-support.html">Dedicated Ticket Support</a> is for developers who bought<strong> PRO UNLIMITED Edition </strong>of our products. With ticket support we can investigate the issue in-depth and provide a solution much faster. <strong>12-hour</strong> response time is guaranteed.</p> <p>One more great benefit is that we provide support for all questions related not only to the product, but also to your Joomla! configuration.</li> \r\n</ul>\r\n', '', 1, 79, '2011-04-01 03:06:29', 42, '', '2013-03-14 09:35:46', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:06:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 12, '', '', 1, 24, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(77, 185, 'Easy to Start', 'easy-to-start', '<p>One of the fastest and easiest ways to learn template is to install sample data and start playing with it. JSN Dome provides unique mechanism of installing sample data directly on your current website. Just few steps and the demo website is here.</p>\r\n<h3>Step 1. Setup sample data </h3>\r\n<p>Go to template settings page and click button <strong>"Get started".</strong></p> \r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/easy-start/sampledata-step01.png" border="0" width="600" alt="Run sample data installer" /></p>\r\n<p>There are 2 options for you to choose: <strong>Install sample data directly on your site</strong> or<strong> download the quickstart package and use it as standard Joomla site</strong>.</p>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/easy-start/sampledata-step02.png" border="0" width="600" alt="Download sample data package" /></p>\r\n<p> The installation process would start instantly and you would get the website in less than a minute.</p>\r\n<h3>Step 2. Read template documentation and start playing</h3>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/easy-start/sampledata-check-documentation.png" border="0" width="600" alt="Run sample data installer" /></p>\r\n<p><strong>Done!</strong> Just 2 simple steps and you have sample data installed.</p>\r\n<p>Now it''s time to read documentation and play with the template. You can download documentation package for free.</p>\r\n<ul type="disc">\r\n<li><a class="link-action" href="http://www.joomlashine.com/joomla-templates/jsn-dome-docs.zip">Download documentation package</a>.</li>\r\n', '', 1, 79, '2011-04-01 03:06:47', 42, '', '2013-03-18 08:34:25', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:06:47', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 11, '', '', 1, 47, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(78, 186, 'Extended styles', 'extended-styles', '<p>One of hottest features in JSN Dome is extended styles adapted for 5 most popular Joomla! extension: <strong>K2</strong>, <strong>Community Builder</strong>, <strong>Virtue Mart</strong>, <strong>JEvents</strong> and <strong>JoomGallery</strong>.</p>\n<p>Technically extended styles are overrides of default extensions style (images + CSS) and located in folder <strong>/ext</strong> inside template folder. Some extensions have their own template system and you might want to turn off extended style thru template parameter in order to use those native templates.</p>\n<p class="text-info">The extensions discussed here are not included in the template package and you have to download separately. You can download the extensions on Joomla! Extensions Directory <a href="http://extensions.joomla.org/">http://extensions.joomla.org/</a></p>\n<h3>K2</h3>\n<p>Extended style for K2 includes adapted tabs color, additional module styles, fixed alignment issues and some other minor visual enhancement.</p>\n<h4>Component styling</h4>\n<p>Here is how K2 component will look like after extended styles applied.</p>\n<p class="content-center"><img width="600" height="445" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-k2-style-after.png" alt="K2 Style Applied" /></p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for K2 modules as well.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img width="300" height="455" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-content.png" alt="K2 Style Module Content" /></p>\n<ul><li>K2 Content Module (mod_k2_content) with module style <strong>box-green jsn-icon-article</strong> applied</li></ul>\n</div>\n<div>\n  <p class="content-center"><img src="images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-comment-login.png" width="300" height="580" alt="K2 Style Module Comment" /></p>\n  <ul>\n    <li>K2 Comments Module (mod_k2_comments) with module style <strong>box-blue jsn-icon-comment</strong> applied</li>\n    <li>K2 Login Module (mod_k2_login) with module style <strong>box-yellow jsn-icon-user</strong> applied </li>\n  </ul>\n</div>\n</div>\n<hr class="line-dots" />\n<h3>Community Builder</h3>\n<p>Extended style for Community Builder includes adapted dropdown menu style, tabs color, additional module styles and some other minor visual enhancement.</p>\n<h4>Component styling</h4>\n<p>Here is how Community Builder component will look like after extended styles applied.</p>\n<p class="content-center"><img width="600" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-cb-profile.png" alt="CB Profile Style" /><br />\nAdapted drop-menu style and tabs color on <strong>CB Profile page</strong></p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for Community Builder modules as well.</p>\n<p class="content-center"><img width="300" height="360" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-cb-modules.png" alt="CB Module Style" /></p>\n<p>In the example above:</p>\n<ul>\n  <li>CB Login Module (mod_cblogin) with module style <strong>box-yellow jsn-icon-user</strong> applied</li>\n  <li>CB Online Module (mod_comprofilerOnline) with module style <strong>box-blue jsn-icon-online</strong> applied</li>\n  <li>CB Workflows (mod_comprofilermoderator) with module style<strong> box-grey jsn-icon-selection</strong> applied</li>\n</ul>\n<hr class="line-dots" />\n<h3>Virtue Mart</h3>\n<p>Extended style for Virtue Mart includes adapted Add to Cart button, additional module styles, fixed alignment issues, redesigned checkout-steps icons and some other minor visual enhancement.</p>\n<h4>Component Styling</h4>\n<p class="content-center"><img width="600" height="420" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-vm-product.png" alt="VM Product Style" /><br />Fixed alignment issues on <strong>Product Details</strong> page</p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for Virtue Mart modules as well.</p>\n<p class="content-center"><img width="300" height="420" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-vm-module.png" alt="VM Module Style" /></p>\n<ul>\n  <li>VirtueMart Module (mod_virtuemart) with module style <strong>box-blue jsn-icon-cart</strong> applied.</li>\n</ul>\n<hr class="line-dots" />\n<h3>JEvents</h3>\n<p>Extended style for JEvents includes redesigned calendar navigation icons and calendar table, adapted table header color, additional module styles, fixed alignment issues and some other minor visual enhancement.</p>\n<h4>Component Styling</h4>\n<p class="content-center"><img width="600" height="220" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-navigation.png" alt="JEvents Navigation Style" /><br />Totally redesigned calendar navigation icons</p>\n<p class="content-center"><img width="600" height="455" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-monthly.png" alt="JEvents Monthly Style" /><br />Adapted calendar table header color</p>\n<p class="content-center"><img width="600" height="550" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-weekly.png" alt="JEvents Weekly Style" /><br />\nAdapted table header color on Event List page</p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for JEvents modules as well.</p>\n<p class="content-center"><img width="300" height="530" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-modules.png" alt="JEvents Module Style" /></p>\n<p>In the example above:</p>\n<ul>\n  <li>Events Calendar Module (mod_jevents_cal) with module style <strong>box-blue jsn-icon-calendar</strong> applied.</li>\n  <li>Latest Events Module (mod_jevents_latest) with module style <strong>box-green jsn-icon-star</strong> applied.</li>\n  <li>JEvents Legend Module (mod_jevents_legend) with module style <strong>box-grey jsn-icon-info</strong> applied.</li>\n</ul>\n<hr class="line-dots" />\n<h3>JoomGallery</h3>\n<p>Extended style for JoomGallery includes redesigned navigation icons, fixed alignment issues, additional module styles and some other minor visual enhancement.</p>\n<h4>Component Styling</h4>\n<p class="content-center"><img width="600" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jg-layout.png" alt="JG Layout Style" /><br />Totally redesigned navigation bar and information panel</p>\n<p class="content-center"><img width="600" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jg-navigation.png" alt="JG Navigation Style" /><br />\nFixed alignment issues</p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for JoomGallery modules as well.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img width="300" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jg-modules1.png" alt="JG Module Style" /></p>\n<ul>\n  <li>JoomSearch Module (mod_joomsearch) with module style<strong> box-blue jsn-icon-search</strong> applied.</li>\n  <li>JoomGallery Treeview Module (mod_jgtreeview) with module style <strong>box-yellow jsn-icon-image</strong> applied. </li>\n</ul>\n</div>\n<div>\n<p class="content-center"><img width="300" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/content/template-details/advanced-stuff/extended-styles/ext-jg-modules2.png" alt="JG Module 2 Style" /></p>\n<ul>\n  <li>JoomGallery Latest Categories Module (mod_jglatestcart) with module style <strong>box-grey jsn-icon-star</strong> applied.</li>\n  <li>JoomGallery Stats Module (mod_joomgallerystats) with module style <strong>box-green jsn-icon-statistics</strong> applied.</li>\n</ul>\n</div>\n</div>', '', 1, 79, '2011-04-01 03:07:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:07:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(79, 187, 'Image Gallery', 'image-gallery', '<style>\r\n#hidden-content {\r\n    display: none;\r\n}\r\n.placeholder-text {\r\n    color: #fff;\r\n    width: 500px;\r\n    max-width: 100%;\r\n    text-align: center;\r\n    padding: 40px 20px;\r\n    margin: 20px auto;\r\n    background: #307451\\9;\r\n    background:radial-gradient(#22a563,#307451);\r\n}\r\n.placeholder-text p {\r\n    font-size: 1.3em;\r\n    max-width: 400px;\r\n    margin: 0 auto 20px;\r\n     text-shadow: 1px 1px 0 rgba(0,0,0,0.35);\r\n}\r\n</style>\r\n\r\n<script type="text/javascript">\r\n/* Insert JSN ImageShow place-holder content when the component isn''t installed */\r\n\r\nfunction addPlaceHolder(containerClass, placeholderID, classInsertedElement)\r\n{\r\n	var pattern = /\\{imageshow (.*)\\/\\}/i;\r\n	var elePlaceholder = document.id(placeholderID);\r\n\r\n	var contentElePlaceholder = elePlaceholder.get(''html''); \r\n\r\n        $$(''.'' + containerClass).each(function(item, index){\r\n\r\n        var content = item.get(''html'');\r\n	\r\n	if (pattern.test(content)) \r\n	{\r\n		item.set(''html'', '''');\r\n		var insertedEle = new Element("div", {class: classInsertedElement, html: contentElePlaceholder});\r\n                item.adopt(insertedEle); \r\n	}\r\n\r\n        });\r\n\r\n}\r\n\r\nwindow.addEvent(''domready'', function() {\r\naddPlaceHolder(''is-demo-theme'', ''hidden-content'', ''jsn-is-placeholder-content'');\r\n});\r\n</script>\r\n\r\n<div id="hidden-content">\r\n<div class="placeholder-text">\r\n<p>Here should be the presentation of JSN ImageShow,<br />but it is not installed on your website.</p>\r\n<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" class="link-button button-light">Free Download Now</a>\r\n</div>\r\n</div>\r\n\r\n<p>The image gallery you see on this website is another cool product <strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow</a></strong> from JoomlaShine.com. This product is shipped with component, module and content plugin, so you can place it anywhere on every website.</p>\r\n<p>On this page you can see how JSN ImageShow is presented as module on top and as plugin in article content. With it, you get smooth experience and consistent performance in all browsers. The JSN ImageShow also support mobile devices normally with JS/HTML version switched automatically when you visit the website.</p> \r\n<p>Currently, JSN ImageShow comes with 6 themes: Theme Classic, Theme Slider, Theme Grid, Theme Carousel, Theme Strip and Theme Flow. More themes will be released in the future.</p>\r\n<div class="content-center"><div class="is-demo-theme">{imageshow sl=2 sc=3 w=650 h=400 /}</div></div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Classic</em></p>\r\n<div class="content-center"><div class="is-demo-theme">{imageshow sl=2 sc=1 w=640 h=400 /}</div></div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Slider</em></p>\r\n<div class="content-center" style="padding-left: 30px;"><div class="is-demo-theme">{imageshow sl=2 sc=2 w=650 /}</div></div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Grid</em></p>\r\n<div class="content-center" style="padding-left: 30px;"><div class="is-demo-theme">{imageshow sl=2 sc=4 w=650 /}</div></div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Carousel</em></p>\r\n<div class="content-center" style="padding-left: 30px;"><div class="is-demo-theme">{imageshow sl=2 sc=6  /}</div></div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Strip Vertical</em></p>\r\n<div class="content-center" style="padding-left: 30px;"><div class="is-demo-theme">{imageshow sl=2 sc=7  /}</div></div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Strip Horizontal</em></p>\r\n<div class="content-center" style="padding-left: 30px;"><div class="is-demo-theme">{imageshow sl=2 sc=5  /}</div></div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Flow</em></p>\r\n<hr class="line-dots" />\r\n<h3>Mobile optimized</h3>\r\n<p>For mobile device, we have built special lightweight Javascript version, so you can be absolutely sure about images presentation.</p>\r\n\r\n<div class="grid-layout">\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/flash-gallery/flash-gallery.png" width="320" height="480" alt="Mobile optimized presentation (screenshot made by iPhone)" /></p>\r\n</div>\r\n   <p class="content-center"><em>Mobile optimized presentation (screenshot made by iPhone)</em></p>\r\n</div>\r\n\r\n<p class="text-info">This extension is NOT included in the template package, but you can download it for free. <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" class="link-action">Read more</a>.</p>', '', 1, 79, '2011-04-01 03:07:30', 42, '', '2013-11-25 04:44:37', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:07:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 9, '', '', 1, 65, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(80, 188, 'Flash Gallery Alternative', 'flash-gallery-alternative', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" style="display: block; height: 300px; background: url(http://demo.joomlashine.com/joomla-templates/jsn_dome/images/extensions/custom-html/jsn-imageshow-promo/jsn-imageshow-promo.jpg) center center no-repeat;"></a>', '', 1, 79, '2011-04-01 03:07:50', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:07:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(81, 189, 'Joomla! 2.5 & Joomla! 3.x Support', 'joomla-25-3x-support', '<p class="content-center"><img src="images/content/template-details/advanced-stuff/joomla-25-support/joomla25-3x-promo.jpg" border="0" width="600" height="300" /></p>\r\n<p>JSN Dome is natively compatible with<strong> both Joomla! 2.5 and Joomla! 3.x</strong>. The installation package is compatible with both Joomla CMS.</p>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/joomla-25-support/installation-files.png" border="0" width="600" height="300" /></p>\r\n<p>In Customer Area, you can choose to download appropriate installation file for the Joomla! version you are using.</p>', '', 1, 79, '2011-04-01 03:08:14', 42, '', '2013-05-20 02:38:24', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:08:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 7, '', '', 1, 46, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(82, 190, 'Responsive Layout', 'mobile-ready', '<p>All JoomlaShine.com templates have special built-in design optimized for modern mobile devices iPhone, Android and Windows Mobile-based. The responsive design is applied for both Joomla 2.5 and 3.0 versions, and for Pro Edition only.</p>\r\n<p>Unlike other template providers, we do not develop something that looks like a mobile app with heavy menu and animation. We built compact and lightweight version of the template preserving the whole original look-and-feel.</p>\r\n<h3>Mobile layout overview on Iphone</h3>\r\n<div class="grid-layout">\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-top.png" width="320" height="480" alt="Mobile layout overview" /></p>\r\n <p class="content-center"><em>Mobile layout overview</em></p>\r\n</div>\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-modules.png" width="320" height="480" alt="Module positions in mobile layout" /></p>\r\n <p class="content-center"><em>Module positions in mobile layout</em></p>\r\n</div>\r\n</div>\r\n<p>As default, all modules will be displayed on both desktop and mobile. To display a module on only desktop or on \r\nonly mobile, you can add <strong>Module Class Suffix</strong> parameter as following: </p>\r\n<ul>\r\n<li> Display a module on only desktop: <strong>display-desktop</strong> </li> \r\n<li> Display a module on only mobile: <strong>display-mobile</strong> </li> </ul>\r\n\r\n<h3>Mobile layout overview on Ipad </h3>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-ipad.png" width="600" height="800" alt="Mobile Ipad layout overview" /></p>\r\n\r\n <p class="content-center"><em>Mobile layout overview on Ipad</em></p>\r\n\r\n<hr class="line-dots" />\r\n<h3>Optimized HTML overrides for mobile</h3>\r\n<div class="grid-layout">\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-content-article.png" width="320" height="480" alt="Article presentation (com_content)" /></p>\r\n <p class="content-center"><em>Article presentation (com_content)</em></p>\r\n</div>\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-content-newsfeeds.png" width="320" height="480" alt="News feeds presentation (com_newsfeeds)" /></p>\r\n <p class="content-center"><em>News feeds presentation (com_newsfeeds)</em></p>\r\n</div>\r\n</div>\r\n<p>We optimized HTML overrides for all default Joomla! extensions to make them looks neat in mobile edition. The work is mainly focused on rearrangement content from columns to rows.</p>\r\n<hr class="line-dots" />\r\n<h3>Optimized menu for mobile</h3>\r\n<p>For mobile edition, we have built very simple, yet effective menu system, where all children menu items are presented as tree in collapsible panel. This menu system utilizes only little Javascript (MooTool) for expanding/collapsing submenu panels and is very fast and lightweight.</p>\r\n<div class="grid-layout">\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-normal.png" width="320" height="480" alt="Special designed mobile menu system" /></p>\r\n <p class="content-center"><em>Special designed mobile menu system</em></p>\r\n</div>\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-expanded.png" width="320" height="480" alt="Children menu items are presented as tree" /></p>\r\n <p class="content-center"><em>Children menu items are presented as tree</em></p>\r\n</div>\r\n</div>\r\n\r\n<h4>Mobile Menu with icons and rich text</h4>\r\nThe most amazing thing is mobile menu inherits all the goodies of regular menu like icons and rich text.\r\n<div class="grid-layout">\r\n <div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-icon.png" width="320" height="480" alt="Mobile menu with icons applied" /></p>\r\n <p class="content-center"><em>Mobile menu with icons applied</em></p>\r\n</div>\r\n<div>\r\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-richtext.png" width="320" height="480" alt="Mobile menu with rich text" /></p>\r\n <p class="content-center"><em>Mobile menu with rich text</em></p>\r\n</div>\r\n</div>\r\n<p class="text-info">The responsive feature is enabled on live demo. You can check this by resizing the demo to the desired size and see how it presents on mobile devices.</p>\r\n', '', 1, 79, '2011-04-01 03:08:38', 42, '', '2013-03-20 02:14:31', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:08:38', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 6, '', '', 1, 71, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(83, 191, 'Multilingual Support', 'multilingual-support', '<p>In our templates all wordings of both back-end and front-end are moved to separated language files, so you can easily translate them into any language you want.</p>\n<div class="content-center">\n{imageshow sl=10 sc=2 with=600 h=250 /}\n<p>Interactive images presentation by <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow extension</a></p>\n</div>\n<!--<p>Currently our templates support <strong>more then 10 languages</strong> and more to be come in future.</p>\n<div class="content-center">\n<p>\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-en.png" border="0" alt="English support" width="600" height="250" /><br />\n<strong>English</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-de.png" border="0" alt="German support" width="600" height="250" /><br />\n<strong>German</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-nl.png" border="0" alt="Dutch support" width="600" height="250" /><br />\n<strong>Dutch</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-it.png" border="0" alt="Italian support" width="600" height="250" /><br />\n<strong>Italian</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-es.png" border="0" alt="Spanish support" width="600" height="250" /><br />\n<strong>Spanish</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-fr.png" border="0" alt="French support" width="600" height="250" /><br />\n<strong>French</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-ja.png" border="0" alt="Japanese support" width="600" height="250" /><br />\n<strong>Japanese</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-da.png" border="0" alt="Danish support" width="600" height="250" /><br />\n<strong>Danish</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-ru.png" border="0" alt="Russian support" width="600" height="250" /><br />\n<strong>Russian</strong> <br />\n\n<img src="images/content/template-details/advanced-stuff/multilingual-support/seo-lang-pl.png" border="0" alt="Polish support" width="600" height="250" /><br />\n<strong>Polish</strong> <br />\n\n</p>\n</div>-->', '', 1, 79, '2011-04-01 03:08:55', 42, '', '2011-04-11 02:33:35', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:08:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 5, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(84, 192, 'Painless Configuration ', 'painless-configuration', '<p>All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find <strong>40+ template parameters</strong> arranged into logical groups for convenient operation.</p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/painless-configuration/params-preview.png" border="0" alt="Over 40 parameters to pick up" width="600" height="350" /></p>\n<hr class="line-dots" />\n<h3>Set parameters without confusion</h3>\n<p>Most parameters are designed that way that you can simply select options without confusion about what value to define. All parameters are equipped with description text for easier understanding.</p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/painless-configuration/params-layout.png" border="0" alt="Parameters to control layout dimensions" width="600" height="390" /><br /> <em>Parameters to control layout dimensions</em></p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/painless-configuration/params-style.png" border="0" alt="Parameters to control colors &amp; styles" width="600" height="187" /><br /> <em>Parameters to control colors &amp; styles</em></p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/painless-configuration/params-mobile.png" border="0" alt="Parameters to control mobile settings" width="600" height="128" /><br /> <em>Parameters to control mobile settings</em></p>', '', 1, 79, '2011-04-01 03:09:23', 42, '', '2012-11-26 09:49:50', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:09:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 4, '', '', 1, 52, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(85, 193, 'RTL Layout Support', 'rtl-layout-support', '<p>All JoomlaShine templates are equipped with <strong>native RTL layout support</strong>. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/rtl-layout-support/layout-rtl.jpg" border="0" alt="RTL layout support" width="600" height="400" /></p>\n<div class="content-center">\n<ul class="list-horizontal">\n<li class="first"><a href="index.php?option=com_content&amp;view=article&amp;id=85&amp;Itemid=488&amp;jsn_setdirection=rtl" class="link-button button-light">Switch to RTL layout</a></li>\n<li class="last"><a href="index.php?option=com_content&amp;view=article&amp;id=85&amp;Itemid=488&amp;jsn_setdirection=ltr" class="link-button button-light">Switch to Normal layout</a></li>\n</ul>\n</div>', '', 1, 79, '2011-04-01 03:09:40', 42, '', '2011-07-11 02:27:55', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:09:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 3, '', '', 1, 58, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(86, 194, 'SEO / Accessibility', 'seo-a-accessibility', '<p>JSN Dome has some great features to improve your website visibility to search engines and audience with disabilities. All these SEO features are not new, but they are built-in the template and you do not have to install any additional extensions.</p>\n<h3>Source ordering</h3>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/seo-accessibility/seo-source-ordering.png" width="600" height="350" alt="Source ordering" /></p>\n<p>One of the most important SEO techniques is to make sure that  search engine can find your critical content before others. To make this  possible in our template code structure we generate the <strong>&ldquo;center&rdquo;</strong>  part first and only after that <strong>&ldquo;left&rdquo;</strong> and <strong>&ldquo;right&rdquo;</strong> columns.</p>\n<p>In this way, you can be sure that search engines will see  your critical content first. You can use Lynx browser both <a href="http://www.delorie.com/web/lynxview.html">online</a> or <a href="http://www.vordweb.co.uk/standards/download_lynx.htm">offline</a> to make sure  of that.</p>\n<hr class="line-dots" />\n<h3>Website Title</h3>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/seo-accessibility/seo-website-title.png" width="600" height="300" alt="Website Title" /></p>\n<p>This feature allows  you to use value defined in parameter <strong>Site Name</strong> from Joomla Global Configuration and show it in tag <strong>&lt;title&gt;</strong> <strong>on every pages</strong>. By default Joomla!  presents <strong>Site Name</strong> only at back-end and offline  page. Now, with parameter <strong>Website Title</strong> you can  utilize Site Name at front-end on every page. This is great feature to improve  your website SEO, since you can define a website title with some important  keywords and show it on every page.</p>\n<hr class="line-dots" />\n<h3>Top H1 tag</h3>\n<p class="content-center"><img src="images/content/template-details/advanced-stuff/seo-accessibility/seo-top-h1.png" width="600" height="300" alt="Top h1 tag" /></p>\n<p>This feature allows you to wrap website slogan to <strong>&lt;h1&gt;</strong> tag, which is good for both <strong>SEO</strong> and <strong>accessibility</strong>. As we all know, <strong>&lt;h1&gt;</strong>  is the most important content tag and search engine normally pays special  attention to the content in that tag. Once you configured your keyword-powered  website title and slogan, you can include them in the first h1 tag to increase  SE ranking.</p>', '', 1, 79, '2011-04-01 03:09:59', 42, '', '2011-12-28 03:06:27', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:09:59', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 2, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(87, 195, 'Layout variation Center | Innerright | Right ', 'layout-variation-center-innerright-right', '<p>This is  3 columns layout with content presented on the left side, which is typical for blog sites. On right side columns you can  present modules with sumplementary information for main content. The width of side columns can be  adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 81, '2011-04-01 03:11:52', 42, '', '2012-07-27 04:54:59', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:11:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 5, '', '', 1, 26, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(88, 196, 'Layout variation Innerleft | Center | Right ', 'layout-variation-innerleft-center-right', '<p>This is also 3 columns layout with content presented at center, but the left side column was designed to present content of secondary importance comparing to those in right side column. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 81, '2011-04-01 03:12:20', 42, '', '2012-07-27 04:55:09', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:12:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 4, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(89, 197, 'Layout variation Left | Center | Innerright ', 'layout-variation-left-center-innerright', '<p>This is also 3 columns layout with content presented at center, but the right side column was designed to present content of secondary importance comparing to those in left side column. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 81, '2011-04-01 03:12:40', 42, '', '2012-07-27 04:55:18', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:12:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 3, '', '', 1, 24, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(90, 198, 'Layout variation Left | Center | Right', 'layout-variation-left-center-right', '<p>This is pretty &ldquo;old-fashioned&rdquo; 3 columns layout with content presented at center. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<ul><li><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li></ul>\n', '', 1, 81, '2011-04-01 03:13:33', 42, '', '2012-07-27 04:55:28', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:13:33', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 2, '', '', 1, 92, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(91, 199, 'Layout variation Left | Innerleft | Center', 'layout-variation-left-innerleft-center', '<p>This is  3 columns layout with content presented on the right side, which is typical for blog sites. On left side columns you can  present modules with sumplementary information for main content. The width of side columns can be  adjusted conveniently via template parameters.</p>\n<ul />\n  <li><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n', '', 1, 81, '2011-04-01 03:13:50', 42, '', '2012-07-27 04:55:40', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:13:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 31, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(92, 200, 'Main content only', 'main-content-only', '<p>Here you can see how content are presented only in main content area. Sometimes, you will need a lot of space to present content and that how it will looks like.</p>\n<ul><li><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li></ul>\n<h3>RTL Layout</h3>\n<p>All JoomlaShine templates are equipped with RTL layout support. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\n<ul>\n <li><a href="index.php?option=com_content&amp;view=article&amp;id=92&amp;Itemid=477&amp;jsn_setdirection=rtl" class="link-action">Switch to RTL layout</a></li>\n <li><a href="index.php?option=com_content&amp;view=article&amp;id=92&amp;Itemid=477&amp;jsn_setdirection=ltr" class="link-action">Switch to Normal layout</a></li>\n</ul>', '', 1, 81, '2011-04-01 03:14:14', 42, '', '2011-07-08 11:03:35', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:14:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, '', '', 1, 26, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `lrfic_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(93, 201, 'Main Menu', 'main-menu', '<p class="text-tip" style="position: relative">On top of this page, you can see live demonstration of Main Menu with icons and rich text. <img src="images/cliparts/arrows/arrow-up-right-2.png" style="position: absolute; top: -20px; right: 60px" alt="Icon Arrow Up" /></p>\r\n<p>Main Menu is very powerful menu built with clean accessible XHTML code structure and effective drop-down submenu panels.</p>\r\n<h3>Main Menu Icons</h3>\r\n<p class="content-center"><img src="images/content/template-details/menu-styles/mainmenu/menu-mainmenu-icons.png" alt="Main Menu Icons" width="600" height="175" border="0" /></p>\r\n<p>You can attach any of <strong>20 predefined icons</strong> to menu items to make them more appealing.</p>\r\n<p class="content-center"><img src="images/content/template-details/menu-styles/mainmenu/menu-mainmenu-icons-settings-j16.png" alt="Main Menu Icons Settings" width="600" height="300" border="0" /></p>\r\n<p>To set up icons, you need to go to menu item settings and add symbol combination <strong>jsn-icon-xxx</strong> to menu item’s parameter <strong>Link CSS Style</strong>, where <strong>xxx</strong> is the icon name.</p>\r\n<ul>\r\n<li><a href="images/content/template-details/design-features/uniicons.png" target="_blank" class="link-action">See preview of all icons</a></li></ul>\r\n<hr class="line-dots" />\r\n<h3>Main Menu Rich Text</h3>\r\n<p class="content-center"><img src="images/content/template-details/menu-styles/mainmenu/menu-mainmenu-rich.png" alt="Main Menu Rich Text" width="600" height="175" border="0" /></p>\r\n<p>You can add descriptive text to menu items to make them much clearer.</p>\r\n<p class="content-center"><img src="images/content/template-details/menu-styles/mainmenu/menu-mainmenu-rich-settings-j16.png" alt="Main Menu Rich Text Settings" width="600" height="300" border="0" /></p>\r\n<p>To set up descriptive text, you need to go to menu item settings and add descriptive text to menu item’s parameter <strong>Link Title Attribute</strong>.</p>\r\n<hr class="line-dots" />\r\n<h3>Main Menu Icons and Rich Text in combination</h3>\r\n<p class="content-center"><img src="images/content/template-details/menu-styles/mainmenu/menu-mainmenu-richicons.png" alt="Main Menu Rich Text combined with Icons" width="600" height="175" border="0" /></p>\r\n<p>You can set up menu items to utilize both icons and rich text in combination. Take a look at main menu on this page to see live demonstration.</p>', '', 1, 83, '2011-04-01 04:04:45', 42, '', '2013-12-30 09:28:12', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:04:45', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 5, '', '', 1, 74, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(94, 202, 'Rich Menu', 'rich-menu', '<p class="text-tip" style="position: relative">On top of this page, you can see live demonstration of Rich Menu. <img src="images/cliparts/arrows/arrow-up-right-2.png" style="position: absolute; top: -50px; padding-left: 10px" alt="Icon Arrow Up" /></p>\n<p>With this menu system you can attach icons and add descriptive text to each menu item making them much clearer and visually appealing. The best thing is you can use the default menu module built-in Joomla!, no need to install external menu modules.</p>\n<h3>Menu items with descriptive text</h3>\n<p>JSN Dome allows you to present menu items with descriptive text placed on a separated line at the bottom of main text.</p>\n<p class="content-center"><img src="images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich.png" alt="Main Menu Rich Text" width="600" height="175" border="0" /></p>\n<p>To setup text strings you need to go to menu item settings and add symbol combination &ldquo;<strong>(=)</strong><strong>&rdquo;</strong> as separator between primary and secondary text.</p>\n<p class="content-center"><img src="images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich-settings.png" alt="Main Menu Rich Text Settings" width="600" height="270" border="0" /></p>\n<p>In the example above text &ldquo;<strong>Home</strong>&rdquo; is the primary text and &ldquo;<strong>Lorem ipsum dolor sit...</strong>&rdquo; is the secondary text. Separator between them is the symbol combination &ldquo;<strong>(=)</strong>&rdquo;. Really simple and elegant solution.</p>\n<hr class="line-dots" />\n<h3>Menu items with icons</h3>\n<p>JSN Dome allows you to assign up to <strong>20 predefined icons</strong> for items in main menu.</p>\n<p class="content-center"><img src="images/content/template-details/menu-styles/rich-menu/menu-mainmenu-icons.png" alt="Main Menu Icons" width="600" height="125" border="0" /></p>\n<p> To setup icons, you need to find template parameter <strong>Main Menu Icons</strong> and choose any icon you want to display from drop-down panel.</p>\n<p class="content-center"><img src="images/content/template-details/menu-styles/rich-menu/menu-mainmenu-icons-settings.png" alt="Main Menu Icons Settings" width="600" height="300" border="0" /></p>\n<hr class="line-dots" />\n<h3>Combination of descriptive text and icons</h3>\n<p>You can use combination of descriptive text and icons to get Rich Menu in it''s best presentation.</p>\n<p class="content-center"><img src="images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich-icons.png" alt="Main Menu Rich Text combined with Icons" width="600" height="175" border="0" /></p>', '', 1, 83, '2011-04-01 04:05:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(95, 203, 'Side Menu', 'side-menu', '<p class="text-tip" style="position: relative"><img src="images/cliparts/arrows/arrow-down-left.png" alt="Arrow down left" style="position: absolute; top: 40px; left: -25px" />Here you can see live demonstration of Side Menu with icons and rich text.</p>\n<p>Side Menu is very unique vertical menu with slide-out panels. This menu is extremely efficient when you have complex navigation with a lot of menu items.</p>\n<p>To setup Side Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with Icons and Rich Text</h3>\n<p>Side Menu can present menu items with icons and descriptive text, pretty much like Main Menu.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>\n<p>Side Menu works flawlessly even in RTL layout, in which sub-menu panels will slide out from right to left.</p>\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=96&Itemid=481" class="link-button button-light"><span class="link-icon jsn-icon-info">See Side Menu in RTL layout</span></a></p>', '', 1, 83, '2011-04-01 04:05:29', 42, '', '2012-09-05 08:15:00', 43, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 3, '', '', 1, 71, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(96, 204, 'Side Menu RTL', 'side-menu-rtl', '<p class="text-tip" style="position: relative">Here you can see live demonstration of Side Menu with icons and rich text in RTL layout.<img src="images/cliparts/arrows/arrow-down-right.png" style="position: absolute; top: 40px; right:-25px" alt="Arrow" /></p>\n<p>Side Menu is very unique vertical menu with slide-out panels. This menu is extremely efficient when you have complex navigation with a lot of menu items.</p>\n<p>To setup Side Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with Icons and Rich Text</h3>\n<p>Side Menu can present menu items with icons and descriptive text, pretty much like Main Menu.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=95&Itemid=480" class="link-button button-light"><span class="link-icon jsn-icon-info">See Side Menu in Normal layout</span></a></p>', '', 1, 83, '2011-04-01 04:05:43', 42, '', '2012-09-05 08:17:26', 43, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:43', '0000-00-00 00:00:00', '', '', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 2, '', '', 1, 54, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(97, 205, 'Top Menu', 'top-menu', '<p class="text-tip" style="position: relative">At the top of this page, you can see live demonstration of Top Menu. <img src="images/cliparts/arrows/arrow-up-right-2.png" alt="Arrow up right" style="position: absolute; top: -20px; padding-left: 10px" /></p>\r\n<p>Top Menu allows you to arrange menu items in horizontal line and assign icons to them. All icons are configured directly in menu item settings page which is very convenient.</p>\r\n<p>You can choose up to <strong>20 predefined icons</strong> to menu item. </p>\r\n<p class="content-center"><img src="images/content/template-details/menu-styles/topmenu/menu-topmenu-icons-settings-j16.png" alt="Icons settings for Joomla 1.6" width="600" height="300" /></p>\r\n<p>To set up icons, you need to go to menu item settings and add symbol combination <strong>jsn-icon-xxx</strong> to menu item''s parameter <strong>Link CSS Style</strong>, where <strong>xxx</strong> is the icon name.</p>\r\n<ul>\r\n<li><a href="images/content/template-details/design-features/uniicons.png" target="_blank" class="link-action">See preview of all icons</a></li></ul>', '', 1, 83, '2011-04-01 04:05:59', 42, '', '2013-12-30 09:26:52', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:59', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 20, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(98, 206, 'Tree Menu', 'tree-menu', '<p class="text-tip" style="position: relative">Here you can see live demonstration of Tree Menu.<img src="images/cliparts/arrows/arrow-down-right.png" alt="Arrow down right" style="position: absolute; top: 25px; right:-25px" /></p>\n<p>Tree Menu represents menu items in clear tree-like hierarchy, which is very appropriate for indexing menu. By default all submenu items are collapsed until you select the parent menu item.</p>\n<p>To setup Tree Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest.</p>\n<h3>Tree Menu with Icons and Rich Text</h3>\n<p class="text-tip" style="position: relative"><img src="images/cliparts/arrows/arrow-down-left.png" alt="Arrow down left" style="position: absolute; top: 40px; left: -25px" />Here you can see live demonstration of Tree Menu with icons and rich text.</p>\n<p>Tree Menu can present menu items with icons and descriptive text, pretty much like <a href="index.php?option=com_content&amp;view=article&amp;id=93&amp;Itemid=479">Main Menu</a> and <a href="index.php?option=com_content&amp;view=article&amp;id=95&amp;Itemid=480">Side Menu</a>.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>\n<h3>Lorem ipsum</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non lorem libero. Vestibulum a leo ac tortor congue euismod. Nam sed nulla tellus. Suspendisse ut hendrerit justo. Sed molestie vestibulum nisl, a sodales urna molestie nec. Etiam neque nisl, malesuada ut egestas ut, facilisis vel leo. Morbi gravida blandit porttitor. Phasellus sed diam ante, quis lobortis tortor. Nunc quis mi congue ipsum fringilla hendrerit nec eget magna.</p>\n<h4>Lorem ipsum</h4>\n<p>Quisque sed mi non risus egestas cursus. Aenean odio mi, rhoncus sit amet tincidunt placerat, pellentesque ac mi. Mauris est lectus, faucibus vel ultrices eget, lobortis vitae lorem. Nam non nisl vel lorem pulvinar pharetra quis nec augue. Sed in odio lorem. In hac habitasse platea dictumst. Pellentesque elementum, ipsum vel sollicitudin porttitor, felis augue pharetra erat, ut vestibulum dui turpis sed nulla. Suspendisse ac nulla nisi. Fusce sed est a leo gravida bibendum non non odio. Maecenas et tortor sit amet dolor sagittis scelerisque sed sit amet lectus. Suspendisse sollicitudin suscipit velit, eu pellentesque tortor tristique a. Aliquam ut velit dolor, quis convallis orci. Curabitur tincidunt aliquam tellus id tempor. Etiam iaculis erat id metus placerat eget lacinia est eleifend. Ut in interdum mi.</p>', '', 1, 83, '2011-04-01 04:06:29', 42, '', '2012-09-05 08:20:37', 43, 0, '0000-00-00 00:00:00', '2011-04-01 04:06:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, '', '', 1, 30, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(99, 207, 'JSN Dome Features', 'jsn-dome-features', '<p>We have been developing JSN Dome for <strong>more than a year</strong> and that tremendous amount of time allowed us to roll out some really advanced stuff. For us, the word “advanced” is not just fancy marketing buzz, but really something that you will not likely see anywhere else.</p>\n<div class="grid-layout">\n<div>\n<h3>Easy to Start</h3>\n<p>JSN Dome provides unique mechanism of installing sample data on directly your current website. Just few clicks and the demo website is here.</p>\n<p><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=77&amp;Itemid=484"><span class="link-icon jsn-icon-info">More about sample data</span></a></p>\n</div>\n<div>\n<h3>Mobile Ready</h3>\n<p>JSN Dome provides special built-in design optimized for modern mobile devices such as iPhone, Android and Windows Mobile-based.</p>\n<p><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=486"><span class="link-icon jsn-icon-info">More about mobile support</span></a></p>\n</div>\n</div>\n<div class="grid-layout">\n<div>\n<h3>Painless Configuration</h3>\n<p>JSN Dome provides 40+ template parameters for super flexible template configuration. All parameters are nicely arranged in multiple sections for convenient access.</p>\n<p><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=84&amp;Itemid=485"><span class="link-icon jsn-icon-info">More about template configuration</span></a></p>\n</div>\n<div>\n<h3>Image Gallery</h3>\n<p>The image gallery you see on this website is cool product <strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html">JSN ImageShow</a></strong>. You can use this product to show either professional photo portfolio or your family album.</p>\n<p><a class="link-button button-light" href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html"><span class="link-icon jsn-icon-info">More about JSN ImageShow</span></a></p>\n</div>\n</div>\n<div class="grid-layout">\n<div>\n<h3>RTL Layout</h3>\n<p>All JoomlaShine templates are equipped with native RTL layout support. We tweak every tiny details to make template look absolutely awesome in RTL mode.</p>\n<p><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=85&amp;Itemid=488"><span class="link-icon jsn-icon-info">More about RTL layout</span></a></p>\n</div>\n<div>\n<h3>JSN UniForm</h3>\n<p>The powerful features of JSN UniForm will surely amazed you when first met. Easy-to-use, free from extreme technical knowledge, tons of form is all in your hand!</p>\n<p><a class="link-button button-light" href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html"><span class="link-icon jsn-icon-info">Read more about JSN UniForm</span></a></p>\n</div>\n</div>', '', 1, 79, '2011-04-01 04:17:12', 42, '', '2012-11-26 09:46:22', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:17:12', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 1, '', '', 1, 76, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(100, 208, 'K2 Support', 'k2-support', '<p>One of hottest features in JSN Dome is extended styles adapted for a very popular Joomla! extension <strong>K2</strong>. Technically extended styles are overrides of default extension&rsquo;s style (images + CSS) and located in folder &ldquo;<strong>/ext/k2&rdquo;</strong> inside template folder.</p>\n<p>Extended style for K2 includes adapted tabs color, additional module styles, fixed alignment issues and some other minor visual enhancement.</p>\n<h3>Component styling</h3>\n<p>Here is how K2 component will look like after extended styles applied.</p>\n<p class="content-center"><img width="600" height="445" src="images/content/template-details/advanced-stuff/extended-styles/ext-k2-style-after.png" /></p>\n<h3>Module styling</h3>\n<p>Besides from extended component styling you can use template module styles for K2 modules as well.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img width="300" height="455" src="images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-content.png" /></p>\n<ul><li>K2 Content Module (mod_k2_content) with module style <strong>box-green jsn-icon-article</strong> applied</li></ul>\n</div>\n<div>\n  <p class="content-center"><img src="images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-comment-login.png" width="300" height="580" /></p>\n  <ul>\n    <li>K2 Comments Module (mod_k2_comments) with module style <strong>box-blue jsn-icon-comment</strong> applied</li>\n    <li>K2 Login Module (mod_k2_login) with module style <strong>box-yellow jsn-icon-user</strong> applied </li>\n  </ul>\n</div>\n</div>\n<p class="text-info">The K2 extensions is not included in the template package and you have to download separately at http://www.getk2.org</p>', '', 0, 79, '2011-04-01 04:24:28', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(101, 209, 'JSN Dome Product Tour', 'jsn-dome-product-tour', '<style>\r\n#hidden-content {\r\n    display: none;\r\n}\r\n.placeholder-text {\r\n    color: #fff;\r\n    width: 500px;\r\n    max-width: 100%;\r\n    text-align: center;\r\n    padding: 40px 20px;\r\n    margin: 20px auto;\r\n    background: #307451\\9;\r\n    background:radial-gradient(#22a563,#307451);\r\n}\r\n.placeholder-text p {\r\n    font-size: 1.3em;\r\n    max-width: 400px;\r\n    margin: 0 auto 20px;\r\n     text-shadow: 1px 1px 0 rgba(0,0,0,0.35);\r\n}\r\n</style>\r\n\r\n<script type="text/javascript">\r\n/* Insert JSN ImageShow place-holder content when the component isn''t installed */\r\n\r\nfunction addPlaceHolder(containerClass, placeholderID, classInsertedElement)\r\n{\r\n	var pattern = /\\{imageshow (.*)\\/\\}/i;\r\n	var elePlaceholder = document.id(placeholderID);\r\n\r\n	var contentElePlaceholder = elePlaceholder.get(''html''); \r\n\r\n        $$(''.'' + containerClass).each(function(item, index){\r\n\r\n        var content = item.get(''html'');\r\n	\r\n	if (pattern.test(content)) \r\n	{\r\n		item.set(''html'', '''');\r\n		var insertedEle = new Element("div", {class: classInsertedElement, html: contentElePlaceholder});\r\n                item.adopt(insertedEle); \r\n	}\r\n\r\n        });\r\n\r\n}\r\n\r\nwindow.addEvent(''domready'', function() {\r\naddPlaceHolder(''is-demo-theme'', ''hidden-content'', ''jsn-is-placeholder-content'');\r\n});\r\n</script>\r\n\r\n<div id="hidden-content">\r\n<div class="placeholder-text">\r\n<p>Here should be the presentation of JSN ImageShow,<br />but it is not installed on your website.</p>\r\n<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" class="link-button button-light">Free Download Now</a>\r\n</div>\r\n</div>\r\n\r\n<h3>Easy to start</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-easy-start.jpg" alt="Easy to Start" /></p>\r\n<p>One of the fastest and easiest ways to learn template is to install sample data and start playing with it. JSN Dome provides unique mechanism of <strong>installing sample data directly on your current website</strong>. Just few steps and the demo website is here.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=484" class="link-button button-light"><span class="link-icon jsn-icon-info">More about easy start</span></a></p>\r\n\r\n<h3>Painless Configuration</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-configuration.jpg" alt="Painless Configuration" /></p>\r\n<p>All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find <strong>40+ template parameters</strong> arranged into logical groups for convenient operation. All parameters are equipped with description text for easier understanding.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=485" class="link-button button-light"><span class="link-icon jsn-icon-info">More about configuration</span></a></p>\r\n\r\n\r\n<h3>Flexible layout</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-layout.jpg" alt="Flexible layout" /></p>\r\n<p>JSN Dome provides <strong>36+ module positions </strong>allowing you to have multiple layout configurations. Module positions are designed in smart way to cover all possible spot where you might want to put content. You can specify width of both overall layout and specific columns conveniently via template parameters.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=466" class="link-button button-light"><span class="link-icon jsn-icon-info">More about layout</span></a></p>\r\n\r\n\r\n<h3>Multiple Color Variations</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-colors.jpg" alt="Color Variations" /></p>\r\n<p>JSN Dome provides<strong> 6 major colors variation</strong> for your taste. Each color variation covers not only the main background, but also color of drop-down menu, links, table''s header and some others.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=467" class="link-button button-light"><span class="link-icon jsn-icon-info">More about color variations</span></a></p>\r\n\r\n\r\n\r\n<h3>Versatile Menu Styles</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-menu-styles.jpg" alt="Menu Styles" /></p>\r\n<p>JSN Dome provides <strong>5 menu styles</strong> to present your website navigation. The default Joomla! built-in menu module is utilized, so you don''t need to install any external menu modules.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=468" class="link-button button-light"><span class="link-icon jsn-icon-info">More about menu styles</span></a></p>\r\n\r\n<h3>Comprehensive Typography</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-typography.jpg" alt="Comprehensive typography" /></p>\r\n<p>JSN Dome was developed with <strong>extreme focus on typography</strong> and we believe it provides the most comprehensive content presentation capability. Headings, text, links, tables, images, everything was designed with high level of refinement.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=469" class="link-button button-light"><span class="link-icon jsn-icon-info">More about typography</span></a></p>\r\n\r\n<h3>Excellent Mobile Support</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-mobile-ready.jpg" alt="Comprehensive typography" /></p>\r\n<p>All JoomlaShine.com templates have special built-in design optimized for modern mobile devices iPhone, Android and Windows Mobile-based.</p>\r\n<p>Unlike other template providers, we do not develop something that looks like a mobile app with heavy menu and animation. We built compact and lightweight version of the template preserving the whole original look-and-feel.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=486" class="link-button button-light"><span class="link-icon jsn-icon-info">More about mobile support</span></a></p>\r\n\r\n\r\n<h3>Native RTL Support</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-rtl-support.jpg" alt="RTL Support" /></p>\r\n<p>All JoomlaShine templates are equipped with <strong>native RTL layout support</strong>. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=77&Itemid=488" class="link-button button-light"><span class="link-icon jsn-icon-info">More about RTL support</span></a></p>\r\n\r\n<h3>Cool Image Gallery</h3>\r\n<div class="is-demo-theme">{imageshow sl=2 sc=3 max-width=650 h=400 /}</div>\r\n<p>The image gallery you see on this website is another cool product <strong>JSN ImageShow</strong> from JoomlaShine.com. With transition technology applied, you get smooth experience and consistent performance in all browsers.</p>\r\n<p>For mobile device, we have built special lightweight Javascript version, so you can be absolutely sure about images presentation.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=79&Itemid=694" class="link-button button-light"><span class="link-icon jsn-icon-info">More about image gallery</span></a></p>\r\n\r\n\r\n<h3>Manage Joomla easily</h3>\r\n<p class="content-center"><img src="images/content/template-details/general/product-tour/slide-poweradmin.jpg" alt="JSN PowerAdmin" /></p>\r\n<p>When you install sample data template, you will have one more powerful  extension to manage your Joomla site: <strong>JSN  PowerAdmin</strong>. It provides <strong>s</strong>potlight  search, giving results as you type. When you find the desired  item, just click it to open the edit page.</p>\r\n	JSN PowerAdmin allows you to have full control under your Joomla website in  single screen. You can manipulate elements by using convenient GUI with  drag-n-drop operations</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=106&Itemid=754" target="_blank" class="link-button button-light"><span class="link-icon jsn-icon-info">More about JSN PowerAdmin</span></a></p>\r\n\r\n<h3>Great Docs & Support</h3>\r\n<div style="max-width: 680px; margin: 0px auto; padding: 0 20px 10px; border: 8px solid #EEE; ">\r\n<div class="grid-layout">\r\n<div style="width: 49%; float: left">\r\n<h3>Documentation</h3>\r\n<p>JSN Dome is equipped with documentation package that will help you with template utilization.</p>\r\n<ul>\r\n<li><h4>Configuration Manual</h4>This PDF document gives you detailed description of every template feature. You can print and use this document as a reference every time. You also can watch <a href="http://www.youtube.com/playlist?list=PL068EB32BB584F3F7">our playlist Template Configuration</a>. </li>\r\n<li><h4>Customization Manual</h4>This PDF document gives you easy-to-understand instruction how to customize template elements to make it suites you or your client. You also can watch <a href="http://www.youtube.com/playlist?list=PL0B473CA36B16C3FD">our playlist JoomlaShine Template Customization</a>. </li> \r\n</ul>\r\n</div>\r\n<div style="width: 49%; float: right">\r\n<h3>Support</h3>\r\n<p>When purchasing our products you are backed up with professional and timely support providing via:</p>\r\n<ul>\r\n<li><h4>Support Forum</h4>In the <a href="http://www.joomlashine.com/forum.html">support forum</a> we provide support for everyone who bought the <strong>PRO Edition</strong> of our products. Here you will get support from our support team as well as thousands of active members.</li>\r\n<li><h4>Dedicated Ticket Support</h4><a href="http://www.joomlashine.com/dedicated-support.html">Dedicated Ticket Support</a> is for developers who bought<strong> PRO UNLIMITED Edition </strong>of our products. With ticket support we can investigate the issue in-depth and provide a solution much faster. <strong>12-hour</strong> response time is guaranteed.</p> </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p class="content-center"><br /><a href="http://www.joomlashine.com/joomla-templates/jsn-dome-docs.zip" class="link-button button-light"><span class="link-icon jsn-icon-download">Download documentation</span></a></p>\r\n</div>', '', 1, 80, '2011-04-01 04:41:44', 42, '', '2013-11-25 04:48:13', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:41:44', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 31, 4, '', '', 1, 131, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(102, 210, '5 reasons to choose JSN Dome', '5-reasons-to-choose-jsn-dome', '<h3>Beautiful Design</h3>\n<p>JSN Dome has incredibly beautiful clean design with ultra flexible layout built-up from 28 module positions. The combination of 6 colors variation, 5 menu styles and 6 module styles results in a really remarkable website. In addition, super rich typography makes your content look stunning and clear for all users.</p>\n<p><strong>Read more:</strong> <a href="layout.html">Layout</a> - <a href="colors-varitation.html">Colors Variation</a> - <a href="menu-styles.html">Menu Styles</a> - <a href="typography.html">Typography</a> - <a href="modules-styles.html">Module Styles</a>  <a href="font-styles.html">Font Styles</a>.</p>\n<h3>Stable Feature Rich Core</h3>\n<p>For us, JSN Dome is not just a template, but whole piece of software for which we spent more then 2 years. As the result you get ultra stable template with native RTL support and flawlessly running on IE6. Even more than that, there are multiple SEO / Accessibility features which make your website greatly visible for both search engines and people with disabilities.</p>\n<p><strong>Read more:</strong> <a href="rtl-support.html">RTL Layout Support</a> - <a href="ie6-support.html">IE6 Support</a> - <a href="seo-accessibility.html">SEO / Accessibility</a> - <a href="flash-gallery.html">Flash Gallery</a>.</p>\n<h3>Dead-easy Configuration</h3>\n<p>You will be surprised how such a capable template can be so easily handled. Majority of template features are conveniently managed by over 40 template parameters. You dont have to be a CSS master or PHP guru. Just set parameters as you want and enjoy the result.</p>\n<p><strong>Read more:</strong> <a href="template-parameters.html">Template Parameters</a>.</p>\n<h3>Outstanding Docs / Support</h3>\n<p>Even when the template is deadly easy to use, we still provide very comprehensive documentation package of 3 PDF documents. So its really hard to get things done wrong, but if even so, you can get timely and professional support from our team as well as friendly community.</p>\n<p><strong>Next Step:</strong> <a href="download-jsn-dome-docs.html">Download template documentation</a> for free.</p>\n<h3>Cost Effective Solution</h3>\n<p>All the benefits is available for you for just 29$. Our ultimate goal is to offer you a solution that in turns must bring you much more profit. Even more, we provide 30-days money back guarantee, so this is absolutely risk-free. Just give it a try and you wont look back.</p>\n<p><strong>Next Step:</strong> <a href="buy-now.html">Download JSN Dome</a>.</p>', '', 1, 80, '2011-04-01 07:17:52', 42, '', '2011-07-08 09:22:48', 42, 0, '0000-00-00 00:00:00', '2011-04-01 07:17:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(103, 211, 'Introducing JSN Dome', 'introducing-jsn-dome', '<p>JSN Dome is beautiful and colorful template designed mainly for blog and personal websites. Equipped with powerful features this template allows you to present content in whatever way you like. <a href="index.php?option=com_content&amp;view=article&amp;id=71&amp;Itemid=466">Super flexible layout</a>, <a href="index.php?option=com_content&amp;view=article&amp;id=68&amp;Itemid=467">6 colors variation</a>, <a href="index.php?option=com_content&amp;view=article&amp;id=69&amp;Itemid=471">3 font styles</a>, <a href="index.php?option=com_content&amp;view=article&amp;id=72&amp;Itemid=468">5 menu styles</a>, <a href="index.php?option=com_content&amp;view=article&amp;id=73&amp;Itemid=470">6 modules styles</a> and much more are under your management via convenient <a href="index.php?option=com_content&amp;view=article&amp;id=84&amp;Itemid=485">template parameters</a>.</p>\n<p>JSN Dome is distributed in 2 editions: <strong>Free</strong> and <strong>PRO</strong>. Many features demonstrated on this website are NOT available in the Free Edition. For full details about JSN Dome PRO Edition features, please <a href="http://www.joomlashine.com/joomla-templates/jsn-dome-docs.zip" class="link-action">download template documentation</a> for free.</p>\n<p class="content-center"><br />\n<a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=101&amp;Itemid=497"><span class="link-icon jsn-icon-display">Take a quick tour</span></a></p>', '', 1, 80, '2011-04-01 07:18:18', 42, '', '2012-07-30 03:35:34', 43, 0, '0000-00-00 00:00:00', '2011-04-01 07:18:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(104, 212, 'JSN Dome Showcase', 'jsn-dome-showcase', '<p>Here, wed like to show you how JSN Dome can be utilized for multiple kinds of websites, staring from simple personal website ending with professional news portal. All content are fictions and serves for demo purpose only.</p>\n<ul type="disc">\n <li>News Portal / Online magazine</li>\n <li>Personal website / Blog</li>\n <li>Corporate website / Service providers</li>\n <li>Community website / Fan clubs</li>\n <li>Online shops</li>\n</ul>\n<p>Here are some real life examples of JSN Dome.</p>', '', 1, 80, '2011-04-01 07:18:37', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 07:18:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(105, 220, 'Form Builder', 'form-builder', '<style>\r\n#hidden-content {\r\n    display: none;\r\n}\r\n.placeholder-text {\r\n    color: #fff;\r\n    width: 500px;\r\n    max-width: 100%;\r\n    text-align: center;\r\n    padding: 40px 20px;\r\n    margin: 0 auto 20px;\r\n    background: #851c0e\\9;\r\n    background:radial-gradient(#bc2e1b,#851c0e);\r\n}\r\n.placeholder-text p {\r\n    font-size: 1.3em;\r\n    max-width: 400px;\r\n    margin: 20px auto;\r\n    text-shadow: 1px 1px 0 rgba(0,0,0,0.35);\r\n}\r\n</style>\r\n\r\n<script type="text/javascript">\r\n/* Insert JSN UniForm place-holder content when the component isn''t installed */\r\n\r\nfunction addPlaceHolder(containerClass, placeholderID, classInsertedElement)\r\n{\r\n	var pattern = /\\{uniform (.*)\\/\\}/i;\r\n	var elePlaceholder = document.id(placeholderID);\r\n\r\n	var contentElePlaceholder = elePlaceholder.get(''html''); \r\n\r\n        $$(''.'' + containerClass).each(function(item, index){\r\n\r\n        var content = item.get(''html'');\r\n	\r\n	if (pattern.test(content)) \r\n	{\r\n		item.set(''html'', '''');\r\n		var insertedEle = new Element("div", {class: classInsertedElement, html: contentElePlaceholder});\r\n                item.adopt(insertedEle); \r\n	}\r\n\r\n        });\r\n\r\n}\r\n\r\nwindow.addEvent(''domready'', function() {\r\naddPlaceHolder(''uf-demo-form'', ''hidden-content'', ''jsn-uf-placeholder-content'');\r\n});\r\n</script>\r\n\r\n<div id="hidden-content">\r\n<div class="placeholder-text">\r\n<p>Here should be the presentation of JSN UniForm,<br />but it is not installed on your website.</p>\r\n<a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform.html" target="_blank" class="link-button button-light">Download now</a>\r\n</div>\r\n</div>\r\n\r\n<p><strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html">JSN UniForm</a></strong> will bring you the new indulgence since you find out it is the easiest-to-use form extension for your site. Contact us, survey and job application are just some of thousand forms that this single extension can help you to create and control. Besides the intuitive <strong>drag-n-drop operation</strong>, <strong>flexible form presentation</strong> and <strong>multiple pages layout</strong>, JSN UniForm also assists you to deeply understand your collected data with the multiple admins email notification, clean result display or submission filter. </p>\r\n\r\n<p>Below is the survey form created by the <strong>Free Edition</strong> of JSN UniForm. </p>\r\n<div class="uf-demo-form">{uniform form=1/}</div>\r\n\r\n<p class="text-info">This extension is NOT included in the template package, but you can download it for free. <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html" class="link-action">Read more</a>.</p>', '', 1, 80, '2012-11-26 03:12:45', 42, '', '2013-11-25 04:49:49', 42, 0, '0000-00-00 00:00:00', '2012-11-26 03:12:45', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 18, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `lrfic_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(106, 221, 'JSN PowerAdmin - Managing your Joomla website can’t be easier', 'jsn-poweradmin', '<p><strong>JSN PowerAdmin</strong> makes your Joomla  administration process easy and enjoyable. It allows you to have full control  under your Joomla website in single screen. You can manipulate elements by  using convenient GUI with drag-n-drop operations.</p>\r\n<p align="center"></p>\r\n<h3>Admin Bar</h3>\r\n<p>AdminBar allows you to perform  common actions quickly: Search items, check actions history, manage users and  manage site.<br />\r\n<p align="center"><img src="images/content/template-details/advanced-stuff/jsn-poweradmin/admin bar.png" alt="Admin Bar" width="600" height="88" /></p>\r\n<h4>Spotlight Search</h4>\r\n<p>Spotlight Search helps you search items in your website quickly. <br />\r\n<p align="center"><img src="images/content/template-details/advanced-stuff/jsn-poweradmin/spotlight search.png" alt="Spotlight Search" width="600" height="261" /></p>\r\n<h3>Site Manager</h3>\r\n<p>Here we go to the coolest feature of this extension: Site Manager. It helps you control the website content  in one place. As you see, it covers Menu, Component and Modules.<br />\r\n<p align="center"><img src="images/content/template-details/advanced-stuff/jsn-poweradmin/site manager.png" alt="Site Manager" width="600" height="345" /></p>\r\n<h4>Menu</h4>\r\n<p>Here you can manage your menus. If you want to move items  within a menu, simply drag and drop them. If you want to edit more, left click  on menu items.<br />\r\n<p align="center"><img src="images/content/template-details/advanced-stuff/jsn-poweradmin/menu.png" alt="Menu" width="600" height="377" /></p>\r\n<h4>Component</h4>\r\n<p>This section shows you the component of the menu item you  selected. <strong>JSN PowerAdmin</strong> helps you  move the mouse over all elements on the page and configure them with a single  click. The software will automatically adjust all necessary parameters for you<br />\r\n<p align="center"><img src="images/content/template-details/advanced-stuff/jsn-poweradmin/component.png" alt="Component" width="600" height="414" /></p>\r\n<h4>Modules</h4>\r\n<p>Here you can manage all Modules  of the current default template. You can drag and drop a module to different  module positions, or simply click on modules and positions to get more editing  options.<br />\r\n<p align="center"><img src="images/content/template-details/advanced-stuff/jsn-poweradmin/modules.png" alt="Modules" width="600" height="379" /></p>\r\n<p><strong>JSN PowerAdmin</strong> supports <strong>10  languages</strong>: <em>English, German, Dutch,  French, Russian, Spanish, Portuguese (Portugal), Portuguese (Brazil), Polish  and Japan</em>. It works perfectly with Joomla admin templates: <em>Hathor, Mission Control, Admin Praise Lite, VTEM Admin, Minima and other</em></p>\r\n<p><em><strong>Impressions from Joomla site builders...</strong></em></p>\r\n<p><em>\r\n<blockquote>All I can say is it turbo-charged the admin  area. So many shortcuts, saving hours of clicking and checking. With developers  creating extensions like these, Joomla can only go up. My hat is off to the  Joomlashine team <strong><em>-</em></strong><a href="http://extensions.joomla.org/extensions/reviews/pcbob" target="_blank"> pcbob</a>\r\n  </p>\r\n  <em></em>\r\n</blockquote>\r\n</em>\r\n<p><em>\r\n<blockquote>JSN  PowerAdmin is a great timesaver. It adds drag &amp; drop functionality to menus  and modules. The live search over articles, modules, menus, plug-ins ... is  perfect. You visually can administrate all content elements like release date,  author, category etc. I simply love it! Thank to Joomlashine <strong><em>- </em></strong><a href="http://extensions.joomla.org/extensions/reviews/Herm" target="_blank">Herm</a>\r\n  </p>\r\n</blockquote></em>\r\n<p><em>\r\n<blockquote>The  moment I installed this component I could see the improvements and difference  it makes in managing my site. A hefty percentage of my time in Joomla is spent  switching between sections and finding modules and editing their settings.  Where have you been all my life?<em><strong><em>-</em></strong></em><a href="http://extensions.joomla.org/extensions/reviews/talgans" target="_blank"> talgans</a>\r\n</p>\r\n</blockquote></em>\r\n<p align="center"><a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin-details.html" class="link-button button-dark"><span class="link-icon jsn-icon-download">Download Now</span></a></p>', '', 1, 14, '2012-12-25 04:59:17', 42, '', '2012-12-25 04:59:27', 42, 0, '0000-00-00 00:00:00', '2012-12-25 04:59:17', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `lrfic_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `lrfic_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_content_frontpage`
--

INSERT INTO `lrfic_content_frontpage` (`content_id`, `ordering`) VALUES
(103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_content_rating`
--

CREATE TABLE IF NOT EXISTS `lrfic_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_content_types`
--

CREATE TABLE IF NOT EXISTS `lrfic_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `lrfic_content_types`
--

INSERT INTO `lrfic_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `lrfic_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_extensions`
--

CREATE TABLE IF NOT EXISTS `lrfic_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10113 ;

--
-- Dumping data for table `lrfic_extensions`
--

INSERT INTO `lrfic_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"cachetimeout":"6"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"1","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","category_layout":"_:blog","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"-1","orderby_pri":"none","orderby_sec":"rdate","order_date":"published","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"porter_en"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"sts","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"4d52285b916c339df49433e1dec91b9c"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-03-11 11:59:00","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.2","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `lrfic_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 1, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'poweradmin', 'component', 'com_poweradmin', '', 1, 1, 0, 0, '{"name":"PowerAdmin","type":"component","creationDate":"12\\/27\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"2.1.3","description":"JSN PowerAdmin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'System - JSN PowerAdmin', 'plugin', 'jsnpoweradmin', 'system', 0, 1, 1, 1, '{"name":"System - JSN PowerAdmin","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"System - JSN PowerAdmin plugin","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'plg_system_jsnframework', 'plugin', 'jsnframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnframework","type":"plugin","creationDate":"01\\/03\\/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.3.9","description":"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION","group":""}', '{"poweradmin":"poweradmin","imageshow":"imageshow","uniform":"uniform"}', '["poweradmin","imageshow","uniform"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(10055, 'imageshow', 'component', 'com_imageshow', '', 1, 1, 0, 0, '{"name":"ImageShow","type":"component","creationDate":"11\\/02\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.8.1","description":"JSN IMAGESHOW PRO UNLIMITED","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'Content - JSN ImageShow', 'plugin', 'imageshow', 'content', 0, 1, 1, 1, '{"name":"Content - JSN ImageShow","type":"plugin","creationDate":"11/02/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.1","description":"JSN_IMAGESHOW_CONTENT_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'System - JSN ImageShow', 'plugin', 'imageshow', 'system', 0, 1, 1, 1, '{"name":"System - JSN ImageShow","type":"plugin","creationDate":"11/02/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.1","description":"JSN_IMAGESHOW_SYSTEM_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'Button - ImageShow', 'plugin', 'imageshow', 'editors-xtd', 0, 1, 1, 1, '{"name":"Button - ImageShow","type":"plugin","creationDate":"11/02/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.1","description":"PLG_EDITOR_JSN_IMAGESHOW_XML_DESCRIPTION","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 'JSN ImageShow', 'module', 'mod_imageshow', '', 0, 1, 0, 1, '{"name":"JSN ImageShow","type":"module","creationDate":"11/02/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.1","description":"JSN_MODULE_JSN_IMAGESHOW_MODULE","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10060, 'JSN ImageShow Quick Icons', 'module', 'mod_imageshow_quickicon', '', 1, 1, 2, 1, '{"name":"JSN ImageShow Quick Icons","type":"module","creationDate":"11/02/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.8.1","description":"Quick access icon to reach JSN ImageShow Launch Pad","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'Source Picasa', 'plugin', 'sourcepicasa', 'jsnimageshow', 1, 1, 1, 1, '{"name":"Source Picasa","type":"plugin","creationDate":"05\\/09\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.4","description":"JSN IMAGESHOW IMAGE SOURCE PICASA","group":""}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'Theme Classic', 'plugin', 'themeclassic', 'jsnimageshow', 1, 1, 1, 1, '{"name":"Theme Classic","type":"plugin","creationDate":"11\\/02\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.7","description":"JSN IMAGESHOW SHOWCASE THEME CLASSIC PLUGIN","group":""}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'Theme Grid', 'plugin', 'themegrid', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Grid","type":"plugin","creationDate":"11\\/02\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.0","description":"JSN IMAGESHOW SHOWCASE THEME GRID PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'Theme Slider', 'plugin', 'themeslider', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Slider","type":"plugin","creationDate":"10\\/11\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.6","description":"JSN IMAGESHOW SHOWCASE THEME SLIDER PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'uniform', 'component', 'com_uniform', '', 1, 1, 0, 0, '{"name":"UniForm","type":"component","creationDate":"11\\/20\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"3.0.2","description":"JSN UniForm PRO UNLIMITED \\u2013 A very simple solution to build forms for your Joomla website.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'JSN UniForm', 'module', 'mod_uniform', '', 0, 1, 0, 1, '{"name":"JSN UniForm","type":"module","creationDate":"11/20/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.2","description":"JSN_UNIFORM_MODULE_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'JSN_UNIFORM_PLUGIN_CONTENT_TITLE', 'plugin', 'uniform', 'content', 0, 1, 1, 1, '{"name":"JSN_UNIFORM_PLUGIN_CONTENT_TITLE","type":"plugin","creationDate":"11/20/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.2","description":"JSN_UNIFORM_PLUGIN_CONTENT_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'JSN_UNIFORM_PLUGIN_BUTTON_TITLE', 'plugin', 'uniform', 'editors-xtd', 0, 1, 1, 1, '{"name":"JSN_UNIFORM_PLUGIN_BUTTON_TITLE","type":"plugin","creationDate":"11/20/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.2","description":"JSN_UNIFORM_PLUGIN_BUTTON_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 'Theme Carousel', 'plugin', 'themecarousel', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Carousel","type":"plugin","creationDate":"11\\/02\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.7","description":"JSN IMAGESHOW SHOWCASE THEME CAROUSEL PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10070, 'mod_poweradmin', 'module', 'mod_poweradmin', '', 1, 1, 2, 0, '{"name":"mod_poweradmin","type":"module","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"JSN PowerAdmin Quick Icons","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 'JSN PowerAdmin extended - com_content', 'plugin', 'content', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_content","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_content in site manager (from PowerAdmin 1.3.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10074, 'Theme Flow', 'plugin', 'themeflow', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Flow","type":"plugin","creationDate":"09\\/27\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.4","description":"JSN IMAGESHOW SHOWCASE THEME FLOW PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10075, 'Theme Strip', 'plugin', 'themestrip', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Strip","type":"plugin","creationDate":"09\\/27\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.5","description":"JSN IMAGESHOW SHOWCASE THEME STRIP PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10078, 'COM_K2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":"","filename":"k2"}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"1","userFeedIcon":"1","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"600","itemImageXL":"900","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"XSmall","comments":"2","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","recaptcha":"0","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","K2UserGroup":"1","redirect":"499","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"PLG_FINDER_K2_DESCRIPTION","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":"","filename":"k2"}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10081, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10082, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Categories","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":"","filename":"k2category"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10084, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":"","filename":"k2item"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10085, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"MOD_K2_COMMENTS_DESCRIPTION","group":"","filename":"mod_k2_comments.j25"}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":"","filename":"mod_k2_content.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10087, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_TOOLS","group":"","filename":"mod_k2_tools.j25"}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10088, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":"","filename":"mod_k2_users.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10089, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USER_DESCRIPTION","group":"","filename":"mod_k2_user.j25"}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `lrfic_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10090, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":"","filename":"mod_k2_quickicons.j25"}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10091, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":"","filename":"mod_k2_stats.j25"}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10092, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{"name":"plg_system_kunena","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_SYSTEM_KUNENA_DESC","group":"","filename":"kunena"}', '{"jcontentevents":"0","jcontentevent_target":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10093, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_kunena","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_QUICKICON_KUNENA_DESC","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10095, 'Kunena Media Files', 'file', 'kunena_media', '', 0, 1, 0, 0, '{"name":"Kunena Media Files","type":"file","creationDate":"2013-06-29","author":"Kunena Team","copyright":"(C) 2008 - 2013 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.1","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10096, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{"name":"com_kunena","type":"component","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"COM_KUNENA_XML_DESCRIPTION","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10097, 'Kunena Forum Package', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{"name":"Kunena Forum Package","type":"package","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"Kunena Forum Package.","group":"","filename":"pkg_kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10098, 'plg_kunena_alphauserpoints', 'plugin', 'alphauserpoints', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_alphauserpoints","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION","group":"","filename":"alphauserpoints"}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10099, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_community","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_COMMUNITY_DESCRIPTION","group":"","filename":"community"}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_points_limit":"0","activity_stream_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10100, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_comprofiler","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_COMPROFILER_DESCRIPTION","group":"","filename":"comprofiler"}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10101, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_gravatar","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_GRAVATAR_DESCRIPTION","group":"","filename":"gravatar"}', '{"avatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10102, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_uddeim","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_UDDEIM_DESCRIPTION","group":"","filename":"uddeim"}', '{"private":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10103, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_kunena","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_KUNENA_DESCRIPTION","group":"","filename":"kunena"}', '{"avatar":"1","profile":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10104, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_joomla","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION","group":"","filename":"joomla"}', '{"access":"1","login":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10105, 'JSN PowerAdmin extended - com_contact', 'plugin', 'contact', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_contact","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_contact in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10106, 'JSN PowerAdmin extended - com_users', 'plugin', 'users', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_users","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_users in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10107, 'JSN PowerAdmin extended - com_weblinks', 'plugin', 'weblinks', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_weblinks","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_weblinks in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10109, 'plg_system_jsntplframework', 'plugin', 'jsntplframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsntplframework","type":"plugin","creationDate":"01\\/07\\/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"2.1.4","description":"","group":""}', '{"update-check":1431941330}', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10110, 'jsn_dome_pro', 'template', 'jsn_dome_pro', '', 0, 1, 1, 0, '{"name":"jsn_dome_pro","type":"template","creationDate":"01\\/07\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.0.1","description":"TPL_JSN_DOME_PRO_XML_DESCRIPTION","group":"jsntemplate"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(10111, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{"name":"Kunena Framework","type":"library","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"Kunena Framework.","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10112, 'Kunena Media Files', 'file', 'KunenaMediaFiles', '', 0, 1, 0, 0, '{"name":"Kunena Media Files","type":"file","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_filters`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_finder_taxonomy`
--

INSERT INTO `lrfic_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_terms`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_finder_terms_common`
--

INSERT INTO `lrfic_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_finder_types`
--

CREATE TABLE IF NOT EXISTS `lrfic_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_external_source_picasa`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_external_source_picasa` (
`external_source_id` int(11) unsigned NOT NULL,
  `external_source_profile_title` varchar(255) DEFAULT NULL,
  `picasa_username` varchar(255) DEFAULT '',
  `picasa_thumbnail_size` char(30) DEFAULT '144',
  `picasa_image_size` char(30) DEFAULT '1024'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_imageshow_external_source_picasa`
--

INSERT INTO `lrfic_imageshow_external_source_picasa` (`external_source_id`, `external_source_profile_title`, `picasa_username`, `picasa_thumbnail_size`, `picasa_image_size`) VALUES
(1, 'joomlashine', 'joomlashine', '144', '1024');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_images`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_images` (
`image_id` int(11) NOT NULL,
  `showlist_id` int(11) NOT NULL,
  `image_extid` varchar(255) DEFAULT NULL,
  `album_extid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_medium` varchar(255) DEFAULT NULL,
  `image_big` text,
  `image_title` varchar(255) DEFAULT NULL,
  `image_description` text,
  `image_link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `custom_data` tinyint(1) DEFAULT '0',
  `sync` tinyint(1) DEFAULT '0',
  `image_size` varchar(25) DEFAULT NULL,
  `exif_data` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `lrfic_imageshow_images`
--

INSERT INTO `lrfic_imageshow_images` (`image_id`, `showlist_id`, `image_extid`, `album_extid`, `image_small`, `image_medium`, `image_big`, `image_title`, `image_description`, `image_link`, `ordering`, `custom_data`, `sync`, `image_size`, `exif_data`) VALUES
(9, 2, '5809749154429913618', '5809749151874927265', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s144/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s144/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s1024/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', '30 St Mary Axe', '30 St Mary Axe, also known as "the Gherkin", is a skyscraper  in London''s financial district completed in December 2003, with height of 180 meters and 41 floors.', '', 1, 1, 0, '', 'Canon/Canon EOS 5D Mark II, 1/320, f/9.0, 28mm, ISO-100, no flash'),
(10, 2, '5809749155796473266', '5809749151874927265', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s144/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s144/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s1024/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'Roman Catholic', 'This is a Roman Catholic basilica and national shrine on the west slope of Mount Royal in Montreal, Quebec. It is Canada''s largest church.', '', 2, 1, 0, '', 'Canon/Canon EOS 5D, 1/800, f/4.0, 17mm, ISO-100, no flash'),
(11, 2, '5809749159985003058', '5809749151874927265', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s144/architecture-cathedral-church-city.jpg', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s144/architecture-cathedral-church-city.jpg', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s1024/architecture-cathedral-church-city.jpg', 'York Minster Cathedral', 'York Minster is a cathedral in York, England. It''s one of the world''s most magnificent cathedrals.', '', 3, 1, 0, '', 'Canon/Canon EOS 5D Mark II, 1/30, f/11.0, 28mm, ISO-500, no flash'),
(12, 2, '5809749175467659826', '5809749151874927265', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s144/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s144/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s1024/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'Bridge of Sighs', 'The Bridge of Sighs , designed by Henry Hutchinson, is a bridge crosses the River Cam. It''s belong to St John''s College of Cambridge University.', '', 4, 1, 0, '', 'Panasonic/DMC-FZ50, 1/200, f/5.6, 7mm, ISO-100, no flash'),
(13, 2, '5809749176329649570', '5809749151874927265', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s144/eiffel.jpg', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s144/eiffel.jpg', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s1024/eiffel.jpg', ' Eiffel Tower', 'The Eiffel Tower, located on the Champ de Mars in Paris, is global cultural icon of France and one of the most typical structures in the world.', '', 5, 1, 0, '', 'EASTMAN KODAK COMPANY/KODAK EASYSHARE Z710 ZOOM DIGITAL CAMERA, 1/320, f/4.0, 6mm, ISO-64'),
(14, 2, '5809749182060786210', '5809749151874927265', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s144/enormous%252520gate%252520columnar%252520walhalla.jpg', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s144/enormous%252520gate%252520columnar%252520walhalla.jpg', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s1024/enormous%252520gate%252520columnar%252520walhalla.jpg', 'Enormous GateColumnar Walhalla', 'The Walhalla is a hall of fame that honors famous people in German history The hall is housed in a neo-classical building above the Danube River, Germany.', '', 6, 1, 0, '', 'Panasonic/DMC-FZ18, 1/200, f/4.0, 4mm, ISO-100, no flash'),
(15, 2, '5809749190437834146', '5809749151874927265', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s144/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s144/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s1024/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'The Reichstag Dome', 'The Reichstag dome designed by architect Norman Foster is a glass dome constructed on top of the rebuilt Reichstag building in Berlin.', '', 7, 1, 0, '', 'SONY/DSC-P200, 1/60, f/2.8, 7mm, ISO-100, no flash'),
(16, 2, '5809749198003611618', '5809749151874927265', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s144/westminster.jpg', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s144/westminster.jpg', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s1024/westminster.jpg', 'Westminster Abbey Church', 'Westminster Abbey is a large Gothic church in London, United Kingdom. This is the place where British royal weddings, coronation and burial site are taken place.', '', 8, 1, 0, '', 'Canon/Canon EOS 5D Mark II, 1/80, f/2.0, 24mm, ISO-100, no flash'),
(17, 1, '5577120441401771282', '5546013748892494193', 'http://lh6.ggpht.com/-vBIPhCV3dos/TWXpfhtShRI/AAAAAAAAA00/iisUAWdGLQs/s144/color-yellow.jpg', 'http://lh6.ggpht.com/-vBIPhCV3dos/TWXpfhtShRI/AAAAAAAAA00/iisUAWdGLQs/s144/color-yellow.jpg', 'http://lh6.ggpht.com/-vBIPhCV3dos/TWXpfhtShRI/AAAAAAAAA00/iisUAWdGLQs/s1024/color-yellow.jpg', 'Yellow Color', '', 'index.php?option=com_content&view=article&id=68&Itemid=626', 1, 1, 0, '', ''),
(18, 1, '5577120438071978674', '5546013748892494193', 'http://lh4.ggpht.com/-Fj4pHDGbtOs/TWXpfVTZ6rI/AAAAAAAAA0w/L02XQdhbxWg/s144/color-green.jpg', 'http://lh4.ggpht.com/-Fj4pHDGbtOs/TWXpfVTZ6rI/AAAAAAAAA0w/L02XQdhbxWg/s144/color-green.jpg', 'http://lh4.ggpht.com/-Fj4pHDGbtOs/TWXpfVTZ6rI/AAAAAAAAA0w/L02XQdhbxWg/s1024/color-green.jpg', 'Green Color', '', 'index.php?option=com_content&view=article&id=68&Itemid=625', 6, 1, 0, '', ''),
(19, 1, '5577120448165228514', '5546013748892494193', 'http://lh5.ggpht.com/-tUcRmlm_noY/TWXpf650r-I/AAAAAAAAA04/vGiG2J-jn24/s144/color-orange.jpg', 'http://lh5.ggpht.com/-tUcRmlm_noY/TWXpf650r-I/AAAAAAAAA04/vGiG2J-jn24/s144/color-orange.jpg', 'http://lh5.ggpht.com/-tUcRmlm_noY/TWXpf650r-I/AAAAAAAAA04/vGiG2J-jn24/s1024/color-orange.jpg', 'Orange Color', '', 'index.php?option=com_content&view=article&id=68&Itemid=622', 2, 1, 0, '', ''),
(20, 1, '5577120453747651618', '5546013748892494193', 'http://lh3.ggpht.com/-6Hbfn_tdU_E/TWXpgPsxtCI/AAAAAAAAA08/NK01zUZuHrI/s144/color-pink.jpg', 'http://lh3.ggpht.com/-6Hbfn_tdU_E/TWXpgPsxtCI/AAAAAAAAA08/NK01zUZuHrI/s144/color-pink.jpg', 'http://lh3.ggpht.com/-6Hbfn_tdU_E/TWXpgPsxtCI/AAAAAAAAA08/NK01zUZuHrI/s1024/color-pink.jpg', 'Pink Color', '', 'index.php?option=com_content&view=article&id=68&Itemid=627', 3, 1, 0, '', ''),
(21, 1, '5577120457958800066', '5546013748892494193', 'http://lh5.ggpht.com/-NJfqoN0foiA/TWXpgfYyusI/AAAAAAAAA1A/MA2OisUoJWg/s144/color-red.jpg', 'http://lh5.ggpht.com/-NJfqoN0foiA/TWXpgfYyusI/AAAAAAAAA1A/MA2OisUoJWg/s144/color-red.jpg', 'http://lh5.ggpht.com/-NJfqoN0foiA/TWXpgfYyusI/AAAAAAAAA1A/MA2OisUoJWg/s1024/color-red.jpg', 'Red Color', '', 'index.php?option=com_content&view=article&id=68&Itemid=623', 4, 1, 0, '', ''),
(22, 1, '5577120827114998914', '5546013748892494193', 'http://lh4.ggpht.com/-jsSsWohoiA4/TWXp1-mfTII/AAAAAAAAA1E/K92nM9OYiJY/s144/color-cyan.jpg', 'http://lh4.ggpht.com/-jsSsWohoiA4/TWXp1-mfTII/AAAAAAAAA1E/K92nM9OYiJY/s144/color-cyan.jpg', 'http://lh4.ggpht.com/-jsSsWohoiA4/TWXp1-mfTII/AAAAAAAAA1E/K92nM9OYiJY/s1024/color-cyan.jpg', 'Cyan Color', '', 'index.php?option=com_content&view=article&id=68&Itemid=624', 5, 1, 0, '', ''),
(23, 3, '5546026437179476850', '5546013748892494193', 'http://lh3.ggpht.com/-_YsZag8t4Fg/TPdxqRcCC3I/AAAAAAAAAy0/PC4rI2-_hRg/s144/image2.jpg', 'http://lh3.ggpht.com/-_YsZag8t4Fg/TPdxqRcCC3I/AAAAAAAAAy0/PC4rI2-_hRg/s144/image2.jpg', 'http://lh3.ggpht.com/-_YsZag8t4Fg/TPdxqRcCC3I/AAAAAAAAAy0/PC4rI2-_hRg/s1024/image2.jpg', 'Outstanding Docs & Support', 'Even when the template is deadly easy to use, we still provide very comprehensive documentation package of video and PDF documents.', 'index.php?option=com_content&view=article&id=101&Itemid=497', 2, 1, 0, '', ''),
(24, 3, '5546026437784555666', '5546013748892494193', 'http://lh3.ggpht.com/-Dn701Uw_uW8/TPdxqTsS0JI/AAAAAAAAAyw/fU7UWAGJlOY/s144/image1.jpg', 'http://lh3.ggpht.com/-Dn701Uw_uW8/TPdxqTsS0JI/AAAAAAAAAyw/fU7UWAGJlOY/s144/image1.jpg', 'http://lh3.ggpht.com/-Dn701Uw_uW8/TPdxqTsS0JI/AAAAAAAAAyw/fU7UWAGJlOY/s1024/image1.jpg', 'Beautiful Design', 'JSN Dome has incredibly beautiful clean design with ultra flexible layout built-up from 36 module positions. The combination of 6 colors variations, 5 menu styles and 6 module styles results in a really remarkable website.', 'https://picasaweb.google.com/10156017359index.php?option=com_content&view=article&id=101&Itemid=4976944116173/JSNDomeDemoWebsite#5546026437784555666', 1, 1, 0, '', ''),
(25, 3, '5546026439118367842', '5546013748892494193', 'http://lh4.ggpht.com/-C4m_BLxbg8w/TPdxqYqTLGI/AAAAAAAAAy4/eowsZaNFucY/s144/image4.jpg', 'http://lh4.ggpht.com/-C4m_BLxbg8w/TPdxqYqTLGI/AAAAAAAAAy4/eowsZaNFucY/s144/image4.jpg', 'http://lh4.ggpht.com/-C4m_BLxbg8w/TPdxqYqTLGI/AAAAAAAAAy4/eowsZaNFucY/s1024/image4.jpg', 'Dead-easy Configuration', 'You will be surprised how such a capable template can be so easily handled. Majority of template features are conveniently managed by over 55 template parameters.', 'index.php?option=com_content&view=article&id=101&Itemid=497', 3, 1, 0, '', ''),
(26, 3, '5546026442745980578', '5546013748892494193', 'http://lh6.ggpht.com/-Zr4ARSHtvzU/TPdxqmLMJqI/AAAAAAAAAy8/BkCQlAByvEw/s144/image5.jpg', 'http://lh6.ggpht.com/-Zr4ARSHtvzU/TPdxqmLMJqI/AAAAAAAAAy8/BkCQlAByvEw/s144/image5.jpg', 'http://lh6.ggpht.com/-Zr4ARSHtvzU/TPdxqmLMJqI/AAAAAAAAAy8/BkCQlAByvEw/s1024/image5.jpg', 'Cost Effective Solution', 'All the benefits is available for you for just 39$. Our ultimate goal is to offer you a solution that in turns must bring you much more profit.', 'index.php?option=com_content&view=article&id=101&Itemid=497', 4, 1, 0, '', ''),
(27, 3, '5546026737145855138', '5546013748892494193', 'http://lh3.ggpht.com/-jNFyEllPYNs/TPdx7u5lvKI/AAAAAAAAAzA/cz5mey4EK_M/s144/image6.jpg', 'http://lh3.ggpht.com/-jNFyEllPYNs/TPdx7u5lvKI/AAAAAAAAAzA/cz5mey4EK_M/s144/image6.jpg', 'http://lh3.ggpht.com/-jNFyEllPYNs/TPdx7u5lvKI/AAAAAAAAAzA/cz5mey4EK_M/s1024/image6.jpg', 'Stable Feature Rich Core', 'For us, JSN Dome is not just a template, but whole piece of software for which we spent more then 2 years. As the result you get ultra stable template with native RTL support.', 'index.php?option=com_content&view=article&id=101&Itemid=497', 5, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_log`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_log` (
`log_id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `time_created` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `lrfic_imageshow_log`
--

INSERT INTO `lrfic_imageshow_log` (`log_id`, `user_id`, `url`, `result`, `screen`, `action`, `time_created`) VALUES
(1, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showlist', 'Sample gallery images', 'showlist', 'modify', '2012-11-19 09:54:34'),
(2, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Color Variations', 'addimages', 'any', '2012-11-19 09:56:36'),
(3, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Color Variations', 'addimages', 'any', '2012-11-19 09:56:40'),
(4, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Color Variations', 'addimages', 'any', '2012-11-19 09:56:42'),
(5, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Color Variations', 'addimages', 'any', '2012-11-19 09:56:44'),
(6, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Color Variations', 'addimages', 'any', '2012-11-19 09:56:46'),
(7, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showlist', 'Color Variations', 'showlist', 'modify', '2012-11-19 10:01:01'),
(8, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showlist', 'Main Promo Images', 'showlist', 'add', '2012-11-19 10:01:40'),
(9, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Main Promo Images', 'addimages', 'any', '2012-11-19 10:02:27'),
(10, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Main Promo Images', 'addimages', 'any', '2012-11-19 10:02:30'),
(11, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Main Promo Images', 'addimages', 'any', '2012-11-19 10:02:32'),
(12, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Main Promo Images', 'addimages', 'any', '2012-11-19 10:02:34'),
(13, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'Main Promo Images', 'addimages', 'any', '2012-11-19 10:02:38'),
(14, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showlist', 'Main Promo Images', 'showlist', 'modify', '2012-11-19 10:04:29'),
(15, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'JSN ImageShow presentation - Theme Grid', 'showcase', 'modify', '2012-11-19 10:06:11'),
(16, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'Frontpage slideshow', 'showcase', 'modify', '2012-11-19 10:07:16'),
(17, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'Sample Gallery', 'showcase', 'add', '2012-11-19 10:08:11'),
(18, 42, '/joomlashine/website/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'Theme Carousel', 'showcase', 'add', '2012-11-26 07:31:25'),
(19, 42, '/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'Theme Flow', 'showcase', 'add', '2013-01-28 05:07:57'),
(20, 42, '/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'Theme Strip Vertical', 'showcase', 'add', '2013-01-28 05:09:23'),
(21, 42, '/demo/joomla-templates/jsn_dome/j30/pro/administrator/index.php?option=com_imageshow&controller=showcase', 'Theme Strip Horizontal', 'showcase', 'add', '2013-01-28 05:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_showcase`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_showcase` (
`showcase_id` int(11) unsigned NOT NULL,
  `showcase_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `general_overall_width` char(30) DEFAULT NULL,
  `general_overall_height` char(30) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `lrfic_imageshow_showcase`
--

INSERT INTO `lrfic_imageshow_showcase` (`showcase_id`, `showcase_title`, `published`, `ordering`, `general_overall_width`, `general_overall_height`, `date_created`, `date_modified`) VALUES
(1, 'Frontpage slideshow', 1, 1, '100%', '250', '2011-10-10 04:48:15', '2012-11-19 10:11:10'),
(2, 'JSN ImageShow presentation - Theme Grid', 1, 3, '100%', '240', '2011-10-10 04:49:15', '2012-11-19 10:11:11'),
(3, 'Sample Gallery', 1, 2, '100%', '450', '2012-11-19 10:11:11', '2012-11-19 10:11:38'),
(4, 'Theme Carousel', 1, 4, '100%', '200', '2012-11-26 07:11:25', '2012-11-26 07:11:51'),
(5, 'Theme Flow', 1, 5, '100%', '200', '2013-01-28 05:01:57', '2013-01-28 05:01:36'),
(6, 'Theme Strip Vertical', 1, 6, '100%', '400', '2013-01-28 05:01:23', '2013-01-28 05:01:18'),
(7, 'Theme Strip Horizontal', 1, 7, '100%', '390', '2013-01-28 05:01:44', '2013-01-28 07:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_showlist`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_showlist` (
`showlist_id` int(11) NOT NULL,
  `showlist_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `override_title` tinyint(1) DEFAULT '0',
  `override_description` tinyint(1) DEFAULT '0',
  `override_link` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `description` text,
  `showlist_link` text,
  `alter_autid` int(11) DEFAULT '0',
  `date_create` datetime DEFAULT NULL,
  `image_source_type` varchar(45) DEFAULT '',
  `image_source_name` varchar(45) DEFAULT '',
  `image_source_profile_id` int(11) DEFAULT '0',
  `authorization_status` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `image_loading_order` char(30) DEFAULT NULL,
  `show_exif_data` char(100) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lrfic_imageshow_showlist`
--

INSERT INTO `lrfic_imageshow_showlist` (`showlist_id`, `showlist_title`, `published`, `override_title`, `override_description`, `override_link`, `ordering`, `access`, `hits`, `description`, `showlist_link`, `alter_autid`, `date_create`, `image_source_type`, `image_source_name`, `image_source_profile_id`, `authorization_status`, `date_modified`, `image_loading_order`, `show_exif_data`) VALUES
(1, 'Color Variations', 1, 0, 0, 0, 1, 1, 0, '', '', 0, '2011-10-10 04:52:39', 'external', 'picasa', 1, 0, '0000-00-00 00:00:00', 'forward', 'no'),
(2, 'Sample gallery images', 1, 0, 0, 0, 2, 1, 0, '', '', 0, '2011-10-10 04:53:37', 'external', 'picasa', 2, 0, '0000-00-00 00:00:00', 'forward', 'no'),
(3, 'Main Promo Images', 1, 0, 0, 0, 3, 1, 0, '', 'index.php?option=com_content&view=article&id=101&Itemid=497', 0, '0000-00-00 00:00:00', 'external', 'picasa', 4, 0, '0000-00-00 00:00:00', 'forward', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_source_profile`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_source_profile` (
`external_source_profile_id` int(11) NOT NULL,
  `external_source_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lrfic_imageshow_source_profile`
--

INSERT INTO `lrfic_imageshow_source_profile` (`external_source_profile_id`, `external_source_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_carousel`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_carousel` (
`theme_id` int(11) unsigned NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '',
  `image_height` char(150) DEFAULT '',
  `image_border_thickness` char(150) DEFAULT '5',
  `image_border_color` char(150) DEFAULT '#666666',
  `view_angle` char(150) DEFAULT '0',
  `transparency` char(150) DEFAULT '50',
  `scale` char(150) DEFAULT '35',
  `diameter` char(150) DEFAULT '50',
  `animation_duration` char(150) DEFAULT '0.6',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_drag_action` char(150) DEFAULT 'no',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `navigation_presentation` char(150) DEFAULT 'show',
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_imageshow_theme_carousel`
--

INSERT INTO `lrfic_imageshow_theme_carousel` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_color`, `view_angle`, `transparency`, `scale`, `diameter`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_drag_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `navigation_presentation`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'thumbnails', '', '', '5', '#666666', '0', '50', '35', '50', '0.6', 'show_original_image', 'current_browser', 'horizontal', 'no', 'yes', '#000000', '75', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'show', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_classic_flash`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_classic_flash` (
`theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_transition_type_fit` char(30) DEFAULT '',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_transition_type_expand` char(30) DEFAULT '',
  `imgpanel_img_motion_type_expand` char(30) DEFAULT '',
  `imgpanel_img_zooming_type_expand` char(30) DEFAULT 'center',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_img_show_image_shadow_fit` char(30) DEFAULT 'yes',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `imgpanel_show_watermark` char(30) DEFAULT 'no',
  `imgpanel_watermark_path` char(255) DEFAULT NULL,
  `imgpanel_watermark_position` char(30) DEFAULT '',
  `imgpanel_watermark_offset` char(30) DEFAULT NULL,
  `imgpanel_watermark_opacity` char(30) DEFAULT NULL,
  `imgpanel_show_overlay_effect` char(30) DEFAULT 'no',
  `imgpanel_overlay_effect_type` char(30) DEFAULT NULL,
  `imgpanel_show_inner_shawdow` char(30) DEFAULT 'yes',
  `imgpanel_inner_shawdow_color` char(30) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_collapsible_position` char(30) DEFAULT 'yes',
  `thumbpanel_thumb_browsing_mode` char(30) DEFAULT '',
  `thumbpanel_show_thumb_status` char(30) DEFAULT 'yes',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_presentation_mode` char(30) DEFAULT '',
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_enable_big_thumb` char(30) DEFAULT 'yes',
  `thumbpanel_big_thumb_size` char(30) DEFAULT NULL,
  `thumbpanel_thumb_row` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumb_opacity` char(30) DEFAULT '50',
  `thumbpanel_big_thumb_color` char(30) DEFAULT NULL,
  `thumbpanel_thumb_border` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_panel_position` char(30) DEFAULT '',
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_image_navigation` char(30) DEFAULT 'yes',
  `toolbarpanel_slideshow_player` char(30) DEFAULT 'yes',
  `toolbarpanel_show_fullscreen_switcher` char(30) DEFAULT 'yes',
  `toolbarpanel_show_tooltip` char(30) DEFAULT 'no',
  `slideshow_hide_thumb_panel` char(30) DEFAULT 'yes',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_hide_image_navigation` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_show_status` char(30) DEFAULT 'yes',
  `slideshow_enable_ken_burn_effect` char(30) DEFAULT 'yes',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_classic_javascript`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_classic_javascript` (
`theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lrfic_imageshow_theme_classic_javascript`
--

INSERT INTO `lrfic_imageshow_theme_classic_javascript` (`theme_id`, `imgpanel_presentation_mode`, `imgpanel_img_click_action_fit`, `imgpanel_img_open_link_in_fit`, `imgpanel_img_click_action_expand`, `imgpanel_img_open_link_in_expand`, `imgpanel_bg_type`, `imgpanel_bg_value`, `thumbpanel_show_panel`, `thumbpanel_panel_position`, `thumbpanel_active_state_color`, `thumbpanel_thumnail_normal_state`, `thumbpanel_border`, `thumbpanel_thumb_width`, `thumbpanel_thumb_height`, `thumbpanel_thumnail_panel_color`, `infopanel_panel_position`, `infopanel_presentation`, `infopanel_bg_color_fill`, `infopanel_panel_click_action`, `infopanel_open_link_in`, `infopanel_show_title`, `infopanel_title_css`, `infopanel_show_des`, `infopanel_des_lenght_limitation`, `infopanel_des_css`, `infopanel_show_link`, `infopanel_link_css`, `toolbarpanel_presentation`, `slideshow_slide_timing`, `slideshow_auto_play`, `slideshow_looping`, `general_round_corner_radius`, `general_border_color`, `general_background_color`, `general_border_stroke`) VALUES
(3, 'expand-out', 'no-action', 'new-browser', 'open-image-link', 'new-browser', 'solid-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '50', '#000000', 'top', 'on', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', 'auto', '6', 'no', 'yes', '0', '#cccccc', '#efefef', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_classic_parameters`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_classic_parameters` (
`id` int(11) NOT NULL,
  `general_swf_library` tinyint(1) DEFAULT '0',
  `root_url` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_flow`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_flow` (
`theme_id` int(11) unsigned NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '150',
  `image_height` char(150) DEFAULT '150',
  `image_border_thickness` char(150) DEFAULT '3',
  `image_border_rounded_corner` char(150) DEFAULT '2',
  `image_border_color` char(150) DEFAULT '#eeeeee',
  `image_effect` char(150) DEFAULT 'yes',
  `transparency` char(150) DEFAULT '50',
  `background_type` char(150) DEFAULT 'transparent',
  `background_color` char(150) DEFAULT '#ffffff',
  `container_side_fade` char(150) DEFAULT 'white',
  `animation_duration` char(150) DEFAULT '1',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_keyboard_action` char(150) DEFAULT 'yes',
  `enable_mouse_wheel_action` char(150) DEFAULT 'yes',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_imageshow_theme_flow`
--

INSERT INTO `lrfic_imageshow_theme_flow` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_rounded_corner`, `image_border_color`, `image_effect`, `transparency`, `background_type`, `background_color`, `container_side_fade`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_keyboard_action`, `enable_mouse_wheel_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'original_images', '185', '150', '3', '2', '#eeeeee', 'yes', '75', 'solid_color', '#ffffff', 'white', '1', 'show_original_image', 'current_browser', 'horizontal', 'yes', 'yes', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_grid`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_grid` (
`theme_id` int(11) unsigned NOT NULL,
  `img_layout` char(5) DEFAULT 'fixed',
  `background_color` char(30) DEFAULT '#ffffff',
  `thumbnail_width` int(11) DEFAULT '50',
  `thumbnail_height` int(11) DEFAULT '50',
  `thumbnail_space` int(11) DEFAULT '10',
  `thumbnail_border` int(11) DEFAULT '3',
  `thumbnail_rounded_corner` int(11) DEFAULT '3',
  `thumbnail_border_color` char(30) DEFAULT '#ffffff',
  `thumbnail_shadow` char(1) DEFAULT '1',
  `image_source` char(150) DEFAULT 'thumbnail',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_show_description` char(150) DEFAULT 'yes',
  `show_close` char(150) DEFAULT 'yes',
  `show_thumbs` char(150) DEFAULT 'yes',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_imageshow_theme_grid`
--

INSERT INTO `lrfic_imageshow_theme_grid` (`theme_id`, `img_layout`, `background_color`, `thumbnail_width`, `thumbnail_height`, `thumbnail_space`, `thumbnail_border`, `thumbnail_rounded_corner`, `thumbnail_border_color`, `thumbnail_shadow`, `image_source`, `show_caption`, `caption_show_description`, `show_close`, `show_thumbs`, `click_action`, `open_link_in`) VALUES
(1, 'fixed', '#ffffff', 144, 99, 10, 3, 3, '#ffffff', '1', 'thumbnail', 'yes', 'yes', 'yes', 'yes', 'show_original_image', 'current_browser');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_profile`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_profile` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `showcase_id` int(11) NOT NULL DEFAULT '0',
  `theme_name` varchar(255) NOT NULL DEFAULT '',
  `theme_style_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_imageshow_theme_profile`
--

INSERT INTO `lrfic_imageshow_theme_profile` (`theme_id`, `showcase_id`, `theme_name`, `theme_style_name`) VALUES
(1, 2, 'themegrid', ''),
(3, 3, 'themeclassic', 'javascript'),
(1, 1, 'themeslider', ''),
(1, 4, 'themecarousel', ''),
(1, 5, 'themeflow', ''),
(1, 6, 'themestrip', ''),
(2, 7, 'themestrip', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_slider`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_slider` (
`theme_id` int(11) unsigned NOT NULL,
  `img_transition_effect` char(30) DEFAULT 'random',
  `toolbar_navigation_arrows_presentation` char(30) DEFAULT 'show-on-mouse-over',
  `toolbar_slideshow_player_presentation` char(30) DEFAULT 'hide',
  `caption_show_caption` char(30) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_description_css` text,
  `caption_link_css` text,
  `caption_caption_opacity` char(30) DEFAULT '75',
  `caption_title_show` char(30) DEFAULT 'yes',
  `caption_description_show` char(30) DEFAULT 'yes',
  `caption_link_show` char(30) DEFAULT 'no',
  `slideshow_slide_timming` int(11) DEFAULT '6',
  `slideshow_pause_on_mouseover` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'yes',
  `thumnail_panel_position` char(30) DEFAULT 'right',
  `thumbnail_panel_presentation` char(30) DEFAULT 'show',
  `thumbnail_presentation_mode` char(30) DEFAULT 'numbers',
  `thumbnail_active_state_color` char(30) DEFAULT '#CC3333',
  `caption_position` char(150) DEFAULT 'bottom',
  `click_action` char(150) DEFAULT 'no_action',
  `open_link_in` char(150) DEFAULT 'current_browser'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_imageshow_theme_slider`
--

INSERT INTO `lrfic_imageshow_theme_slider` (`theme_id`, `img_transition_effect`, `toolbar_navigation_arrows_presentation`, `toolbar_slideshow_player_presentation`, `caption_show_caption`, `caption_title_css`, `caption_description_css`, `caption_link_css`, `caption_caption_opacity`, `caption_title_show`, `caption_description_show`, `caption_link_show`, `slideshow_slide_timming`, `slideshow_pause_on_mouseover`, `slideshow_auto_play`, `thumnail_panel_position`, `thumbnail_panel_presentation`, `thumbnail_presentation_mode`, `thumbnail_active_state_color`, `caption_position`, `click_action`, `open_link_in`) VALUES
(1, 'random', 'show-on-mouse-over', 'show-on-mouse-over', 'show', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', '75', 'yes', 'yes', 'no', 6, 'yes', 'yes', 'right', 'show', 'numbers', '#CC3333', 'bottom', 'no_action', 'current_browser');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_imageshow_theme_strip`
--

CREATE TABLE IF NOT EXISTS `lrfic_imageshow_theme_strip` (
`theme_id` int(11) unsigned NOT NULL,
  `slideshow_sliding_speed` char(150) NOT NULL DEFAULT '500',
  `image_orientation` char(150) NOT NULL DEFAULT 'horizontal',
  `image_width` char(150) NOT NULL DEFAULT '130',
  `image_height` char(150) NOT NULL DEFAULT '130',
  `image_space` char(150) NOT NULL DEFAULT '10',
  `image_border` char(150) NOT NULL DEFAULT '3',
  `image_rounded_corner` char(150) NOT NULL DEFAULT '3',
  `image_shadow` char(150) NOT NULL DEFAULT 'no-shadow',
  `image_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `image_click_action` char(150) NOT NULL DEFAULT 'no-action',
  `image_source` char(150) NOT NULL DEFAULT 'thumbnail',
  `show_caption` char(150) NOT NULL DEFAULT 'yes',
  `caption_background_color` char(150) NOT NULL DEFAULT '#000000',
  `caption_opacity` char(150) NOT NULL DEFAULT '75',
  `caption_show_title` char(150) NOT NULL DEFAULT 'yes',
  `caption_title_css` text NOT NULL,
  `caption_show_description` char(150) NOT NULL DEFAULT 'yes',
  `caption_description_length_limitation` char(150) NOT NULL DEFAULT '50',
  `caption_description_css` text NOT NULL,
  `container_type` char(150) NOT NULL DEFAULT 'elastislide-default',
  `container_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `container_border` char(150) NOT NULL DEFAULT '1',
  `container_round_corner` char(150) NOT NULL DEFAULT '0',
  `container_background_color` char(150) NOT NULL DEFAULT '#ffffff',
  `container_side_fade` char(150) NOT NULL DEFAULT 'white',
  `open_link_in` char(150) DEFAULT 'current_browser'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lrfic_imageshow_theme_strip`
--

INSERT INTO `lrfic_imageshow_theme_strip` (`theme_id`, `slideshow_sliding_speed`, `image_orientation`, `image_width`, `image_height`, `image_space`, `image_border`, `image_rounded_corner`, `image_shadow`, `image_border_color`, `image_click_action`, `image_source`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `container_type`, `container_border_color`, `container_border`, `container_round_corner`, `container_background_color`, `container_side_fade`, `open_link_in`) VALUES
(1, '500', 'vertical', '180', '130', '10', '0', '3', 'no-shadow', '#eeeeee', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'elastislide-default', '#cccccc', '1', '0', '#ffffff', 'white', 'current_browser'),
(2, '500', 'horizontal', '185', '130', '10', '3', '2', 'no-shadow', '#eeeeee', 'show-original-image', 'thumbnail', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'elastislide-default', '#cccccc', '1', '0', '#ffffff', 'white', 'current_browser');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_imageshow_config`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_imageshow_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_jsn_imageshow_config`
--

INSERT INTO `lrfic_jsn_imageshow_config` (`name`, `value`) VALUES
('last_ask_for_review', '1361241608'),
('live_update_checking', '0'),
('live_update_last_check', '1367033495'),
('live_update_last_notified', '{"name":"JSN ImageShow","identified_name":"ext_imageshow","description":"JSN ImageShow PRO allows you to have UNLIMITED number of showlist, showcase and images in each showlist.","version":"4.5.5","thumbnail":"http://www.joomlashine.com/images/content/joomla-extensions/jsn-imageshow/introduction/jsn-imageshow-banner.jpg","url":"http://www.joomlashine.com/joomla-extensions/jsn-imageshow-details.html","tags":"2.5;3.0","editions":[{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":" FREE","authentication":false,"related_product":[]}]}'),
('review_popup', '0');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_imageshow_messages`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_imageshow_messages` (
`msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lrfic_jsn_imageshow_messages`
--

INSERT INTO `lrfic_jsn_imageshow_messages` (`msg_id`, `msg_screen`, `published`, `ordering`) VALUES
(1, 'LAUNCH_PAD', 1, 1),
(2, 'LAUNCH_PAD', 1, 2),
(3, 'SHOWLISTS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_poweradmin_config`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_poweradmin_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_jsn_poweradmin_config`
--

INSERT INTO `lrfic_jsn_poweradmin_config` (`name`, `value`) VALUES
('admin_session_timeout_warning', '1'),
('allow_uninstall', '1'),
('custom_assets_enhance', '1'),
('enable_adminbar', '1'),
('history_count', '30'),
('last_ask_for_review', '1373014911'),
('live_update_checking', '0'),
('live_update_last_check', '1367033495'),
('live_update_last_notified', '{"name":"JSN PowerAdmin","identified_name":"ext_poweradmin","description":"JSN PowerAdmin extension","version":"1.3.1","thumbnail":"http://www.joomlashine.com/images/products_image/thumb-poweradmin.png","url":"http://www.joomlashine.com/joomla-extensions/jsn-poweradmin-details.html","tags":"2.5;3.0","edition":"FREE","authentication":false,"related_product":[]}'),
('live_update_notification', '0'),
('logo_file', 'administrator/components/com_poweradmin/assets/images/logo-jsnpoweradmin.png'),
('logo_link', 'http://localhost/jsn_dome_pro_j3x/administrator/index.php'),
('logo_slogan', 'You can change logo image and link in section ‘Configuration’ => ‘Global Parameters’'),
('logo_target', '_blank'),
('position_chooser_enhance', '1'),
('review_popup', '0'),
('script_movement', '0'),
('search_coverage', '["articles","categories","components","modules","plugins","menus","templates","users"]'),
('search_coverage_order', 'articles,categories,components,modules,plugins,menus,templates,users'),
('search_result_num', '10'),
('search_trashed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_poweradmin_favourite`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_poweradmin_favourite` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `icon` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_poweradmin_history`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_poweradmin_history` (
`id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `object_key` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL,
  `component` varchar(255) NOT NULL,
  `list_page` varchar(255) NOT NULL,
  `list_page_params` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `form` text NOT NULL,
  `form_hash` varchar(32) NOT NULL,
  `params` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `css` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `visited` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `lrfic_jsn_poweradmin_history`
--

INSERT INTO `lrfic_jsn_poweradmin_history` (`id`, `user_id`, `object_key`, `object_id`, `component`, `list_page`, `list_page_params`, `title`, `description`, `form`, `form_hash`, `params`, `icon`, `css`, `is_deleted`, `visited`) VALUES
(1, 42, 'option=com_imageshow&view=showlist&layout=form&task=edit', 9, '', '', '', 'Sample gallery images', '', '', '', 'option=com_imageshow&controller=showlist&task=edit&cid[]=9#', '', '', 0, 1353318868),
(2, 42, 'option=com_imageshow&view=showlist&layout=form&task=edit', 4, '', '', '', 'Color Variations', '', '', '', 'option=com_imageshow&controller=showlist&task=edit&cid[]=4', '', '', 0, 1353319232),
(3, 42, 'option=com_imageshow&view=showlist&layout=form&task=edit', 3, '', '', '', 'JSN ImageShow presentation - Theme Grid', '', '', '', 'option=com_imageshow&controller=showlist&task=edit&cid[]=3', '', '', 0, 1353319558),
(4, 42, 'option=com_imageshow&view=showcase&layout=form&task=edit', 1, '', '', '', 'Frontpage slideshow', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', '', '', 'option=com_imageshow&controller=showcase&task=edit&cid[]=1', '', '', 0, 1353319628),
(5, 42, 'option=com_imageshow&view=showcase&layout=form&task=edit', 3, '', '', '', 'Sample Gallery', '', '', '', 'option=com_imageshow&controller=showcase&task=edit&cid[]=3', '', '', 0, 1353319723),
(6, 42, 'option=com_templates&view=style&layout=edit', 132, 'Template Manager', 'Template Manager', '', 'JSN_Dome_PRO - Default', '', '', '', 'option=com_templates&task=style.edit&id=132', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 0, 1353377715),
(7, 42, 'option=com_content&view=article&layout=edit', 101, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'JSN Dome Product Tour', '\n#hidden-content {\n    display: none;\n}\n.placeholder-text {\n    color: #fff;\n    width: 500px;\n    max-width: 100%;\n    text-align: center;\n    padding: 40px 20px;\n    margin: 20px auto;\n    background: #307451\\9;\n    background:radial-gradient(#22a563,#3', '', '', 'option=com_content&view=article&layout=edit&id=101', '', 'icon-16-article', 0, 1385354821),
(8, 42, 'option=com_content&view=article&layout=edit', 99, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'JSN Dome Features', 'We have been developing JSN Dome for more than a year and that tremendous amount of time allowed us to roll out some really advanced stuff. For us, the word “advanced” is not just fancy marketing buzz, but really something that you will not likely see', '', '', 'option=com_content&view=article&layout=edit&id=99', '', 'icon-16-article', 0, 1353923184),
(9, 42, 'option=com_content&view=article&layout=edit', 69, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Font Styles', 'Font Face\nJSN Dome provides 3 font face options for major website types. Each font face option is actually a combination of 2 font types: one for content text, another for heading text and main navigation text.\nSpecial Font (powered by Google Font Directo', '', '', 'option=com_content&view=article&layout=edit&id=69', '', 'icon-16-article', 0, 1363253348),
(10, 42, 'option=com_content&view=article&layout=edit', 105, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Form Builder', 'JSN UniForm will bring you the new indulgence since you find out it is the easiest-to-use form extension for your site. Contact us, survey and job application are just some of thousand forms that this single extension can help you to create and control. B', '', '', 'option=com_content&view=article&layout=edit&id=105', '', 'icon-16-article', 0, 1385354914),
(11, 42, 'option=com_content&view=article&layout=edit', 79, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Image Gallery', 'The image gallery you see on this website is another cool product JSN ImageShow from JoomlaShine.com. This product is shipped with component, module and content plugin, so you can place it anywhere on every website.\nOn this page you can see how JSN ImageS', '', '', 'option=com_content&view=article&layout=edit&id=79', '', 'icon-16-article', 0, 1385354635),
(12, 42, 'option=com_content&view=article&layout=edit', 84, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Painless Configuration ', 'All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find 40+ template parameters arranged into logical groups for convenient operation.\n\n\nSet parameters without confusion\nMost parameters are ', '', '', 'option=com_content&view=article&layout=edit&id=84', '', 'icon-16-article', 0, 1353923392),
(13, 42, 'option=com_content&view=article&layout=edit', 71, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Layout', 'Module Positions\nJSN Dome provides 36+ module positions allowing you to have multiple layout configurations. All module positions are collapsible which means if you don''t publish any modules in some positions it will not take any blank spaces leaving thos', '', '', 'option=com_content&view=article&layout=edit&id=71', '', 'icon-16-article', 0, 1353923402),
(14, 42, 'option=com_content&view=article&layout=edit', 70, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'JSN Dome Design ', 'JSN Dome has incredibly beautiful clean design with ultra flexible layout built-up from 37+ module positions. The combination of 6 colors variation, 5 menu styles and 6 module styles results in a really remarkable website. In addition, super rich typograp', '', '', 'option=com_content&view=article&layout=edit&id=70', '', 'icon-16-article', 0, 1353923450),
(15, 42, 'option=com_modules&view=module&layout=edit', 118, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Versatile Layout', '\nJSN Dome provides 36+ module positions allowing you to have multiple layout configurations.\nMore about layout&hellip;', '', '', 'option=com_modules&view=module&layout=edit&id=118', '', 'icon-16-article', 0, 1353923469),
(16, 42, 'option=com_content&view=article&layout=edit', 82, 'Article Manager', 'Article Manager', 'option=com_content&view=articles', 'Responsive Layout', 'All JoomlaShine.com templates have special built-in design optimized for modern mobile devices iPhone, Android and Windows Mobile-based. The responsive design is applied for both Joomla 2.5 and 3.0 versions, and for Pro Edition only.\nUnlike other template', '', '', 'option=com_content&view=article&layout=edit&id=82', '', 'icon-16-article', 0, 1363253442),
(17, 42, 'option=com_menus&view=item&layout=edit', 486, '', '', '', 'Responsive Layout', '', '', '', 'option=com_menus&view=item&layout=edit&id=486', '', '', 0, 1353923877),
(18, 42, 'option=com_modules&view=module&layout=edit', 165, '', '', '', 'JSN imageshow Module', '', '', '', 'option=com_modules&view=module&layout=edit&id=165', '', '', 1, 1354240839),
(19, 42, 'option=com_modules&view=module&layout=edit', 168, '', '', '', 'JSN UniForm Module', '', '', '', 'option=com_modules&view=module&layout=edit&id=168', '', '', 1, 1354240855),
(20, 42, 'option=com_modules&view=module&layout=edit', 61, '', '', '', 'Articles Categories', '', '', '', 'option=com_modules&view=module&layout=edit&id=61', '', '', 0, 1354240860),
(21, 42, 'option=com_modules&view=module&layout=edit', 69, '', '', '', 'Articles Category', '', '', '', 'option=com_modules&view=module&layout=edit&id=69', '', '', 0, 1354240991),
(22, 42, 'option=com_modules&view=module&layout=edit', 167, '', '', '', 'JSN imageshow', '', '', '', 'option=com_modules&view=module&layout=edit&id=167', '', '', 0, 1354241160),
(23, 42, 'option=com_modules&view=module&layout=edit', 123, '', '', '', 'Native RTL Support', 'Native RTL support means that every elements on the page is mirror swapped including layout, menus, typography, icons...everything.\nRead more...', '', '', 'option=com_modules&view=module&layout=edit&id=123', '', '', 0, 1354245079),
(24, 42, 'option=com_templates&view=style&layout=edit', 133, 'Template Manager', 'Template Manager', '', 'JSN_Dome_PRO - Default', '', '', '', 'option=com_templates&task=style.edit&id=133', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 0, 1362730222),
(25, 42, 'option=com_uniform&view=form&layout=edit', 1, '', '', '', 'JoomlaShine Survey', '', '', '', 'option=com_uniform&view=form&layout=edit&form_id=1', '', '', 0, 1365734254),
(26, 42, 'option=com_content&view=article&layout=edit', 106, '', '', '', 'JSN PowerAdmin - Managing your Joomla website can’t be easier', 'JSN PowerAdmin makes your Joomla  administration process easy and enjoyable. It allows you to have full control  under your Joomla website in single screen. You can manipulate elements by  using convenient GUI with drag-n-drop operations.\n\nAdmin Bar\nAdmin', '', '', 'option=com_content&view=article&layout=edit&id=106', '', '', 0, 1356411568),
(27, 42, 'option=com_menus&view=item&layout=edit', 754, '', '', '', 'Joomla Management', '', '', '', 'option=com_menus&view=item&layout=edit&id=754', '', '', 0, 1356411601),
(28, 42, 'option=com_modules&view=module&layout=edit', 101, '', '', '', 'JoomlaShine copyright', 'Copyright © 2008 - 2013 JoomlaShine.com. All rights reserved. Many features demonstrated on this website are available only in JSN Dome PRO Edition.\nAll stock photos used on this JSN Dome demo site are only for demo purposes and not included in the templ', '', '', 'option=com_modules&view=module&layout=edit&id=101', '', '', 0, 1359349109),
(29, 42, 'option=com_modules&view=module&layout=edit', 170, '', '', '', 'Reviews on JED', 'JSN UniForm has been approved on Joomla Extension Directory. Let''s see how Joomla community enjoy it. If you use JSN UniForm, please post a rating and a review at the Joomla! Extensions Directory\n', '', '', 'option=com_modules&view=module&layout=edit&id=170', '', '', 0, 1359604473),
(30, 42, 'option=com_modules&view=module&layout=edit', 171, 'Template Manager', 'Template Manager', 'option=com_templates&view=styles', 'Free Joomla! Ebook', '', '', '', 'option=com_templates&task=style.edit&id=171', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 0, 1362713842);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_poweradmin_menu_assets`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_poweradmin_menu_assets` (
  `menuId` int(16) NOT NULL,
  `assets` text,
  `type` enum('css','js') NOT NULL DEFAULT 'css',
  `legacy` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_config`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_jsn_uniform_config`
--

INSERT INTO `lrfic_jsn_uniform_config` (`name`, `value`) VALUES
('form_style', ''),
('last_ask_for_review', '1378958704'),
('live_update_checking', '0'),
('live_update_last_check', '1367033495'),
('live_update_last_notified', '{"name":"JSN UniForm","identified_name":"ext_uniform","description":" JSN UniForm PRO allows you to create form","version":"1.4.0","thumbnail":"http://www.joomlashine.com/images/content/joomla-extensions/jsn-uniform/introduction/jsn-uniform-banner.jpg","url":"http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html","tags":"2.5;3.0;3.1","editions":[{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"FREE","authentication":false,"related_product":[]}]}'),
('position_form_1', '{"identifier":["sd_3","sd_4","sd_5","sd_6","sd_7","sd_8","sd_9","sd_10","data_ip","data_country","data_browser","data_os","data_created_by","data_created_at"],"field_view":"&quot;sd_3&quot;,&quot;sd_4&quot;,&quot;sd_5&quot;,&quot;data_country&quot;,&quot;data_created_by&quot;,&quot;data_created_at&quot;"}'),
('review_popup', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_data`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_data` (
`data_id` int(10) unsigned NOT NULL,
  `form_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `data_ip` varchar(40) NOT NULL,
  `data_country` varchar(45) NOT NULL,
  `data_country_code` varchar(4) NOT NULL,
  `data_browser` varchar(45) NOT NULL,
  `data_browser_version` varchar(20) NOT NULL,
  `data_browser_agent` varchar(255) NOT NULL,
  `data_os` varchar(45) NOT NULL,
  `data_created_by` int(10) unsigned NOT NULL COMMENT '0 = Guest',
  `data_created_at` datetime NOT NULL,
  `data_state` tinyint(1) unsigned NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_jsn_uniform_data`
--

INSERT INTO `lrfic_jsn_uniform_data` (`data_id`, `form_id`, `user_id`, `data_ip`, `data_country`, `data_country_code`, `data_browser`, `data_browser_version`, `data_browser_agent`, `data_os`, `data_created_by`, `data_created_at`, `data_state`) VALUES
(1, 1, 0, '118.70.131.15', '', '', 'Chrome', '29.0.1547.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', 'Windows', 0, '2013-09-12 11:10:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_emails`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_emails` (
`email_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `email_name` varchar(70) DEFAULT NULL,
  `email_address` varchar(255) NOT NULL,
  `email_state` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lrfic_jsn_uniform_emails`
--

INSERT INTO `lrfic_jsn_uniform_emails` (`email_id`, `form_id`, `user_id`, `email_name`, `email_address`, `email_state`) VALUES
(3, 1, 0, '', 'example.admin@joomlashine.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_fields`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_fields` (
`field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_type` varchar(45) NOT NULL,
  `field_identifier` varchar(255) NOT NULL,
  `field_title` varchar(255) DEFAULT NULL,
  `field_instructions` text,
  `field_position` varchar(50) NOT NULL,
  `field_ordering` int(10) unsigned NOT NULL DEFAULT '0',
  `field_settings` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `lrfic_jsn_uniform_fields`
--

INSERT INTO `lrfic_jsn_uniform_fields` (`field_id`, `form_id`, `field_type`, `field_identifier`, `field_title`, `field_instructions`, `field_position`, `field_ordering`, `field_settings`) VALUES
(3, 1, 'choices', 'who_are_you_tell_more_about_yourself', 'Who are you? Tell more about yourself', '', 'left', 0, '{"id":3,"identify":"who_are_you_tell_more_about_yourself","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"},"type":"choices","position":"left"}'),
(4, 1, 'choices', 'your_joomla_experience_', 'Your Joomla experience: ', '', 'left', 1, '{"id":4,"identify":"your_joomla_experience_","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"},"type":"choices","position":"left"}'),
(5, 1, 'choices', 'which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_', 'Which forum extension do you like to see JoomlaShine template compatible with?', '', 'left', 2, '{"id":5,"identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"},"type":"choices","position":"left"}'),
(6, 1, 'choices', 'about_sample_data_which_way_do_you_prefer_', 'About sample data, which way do you prefer?', 'Sample data installation on your current website \r\nWhole Joomla! site installation package with sample data ', 'left', 3, '{"id":6,"identify":"about_sample_data_which_way_do_you_prefer_","options":{"label":"About sample data, which way do you prefer?","instruction":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"},"type":"choices","position":"left"}'),
(7, 1, 'paragraph-text', 'what_makes_you_love_joomlashine_template_', 'What makes you love JoomlaShine template?', '', 'left', 4, '{"id":7,"identify":"what_makes_you_love_joomlashine_template_","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(8, 1, 'paragraph-text', 'which_are_the_things_you_don_t_like_in_joomlashine_template_', 'Which are the things you don''t like in JoomlaShine template?', '', 'left', 5, '{"id":8,"identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(9, 1, 'choices', 'which_features_do_you_like_to_see_joomlashine_template_have_', 'Which features do you like to see JoomlaShine template have?', '', 'left', 6, '{"id":9,"identify":"which_features_do_you_like_to_see_joomlashine_template_have_","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"},"type":"choices","position":"left"}'),
(10, 1, 'paragraph-text', 'what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_', 'What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ', '', 'left', 7, '{"id":10,"identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"},"type":"paragraph-text","position":"left"}');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_forms`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_forms` (
`form_id` int(11) NOT NULL,
  `form_title` varchar(255) NOT NULL,
  `form_description` text,
  `form_layout` varchar(50) NOT NULL,
  `form_theme` varchar(45) NOT NULL,
  `form_style` text NOT NULL,
  `form_notify_submitter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `form_post_action` tinyint(1) unsigned NOT NULL COMMENT '1 = Redirect to URL; 2 = Redirect to Menu Item; 3 = Show Article; 4 = Show custom message',
  `form_post_action_data` text NOT NULL,
  `form_captcha` tinyint(1) unsigned NOT NULL,
  `form_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `form_access` int(11) NOT NULL,
  `form_created_by` int(10) unsigned NOT NULL,
  `form_created_at` datetime DEFAULT NULL,
  `form_modified_by` int(10) unsigned DEFAULT '0',
  `form_modified_at` datetime DEFAULT NULL,
  `form_checked_out` int(10) unsigned DEFAULT '0',
  `form_checked_out_time` datetime DEFAULT NULL,
  `form_submission_cout` int(11) NOT NULL,
  `form_last_submitted` datetime NOT NULL,
  `form_submitter` varchar(255) NOT NULL,
  `form_type` int(11) NOT NULL,
  `form_settings` longtext NOT NULL,
  `form_edit_submission` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_jsn_uniform_forms`
--

INSERT INTO `lrfic_jsn_uniform_forms` (`form_id`, `form_title`, `form_description`, `form_layout`, `form_theme`, `form_style`, `form_notify_submitter`, `form_post_action`, `form_post_action_data`, `form_captcha`, `form_state`, `form_access`, `form_created_by`, `form_created_at`, `form_modified_by`, `form_modified_at`, `form_checked_out`, `form_checked_out_time`, `form_submission_cout`, `form_last_submitted`, `form_submitter`, `form_type`, `form_settings`, `form_edit_submission`) VALUES
(1, 'JoomlaShine Survey', '', 'default', '', '{"layout":"Vertical","theme":"jsn-style-light","themes_style":{"light":"","dark":""},"themes":["light","dark"],"background_color":"","background_active_color":"","border_thickness":"0","border_color":"","border_active_color":"","rounded_corner_radius":"0","padding_space":"0","margin_space":"0","text_color":"","font_type":" Verdana, Geneva, sans-serif","font_size":"0","field_background_color":"","field_border_color":"","field_shadow_color":"","field_text_color":"","message_error_background_color":"","message_error_text_color":"","button_position":"btn-toolbar","button_submit_color":"btn btn-primary","button_reset_color":"btn","custom_css":""}', 0, 4, 'Woo hoo! Thanks for filling out the form! Please use the code JSNPOLL5 to get $5 OFF when purchase any products from JoomlaShine. (Not applied with other promotions)', 1, 1, 1, 820, '2012-11-26 04:02:47', 42, '2013-09-12 11:07:20', 0, '0000-00-00 00:00:00', 1, '2013-09-12 11:10:52', '', 1, '{"form_btn_next_text":"NEXT","form_btn_prev_text":"PREV","form_btn_submit_text":"SUBMIT","form_btn_reset_text":"Reset","form_state_btn_reset_text":"No"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_form_pages`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_form_pages` (
`page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `page_content` text NOT NULL,
  `page_template` text NOT NULL,
  `page_container` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_jsn_uniform_form_pages`
--

INSERT INTO `lrfic_jsn_uniform_form_pages` (`page_id`, `page_title`, `form_id`, `page_content`, `page_template`, `page_container`) VALUES
(1, 'Page 1', 1, '[{"id":3,"type":"choices","position":"left","identify":"who_are_you_tell_more_about_yourself","label":"Who are you? Tell more about yourself","instruction":"","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"}},{"id":4,"type":"choices","position":"left","identify":"your_joomla_experience_","label":"Your Joomla experience: ","instruction":"","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"}},{"id":5,"type":"choices","position":"left","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"}},{"id":6,"type":"choices","position":"left","identify":"about_sample_data_which_way_do_you_prefer_","label":"About sample data, which way do you prefer?","instruction":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","options":{"label":"About sample data, which way do you prefer?","instruction":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"}},{"id":7,"type":"paragraph-text","position":"left","identify":"what_makes_you_love_joomlashine_template_","label":"What makes you love JoomlaShine template?","instruction":"","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"}},{"id":8,"type":"paragraph-text","position":"left","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"}},{"id":9,"type":"choices","position":"left","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","label":"Which features do you like to see JoomlaShine template have?","instruction":"","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"}},{"id":10,"type":"paragraph-text","position":"left","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"}}]', '{"dataField":[{"field_type":"choices","field_id":"sb_3","field_title":"Who are you? Tell more about yourself","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":3,\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"options\\":{\\"label\\":\\"Who are you? Tell more about yourself\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Individual building website for himself \\",\\"checked\\":false},{\\"text\\":\\"Freelancer building websites for clients \\",\\"checked\\":false},{\\"text\\":\\"Web Agency \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_4","field_title":"Your Joomla experience: ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":4,\\"identify\\":\\"your_joomla_experience_\\",\\"options\\":{\\"label\\":\\"Your Joomla experience: \\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Less than 1 year \\",\\"checked\\":false},{\\"text\\":\\"1-3 years \\",\\"checked\\":false},{\\"text\\":\\"More than 3 years \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"your_joomla_experience_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_5","field_title":"Which forum extension do you like to see JoomlaShine template compatible with?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":5,\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"options\\":{\\"label\\":\\"Which forum extension do you like to see JoomlaShine template compatible with?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Kunena \\",\\"checked\\":false},{\\"text\\":\\"Dicussions \\",\\"checked\\":false},{\\"text\\":\\"Ninjaboard \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_6","field_title":"About sample data, which way do you prefer?","field_instructions":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","field_position":"left","field_settings":"{\\"id\\":6,\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\",\\"options\\":{\\"label\\":\\"About sample data, which way do you prefer?\\",\\"instruction\\":\\"Sample data installation on your current website \\\\r\\\\nWhole Joomla! site installation package with sample data \\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Sample data installation on your current website \\",\\"checked\\":false},{\\"text\\":\\"Whole Joomla! site installation package with sample data \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_7","field_title":"What makes you love JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":7,\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"What makes you love JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_8","field_title":"Which are the things you don''t like in JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":8,\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"Which are the things you don''t like in JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_9","field_title":"Which features do you like to see JoomlaShine template have?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":9,\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"options\\":{\\"label\\":\\"Which features do you like to see JoomlaShine template have?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Control Panel to customize style \\",\\"checked\\":false},{\\"text\\":\\"Mega menu \\",\\"checked\\":false},{\\"text\\":\\"More icons to use \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_10","field_title":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":10,\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\",\\"options\\":{\\"label\\":\\"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? \\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"3\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"}],"dataFormLayout":"default"}', '[[{"columnName":"left","columnClass":"span12"}]]');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_messages`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_messages` (
`msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_submissions_1`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_submissions_1` (
  `data_id` int(11) DEFAULT NULL,
  `sb_3` varchar(255) DEFAULT NULL,
  `sb_4` varchar(255) DEFAULT NULL,
  `sb_5` varchar(255) DEFAULT NULL,
  `sb_6` varchar(255) DEFAULT NULL,
  `sb_7` text,
  `sb_8` text,
  `sb_9` varchar(255) DEFAULT NULL,
  `sb_10` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_jsn_uniform_submissions_1`
--

INSERT INTO `lrfic_jsn_uniform_submissions_1` (`data_id`, `sb_3`, `sb_4`, `sb_5`, `sb_6`, `sb_7`, `sb_8`, `sb_9`, `sb_10`) VALUES
(1, 'Freelancer building websites for clients ', 'Less than 1 year ', 'Dicussions ', 'Sample data installation on your current website ', 'I love Joomla templates', 'I love Joomla templates', 'Mega menu ', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_jsn_uniform_templates`
--

CREATE TABLE IF NOT EXISTS `lrfic_jsn_uniform_templates` (
`template_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `template_notify_to` tinyint(1) NOT NULL COMMENT '0 = Send to submitter; 1 = Send to added emails',
  `template_from` varchar(75) NOT NULL,
  `template_reply_to` varchar(75) NOT NULL,
  `template_subject` varchar(255) NOT NULL,
  `template_message` longtext NOT NULL,
  `template_attach` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lrfic_jsn_uniform_templates`
--

INSERT INTO `lrfic_jsn_uniform_templates` (`template_id`, `form_id`, `template_notify_to`, `template_from`, `template_reply_to`, `template_subject`, `template_message`, `template_attach`) VALUES
(1, 1, 1, '', '', 'New answer for JoomlaShine survey - From Demo site', '', ''),
(2, 1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_attachments`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_attachments` (
`id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_categories`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_categories` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lrfic_k2_categories`
--

INSERT INTO `lrfic_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'Joomla templates', 'joomla-templates', '', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"1","num_primary_columns":"1","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(3, 'Joomla tutorials', 'joomla-tutorials', '', 0, 0, 1, 1, 2, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"1","num_primary_columns":"1","primaryImgSize":"Medium","num_secondary_items":"1","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(4, 'Joomla news', 'joomla-news', '', 0, 0, 1, 1, 3, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"1","num_primary_columns":"1","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(6, 'Joomla extensions', 'joomla-extensions', '', 0, 0, 1, 1, 4, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"1","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"1","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_comments`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_comments` (
`id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lrfic_k2_comments`
--

INSERT INTO `lrfic_k2_comments` (`id`, `itemID`, `userID`, `userName`, `commentDate`, `commentText`, `commentEmail`, `commentURL`, `published`) VALUES
(5, 8, 0, 'Benk4c', '2012-09-17 08:02:37', 'I just loved the extention the first time I installed. Made backend administration so easy.', 'tamnl@bravebits.vn', '', 1),
(4, 8, 0, 'jmuehleisen', '2012-09-17 07:38:03', 'This extension just keeps getting better and better with each update, and I install it on all of my sites. It simplifies site administration and adds some very useful "power tools."', 'tamnl@bravebits.vn', '', 1),
(3, 4, 0, 'Waheed', '2012-09-17 03:43:32', 'Great effort! You guyz are really giving a lot to the community of developers!', 'tamnl@bravebits.vn', 'http://facebook.com/joomlashine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_extra_fields` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_extra_fields_groups` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_items`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_items` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `lrfic_k2_items`
--

INSERT INTO `lrfic_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(2, 'Joomla 3.0 - What is it about? Let''s discover!', 'joomla-30-what-is-it-about?-lets-discover', 4, 1, '<p>As scheduled, <a href="http://community.joomla.org/blogs/community/1586-version-30-is-coming.html" target="_blank">Joomla 3.0</a> is going to  release in the September, I believe that a lot of Joomla users are curious about  this new Joomla version and the hot keywords are “Bootstrap” and “responsive  design”. Understand that concerns, I did research deeply about Joomla 3.0 and  would like to share with you my knowledge in this blog.</p>\n<p>Moreover, I will  introduce you the <a href="http://joomla30.joomlashine.com/" target="_blank">Joomla 3.0 demo</a> that  JoomlaShine team created for Joomla users as a playground for those who love to  discover its features. </p>\n <p align="center"><img src="images/content/k2-component/joomla30.png" /></p>\n   <p align="center"><em>Joomla 3.0 will be released in September, 2012</em></p>\n', '\n<h2>Joomla 3.0 brand new features unleashed</h2>\n<p>The new version 3.0 will provide the new markup and UI,  based on the Bootstrap HTML/CSS/JS framework from Twitter. These changes will  create a great overall User Experience for Joomla site administrators, thereby  giving site users the same. Also, beside Mootools, jQuery will be included to  Joomla 3.0, give developers more strength to create friendlier back-end user  interface. Many new features are implemented which provides a impressive  improvement versus current 2.5 version. I will introduce some main new features  as follow:</p>\n<h3>Joomla 3.0 – New installer</h3>\n<p>Using the words “Short and simple” to describe about Joomla  3.0 installation process is truly right, since there are only 3 steps to  install a Joomla 3.0 package. </p>\n <p align="center"><img src="images/content/k2-component/new-installer-interface.png" /></p>\n  <p align="center"><em>New installer interface</em></p>\n<h3>Twitter Bootstrap</h3>\n<p><a href="http://twitter.github.com/bootstrap/" target="_blank">Bootstrap</a> is a  free collection of tools for creating websites and applications. It contains simple  and flexible HTML, JavaScript and CSS-based design templates for typography,  forms, buttons, charts, navigation and other interface components. </p>\n<p align="center"><img src="images/content/k2-component/bootstrap.png" /></p>\n  <p align="center"><em>Twitter Bootstrap – will be included in Joomla 3.0</em></p>\n<p>Also, <a href="http://twitter.github.com/bootstrap/" target="_blank">Bootstrap</a> provides the basic common CSS for developers. They can use common user  interface elements like buttons, layouts, alert messages, modal boxes, dropdown  menus, tooltips, icons, tables, form elements and more from Bootstrap  framework. </p>\n<h3>Great User Experience</h3>\n<p>The Joomla 3.0 is known as friendly User Experience (UX)  since it is based on Bootstrap. That means the template and extension  developers can  build the products which  base on the same set of markup standards or consistent markup. You know, controlling  your website would be much easier when all extensions look and work in a  unified fashion. So you don’t have to get to be familiar with new interface on  each extension.</p>\n<h3>Mobile  Responsive Design</h3>\n<p><strong>You might know the “responsive” feature from some Joomla templates. Now,  it is included in Joomla 3.0, too. With the <a href="http://www.joomlashine.com/joomla-templates/jsn-gruve-joomla-template-details.html" target="_blank">responsive design</a></strong>,  you can control your Joomla site with mobile devices with ease. A responsive  site will resize to the screen it is presented on any browsers or devices.  Moreover, since it is responsive, it  presented beautifully on mobile not only front-end, but also the back-end. This  helps users manage the administrator easily on the mobile. For example, all the  lists are put in one page that makes it more simply to control.  </p>\n<h3>Drag and Drop*</h3>\n<p>The drag and drop feature is applied to make the item  management more easily. All the old arrows on the ordering column have been  removed, now you can drag-and-drop item freely in its categories to change the  ordering of item list. </p>\n<p>To use Drag & Drop feature, you must click on the 1st combo  box at top right of table list, choose Ordering for “Sort table by”. Now you  can see the “drag” icon at top right column of each item, move over to drag  item and drop on position that you want.</p>\n <p align="center"><img src="images/content/k2-component/drag-drop.png" /></p>\n <p align="center"><em>The drag and drop feature</em></p>\n<h3>Tooltip*</h3>\n<p>The tooltip in Joomla 3.0 is Boostrap based and provides a  very easy way to use it in 3rd-extension.</p>\n<p align="center"><img src="images/content/k2-component/tooltip.png" /></p>\n  <p align="center"><em>The Tooltip display in Joomla 3.0</em></p>\n<h3>Context menu* </h3>\n<p>Lists in Joomla 3.0 will have the “context menu” for each  item, which helps you to access quickly to basic functions such as Edit,  Publish/ Unpublish, Delete, Set default etc.</p>\n <p align="center"><img src="images/content/k2-component/contextmenu.png" /></p>\n <p align="center"><em>The Context menu in Joomla 3.0</em></p>\n<p><em>All the new features with (*) are contributed to Joomla core  by Joomlashine team. We’ll happy to give our small effort to bring a more  powerful and easy to use Joomla to all users.</em></p>\n<h2>There is a playground for you, check it out!</h2>\n <p align="center"><img src="images/content/k2-component/jsnboot.png" /></p>\n   <p align="center"><em>JSN Boot – a template based on Bootstrap framework and Joomla 3.0 core features</em></p>\n<p>We’ve created a <a href="http://joomla30.joomlashine.com/" target="_blank">Joomla 3.0 demo</a> site which called JSN Boot – a template based on Bootstrap framework and  Joomla 3.0 core features. JSN Boot could be a joyful playground for you to discover  more about Joomla 3.0 before its official release. After the first week  launched, it is welcomed with a lot of nice feedback from Joomla users.</p>\n <p>Up to now, there are about 3,500 users try the JSN Boot, so  how about you? Go to <a href="http://joomla30.joomlashine.com/administrator/" target="_blank">JSN Boot administrator</a> to try it out, and all comments for JSN Boot or any discussion about  Joomla 3.0 are welcome.</p>\n <p><strong style="color: #FF0000;">Note:</strong></p>\n<ul>\n <li>JSN Boot is the first FREE template for Joomla 3.0 and  will be released very soon for you to download.</li>\n<li>It is no problem if you don''t want to upgrade to Joomla 3.0. Joomla 2.5 will be supported until 2014.</li>\n</ul>', '', '', '[]', '', '2012-09-17 02:20:11', 43, '', 0, '0000-00-00 00:00:00', '2012-09-17 07:58:46', 43, '2012-09-17 02:20:11', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 6, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"1","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', 'Joomla 3.0 changes with new features such as new installer, Twitter bootstrap, mobile responsive design and more. Joomlashine contributes drag & drop, tooltip and context menu features so far.', 'robots=\nauthor=', '', '', '*'),
(3, 'Joomla Day 2012 in Germany - Come to meet and talk!', 'joomla-day-2012-in-germany-come-to-meet-and-talk', 4, 1, '<p>From the start of 2012 until now, <strong><a href="http://www.joomlashine.com/blog/joomla-days-2012.html" target="_blank">Joomla Day 2012</a></strong> has taken place in 17 cities around the world. The next stop is in Berlin, Germany in October 05-06, 2012. If you have not come to previous 17 Joomla Days yet, this is another chance for you to join one of the biggest annual <strong>Joomla events</strong>. If you came to one, two, or all of them, I think you will not want to miss this 18th Joomla day. So, this time, what will we have?</p>\n<p align="center"><img src="images/content/k2-component/preview%20image.png" alt="Joomla Day 2012 Germany | Joomla Day"/></p><p align="center"><em>Joomla Day 2012 Germany</em></p>\n<h3>2 days and many hot topics</h3>\n', '\n<p>There will be 2 days for you to take part in: </p>\n<ul type="disc">\n <li>The business day will be held on 5 October with the participation of agencies, professional Joomla users, and developers. </li>\n <li>The community day will happen on 6 October, with all Joomla users. </li>\n</ul>\n<p align="center"><img src="images/content/k2-component/businessday.png" alt="The program of Business day | Joomla Day" /></p>\n<p align="center"><em><a href="http://www.joomladay.de/programm/infos-zum-businessday.html" rel="nofollow" target="_blank">The program of Business day</a></em></p>\n<p align="center"><img src="images/content/k2-component/communityday.png" alt="The program of Community day | Joomla Day" height="579" border="0" width="600" /></p>\n<p align="center"><em><a href="http://www.joomladay.de/programm/infos-zum-communityday.html" rel="nofollow" target="_blank">The program of Community day</a></em></p>\n<p><em>*<u>Note</u></em>: <em>These programs are provisional, so there may still be some changes</em> </p>\n<p>You can come any time from 9AM to 6PM on those 2 days in Joomla Day Germany. </p>\n<p>Currently, you can <a href="http://www.joomladay.de/thema-vorschlagen.html" rel="nofollow" target="_blank">suggest</a> any topic you like to the organizer or <a href="http://www.joomladay.de/component/user/login.html?return=aHR0cDovL3lvb2NsaWVudHMuZGUvamRkMjAxMS9pbmRleC5waHA%2Fb3B0aW9uPWNvbV96b28mdmlldz1zdWJtaXNzaW9uJmxheW91dD1zdWJtaXNzaW9uJkl0ZW1pZD0yNDE%3D" rel="nofollow" target="_blank">sign up</a> as a speaker. Who knows? Your topic might get many ''likes'' and you could be a speaker at Joomla Day. Are you excited?</p>\n<p>Or, if you don''t have any idea about topics, you can also contribute to this event just by voting for one or more <a href="http://www.joomladay.de/programm/themenvorschlaege.html" rel="nofollow" target="_blank">suggested topics</a> in the Joomla Day 2012 Germany website. </p>\n<p>Among these topics, there are some notable topics which will be presented by popular Joomla bloggers and experts such as Brian Teeman, Nicholas K. Dionysopoulos, Hagen Graf, etc.</p>\n<h3>Where and how?</h3>\n<p><em>CLUB OFFICE Berlin01</em></p>\n<p><em>Bundesallee 171-175</em></p>\n<p><em>10715 Berlin</em></p>\n<p>"How to get there?" This is really a big question, right?! Don''t worry; you can follow these steps:</p>\n<ul>\n <li>Get your passport and visa ready <a href="http://www.auswaertiges-amt.de/sid_29395F57E21A93784A24DFB54E849462/EN/EinreiseUndAufenthalt/Visabestimmungen_node.html" target="_blank">if required</a></li>\n <li><a href="http://www.joomladay.de/home/item/jd12de-ticket-kaufen.html" rel="nofollow" target="_blank">Buy ticket online</a>. There are 3 kinds of ticket:\n <ul>\n  <li><em>Joomla all-day ticket</em>: Price: <strong>€74.00</strong> including VAT 19.00% (€11.82)</li>\n  <li><em>Joomla BusinessDay ticket</em>: Price: <strong>€69.00</strong> including VAT 19.00% (€11.02)</li>\n  <li><em>Joomla CommunityDay ticket</em>: Price: <strong>€10.00</strong> including VAT 19.00% (€1.60)</li>\n </ul>\n </li>\n <li>Book plane tickets to Germany or travel to Joomla Day German by train, car, etc.</li>\n <li>Find a good hotel close to the location of Joomla Day. There is a <a href="http://www.joomladay.de/fakten/lokation-und-uebernachtung.html?view=item" rel="nofollow" target="_blank">small list</a> of hotels within a 3km radius for you to consider. The price range of these hotels is from <strong>€59</strong> to <strong> €94</strong>.</li>\n <li>Take note of the location where Joomla Day will happen</li>\n</ul>\n<h3>How to contribute to Joomla Day 2012 Germany?</h3>\n<p>Joomla Day 2012 Germany creates many favorable opportunities for your company to contribute and find sponsors in this great event. This is a chance for you to promote yourself, your services and products, and introduce them to many Joomla users. There are 2 ways for you to contribute:</p>\n<ul>\n <li>Contribute as a <strong>sponsor</strong>. They offer different ways of <a href="http://www.joomladay.de/sponsoren.html" rel="nofollow" target="_blank">sponsorship</a>: Platinum, Gold, Silver and Bronze sponsors.</li>\n <li>You also could contribute to promote this event by <strong>getting the Jooma! Day 2012 Germany banners</strong> shown on your website. </li>\n</ul>\n<p>Easy!</p>\n<p align="center"><img src="images/content/k2-component/JD12DE_banner_75x75.png" alt="Joomla Day 2012 Germany Banner 75x75 | Joomla Day" height="72" border="0" width="72" /></p>\n<p align="center"><em>Joomla Day 2012 Germany Banner 75x75</em></p>\n<p align="center"><img src="images/content/k2-component/JD12DE_banner_150x250.png" alt="Joomla Day 2012 Germany Banner 150x250 | Joomla Day" height="350" border="0" width="250" /></p>\n<p align="center"><em>Joomla Day 2012 Germany Banner 150x250</em></p>\n<p align="center"><img src="images/content/k2-component/JD12DE_banner_728x90.png" alt="Joomla Day 2012 Germany Banner 728x90 | Joomla Day" height="74" border="0" width="600" /></p>\n<p align="center"><em>Joomla Day 2012 Germany Banner 728x90</em></p>\n<p>You can get the banner codes and more banner sizes <a href="http://www.joomladay.de/fakten/jd12de-banners-zum-herunterladen.html" rel="nofollow" target="_blank">here</a>.</p>\n<h2>In conclusion</h2>\n<p>If you are interested in this Joomla event and don''t want to miss this big and interesting meeting, then pack your bag and come along! It is a chance for you to get more knowledge about Joomla, find out some great things about Joomla, and make some new friends, Joomla Day 2012 Germany will welcome you.</p>\n<p>If you know anything cool and new about this event, don''t be shy about sharing it by leaving your comments right here. </p>', '', '', '[]', '', '2012-09-17 02:24:41', 43, '', 0, '0000-00-00 00:00:00', '2012-09-17 07:58:54', 43, '2012-09-17 02:24:41', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"1","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', 'The 18th Joomla day is taking place over 2 days in Berlin, Germany in October. There will have a lot of things for you to explore.', 'robots=\nauthor=', '', '', '*'),
(4, 'Free  ebook | Joomla 2.5 Made Easy - A pocket manual for Joomla newbies', 'free-ebook-|-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies', 3, 1, '<div itemscope="itemscope" itemtype="http://schema.org/Book" align="center">\n<img itemprop="image" src="images/content/k2-component/preview-free-ebook.png" /><br />\n<span itemprop="name">Joomla 2.5 Made Easy</span> -\n <link itemprop="bookFormat" href="http://schema.org/Ebook" />Ebook by <a itemprop="publisher" href="http://www.joomlashine.com">JoomlaShine</a> <br />\n<span itemprop="numberOfPages">89</span> pages <br />\n <meta itemprop="datePublished" content="2012-06-21" />\nLanguage: <span itemprop="inLanguage">English</span>\n</div>\n<p></p><p>Everybody can use <a href="http://www.joomla.org/" target="_blank">Joomla</a> to build their websites, even when they haven''t used it before. Why I am so sure of that? Because I am going to introduce a nice Joomla ebook to you. It guides Joomla newbies how to build a <a href="http://www.joomlashine.com/blog/categories/listings/joomla-25.html" target="_blank">Joomla 2.5</a> website from the scratch, easily and quickly.</p>\n<p> We wrote the ebook <strong>"Joomla 2.5 Made Easy"</strong> from a Joomla newbie point of view. Therefore, it is simple, clear and easy to follow with<strong> step-by-step guidelines</strong> and detailed figures. You need more details? Let''s take a look at the introduction infographic below</p>\n', '\n<p align="center"><a target="_blank" href="http://www.flickr.com/photos/joomlashine/7780199062/sizes/o/in/photostream/"><img src="images/content/k2-component/infographic-how-to-build-joomla-2-5-website.jpg" alt="Joomla 2.5 Made Easy" /></a></p>\n<p>Hey Joomla newbies, what are you waiting for? Get start today! You are free to download this ebook and share it with everyone. All you need to do is going to our <a href="https://www.facebook.com/joomlashine/app_190322544333196" target="_blank">Facebook</a> to see the download link. We feel really happy if you Like us for more Joomla tips and tricks after enjoying this e-book . Small action for an incredibly FREE e-book!</p>\n<p align="center"><a href="https://www.facebook.com/joomlashine/app_190322544333196" target="_blank"><img src="images/content/k2-component/download-ebook.jpg" alt="Download e - book" /> </a></p>\n<p>If you build a website successfully with this ebook, don''t  forget to tell us about your experience. All ideas to improve this ebook will be appreciated. </p>', '', '', '[]', '', '2012-09-17 02:32:15', 43, '', 0, '0000-00-00 00:00:00', '2012-09-17 07:58:10', 43, '2012-09-17 02:32:15', '0000-00-00 00:00:00', 0, 1, 1, 0, 1, '', '', '', '', 16, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"1","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', 'JoomlaShine released Joomla 2.5 Made Easy - a free e-book for Joomla newbies. Master basic Joomla and build a complete Joomla website in just 7 days', 'robots=\nauthor=', '', '', '*'),
(9, '[Infographic] 9 must-have Joomla 2.5 extensions for your website', 'infographic-9-must-have-joomla-25-extensions-for-your-website', 6, 1, '<p>One of the most coolest  advantages of Joomla is the extensible ability; you know, with 9000+ extensions  on <a target="_blank" href="http://extensions.joomla.org/">Joomla Extensions Directory</a> (JED).</p>\r\n<p>However, if you are new to <a target="_blank" href="http://www.joomlashine.com/">Joomla</a> & get confused with what  extensions are necessary for your website, take a look at the inforgraphic  about 9 must-have <a target="_blank" href="http://www.joomlashine.com/joomla-extensions.html">Joomla  2.5 extensions</a> below. Thanks to them, you can use Joomla more easily and more  securely. You can also do SEO on your website better.</p>\r\n  <p align="center"><img src="images/content/k2-component/infographic.png" alt="Infographic - 9 must-have Joomla 2.5 extesnions for your website" /></p>\r\n<p>Here you can get more details about  these extensions - <a target="_blank" href="http://www.joomlashine.com/blog/9-must-have-joomla-2.5-extensions-lets-take-a-look.html">9  must-have Joomla 2.5 extensions - Let’s take a look!</a></p>\r\n<p>All feedbacks are appreciated. You can give them in the  comments below.</p>', '', '', '', '[]', '', '2012-09-17 07:39:09', 43, '', 0, '0000-00-00 00:00:00', '2012-11-30 07:34:04', 43, '2012-09-17 07:39:09', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 3, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"1","catItemAuthor":"","catItemDateCreated":"","catItemRating":"1","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', 'Infographic about 9  must-have Joomla 2.5 extesnions for your website. With them, you can use Joomla  more easily and more securely. You can also do SEO on your website better', 'robots=\nauthor=', '', '', '*'),
(8, 'JSN PowerAdmin - Making Joomla easy and fun to use', 'jsn-poweradmin-making-joomla-easy-and-fun-to-use', 6, 1, '<p>Joomla is powerful, but is it easy to use? Some people agree with that, but some people don''t since they find it hard to start using Joomla. You know, it is not easy for a newbie to define front-end items in the back-end, change module positions, etc. Read on to find out how you can solve these problems...</p>\n<h2>JSN PowerAdmin features</h2>\n<h3>Spotlight Search</h3>\n<p align="center"><img src="images/content/k2-component/spotlight.png" border="0" alt="Spotlight Search – Search for anything instantly" /></p>\n<p align="center"><em>Spotlight Search - Search for anything instantly</em></p>\n<p>Spotlight Search helps you search for items in your website quickly. If you see a word or a phrase in the front-end and wonder where it is in the back-end, just use this function. It allows you to search in 10 areas such as Content Articles, Modules, and so on. Thanks to this, accessing and editing items is quicker than ever.</p>\n<h3>Site Manager</h3>\n<p align="center"><img src="images/content/k2-component/site-manager.png" border="0" alt="Site Manager – Manage menu, component and modules in one place"/></p>\n<p align="center"><em>Site Manager - Manage menu, component and modules in one place</em></p>\n<p>Site Manager helps you control the website content in one place. As you see, it covers Menus, Components and Modules.</p>\n<p>To change menu items and module positions, just <strong>drag-and-drop</strong>. To edit content - modify names, show or hide elements, delete, etc. - just <span class="c2">click</span>. No more comparing the front-end and the back-end content; many fewer clicks. .. Now everything is visible.</p>\n', '\n<h2> <p align="center"> And more...</p></h2>\n<p>Besides, there are some more small but helpful features that help you manage your Joomla website more easily:</p>\n<ul type="disc">\n<li><strong>Template Manager</strong>: Visually manage installed templates.</li>\n<li><strong>History</strong>: Display items you have made changes to recently.</li>\n<li><strong>Set Admin Session to Infinite</strong>: Keeps you logged in forever in your session.</li>\n</ul>\n<p>Here you can check out JSN PowerAdmin QuickStart video:</p>\n<p align="center"><iframe width="640" height="360" src="http://www.youtube.com/embed/P_o43hheYeU?list=PL6200064A0DE85CF3&amp;hl=en_US" frameborder="0" allowfullscreen></iframe></p>\n<p align="center">You can download JSN PowerAdmin for free, without registration.                                         </p>\n<p>This is our contribution towards the Joomla community. So you can download it freely, without registration. Please don’t hesitate to share your usage experience and suggestions with us. We’d love to hear them.</p>\n<p align="center"><strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin.html" target="_blank">Details / Download</a></strong></p>', '', '', '[]', '', '2012-09-17 07:14:22', 43, '', 0, '0000-00-00 00:00:00', '2012-09-17 07:53:47', 43, '2012-09-17 07:14:22', '0000-00-00 00:00:00', 0, 1, 1, 1, 1, '', '', '', '', 95, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', 'Learn what JSN PowerAdmin is and how it can help you easily manage your Joomla website.', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_rating`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_k2_rating`
--

INSERT INTO `lrfic_k2_rating` (`itemID`, `rating_sum`, `rating_count`, `lastip`) VALUES
(2, 5, 1, '192.168.1.26'),
(1, 5, 1, '192.168.1.26'),
(8, 10, 2, '192.168.1.209'),
(4, 5, 1, '192.168.1.26');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_tags`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_tags` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `lrfic_k2_tags`
--

INSERT INTO `lrfic_k2_tags` (`id`, `name`, `published`) VALUES
(1, 'Joomla ebooks', 1),
(2, 'Joomla newbies', 1),
(3, 'Joomla extension review', 1),
(4, 'Joomla template reviews', 1),
(5, 'Joomla 30', 1),
(6, 'joomla 25', 1),
(7, 'Design tools', 1),
(8, 'joomla days', 1),
(9, 'joomla infographic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_tags_xref` (
`id` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `lrfic_k2_tags_xref`
--

INSERT INTO `lrfic_k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(98, 9, 9),
(97, 6, 9),
(87, 2, 2),
(86, 5, 2),
(85, 6, 4),
(89, 8, 3),
(88, 2, 3),
(84, 1, 4),
(83, 2, 4),
(96, 3, 9),
(80, 6, 8),
(79, 3, 8),
(78, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_users`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_users` (
`id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lrfic_k2_users`
--

INSERT INTO `lrfic_k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(3, 43, 'democontent', 'm', '<p>Joomla! and Open Source fan. In spare time he writes the blog posts about Joomla Tutorials including reviews of popular Joomla Templates, Extensions and services. If you have started learning Joomla just buzz him via Skype, He would be glad to help you :).</p>\n\nTwitter: <a href="http://www.twitter.com/joomlashine">http://www.twitter.com/joomlashine</a> </br>\nFacebook: <a href="http://www.facebook.com/joomlashine">http://www.facebook.com/joomlashine</a>', '7059_profile_ftu.jpg', 'http://www.joomlashine.com', 0, '', '192.168.1.26', 'bbtuyetvt.bravebits.vn', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `lrfic_k2_user_groups` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lrfic_k2_user_groups`
--

INSERT INTO `lrfic_k2_user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'Registered', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","inheritance":0,"categories":"all"}'),
(2, 'Site Owner', '{"comment":"1","frontEdit":"1","add":"1","editOwn":"1","editAll":"1","publish":"1","inheritance":1,"categories":"all"}');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_aliases`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_aliases`
--

INSERT INTO `lrfic_kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('default', 'layout', 'category.default', 0),
('edit', 'layout', 'category.edit', 0),
('home', 'view', 'home', 1),
('joomla-ebooks', 'catid', '7', 0),
('joomla-extensions', 'catid', '6', 0),
('joomla-templates', 'catid', '5', 0),
('joomla-tips', 'catid', '8', 0),
('joomlashine-forum', 'catid', '4', 0),
('main-forum', 'catid', '1', 1),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('suggestion-box', 'catid', '3', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1),
('welcome-mat', 'catid', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_announcement`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_announcement` (
`id` int(3) NOT NULL,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_attachments`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_attachments` (
`id` int(11) NOT NULL,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_categories`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_categories` (
`id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `lrfic_kunena_categories`
--

INSERT INTO `lrfic_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`) VALUES
(1, 0, 'Main Forum', 'main-forum', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is the main forum section. It serves as a container for categories for your topics.', 'The section header is used to display additional information about the categories of topics that it contains.', '', 0, 'lastpost', 0, 0, 0, 0, 0, ''),
(2, 1, 'Welcome Mat', 'welcome-mat', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'We encourage new members to introduce themselves here. Get to know one another and share your interests.', '[b]Welcome to the Kunena forum![/b] \n\n Tell us and our members who you are, what you like and why you became a member of this site. \n We welcome all new members and hope to see you around a lot!', '', 0, 'lastpost', 1, 1, 1, 1, 1366777385, ''),
(3, 1, 'Suggestion Box', 'suggestion-box', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Have some feedback and input to share? \n Don''t be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like.', 'This is the optional category header for the Suggestion Box.', '', 1, 'lastpost', 0, 0, 0, 0, 0, ''),
(4, 0, 'JoomlaShine forum', 'joomlashine-forum', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 1, '', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is JoomlaShine forum. Here you are allowed to post topics related to JoomlaShine products.', '', '', 0, 'lastpost', 0, 0, 0, 0, 0, '{}'),
(5, 4, 'Joomla templates', 'joomla-templates', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 1, 1, '', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Discuss all the matters related to JoomlaShine templates here. ', '', '', 0, 'lastpost', 2, 2, 3, 3, 1353661478, '{"access_post":["6","2","8"],"access_reply":["6","2","8"]}'),
(6, 4, 'Joomla extensions', 'joomla-extensions', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 2, 1, '', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Discuss all the matters related to JoomlaShine extensions here', '', '', 0, 'lastpost', 1, 1, 4, 4, 1353896698, '{"access_post":["6","2","8"],"access_reply":["6","2","8"]}'),
(7, 4, 'Joomla ebooks', 'joomla-ebooks', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 3, 1, '', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Discuss all the matters related to JoomlaShine ebooks', '', '', 0, 'lastpost', 1, 1, 5, 5, 1353897478, '{"access_post":["6","2","8"],"access_reply":["6","2","8"]}'),
(8, 4, 'Joomla tips', 'joomla-tips', 0, 0, 'joomla.level', 1, 1, 1, 8, 1, 4, 1, '', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Discuss all the tips related to JoomlaShine products here', '', '', 0, 'lastpost', 0, 0, 0, 0, 0, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_configuration`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_configuration`
--

INSERT INTO `lrfic_kunena_configuration` (`id`, `params`) VALUES
(1, '{"board_title":"Kunena","email":"","board_offline":"0","offline_message":"<h2>The Forum is currently offline for maintenance.<\\/h2>\\r\\n<div>Check back soon!<\\/div>","enablerss":"1","threads_per_page":"20","messages_per_page":"6","messages_per_page_search":"15","showhistory":"1","historylimit":"6","shownew":"1","disemoticons":"0","template":"jsn_dome","showannouncement":"1","avataroncat":"0","catimagepath":"category_images","showchildcaticon":"1","rtewidth":"450","rteheight":"300","enableforumjump":"1","reportmsg":"1","username":"1","askemail":"0","showemail":"0","showuserstats":"1","showkarma":"1","useredit":"1","useredittime":"0","useredittimegrace":"600","editmarkup":"1","allowsubscriptions":"1","subscriptionschecked":"1","allowfavorites":"1","maxsubject":"50","maxsig":"300","regonly":"0","pubwrite":"0","floodprotection":"0","mailmod":"0","mailadmin":"0","captcha":"0","mailfull":"1","allowavatarupload":"1","allowavatargallery":"1","avatarquality":"75","avatarsize":"2048","imageheight":"800","imagewidth":"800","imagesize":"150","filetypes":"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2","filesize":"120","showranking":"1","rankimages":"1","userlist_rows":"30","userlist_online":"1","userlist_avatar":"1","userlist_name":"1","userlist_posts":"1","userlist_karma":"1","userlist_email":"0","userlist_joindate":"1","userlist_lastvisitdate":"1","userlist_userhits":"1","latestcategory":"","showstats":"1","showwhoisonline":"1","showgenstats":"1","showpopuserstats":"1","popusercount":"5","showpopsubjectstats":"1","popsubjectcount":"5","usernamechange":"0","showspoilertag":"1","showvideotag":"1","showebaytag":"1","trimlongurls":"1","trimlongurlsfront":"40","trimlongurlsback":"20","autoembedyoutube":"1","autoembedebay":"1","sessiontimeout":"1800","highlightcode":"0","rss_type":"topic","rss_timelimit":"month","rss_limit":"100","rss_included_categories":"","rss_excluded_categories":"","rss_specification":"rss2.0","rss_allow_html":"1","rss_author_format":"name","rss_author_in_title":"1","rss_word_count":"0","rss_old_titles":"1","rss_cache":"900","defaultpage":"recent","default_sort":"asc","sef":"1","showimgforguest":"1","showfileforguest":"1","pollnboptions":"4","pollallowvoteone":"1","pollenabled":"1","poppollscount":"5","showpoppollstats":"1","polltimebtvotes":"00:15:00","pollnbvotesbyuser":"100","pollresultsuserslist":"1","maxpersotext":"50","ordering_system":"mesid","post_dateformat":"ago","post_dateformat_hover":"datetime","hide_ip":"1","imagetypes":"jpg,jpeg,gif,png","checkmimetypes":"1","imagemimetypes":"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png","imagequality":"50","thumbheight":"32","thumbwidth":"32","hideuserprofileinfo":"put_empty","boxghostmessage":"0","userdeletetmessage":"1","latestcategory_in":"1","topicicons":"1","debug":"0","catsautosubscribed":0,"showbannedreason":"0","version_check":"1","showthankyou":"1","showpopthankyoustats":"1","popthankscount":"5","mod_see_deleted":"0","bbcode_img_secure":"text","listcat_show_moderators":"1","lightbox":"1","show_list_time":"720","show_session_type":"0","show_session_starttime":"0","userlist_allowed":"0","userlist_count_users":"1","enable_threaded_layouts":"0","category_subscriptions":"post","topic_subscriptions":"every","pubprofile":"1","thankyou_max":"10","email_recipient_count":"0","email_recipient_privacy":"bcc","email_visible_address":"","captcha_post_limit":"0","recaptcha_publickey":"","recaptcha_privatekey":"","recaptcha_theme":"white","keywords":0,"userkeywords":0,"image_upload":"registered","file_upload":"registered","topic_layout":"flat","time_to_create_page":"1","show_imgfiles_manage_profile":"1","hold_newusers_posts":"0","hold_guest_posts":"1","attachment_limit":"8","pickup_category":"0","article_display":"intro","send_emails":"1","stopforumspam_key":"","fallback_english":"1","cache":"1","cache_time":"60","ebay_affiliate_id":"5337089937","iptracking":"1","rss_feedburner_url":"","autolink":1,"access_component":1,"statslink_allowed":1,"superadmin_userlist":0,"ebay_language":0,"ebay_api_key":"","ebaylanguagecode":"en-us","plugins":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_keywords`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_keywords` (
`id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lrfic_kunena_keywords`
--

INSERT INTO `lrfic_kunena_keywords` (`id`, `name`, `public_count`, `total_count`) VALUES
(1, 'JoomlaShine', 1, 1),
(2, 'Joomla', 1, 1),
(3, 'template', 1, 1),
(4, 'provider', 1, 1),
(5, 'extension', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_keywords_map`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_keywords_map`
--

INSERT INTO `lrfic_kunena_keywords_map` (`keyword_id`, `user_id`, `topic_id`) VALUES
(1, 0, 3),
(2, 0, 3),
(3, 0, 3),
(4, 0, 3),
(5, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_messages`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_messages` (
`id` int(11) NOT NULL,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lrfic_kunena_messages`
--

INSERT INTO `lrfic_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(1, 0, 1, 2, 'democontent', 43, NULL, 'Welcome to Kunena!', 1366777385, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(2, 0, 2, 5, 'democontent', 43, '', 'November''s awesome template - JSN Kido is released', 1353660906, '192.168.1.26', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3, 0, 3, 5, 'democontent', 43, '', 'Test JoomlaShine''s templates before purchasing', 1353661478, '192.168.1.26', 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 0, 4, 6, 'democontent', 43, '', '[Infographic] 9 must-have Joomla 2.5 extensions', 1353896698, '192.168.1.26', 0, 0, 0, 0, 0, 0, 42, 1353896847, ''),
(5, 0, 5, 7, 'democontent', 43, '', 'Free ebook | Joomla 2.5 Made Easy', 1353897478, '192.168.1.26', 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_messages_text`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_messages_text`
--

INSERT INTO `lrfic_kunena_messages_text` (`mesid`, `message`) VALUES
(1, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]'),
(2, 'First, in introduction, I would like to give my congratulations to those who love [URL=http://virtuemart.net/]VirtueMart[/URL] and have searched for a Joomla template that fully supports its style. I can definitely say that "Your search finishes here", [URL=http://www.joomlashine.com/joomla-templates/jsn-kido-joomla-template-details.html]JSN Kido[/URL] is the first JoomlaShine template which applies VirtueMart''s style with our own amazing design. JSN Kido is a lovely [b]Joomla 2.5 & 3.0 template[/b] which is good-looking. This template would be a great choice for [b]any e-commerce website[/b].\n\n[b]Want to discover more about JSN Kido?[/b]\n\n\n[center][i][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/novembers-awesome-template-jsn-kido-is-released/preview.jpg[/IMG]\n\n[IMG]http://www.joomlashine.com/images/content/joomla-templates/jsn-kido/details/jsn-kido-preview.jpg[/IMG]\nJSN Kido preview with VirtueMart style[/i][/center]\n\n[b]JSN Kido remarkable features\n[/b]\n    [ul]\n  [li]Fully supports and has specific style for VirtueMart.[/li]\n  [li]Supports K2 style.[/li]\n  [li]Responsive design lets you enjoy the template on any browsers beautifully.[/li]\n  [li]Flexible layout with various fonts, menus and module styles.[/li]\n  [li]Native compatible with Joomla 2.5 and Joomla 3.0.[/li]\n\n[/ul]\n[b]JSN Kido with VirtueMart\n[/b]\nAfter finishing our survey about what extensions JoomlaShine customers would like to be supported by our templates, the highest choice was for VirtueMart. So we decided to build JSN Kido specifically for fashion and shopping websites. All the VirtueMart components, such as Products, Products Category, Orders, Payment Methods, etc. work well with JSN Kido. All VirtueMart components look more beautiful and eye-catching than ever when you use VirtueMart with JSN Kido.\n\nAre you interested in JSN Kido and would like to test it before purchasing? Feel free to use our DEMO BUILDER, which you can find with any of JoomlaShine''s template demos.\n\n\n[center][size=6][URL=http://demo.joomlashine.com/joomla-templates/jsn_kido/pro/index.php]DEMO[/URL] | [URL=http://www.joomlashine.com/joomla-templates/jsn-kido-joomla-template-details.html]DOWNLOAD[/URL][/size][/center]'),
(3, 'The JoomlaShine team understands that it''s not easy for you to decide whether to buy a product or not, since you have a million questions in mind about how exactly a template works. Therefore, we spend time on building a "Demo Builder", which will help you test all templates easily.\n\n[size=6]What you get from the DEMO BUILDER?[/size]\n\n[ul]\n  [li]You have a chance to try before buying[/li]\n  [li]You can enjoy full features of the Pro Editions[/li]\n  [li]You can access the back-end of the demo builder and do anything you want. You are also free to edit content and graphics of the Demo site.[/li]\n  [li]The Demo is available for 10 days.[/li]\n[/ul]\nYou do not have to pay for anything to try this. Scroll down and discover!\n\n[size=6]Getting started with Demo Builder[/size]\n\nFrom now on, in the demo site for each [URL=http://www.joomlashine.com/joomla-templates.html]JoomlaShine template[/URL], you can see a tab "BUILD YOUR DEMO" on the left side. When you click on it, a small tab "build your own template demo website" appears. Here we start the journey!\n\nBelow are instructions:\n\n    [ul]\n  [li]Website Subdomain: You fill a name you like, for example: "alex". Then it will look like: alex.myjoomlashine.com[/li]\n  [li]Your email: Please use your correct e-mail address because you will receive information from JoomlaShine at the address you register.[/li]\n  [li]JoomlaShine Template: You choose the JoomlaShine template that you want to play with.[/li]\n  [li]You type the captcha to prevent spammers.[/li]\n  [li]Click to the "Build the demo website" and finish.[/li]\n[/ul]\n\n[center][i][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/how-to-test-joomlashines-templates-before-purchasing/demobuider.png[/IMG]\nThe demo builder registration interface[/i][/center]\n\nAfter that, you will be provided with an account - a username and password - to access the administrator. Then, you can play with the Demo we''ve created for you.\n[center][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/how-to-test-joomlashines-templates-before-purchasing/account.png[/IMG]\n[i]Access the demo with the account we provide to you[/i][/center]\n\nYou like it, right? Now it''s your turn. Go to the demo site for any of [URL=http://www.joomlashine.com/joomla-templates.html]JoomlaShine''s templates[/URL] and start your adventure.\n\nPlease feel free to share with me your comments.'),
(4, 'One of the most coolest advantages of Joomla is the extensible ability; you know, with 9000+ extensions on [url=http://extensions.joomla.org/]Joomla Extensions Directory[/url] (JED).\n\nHowever, if you are new to Joomla & get confused with what extensions are necessary for your website, take a look at the inforgraphic about 9 must-have [url=http://www.joomlashine.com/joomla-extensions.html]Joomla 2.5 extensions[/url] below. Thanks to them, you can use Joomla more easily and more securely. You can also do SEO on your website better.\n\n[center][img]http://www.joomlashine.com/images/content/blog/joomla-25/infographic-9-must-have-joomla-25-extesnions-for-your-website/infographic.png[/img]\n[i]Infographic - 9 must-have Joomla 2.5 extesnions for your website[/i][/center]\n\nHere you can get more details about these extensions - [url=http://www.joomlashine.com/blog/9-must-have-joomla-2.5-extensions-lets-take-a-look.html]9 must-have Joomla 2.5 extensions - Let’s take a look![/url]\n\nAll feedbacks are appreciated. You can give them in the comments below.'),
(5, '[center][img]http://www.joomlashine.com/images/content/blog/joomlashine-documentation-portal/free-ebook-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies/preview.png[/img][/center]\n[center]\nJoomla 2.5 Made Easy - Ebook by [url=http://www.joomlashine.com/]JoomlaShine[/url]\n89 pages [/center]\n\nEverybody can use Joomla to build their websites, even when they haven''t used it before. Why I am so sure of that? Because I am going to introduce a nice Joomla ebook to you. It guides Joomla newbies how to build a [url=http://www.joomlashine.com/blog/categories/listings/joomla-25.html]Joomla 2.5[/url] website from the scratch, easily and quickly.\n\nWe wrote the ebook "[b]Joomla 2.5 Made Easy[/b]" from a Joomla newbie point of view. Therefore, it is simple, clear and easy to follow with [b]step-by-step guidelines[/b] and detailed figures. You need more details? Let''s take a look at the introduction infographic below:\n\n[center]\n[img]http://www.joomlashine.com/images/content/blog/joomlashine-documentation-portal/free-ebook-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies/infographic-how-to-build-joomla-2-5-website.jpg[/img][/center]\n\nHey Joomla newbies, what are you waiting for? Get start today! You are free to download this ebook and share it with everyone. All you need to do is going to [url=https://www.facebook.com/joomlashine]our Facebook[/url] to see the download link. We feel really happy if you Like us for more Joomla tips and tricks after enjoying this e-book . Small action for an incredibly FREE e-book!\n\n\n[center][size=6][url=https://www.facebook.com/joomlashine/app_190322544333196]Download e - book[/url][/size][/center]\n\nIf you build a website successfully with this ebook, don''t forget to tell us about your experience. All ideas to improve this ebook will be appreciated.');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_polls`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_polls` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_polls_options`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_polls_options` (
`id` int(11) NOT NULL,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_polls_users`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_ranks`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_ranks` (
`rank_id` mediumint(8) unsigned NOT NULL,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `lrfic_kunena_ranks`
--

INSERT INTO `lrfic_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'New Member', 0, 0, 'rank1.gif'),
(2, 'Junior Member', 20, 0, 'rank2.gif'),
(3, 'Senior Member', 40, 0, 'rank3.gif'),
(4, 'Premium Member', 80, 0, 'rank4.gif'),
(5, 'Elite Member', 160, 0, 'rank5.gif'),
(6, 'Platinum Member', 320, 0, 'rank6.gif'),
(7, 'Administrator', 0, 1, 'rankadmin.gif'),
(8, 'Moderator', 0, 1, 'rankmod.gif'),
(9, 'Spammer', 0, 1, 'rankspammer.gif'),
(10, 'Banned', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_sessions`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_sessions`
--

INSERT INTO `lrfic_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(820, 'na', 1365579488, '0', 1366789096);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_smileys`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_smileys` (
`id` int(4) NOT NULL,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `lrfic_kunena_smileys`
--

INSERT INTO `lrfic_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_thankyou`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_topics`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_topics` (
`id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lrfic_kunena_topics`
--

INSERT INTO `lrfic_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `params`) VALUES
(1, 2, 'Welcome to Kunena!', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1366777385, 43, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', 1, 1366777385, 43, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', ''),
(2, 5, 'November''s awesome template - JSN Kido is released', 0, 0, 0, 1, 1, 2, 0, 0, 0, 2, 1353660906, 43, 'First, in introduction, I would like to give my congratulations to those who love [URL=http://virtuemart.net/]VirtueMart[/URL] and have searched for a Joomla template that fully supports its style. I can definitely say that "Your search finishes here", [URL=http://www.joomlashine.com/joomla-templates/jsn-kido-joomla-template-details.html]JSN Kido[/URL] is the first JoomlaShine template which applies VirtueMart''s style with our own amazing design. JSN Kido is a lovely [b]Joomla 2.5 & 3.0 template[/b] which is good-looking. This template would be a great choice for [b]any e-commerce website[/b].\n\n[b]Want to discover more about JSN Kido?[/b]\n\n\n[center][i][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/novembers-awesome-template-jsn-kido-is-released/preview.jpg[/IMG]\n\n[IMG]http://www.joomlashine.com/images/content/joomla-templates/jsn-kido/details/jsn-kido-preview.jpg[/IMG]\nJSN Kido preview with VirtueMart style[/i][/center]\n\n[b]JSN Kido remarkable features\n[/b]\n    [ul]\n  [li]Fully supports and has specific style for VirtueMart.[/li]\n  [li]Supports K2 style.[/li]\n  [li]Responsive design lets you enjoy the template on any browsers beautifully.[/li]\n  [li]Flexible layout with various fonts, menus and module styles.[/li]\n  [li]Native compatible with Joomla 2.5 and Joomla 3.0.[/li]\n\n[/ul]\n[b]JSN Kido with VirtueMart\n[/b]\nAfter finishing our survey about what extensions JoomlaShine customers would like to be supported by our templates, the highest choice was for VirtueMart. So we decided to build JSN Kido specifically for fashion and shopping websites. All the VirtueMart components, such as Products, Products Category, Orders, Payment Methods, etc. work well with JSN Kido. All VirtueMart components look more beautiful and eye-catching than ever when you use VirtueMart with JSN Kido.\n\nAre you interested in JSN Kido and would like to test it before purchasing? Feel free to use our DEMO BUILDER, which you can find with any of JoomlaShine''s template demos.\n\n\n[center][size=6][URL=http://demo.joomlashine.com/joomla-templates/jsn_kido/pro/index.php]DEMO[/URL] | [URL=http://www.joomlashine.com/joomla-templates/jsn-kido-joomla-template-details.html]DOWNLOAD[/URL][/size][/center]', 'demoadmin', 2, 1353660906, 43, 'First, in introduction, I would like to give my congratulations to those who love [URL=http://virtuemart.net/]VirtueMart[/URL] and have searched for a Joomla template that fully supports its style. I can definitely say that "Your search finishes here", [URL=http://www.joomlashine.com/joomla-templates/jsn-kido-joomla-template-details.html]JSN Kido[/URL] is the first JoomlaShine template which applies VirtueMart''s style with our own amazing design. JSN Kido is a lovely [b]Joomla 2.5 & 3.0 template[/b] which is good-looking. This template would be a great choice for [b]any e-commerce website[/b].\n\n[b]Want to discover more about JSN Kido?[/b]\n\n\n[center][i][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/novembers-awesome-template-jsn-kido-is-released/preview.jpg[/IMG]\n\n[IMG]http://www.joomlashine.com/images/content/joomla-templates/jsn-kido/details/jsn-kido-preview.jpg[/IMG]\nJSN Kido preview with VirtueMart style[/i][/center]\n\n[b]JSN Kido remarkable features\n[/b]\n    [ul]\n  [li]Fully supports and has specific style for VirtueMart.[/li]\n  [li]Supports K2 style.[/li]\n  [li]Responsive design lets you enjoy the template on any browsers beautifully.[/li]\n  [li]Flexible layout with various fonts, menus and module styles.[/li]\n  [li]Native compatible with Joomla 2.5 and Joomla 3.0.[/li]\n\n[/ul]\n[b]JSN Kido with VirtueMart\n[/b]\nAfter finishing our survey about what extensions JoomlaShine customers would like to be supported by our templates, the highest choice was for VirtueMart. So we decided to build JSN Kido specifically for fashion and shopping websites. All the VirtueMart components, such as Products, Products Category, Orders, Payment Methods, etc. work well with JSN Kido. All VirtueMart components look more beautiful and eye-catching than ever when you use VirtueMart with JSN Kido.\n\nAre you interested in JSN Kido and would like to test it before purchasing? Feel free to use our DEMO BUILDER, which you can find with any of JoomlaShine''s template demos.\n\n\n[center][size=6][URL=http://demo.joomlashine.com/joomla-templates/jsn_kido/pro/index.php]DEMO[/URL] | [URL=http://www.joomlashine.com/joomla-templates/jsn-kido-joomla-template-details.html]DOWNLOAD[/URL][/size][/center]', 'demoadmin', ''),
(3, 5, 'Test JoomlaShine''s templates before purchasing', 0, 0, 0, 0, 1, 17, 0, 0, 0, 3, 1353661478, 43, 'The JoomlaShine team understands that it''s not easy for you to decide whether to buy a product or not, since you have a million questions in mind about how exactly a template works. Therefore, we spend time on building a "Demo Builder", which will help you test all templates easily.\n\n[size=6]What you get from the DEMO BUILDER?[/size]\n\n[ul]\n  [li]You have a chance to try before buying[/li]\n  [li]You can enjoy full features of the Pro Editions[/li]\n  [li]You can access the back-end of the demo builder and do anything you want. You are also free to edit content and graphics of the Demo site.[/li]\n  [li]The Demo is available for 10 days.[/li]\n[/ul]\nYou do not have to pay for anything to try this. Scroll down and discover!\n\n[size=6]Getting started with Demo Builder[/size]\n\nFrom now on, in the demo site for each [URL=http://www.joomlashine.com/joomla-templates.html]JoomlaShine template[/URL], you can see a tab "BUILD YOUR DEMO" on the left side. When you click on it, a small tab "build your own template demo website" appears. Here we start the journey!\n\nBelow are instructions:\n\n    [ul]\n  [li]Website Subdomain: You fill a name you like, for example: "alex". Then it will look like: alex.myjoomlashine.com[/li]\n  [li]Your email: Please use your correct e-mail address because you will receive information from JoomlaShine at the address you register.[/li]\n  [li]JoomlaShine Template: You choose the JoomlaShine template that you want to play with.[/li]\n  [li]You type the captcha to prevent spammers.[/li]\n  [li]Click to the "Build the demo website" and finish.[/li]\n[/ul]\n\n[center][i][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/how-to-test-joomlashines-templates-before-purchasing/demobuider.png[/IMG]\nThe demo builder registration interface[/i][/center]\n\nAfter that, you will be provided with an account - a username and password - to access the administrator. Then, you can play with the Demo we''ve created for you.\n[center][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/how-to-test-joomlashines-templates-before-purchasing/account.png[/IMG]\n[i]Access the demo with the account we provide to you[/i][/center]\n\nYou like it, right? Now it''s your turn. Go to the demo site for any of [URL=http://www.joomlashine.com/joomla-templates.html]JoomlaShine''s templates[/URL] and start your adventure.\n\nPlease feel free to share with me your comments.', 'demoadmin', 3, 1353661478, 43, 'The JoomlaShine team understands that it''s not easy for you to decide whether to buy a product or not, since you have a million questions in mind about how exactly a template works. Therefore, we spend time on building a "Demo Builder", which will help you test all templates easily.\n\n[size=6]What you get from the DEMO BUILDER?[/size]\n\n[ul]\n  [li]You have a chance to try before buying[/li]\n  [li]You can enjoy full features of the Pro Editions[/li]\n  [li]You can access the back-end of the demo builder and do anything you want. You are also free to edit content and graphics of the Demo site.[/li]\n  [li]The Demo is available for 10 days.[/li]\n[/ul]\nYou do not have to pay for anything to try this. Scroll down and discover!\n\n[size=6]Getting started with Demo Builder[/size]\n\nFrom now on, in the demo site for each [URL=http://www.joomlashine.com/joomla-templates.html]JoomlaShine template[/URL], you can see a tab "BUILD YOUR DEMO" on the left side. When you click on it, a small tab "build your own template demo website" appears. Here we start the journey!\n\nBelow are instructions:\n\n    [ul]\n  [li]Website Subdomain: You fill a name you like, for example: "alex". Then it will look like: alex.myjoomlashine.com[/li]\n  [li]Your email: Please use your correct e-mail address because you will receive information from JoomlaShine at the address you register.[/li]\n  [li]JoomlaShine Template: You choose the JoomlaShine template that you want to play with.[/li]\n  [li]You type the captcha to prevent spammers.[/li]\n  [li]Click to the "Build the demo website" and finish.[/li]\n[/ul]\n\n[center][i][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/how-to-test-joomlashines-templates-before-purchasing/demobuider.png[/IMG]\nThe demo builder registration interface[/i][/center]\n\nAfter that, you will be provided with an account - a username and password - to access the administrator. Then, you can play with the Demo we''ve created for you.\n[center][IMG]http://www.joomlashine.com/images/content/blog/joomlashine-news/how-to-test-joomlashines-templates-before-purchasing/account.png[/IMG]\n[i]Access the demo with the account we provide to you[/i][/center]\n\nYou like it, right? Now it''s your turn. Go to the demo site for any of [URL=http://www.joomlashine.com/joomla-templates.html]JoomlaShine''s templates[/URL] and start your adventure.\n\nPlease feel free to share with me your comments.', 'demoadmin', ''),
(4, 6, '[Infographic] 9 must-have Joomla 2.5 extensions', 0, 0, 0, 0, 1, 2, 0, 0, 0, 4, 1353896698, 43, 'One of the most coolest advantages of Joomla is the extensible ability; you know, with 9000+ extensions on [url=http://extensions.joomla.org/]Joomla Extensions Directory[/url] (JED).\n\nHowever, if you are new to Joomla & get confused with what extensions are necessary for your website, take a look at the inforgraphic about 9 must-have [url=http://www.joomlashine.com/joomla-extensions.html]Joomla 2.5 extensions[/url] below. Thanks to them, you can use Joomla more easily and more securely. You can also do SEO on your website better.\n\n[center][img]http://www.joomlashine.com/images/content/blog/joomla-25/infographic-9-must-have-joomla-25-extesnions-for-your-website/infographic.png[/img]\n[i]Infographic - 9 must-have Joomla 2.5 extesnions for your website[/i][/center]\n\nHere you can get more details about these extensions - [url=http://www.joomlashine.com/blog/9-must-have-joomla-2.5-extensions-lets-take-a-look.html]9 must-have Joomla 2.5 extensions - Let’s take a look![/url]\n\nAll feedbacks are appreciated. You can give them in the comments below.', 'demoadmin', 4, 1353896698, 43, 'One of the most coolest advantages of Joomla is the extensible ability; you know, with 9000+ extensions on [url=http://extensions.joomla.org/]Joomla Extensions Directory[/url] (JED).\n\nHowever, if you are new to Joomla & get confused with what extensions are necessary for your website, take a look at the inforgraphic about 9 must-have [url=http://www.joomlashine.com/joomla-extensions.html]Joomla 2.5 extensions[/url] below. Thanks to them, you can use Joomla more easily and more securely. You can also do SEO on your website better.\n\n[center][img]http://www.joomlashine.com/images/content/blog/joomla-25/infographic-9-must-have-joomla-25-extesnions-for-your-website/infographic.png[/img]\n[i]Infographic - 9 must-have Joomla 2.5 extesnions for your website[/i][/center]\n\nHere you can get more details about these extensions - [url=http://www.joomlashine.com/blog/9-must-have-joomla-2.5-extensions-lets-take-a-look.html]9 must-have Joomla 2.5 extensions - Let’s take a look![/url]\n\nAll feedbacks are appreciated. You can give them in the comments below.', 'demoadmin', ''),
(5, 7, 'Free ebook | Joomla 2.5 Made Easy', 0, 0, 0, 0, 1, 3, 0, 0, 0, 5, 1353897478, 43, '[center][img]http://www.joomlashine.com/images/content/blog/joomlashine-documentation-portal/free-ebook-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies/preview.png[/img][/center]\n[center]\nJoomla 2.5 Made Easy - Ebook by [url=http://www.joomlashine.com/]JoomlaShine[/url]\n89 pages [/center]\n\nEverybody can use Joomla to build their websites, even when they haven''t used it before. Why I am so sure of that? Because I am going to introduce a nice Joomla ebook to you. It guides Joomla newbies how to build a [url=http://www.joomlashine.com/blog/categories/listings/joomla-25.html]Joomla 2.5[/url] website from the scratch, easily and quickly.\n\nWe wrote the ebook "[b]Joomla 2.5 Made Easy[/b]" from a Joomla newbie point of view. Therefore, it is simple, clear and easy to follow with [b]step-by-step guidelines[/b] and detailed figures. You need more details? Let''s take a look at the introduction infographic below:\n\n[center]\n[img]http://www.joomlashine.com/images/content/blog/joomlashine-documentation-portal/free-ebook-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies/infographic-how-to-build-joomla-2-5-website.jpg[/img][/center]\n\nHey Joomla newbies, what are you waiting for? Get start today! You are free to download this ebook and share it with everyone. All you need to do is going to [url=https://www.facebook.com/joomlashine]our Facebook[/url] to see the download link. We feel really happy if you Like us for more Joomla tips and tricks after enjoying this e-book . Small action for an incredibly FREE e-book!\n\n\n[center][size=6][url=https://www.facebook.com/joomlashine/app_190322544333196]Download e - book[/url][/size][/center]\n\nIf you build a website successfully with this ebook, don''t forget to tell us about your experience. All ideas to improve this ebook will be appreciated.', 'demoadmin', 5, 1353897478, 43, '[center][img]http://www.joomlashine.com/images/content/blog/joomlashine-documentation-portal/free-ebook-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies/preview.png[/img][/center]\n[center]\nJoomla 2.5 Made Easy - Ebook by [url=http://www.joomlashine.com/]JoomlaShine[/url]\n89 pages [/center]\n\nEverybody can use Joomla to build their websites, even when they haven''t used it before. Why I am so sure of that? Because I am going to introduce a nice Joomla ebook to you. It guides Joomla newbies how to build a [url=http://www.joomlashine.com/blog/categories/listings/joomla-25.html]Joomla 2.5[/url] website from the scratch, easily and quickly.\n\nWe wrote the ebook "[b]Joomla 2.5 Made Easy[/b]" from a Joomla newbie point of view. Therefore, it is simple, clear and easy to follow with [b]step-by-step guidelines[/b] and detailed figures. You need more details? Let''s take a look at the introduction infographic below:\n\n[center]\n[img]http://www.joomlashine.com/images/content/blog/joomlashine-documentation-portal/free-ebook-joomla-25-made-easy-a-pocket-manual-for-joomla-newbies/infographic-how-to-build-joomla-2-5-website.jpg[/img][/center]\n\nHey Joomla newbies, what are you waiting for? Get start today! You are free to download this ebook and share it with everyone. All you need to do is going to [url=https://www.facebook.com/joomlashine]our Facebook[/url] to see the download link. We feel really happy if you Like us for more Joomla tips and tricks after enjoying this e-book . Small action for an incredibly FREE e-book!\n\n\n[center][size=6][url=https://www.facebook.com/joomlashine/app_190322544333196]Download e - book[/url][/size][/center]\n\nIf you build a website successfully with this ebook, don''t forget to tell us about your experience. All ideas to improve this ebook will be appreciated.', 'demoadmin', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_users`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `thankyou` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_users`
--

INSERT INTO `lrfic_kunena_users` (`userid`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `icq`, `aim`, `yim`, `msn`, `skype`, `twitter`, `facebook`, `gtalk`, `myspace`, `linkedin`, `delicious`, `friendfeed`, `digg`, `blogspot`, `flickr`, `bebo`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `thankyou`) VALUES
(42, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 3, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(43, '', 'JoomlaShine develope hi-quality Joomla templates and Joomla extensions.\nWe build our products in a way in which you can utilize it many times for different purposes.', 1, NULL, 0, 5, 'users/avatar.jpg', 0, 0, 1, 30, 'Hi - quality joomla templates and extensions', 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, 'joomlashine', 'joomlashine', NULL, NULL, 'joomlashine', NULL, NULL, NULL, NULL, NULL, NULL, 'JoomlaShine', 'http://www.joomlashine.com', 7, 1, 1, 0),
(618, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_users_banned`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_users_banned` (
`id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_user_categories`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` datetime DEFAULT NULL,
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_user_read`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_user_topics`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_kunena_user_topics`
--

INSERT INTO `lrfic_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(43, 1, 2, 1, 1, 1, 0, 0, ''),
(43, 2, 5, 1, 2, 1, 0, 1, ''),
(43, 3, 5, 1, 3, 1, 0, 1, ''),
(43, 4, 6, 1, 4, 1, 0, 1, ''),
(43, 5, 7, 1, 5, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_kunena_version`
--

CREATE TABLE IF NOT EXISTS `lrfic_kunena_version` (
`id` int(11) NOT NULL,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lrfic_kunena_version`
--

INSERT INTO `lrfic_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '3.0.0-BETA3', '2013-04-19', '2013-04-24', '', 'Wanga', ''),
(2, '3.0.1', '2013-06-29', '2013-08-02', '', 'Noordwijkerhout', ''),
(3, '3.0.8', '2015-04-05', '2015-05-18', '', 'Imperium', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_languages`
--

CREATE TABLE IF NOT EXISTS `lrfic_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_languages`
--

INSERT INTO `lrfic_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_menu`
--

CREATE TABLE IF NOT EXISTS `lrfic_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1161 ;

--
-- Dumping data for table `lrfic_menu`
--

INSERT INTO `lrfic_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 353, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 185, 194, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 186, 187, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 188, 189, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 190, 191, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 192, 193, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 195, 200, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 196, 197, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 198, 199, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 201, 206, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 202, 203, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 204, 205, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 207, 212, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 208, 209, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 210, 211, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 221, 222, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 213, 214, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 215, 220, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 216, 217, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 218, 219, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 71, 72, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 73, 74, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 67, 68, 0, '', 1),
(233, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(238, 'mainmenu', 'Sample Sites', 'sample-sites', '', 'sample-sites', 'index.php?option=com_content&view=article&id=38', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 223, 228, 0, '*', 0),
(290, 'mainmenu', 'Articles', 'articles', '', 'site-map/articles', 'index.php?option=com_content&view=categories&id=0', 'component', -2, 294, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(294, 'mainmenu', 'Site Map', 'site-map', '', 'site-map', 'index.php?option=com_content&view=article&id=42', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 3, 10, 0, '*', 0),
(435, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"none","orderby_sec":"","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"1","link_titles":"","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"use_article","show_modify_date":"","show_publish_date":"","show_item_navigation":"1","show_vote":"0","show_readmore":"","show_readmore_title":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"Start here","menu-anchor_css":"jsn-icon-home","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(438, 'mainmenu', 'Weblinks', 'weblinks', '', 'site-map/weblinks', 'index.php?option=com_weblinks&view=categories&id=0', 'component', -2, 294, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(439, 'mainmenu', 'Contacts', 'contacts', '', 'site-map/contacts', 'index.php?option=com_contact&view=categories&id=0', 'component', -2, 294, 2, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(445, 'mainmenu', 'Parks', 'parks', '', 'sample-sites/parks', 'index.php?Itemid=', 'alias', -2, 238, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"243","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 224, 225, 0, '*', 0),
(446, 'mainmenu', 'Shop', 'shop', '', 'sample-sites/shop', 'index.php?Itemid=', 'alias', -2, 238, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"429","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 226, 227, 0, '*', 0),
(448, 'mainmenu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 229, 230, 0, '*', 0),
(455, 'mainmenu', 'Example Pages', 'example-pages', '', 'example-pages', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"268","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 231, 232, 0, '*', 0),
(465, 'mainmenu', 'Design', 'design-and-features', '', 'design-and-features', 'index.php?option=com_content&view=article&id=70', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"Eye-Catching","menu-anchor_css":"jsn-icon-image","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 66, 0, '*', 0),
(466, 'mainmenu', 'Layout', 'layout', '', 'design-and-features/layout', 'index.php?option=com_content&view=article&id=71', 'component', 1, 465, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 27, 0, '*', 0),
(467, 'mainmenu', 'Color Variations', 'color-variations', '', 'design-and-features/color-variations', 'index.php?option=com_content&view=article&id=68', 'component', 1, 465, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 28, 41, 0, '*', 0),
(468, 'mainmenu', 'Menu Styles', 'menu-styles', '', 'design-and-features/menu-styles', 'index.php?option=com_content&view=article&id=72', 'component', 1, 465, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 53, 0, '*', 0),
(469, 'mainmenu', 'Typography', 'typography', '', 'design-and-features/typography', 'index.php?option=com_content&view=article&id=74', 'component', 1, 465, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(470, 'mainmenu', 'Module Styles', 'module-styles', '', 'design-and-features/module-styles', 'index.php?option=com_content&view=article&id=73', 'component', 1, 465, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(471, 'mainmenu', 'Font Styles', 'font-styles', '', 'design-and-features/font-styles', 'index.php?option=com_content&view=article&id=69', 'component', 1, 465, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 54, 61, 0, '*', 0),
(472, 'mainmenu', 'Left | Center | Right ', 'left--center--right', '', 'design-and-features/layout/left--center--right', 'index.php?option=com_content&view=article&id=90', 'component', 1, 466, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(473, 'mainmenu', 'Left | Innerleft | Center', 'left--innerleft--center', '', 'design-and-features/layout/left--innerleft--center', 'index.php?option=com_content&view=article&id=91', 'component', 1, 466, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(474, 'mainmenu', 'Left | Center | Innerright', 'left--center--innerright', '', 'design-and-features/layout/left--center--innerright', 'index.php?option=com_content&view=article&id=89', 'component', 1, 466, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(475, 'mainmenu', 'Center | Innerright | Right', 'center--innerright--right', '', 'design-and-features/layout/center--innerright--right', 'index.php?option=com_content&view=article&id=87', 'component', 1, 466, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(476, 'mainmenu', 'Innerleft | Center | Right', 'innerleft--center--right', '', 'design-and-features/layout/innerleft--center--right', 'index.php?option=com_content&view=article&id=88', 'component', 1, 466, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(477, 'mainmenu', 'Main content only', 'main-content-only', '', 'design-and-features/layout/main-content-only', 'index.php?option=com_content&view=article&id=92', 'component', 1, 466, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(478, 'mainmenu', 'Top Menu', 'top-menu', '', 'design-and-features/menu-styles/top-menu', 'index.php?option=com_content&view=article&id=97', 'component', 1, 468, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(479, 'mainmenu', 'Main Menu', 'main-menu', '', 'design-and-features/menu-styles/main-menu', 'index.php?option=com_content&view=article&id=93', 'component', 1, 468, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(480, 'mainmenu', 'Side Menu', 'side-menu', '', 'design-and-features/menu-styles/side-menu', 'index.php?option=com_content&view=article&id=95', 'component', 1, 468, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(481, 'mainmenu', 'Side Menu RTL', 'side-menu-rtl', '', 'design-and-features/menu-styles/side-menu-rtl', 'index.php?option=com_content&view=article&id=96', 'component', 1, 468, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-direction-rtl","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(482, 'mainmenu', 'Tree Menu', 'tree-menu', '', 'design-and-features/menu-styles/tree-menu', 'index.php?option=com_content&view=article&id=98', 'component', 1, 468, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(483, 'mainmenu', 'Features', 'advanced-stuff', '', 'advanced-stuff', 'index.php?option=com_content&view=article&id=99', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"Unique","menu-anchor_css":"jsn-icon-star","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 108, 0, '*', 0),
(484, 'mainmenu', 'Easy to Start', 'easy-to-start', '', 'advanced-stuff/easy-to-start', 'index.php?option=com_content&view=article&id=77', 'component', 1, 483, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 85, 0, '*', 0),
(485, 'mainmenu', 'Painless Configuration', 'painless-configuration', '', 'advanced-stuff/painless-configuration', 'index.php?option=com_content&view=article&id=84', 'component', 1, 483, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 86, 87, 0, '*', 0),
(486, 'mainmenu', 'Responsive Layout', 'responsive-layout', '', 'advanced-stuff/responsive-layout', 'index.php?option=com_content&view=article&id=82', 'component', 1, 483, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 88, 89, 0, '*', 0),
(487, 'mainmenu', 'Image Gallery', 'flash-gallery', '', 'advanced-stuff/flash-gallery', 'index.php?option=com_content&view=article&id=79', 'component', 0, 483, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 90, 91, 0, '*', 0),
(488, 'mainmenu', 'RTL Support', 'rtl-support', '', 'advanced-stuff/rtl-support', 'index.php?option=com_content&view=article&id=85', 'component', 1, 483, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 92, 93, 0, '*', 0),
(489, 'mainmenu', 'And more...', 'and-more', '', 'advanced-stuff/and-more', '#', 'url', 0, 483, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 94, 105, 0, '*', 0),
(490, 'mainmenu', 'Joomla! 2.5 Support', 'joomla-17-support', '', 'advanced-stuff/and-more/joomla-17-support', 'index.php?option=com_content&view=article&id=81', 'component', 0, 489, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(491, 'mainmenu', 'CSS / JS Compression', 'cssjs-compression', '', 'advanced-stuff/and-more/cssjs-compression', 'index.php?option=com_content&view=article&id=75', 'component', 0, 489, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(492, 'mainmenu', 'SEO / Accessibility', 'seo-a-accessibility', '', 'advanced-stuff/and-more/seo-a-accessibility', 'index.php?option=com_content&view=article&id=86', 'component', 0, 489, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(493, 'mainmenu', 'Docs & Support', 'docs-a-support', '', 'advanced-stuff/docs-a-support', 'index.php?option=com_content&view=article&id=76', 'component', 1, 483, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 106, 107, 0, '*', 0),
(494, 'mainmenu', 'K2 Support', 'k2-support', '', 'advanced-stuff/and-more/k2-support', 'index.php?option=com_content&view=article&id=100', 'component', 0, 489, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 101, 102, 0, '*', 0),
(495, 'mainmenu', 'Multilingual Support', 'multilingual-support', '', 'advanced-stuff/and-more/multilingual-support', 'index.php?option=com_content&view=article&id=83', 'component', 0, 489, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(496, 'mainmenu', 'Get it Now', 'editions-a-pricing', '', 'editions-a-pricing', 'http://www.joomlashine.com/joomla-templates/jsn-dome-download.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"Affordable solution","menu-anchor_css":"jsn-icon-cart","menu_image":"","menu_text":1}', 183, 184, 0, '*', 0),
(497, 'topmenu', 'Product Tour', 'product-tour', '', 'product-tour', 'index.php?option=com_content&view=article&id=101', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"jsn-icon-display","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 233, 234, 0, '*', 0),
(498, 'topmenu', 'Get it Now', 'buy-now', '', 'buy-now', 'http://www.joomlashine.com/joomla-templates/jsn-dome-download.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"jsn-icon-cart","menu_image":"","menu_text":1}', 235, 236, 0, '*', 0),
(499, 'footermenu', 'JoomlaShine', 'joomlashine', '', 'joomlashine', 'http://www.joomlashine.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 237, 238, 0, '*', 0),
(500, 'footermenu', 'Joomla Templates', 'joomla-templates', '', 'joomla-templates', 'http://www.joomlashine.com/joomla-templates.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 239, 240, 0, '*', 0),
(501, 'footermenu', 'Joomla Extensions', 'joomla-extensions', '', 'joomla-extensions', 'http://www.joomlashine.com/joomla-extensions.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 241, 242, 0, '*', 0),
(502, 'mustsee', 'Layout', 'layout', '', 'layout', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"466","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 243, 244, 0, '*', 0),
(503, 'mustsee', 'Colors Variation', 'colors-variation', '', 'colors-variation', 'index.php?option=com_content&view=article&id=68&Itemid=467', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 245, 246, 0, '*', 0),
(504, 'mustsee', 'Menu Styles', 'menu-styles', '', 'menu-styles', 'index.php?option=com_content&view=article&id=72&Itemid=468', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 247, 248, 0, '*', 0),
(505, 'mustsee', 'Typography', 'typography', '', 'typography', 'index.php?option=com_content&view=article&id=74&Itemid=469', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 249, 250, 0, '*', 0),
(506, 'mustsee', 'Mobile Ready', 'mobile-ready', '', 'mobile-ready', 'index.php?option=com_content&view=article&id=82&Itemid=486', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 251, 252, 0, '*', 0),
(507, 'mustsee', 'RTL Support', 'rtl-support', '', 'rtl-support', 'index.php?option=com_content&view=article&id=85&Itemid=488', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 253, 254, 0, '*', 0),
(508, 'mainmenu', 'Joomla!', 'j-stuff', '', 'j-stuff', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"Default contents","menu-anchor_css":"jsn-icon-selection","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 146, 0, '*', 0),
(509, 'mainmenu', 'Weblinks', 'weblinks', '', 'j-stuff/weblinks', 'index.php?option=com_weblinks&view=category&id=32', 'component', 1, 508, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"1","show_subcat_desc":"1","show_cat_num_links":"1","show_pagination_limit":"1","show_headings":"1","show_link_description":"1","show_link_hits":"1","show_pagination":"1","show_pagination_results":"1","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 136, 137, 0, '*', 0),
(510, 'mainmenu', 'Newsfeeds', 'newsfeeds', '', 'j-stuff/newsfeeds', 'index.php?option=com_newsfeeds&view=category&id=17', 'component', 1, 508, 2, 17, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"1","show_subcat_desc":"1","show_cat_items":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"1","show_link":"","show_pagination":"1","show_pagination_results":"1","show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Newsfeeds","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 138, 139, 0, '*', 0),
(511, 'mainmenu', 'Search', 'search', '', 'j-stuff/search', 'index.php?option=com_search&view=search&searchword=mobile ready', 'component', 1, 508, 2, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 140, 141, 0, '*', 0),
(512, 'mainmenu', 'Contacts', 'contacts', '', 'j-stuff/contacts', 'index.php?option=com_contact&view=category&id=16', 'component', 1, 508, 2, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"0","show_empty_categories":"","show_subcat_desc":"","show_cat_items":"","show_pagination_limit":"","show_headings":"","show_position_headings":"","show_email_headings":"","show_telephone_headings":"","show_mobile_headings":"","show_fax_headings":"","show_suburb_headings":"","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","initial_sort":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 142, 143, 0, '*', 0),
(513, 'mainmenu', 'Wrapper', 'wrapper', '', 'j-stuff/wrapper', 'index.php?option=com_wrapper&view=wrapper', 'component', -2, 508, 2, 2, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"url":"www.joomlashine.com","scrolling":"auto","width":"100%","height":"500","height_auto":"0","add_scheme":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 144, 145, 0, '*', 0),
(514, 'mainmenu', 'Articles', 'content', '', 'j-stuff/content', 'index.php?option=com_content&view=category&id=26', 'component', 1, 508, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"0","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 110, 135, 0, '*', 0),
(515, 'mainmenu', 'Blog layout', 'blog-layout', '', 'j-stuff/content/blog-layout', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 514, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"5","num_intro_articles":"0","num_columns":"1","num_links":"10","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 116, 0, '*', 0);
INSERT INTO `lrfic_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(516, 'mainmenu', 'First Blog Post ', 'first-blog-post', '', 'j-stuff/content/blog-layout/first-blog-post', 'index.php?option=com_content&view=article&id=17', 'component', 1, 515, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 112, 113, 0, '*', 0),
(517, 'mainmenu', 'Second Blog Post ', 'second-blog-post', '', 'j-stuff/content/blog-layout/second-blog-post', 'index.php?option=com_content&view=article&id=18', 'component', 1, 515, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 114, 115, 0, '*', 0),
(518, 'mainmenu', 'List Layout', 'list-layout', '', 'j-stuff/content/list-layout', 'index.php?option=com_content&view=category&id=28', 'component', 1, 514, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"0","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 128, 0, '*', 0),
(519, 'mainmenu', 'Cradle Mountain ', 'cradle-mountain', '', 'j-stuff/content/list-layout/cradle-mountain', 'index.php?option=com_content&view=article&id=11', 'component', 1, 518, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 118, 119, 0, '*', 0),
(520, 'mainmenu', 'Koala', 'koala', '', 'j-stuff/content/list-layout/koala', 'index.php?option=com_content&view=article&id=25', 'component', 1, 518, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 120, 121, 0, '*', 0),
(521, 'mainmenu', 'Phyllopteryx', 'phyllopteryx', '', 'j-stuff/content/list-layout/phyllopteryx', 'index.php?option=com_content&view=article&id=33', 'component', 1, 518, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 122, 123, 0, '*', 0),
(522, 'mainmenu', 'Pinnacles', 'pinnacles', '', 'j-stuff/content/list-layout/pinnacles', 'index.php?option=com_content&view=article&id=34', 'component', 1, 518, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 124, 125, 0, '*', 0),
(523, 'mainmenu', 'Spotted Quoll', 'spotted-quoll', '', 'j-stuff/content/list-layout/spotted-quoll', 'index.php?option=com_content&view=article&id=43', 'component', 1, 518, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 126, 127, 0, '*', 0),
(524, 'mainmenu', 'The Joomla! Project', 'the-joomla-project', '', 'j-stuff/content/the-joomla-project', 'index.php?option=com_content&view=article&id=48', 'component', 1, 514, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 130, 0, '*', 0),
(525, 'mainmenu', 'The Joomla! Community', 'the-joomla-community', '', 'j-stuff/content/the-joomla-community', 'index.php?option=com_content&view=article&id=47', 'component', 1, 514, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 131, 132, 0, '*', 0),
(526, 'mainmenu', 'Using Joomla!', 'using-joomla', '', 'j-stuff/content/using-joomla', 'index.php?option=com_content&view=article&id=53', 'component', 1, 514, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 133, 134, 0, '*', 0),
(622, 'mainmenu', 'Orange Color', 'orange-color', '', 'design-and-features/color-variations/orange-color', 'index.php?option=com_content&view=article&id=68', 'component', 1, 467, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-color-orange","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(623, 'mainmenu', 'Red Color', 'red-color', '', 'design-and-features/color-variations/red-color', 'index.php?option=com_content&view=article&id=68', 'component', 1, 467, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-color-red","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(624, 'mainmenu', 'Cyan Color', 'cyan-color', '', 'design-and-features/color-variations/cyan-color', 'index.php?option=com_content&view=article&id=68', 'component', 1, 467, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-color-cyan","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(625, 'mainmenu', 'Green Color', 'green-color', '', 'design-and-features/color-variations/green-color', 'index.php?option=com_content&view=article&id=68', 'component', 1, 467, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-color-green","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(626, 'mainmenu', 'Yellow Color', 'yellow-color', '', 'design-and-features/color-variations/yellow-color', 'index.php?option=com_content&view=article&id=68', 'component', 1, 467, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-color-yellow","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 37, 38, 0, '*', 0),
(627, 'mainmenu', 'Pink Color', 'pink-color', '', 'design-and-features/color-variations/pink-color', 'index.php?option=com_content&view=article&id=68', 'component', 1, 467, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-color-pink","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 0, '*', 0),
(628, 'mainmenu', 'Business Style', 'business-style', '', 'design-and-features/font-styles/business-style', 'index.php?option=com_content&view=article&id=69', 'component', 1, 471, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-textstyle-business","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(629, 'mainmenu', 'Personal Style', 'personal-style', '', 'design-and-features/font-styles/personal-style', 'index.php?option=com_content&view=article&id=69', 'component', 1, 471, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-textstyle-personal","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(630, 'mainmenu', 'News Style', 'news-style', '', 'design-and-features/font-styles/news-style', 'index.php?option=com_content&view=article&id=69', 'component', 1, 471, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-textstyle-news","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(652, 'mainmenu', 'K2', 'k2', '', 'k2', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', -2, 1, 1, 10038, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1","3","4","6"],"catCatalogMode":"0","theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"hits","catPagination":"2","catPaginationResults":"1","catFeedLink":"1","catFeedIcon":"1","menu-anchor_title":"Optimized","menu-anchor_css":"jsn-icon-comment","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 171, 182, 0, '*', 0),
(656, 'mainmenu', 'Categories', 'joomla-newbies', '', 'k2/joomla-newbies', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', -2, 652, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1","3","4","6"],"catCatalogMode":"0","theme":"default","num_leading_items":"10","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catFeedLink":"1","catFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 172, 173, 0, '*', 0),
(657, 'mainmenu', 'Tag', 'tag', '', 'k2/tag', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=Joomla newbies&task=tag', 'component', -2, 652, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","categoriesFilter":["1","3","4","6"],"tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 176, 177, 0, '*', 0),
(658, 'mainmenu', 'User page', 'user-page', '', 'k2/user-page', 'index.php?option=com_k2&view=itemlist&layout=user&id=43&task=user', 'component', -2, 652, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","userOrdering":"","userFeedLink":"1","userFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 178, 179, 0, '*', 0),
(659, 'mainmenu', 'Item', 'item', '', 'k2/item', 'index.php?option=com_k2&view=item&layout=item&id=8', 'component', -2, 652, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 174, 175, 0, '*', 0),
(660, 'mainmenu', 'Latest items', 'latest-items', '', 'k2/latest-items', 'index.php?option=com_k2&view=latest&layout=latest', 'component', -2, 652, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"1","latestItemsCols":"1","latestItemsLimit":"1","latestItemsDisplayEffect":"all","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeed":"1","categoryIDs":["6","3","4"],"categoryTitle":"1","categoryDescription":"1","categoryImage":"1","categoryFeed":"1","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Medium","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"1","latestItemTags":"1","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"1","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 180, 181, 0, '*', 0),
(693, 'mainmenu', 'Free Extensions', 'free-extensions', '', 'advanced-stuff/free-extensions', '', 'separator', 1, 483, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 76, 83, 0, '*', 0),
(694, 'mainmenu', 'Image Gallery', 'image-gallery', '', 'advanced-stuff/free-extensions/image-gallery', 'index.php?option=com_content&view=article&id=79', 'component', 1, 693, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(706, 'mainmenu', 'Form Builder', 'form-builder', '', 'advanced-stuff/free-extensions/form-builder', 'index.php?option=com_content&view=article&id=105', 'component', 1, 693, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(754, 'mainmenu', 'Joomla Management', 'joomla-management', '', 'advanced-stuff/free-extensions/joomla-management', 'index.php?option=com_content&view=article&id=106', 'component', 1, 693, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(881, 'mainmenu', 'Forum', 'kunena-2013-08-02', '', 'kunena-2013-08-02', 'index.php?Itemid=975', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"975","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 255, 256, 0, '*', 0),
(882, 'mainmenu', 'Ext. Styles', '2012-11-23-08-17-17', '', '2012-11-23-08-17-17', 'index.php?option=com_finder&view=search', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","sort_order":"","sort_direction":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"More compatible","menu-anchor_css":"jsn-icon-settings","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 147, 170, 0, '*', 0),
(883, 'mainmenu', 'K2', 'k2', '', '2012-11-23-08-17-17/k2', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', 1, 882, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1","3","4","6"],"catCatalogMode":"0","theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"hits","catPagination":"2","catPaginationResults":"1","catFeedLink":"1","catFeedIcon":"1","menu-anchor_title":"Optimized","menu-anchor_css":"jsn-icon-comment","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 148, 159, 0, '*', 0),
(884, 'mainmenu', 'Categories', 'joomla-newbies', '', '2012-11-23-08-17-17/k2/joomla-newbies', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', 1, 883, 3, 10078, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1","3","4","6"],"catCatalogMode":"0","theme":"default","num_leading_items":"10","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catFeedLink":"1","catFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, '*', 0),
(885, 'mainmenu', 'Item', 'item', '', '2012-11-23-08-17-17/k2/item', 'index.php?option=com_k2&view=item&layout=item&id=8', 'component', 1, 883, 3, 10078, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 152, 0, '*', 0),
(886, 'mainmenu', 'Tag', 'tag', '', '2012-11-23-08-17-17/k2/tag', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=Joomla newbies&task=tag', 'component', 1, 883, 3, 10078, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","categoriesFilter":["1","3","4","6"],"tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 153, 154, 0, '*', 0),
(887, 'mainmenu', 'User page', 'user-page', '', '2012-11-23-08-17-17/k2/user-page', 'index.php?option=com_k2&view=itemlist&layout=user&id=43&task=user', 'component', 1, 883, 3, 10078, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","userOrdering":"","userFeedLink":"1","userFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 155, 156, 0, '*', 0),
(888, 'mainmenu', 'Latest items', 'latest-items', '', '2012-11-23-08-17-17/k2/latest-items', 'index.php?option=com_k2&view=latest&layout=latest', 'component', 1, 883, 3, 10078, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"1","latestItemsCols":"1","latestItemsLimit":"1","latestItemsDisplayEffect":"all","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeed":"1","categoryIDs":["6","3","4"],"categoryTitle":"1","categoryDescription":"1","categoryImage":"1","categoryFeed":"1","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Medium","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"1","latestItemTags":"1","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"1","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 158, 0, '*', 0),
(889, 'mainmenu', 'Kunena Forum', 'kunena-forum', '', '2012-11-23-08-17-17/kunena-forum', 'index.php?option=com_kunena&view=home&defaultmenu=499', 'component', 1, 882, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"catids":"0","menu-anchor_title":"","menu-anchor_css":"jsn-icon-star","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 160, 169, 0, '*', 0),
(890, 'mainmenu', 'Kunena Category', 'kunena-category', '', '2012-11-23-08-17-17/kunena-forum/kunena-category', 'index.php?option=com_kunena&view=category&catid=4', 'component', 1, 889, 3, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 161, 162, 0, '*', 0),
(891, 'mainmenu', 'Recent Topics', 'recent-topics', '', '2012-11-23-08-17-17/kunena-forum/recent-topics', 'index.php?option=com_kunena&view=topics&mode=topics', 'component', 1, 889, 3, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"topics_catselection":"","topics_categories":[""],"topics_time":"-1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 163, 164, 0, '*', 0),
(892, 'mainmenu', 'General Statistics', 'general-statistics', '', '2012-11-23-08-17-17/kunena-forum/general-statistics', 'index.php?option=com_kunena&view=statistics', 'component', 1, 889, 3, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 165, 166, 0, '*', 0),
(893, 'mainmenu', 'Search Topics', 'search-topics', '', '2012-11-23-08-17-17/kunena-forum/search-topics', 'index.php?option=com_kunena&view=search', 'component', 1, 889, 3, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 167, 168, 0, '*', 0),
(975, 'kunenamenu', 'Forum', 'forum', '', 'forum', 'index.php?option=com_kunena&view=home&defaultmenu=977', 'component', 1, 1, 1, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"catids":0}', 257, 274, 0, '*', 0),
(976, 'kunenamenu', 'Index', 'index', '', 'forum/index', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 258, 259, 0, '*', 0),
(977, 'kunenamenu', 'Recent Topics', 'recent', '', 'forum/recent', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":720}', 260, 261, 0, '*', 0),
(978, 'kunenamenu', 'New Topic', 'newtopic', '', 'forum/newtopic', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 262, 263, 0, '*', 0),
(979, 'kunenamenu', 'No Replies', 'noreplies', '', 'forum/noreplies', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":-1}', 264, 265, 0, '*', 0),
(980, 'kunenamenu', 'My Topics', 'mylatest', '', 'forum/mylatest', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"2","topics_categories":"0","topics_time":-1}', 266, 267, 0, '*', 0),
(981, 'kunenamenu', 'Profile', 'profile', '', 'forum/profile', 'index.php?option=com_kunena&view=user', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"integration":1}', 268, 269, 0, '*', 0),
(982, 'kunenamenu', 'Help', 'help', '', 'forum/help', 'index.php?option=com_kunena&view=misc', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"body":"This help page is a menu item inside [b]Kunena Menu[\\/b], which allows easy navigation in your forum. \\n\\n You can use Joomla Menu Manager to edit items in this menu. Please go to [b]Administration[\\/b] >> [b]Menus[\\/b] >> [b]Kunena Menu[\\/b] >> [b]Help[\\/b] to edit or remove this menu item. \\n\\n In this menu item you can use Plain Text, BBCode or HTML. If you want to bind article into this page, you may use article BBCode (with article id): [code][article=full]123[\\/article][\\/code] \\n\\n If you want to create your own menu for Kunena, please start by creating [b]Home Page[\\/b] first. In that page you can select default menu item, which is shown when you enter to Kunena.","body_format":"bbcode"}', 270, 271, 0, '*', 0),
(983, 'kunenamenu', 'Search', 'search', '', 'forum/search', 'index.php?option=com_kunena&view=search', 'component', 1, 975, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 272, 273, 0, '*', 0),
(1071, 'main', 'COM_IMAGESHOW', 'com-imageshow', '', 'com-imageshow', 'index.php?option=com_imageshow', 'component', 0, 1, 1, 10055, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-picture.png', 0, '', 275, 286, 0, '', 1),
(1072, 'main', 'LAUNCH_PAD', 'launch-pad', '', 'com-imageshow/launch-pad', 'index.php?option=com_imageshow', 'component', 0, 1071, 2, 10055, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-off.png', 0, '', 276, 277, 0, '', 1),
(1073, 'main', 'SHOWLISTS', 'showlists', '', 'com-imageshow/showlists', 'index.php?option=com_imageshow&controller=showlist', 'component', 0, 1071, 2, 10055, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-file.png', 0, '', 278, 279, 0, '', 1),
(1074, 'main', 'SHOWCASES', 'showcases', '', 'com-imageshow/showcases', 'index.php?option=com_imageshow&controller=showcase', 'component', 0, 1071, 2, 10055, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-monitor.png', 0, '', 280, 281, 0, '', 1),
(1075, 'main', 'CONFIGURATION_AND_MAINTENANCE', 'configuration-and-maintenance', '', 'com-imageshow/configuration-and-maintenance', 'index.php?option=com_imageshow&controller=maintenance&type=configs', 'component', 0, 1071, 2, 10055, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-cog.png', 0, '', 282, 283, 0, '', 1),
(1076, 'main', 'ABOUT', 'about', '', 'com-imageshow/about', 'index.php?option=com_imageshow&controller=about', 'component', 0, 1071, 2, 10055, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-star.png', 0, '', 284, 285, 0, '', 1),
(1077, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 69, 70, 0, '*', 1),
(1128, 'main', 'JSN_UNIFORM_MENU_TEXT', 'jsn-uniform-menu-text', '', 'jsn-uniform-menu-text', 'index.php?option=com_uniform', 'component', 0, 1, 1, 10065, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-uniform.png', 0, '', 287, 296, 0, '', 1),
(1129, 'main', 'JSN_UNIFORM_MENU_FORMS_TEXT', 'jsn-uniform-menu-forms-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-forms-text', 'index.php?option=com_uniform&view=forms', 'component', 0, 1128, 2, 10065, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-forms.png', 0, '', 288, 289, 0, '', 1),
(1130, 'main', 'JSN_UNIFORM_MENU_SUBMISSIONS_TEXT', 'jsn-uniform-menu-submissions-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-submissions-text', 'index.php?option=com_uniform&view=submissions', 'component', 0, 1128, 2, 10065, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-submissions.png', 0, '', 290, 291, 0, '', 1),
(1131, 'main', 'JSN_UNIFORM_MENU_CONFIGURATION_TEXT', 'jsn-uniform-menu-configuration-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-configuration-text', 'index.php?option=com_uniform&view=configuration', 'component', 0, 1128, 2, 10065, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-cog.png', 0, '', 292, 293, 0, '', 1),
(1132, 'main', 'JSN_UNIFORM_MENU_ABOUT_TEXT', 'jsn-uniform-menu-about-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-about-text', 'index.php?option=com_uniform&view=about', 'component', 0, 1128, 2, 10065, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-about.png', 0, '', 294, 295, 0, '', 1),
(1133, 'main', 'JSN_POWERADMIN_MENU_TEXT', 'jsn-poweradmin-menu-text', '', 'jsn-poweradmin-menu-text', 'index.php?option=com_poweradmin', 'component', 0, 1, 1, 10052, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-wrench.png', 0, '', 297, 306, 0, '', 1),
(1134, 'main', 'JSN_POWERADMIN_MENU_RAWMODE_TEXT', 'jsn-poweradmin-menu-rawmode-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-rawmode-text', 'index.php?option=com_poweradmin&view=rawmode', 'component', 0, 1133, 2, 10052, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-monitor.png', 0, '', 298, 299, 0, '', 1),
(1135, 'main', 'JSN_POWERADMIN_MENU_SITESEARCH_TEXT', 'jsn-poweradmin-menu-sitesearch-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-sitesearch-text', 'index.php?option=com_poweradmin&task=search.query', 'component', 0, 1133, 2, 10052, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-search.png', 0, '', 300, 301, 0, '', 1),
(1136, 'main', 'JSN_POWERADMIN_MENU_CONFIGURATION_TEXT', 'jsn-poweradmin-menu-configuration-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-configuration-text', 'index.php?option=com_poweradmin&view=configuration', 'component', 0, 1133, 2, 10052, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-cog.png', 0, '', 302, 303, 0, '', 1),
(1137, 'main', 'JSN_POWERADMIN_MENU_HELP_TEXT', 'jsn-poweradmin-menu-help-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-help-text', 'index.php?option=com_poweradmin&view=about', 'component', 0, 1133, 2, 10052, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-star.png', 0, '', 304, 305, 0, '', 1),
(1138, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10078, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 307, 328, 0, '', 1),
(1139, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 308, 309, 0, '', 1),
(1140, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 310, 311, 0, '', 1),
(1141, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 312, 313, 0, '', 1),
(1142, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 314, 315, 0, '', 1),
(1143, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 316, 317, 0, '', 1),
(1144, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 318, 319, 0, '', 1),
(1145, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 320, 321, 0, '', 1),
(1146, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 322, 323, 0, '', 1),
(1147, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 324, 325, 0, '', 1),
(1148, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 1138, 2, 10078, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 326, 327, 0, '', 1),
(1149, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena', 'component', 0, 1, 1, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 329, 352, 0, '', 1),
(1150, 'main', 'COM_KUNENA_DASHBOARD', 'com-kunena-dashboard', '', 'com-kunena/com-kunena-dashboard', 'index.php?option=com_kunena&view=cpanel', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 330, 331, 0, '', 1),
(1151, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-categories.png', 0, '', 332, 333, 0, '', 1),
(1152, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-users.png', 0, '', 334, 335, 0, '', 1),
(1153, 'main', 'COM_KUNENA_FILE_MANAGER', 'com-kunena-file-manager', '', 'com-kunena/com-kunena-file-manager', 'index.php?option=com_kunena&view=attachments', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-files.png', 0, '', 336, 337, 0, '', 1),
(1154, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-smileys.png', 0, '', 338, 339, 0, '', 1),
(1155, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-ranks.png', 0, '', 340, 341, 0, '', 1),
(1156, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-templates.png', 0, '', 342, 343, 0, '', 1),
(1157, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-prune.png', 0, '', 344, 345, 0, '', 1),
(1158, 'main', 'COM_KUNENA_PLUGIN_MANAGER', 'com-kunena-plugin-manager', '', 'com-kunena/com-kunena-plugin-manager', 'index.php?option=com_kunena&view=plugins', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-plugins.png', 0, '', 346, 347, 0, '', 1),
(1159, 'main', 'COM_KUNENA_FORUM_TOOLS', 'com-kunena-forum-tools', '', 'com-kunena/com-kunena-forum-tools', 'index.php?option=com_kunena&view=tools', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-config.png', 0, '', 348, 349, 0, '', 1);
INSERT INTO `lrfic_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1160, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 0, 1149, 2, 10096, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-trash.png', 0, '', 350, 351, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_menu_types`
--

CREATE TABLE IF NOT EXISTS `lrfic_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `lrfic_menu_types`
--

INSERT INTO `lrfic_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(8, 'topmenu', 'Top Menu', ''),
(9, 'footermenu', 'Footer Menu', ''),
(10, 'mustsee', 'Must-see Stuff', ''),
(11, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_messages`
--

CREATE TABLE IF NOT EXISTS `lrfic_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `lrfic_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_modules`
--

CREATE TABLE IF NOT EXISTS `lrfic_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- Dumping data for table `lrfic_modules`
--

INSERT INTO `lrfic_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 0, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 0, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 0, 'Banners', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["27"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(25, 0, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 0, 'This Site', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 0, 'Archived Articles', '', '', 1, 'archiveload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 0, 'Latest News', '', '', 1, 'articleslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","ordering":"c_dsc","user_id":"0","show_featured":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 0, 'Articles Most Read', '', '', 1, 'articlespopularload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["26","29"],"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 0, 'Feed Display', '', '', 1, 'feeddisplayload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 0, 'News Flash: Latest', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["20"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"horizontal","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(32, 0, 'News Flash: Random', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"1","ordering":"rand()","layout":"vertical","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 0, 'Random Image', '', '', 1, 'randomimageload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 0, 'Articles Related Items', '', '', 1, 'relateditemsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 0, 'Search', '', '', 1, 'searchload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 0, 'Statistics', '', '', 1, 'statisticsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 0, 'Syndication', '', '', 1, 'syndicate', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 0, '{"text":"Feed Entries","format":"rss","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 0, 'Users Latest', '', '', 1, 'userslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","linktowhat":"0","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(40, 0, 'Wrapper', '', '', 1, 'wrapperload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/fsf.org","add":"1","scrolling":"auto","width":"100%","height":"200","height_auto":"1","target":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 0, 'Footer', '', '', 1, 'footerload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 0, 'Login', '', '', 1, 'loginload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(45, 0, 'Menu', '', '', 1, 'menuload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 0, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 0, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, 'customload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 0, 'Weblinks', '', '', 1, 'weblinksload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 0, 'Breadcrumbs', '', '', 1, 'breadcrumbsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(56, 0, 'Banners', '', '', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":["84"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(58, 0, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 0, 'Articles Categories', '', '', 1, 'articlescategoriesload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","maxlevel":"0","count":"0","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(62, 0, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 0, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 0, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 0, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(68, 0, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 0, 'Articles Category', '', '', 1, 'articlescategoryload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 0, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 0, 'Top Quote (Atomic Template)', '', '<hr />\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 0, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 0, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 0, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\n<h5>Incremental leading</h5>\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 0, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 0, 'Top Menu', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"topmenu","startLevel":"1","endLevel":"2","showAllChildren":"0","tag_id":"","class_sfx":"menu-topmenu menu-iconmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(78, 0, 'Footer Menu', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"footermenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"menu-divmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 0, 'Must-see Stuff', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mustsee","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-1 jsn-icon-home duohead-1","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(81, 0, 'Tree Menu with icons and rich text', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-settings","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(83, 0, 'Position "left"', '', '<p>This is a sample module in position <strong>left</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-selection","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(84, 0, 'Side Menu', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-1 jsn-icon-settings","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(85, 0, 'Mobile Ready', '', '<p>JSN Dome provides special built-in design optimized for modern mobile devices such as iPhone, Android and Windows Mobile-based.</p>\n<p>You get the  same original design, but delivered in compact format.</p>\n<p><a class="link-action" href="index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=486">More about mobile support&hellip;</a><strong></strong></p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-online","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(86, 0, 'Side Menu with icons / rich text', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-settings","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(87, 0, 'Compatibility', '', '<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=490"><img src="images/extensions/custom-html/native-compatibility/j25-j15-promo.png" width="170" height="50" alt="Joomla! 2.5 - Get more" /></a></p>\n<p>JSN Dome is delivered in 2 separated versions <strong>natively</strong> <strong>compatible for Joomla! 2.5 and Joomla! 1.5</strong>.</p>\n<p>Installation package for both Joomla! versions can be downloaded from Customer Area.</p>', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2 jsn-icon-info","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 0, 'Docs', '', '<p>Full details about all template features can be found in comprehensive documentation package available for free download.</p>\n<p class="content-center"><a class="link-button button-light" href="http://www.joomlashine.com/joomla-templates/jsn-dome-docs.zip"><span class="link-icon jsn-icon-download">Free download</span></a></p>', 5, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-help","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 0, 'Tree Menu', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-1 jsn-icon-settings","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(90, 0, 'Design', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-1 jsn-icon-star","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(91, 0, 'Features', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"menu-treemenu ","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-star","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(92, 0, 'Side Menu RTL', '', '', 6, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-settings","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(93, 0, 'Side Menu RTL with icons and rich text', '', '', 4, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-2 jsn-icon-settings","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(94, 0, 'Compatibility', '', '<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=490"><img src="images/extensions/custom-html/native-compatibility/j25-j3x-promo.png" width="170" height="50" alt="Joomla! 2.5 Joomla! 3.x - Get more" /></a></p>\r\n<p>JSN Dome is natively compatible with both <strong>Joomla! 2.5 and Joomla! 3.x</strong>.</p>\r\n<p>The installation package is compatible with both Joomla CMS.</p>', 8, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-info","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 0, 'Ultimate K2 Support', '', '<p class="content-center"><img class="image-border" src="http://demo.joomlashine.com/joomla-templates/jsn_dome/images/extensions/custom-html/k2-support/k2-logo.png" border="0" alt="k2 logo" width="160" height="80" /></p>\n<p>Recently, we see more and more websites using wonderful free open source <a href="http://getk2.org/" target="_blank">extension K2</a> and there are indeed bold reasons for that.</p>\n<p>To support K2 users we added comprehensive in-depth K2 styling for all our templates.</p>\n<p><a class="link-action" href="../index.php?option=com_content&amp;view=article&amp;id=91&amp;Itemid=206">More about K2 support...</a></p>', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"box-blue jsn-icon-article","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 0, 'Docs', '', '<p>Full details about all template features can be found in comprehensive documentation package available for free download.</p>\n<p class="content-center"><a href="http://www.joomlashine.com/joomla-templates/jsn-dome-docs.zip" class="link-button button-light"><span class="link-icon jsn-icon-download">Free download</span></a></p>', 9, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-help","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(97, 0, 'Who''s Online', '', '', 11, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-statistics","cache":"0","filter_groups":"0"}', 0, '*'),
(98, 0, 'Position "right"', '', '<p>This is sample module in position <strong>right</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-display","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 0, 'Joomla! Copyright', '', '<p>The <a href="http://www.joomla.org/" target="_blank">Joomla!</a> name is used under a limited license from <a href="http://www.opensourcematters.org/" target="_blank">Open Source Matters</a> in the United States and other countries.<a href="http://www.joomlashine.com" target="_blank">JoomlaShine.com</a> is not affiliated with or endorsed by Open Source Matters or the Joomla! Project.</p>', 0, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 0, 'Breadcrumbs', '', '', 0, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(101, 0, 'JoomlaShine copyright', '', '<p>Copyright © 2008 - 2013 JoomlaShine.com. All rights reserved. Many features demonstrated on this website are available only in <a href="http://www.joomlashine.com/joomla-templates/jsn-dome-download.html">JSN Dome PRO Edition</a>.</p>\r\n<p>All stock photos used on this JSN Dome demo site are only for demo purposes and not included in the template package.</p>', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 0, 'Position "innerleft"', '', '<p>This is sample module in position <strong>innerleft</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 0, 'innerleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 0, 'Position "innerright"', '', '<p>This is sample module in position <strong>innerright</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 0, 'innerright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 0, 'Main Menu (Icons / Rich Text)', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(105, 0, 'JSN ImageShow Replacement', '', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" style="display: block; height: 300px; background: url(http://demo.joomlashine.com/joomla-templates/jsn_dome/images/extensions/custom-html/jsn-imageshow-promo/jsn-imageshow-promo.jpg) center center no-repeat;"></a>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 0, 'Why choose JSN Dome?', '', '<p>If you are looking for a clean and professional business template, the solution is right here.</p>\n<p>In 5 minutes you will see how JSN Dome can be the perfect template for your business website.</p>\n<p class="content-center"><a class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=101&amp;Itemid=497"><span class="link-icon jsn-icon-display">Take a quick tour</span></a></p>', 1, 'promo-left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 0, 'Position "stick-leftbottom"', '', '<a><img src="images/extensions/custom-html/position-stick-x/position-stick-leftbottom.png" width="65" height="190" alt="Sample module in position -stick-leftbottom-" /></a>', 0, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 0, 'Position "stick-leftmiddle''', '', '<a><img src="images/extensions/custom-html/position-stick-x/position-stick-leftmiddle.png" width="65" height="190" alt="Sample module in position -stick-leftmiddle-" /></a>', 0, 'stick-leftmiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 0, 'Position "stick-lefttop"', '', '<a><img src="images/extensions/custom-html/position-stick-x/position-stick-lefttop.png" width="65" height="190" alt="Sample module in position -stick-lefttop-" /></a>', 0, 'stick-lefttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 0, 'See other templates', '', '<a rel="{handler: ''iframe'', size: {x: 640, y: 510}}" href="http://www.joomlashine.com/pro-joomla-templates-promo.html" class="modal link-tooltip" style="z-index: 90;"><img src="images/extensions/custom-html/see-other-templates/see-other-templates-banner.png" width="120" height="120" alt="See other templates" /><span style="left: -90px; top: -260px"><img src="images/extensions/custom-html/see-other-templates/see-other-templates-banner-text.png" width="200" height="200" alt="See other templates" /></span></a>', 1, 'stick-rightbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 0, 'Position "stick-rightbottom"', '', '<a><img src="images/extensions/custom-html/position-stick-x/position-stick-rightbottom.png" width="65" height="190" alt="Sample module in position -rightbottom-" /></a>', 0, 'stick-rightbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 0, 'Position "stick-rightmiddle"', '', '<a><img src="images/extensions/custom-html/position-stick-x/position-stick-rightmiddle.png" width="65" height="190" alt="Sample module in position -stickrightmiddle-" /></a>', 0, 'stick-rightmiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 0, 'Position "stick-righttop"', '', '<a><img src="images/extensions/custom-html/position-stick-x/position-stick-righttop.png" width="65" height="190" alt="Sample module in position -righttop-" /></a>', 0, 'stick-righttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(114, 0, 'Plain Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <em>empty</em></p>', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 0, 'Plain with Icons', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;icon-star&quot;</strong></p>', 2, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"jsn-icon-image","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 0, 'Layout Variations', '', '<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=90&amp;Itemid=472" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | Right</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=92&amp;Itemid=477" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" style="vertical-align: middle;" class="margin-right" /><br />\n		Main content only</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=89&amp;Itemid=474" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | InnerRight</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=88&amp;Itemid=476" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="InnerLeft | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		InnerLeft | Center | Right</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=91&amp;Itemid=473" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | InnerLeft | Center</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=87&amp;Itemid=475" class="link-highlight"><img src="images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Center | InnerRight | Right</a></div>\n</div>\n', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 0, 'Versatile Layout', '', '<p class="content-center"><img src="images/extensions/custom-html/versatile-layout/layout-banner.jpg" alt="Layout banner" class="image-border" /></p>\n<p>JSN Dome provides <strong>36+ module positions</strong> allowing you to have multiple layout configurations.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=71&amp;Itemid=466" class="link-action">More about layout&hellip;</a></p>', 1, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"jsn-icon-image","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(120, 0, 'Stunning Colors', '', '<p class="content-center"><img src="images/extensions/custom-html/stunning-colors/colors-banner.jpg" class="image-border" alt="Stunning Colors" /></p>\n<p>From <strong>6 color variations</strong> available you can choose the one that match your brand identity best.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=68&amp;Itemid=467" class="link-action">More about colors&hellip;</a></p>', 1, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"jsn-icon-selection","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 0, 'Easy to Start', '', '<p><img src="images/extensions/custom-html/easy-start/easy-start-banner.jpg" alt="Ultimate Browsers Support" width="100" height="100" class="image-left image-border" />JSN Dome provides  unique mechanism of installing sample data on directly your current website. Just  few clicks and the demo website is here.</p>\r\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=77&amp;Itemid=484" class="link-action">Read more...</a></p>', 3, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 0, ' Docs / Support', '', '<p><img class="image-left image-border" src="images/extensions/custom-html/docs-support/docs-support-banner.jpg" border="0" alt="Docs and Support" width="100" height="100" />In addition to comprehensive documentations in PDF format, you also get support from friendly forum and dedicated support system.</p>\r\n<p><a class="link-action" href="index.php?option=com_content&amp;view=article&amp;id=76&amp;Itemid=493">Read more...</a></p>', 4, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(123, 0, 'Native RTL Support', '', '<p><img class="image-border image-left" src="images/extensions/custom-html/rtl-support/rtl-support-banner.jpg" border="0" alt="Native RTL Support" width="100" height="100" />Native RTL support means that every elements on the page is mirror swapped including layout, menus, typography, icons...everything.</p>\r\n<p><a class="link-action" href="index.php?option=com_content&amp;view=article&amp;id=85&amp;Itemid=488">Read more...</a></p>', 2, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 0, 'Sample Content', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-article","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(126, 0, '"LightBox 1" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;lightbox-1 jsn-icon-search&quot;</strong></p>', 3, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"lightbox-1 jsn-icon-search","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(127, 0, '"LightBox 2" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;lightbox-2 jsn-icon-user&quot;</strong></p>', 5, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 0, '"RichBox 1" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-1 jsn-icon-calendar&quot;</strong></p>', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"richbox-1 jsn-icon-calendar","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(129, 0, '"RichBox 3" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-3 jsn-icon-download&quot;</strong></p>', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"richbox-3 jsn-icon-download","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(130, 0, '"RichBox 2" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-2 jsn-icon-info&quot;</strong></p>', 5, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"richbox-2 jsn-icon-info","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');
INSERT INTO `lrfic_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(131, 0, '"Solid 2" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;solid-2 jsn-icon-display&quot;</strong></p>', 4, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"solid-2 jsn-icon-display","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(132, 0, '"Solid 1" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;solid-1&quot;</strong></p>', 0, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"solid-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(134, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(135, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(136, 0, 'Built with JSN PowerAdmin', '', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin.html" target="_blank" class="link-tooltip" style="z-index: 90;"><img src="images/extensions/custom-html/built-with-poweradmin/built-with-poweradmin-banner.png" width="120" height="120" alt="Built with JSN PowerAdmin" /><span style="top: -260px"><img src="images/extensions/custom-html/built-with-poweradmin/built-with-poweradmin-banner-text.png" width="200" height="200" alt="Built with JSN PowerAdmin" style="max-width: none;" /></span></a>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(138, 0, 'Position "content-top"', '', '<p>This is a sample module in position <strong>“content-top”</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(139, 0, 'Position "content-top"', '', '<p>This is a sample module in position <strong>“content-top”</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(140, 0, 'Position "user1"', '', '<p>This is a sample module in position <strong>&ldquo;user1&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(141, 0, 'Position "user2"', '', '<p>This is a sample module in position <strong>&ldquo;user2&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(142, 0, 'Position "user3"', '', '<p>This is a sample module in position <strong>&ldquo;user3&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(143, 0, 'Position "user4"', '', '<p>This is a sample module in position <strong>&ldquo;user4&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(144, 0, 'Position "user5"', '', '<p>This is a sample module in position <strong>&ldquo;user5&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(145, 0, 'Position "user6"', '', '<p>This is a sample module in position <strong>&ldquo;user6&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(146, 0, 'Position "user7"', '', '<p>This is a sample module in position <strong>&ldquo;user7&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(147, 0, 'Position "promo"', '', '<div style="height: 204px; background: url(''http://demo.joomlashine.com/joomla-templates/jsn_dome/pro/images/extensions/custom-html/position-promo/position-promo.jpg'') center center no-repeat;"> </div>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(148, 0, 'Position "promo-left"', '', '<p>This is a sample module in position <strong>&ldquo;promo-left&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 1, 'promo-left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(149, 0, 'Position "promo-right"', '', '<p>This is a sample module in position <strong>&ldquo;promo-right&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'promo-right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(151, 0, 'Position "content-bottom"', '', '<p>This is a sample module in position <strong>“content-bottom”</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>', 0, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(152, 0, 'Position "content-bottom"', '', '<p>This is a sample module in position <strong>“content-bottom”</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(164, 0, 'Demo Builder Button', '', '<style>\r\ndiv#jsn-demo-builder-toggle {\r\n    position: absolute;\r\n    width: 580px;\r\n    left: -495px;\r\n    transition: all 0.6s ease;\r\n    -moz-transition: all 0.6s ease;\r\n    -webkit-transition: all 0.6s ease;\r\n}\r\ndiv#jsn-demo-builder-toggle > a:hover:not(.active) {\r\n    left: -490px;\r\n}\r\ndiv#jsn-demo-builder-toggle.active {\r\n    left: 0;\r\n}\r\ndiv#jsn-demo-builder-toggle > div,\r\ndiv#jsn-demo-builder-toggle > a {\r\n    float: left;\r\n    cursor: default;\r\n}\r\ndiv#jsn-demo-builder-toggle > a {\r\n    overflow: hidden;\r\n}\r\ndiv#jsn-demo-builder-toggle > a img {\r\n    position: relative;\r\n    left: -5px;\r\n    transition: all 0.3s ease;\r\n    -moz-transition: all 0.3s ease;\r\n    -webkit-transition: all 0.3s ease;\r\n    cursor: pointer;\r\n}\r\ndiv#jsn-demo-builder-toggle > a img:hover,\r\ndiv#jsn-demo-builder-toggle > a.active img {\r\n    left: 0;\r\n}\r\ndiv#jsn-demo-builder-toggle > div > iframe {\r\n    background: #fff url(images/extensions/custom-html/db-loading.gif) center center no-repeat;\r\n    border-top: solid 10px #434448;\r\n    border-right: solid 10px #434448;\r\n    border-bottom: solid 10px #434448;\r\n    border-left: none;\r\n    border-bottom-right-radius: 5px;\r\n}\r\ndiv#jsn-demo-builder-toggle {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n</style>\r\n<div id="jsn-demo-builder-toggle">\r\n    <div id="jsn-demo-builder-wrapper">\r\n        <iframe id="jsn-demo-builder-iframe" width="480px" height="590"></iframe>\r\n    </div>\r\n    <a id="jsn-demo-builder-button" href="javascript:void(0);">\r\n        <img src="images/extensions/custom-html/demo_builder_button_black.png" alt="Demo Builder Toggle" />\r\n    </a>\r\n</div>\r\n<script type="text/javascript">\r\n    var demoButton = document.getElementById("jsn-demo-builder-button");\r\n    demoButton.addEventListener("click", function() {\r\n        this.classList.toggle("active");\r\n        \r\n        var outDiv = document.getElementById("jsn-demo-builder-toggle");\r\n        outDiv.classList.toggle("active");\r\n\r\n        // Only load the iframe if the button is clicked as active and the iframe is not loaded\r\n        if (this.classList.contains("active") && !outDiv.classList.contains("iframeloaded")) {\r\n            // Load the iframe\r\n            document.getElementById("jsn-demo-builder-iframe").src = "http://myjoomlashine.com/demo-builder/index.php?template=dome";\r\n        }\r\n\r\n        // Add an indicator that the iframe has been loaded, no reload if click the button again and again\r\n        outDiv.classList.add("iframeloaded")\r\n    }, false);\r\n</script>', 1, 'stick-lefttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(166, 0, 'JSN imageshow Quick Icons', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow_quickicon', 1, 1, '', 1, '*'),
(167, 0, 'JSN imageshow Module', '', '', 0, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"","showlist_id":"3","showcase_id":"1","width":"","height":"","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(169, 230, 'JSN PowerAdmin Quick Icons', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_poweradmin', 1, 1, '', 1, '*'),
(170, 0, 'Reviews on JED', '', '<p>JSN UniForm has been <strong>approved on Joomla Extension Directory</strong>. Let''s see how Joomla community enjoy it. If you use JSN UniForm, please post a rating and a review at the <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-on-jed.html" target="_blank">Joomla! Extensions Directory</a></p>\r\n', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"lightbox-2 jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(171, 0, 'Free Joomla! Ebook', '', '<a href="http://www.joomlashine.com/index.php?option=com_lightcart&view=sharemessage&layout=askbefore&tmpl=component&utm_source=demo.joomlashine.com%20&utm_medium=banner&utm_campaign=Joomla%2B3.0%2BMade%2BEasy"><img src="images/banners/banner-joomla-30-made-easy.jpg" alt="Free Joomla ebook | Joomla 3.0 Made Easy" /></a>', 10, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(177, 0, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(178, 0, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(179, 0, 'K2 Comments', '', '', 10, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_comments', 1, 1, '{"moduleclass_sfx":"lightbox-2","module_usage":"0","catfilter":"0","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"0","feed":"0","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(180, 0, 'K2 Calendar', '', '', 9, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":"solid-2","module_usage":"2","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(181, 0, 'K2 Tag Cloud', '', '', 11, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":"solid-1","module_usage":"7","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"90","max_size":"150","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(182, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(183, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(184, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(185, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(186, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(187, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(188, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, 1, '', 0, ''),
(189, 229, 'Extended style', '', '', 1, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/demo.joomlashine.com\\/joomla-templates\\/jsn_epic\\/pro\\/images\\/extensions\\/custom-html\\/extended-styles-article\\/index.html","add":"0","scrolling":"auto","width":"100%","height":"1200","height_auto":"1","frameborder":"0","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_modules_menu`
--

CREATE TABLE IF NOT EXISTS `lrfic_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_modules_menu`
--

INSERT INTO `lrfic_modules_menu` (`moduleid`, `menuid`) VALUES
(1, -507),
(1, -506),
(1, -505),
(1, -504),
(1, -503),
(1, -502),
(1, -501),
(1, -500),
(1, -499),
(1, -479),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 205),
(16, 435),
(17, 0),
(18, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 0),
(38, 300),
(40, 313),
(41, 324),
(44, 312),
(45, 303),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(49, 417),
(52, 416),
(56, 466),
(56, 472),
(56, 473),
(56, 474),
(56, 475),
(56, 476),
(56, 477),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 0),
(78, 435),
(79, 435),
(81, 482),
(83, 472),
(83, 473),
(83, 474),
(85, 435),
(86, 480),
(87, 467),
(87, 468),
(87, 469),
(87, 471),
(87, 483),
(87, 484),
(87, 485),
(87, 486),
(87, 487),
(87, 489),
(87, 496),
(87, 508),
(87, 514),
(87, 515),
(87, 516),
(87, 517),
(87, 518),
(87, 519),
(87, 520),
(87, 521),
(87, 522),
(87, 523),
(87, 524),
(87, 525),
(87, 526),
(88, 465),
(88, 466),
(88, 467),
(88, 468),
(88, 469),
(88, 471),
(88, 478),
(88, 479),
(88, 483),
(88, 484),
(88, 485),
(88, 486),
(88, 487),
(88, 488),
(88, 489),
(88, 490),
(88, 491),
(88, 492),
(88, 494),
(88, 622),
(88, 623),
(88, 624),
(88, 625),
(88, 626),
(88, 627),
(88, 628),
(88, 629),
(88, 630),
(88, 694),
(89, 482),
(90, 465),
(90, 466),
(90, 467),
(90, 468),
(90, 469),
(90, 471),
(90, 478),
(90, 479),
(90, 622),
(90, 623),
(90, 624),
(90, 625),
(90, 626),
(90, 627),
(90, 628),
(90, 629),
(90, 630),
(91, 484),
(91, 485),
(91, 486),
(91, 487),
(91, 488),
(91, 493),
(91, 706),
(91, 754),
(93, 481),
(94, 435),
(95, 435),
(96, 435),
(97, 435),
(98, 472),
(98, 475),
(98, 476),
(99, 0),
(100, 0),
(101, 0),
(102, 473),
(102, 476),
(103, 474),
(103, 475),
(104, 479),
(105, 435),
(105, 465),
(105, 466),
(105, 467),
(105, 468),
(105, 469),
(105, 470),
(105, 471),
(105, 478),
(105, 479),
(105, 480),
(105, 481),
(105, 482),
(105, 483),
(105, 484),
(105, 485),
(105, 486),
(105, 487),
(105, 488),
(105, 489),
(105, 490),
(105, 491),
(105, 492),
(105, 493),
(105, 494),
(105, 495),
(105, 496),
(105, 498),
(105, 499),
(105, 500),
(105, 501),
(105, 502),
(105, 503),
(105, 504),
(105, 505),
(105, 506),
(105, 507),
(105, 508),
(105, 509),
(105, 510),
(105, 511),
(105, 512),
(105, 514),
(105, 515),
(105, 516),
(105, 517),
(105, 518),
(105, 519),
(105, 520),
(105, 521),
(105, 522),
(105, 523),
(105, 524),
(105, 525),
(105, 526),
(106, 435),
(106, 465),
(106, 466),
(106, 467),
(106, 468),
(106, 469),
(106, 470),
(106, 471),
(106, 478),
(106, 479),
(106, 480),
(106, 481),
(106, 482),
(106, 483),
(106, 484),
(106, 485),
(106, 486),
(106, 487),
(106, 488),
(106, 489),
(106, 490),
(106, 491),
(106, 492),
(106, 493),
(106, 494),
(106, 495),
(106, 496),
(106, 498),
(106, 499),
(106, 500),
(106, 501),
(106, 502),
(106, 503),
(106, 504),
(106, 505),
(106, 506),
(106, 507),
(106, 508),
(106, 509),
(106, 510),
(106, 511),
(106, 512),
(106, 514),
(106, 515),
(106, 516),
(106, 517),
(106, 518),
(106, 519),
(106, 520),
(106, 521),
(106, 522),
(106, 523),
(106, 524),
(106, 525),
(106, 526),
(106, 754),
(107, 472),
(107, 473),
(107, 474),
(107, 475),
(107, 476),
(107, 477),
(108, 472),
(108, 473),
(108, 474),
(108, 475),
(108, 476),
(108, 477),
(109, 472),
(109, 473),
(109, 474),
(109, 475),
(109, 476),
(109, 477),
(110, 0),
(111, 472),
(111, 473),
(111, 474),
(111, 475),
(111, 476),
(111, 477),
(112, 472),
(112, 473),
(112, 474),
(112, 475),
(112, 476),
(112, 477),
(113, 472),
(113, 473),
(113, 474),
(113, 475),
(113, 476),
(113, 477),
(114, 470),
(115, 470),
(116, 472),
(116, 473),
(116, 474),
(116, 475),
(116, 476),
(116, 477),
(118, 435),
(120, 435),
(121, 435),
(121, 465),
(121, 466),
(121, 467),
(121, 468),
(121, 469),
(121, 470),
(121, 471),
(121, 478),
(121, 479),
(121, 480),
(121, 481),
(121, 482),
(121, 483),
(121, 484),
(121, 485),
(121, 486),
(121, 487),
(121, 488),
(121, 489),
(121, 490),
(121, 491),
(121, 492),
(121, 493),
(121, 494),
(121, 495),
(121, 496),
(121, 498),
(121, 499),
(121, 500),
(121, 501),
(121, 502),
(121, 503),
(121, 504),
(121, 505),
(121, 506),
(121, 507),
(121, 508),
(121, 509),
(121, 510),
(121, 511),
(121, 512),
(121, 514),
(121, 515),
(121, 516),
(121, 517),
(121, 518),
(121, 519),
(121, 520),
(121, 521),
(121, 522),
(121, 523),
(121, 524),
(121, 525),
(121, 526),
(122, 435),
(122, 465),
(122, 466),
(122, 467),
(122, 468),
(122, 469),
(122, 470),
(122, 471),
(122, 478),
(122, 479),
(122, 480),
(122, 481),
(122, 482),
(122, 483),
(122, 484),
(122, 485),
(122, 486),
(122, 487),
(122, 488),
(122, 489),
(122, 490),
(122, 491),
(122, 492),
(122, 493),
(122, 494),
(122, 495),
(122, 496),
(122, 502),
(122, 503),
(122, 504),
(122, 505),
(122, 506),
(122, 507),
(122, 508),
(122, 509),
(122, 510),
(122, 511),
(122, 512),
(122, 514),
(122, 515),
(122, 516),
(122, 517),
(122, 518),
(122, 519),
(122, 520),
(122, 521),
(122, 522),
(122, 523),
(122, 524),
(122, 525),
(122, 526),
(123, 435),
(123, 465),
(123, 466),
(123, 467),
(123, 468),
(123, 469),
(123, 470),
(123, 471),
(123, 478),
(123, 479),
(123, 480),
(123, 481),
(123, 482),
(123, 483),
(123, 484),
(123, 485),
(123, 486),
(123, 487),
(123, 488),
(123, 489),
(123, 490),
(123, 491),
(123, 492),
(123, 493),
(123, 494),
(123, 495),
(123, 496),
(123, 502),
(123, 503),
(123, 504),
(123, 505),
(123, 506),
(123, 507),
(123, 508),
(123, 509),
(123, 510),
(123, 511),
(123, 512),
(123, 514),
(123, 515),
(123, 516),
(123, 517),
(123, 518),
(123, 519),
(123, 520),
(123, 521),
(123, 522),
(123, 523),
(123, 524),
(123, 525),
(123, 526),
(124, 508),
(124, 509),
(124, 510),
(124, 511),
(124, 512),
(124, 514),
(124, 515),
(124, 516),
(124, 517),
(124, 518),
(124, 519),
(124, 520),
(124, 521),
(124, 522),
(124, 523),
(124, 524),
(124, 525),
(124, 526),
(126, 470),
(127, 470),
(128, 470),
(129, 470),
(130, 470),
(131, 470),
(132, 470),
(134, 0),
(135, 0),
(136, 0),
(138, 472),
(138, 473),
(138, 474),
(138, 475),
(138, 476),
(138, 477),
(139, 472),
(139, 473),
(139, 474),
(139, 475),
(139, 476),
(139, 477),
(140, 472),
(140, 473),
(140, 474),
(140, 475),
(140, 476),
(140, 477),
(141, 472),
(141, 473),
(141, 474),
(141, 475),
(141, 476),
(141, 477),
(142, 472),
(142, 473),
(142, 474),
(142, 475),
(142, 476),
(142, 477),
(143, 472),
(143, 473),
(143, 474),
(143, 475),
(143, 476),
(143, 477),
(144, 472),
(144, 473),
(144, 474),
(144, 475),
(144, 476),
(144, 477),
(145, 472),
(145, 473),
(145, 474),
(145, 475),
(145, 476),
(145, 477),
(146, 472),
(146, 473),
(146, 474),
(146, 475),
(146, 476),
(146, 477),
(147, 472),
(147, 473),
(147, 474),
(147, 475),
(147, 476),
(147, 477),
(148, 472),
(148, 473),
(148, 474),
(148, 475),
(148, 476),
(148, 477),
(149, 472),
(149, 473),
(149, 474),
(149, 475),
(149, 476),
(149, 477),
(151, 472),
(151, 473),
(151, 474),
(151, 475),
(151, 476),
(151, 477),
(152, 472),
(152, 473),
(152, 474),
(152, 475),
(152, 476),
(152, 477),
(164, -477),
(164, -476),
(164, -475),
(164, -474),
(164, -473),
(164, -472),
(166, 0),
(167, 435),
(167, 465),
(167, 466),
(167, 467),
(167, 468),
(167, 469),
(167, 470),
(167, 471),
(167, 478),
(167, 479),
(167, 480),
(167, 481),
(167, 482),
(167, 483),
(167, 484),
(167, 485),
(167, 486),
(167, 487),
(167, 488),
(167, 489),
(167, 490),
(167, 491),
(167, 492),
(167, 493),
(167, 494),
(167, 495),
(167, 496),
(167, 508),
(167, 509),
(167, 510),
(167, 511),
(167, 512),
(167, 514),
(167, 515),
(167, 516),
(167, 517),
(167, 518),
(167, 519),
(167, 520),
(167, 521),
(167, 522),
(167, 523),
(167, 524),
(167, 525),
(167, 526),
(167, 628),
(167, 629),
(167, 630),
(167, 754),
(169, 0),
(170, 706),
(171, 435),
(177, 0),
(178, 0),
(179, 883),
(179, 884),
(179, 885),
(179, 886),
(179, 887),
(179, 888),
(180, 883),
(180, 884),
(180, 885),
(180, 886),
(180, 887),
(180, 888),
(181, 883),
(181, 884),
(181, 885),
(181, 886),
(181, 887),
(181, 888),
(189, 882);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `lrfic_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lrfic_newsfeeds`
--

INSERT INTO `lrfic_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`, `description`, `version`, `hits`, `images`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, ''),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_overrider`
--

CREATE TABLE IF NOT EXISTS `lrfic_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `lrfic_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `lrfic_postinstall_messages`
--

INSERT INTO `lrfic_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(5, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(6, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(7, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_redirect_links`
--

CREATE TABLE IF NOT EXISTS `lrfic_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) DEFAULT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lrfic_redirect_links`
--

INSERT INTO `lrfic_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
(1, 'http://192.168.1.254/joomlashine/website/demo/joomla-templates/jsn_dome/j16_new/index.php?option=com_content&view=article&id=100&Itemid=136', '', 'http://192.168.1.254/joomlashine/website/demo/joomla-templates/jsn_dome/j16_new/index.php', '', 0, 0, '2011-04-01 09:40:20', '0000-00-00 00:00:00', 301),
(2, 'http://192.168.1.254/joomlashine/website/demo/joomla-templates/jsn_dome/j16_new/index.php?option=com_content&view=article&id=63&Itemid=92', '', 'http://192.168.1.254/joomlashine/website/demo/joomla-templates/jsn_dome/j16_new/index.php?option=com_content&view=article&id=71&Itemid=466', '', 0, 0, '2011-04-01 09:58:42', '0000-00-00 00:00:00', 301),
(3, 'http://192.168.1.254/joomlashine/website/demo/joomla-templates/jsn_dome/j16_new/index.php?option=com_content&view=article&id=63&Itemid=92&jsn_setdirec', '', 'http://192.168.1.254/joomlashine/website/demo/joomla-templates/jsn_dome/j16_new/index.php?option=com_content&view=article&id=90&Itemid=472', '', 0, 0, '2011-04-04 01:23:34', '0000-00-00 00:00:00', 301),
(4, 'http://rc.joomlashine.com/demo/joomla-templates/jsn_dome/j30/pro/index.php?option=com_content&view=article&id=107&Itemid=803', '', '', '', 1, 0, '2012-12-25 07:43:37', '0000-00-00 00:00:00', 301),
(5, 'http://rc.joomlashine.com/demo/joomla-templates/jsn_dome/j30/pro/index.php?option=com_kunena&view=category&Itemid=873&layout=list', '', 'http://rc.joomlashine.com/demo/joomla-templates/jsn_dome/j30/pro/index.php?option=com_k2&view=itemlist&layout=tag&tag=Joomla%20newbies&task=tag&Itemid', '', 1, 0, '2013-04-24 09:59:31', '0000-00-00 00:00:00', 301);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_schemas`
--

CREATE TABLE IF NOT EXISTS `lrfic_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_schemas`
--

INSERT INTO `lrfic_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_session`
--

CREATE TABLE IF NOT EXISTS `lrfic_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_session`
--

INSERT INTO `lrfic_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('jkjbjbdpvjqk9e3ui4eu218m72', 1, 0, '1431942638', '__default|a:12:{s:15:"session.counter";i:52;s:19:"session.timer.start";i:1431941328;s:18:"session.timer.last";i:1431942637;s:17:"session.timer.now";i:1431942638;s:22:"session.client.browser";s:138:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/47.0 Chrome/41.0.2272.127_coc_coc Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":7:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"en-GB";}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:6:"update";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:0:"";s:9:"client_id";s:0:"";s:4:"type";s:0:"";s:5:"group";s:0:"";}s:8:"ordercol";s:4:"name";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";s:1:"0";}}s:16:"com_joomlaupdate";O:8:"stdClass":3:{s:4:"file";N;s:8:"password";s:32:"BOQiH7T5zX4lwAvEEM9mOBhz3KwKRASv";s:8:"filesize";i:9491010;}s:10:"com_kunena";O:8:"stdClass":1:{s:7:"install";O:8:"stdClass":8:{s:4:"step";i:5;s:4:"task";i:0;s:6:"status";a:10:{i:0;a:4:{s:4:"step";i:1;s:4:"task";s:20:"Prepare Installation";s:7:"success";b:1;s:3:"msg";s:0:"";}i:1;a:4:{s:4:"step";i:2;s:4:"task";s:43:"Installing Kunena - Alphauserpoints plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}i:2;a:4:{s:4:"step";i:2;s:4:"task";s:37:"Installing Kunena - Community plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}i:3;a:4:{s:4:"step";i:2;s:4:"task";s:39:"Installing Kunena - Comprofiler plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}i:4;a:4:{s:4:"step";i:2;s:4:"task";s:36:"Installing Kunena - Gravatar plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}i:5;a:4:{s:4:"step";i:2;s:4:"task";s:34:"Installing Kunena - Uddeim plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}i:6;a:4:{s:4:"step";i:2;s:4:"task";s:34:"Installing Kunena - Kunena plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}i:7;a:4:{s:4:"step";i:2;s:4:"task";s:34:"Installing Kunena - Joomla plug-in";s:7:"success";b:1;s:3:"msg";s:0:"";}s:7:"upgrade";a:4:{s:4:"step";i:3;s:4:"task";s:34:"Database upgraded to version 3.0.8";s:7:"success";b:1;s:3:"msg";s:0:"";}i:8;a:4:{s:4:"step";i:4;s:4:"task";s:36:"Installation completed successfully.";s:7:"success";b:1;s:3:"msg";s:0:"";}}s:6:"action";s:7:"upgrade";s:7:"version";O:8:"stdClass":15:{s:2:"id";s:1:"2";s:7:"version";s:5:"3.0.1";s:11:"versiondate";s:10:"2013-06-29";s:11:"installdate";s:10:"2013-08-02";s:5:"build";s:0:"";s:11:"versionname";s:15:"Noordwijkerhout";s:5:"state";s:0:"";s:6:"prefix";s:7:"kunena_";s:9:"component";s:6:"Kunena";s:6:"action";s:7:"UPGRADE";s:5:"label";s:14:"Upgrade Kunena";s:11:"description";s:43:"Upgrade Kunena from version 3.0.1 to 3.0.8.";s:4:"hint";s:100:"<strong class="khint">HINT:</strong> Use this option to upgrade Kunena 3.0.1 to the current version.";s:7:"warning";s:0:"";s:4:"link";s:120:"/jsn_dome_pro_j3x/administrator/index.php?option=com_kunena&view=install&task=upgrade&14aef2de64ff62ac4d5a873080c8c813=1";}s:7:"avatars";O:8:"stdClass":4:{s:7:"missing";i:0;s:6:"failed";i:0;s:8:"migrated";i:0;s:7:"current";i:0;}s:11:"attachments";O:8:"stdClass":4:{s:7:"missing";i:0;s:6:"failed";i:0;s:8:"migrated";i:0;s:7:"current";i:0;}s:7:"dbstate";N;}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}s:13:"com_templates";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:5:"style";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:135;}s:4:"data";N;}}}s:3:"jsn";O:8:"stdClass":1:{s:8:"template";O:8:"stdClass":2:{s:18:"maxCompressionSize";s:3:"100";s:14:"cacheDirectory";s:6:"cache/";}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":29:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"618";s:4:"name";s:10:"Super User";s:8:"username";s:6:"linhtv";s:5:"email";s:17:"linhvnt@yahoo.com";s:8:"password";s:34:"$P$D2G6WTKLqaDq56LD80NiBISw4va7qc0";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-05-18 09:28:21";s:13:"lastvisitDate";s:19:"0000-00-00 00:00:00";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:3:"gid";i:1000;}s:13:"session.token";s:32:"9df5ca78b077f309f6a7508fb0201a2a";s:13:"kunena.reload";i:1;s:12:"kunena.queue";a:0:{}s:15:"kunena.newqueue";a:0:{}s:32:"56b09100996ca36cccef4836a4adc056";s:77:"{"queryString":"option=com_templates&task=style.edit&id=135","object_id":135}";}', 618, 'linhtv'),
('mbvpicqik2rdaasfoc7u1u9hk4', 0, 1, '1431942822', '__default|a:9:{s:15:"session.counter";i:6;s:19:"session.timer.start";i:1431942072;s:18:"session.timer.last";i:1431942819;s:17:"session.timer.now";i:1431942821;s:22:"session.client.browser";s:138:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/47.0 Chrome/41.0.2272.127_coc_coc Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":1:{s:10:"com_kunena";O:8:"stdClass":1:{s:10:"user0_read";a:8:{i:5;s:1:"5";i:1;s:1:"1";i:2;s:1:"2";i:6;s:1:"6";i:4;s:1:"4";i:3;s:1:"3";i:7;s:1:"7";i:8;s:1:"8";}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;i:1;}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:1:{i:0;i:1;}s:14:"\\0\\0\\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:16:"com_mailto.links";a:3:{s:40:"559adb10afde07f7563029bbe19b1a46a7cd6815";O:8:"stdClass":2:{s:4:"link";s:96:"http://localhost/jsn_dome_pro_j3x/index.php/80-template-details/general/103-introducing-jsn-dome";s:6:"expiry";i:1431942072;}s:40:"b00b86b9203722b1c6fc8160357a5c1f49a33418";O:8:"stdClass":2:{s:4:"link";s:75:"http://localhost/jsn_dome_pro_j3x/index.php/design-and-features/menu-styles";s:6:"expiry";i:1431942153;}s:40:"ce8d36c2fa0020b6741fa4931355335b1ede06a7";O:8:"stdClass":2:{s:4:"link";s:75:"http://localhost/jsn_dome_pro_j3x/index.php/design-and-features/font-styles";s:6:"expiry";i:1431942509;}}s:13:"session.token";s:32:"fc2f7faea9212ede1ac33b0b9d0771ce";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_tags`
--

CREATE TABLE IF NOT EXISTS `lrfic_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lrfic_tags`
--

INSERT INTO `lrfic_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_template_styles`
--

CREATE TABLE IF NOT EXISTS `lrfic_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `lrfic_template_styles`
--

INSERT INTO `lrfic_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '0', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(126, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(127, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(128, 'beez3', 0, '0', 'beez3 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"","sitedescription":"","navposition":"center","bootstrap":"","templatecolor":"nature","headerImage":"","backgroundcolor":"#eee"}'),
(135, 'jsn_dome_pro', 0, '1', 'JSN Dome PRO - Default', '{"logoColored":"1","mobileLogo":"","logoLink":"index.php","logoSlogan":"","templateWidth":{"type":"responsive","fixed":"960","float":"90","responsive":["mobile"]},"showFrontpage":"1","desktopSwitcher":"1","promoColumns":{"01:promo-left":"span3","00:promo":"span6","02:promo-right":"span3"},"mainColumns":{"01:left":"span3","00:content":"span6","02:right":"span3"},"contentColumns":{"01:innerleft":"span3","00:component":"span6","02:innerright":"span3"},"userColumns":{"00:user5":"span4","00:user6":"span4","00:user7":"span4"},"templateColor":"orange","fontStyle":{"style":"news","custom":{"heading":{"type":"standard","family":"Verdana, Geneva, sans-serif","primary":"Open Sans","secondary":"Verdana, Geneva, sans-serif"},"menu":{"type":"standard","family":"Verdana, Geneva, sans-serif","primary":"Open Sans","secondary":"Verdana, Geneva, sans-serif"},"body":{"type":"standard","family":"Verdana, Geneva, sans-serif","primary":"Open Sans","secondary":"Verdana, Geneva, sans-serif"},"size":"75"}},"mainMenuWidth":"200","sideMenuWidth":"200","menuSticky":{"mobile":"1","desktop":"0"},"sitetoolStyle":"menu","sitetoolsColorsItems":["red","green","orange","yellow","pink","cyan"],"sitetoolsColors":"{\\"list\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"],\\"colors\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"]}","gotoTop":"1","autoIconLink":"0","printOptimize":"0","socialIcons":{"status":["facebook","twitter","youtube"],"facebook":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_FACEBOOK","link":"http:\\/\\/www.facebook.com\\/joomlashine"},"twitter":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_TWITTER","link":"http:\\/\\/www.twitter.com\\/joomlashine"},"googleplus":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_GOOGLEPLUS","link":""},"youtube":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_YOUTUBE","link":"http:\\/\\/www.youtube.com\\/joomlashine"},"pinterest":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_PINTEREST","link":""},"myspace":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_MYSPACE","link":""},"flickr":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_FLICKR","link":""},"dribble":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_DRIBBLE","link":""},"stumbleupon":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_STUMBLEUPON","link":""},"yahoo":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_YAHOO","link":""},"skype":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_SKYPE","link":""},"rss":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_RSS","link":""},"linkedin":{"title":"JSN_TPLFW_SOCIAL_NETWORK_INTEGRATION_LINKEDIN","link":""}},"compression":"0","maxCompressionSize":"100","compressionExclude":"","cacheDirectory":"cache\\/","codePosition":"0","codeAnalytic":"","cssFiles":"","useSqueezeBox":"0","scriptMovement":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_ucm_base`
--

CREATE TABLE IF NOT EXISTS `lrfic_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_ucm_content`
--

CREATE TABLE IF NOT EXISTS `lrfic_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_ucm_history`
--

CREATE TABLE IF NOT EXISTS `lrfic_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_updates`
--

CREATE TABLE IF NOT EXISTS `lrfic_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=67 ;

--
-- Dumping data for table `lrfic_updates`
--

INSERT INTO `lrfic_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(2, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(3, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(4, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(5, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(6, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(7, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(11, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.2', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(35, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(36, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(37, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(38, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(39, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(40, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(41, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.3.15', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(42, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(43, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(44, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(45, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(46, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(47, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(48, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(49, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(50, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(51, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(52, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(53, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(54, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(55, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(56, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(57, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(58, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(59, 6, 0, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '3.0.8', '', 'http://update.kunena.org/3.0/pkg_kunena_languages.xml', '', ''),
(60, 6, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenalatest.xml', '', ''),
(61, 6, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenalogin.xml', '', ''),
(62, 6, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenasearch.xml', '', ''),
(63, 6, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenastats.xml', '', ''),
(64, 6, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '3.0.7', '', 'http://update.kunena.org/3.0/plg_content_kunenadiscuss.xml', '', ''),
(65, 6, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '3.0.1', '', 'http://update.kunena.org/3.0/plg_search_kunena.xml', '', ''),
(66, 47, 0, 'Weblinks Extension Package', 'Joomla! CMS Weblinks Package', 'pkg_weblinks', 'package', '', 1, '3.4.0', '', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 'https://github.com/joomla-extensions/weblinks', '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_update_sites`
--

CREATE TABLE IF NOT EXISTS `lrfic_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=48 ;

--
-- Dumping data for table `lrfic_update_sites`
--

INSERT INTO `lrfic_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/sts/list_sts.xml', 1, 1431942029, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1431942029, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1431942029, ''),
(4, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1431942029, ''),
(6, 'Kunena 3.0 Update Site', 'collection', 'http://update.kunena.org/3.0/list.xml', 1, 1431942029, ''),
(32, 'imageshow', 'collection', 'http://rc.joomlashine.com/admintools/jsn-tools/administrator/index.php?option=com_imageshow&task=checkUpdate&file=update.xml', 0, 0, ''),
(43, 'uniform', 'collection', 'http://rc.joomlashine.com/admintools/jsn-tools/administrator/index.php?option=com_uniform&task=checkUpdate&file=update.xml', 0, 0, ''),
(44, '', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1431942029, ''),
(45, 'poweradmin', 'collection', 'http://rc.joomlashine.com/admintools/jsn-tools/administrator/index.php?option=com_poweradmin&task=checkUpdate&file=update.xml', 0, 0, ''),
(46, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1431942029, ''),
(47, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 1431942029, '');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `lrfic_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `lrfic_update_sites_extensions`
--

INSERT INTO `lrfic_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10078),
(6, 10097),
(32, 10055),
(43, 10065),
(44, 700),
(45, 10052),
(46, 28),
(47, 801);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_usergroups`
--

CREATE TABLE IF NOT EXISTS `lrfic_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `lrfic_usergroups`
--

INSERT INTO `lrfic_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(10, 3, 12, 13, 'Shop Suppliers'),
(12, 2, 15, 16, 'Customer Group');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_users`
--

CREATE TABLE IF NOT EXISTS `lrfic_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=619 ;

--
-- Dumping data for table `lrfic_users`
--

INSERT INTO `lrfic_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(42, 'Super User', 'demoadmin', 'example.admin@joomlashine.com', '$P$Do0xtfMQPLTkjGMj8esiJOKudcikmn0', 0, 1, '2011-04-01 02:22:19', '2013-12-30 09:26:27', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(43, 'democontent', 'democontent', 'example.content@joomlashine.com', 'ac4f21ee8317c789418498da66a5ce32', 0, 1, '2012-04-11 10:52:25', '2013-11-08 02:13:22', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(618, 'Super User', 'linhtv', 'linhvnt@yahoo.com', '$P$D2G6WTKLqaDq56LD80NiBISw4va7qc0', 0, 1, '2015-05-18 09:28:21', '2015-05-18 09:28:54', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_user_keys`
--

CREATE TABLE IF NOT EXISTS `lrfic_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_user_notes`
--

CREATE TABLE IF NOT EXISTS `lrfic_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_user_profiles`
--

CREATE TABLE IF NOT EXISTS `lrfic_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `lrfic_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lrfic_user_usergroup_map`
--

INSERT INTO `lrfic_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(43, 7),
(618, 8);

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_viewlevels`
--

CREATE TABLE IF NOT EXISTS `lrfic_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lrfic_viewlevels`
--

INSERT INTO `lrfic_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Table structure for table `lrfic_weblinks`
--

CREATE TABLE IF NOT EXISTS `lrfic_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `lrfic_weblinks`
--

INSERT INTO `lrfic_weblinks` (`id`, `catid`, `title`, `alias`, `url`, `description`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `images`) VALUES
(1, 32, 'Joomla!', 'joomla', 'http://www.joomla.org', '<p>Home of Joomla!</p>', 5, 1, 0, '0000-00-00 00:00:00', 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(2, 33, 'php.net', 'php', 'http://www.php.net', '<p>The language that Joomla! is developed in</p>', 6, 1, 0, '0000-00-00 00:00:00', 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(3, 33, 'MySQL', 'mysql', 'http://www.mysql.com', '<p>The database that Joomla! uses</p>', 1, 1, 0, '0000-00-00 00:00:00', 2, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(4, 32, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', '<p>Home of OSM</p>', 11, 1, 0, '0000-00-00 00:00:00', 3, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(5, 32, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', '<p>Joomla! Forums</p>', 4, 1, 0, '0000-00-00 00:00:00', 2, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(6, 33, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', 2, 1, 0, '0000-00-00 00:00:00', 3, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(7, 31, 'Baw Baw National Park', 'baw-baw-national-park', 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', 0, 1, 0, '0000-00-00 00:00:00', 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(8, 31, 'Kakadu', 'kakadu', 'http://www.environment.gov.au/parks/kakadu/index.html', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', 0, 1, 0, '0000-00-00 00:00:00', 2, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(9, 31, 'Pulu Keeling', 'pulu-keeling', 'http://www.environment.gov.au/parks/cocos/index.html', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', 0, 1, 0, '0000-00-00 00:00:00', 3, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '2010-07-10 23:44:03', '0000-00-00 00:00:00', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lrfic_assets`
--
ALTER TABLE `lrfic_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `lrfic_associations`
--
ALTER TABLE `lrfic_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `lrfic_banners`
--
ALTER TABLE `lrfic_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `lrfic_banner_clients`
--
ALTER TABLE `lrfic_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `lrfic_banner_tracks`
--
ALTER TABLE `lrfic_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `lrfic_categories`
--
ALTER TABLE `lrfic_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `lrfic_contact_details`
--
ALTER TABLE `lrfic_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `lrfic_content`
--
ALTER TABLE `lrfic_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `lrfic_contentitem_tag_map`
--
ALTER TABLE `lrfic_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `lrfic_content_frontpage`
--
ALTER TABLE `lrfic_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `lrfic_content_rating`
--
ALTER TABLE `lrfic_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `lrfic_content_types`
--
ALTER TABLE `lrfic_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `lrfic_extensions`
--
ALTER TABLE `lrfic_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `lrfic_finder_filters`
--
ALTER TABLE `lrfic_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `lrfic_finder_links`
--
ALTER TABLE `lrfic_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `lrfic_finder_links_terms0`
--
ALTER TABLE `lrfic_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms1`
--
ALTER TABLE `lrfic_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms2`
--
ALTER TABLE `lrfic_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms3`
--
ALTER TABLE `lrfic_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms4`
--
ALTER TABLE `lrfic_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms5`
--
ALTER TABLE `lrfic_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms6`
--
ALTER TABLE `lrfic_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms7`
--
ALTER TABLE `lrfic_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms8`
--
ALTER TABLE `lrfic_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_terms9`
--
ALTER TABLE `lrfic_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_termsa`
--
ALTER TABLE `lrfic_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_termsb`
--
ALTER TABLE `lrfic_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_termsc`
--
ALTER TABLE `lrfic_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_termsd`
--
ALTER TABLE `lrfic_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_termse`
--
ALTER TABLE `lrfic_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_links_termsf`
--
ALTER TABLE `lrfic_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `lrfic_finder_taxonomy`
--
ALTER TABLE `lrfic_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `lrfic_finder_taxonomy_map`
--
ALTER TABLE `lrfic_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `lrfic_finder_terms`
--
ALTER TABLE `lrfic_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `lrfic_finder_terms_common`
--
ALTER TABLE `lrfic_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `lrfic_finder_tokens`
--
ALTER TABLE `lrfic_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `lrfic_finder_tokens_aggregate`
--
ALTER TABLE `lrfic_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `lrfic_finder_types`
--
ALTER TABLE `lrfic_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `lrfic_imageshow_external_source_picasa`
--
ALTER TABLE `lrfic_imageshow_external_source_picasa`
 ADD PRIMARY KEY (`external_source_id`);

--
-- Indexes for table `lrfic_imageshow_images`
--
ALTER TABLE `lrfic_imageshow_images`
 ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `lrfic_imageshow_log`
--
ALTER TABLE `lrfic_imageshow_log`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `lrfic_imageshow_showcase`
--
ALTER TABLE `lrfic_imageshow_showcase`
 ADD PRIMARY KEY (`showcase_id`);

--
-- Indexes for table `lrfic_imageshow_showlist`
--
ALTER TABLE `lrfic_imageshow_showlist`
 ADD PRIMARY KEY (`showlist_id`);

--
-- Indexes for table `lrfic_imageshow_source_profile`
--
ALTER TABLE `lrfic_imageshow_source_profile`
 ADD PRIMARY KEY (`external_source_profile_id`);

--
-- Indexes for table `lrfic_imageshow_theme_carousel`
--
ALTER TABLE `lrfic_imageshow_theme_carousel`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_imageshow_theme_classic_flash`
--
ALTER TABLE `lrfic_imageshow_theme_classic_flash`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_imageshow_theme_classic_javascript`
--
ALTER TABLE `lrfic_imageshow_theme_classic_javascript`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_imageshow_theme_classic_parameters`
--
ALTER TABLE `lrfic_imageshow_theme_classic_parameters`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_imageshow_theme_flow`
--
ALTER TABLE `lrfic_imageshow_theme_flow`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_imageshow_theme_grid`
--
ALTER TABLE `lrfic_imageshow_theme_grid`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_imageshow_theme_slider`
--
ALTER TABLE `lrfic_imageshow_theme_slider`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_imageshow_theme_strip`
--
ALTER TABLE `lrfic_imageshow_theme_strip`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `lrfic_jsn_imageshow_config`
--
ALTER TABLE `lrfic_jsn_imageshow_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lrfic_jsn_imageshow_messages`
--
ALTER TABLE `lrfic_jsn_imageshow_messages`
 ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `lrfic_jsn_poweradmin_config`
--
ALTER TABLE `lrfic_jsn_poweradmin_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lrfic_jsn_poweradmin_favourite`
--
ALTER TABLE `lrfic_jsn_poweradmin_favourite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_jsn_poweradmin_history`
--
ALTER TABLE `lrfic_jsn_poweradmin_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_jsn_uniform_config`
--
ALTER TABLE `lrfic_jsn_uniform_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lrfic_jsn_uniform_data`
--
ALTER TABLE `lrfic_jsn_uniform_data`
 ADD PRIMARY KEY (`data_id`), ADD KEY `fk_uniform_data_forms` (`form_id`);

--
-- Indexes for table `lrfic_jsn_uniform_emails`
--
ALTER TABLE `lrfic_jsn_uniform_emails`
 ADD PRIMARY KEY (`email_id`), ADD KEY `fk_uniform_emails_forms` (`form_id`);

--
-- Indexes for table `lrfic_jsn_uniform_fields`
--
ALTER TABLE `lrfic_jsn_uniform_fields`
 ADD PRIMARY KEY (`field_id`), ADD KEY `fk_uniform_fields_forms` (`form_id`);

--
-- Indexes for table `lrfic_jsn_uniform_forms`
--
ALTER TABLE `lrfic_jsn_uniform_forms`
 ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `lrfic_jsn_uniform_form_pages`
--
ALTER TABLE `lrfic_jsn_uniform_form_pages`
 ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `lrfic_jsn_uniform_messages`
--
ALTER TABLE `lrfic_jsn_uniform_messages`
 ADD PRIMARY KEY (`msg_id`), ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `lrfic_jsn_uniform_templates`
--
ALTER TABLE `lrfic_jsn_uniform_templates`
 ADD PRIMARY KEY (`template_id`), ADD KEY `fk_uniform_templates_forms` (`form_id`);

--
-- Indexes for table `lrfic_k2_attachments`
--
ALTER TABLE `lrfic_k2_attachments`
 ADD PRIMARY KEY (`id`), ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `lrfic_k2_categories`
--
ALTER TABLE `lrfic_k2_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `category` (`published`,`access`,`trash`), ADD KEY `parent` (`parent`), ADD KEY `ordering` (`ordering`), ADD KEY `published` (`published`), ADD KEY `access` (`access`), ADD KEY `trash` (`trash`), ADD KEY `language` (`language`);

--
-- Indexes for table `lrfic_k2_comments`
--
ALTER TABLE `lrfic_k2_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `itemID` (`itemID`), ADD KEY `userID` (`userID`), ADD KEY `published` (`published`), ADD KEY `latestComments` (`published`,`commentDate`);

--
-- Indexes for table `lrfic_k2_extra_fields`
--
ALTER TABLE `lrfic_k2_extra_fields`
 ADD PRIMARY KEY (`id`), ADD KEY `group` (`group`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `lrfic_k2_extra_fields_groups`
--
ALTER TABLE `lrfic_k2_extra_fields_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_k2_items`
--
ALTER TABLE `lrfic_k2_items`
 ADD PRIMARY KEY (`id`), ADD KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`), ADD KEY `catid` (`catid`), ADD KEY `created_by` (`created_by`), ADD KEY `ordering` (`ordering`), ADD KEY `featured` (`featured`), ADD KEY `featured_ordering` (`featured_ordering`), ADD KEY `hits` (`hits`), ADD KEY `created` (`created`), ADD KEY `language` (`language`), ADD FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`), ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `lrfic_k2_rating`
--
ALTER TABLE `lrfic_k2_rating`
 ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `lrfic_k2_tags`
--
ALTER TABLE `lrfic_k2_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`), ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `lrfic_k2_tags_xref`
--
ALTER TABLE `lrfic_k2_tags_xref`
 ADD PRIMARY KEY (`id`), ADD KEY `tagID` (`tagID`), ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `lrfic_k2_users`
--
ALTER TABLE `lrfic_k2_users`
 ADD PRIMARY KEY (`id`), ADD KEY `userID` (`userID`), ADD KEY `group` (`group`);

--
-- Indexes for table `lrfic_k2_user_groups`
--
ALTER TABLE `lrfic_k2_user_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_kunena_aliases`
--
ALTER TABLE `lrfic_kunena_aliases`
 ADD UNIQUE KEY `alias` (`alias`), ADD KEY `state` (`state`), ADD KEY `item` (`item`), ADD KEY `type` (`type`);

--
-- Indexes for table `lrfic_kunena_announcement`
--
ALTER TABLE `lrfic_kunena_announcement`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_kunena_attachments`
--
ALTER TABLE `lrfic_kunena_attachments`
 ADD PRIMARY KEY (`id`), ADD KEY `mesid` (`mesid`), ADD KEY `userid` (`userid`), ADD KEY `hash` (`hash`), ADD KEY `filename` (`filename`);

--
-- Indexes for table `lrfic_kunena_categories`
--
ALTER TABLE `lrfic_kunena_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `category_access` (`accesstype`,`access`), ADD KEY `published_pubaccess_id` (`published`,`pub_access`,`id`);

--
-- Indexes for table `lrfic_kunena_configuration`
--
ALTER TABLE `lrfic_kunena_configuration`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_kunena_keywords`
--
ALTER TABLE `lrfic_kunena_keywords`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `public_count` (`public_count`), ADD KEY `total_count` (`total_count`);

--
-- Indexes for table `lrfic_kunena_keywords_map`
--
ALTER TABLE `lrfic_kunena_keywords_map`
 ADD UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`), ADD KEY `user_id` (`user_id`), ADD KEY `topic_user` (`topic_id`,`user_id`);

--
-- Indexes for table `lrfic_kunena_messages`
--
ALTER TABLE `lrfic_kunena_messages`
 ADD PRIMARY KEY (`id`), ADD KEY `thread` (`thread`), ADD KEY `ip` (`ip`), ADD KEY `userid` (`userid`), ADD KEY `locked` (`locked`), ADD KEY `parent_hits` (`parent`,`hits`), ADD KEY `catid_parent` (`catid`,`parent`), ADD KEY `time_hold` (`time`,`hold`), ADD KEY `hold` (`hold`);

--
-- Indexes for table `lrfic_kunena_messages_text`
--
ALTER TABLE `lrfic_kunena_messages_text`
 ADD PRIMARY KEY (`mesid`);

--
-- Indexes for table `lrfic_kunena_polls`
--
ALTER TABLE `lrfic_kunena_polls`
 ADD PRIMARY KEY (`id`), ADD KEY `threadid` (`threadid`);

--
-- Indexes for table `lrfic_kunena_polls_options`
--
ALTER TABLE `lrfic_kunena_polls_options`
 ADD PRIMARY KEY (`id`), ADD KEY `pollid` (`pollid`);

--
-- Indexes for table `lrfic_kunena_polls_users`
--
ALTER TABLE `lrfic_kunena_polls_users`
 ADD UNIQUE KEY `pollid` (`pollid`,`userid`);

--
-- Indexes for table `lrfic_kunena_ranks`
--
ALTER TABLE `lrfic_kunena_ranks`
 ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `lrfic_kunena_sessions`
--
ALTER TABLE `lrfic_kunena_sessions`
 ADD PRIMARY KEY (`userid`), ADD KEY `currvisit` (`currvisit`);

--
-- Indexes for table `lrfic_kunena_smileys`
--
ALTER TABLE `lrfic_kunena_smileys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_kunena_thankyou`
--
ALTER TABLE `lrfic_kunena_thankyou`
 ADD UNIQUE KEY `postid` (`postid`,`userid`), ADD KEY `userid` (`userid`), ADD KEY `targetuserid` (`targetuserid`);

--
-- Indexes for table `lrfic_kunena_topics`
--
ALTER TABLE `lrfic_kunena_topics`
 ADD PRIMARY KEY (`id`), ADD KEY `category_id` (`category_id`), ADD KEY `locked` (`locked`), ADD KEY `hold` (`hold`), ADD KEY `posts` (`posts`), ADD KEY `hits` (`hits`), ADD KEY `first_post_userid` (`first_post_userid`), ADD KEY `last_post_userid` (`last_post_userid`), ADD KEY `first_post_time` (`first_post_time`), ADD KEY `last_post_time` (`last_post_time`);

--
-- Indexes for table `lrfic_kunena_users`
--
ALTER TABLE `lrfic_kunena_users`
 ADD PRIMARY KEY (`userid`), ADD KEY `group_id` (`group_id`), ADD KEY `posts` (`posts`), ADD KEY `uhits` (`uhits`), ADD KEY `banned` (`banned`), ADD KEY `moderator` (`moderator`);

--
-- Indexes for table `lrfic_kunena_users_banned`
--
ALTER TABLE `lrfic_kunena_users_banned`
 ADD PRIMARY KEY (`id`), ADD KEY `userid` (`userid`), ADD KEY `ip` (`ip`), ADD KEY `expiration` (`expiration`), ADD KEY `created_time` (`created_time`);

--
-- Indexes for table `lrfic_kunena_user_categories`
--
ALTER TABLE `lrfic_kunena_user_categories`
 ADD PRIMARY KEY (`user_id`,`category_id`), ADD KEY `category_subscribed` (`category_id`,`subscribed`), ADD KEY `role` (`role`);

--
-- Indexes for table `lrfic_kunena_user_read`
--
ALTER TABLE `lrfic_kunena_user_read`
 ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`), ADD KEY `category_user_id` (`category_id`,`user_id`), ADD KEY `time` (`time`);

--
-- Indexes for table `lrfic_kunena_user_topics`
--
ALTER TABLE `lrfic_kunena_user_topics`
 ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`), ADD KEY `topic_id` (`topic_id`), ADD KEY `posts` (`posts`), ADD KEY `owner` (`owner`), ADD KEY `favorite` (`favorite`), ADD KEY `subscribed` (`subscribed`);

--
-- Indexes for table `lrfic_kunena_version`
--
ALTER TABLE `lrfic_kunena_version`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_languages`
--
ALTER TABLE `lrfic_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_ordering` (`ordering`), ADD KEY `idx_access` (`access`);

--
-- Indexes for table `lrfic_menu`
--
ALTER TABLE `lrfic_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `lrfic_menu_types`
--
ALTER TABLE `lrfic_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `lrfic_messages`
--
ALTER TABLE `lrfic_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `lrfic_messages_cfg`
--
ALTER TABLE `lrfic_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `lrfic_modules`
--
ALTER TABLE `lrfic_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `lrfic_modules_menu`
--
ALTER TABLE `lrfic_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `lrfic_newsfeeds`
--
ALTER TABLE `lrfic_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `lrfic_overrider`
--
ALTER TABLE `lrfic_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lrfic_postinstall_messages`
--
ALTER TABLE `lrfic_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `lrfic_redirect_links`
--
ALTER TABLE `lrfic_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `lrfic_schemas`
--
ALTER TABLE `lrfic_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `lrfic_session`
--
ALTER TABLE `lrfic_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `lrfic_tags`
--
ALTER TABLE `lrfic_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `lrfic_template_styles`
--
ALTER TABLE `lrfic_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `lrfic_ucm_base`
--
ALTER TABLE `lrfic_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `lrfic_ucm_content`
--
ALTER TABLE `lrfic_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `lrfic_ucm_history`
--
ALTER TABLE `lrfic_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `lrfic_updates`
--
ALTER TABLE `lrfic_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `lrfic_update_sites`
--
ALTER TABLE `lrfic_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `lrfic_update_sites_extensions`
--
ALTER TABLE `lrfic_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `lrfic_usergroups`
--
ALTER TABLE `lrfic_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`);

--
-- Indexes for table `lrfic_users`
--
ALTER TABLE `lrfic_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `lrfic_user_keys`
--
ALTER TABLE `lrfic_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lrfic_user_notes`
--
ALTER TABLE `lrfic_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `lrfic_user_profiles`
--
ALTER TABLE `lrfic_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `lrfic_user_usergroup_map`
--
ALTER TABLE `lrfic_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `lrfic_viewlevels`
--
ALTER TABLE `lrfic_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `lrfic_weblinks`
--
ALTER TABLE `lrfic_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lrfic_assets`
--
ALTER TABLE `lrfic_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `lrfic_banners`
--
ALTER TABLE `lrfic_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lrfic_banner_clients`
--
ALTER TABLE `lrfic_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_categories`
--
ALTER TABLE `lrfic_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `lrfic_contact_details`
--
ALTER TABLE `lrfic_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lrfic_content`
--
ALTER TABLE `lrfic_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `lrfic_content_types`
--
ALTER TABLE `lrfic_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `lrfic_extensions`
--
ALTER TABLE `lrfic_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10113;
--
-- AUTO_INCREMENT for table `lrfic_finder_filters`
--
ALTER TABLE `lrfic_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_finder_links`
--
ALTER TABLE `lrfic_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_finder_taxonomy`
--
ALTER TABLE `lrfic_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_finder_terms`
--
ALTER TABLE `lrfic_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_finder_types`
--
ALTER TABLE `lrfic_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_external_source_picasa`
--
ALTER TABLE `lrfic_imageshow_external_source_picasa`
MODIFY `external_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_images`
--
ALTER TABLE `lrfic_imageshow_images`
MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_log`
--
ALTER TABLE `lrfic_imageshow_log`
MODIFY `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_showcase`
--
ALTER TABLE `lrfic_imageshow_showcase`
MODIFY `showcase_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_showlist`
--
ALTER TABLE `lrfic_imageshow_showlist`
MODIFY `showlist_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_source_profile`
--
ALTER TABLE `lrfic_imageshow_source_profile`
MODIFY `external_source_profile_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_carousel`
--
ALTER TABLE `lrfic_imageshow_theme_carousel`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_classic_flash`
--
ALTER TABLE `lrfic_imageshow_theme_classic_flash`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_classic_javascript`
--
ALTER TABLE `lrfic_imageshow_theme_classic_javascript`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_classic_parameters`
--
ALTER TABLE `lrfic_imageshow_theme_classic_parameters`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_flow`
--
ALTER TABLE `lrfic_imageshow_theme_flow`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_grid`
--
ALTER TABLE `lrfic_imageshow_theme_grid`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_slider`
--
ALTER TABLE `lrfic_imageshow_theme_slider`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_imageshow_theme_strip`
--
ALTER TABLE `lrfic_imageshow_theme_strip`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lrfic_jsn_imageshow_messages`
--
ALTER TABLE `lrfic_jsn_imageshow_messages`
MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lrfic_jsn_poweradmin_favourite`
--
ALTER TABLE `lrfic_jsn_poweradmin_favourite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_jsn_poweradmin_history`
--
ALTER TABLE `lrfic_jsn_poweradmin_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_data`
--
ALTER TABLE `lrfic_jsn_uniform_data`
MODIFY `data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_emails`
--
ALTER TABLE `lrfic_jsn_uniform_emails`
MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_fields`
--
ALTER TABLE `lrfic_jsn_uniform_fields`
MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_forms`
--
ALTER TABLE `lrfic_jsn_uniform_forms`
MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_form_pages`
--
ALTER TABLE `lrfic_jsn_uniform_form_pages`
MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_messages`
--
ALTER TABLE `lrfic_jsn_uniform_messages`
MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_jsn_uniform_templates`
--
ALTER TABLE `lrfic_jsn_uniform_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lrfic_k2_attachments`
--
ALTER TABLE `lrfic_k2_attachments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_k2_categories`
--
ALTER TABLE `lrfic_k2_categories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lrfic_k2_comments`
--
ALTER TABLE `lrfic_k2_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lrfic_k2_extra_fields`
--
ALTER TABLE `lrfic_k2_extra_fields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_k2_extra_fields_groups`
--
ALTER TABLE `lrfic_k2_extra_fields_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_k2_items`
--
ALTER TABLE `lrfic_k2_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lrfic_k2_tags`
--
ALTER TABLE `lrfic_k2_tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lrfic_k2_tags_xref`
--
ALTER TABLE `lrfic_k2_tags_xref`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `lrfic_k2_users`
--
ALTER TABLE `lrfic_k2_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lrfic_k2_user_groups`
--
ALTER TABLE `lrfic_k2_user_groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lrfic_kunena_announcement`
--
ALTER TABLE `lrfic_kunena_announcement`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_kunena_attachments`
--
ALTER TABLE `lrfic_kunena_attachments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_kunena_categories`
--
ALTER TABLE `lrfic_kunena_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lrfic_kunena_keywords`
--
ALTER TABLE `lrfic_kunena_keywords`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lrfic_kunena_messages`
--
ALTER TABLE `lrfic_kunena_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lrfic_kunena_polls`
--
ALTER TABLE `lrfic_kunena_polls`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_kunena_polls_options`
--
ALTER TABLE `lrfic_kunena_polls_options`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_kunena_ranks`
--
ALTER TABLE `lrfic_kunena_ranks`
MODIFY `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `lrfic_kunena_smileys`
--
ALTER TABLE `lrfic_kunena_smileys`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `lrfic_kunena_topics`
--
ALTER TABLE `lrfic_kunena_topics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lrfic_kunena_users_banned`
--
ALTER TABLE `lrfic_kunena_users_banned`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_kunena_version`
--
ALTER TABLE `lrfic_kunena_version`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lrfic_languages`
--
ALTER TABLE `lrfic_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_menu`
--
ALTER TABLE `lrfic_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1161;
--
-- AUTO_INCREMENT for table `lrfic_menu_types`
--
ALTER TABLE `lrfic_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lrfic_messages`
--
ALTER TABLE `lrfic_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_modules`
--
ALTER TABLE `lrfic_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `lrfic_newsfeeds`
--
ALTER TABLE `lrfic_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lrfic_overrider`
--
ALTER TABLE `lrfic_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `lrfic_postinstall_messages`
--
ALTER TABLE `lrfic_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lrfic_redirect_links`
--
ALTER TABLE `lrfic_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lrfic_tags`
--
ALTER TABLE `lrfic_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lrfic_template_styles`
--
ALTER TABLE `lrfic_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `lrfic_ucm_content`
--
ALTER TABLE `lrfic_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_ucm_history`
--
ALTER TABLE `lrfic_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_updates`
--
ALTER TABLE `lrfic_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `lrfic_update_sites`
--
ALTER TABLE `lrfic_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `lrfic_usergroups`
--
ALTER TABLE `lrfic_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lrfic_users`
--
ALTER TABLE `lrfic_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=619;
--
-- AUTO_INCREMENT for table `lrfic_user_keys`
--
ALTER TABLE `lrfic_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_user_notes`
--
ALTER TABLE `lrfic_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lrfic_viewlevels`
--
ALTER TABLE `lrfic_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lrfic_weblinks`
--
ALTER TABLE `lrfic_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
