-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_dafearsoft
DROP DATABASE IF EXISTS `db_dafearsoft`;
CREATE DATABASE IF NOT EXISTS `db_dafearsoft` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_dafearsoft`;

-- Dumping structure for table db_dafearsoft.tb_banner
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE IF NOT EXISTS `tb_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `banner` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `showReadMoreLinkId` int(11) DEFAULT NULL,
  `linkBehaviorId` int(11) DEFAULT NULL,
  `pagesId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `openUrlOnNewTabId` int(11) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_banner: 2 rows
DELETE FROM `tb_banner`;
/*!40000 ALTER TABLE `tb_banner` DISABLE KEYS */;
INSERT INTO `tb_banner` (`id`, `position`, `title`, `title_sl`, `title_el`, `banner`, `description`, `description_sl`, `description_el`, `showReadMoreLinkId`, `linkBehaviorId`, `pagesId`, `url`, `openUrlOnNewTabId`, `publishStatusId`) VALUES
	(1, 1, 'Webstack CMS', 'Webstack CMS', '', '328C86D717624C4BA95E4E8E2C2DCE69CB5822CD.png', '<p>We are development team, ready to developing Custom Company Profile and Product Catalog (Online Trading)&nbsp;Website by using our original Content Management System. We serve Website development with low price which is quite economical for the good product quality.</p>', '<p>Menerima pembuatan Custom Website Company Profile dan Product Katalog (Perdagangan Online) dengan menggunakan sistem CMS original buatan kami. Kami melayani pembuatan Website dengan harga yg cukup ekonomis untuk kualitas yg cukup baik.</p>', '', 1, 1, 9991, 'http://redsea.com', 1, 2),
	(2, 2, 'Cash Point', 'Cash Point', '', '37AD959449489B763D3E441F91D3474EDF599722.png', '<p>Cash Point is point of sales software created for computerized sales systems in the small and medium enterprises, Cash Point can used for a mini markets, restaurants and others. Download and use this application program for free of charge.</p>', '<p>Cash Point adalah program aplikasi penjualan yang dibuat untuk kebutuhan sistem komputerisasi penjualan pada usaha kecil menengah antara lain seperti toko, restoran dan lain-lain.Dapatkan dan gunakan secara gratis program aplikasi ini tanpa pungutan biaya.</p>', '', 1, 1, 9991, '', 2, 2);
/*!40000 ALTER TABLE `tb_banner` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_blog
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE IF NOT EXISTS `tb_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogCategoryId` int(11) NOT NULL DEFAULT '0',
  `author` varchar(50) DEFAULT NULL,
  `author_sl` varchar(50) DEFAULT NULL,
  `author_el` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `mediaTypeId` int(11) DEFAULT NULL,
  `contentLayoutId` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `videoEmbed` text,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `moreDescription` text,
  `moreDescription_sl` text,
  `moreDescription_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  `postedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_blog: 0 rows
DELETE FROM `tb_blog`;
/*!40000 ALTER TABLE `tb_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_blog` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_blog_category
DROP TABLE IF EXISTS `tb_blog_category`;
CREATE TABLE IF NOT EXISTS `tb_blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `category_sl` varchar(50) DEFAULT NULL,
  `category_el` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_blog_category: 2 rows
DELETE FROM `tb_blog_category`;
/*!40000 ALTER TABLE `tb_blog_category` DISABLE KEYS */;
INSERT INTO `tb_blog_category` (`id`, `position`, `category`, `category_sl`, `category_el`, `publishStatusId`) VALUES
	(1, 1, 'Tutorial', 'Tutorial', 'رياضة', 2),
	(6, 6, 'Technology', 'Teknologi', 'تكنولوجيا', 2);
/*!40000 ALTER TABLE `tb_blog_category` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_blog_read_count
DROP TABLE IF EXISTS `tb_blog_read_count`;
CREATE TABLE IF NOT EXISTS `tb_blog_read_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogId` int(11) NOT NULL DEFAULT '0',
  `ipAddress` varchar(50) DEFAULT NULL,
  `postedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_blog_read_count: 0 rows
DELETE FROM `tb_blog_read_count`;
/*!40000 ALTER TABLE `tb_blog_read_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_blog_read_count` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_branch
DROP TABLE IF EXISTS `tb_branch`;
CREATE TABLE IF NOT EXISTS `tb_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `branchName` varchar(50) DEFAULT NULL,
  `districtCityId` int(11) DEFAULT NULL,
  `address` text,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `faxNumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `facebookPage` varchar(50) DEFAULT NULL,
  `twitterPage` varchar(50) DEFAULT NULL,
  `mainBranchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_branch: 2 rows
DELETE FROM `tb_branch`;
/*!40000 ALTER TABLE `tb_branch` DISABLE KEYS */;
INSERT INTO `tb_branch` (`id`, `position`, `branchName`, `districtCityId`, `address`, `latitude`, `longitude`, `phoneNumber`, `faxNumber`, `email`, `facebookPage`, `twitterPage`, `mainBranchId`) VALUES
	(11, 11, 'UPT. Tanjung Karang', 29, 'ts', '', '', '', '', '', '', '', 1),
	(14, 14, 'UPT. Siantar', 30, 'Jl. Aneh', '21.195935695810785', '106.813132', '13432145', '6546546', 'dsd', 'facebook.com', 'hgfh', 2);
/*!40000 ALTER TABLE `tb_branch` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_comments
DROP TABLE IF EXISTS `tb_comments`;
CREATE TABLE IF NOT EXISTS `tb_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `comment` text,
  `commentsAtId` int(11) DEFAULT NULL,
  `postsId` int(11) DEFAULT NULL,
  `postedOn` datetime DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_comments: 0 rows
DELETE FROM `tb_comments`;
/*!40000 ALTER TABLE `tb_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comments` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_comments_at
DROP TABLE IF EXISTS `tb_comments_at`;
CREATE TABLE IF NOT EXISTS `tb_comments_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentsAt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_comments_at: 3 rows
DELETE FROM `tb_comments_at`;
/*!40000 ALTER TABLE `tb_comments_at` DISABLE KEYS */;
INSERT INTO `tb_comments_at` (`id`, `commentsAt`) VALUES
	(1, 'Blog'),
	(2, 'News'),
	(3, 'Events');
/*!40000 ALTER TABLE `tb_comments_at` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_contact_address
DROP TABLE IF EXISTS `tb_contact_address`;
CREATE TABLE IF NOT EXISTS `tb_contact_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactProfileId` int(11) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `caption_sl` varchar(50) DEFAULT NULL,
  `caption_el` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_contact_address: 2 rows
DELETE FROM `tb_contact_address`;
/*!40000 ALTER TABLE `tb_contact_address` DISABLE KEYS */;
INSERT INTO `tb_contact_address` (`id`, `contactProfileId`, `caption`, `caption_sl`, `caption_el`, `address`) VALUES
	(17, 1, 'Customer Centre', 'Pusat Pelayanan', '', 'Jl. Kulit No. 41 Langkapura, Bandar Lampung, Indonesia'),
	(16, 1, 'Office', 'Kantor', '', 'Jl. Lombok Blok D4 Perum. Langkapura, Bandar Lampung, Indonesia');
/*!40000 ALTER TABLE `tb_contact_address` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_contact_emails
DROP TABLE IF EXISTS `tb_contact_emails`;
CREATE TABLE IF NOT EXISTS `tb_contact_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactProfileId` int(11) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `caption_sl` varchar(50) DEFAULT NULL,
  `caption_el` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_contact_emails: 2 rows
DELETE FROM `tb_contact_emails`;
/*!40000 ALTER TABLE `tb_contact_emails` DISABLE KEYS */;
INSERT INTO `tb_contact_emails` (`id`, `contactProfileId`, `caption`, `caption_sl`, `caption_el`, `email`) VALUES
	(12, 1, 'Technical Support', 'Bantuan Teknis', '', 'f.anaturdasa@gmail.com'),
	(11, 1, 'Customer Support', 'Bantuan Pelanggan', '', 'd.jayadi@dafearsoft.com');
/*!40000 ALTER TABLE `tb_contact_emails` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_contact_mobile_numbers
DROP TABLE IF EXISTS `tb_contact_mobile_numbers`;
CREATE TABLE IF NOT EXISTS `tb_contact_mobile_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactProfileId` int(11) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `caption_sl` varchar(50) DEFAULT NULL,
  `caption_el` varchar(50) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_contact_mobile_numbers: 2 rows
DELETE FROM `tb_contact_mobile_numbers`;
/*!40000 ALTER TABLE `tb_contact_mobile_numbers` DISABLE KEYS */;
INSERT INTO `tb_contact_mobile_numbers` (`id`, `contactProfileId`, `caption`, `caption_sl`, `caption_el`, `mobileNumber`) VALUES
	(21, 1, 'Customer Support', 'Bantuan Pelanggan', '', '0813-6837-9560'),
	(22, 1, 'Technical Support', 'Bantuan Teknis', '', '0821-8393-6455');
/*!40000 ALTER TABLE `tb_contact_mobile_numbers` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_contact_phone_numbers
DROP TABLE IF EXISTS `tb_contact_phone_numbers`;
CREATE TABLE IF NOT EXISTS `tb_contact_phone_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactProfileId` int(11) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `caption_sl` varchar(50) DEFAULT NULL,
  `caption_el` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_contact_phone_numbers: 1 rows
DELETE FROM `tb_contact_phone_numbers`;
/*!40000 ALTER TABLE `tb_contact_phone_numbers` DISABLE KEYS */;
INSERT INTO `tb_contact_phone_numbers` (`id`, `contactProfileId`, `caption`, `caption_sl`, `caption_el`, `phoneNumber`) VALUES
	(13, 1, 'Fax.', 'Fax.', '', '(022) 271-634');
/*!40000 ALTER TABLE `tb_contact_phone_numbers` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_contact_profile
DROP TABLE IF EXISTS `tb_contact_profile`;
CREATE TABLE IF NOT EXISTS `tb_contact_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) DEFAULT NULL,
  `companyName_sl` varchar(50) DEFAULT NULL,
  `companyName_el` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_contact_profile: 1 rows
DELETE FROM `tb_contact_profile`;
/*!40000 ALTER TABLE `tb_contact_profile` DISABLE KEYS */;
INSERT INTO `tb_contact_profile` (`id`, `companyName`, `companyName_sl`, `companyName_el`, `latitude`, `longitude`) VALUES
	(1, 'Dafearsoft', 'Dafearsoft', '', '21.195935695810785', '40.60546875');
/*!40000 ALTER TABLE `tb_contact_profile` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_content_layout
DROP TABLE IF EXISTS `tb_content_layout`;
CREATE TABLE IF NOT EXISTS `tb_content_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentLayout` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_content_layout: 2 rows
DELETE FROM `tb_content_layout`;
/*!40000 ALTER TABLE `tb_content_layout` DISABLE KEYS */;
INSERT INTO `tb_content_layout` (`id`, `contentLayout`, `image`) VALUES
	(1, 'IMAGE_FULL_WIDTH', 'image-full-width.jpg'),
	(2, 'IMAGE_ON_LEFT', 'image-on-left.jpg');
/*!40000 ALTER TABLE `tb_content_layout` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_decision
DROP TABLE IF EXISTS `tb_decision`;
CREATE TABLE IF NOT EXISTS `tb_decision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `decision` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_decision: 2 rows
DELETE FROM `tb_decision`;
/*!40000 ALTER TABLE `tb_decision` DISABLE KEYS */;
INSERT INTO `tb_decision` (`id`, `decision`) VALUES
	(1, 'YES'),
	(2, 'NO');
/*!40000 ALTER TABLE `tb_decision` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_district_city
DROP TABLE IF EXISTS `tb_district_city`;
CREATE TABLE IF NOT EXISTS `tb_district_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regionalId` int(11) DEFAULT NULL,
  `districtCity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_district_city: 4 rows
DELETE FROM `tb_district_city`;
/*!40000 ALTER TABLE `tb_district_city` DISABLE KEYS */;
INSERT INTO `tb_district_city` (`id`, `regionalId`, `districtCity`) VALUES
	(30, 5, 'Kotaagung'),
	(29, 5, 'Pringsewu'),
	(27, 5, 'Bandar Lampung'),
	(28, 5, 'T. Karang');
/*!40000 ALTER TABLE `tb_district_city` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_download
DROP TABLE IF EXISTS `tb_download`;
CREATE TABLE IF NOT EXISTS `tb_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_download: 0 rows
DELETE FROM `tb_download`;
/*!40000 ALTER TABLE `tb_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_download` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_download_file
DROP TABLE IF EXISTS `tb_download_file`;
CREATE TABLE IF NOT EXISTS `tb_download_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `downloadId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_download_file: 0 rows
DELETE FROM `tb_download_file`;
/*!40000 ALTER TABLE `tb_download_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_download_file` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_enabled
DROP TABLE IF EXISTS `tb_enabled`;
CREATE TABLE IF NOT EXISTS `tb_enabled` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_enabled: 2 rows
DELETE FROM `tb_enabled`;
/*!40000 ALTER TABLE `tb_enabled` DISABLE KEYS */;
INSERT INTO `tb_enabled` (`id`, `enabled`) VALUES
	(1, 'Enabled'),
	(2, 'Disabled');
/*!40000 ALTER TABLE `tb_enabled` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_events
DROP TABLE IF EXISTS `tb_events`;
CREATE TABLE IF NOT EXISTS `tb_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `location_sl` varchar(50) DEFAULT NULL,
  `location_el` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `eventsDate` date DEFAULT NULL,
  `eventsTime` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `moreDescription` text,
  `moreDescription_sl` text,
  `moreDescription_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_events: 1 rows
DELETE FROM `tb_events`;
/*!40000 ALTER TABLE `tb_events` DISABLE KEYS */;
INSERT INTO `tb_events` (`id`, `title`, `title_sl`, `title_el`, `location`, `location_sl`, `location_el`, `latitude`, `longitude`, `eventsDate`, `eventsTime`, `description`, `description_sl`, `description_el`, `moreDescription`, `moreDescription_sl`, `moreDescription_el`, `publishStatusId`) VALUES
	(1, 'Eat Together', 'Traktir Makan Bersama', '', 'Gold House', 'Gubuk Emas', '', '100', '100', '2016-01-14', 'Jam 10 Pagi', '<p>This is created by boz</p>', '<p>Acara ini dimotori oleh bos.</p>', '', '<p>Good events</p>', '<p>Acara makan bersama yg ok</p>', '', 2);
/*!40000 ALTER TABLE `tb_events` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_faq
DROP TABLE IF EXISTS `tb_faq`;
CREATE TABLE IF NOT EXISTS `tb_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `question_sl` text,
  `question_el` text,
  `answer` text,
  `answer_sl` text,
  `answer_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  `postedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_faq: 6 rows
DELETE FROM `tb_faq`;
/*!40000 ALTER TABLE `tb_faq` DISABLE KEYS */;
INSERT INTO `tb_faq` (`id`, `question`, `question_sl`, `question_el`, `answer`, `answer_sl`, `answer_el`, `publishStatusId`, `postedOn`) VALUES
	(1, 'Are Cash Point support dot matrix printer?', 'Apakah Cash Point mendukung printer dot matrix?', '', '<p>Jawaban English</p>', '<p>Jawaban Indo</p>', '', 1, '2016-05-21 09:05:47'),
	(2, 'Bagaimana caranya agar saya dapat upgrade ke layanan website/cms dengan server VPS', 'Bagaimana caranya agar saya dapat upgrade ke layanan website/cms dengan server VPS', '', '', '', '', 1, '2016-05-21 09:06:02'),
	(3, 'Kami ingin menggunakan Cash Point secara multiuser, apakah bisa?', 'Kami ingin menggunakan Cash Point secara multiuser, apakah bisa?', '', '', '', '', 1, '2016-05-21 09:06:19'),
	(4, 'How to making donation for Dafearsoft?', 'Bagaimana cara agar saya dapat melakukan donasi untuk Dafearsoft?', '', '<p>answer...</p>', '<p>jawabn...</p>', '', 2, '2016-05-21 09:07:11'),
	(6, 'What is website?', 'Apa itu situs web?', '', '<p>Website adalah media promosi online untuk memperkenalkan, menjual, dan mengiklankan produk, jasa, dan perusahaan Anda secara global.</p>', '<p>Website adalah media promosi online untuk memperkenalkan, menjual, dan mengiklankan produk, jasa, dan perusahaan Anda secara global.</p>', '', 2, '2016-05-24 17:08:18'),
	(7, 'Why we must have website?', 'Mengapa harus memiliki situs web?', '', '<p>Anda membutuhkan media untuk promosi agar produk dan layanan dikenal secara global. Media promosi online terbesar saat ini diperoleh menggunakan website. Online-kan produk Anda dan dapatkan keuntungan dari memiliki website.</p>', '<p>Anda membutuhkan media untuk promosi agar produk dan layanan dikenal secara global. Media promosi online terbesar saat ini diperoleh menggunakan website. Online-kan produk Anda dan dapatkan keuntungan dari memiliki website.</p>', '', 2, '2016-05-24 17:08:58');
/*!40000 ALTER TABLE `tb_faq` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_faq_brief_overview
DROP TABLE IF EXISTS `tb_faq_brief_overview`;
CREATE TABLE IF NOT EXISTS `tb_faq_brief_overview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `mediaTypeId` int(11) DEFAULT NULL,
  `contentLayoutId` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `videoEmbed` text,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_faq_brief_overview: 1 rows
DELETE FROM `tb_faq_brief_overview`;
/*!40000 ALTER TABLE `tb_faq_brief_overview` DISABLE KEYS */;
INSERT INTO `tb_faq_brief_overview` (`id`, `title`, `title_sl`, `title_el`, `mediaTypeId`, `contentLayoutId`, `image`, `videoEmbed`, `description`, `description_sl`, `description_el`, `publishStatusId`) VALUES
	(1, 'Guest Book', 'Buku Tamu', '', 3, 0, '', '', '<p>Your critics and suggestions is very helpfull for us. Please ask questions if you find any difficulties related to our services and products.</p>', '<p>Kritik &amp; Saran yg membangun sangat kami harapkan untuk pengembangan. Silakan mengajukan pertanyaan jika menemukan kesulitan terkait dengan pelayanan dan produk kami.</p>', '', 2);
/*!40000 ALTER TABLE `tb_faq_brief_overview` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_foot_content
DROP TABLE IF EXISTS `tb_foot_content`;
CREATE TABLE IF NOT EXISTS `tb_foot_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `description_sl` text,
  `description_el` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_foot_content: 1 rows
DELETE FROM `tb_foot_content`;
/*!40000 ALTER TABLE `tb_foot_content` DISABLE KEYS */;
INSERT INTO `tb_foot_content` (`id`, `description`, `description_sl`, `description_el`) VALUES
	(1, '&copy; Dafearsoft Corp.', '<p>&copy; Dafearsoft Corp.</p>', '');
/*!40000 ALTER TABLE `tb_foot_content` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_foot_links
DROP TABLE IF EXISTS `tb_foot_links`;
CREATE TABLE IF NOT EXISTS `tb_foot_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footContentId` int(11) DEFAULT NULL,
  `linkCaption` varchar(50) DEFAULT NULL,
  `linkCaption_sl` varchar(50) DEFAULT NULL,
  `linkCaption_el` varchar(50) DEFAULT NULL,
  `linkBehaviorId` int(11) DEFAULT NULL,
  `pagesId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `openUrlOnNewTabId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_foot_links: 2 rows
DELETE FROM `tb_foot_links`;
/*!40000 ALTER TABLE `tb_foot_links` DISABLE KEYS */;
INSERT INTO `tb_foot_links` (`id`, `footContentId`, `linkCaption`, `linkCaption_sl`, `linkCaption_el`, `linkBehaviorId`, `pagesId`, `url`, `openUrlOnNewTabId`) VALUES
	(91, 1, 'Bhayangkan', 'Bhayangkan', '', 2, 0, 'http://bhayangkan.com', 1),
	(90, 1, 'Budi Doremi', 'Budi Doremi', '', 2, 0, 'http://budianakpantai.com', 1);
/*!40000 ALTER TABLE `tb_foot_links` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_gender
DROP TABLE IF EXISTS `tb_gender`;
CREATE TABLE IF NOT EXISTS `tb_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_gender: 2 rows
DELETE FROM `tb_gender`;
/*!40000 ALTER TABLE `tb_gender` DISABLE KEYS */;
INSERT INTO `tb_gender` (`id`, `gender`) VALUES
	(1, 'Male'),
	(2, 'Female');
/*!40000 ALTER TABLE `tb_gender` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_guest_book
DROP TABLE IF EXISTS `tb_guest_book`;
CREATE TABLE IF NOT EXISTS `tb_guest_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text,
  `postedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_guest_book: 0 rows
DELETE FROM `tb_guest_book`;
/*!40000 ALTER TABLE `tb_guest_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_guest_book` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_head_content
DROP TABLE IF EXISTS `tb_head_content`;
CREATE TABLE IF NOT EXISTS `tb_head_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `description_sl` text,
  `description_el` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_head_content: 1 rows
DELETE FROM `tb_head_content`;
/*!40000 ALTER TABLE `tb_head_content` DISABLE KEYS */;
INSERT INTO `tb_head_content` (`id`, `description`, `description_sl`, `description_el`) VALUES
	(1, '<p><strong>CALL US:</strong> (0721) 271-272 <strong>SUPPORT:</strong> (022) 271-272</p>', '<p><strong>HUBUNGI KAMI:</strong> (0721) 271-272</p>', '');
/*!40000 ALTER TABLE `tb_head_content` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_head_links
DROP TABLE IF EXISTS `tb_head_links`;
CREATE TABLE IF NOT EXISTS `tb_head_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headContentId` int(11) DEFAULT NULL,
  `linkCaption` varchar(50) DEFAULT NULL,
  `linkCaption_sl` varchar(50) DEFAULT NULL,
  `linkCaption_el` varchar(50) DEFAULT NULL,
  `linkBehaviorId` int(11) DEFAULT NULL,
  `pagesId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `openUrlOnNewTabId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_head_links: 0 rows
DELETE FROM `tb_head_links`;
/*!40000 ALTER TABLE `tb_head_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_head_links` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_language
DROP TABLE IF EXISTS `tb_language`;
CREATE TABLE IF NOT EXISTS `tb_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primaryCode` varchar(50) DEFAULT NULL,
  `primaryLanguage` varchar(50) DEFAULT NULL,
  `primaryFlag` varchar(50) DEFAULT NULL,
  `secondaryCode` varchar(50) DEFAULT NULL,
  `secondaryLanguage` varchar(50) DEFAULT NULL,
  `secondaryFlag` varchar(50) DEFAULT NULL,
  `secondaryEnabledId` int(11) DEFAULT NULL,
  `extendedCode` varchar(50) DEFAULT NULL,
  `extendedLanguage` varchar(50) DEFAULT NULL,
  `extendedFlag` varchar(50) DEFAULT NULL,
  `extendedEnabledId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_language: 1 rows
DELETE FROM `tb_language`;
/*!40000 ALTER TABLE `tb_language` DISABLE KEYS */;
INSERT INTO `tb_language` (`id`, `primaryCode`, `primaryLanguage`, `primaryFlag`, `secondaryCode`, `secondaryLanguage`, `secondaryFlag`, `secondaryEnabledId`, `extendedCode`, `extendedLanguage`, `extendedFlag`, `extendedEnabledId`) VALUES
	(1, 'en', 'English', 'united kingdom', 'id', 'Indonesia', 'indonesia', 1, 'ar', 'Arabian', 'saudi arabia', 2);
/*!40000 ALTER TABLE `tb_language` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_media_type
DROP TABLE IF EXISTS `tb_media_type`;
CREATE TABLE IF NOT EXISTS `tb_media_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_media_type: 3 rows
DELETE FROM `tb_media_type`;
/*!40000 ALTER TABLE `tb_media_type` DISABLE KEYS */;
INSERT INTO `tb_media_type` (`id`, `mediaType`) VALUES
	(1, 'IMAGE'),
	(2, 'VIDEO'),
	(3, 'NO_MEDIA');
/*!40000 ALTER TABLE `tb_media_type` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_menu
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE IF NOT EXISTS `tb_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `menuCaption` varchar(50) DEFAULT NULL,
  `menuCaption_sl` varchar(50) DEFAULT NULL,
  `menuCaption_el` varchar(50) DEFAULT NULL,
  `menuBehaviorId` int(11) DEFAULT NULL,
  `pagesId` int(11) DEFAULT NULL,
  `url` text,
  `openUrlOnNewTabId` int(11) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_menu: 7 rows
DELETE FROM `tb_menu`;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` (`id`, `position`, `menuCaption`, `menuCaption_sl`, `menuCaption_el`, `menuBehaviorId`, `pagesId`, `url`, `openUrlOnNewTabId`, `publishStatusId`) VALUES
	(1, 1, 'Product', 'Produk', '', 1, 9991, '', 2, 2),
	(2, 2, 'Project', 'Proyek', '', 1, 9992, '', 2, 2),
	(3, 3, 'Portfolio', 'Portfolio', '', 1, 9993, '', 2, 2),
	(4, 4, 'Services', 'Layanan', '', 1, 9994, '', 2, 2),
	(5, 5, 'FAQ', 'Tanya/Jawab', '', 1, 9995, '', 2, 2),
	(6, 6, 'About Us', 'Tentang Kami', '', 1, 9996, '', 2, 2),
	(14, 14, 'Download', 'Unduh', '', 1, 9997, '', 2, 2);
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_menu_behavior
DROP TABLE IF EXISTS `tb_menu_behavior`;
CREATE TABLE IF NOT EXISTS `tb_menu_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `behavior` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_menu_behavior: 3 rows
DELETE FROM `tb_menu_behavior`;
/*!40000 ALTER TABLE `tb_menu_behavior` DISABLE KEYS */;
INSERT INTO `tb_menu_behavior` (`id`, `behavior`) VALUES
	(1, 'OPEN_PAGE'),
	(2, 'GO_TO_URL'),
	(3, 'DROP_SUB_MENU');
/*!40000 ALTER TABLE `tb_menu_behavior` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_news
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE IF NOT EXISTS `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsCategoryId` int(11) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `author_sl` varchar(50) DEFAULT NULL,
  `author_el` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `mediaTypeId` int(11) DEFAULT NULL,
  `contentLayoutId` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `videoEmbed` text,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `moreDescription` text,
  `moreDescription_sl` text,
  `moreDescription_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  `headlineId` int(11) DEFAULT NULL,
  `postedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_news: 0 rows
DELETE FROM `tb_news`;
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_news_category
DROP TABLE IF EXISTS `tb_news_category`;
CREATE TABLE IF NOT EXISTS `tb_news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `category_sl` varchar(50) DEFAULT NULL,
  `category_el` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_news_category: 3 rows
DELETE FROM `tb_news_category`;
/*!40000 ALTER TABLE `tb_news_category` DISABLE KEYS */;
INSERT INTO `tb_news_category` (`id`, `position`, `category`, `category_sl`, `category_el`, `publishStatusId`) VALUES
	(1, 2, 'Webstack CMS', 'Webstack CMS', 'اقتصاد', 2),
	(2, 3, 'Cash Point', 'Cash Point', 'عمل', 2),
	(3, 1, 'Dafearsoft', 'Dafearsoft', 'تكنولوجيا', 2);
/*!40000 ALTER TABLE `tb_news_category` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_other_banner
DROP TABLE IF EXISTS `tb_other_banner`;
CREATE TABLE IF NOT EXISTS `tb_other_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagesId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `banner` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_other_banner: 7 rows
DELETE FROM `tb_other_banner`;
/*!40000 ALTER TABLE `tb_other_banner` DISABLE KEYS */;
INSERT INTO `tb_other_banner` (`id`, `pagesId`, `title`, `title_sl`, `title_el`, `banner`, `publishStatusId`) VALUES
	(1, 1, 'About Us', NULL, NULL, '77DCAA1CDCD99B168F167FB1DEA1DFA0B74A77A3.png', 2),
	(2, 9991, 'Blog', NULL, NULL, '3C76B647D5719F5CC4CE0B970007463F0CC78DFF.png', 2),
	(3, 3, 'Career', NULL, NULL, 'C994CBAE0210E1B5AFF72BED10D3A5B22BE2A1B7.png', 2),
	(4, 9995, 'Gallery', NULL, NULL, 'C3E3D22546611C39906E0E9ECDC6886962F5B07D.png', 2),
	(5, 9992, 'News', NULL, '', 'D6D9C14740E33C8BED63B0F983514BCAC39F63D9.png', 2),
	(6, 9994, 'Product', NULL, NULL, '40B8B3967383BC413CB76800A83B837522A08222.png', 2),
	(7, 9996, 'Contact Us', 'Kontak', '', '43E3E4939ABE0E1B9E03B1890B936570EFDA58AE.png', 2);
/*!40000 ALTER TABLE `tb_other_banner` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_pages
DROP TABLE IF EXISTS `tb_pages`;
CREATE TABLE IF NOT EXISTS `tb_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `mediaTypeId` int(11) DEFAULT NULL,
  `contentLayoutId` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `videoEmbed` text,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `moreDescription` text,
  `moreDescription_sl` text,
  `moreDescription_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=664 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_pages: 0 rows
DELETE FROM `tb_pages`;
/*!40000 ALTER TABLE `tb_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pages` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_page_type
DROP TABLE IF EXISTS `tb_page_type`;
CREATE TABLE IF NOT EXISTS `tb_page_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_page_type: 2 rows
DELETE FROM `tb_page_type`;
/*!40000 ALTER TABLE `tb_page_type` DISABLE KEYS */;
INSERT INTO `tb_page_type` (`id`, `pageType`) VALUES
	(1, 'REGULAR_PAGE'),
	(2, 'SYSTEM_PAGE');
/*!40000 ALTER TABLE `tb_page_type` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_photo
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE IF NOT EXISTS `tb_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `photoCategoryId` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `coverPhoto` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `photos` varchar(255) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_photo: 0 rows
DELETE FROM `tb_photo`;
/*!40000 ALTER TABLE `tb_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_photo` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_photo_category
DROP TABLE IF EXISTS `tb_photo_category`;
CREATE TABLE IF NOT EXISTS `tb_photo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `category_sl` varchar(50) DEFAULT NULL,
  `category_el` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_photo_category: 4 rows
DELETE FROM `tb_photo_category`;
/*!40000 ALTER TABLE `tb_photo_category` DISABLE KEYS */;
INSERT INTO `tb_photo_category` (`id`, `position`, `category`, `category_sl`, `category_el`, `publishStatusId`) VALUES
	(2, 2, 'Vacations', 'Liburan', '', 2),
	(3, 3, 'Office Hours', 'Jam Kerja', '', 2),
	(4, 4, 'Picnic', 'Piknik', '', 2),
	(5, 5, 'Teams & Relations', 'Tim & Relasi', '', 2);
/*!40000 ALTER TABLE `tb_photo_category` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_portfolio
DROP TABLE IF EXISTS `tb_portfolio`;
CREATE TABLE IF NOT EXISTS `tb_portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `productName` varchar(50) DEFAULT NULL,
  `productName_sl` varchar(50) DEFAULT NULL,
  `productName_el` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `showViewDemoId` int(11) DEFAULT NULL,
  `viewDemoUrl` varchar(255) DEFAULT NULL,
  `showVisitPageId` int(11) DEFAULT NULL,
  `visitPageUrl` varchar(255) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_portfolio: 2 rows
DELETE FROM `tb_portfolio`;
/*!40000 ALTER TABLE `tb_portfolio` DISABLE KEYS */;
INSERT INTO `tb_portfolio` (`id`, `position`, `productName`, `productName_sl`, `productName_el`, `image`, `description`, `description_sl`, `description_el`, `showViewDemoId`, `viewDemoUrl`, `showVisitPageId`, `visitPageUrl`, `publishStatusId`) VALUES
	(1, 1, 'Budi Doremi', 'Budi Doremi', '', '58C5247F4B8533291E77843B9E23099723E572C6.jpeg', '<p>Official Website for Budi Doremi (Artist), this Website contain many article, music and multimedia.</p>', '<p>Situs Web resmi artis Budi Doremi yg berisikan berbagai artikel, musik dan multimedia.</p>', '', 2, '', 1, 'http://budianakpantai.com', 2),
	(2, 2, 'Bhayangkan', 'Bhayangkan', '', '3A0309E80932A5F6C4358512DC97B875179D7556.jpeg', '<p>Website for Bhayangkan Design Company, this Website is used to publish 3d motion portfolio.</p>', '<p>Situs web perusahaan desain multimedia Bhayangkan, web ini digunakan untuk kepentingan publikasi portfolio berupa 3d motion.</p>', '', 2, '', 1, 'http://bhayangkan.com', 2);
/*!40000 ALTER TABLE `tb_portfolio` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_product
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE IF NOT EXISTS `tb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `productCategoryId` int(11) NOT NULL DEFAULT '0',
  `productName` varchar(50) DEFAULT NULL,
  `productName_sl` varchar(50) DEFAULT NULL,
  `productName_el` varchar(50) DEFAULT NULL,
  `coverImage` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `moreDescription` text,
  `moreDescription_sl` text,
  `moreDescription_el` text,
  `showPriceId` int(11) NOT NULL DEFAULT '0',
  `price` varchar(50) DEFAULT NULL,
  `price_sl` varchar(50) DEFAULT NULL,
  `showWebsiteDemoId` int(11) NOT NULL DEFAULT '0',
  `websiteDemoUrl` varchar(100) DEFAULT NULL,
  `showDashboardDemoId` int(11) NOT NULL DEFAULT '0',
  `dashboardDemoUrl` varchar(100) DEFAULT NULL,
  `showApplicationDemoId` int(11) NOT NULL DEFAULT '0',
  `applicationDemoUrl` varchar(100) DEFAULT NULL,
  `showDownloadId` int(11) NOT NULL DEFAULT '0',
  `productFile` varchar(100) DEFAULT NULL,
  `images` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_product: 2 rows
DELETE FROM `tb_product`;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` (`id`, `position`, `productCategoryId`, `productName`, `productName_sl`, `productName_el`, `coverImage`, `description`, `description_sl`, `description_el`, `moreDescription`, `moreDescription_sl`, `moreDescription_el`, `showPriceId`, `price`, `price_sl`, `showWebsiteDemoId`, `websiteDemoUrl`, `showDashboardDemoId`, `dashboardDemoUrl`, `showApplicationDemoId`, `applicationDemoUrl`, `showDownloadId`, `productFile`, `images`, `publishStatusId`) VALUES
	(1, 2, 4, 'Webstack CMS', 'Webstack CMS', 'tes arab', 'AA6C2E1A1E0B6C2DCA619E644B1B576D4F53E482.png', '<p>We are development team, ready to developing Custom Company Profile and Product Catalog (Online Trading)&nbsp;Website by using our original Content Management System. We serve Website development with low price which is quite economical for the good product quality.</p>', '<p>Menerima pembuatan Custom Website Company Profile dan Product Katalog (Perdagangan Online) dengan menggunakan sistem CMS original buatan kami. Kami melayani pembuatan Website dengan harga yg cukup ekonomis untuk kualitas yg cukup baik.</p>', '', '<p>Untuk pemesanan pembuatan Website silakan mengirimkan draft lengkap ke email kami, yaitu berisi spesifikasi apa saja feature yg diinginkan untuk diterapkan pada Website yg akan dibuat. Harga dari Website akan kami tawarkan kembali setelah permintaan Anda kami analisis.<br /><br />Silakan mengirim email ke f.anaturdasa@gmail.com dan tunggu balasan email dari kami.</p>', '<p>Untuk pemesanan pembuatan Website silakan mengirimkan draft lengkap ke email kami, yaitu berisi spesifikasi apa saja feature yg diinginkan untuk diterapkan pada Website yg akan dibuat. Harga dari Website akan kami tawarkan kembali setelah permintaan Anda kami analisis.<br /><br />Silakan mengirim email ke f.anaturdasa@gmail.com dan tunggu balasan email dari kami.</p>', '', 1, '$ 300', 'Rp. 3.000.000', 0, '', 0, '', 0, '', 0, '', '0C48E3E4DDD53A346A6D81F2B7D8887E9FFDA822.jpeg,A0AA46554AC2CF1EBE0C600FE917C955E06D464B.jpeg', 2),
	(2, 1, 2, 'Cash Point', 'Cash Point', '', 'F535FC576A95D1E14C3EA9A450F103F942995C7C.png', '<p>Cash Point is point of sales software created for computerized sales systems in the small and medium enterprises, Cash Point can used for a mini markets, restaurants and others. Download and use this application program for free of charge.</p>', '<p>Cash Point adalah program aplikasi penjualan yang dibuat untuk kebutuhan sistem komputerisasi penjualan pada usaha kecil menengah antara lain seperti toko, restoran dan lain-lain. Dapatkan dan gunakan secara gratis program aplikasi ini tanpa pungutan biaya.</p>', '', '', '', '', 2, '$ 300', 'Rp. 3.000.000', 0, '', 0, '', 0, '', 0, '', NULL, 2);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_product_category
DROP TABLE IF EXISTS `tb_product_category`;
CREATE TABLE IF NOT EXISTS `tb_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `category_sl` varchar(50) DEFAULT NULL,
  `category_el` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_product_category: 2 rows
DELETE FROM `tb_product_category`;
/*!40000 ALTER TABLE `tb_product_category` DISABLE KEYS */;
INSERT INTO `tb_product_category` (`id`, `position`, `category`, `category_sl`, `category_el`, `publishStatusId`) VALUES
	(2, 2, 'Application', 'Aplikasi', 'ملابس', 2),
	(4, 4, 'Website', 'Situs Web', '', 2);
/*!40000 ALTER TABLE `tb_product_category` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_project
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE IF NOT EXISTS `tb_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `clientName` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_project: 6 rows
DELETE FROM `tb_project`;
/*!40000 ALTER TABLE `tb_project` DISABLE KEYS */;
INSERT INTO `tb_project` (`id`, `position`, `clientName`, `publishStatusId`) VALUES
	(1, 1, 'PT. PLN Persero', 2),
	(2, 2, 'Diklat Provinsi', 2),
	(3, 3, 'Dinas PU', 2),
	(4, 4, 'Pertamina', 2),
	(5, 5, 'Dipenda', 2),
	(6, 6, 'Dinas Kesehatan', 2);
/*!40000 ALTER TABLE `tb_project` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_project_products
DROP TABLE IF EXISTS `tb_project_products`;
CREATE TABLE IF NOT EXISTS `tb_project_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL DEFAULT '0',
  `productName` varchar(255) DEFAULT NULL,
  `productName_sl` varchar(255) DEFAULT NULL,
  `productName_el` varchar(255) DEFAULT NULL,
  `yearFrom` int(11) DEFAULT NULL,
  `yearTo` int(11) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_project_products: 11 rows
DELETE FROM `tb_project_products`;
/*!40000 ALTER TABLE `tb_project_products` DISABLE KEYS */;
INSERT INTO `tb_project_products` (`id`, `projectId`, `productName`, `productName_sl`, `productName_el`, `yearFrom`, `yearTo`, `publishStatusId`) VALUES
	(16, 1, 'Website & Performance Information System UPT. Bengkulu', 'Sistem Informasi Kinerja & Website UPT. Bengkulu', '', 2015, 2016, 2),
	(15, 1, 'PLN Attendance System For Lampung Regional', 'Sistem Absensi PLN untuk Seluruh Wilayah Lampung', '', 2012, 2013, 2),
	(14, 1, 'Website & Performance Information System UPT. Tanjung Karang', 'Sistem Informasi Kinerja & Website UPT. Tanjung Karang', '', 2012, 2013, 2),
	(13, 1, 'Cooperative Accounting Information System UPT. Tanjung Karang', 'Sistem Informasi Akuntansi Koperasi UPT. Tanjung Karang', '', 2011, 2012, 2),
	(7, 2, 'Training Information System/Website Diklat Provinsi Lampung', 'Sistem Informasi Kediklatan/Website Diklat Provinsi Lampung', '', 2015, 2016, 2),
	(8, 3, 'Irrigation Website Lampung', 'Website Pengairan Lampung', '', 2011, 2012, 2),
	(9, 4, 'Interactive DVD Petrokimia', 'DVD Interaktif Petrokimia', '', 2014, 2015, 2),
	(10, 5, 'Database  Integration & Reporting', 'Integrasi Database & Reporting', '', 2013, 2014, 2),
	(12, 6, 'Employees Information System', 'Sistem Informasi Kepegawaian', '', 2010, 2011, 2),
	(17, 1, 'Equipment Monitoring & Maintenance System PLN Siantar', 'Sistem Pemantauan & Pemeliharaan Alat PLN Siantar', '', 2015, 2016, 2),
	(18, 1, 'Employee Attendance System', 'Sistem Absensi Pegawai ', '', 2018, 2019, 2);
/*!40000 ALTER TABLE `tb_project_products` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_publish_status
DROP TABLE IF EXISTS `tb_publish_status`;
CREATE TABLE IF NOT EXISTS `tb_publish_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publishStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_publish_status: 2 rows
DELETE FROM `tb_publish_status`;
/*!40000 ALTER TABLE `tb_publish_status` DISABLE KEYS */;
INSERT INTO `tb_publish_status` (`id`, `publishStatus`) VALUES
	(1, 'Draft'),
	(2, 'Publish');
/*!40000 ALTER TABLE `tb_publish_status` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_regional
DROP TABLE IF EXISTS `tb_regional`;
CREATE TABLE IF NOT EXISTS `tb_regional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regional` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_regional: 2 rows
DELETE FROM `tb_regional`;
/*!40000 ALTER TABLE `tb_regional` DISABLE KEYS */;
INSERT INTO `tb_regional` (`id`, `regional`) VALUES
	(5, 'Lampung'),
	(6, 'Jawa Barat1');
/*!40000 ALTER TABLE `tb_regional` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_seo
DROP TABLE IF EXISTS `tb_seo`;
CREATE TABLE IF NOT EXISTS `tb_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagesId` int(11) NOT NULL DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_seo: 9 rows
DELETE FROM `tb_seo`;
/*!40000 ALTER TABLE `tb_seo` DISABLE KEYS */;
INSERT INTO `tb_seo` (`id`, `pagesId`, `description`) VALUES
	(4, 2, 'tes aja'),
	(5, 1, 'Ini page service isi seo nya'),
	(6, 9991, 'Cash Point adalah program aplikasi penjualan yang dibuat untuk kebutuhan sistem komputerisasi penjualan pada usaha kecil menengah antara lain seperti toko, restoran dan lain-lain. Dapatkan dan gunakan secara gratis program aplikasi ini tanpa pungutan biaya.'),
	(10, 9990, 'Menerima pembuatan Custom Website Company Profile dan Product Katalog (Perdagangan Online) dengan menggunakan sistem CMS original buatan kami. Kami melayani pembuatan Website dengan harga yg cukup ekonomis untuk kualitas yg cukup baik.'),
	(11, 9994, 'Dafearsoft Development Team menerima jasa pembuatan website dan berbagai jenis aplikasi; Desktop/Standalone, Mobile Smart Phone Apps ataupun Web Base Application.'),
	(12, 9992, 'Dafearsoft telah banyak berpengalaman dalam mengerjakan proyek dalam maupun luar negeri.'),
	(13, 9993, 'Contoh-contoh website/aplikasi yang pernah dikerjakan Dafearsoft Development Team'),
	(14, 9995, 'Jika mengalami kesulitan dalam penggunaan aplikasi yg kami kembangkan, silakan hubungi kami. Dafearsoft Development Team.'),
	(15, 9996, 'Dafearsoft Development Team adalah sekumpulan professional IT muda, yg siap membantu Anda dalam mengembangkan berbagai perangkat lunak/software.');
/*!40000 ALTER TABLE `tb_seo` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_seo_keywords
DROP TABLE IF EXISTS `tb_seo_keywords`;
CREATE TABLE IF NOT EXISTS `tb_seo_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seoId` int(11) NOT NULL DEFAULT '0',
  `keywords` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_seo_keywords: 63 rows
DELETE FROM `tb_seo_keywords`;
/*!40000 ALTER TABLE `tb_seo_keywords` DISABLE KEYS */;
INSERT INTO `tb_seo_keywords` (`id`, `seoId`, `keywords`) VALUES
	(7, 4, 'cd'),
	(6, 4, 'ab'),
	(15, 5, 'key1'),
	(14, 5, 'key 2'),
	(42, 6, 'kasir'),
	(18, 7, 'key home1'),
	(19, 7, 'home2'),
	(25, 10, 'dafearsoft'),
	(64, 11, 'website'),
	(63, 11, 'menerima'),
	(62, 11, 'services'),
	(26, 10, 'cash point'),
	(27, 10, 'cms'),
	(28, 10, 'point of sale'),
	(29, 10, 'kasir'),
	(41, 6, 'cashier'),
	(40, 6, 'point of sale'),
	(39, 6, 'webstack'),
	(38, 6, 'cash point'),
	(43, 6, 'cms'),
	(44, 6, 'content management system'),
	(45, 6, 'website'),
	(46, 6, 'product'),
	(47, 6, 'produk'),
	(48, 12, 'project'),
	(49, 12, 'proyek'),
	(50, 12, 'website'),
	(51, 12, 'aplikasi'),
	(52, 12, 'application'),
	(53, 13, 'website'),
	(54, 13, 'situs web'),
	(55, 13, 'aplikasi'),
	(56, 13, 'contoh'),
	(57, 13, 'demo'),
	(58, 13, 'screenshoot'),
	(65, 11, 'smart phone'),
	(66, 11, 'android'),
	(67, 11, 'ios'),
	(68, 11, 'desktop'),
	(69, 11, 'standalone'),
	(98, 14, 'jawaban'),
	(97, 14, 'answers'),
	(96, 14, 'answer'),
	(95, 14, 'pertanyaan'),
	(94, 14, 'questions'),
	(93, 14, 'question'),
	(92, 14, 'faq'),
	(80, 15, 'Fadlun Anaturdasa'),
	(81, 15, 'Fadlun Anaturdasa Wibawa'),
	(82, 15, 'Marbi Aldianto'),
	(83, 15, 'Dwi Jayadi'),
	(84, 15, 'aby'),
	(85, 15, 'abyjebrut'),
	(86, 15, 'fadlun'),
	(87, 15, 'jay'),
	(88, 15, 'badrun'),
	(89, 15, 'dwi'),
	(90, 15, 'software'),
	(91, 15, 'perangkat lunak'),
	(99, 14, 'stack'),
	(100, 14, 'overflow'),
	(101, 14, 'contact us'),
	(102, 14, 'hubungi kami');
/*!40000 ALTER TABLE `tb_seo_keywords` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_services
DROP TABLE IF EXISTS `tb_services`;
CREATE TABLE IF NOT EXISTS `tb_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_services: 4 rows
DELETE FROM `tb_services`;
/*!40000 ALTER TABLE `tb_services` DISABLE KEYS */;
INSERT INTO `tb_services` (`id`, `position`, `title`, `title_sl`, `title_el`, `description`, `description_sl`, `description_el`, `publishStatusId`) VALUES
	(1, 1, 'Desktop Application Development', 'Pengembangan Aplikasi Desktop', '', '<p>Professionals in the development of desktop based database applications.</p>', '<p>Profesional dalam pembuatan dan pengembangan aplikasi database berbasis desktop.</p>', '', 2),
	(2, 2, 'Website/Web Based Application Development', 'Pengembangan Aplikasi Web/Situs Web', '', '<p>Professionals in the development of websites and web based applications.</p>', '<p>Profesional dalam pembuatan dan pengembangan website dan aplikasi berbasis web</p>', '', 2),
	(3, 3, 'Mobile Application Development', 'Pengembangan Aplikasi Mobile', '', '<p>Professionals in the development of applications based on mobile smart phone.</p>', '<p>Profesional dalam pembuatan dan pengembangan aplikasi berbasis mobile smart phone.</p>', '', 2),
	(4, 4, 'Information System Provider', 'Penyedia Sistem Informasi', '', '<p>Ready to support in the consulting various problems of information systems.</p>', '<p>Siap membantu dalam pengadaan dan konsultasi berbagai masalah sistem informasi.</p>', '', 2);
/*!40000 ALTER TABLE `tb_services` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_services_brief_overview
DROP TABLE IF EXISTS `tb_services_brief_overview`;
CREATE TABLE IF NOT EXISTS `tb_services_brief_overview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `mediaTypeId` int(11) DEFAULT NULL,
  `contentLayoutId` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `videoEmbed` text,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_services_brief_overview: 1 rows
DELETE FROM `tb_services_brief_overview`;
/*!40000 ALTER TABLE `tb_services_brief_overview` DISABLE KEYS */;
INSERT INTO `tb_services_brief_overview` (`id`, `title`, `title_sl`, `title_el`, `mediaTypeId`, `contentLayoutId`, `image`, `videoEmbed`, `description`, `description_sl`, `description_el`, `publishStatusId`) VALUES
	(1, 'Services', 'Layanan', '', 1, 1, '1217DC3BD8984A04B77104A693D8E140F5880849.jpeg', '', '<p>We are ready to help you in developing applications and websites.</p>', '<p>Dafearsoft Development Team menerima jasa pembuatan Aplikasi ataupun Website.</p>', '', 2);
/*!40000 ALTER TABLE `tb_services_brief_overview` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_social_media
DROP TABLE IF EXISTS `tb_social_media`;
CREATE TABLE IF NOT EXISTS `tb_social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialMedia` varchar(50) DEFAULT NULL,
  `websiteIcon` varchar(50) DEFAULT NULL,
  `websiteColor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_social_media: 4 rows
DELETE FROM `tb_social_media`;
/*!40000 ALTER TABLE `tb_social_media` DISABLE KEYS */;
INSERT INTO `tb_social_media` (`id`, `socialMedia`, `websiteIcon`, `websiteColor`) VALUES
	(1, 'Facebook', 'fa-facebook', 'btn-primary'),
	(2, 'Twitter', 'fa-twitter', 'btn-primary'),
	(3, 'Linkedin', 'fa-linkedin', 'btn-warning'),
	(4, 'Google Plus', 'fa-google-plus', 'btn-danger');
/*!40000 ALTER TABLE `tb_social_media` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_social_network
DROP TABLE IF EXISTS `tb_social_network`;
CREATE TABLE IF NOT EXISTS `tb_social_network` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebookPage` varchar(255) DEFAULT NULL,
  `twitterPage` varchar(255) DEFAULT NULL,
  `googlePlusPage` varchar(255) DEFAULT NULL,
  `instagramPage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_social_network: 1 rows
DELETE FROM `tb_social_network`;
/*!40000 ALTER TABLE `tb_social_network` DISABLE KEYS */;
INSERT INTO `tb_social_network` (`id`, `facebookPage`, `twitterPage`, `googlePlusPage`, `instagramPage`) VALUES
	(1, 'http://www.facebook.com/', 'http://www.twitter.com/', 'http://www.googleplus.com', 'http://instagram.com');
/*!40000 ALTER TABLE `tb_social_network` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_subscriber
DROP TABLE IF EXISTS `tb_subscriber`;
CREATE TABLE IF NOT EXISTS `tb_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `postedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_subscriber: 0 rows
DELETE FROM `tb_subscriber`;
/*!40000 ALTER TABLE `tb_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_subscriber` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_sub_menu
DROP TABLE IF EXISTS `tb_sub_menu`;
CREATE TABLE IF NOT EXISTS `tb_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) DEFAULT NULL,
  `subMenuCaption` varchar(50) DEFAULT NULL,
  `subMenuCaption_sl` varchar(50) DEFAULT NULL,
  `subMenuCaption_el` varchar(50) DEFAULT NULL,
  `subMenuBehaviorId` int(11) DEFAULT NULL,
  `pagesId` int(11) DEFAULT NULL,
  `url` text,
  `openUrlOnNewTabId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_sub_menu: 0 rows
DELETE FROM `tb_sub_menu`;
/*!40000 ALTER TABLE `tb_sub_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sub_menu` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_sub_pages
DROP TABLE IF EXISTS `tb_sub_pages`;
CREATE TABLE IF NOT EXISTS `tb_sub_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `pagesId` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `mediaTypeId` int(11) DEFAULT NULL,
  `contentLayoutId` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `videoEmbed` text,
  `description` text,
  `description_sl` text,
  `description_el` text,
  `moreDescription` text,
  `moreDescription_sl` text,
  `moreDescription_el` text,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_sub_pages: 0 rows
DELETE FROM `tb_sub_pages`;
/*!40000 ALTER TABLE `tb_sub_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sub_pages` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_system_pages
DROP TABLE IF EXISTS `tb_system_pages`;
CREATE TABLE IF NOT EXISTS `tb_system_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `title_sl` varchar(50) DEFAULT NULL,
  `title_el` varchar(50) DEFAULT NULL,
  `uri` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_system_pages: 7 rows
DELETE FROM `tb_system_pages`;
/*!40000 ALTER TABLE `tb_system_pages` DISABLE KEYS */;
INSERT INTO `tb_system_pages` (`id`, `title`, `title_sl`, `title_el`, `uri`) VALUES
	(1, 'Product', 'Produk', '', 'product'),
	(2, 'Project', 'Proyek', '', 'project'),
	(3, 'Portfolio', 'Portfolio', '', 'portfolio'),
	(4, 'Services', 'Layanan', '', 'services'),
	(5, 'Faq', 'Tanya/Jawab', '', 'faq'),
	(6, 'About Us', 'Tentang Kami', '', 'team'),
	(7, 'Download', 'Unduh', NULL, 'download');
/*!40000 ALTER TABLE `tb_system_pages` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_team_profile
DROP TABLE IF EXISTS `tb_team_profile`;
CREATE TABLE IF NOT EXISTS `tb_team_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `skypeId` varchar(50) DEFAULT NULL,
  `pinBb` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `description` text,
  `showDownloadCvId` int(11) DEFAULT NULL,
  `cvFile` varchar(50) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_team_profile: 6 rows
DELETE FROM `tb_team_profile`;
/*!40000 ALTER TABLE `tb_team_profile` DISABLE KEYS */;
INSERT INTO `tb_team_profile` (`id`, `position`, `name`, `profession`, `photo`, `email`, `skypeId`, `pinBb`, `phoneNumber`, `description`, `showDownloadCvId`, `cvFile`, `publishStatusId`) VALUES
	(1, 1, 'Fadlun Anaturdasa', 'Framework Developer', 'E2F79767BD91FE7DBB19DA183F669B04B01BF721.jpeg', 'f.anaturdasa@dafearsoft.com', 'f.anaturdasa', '711BB', '100200300', '<p>test deskripsi...</p>', 1, '4466426324AAC81B33640824F944C01D8D129EB7.odt', 2),
	(2, 2, 'Marbi Aldianto', 'Application Developer', '45DAFFCDF0B516720FD5FCF28693738F6DF9406F.jpeg', 'abyjebrut@dafearsoft.com', '', '', '', '', 2, '', 2),
	(3, 3, 'Muhammad Fredi', 'UX Developer', 'CC95FBA42179F66E3AB0554E185F39A980FB4616.png', '', '', '', '', '', 2, '', 2),
	(4, 4, 'Dwi Jayadi', 'Website Developer', '174EC246A85700BD884156D7B6E7352791EBC50E.jpeg', 'track41studio@gmail.com', '', '', '', '', 2, '', 2),
	(5, 5, 'Rindang Ramadhan', 'Frontend Developer', '6A3CB9D7BBC5CF5FF4DCFA236D053F547AF93EF2.jpeg', 'rindangramadhan10@gmail.com', '', '', '+6282281597835', '', 2, '', 2),
	(6, 6, 'Irvan Ardyanda', 'EDP', 'C978B6613A3AF92B80934A9E58BEB7E3EDE8EBD5.jpeg', 'irvanard959@gmail.com', '', '', '082175566730', '', 2, '', 2);
/*!40000 ALTER TABLE `tb_team_profile` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_team_profile_skills
DROP TABLE IF EXISTS `tb_team_profile_skills`;
CREATE TABLE IF NOT EXISTS `tb_team_profile_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamProfileId` int(11) DEFAULT NULL,
  `skill` varchar(50) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_team_profile_skills: 4 rows
DELETE FROM `tb_team_profile_skills`;
/*!40000 ALTER TABLE `tb_team_profile_skills` DISABLE KEYS */;
INSERT INTO `tb_team_profile_skills` (`id`, `teamProfileId`, `skill`, `percentage`, `publishStatusId`) VALUES
	(13, 1, 'PHP', 70, 2),
	(12, 1, 'Javascript', 30, 2),
	(11, 1, 'Jquery', 54, 2),
	(14, 1, 'Code Igniter', 79, 2);
/*!40000 ALTER TABLE `tb_team_profile_skills` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_team_profile_social_media
DROP TABLE IF EXISTS `tb_team_profile_social_media`;
CREATE TABLE IF NOT EXISTS `tb_team_profile_social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamProfileId` int(11) DEFAULT NULL,
  `socialMediaId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `publishStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_team_profile_social_media: 6 rows
DELETE FROM `tb_team_profile_social_media`;
/*!40000 ALTER TABLE `tb_team_profile_social_media` DISABLE KEYS */;
INSERT INTO `tb_team_profile_social_media` (`id`, `teamProfileId`, `socialMediaId`, `url`, `publishStatusId`) VALUES
	(12, 1, 2, 'http://tw.com', 2),
	(11, 1, 3, 'http://linkedn.com', 2),
	(10, 1, 1, 'http://fb.com', 2),
	(16, 5, 1, 'https://www.facebook.com/rindang.ramadhan', 2),
	(15, 5, 3, 'https://www.linkedin.com/in/rindang-ramadhan-366248120', 2),
	(17, 4, 3, 'https://www.linkedin.com/in/jay-wicaksono-b58080bb/', 2);
/*!40000 ALTER TABLE `tb_team_profile_social_media` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_user
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `privilegesId` int(11) DEFAULT NULL,
  `genderId` int(11) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `branchId` int(11) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_user: 1 rows
DELETE FROM `tb_user`;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` (`id`, `firstName`, `lastName`, `photo`, `email`, `password`, `salt`, `privilegesId`, `genderId`, `dateOfBirth`, `mobileNumber`, `branchId`, `address`) VALUES
	(11, 'Dwi', 'Jayadi', 'BF1D55B558A020A4D4F8E7FE569A5A0D12466E9B.png', 'd.jayadi@dafearsoft.com', 'EDDCBB96052052C01036BFA350FC3C0058733B0B', 'CB7037DA715894722BEAF164348069D2798211BA', 7, 1, '2016-08-09', '100200300', 11, 'Jl. Lombok');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_user_login
DROP TABLE IF EXISTS `tb_user_login`;
CREATE TABLE IF NOT EXISTS `tb_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `auth` varchar(50) DEFAULT NULL,
  `loginOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_user_login: 164 rows
DELETE FROM `tb_user_login`;
/*!40000 ALTER TABLE `tb_user_login` DISABLE KEYS */;
INSERT INTO `tb_user_login` (`id`, `userId`, `auth`, `loginOn`) VALUES
	(19, 11, '96C2C0C212DB512CCD635FD2E9AFCFCFC24B2D34', '2015-12-13 05:03:31'),
	(20, 0, 'BE242D9777C372EA64082028956EF10BC7F56456', '2015-12-13 05:03:51'),
	(21, 11, '74454547A13F6A2A95D0645B949DA77BB1B23A5F', '2015-12-13 05:04:28'),
	(22, 0, 'BAADFB2D99147FF44C7BDED4F8EEE1337DE386B1', '2015-12-13 05:05:15'),
	(23, 0, '1917DB229F49C326E2BAA6DEBE45E226AEE4D6C2', '2015-12-13 05:06:00'),
	(24, 11, '635D4B922D05A319B3FA2F593B1F1D2E76D2926E', '2015-12-14 10:28:40'),
	(25, 11, 'BC1B318181FD63C3A38265E0029415A7A75F12F9', '2015-12-14 10:31:20'),
	(26, 11, 'A356619E46320B57B1765381766C77254E3D3740', '2015-12-14 12:52:02'),
	(27, 0, '4AA0DBC33209E97CC669CD79D9252FFEA2447EAD', '2015-12-14 01:21:11'),
	(28, 11, '557F1712C6D864ED75FF98361102FEFFBB164134', '2015-12-14 04:34:07'),
	(29, 0, 'D25BC62D904FC646B527217AD54FCB247E57DC0E', '2015-12-14 04:48:07'),
	(30, 11, 'EB524B5E20286601857C9FEBC056E0F41434A66A', '2015-12-15 03:12:18'),
	(31, 11, '2DFDF332810268B3D5E4448AEEC6B0738411212F', '2015-12-16 12:02:55'),
	(32, 0, '18A05612E798E500EC9E190B5B4BADA717DDD053', '2015-12-16 12:06:36'),
	(33, 11, 'EADDCB4139C54DAC88701222B977B692EF46A4C1', '2015-12-16 12:09:21'),
	(34, 16, '2CB5BF844F40F047AA43322B396A74BF716A579E', '2015-12-16 12:30:05'),
	(35, 16, '1553042D2EA55760A83675445D8369516681F8C0', '2015-12-16 12:34:07'),
	(36, 16, '4BAC98EF591526E08B71AC2C9EB6AED9E3CEEA36', '2015-12-16 12:36:37'),
	(37, 16, '726A659A4E1A1C14707F3454E5EB46858CB83977', '2015-12-16 12:37:16'),
	(38, 0, '215DB0EC98F73EEF4D96BACF3ABC21E6FBEC2985', '2015-12-16 12:39:17'),
	(39, 0, '53866A10CCB5A00590172874E0BE15A1AF3074B2', '2015-12-17 04:53:29'),
	(40, 0, '9DF8374ADA7031E27117F26179F356E6E24B0B33', '2015-12-18 12:24:56'),
	(41, 0, '52C03A37E5C481B1E47954CC9E5B6C273D1608D2', '2015-12-19 12:52:28'),
	(42, 0, '70B3372B49A814DFAD03D3BB43B1F4D20F558960', '2015-12-19 02:18:04'),
	(43, 11, 'E5EE252C97539DB4BD19AEA9F4B86A8120B34DE5', '2015-12-19 02:56:39'),
	(44, 11, '1B1D2C77FA409EB951A387E4B041481ABCD55E17', '2015-12-19 09:41:29'),
	(45, 0, '5CE8697219C6610BD561D6A0100BE54A88AF381F', '2015-12-19 09:53:43'),
	(46, 11, '244ED5E4D4541A53031E7A9D4F8FC58EB41782E8', '2015-12-19 12:44:37'),
	(47, 11, '0D761B347DB7DC7993D62219089D9402BE8FF48F', '2015-12-19 12:46:06'),
	(48, 0, '7719A353093E8FBA1E7BEC4C35EFBE309CD8CC5E', '2015-12-19 04:37:43'),
	(49, 0, '33B105D5674AAD8318A22E55D8DA66524C161EC1', '2015-12-21 04:17:19'),
	(50, 0, 'A4C2F8BAD78B59AFB0E20D63962391FED8C944C6', '2015-12-21 06:00:37'),
	(51, 0, 'CADB8391A7301957D5C87826B54B134323FD73D6', '2015-12-21 09:48:49'),
	(52, 0, '7E935A047B46036E9C309DA444DC1B7F30A77B16', '2015-12-21 09:50:10'),
	(53, 0, '86BE39DA61F9F8E50BDDDAADA772307449377D5B', '2015-12-21 09:50:54'),
	(54, 0, 'CBEECFBE29780D7B69EFEC7EA4AEBFC322738860', '2015-12-21 09:51:18'),
	(55, 0, 'D542CFECD8065F210FD0456D5EA62D97C9B420F6', '2015-12-21 09:54:27'),
	(56, 0, '1261B87661D6F72BA82AAA4AA1E4CD2CFF16736D', '2015-12-21 02:35:49'),
	(57, 0, '8CAD83260490D0CF58627026713285BA2A164E1A', '2015-12-21 03:52:20'),
	(58, 0, 'ABD4D0BF74340D8E1772EEE9C13B3DA48AA0FE60', '2015-12-22 05:10:47'),
	(59, 0, 'EB63103E645FBFE6E99400ECDEE1593C521247F9', '2015-12-22 01:06:53'),
	(60, 0, '31F00AEB86CADFE48328AEE7AD6BD4B8A3FED96D', '2015-12-24 01:01:39'),
	(61, 0, 'BDE40B3F280B2264E21B3F4DCF63D2348719D136', '2015-12-27 11:18:53'),
	(62, 0, '659DD49E1CFC0F0697FA53FF322A7CFE302264BE', '2015-12-28 08:10:10'),
	(63, 0, '139A6952B2E989E277A627F89F29DC9942B3E43D', '2015-12-29 10:17:37'),
	(64, 0, '38B03CEE9378363DB253158055CD9EBAF19C63FA', '2015-12-30 03:44:58'),
	(65, 0, 'A819128A4A17B00B6E9AD5313A6831348D2819FF', '2015-12-31 06:27:30'),
	(66, 0, '34C77579DD83820DCA5CEFFBEAB93C3008612C0F', '2016-01-03 06:52:45'),
	(67, 0, 'FA590970DB9391E44CBFA6DEB9043D431D5810D4', '2016-01-03 08:09:46'),
	(68, 0, 'F619D31E1FA89990851850E929C008ED02766E01', '2016-01-04 04:32:51'),
	(69, 0, '4AB0A0EA6D8107F684A665069670CF734FBBACF0', '2016-01-04 12:29:56'),
	(70, 0, 'A8D2EDF8AB3C7B162CB00562CDCDEAA2ED207A0F', '2016-01-05 06:29:27'),
	(71, 0, '22B647F97DD1738FC37A0B0D17687E8C654E1E0A', '2016-01-06 11:41:50'),
	(72, 0, '29208221141B18F9DA60087E3B7B6FBC2AB5E18E', '2016-01-12 08:00:35'),
	(73, 0, '522DC5A32B299B677C51DBD86C0E19054589E5E9', '2016-01-12 09:13:26'),
	(74, 0, '39E46A1B234204B28C3226FBDC9F8CF0CAF9B712', '2016-01-15 09:42:13'),
	(75, 0, '64AE3B5F8571CAA72A85F5C8B8BD4451B66013DE', '2016-01-15 11:22:29'),
	(76, 0, '88F2C9CCC5BDCD0A16F7A23079605ADB79495697', '2016-01-16 02:04:38'),
	(77, 0, '5C2BF68AAE8F48C7341B7FFD4106969F9978B3A1', '2016-01-18 03:27:59'),
	(78, 0, '3586325CC04E6DE4230D7F097A3AD789FD6DC7B2', '2016-01-18 12:08:41'),
	(79, 0, 'BA38152A56866FA0686B56B0D7AFB345C1DD5896', '2016-01-20 01:50:42'),
	(80, 0, '2A5FA3A1B86508404CFB5443361361BABE4159C2', '2016-01-21 01:09:40'),
	(81, 0, 'E13EACCD62F628E24CE94F1E847A00E91CD6F02B', '2016-01-21 04:10:52'),
	(82, 0, '8C75693FE86E30DF8758B9A709A658AC8602FC73', '2016-01-23 01:42:27'),
	(83, 0, '0FCF29957857F06BB2CF4142DD1ACC290EC7F4B3', '2016-01-23 04:07:51'),
	(84, 0, 'C9FBC82141E74B354BEE2EAA2E135B0FBA1836DF', '2016-01-23 11:34:44'),
	(85, 0, 'FB72D2B31244092AD61FFAD811E3DA59D15877D5', '2016-01-24 09:43:06'),
	(86, 0, 'A5550050DCD9600D2A3ED5818BA9EB818B4667A5', '2016-01-24 09:44:29'),
	(87, 0, 'DA03CEEF4F8FFB47B65AC23E98F60BA1D0B4C940', '2016-01-24 09:45:39'),
	(88, 0, '9F89CD017886A63EE56EEC758FCBFCF376EF7E88', '2016-01-24 09:53:40'),
	(89, 0, 'C7433CC3598705CA66E7B2899A67B172CE87D232', '2016-01-24 09:56:23'),
	(90, 0, 'E50674D6CA101BC6C1131C2FA0F9BC14F6A6BBB7', '2016-01-24 09:56:53'),
	(91, 0, '17A2C9C09679A0F7EEEC270FCAC655FD90FED6B1', '2016-01-25 12:58:19'),
	(92, 0, '21C7D4D8CB83E403E4D3E87BC3BEF7AE4FFC3A56', '2016-01-25 02:11:52'),
	(93, 0, '4344B4DBB5F31312C48F134B4801EA6C0512A3D0', '2016-01-25 05:05:45'),
	(94, 0, '68896D9712E821233D75ED1CDBABDDFB3F476E89', '2016-01-25 03:30:37'),
	(95, 0, '88745C833931B23A7CAC577C3A7BB70F28C04F4F', '2016-01-25 07:32:30'),
	(96, 0, '0E5FB1616E1FA5B5AD5E25F9FEEDDCD574A065A8', '2016-01-27 02:47:12'),
	(97, 0, '31EBAEC77ADEDFFE581ADB597AE3261C3126BC77', '2016-01-27 05:22:54'),
	(98, 0, 'C990666276AACCABE63C7258DDD549114E4BC86A', '2016-01-28 02:13:20'),
	(99, 0, 'E55DBE5871CB69103C81B1E4F2ADFD9DE26228A6', '2016-01-30 03:20:21'),
	(100, 0, '1B14DA070CFD36EA3F898A4FB97DABCC37C5AB35', '2016-01-30 04:07:17'),
	(101, 24, '1285EFFBCED0CF0779D3D92F87D10CC3F5A52F32', '2016-01-30 09:46:08'),
	(102, 24, '1073F5D71666672DDB0C40D977DD53E94C654E81', '2016-01-30 09:47:46'),
	(103, 24, '8BC850212FBD83C8229B7BAAFC2DE956BF5147BE', '2016-01-30 09:49:36'),
	(104, 24, 'A09B82F9E082033474EA66DCB609FD0F439DAC74', '2016-01-30 09:55:06'),
	(105, 24, 'BBF6BDBF5430170502A0051F3CEF52FBEFDD65A9', '2016-01-30 09:56:30'),
	(106, 24, '90DA6E1B79E6F3CDC0B7AA4FEE34C95E8BBAD746', '2016-01-30 09:57:28'),
	(107, 24, '0485DEE94B6D0477EF74590602F0217A0F2C248D', '2016-01-30 10:03:27'),
	(108, 0, '816A3C51FE427F292088C331E13C7EF5DA659B41', '2016-01-30 10:07:38'),
	(109, 0, 'E71F72888634BAD2781EFF113158C233EC8CE60B', '2016-01-31 02:28:12'),
	(110, 0, 'A6696AB26EC69A1D34544C6F8781792D5AFEC034', '2016-01-31 02:44:03'),
	(111, 0, '67FA64735678279C41067C2405E78DF7CEBE5BD6', '2016-01-31 02:45:54'),
	(112, 0, '06579DF22F311B7A64B2FBE5E27A0E85FC2ED489', '2016-01-31 02:57:32'),
	(113, 0, '4E860D45A44E2B0FF69A4F54F9858B0569187A0F', '2016-02-02 11:15:46'),
	(114, 0, '54453D96007BD1D6E6E40889624C529D4CC146EF', '2016-02-06 08:45:55'),
	(115, 0, '6790EC47AE0ACA40522AD6191451C09BE9F648E5', '2016-02-06 09:16:23'),
	(116, 24, '229EBE5E70F9B6159BEF12A234DF3E3DCFB925AD', '2016-02-10 12:13:30'),
	(117, 0, '381D606DC7D911F3AD155890562E753403AFC9B8', '2016-02-10 12:37:12'),
	(118, 0, 'EC220C4653BED6F119C425C9DA2ADCF11B69A3B0', '2016-02-11 08:45:07'),
	(119, 0, '4406F68AD6BA90CCA4917C132B8E5EF17C3E174F', '2016-02-11 02:39:42'),
	(120, 0, '74903712ED3CA0D775DD0B1AFFA3ACDFF51AE056', '2016-02-12 05:38:22'),
	(121, 0, '55D64D493A9CD1176FA3ED3E01DE6C7CE3E76978', '2016-02-12 07:15:40'),
	(122, 0, 'CA5DEC9A7A170D81ABE64728739C0FB33AB0435E', '2016-02-14 04:53:44'),
	(123, 0, '3E49D99183925E1A0AFE6BB6A2D2CC720963F466', '2016-02-20 01:39:20'),
	(124, 11, 'A58F79140135216A81344381F551EAB0C8407E51', '2016-02-20 01:40:05'),
	(125, 0, 'B5BE675D1EE74A1D5F0CFF7384E7D9AAD1B00CE4', '2016-02-20 01:40:37'),
	(126, 0, 'B49243A9DB9A89E092F46541C907FC3322CEB9BA', '2016-02-24 04:07:33'),
	(127, 0, '29152491D1CB0EA46FE99E0A9042175CE3FF9AF5', '2016-02-26 03:13:09'),
	(128, 0, '83A29C858BC0A2C4D99B3F486D88C2AF143D99CC', '2016-02-29 12:37:38'),
	(129, 0, '255F624B564ED4656C311D43A2849E5B70085CC5', '2016-03-01 09:51:35'),
	(130, 0, 'DA3EB499260CD1C04D81239B8FA1BFA8C6DB5874', '2016-03-01 09:55:23'),
	(131, 0, '7E2C27E9A69CB1BD8AA111C81C52403B12493BD4', '2016-03-03 02:02:43'),
	(132, 0, '0046F189BA42ED79D8A85B369EE39A4EE3D04368', '2016-03-03 02:07:45'),
	(133, 0, 'E265519D0102754E1397464341FA71AA99E3513C', '2016-03-05 05:16:49'),
	(134, 0, 'E919BC115AB70E904BDCC07D151FE4DCABB7E835', '2016-03-07 12:23:32'),
	(135, 0, '945EDD58F6D16208B0F2A89DA34923247104B6E9', '2016-03-09 11:00:52'),
	(136, 0, '4C857FAE263CF19B7D2A17AF7934F063CEBEDB59', '2016-03-11 12:57:47'),
	(137, 0, 'F2A7467D39C454CAEE6223E80F360EE681197793', '2016-03-11 01:07:50'),
	(138, 0, '62F1A755DD5978A51B667892DC7311C09BA6DF14', '2016-03-12 05:08:39'),
	(139, 0, 'EDF449FE3D4BBEEC2C62446233DC4B09F962E3E8', '2016-03-16 12:54:56'),
	(140, 0, 'E7087A3619CBBDD97E75D8D8C6D27D01B8CF7846', '2016-03-23 12:36:56'),
	(141, 0, '25436457F897A2E3F678EDD886D8A2A660734E7A', '2016-03-24 06:18:15'),
	(142, 0, '1D734A3FF7CBC3C3F870C5D62B9DB92C67E603EA', '2016-03-25 12:13:54'),
	(143, 0, '2D69A0E34FF0481AEBE3CBB18078EB4DD553802A', '2016-03-29 03:36:27'),
	(144, 0, 'ABD1F6130635FDC354D0DA320CC26126F8FDFFA5', '2016-04-03 04:47:27'),
	(145, 0, '42D76667761360C452D47C0DA56656604C44571F', '2016-04-03 08:53:57'),
	(146, 0, '20662E124ED04A541ED6332CE28B345CDA670152', '2016-04-05 09:11:24'),
	(147, 0, 'A7BB773D91708A92CB515D5855EEEA454813368F', '2016-04-06 05:57:53'),
	(148, 0, '02C2A8D8DE2313F700A8F6C38134B9F5165B86D5', '2016-04-10 11:36:28'),
	(149, 0, '97A00BDC8AFF579F81E8484209C9BF7955C89C82', '2016-04-12 02:06:07'),
	(150, 0, '3C7FAE3C5F973D53ED4D53ACE2FC1E8D4D0DE7A5', '2016-04-17 03:41:08'),
	(151, 0, '3C52F15FC4F33494C36B3F1EED34BBDADB96FAA4', '2016-05-05 11:45:47'),
	(152, 0, '27457A5ED3D4A39B78B0150B09CC4CF6B8478401', '2016-05-06 09:39:37'),
	(153, 0, 'B3F0613A3C4BC7D268385A44D70678815EC72340', '2016-05-15 05:52:04'),
	(154, 0, 'A68355FFBECA3E38A5916E393545B2800DF50A9E', '2016-05-15 12:33:28'),
	(155, 0, 'C00AC7D0877CBD64A55269EB81A1DE3D1B5B5E96', '2016-05-16 09:22:08'),
	(156, 0, '884FFB84988358B63FCAD90034A51F59E15A4A30', '2016-05-16 02:20:43'),
	(157, 0, '8E97B1B8506AF0C5D4E46FDC71F3AC273CBB74FA', '2016-05-17 12:20:40'),
	(158, 0, '17D450E5612CA8A2BD21D3D2C1BC7C8C6F1637A1', '2016-05-17 12:58:55'),
	(159, 0, '61B7AD1FB89A04D184770A9DCC67A0572BED8BED', '2016-05-17 01:03:41'),
	(160, 0, '08C9443596A112D2AF19CA85BDE9C260CE269561', '2016-05-19 03:07:06'),
	(161, 0, 'BE3A9062A1B0887ED86CFE528E134B2EA21BEFC2', '2016-05-20 06:32:17'),
	(162, 0, '78E0FA677BDC4C57AF53CDCFE3FCF91E60899735', '2016-05-20 06:53:11'),
	(163, 11, '02A2EED14AD5A79AF2DAC9FB5F2D87100DE26B5C', '2016-05-20 06:54:24'),
	(164, 0, 'AD0A1419F66051F7A60014C27CA8E6D30DE311BC', '2016-05-20 09:58:12'),
	(165, 11, '9A94E666DDF18F277271E6A6ADAA2B422DD3062F', '2016-05-20 10:01:27'),
	(166, 0, 'BCD164BFD0FE50A9414DCF14F4F438E378676840', '2016-05-20 10:01:48'),
	(167, 0, 'A66E07B2C9FE8FD1F1172878D508004CE6CF9D98', '2016-05-20 10:17:12'),
	(168, 0, '9C61ADFE33D99C47994923D9C317D3FA268A12D1', '2016-05-20 11:04:58'),
	(169, 11, '2EEBAE90986F9066FDBF4CA8C9B38F28383FB014', '2016-05-20 01:17:39'),
	(170, 0, '8CD9985C5C78DF07889A0B3B26AA16BFC26DBD7E', '2016-05-20 05:01:06'),
	(171, 0, '6240F9AF42FBFF65C09D9315AC1B27DCA6AB0D5E', '2016-05-20 07:49:15'),
	(172, 0, '9784C3342272FD1738C3A66C25C75D0D2ADCC6CD', '2016-05-22 01:43:39'),
	(173, 0, 'BF12F71A3DE54F0BCA9C680F8EECB8129BA6DB47', '2016-05-23 01:25:41'),
	(174, 0, '4B03D815694B805D746034C1E366A6D03CE7D280', '2016-05-23 09:47:57'),
	(175, 0, '055936FA6FF7461B8B981DD6DC5EA14E02E56A5A', '2016-05-23 09:56:09'),
	(176, 0, '1BE47870E50891307A2BFFE5C1BB77046E93065B', '2016-05-24 11:41:43'),
	(177, 0, 'E56A1C3736B37070E396477312D61994DBBCF52E', '2016-05-24 04:05:23'),
	(178, 0, '196FD1216C4542CE62C52F31883BD96CC082BED9', '2016-05-24 05:05:48'),
	(179, 0, 'F6EB7249B46EA15819DB25BD546B6B01018E5E8E', '2016-05-25 05:36:52'),
	(180, 0, 'C0CF13CCC60A3496647721D359208AC19C536C4D', '2016-12-26 06:11:28'),
	(181, 0, '61830B5B42AFE589F74E13BEE5E65F9F82B56708', '2019-07-22 05:20:14'),
	(182, 0, 'FCC90D6E462141996F77C30CC7CEA2B1B1A1A725', '2019-07-22 07:19:37');
/*!40000 ALTER TABLE `tb_user_login` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_user_logout
DROP TABLE IF EXISTS `tb_user_logout`;
CREATE TABLE IF NOT EXISTS `tb_user_logout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userLoginId` int(11) DEFAULT NULL,
  `logoutOn` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_user_logout: 162 rows
DELETE FROM `tb_user_logout`;
/*!40000 ALTER TABLE `tb_user_logout` DISABLE KEYS */;
INSERT INTO `tb_user_logout` (`id`, `userLoginId`, `logoutOn`) VALUES
	(26, 20, '2015-12-13'),
	(27, 19, '2015-12-13'),
	(28, 21, '2015-12-13'),
	(29, 22, '2015-12-13'),
	(30, 24, '2015-12-14'),
	(31, 25, '2015-12-14'),
	(32, 26, '2015-12-14'),
	(33, 23, '2015-12-14'),
	(34, 28, '2015-12-14'),
	(35, 27, '2015-12-14'),
	(36, 30, '2015-12-16'),
	(37, 31, '2015-12-16'),
	(38, 29, '2015-12-16'),
	(39, 32, '2015-12-16'),
	(40, 33, '2015-12-16'),
	(41, 34, '2015-12-16'),
	(42, 35, '2015-12-16'),
	(43, 36, '2015-12-16'),
	(44, 37, '2015-12-16'),
	(45, 38, '2015-12-17'),
	(46, 39, '2015-12-18'),
	(47, 40, '2015-12-19'),
	(48, 41, '2015-12-19'),
	(49, 42, '2015-12-19'),
	(50, 43, '2015-12-19'),
	(51, 45, '2015-12-19'),
	(52, 44, '2015-12-19'),
	(53, 46, '2015-12-19'),
	(54, 47, '2015-12-19'),
	(55, 48, '2015-12-21'),
	(56, 49, '2015-12-21'),
	(57, 50, '2015-12-21'),
	(58, 51, '2015-12-21'),
	(59, 52, '2015-12-21'),
	(60, 53, '2015-12-21'),
	(61, 54, '2015-12-21'),
	(62, 55, '2015-12-21'),
	(63, 56, '2015-12-21'),
	(64, 57, '2015-12-22'),
	(65, 58, '2015-12-22'),
	(66, 59, '2015-12-24'),
	(67, 60, '2015-12-27'),
	(68, 61, '2015-12-28'),
	(69, 62, '2015-12-28'),
	(70, 63, '2015-12-30'),
	(71, 64, '2015-12-31'),
	(72, 65, '2016-01-03'),
	(73, 66, '2016-01-03'),
	(74, 67, '2016-01-04'),
	(75, 68, '2016-01-04'),
	(76, 69, '2016-01-05'),
	(77, 70, '2016-01-06'),
	(78, 71, '2016-01-12'),
	(79, 72, '2016-01-12'),
	(80, 73, '2016-01-15'),
	(81, 74, '2016-01-15'),
	(82, 75, '2016-01-16'),
	(83, 76, '2016-01-18'),
	(84, 77, '2016-01-18'),
	(85, 78, '2016-01-20'),
	(86, 79, '2016-01-20'),
	(87, 80, '2016-01-21'),
	(88, 81, '2016-01-23'),
	(89, 82, '2016-01-23'),
	(90, 83, '2016-01-23'),
	(91, 84, '2016-01-24'),
	(92, 85, '2016-01-24'),
	(93, 86, '2016-01-24'),
	(94, 87, '2016-01-24'),
	(95, 88, '2016-01-24'),
	(96, 89, '2016-01-24'),
	(97, 90, '2016-01-25'),
	(98, 91, '2016-01-25'),
	(99, 92, '2016-01-25'),
	(100, 93, '2016-01-25'),
	(101, 94, '2016-01-25'),
	(102, 95, '2016-01-27'),
	(103, 96, '2016-01-27'),
	(104, 97, '2016-01-28'),
	(105, 98, '2016-01-30'),
	(106, 99, '2016-01-30'),
	(107, 100, '2016-01-30'),
	(108, 101, '2016-01-30'),
	(109, 102, '2016-01-30'),
	(110, 103, '2016-01-30'),
	(111, 104, '2016-01-30'),
	(112, 105, '2016-01-30'),
	(113, 106, '2016-01-30'),
	(114, 107, '2016-01-30'),
	(115, 108, '2016-01-31'),
	(116, 109, '2016-01-31'),
	(117, 110, '2016-01-31'),
	(118, 111, '2016-01-31'),
	(119, 112, '2016-02-02'),
	(120, 113, '2016-02-06'),
	(121, 114, '2016-02-06'),
	(122, 115, '2016-02-10'),
	(123, 116, '2016-02-10'),
	(124, 117, '2016-02-11'),
	(125, 118, '2016-02-11'),
	(126, 119, '2016-02-12'),
	(127, 120, '2016-02-12'),
	(128, 121, '2016-02-14'),
	(129, 122, '2016-02-20'),
	(130, 123, '2016-02-20'),
	(131, 124, '2016-02-20'),
	(132, 125, '2016-02-24'),
	(133, 126, '2016-02-26'),
	(134, 127, '2016-02-29'),
	(135, 128, '2016-03-01'),
	(136, 129, '2016-03-01'),
	(137, 130, '2016-03-03'),
	(138, 131, '2016-03-03'),
	(139, 132, '2016-03-05'),
	(140, 133, '2016-03-07'),
	(141, 134, '2016-03-09'),
	(142, 135, '2016-03-11'),
	(143, 136, '2016-03-11'),
	(144, 137, '2016-03-12'),
	(145, 138, '2016-03-16'),
	(146, 139, '2016-03-23'),
	(147, 140, '2016-03-24'),
	(148, 141, '2016-03-25'),
	(149, 142, '2016-03-29'),
	(150, 143, '2016-04-03'),
	(151, 144, '2016-04-03'),
	(152, 145, '2016-04-05'),
	(153, 146, '2016-04-06'),
	(154, 147, '2016-04-10'),
	(155, 148, '2016-04-12'),
	(156, 149, '2016-04-17'),
	(157, 150, '2016-05-05'),
	(158, 151, '2016-05-05'),
	(159, 152, '2016-05-15'),
	(160, 153, '2016-05-15'),
	(161, 154, '2016-05-15'),
	(162, 155, '2016-05-16'),
	(163, 156, '2016-05-17'),
	(164, 157, '2016-05-17'),
	(165, 158, '2016-05-17'),
	(166, 159, '2016-05-19'),
	(167, 160, '2016-05-20'),
	(168, 161, '2016-05-20'),
	(169, 162, '2016-05-20'),
	(170, 163, '2016-05-20'),
	(171, 164, '2016-05-20'),
	(172, 165, '2016-05-20'),
	(173, 166, '2016-05-20'),
	(174, 167, '2016-05-20'),
	(175, 168, '2016-05-20'),
	(176, 170, '2016-05-20'),
	(177, 171, '2016-05-22'),
	(178, 172, '2016-05-23'),
	(179, 173, '2016-05-23'),
	(180, 174, '2016-05-23'),
	(181, 175, '2016-05-24'),
	(182, 176, '2016-05-24'),
	(183, 177, '2016-05-24'),
	(184, 178, '2016-05-25'),
	(185, 179, '2016-12-26'),
	(186, 180, '2019-07-22'),
	(187, 181, '2019-07-22');
/*!40000 ALTER TABLE `tb_user_logout` ENABLE KEYS */;

-- Dumping structure for table db_dafearsoft.tb_user_privileges
DROP TABLE IF EXISTS `tb_user_privileges`;
CREATE TABLE IF NOT EXISTS `tb_user_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privileges` varchar(50) DEFAULT NULL,
  `menuAccess` text,
  `panelAccess` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table db_dafearsoft.tb_user_privileges: 2 rows
DELETE FROM `tb_user_privileges`;
/*!40000 ALTER TABLE `tb_user_privileges` DISABLE KEYS */;
INSERT INTO `tb_user_privileges` (`id`, `privileges`, `menuAccess`, `panelAccess`) VALUES
	(7, 'Supervisor', 'Dashboard,Inbox,GuestBook,Subscriber,Comments,Contents,MenuManagement,Pages,Banner,HeaderFooter,Gallery,Product,ContactProfile,SEO', 'MyAccount,PreviewWebsite'),
	(6, 'Administrator', 'Dashboard,Inbox,GuestBook,Subscriber,Comments,Posts,Blog,News,Contents,MenuManagement,Pages,Banner,HeaderFooter,Gallery,Product,SEO,Project,Portfolio,Services,Faq,AboutUs,ContactProfile', 'Regional,Branches,Users,MyAccount,PreviewWebsite');
/*!40000 ALTER TABLE `tb_user_privileges` ENABLE KEYS */;

-- Dumping structure for view db_dafearsoft.vi_all_ordered_pages
DROP VIEW IF EXISTS `vi_all_ordered_pages`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_all_ordered_pages` (
	`id` VARCHAR(14) NOT NULL COLLATE 'utf8mb4_general_ci',
	`position` VARCHAR(14) NULL COLLATE 'utf8mb4_general_ci',
	`title` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_all_pages
DROP VIEW IF EXISTS `vi_all_pages`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_all_pages` (
	`id` VARCHAR(14) NOT NULL COLLATE 'utf8mb4_general_ci',
	`position` VARCHAR(14) NULL COLLATE 'utf8mb4_general_ci',
	`title` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_banner
DROP VIEW IF EXISTS `vi_banner`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_banner` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`banner` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`showReadMoreLinkId` INT(11) NULL,
	`showReadMoreLink` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkBehaviorId` INT(11) NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pagesId` INT(11) NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`openUrlOnNewTabId` INT(11) NULL,
	`openURLOnNewTab` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_blog
DROP VIEW IF EXISTS `vi_blog`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_blog` (
	`id` INT(11) NOT NULL,
	`blogCategoryId` INT(11) NOT NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mediaTypeId` INT(11) NULL,
	`mediaType` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`contentLayoutId` INT(11) NULL,
	`contentLayout` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`videoEmbed` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`postedOn` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`_postedOn` DATETIME NULL,
	`readCount` BIGINT(21) NULL
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_blog_category
DROP VIEW IF EXISTS `vi_blog_category`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_blog_category` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_branch
DROP VIEW IF EXISTS `vi_branch`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_branch` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`branchName` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`_branchName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`regionalId` INT(11) NULL,
	`regional` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`districtCityId` INT(11) NULL,
	`districtCity` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`address` TEXT NULL COLLATE 'utf8_general_ci',
	`latitude` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`longitude` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`phoneNumber` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`faxNumber` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`facebookPage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`twitterPage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mainBranchId` INT(11) NULL,
	`mainBranch` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_comments
DROP VIEW IF EXISTS `vi_comments`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_comments` (
	`id` INT(11) NOT NULL,
	`author` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`comment` TEXT NULL COLLATE 'utf8_general_ci',
	`commentsAtId` INT(11) NULL,
	`commentsAt` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`postsId` INT(11) NULL,
	`inResponseTo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`postedOn` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`_postedOn` DATETIME NULL,
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_contents
DROP VIEW IF EXISTS `vi_contents`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_contents` (
	`pagesId` BIGINT(20) NULL,
	`categoryId` BIGINT(20) NULL,
	`id` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` MEDIUMTEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` MEDIUMTEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` BIGINT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_district_city
DROP VIEW IF EXISTS `vi_district_city`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_district_city` (
	`id` INT(11) NOT NULL,
	`regionalId` INT(11) NULL,
	`regional` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`districtCity` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_download
DROP VIEW IF EXISTS `vi_download`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_download` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_download_file
DROP VIEW IF EXISTS `vi_download_file`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_download_file` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`downloadId` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`file` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NOT NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_events
DROP VIEW IF EXISTS `vi_events`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_events` (
	`id` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`location` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`location_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`location_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`latitude` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`longitude` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`eventsDate` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`_eventsDate` DATE NULL,
	`eventsTime` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_faq
DROP VIEW IF EXISTS `vi_faq`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_faq` (
	`id` INT(11) NOT NULL,
	`question` TEXT NULL COLLATE 'utf8_general_ci',
	`question_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`question_el` TEXT NULL COLLATE 'utf8_general_ci',
	`answer` TEXT NULL COLLATE 'utf8_general_ci',
	`answer_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`answer_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`postedOn` VARCHAR(19) NULL COLLATE 'utf8mb4_general_ci',
	`_postedOn` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_faq_brief_overview
DROP VIEW IF EXISTS `vi_faq_brief_overview`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_faq_brief_overview` (
	`id` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mediaTypeId` INT(11) NULL,
	`mediaType` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`contentLayoutId` INT(11) NULL,
	`contentLayout` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`videoEmbed` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_foot_links
DROP VIEW IF EXISTS `vi_foot_links`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_foot_links` (
	`id` INT(11) NOT NULL,
	`footContentId` INT(11) NULL,
	`linkCaption` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkCaption_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkCaption_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkBehaviorId` INT(11) NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pagesId` INT(11) NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`openUrlOnNewTabId` INT(11) NULL,
	`openURLOnNewTab` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`destination` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_guest_book
DROP VIEW IF EXISTS `vi_guest_book`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_guest_book` (
	`id` INT(11) NOT NULL,
	`name` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`subject` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`message` TEXT NULL COLLATE 'utf8_general_ci',
	`postedOn` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_head_links
DROP VIEW IF EXISTS `vi_head_links`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_head_links` (
	`id` INT(11) NOT NULL,
	`headContentId` INT(11) NULL,
	`linkCaption` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkCaption_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkCaption_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`linkBehaviorId` INT(11) NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pagesId` INT(11) NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`openUrlOnNewTabId` INT(11) NULL,
	`openURLOnNewTab` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`destination` VARCHAR(255) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_language
DROP VIEW IF EXISTS `vi_language`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_language` (
	`id` INT(11) NOT NULL,
	`primaryCode` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`primaryLanguage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`primaryFlag` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`secondaryCode` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`secondaryLanguage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`secondaryFlag` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`secondaryEnabledId` INT(11) NULL,
	`secondaryEnabled` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`extendedCode` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`extendedLanguage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`extendedFlag` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`extendedEnabledId` INT(11) NULL,
	`extendedEnabled` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_link_behavior
DROP VIEW IF EXISTS `vi_link_behavior`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_link_behavior` (
	`id` INT(11) NOT NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_menu
DROP VIEW IF EXISTS `vi_menu`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_menu` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`menuCaption` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`menuCaption_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`menuCaption_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`menuBehaviorId` INT(11) NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pagesId` INT(11) NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`page_sl` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`page_el` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` TEXT NULL COLLATE 'utf8_general_ci',
	`openUrlOnNewTabId` INT(11) NULL,
	`openURLOnNewTab` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_news
DROP VIEW IF EXISTS `vi_news`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_news` (
	`id` INT(11) NOT NULL,
	`newsCategoryId` INT(11) NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`author_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mediaTypeId` INT(11) NULL,
	`mediaType` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`contentLayoutId` INT(11) NULL,
	`contentLayout` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`videoEmbed` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`headlineId` INT(11) NULL,
	`headline` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`postedOn` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`_postedOn` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_news_category
DROP VIEW IF EXISTS `vi_news_category`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_news_category` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_other_banner
DROP VIEW IF EXISTS `vi_other_banner`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_other_banner` (
	`id` INT(11) NOT NULL,
	`pagesId` INT(11) NOT NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`banner` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_pages
DROP VIEW IF EXISTS `vi_pages`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_pages` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mediaTypeId` INT(11) NULL,
	`mediaType` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`contentLayoutId` INT(11) NULL,
	`contentLayout` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`videoEmbed` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_photo
DROP VIEW IF EXISTS `vi_photo`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_photo` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`photoCategoryId` INT(11) NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`coverPhoto` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`photos` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_photo_category
DROP VIEW IF EXISTS `vi_photo_category`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_photo_category` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_portfolio
DROP VIEW IF EXISTS `vi_portfolio`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_portfolio` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`productName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`productName_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`productName_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`showViewDemoId` INT(11) NULL,
	`showViewDemo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`viewDemoUrl` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`showVisitPageId` INT(11) NULL,
	`showVisitPage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`visitPageUrl` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_product
DROP VIEW IF EXISTS `vi_product`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_product` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`productCategoryId` INT(11) NOT NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`productName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`productName_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`productName_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`coverImage` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_el` TEXT NULL COLLATE 'utf8_general_ci',
	`showPriceId` INT(11) NOT NULL,
	`showPrice` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`price` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`price_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`showWebsiteDemoId` INT(11) NOT NULL,
	`showWebsiteDemo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`websiteDemoUrl` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`showDashboardDemoId` INT(11) NOT NULL,
	`showDashboardDemo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`dashboardDemoUrl` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`showApplicationDemoId` INT(11) NOT NULL,
	`showApplicationDemo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`applicationDemoUrl` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`showDownloadId` INT(11) NOT NULL,
	`showDownload` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`productFile` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`images` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_product_category
DROP VIEW IF EXISTS `vi_product_category`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_product_category` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`category` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`category_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_project
DROP VIEW IF EXISTS `vi_project`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_project` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`clientName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_project_products
DROP VIEW IF EXISTS `vi_project_products`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_project_products` (
	`id` INT(11) NOT NULL,
	`projectId` INT(11) NOT NULL,
	`productName` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`productName_sl` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`productName_el` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`yearFrom` INT(11) NULL,
	`yearTo` INT(11) NULL,
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_seo
DROP VIEW IF EXISTS `vi_seo`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_seo` (
	`id` INT(11) NOT NULL,
	`pagesId` INT(11) NOT NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`keywords` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_services
DROP VIEW IF EXISTS `vi_services`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_services` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_services_brief_overview
DROP VIEW IF EXISTS `vi_services_brief_overview`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_services_brief_overview` (
	`id` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mediaTypeId` INT(11) NULL,
	`mediaType` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`contentLayoutId` INT(11) NULL,
	`contentLayout` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`videoEmbed` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_subscriber
DROP VIEW IF EXISTS `vi_subscriber`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_subscriber` (
	`id` INT(11) NOT NULL,
	`email` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`postedOn` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_sub_menu
DROP VIEW IF EXISTS `vi_sub_menu`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_sub_menu` (
	`id` INT(11) NOT NULL,
	`menuId` INT(11) NULL,
	`menuCaption` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`subMenuCaption` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`subMenuCaption_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`subMenuCaption_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`subMenuBehaviorId` INT(11) NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pagesId` INT(11) NULL,
	`page` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`page_sl` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`page_el` VARCHAR(66) NULL COLLATE 'utf8_general_ci',
	`uri` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` TEXT NULL COLLATE 'utf8_general_ci',
	`openUrlOnNewTabId` INT(11) NULL,
	`openUrlOnNewTab` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`destination` MEDIUMTEXT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_sub_menu_behavior
DROP VIEW IF EXISTS `vi_sub_menu_behavior`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_sub_menu_behavior` (
	`id` INT(11) NOT NULL,
	`behavior` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_sub_pages
DROP VIEW IF EXISTS `vi_sub_pages`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_sub_pages` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`pagesId` INT(11) NULL,
	`pages` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pages_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pages_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_sl` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`title_el` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`mediaTypeId` INT(11) NULL,
	`mediaType` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`contentLayoutId` INT(11) NULL,
	`contentLayout` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`image` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`videoEmbed` TEXT NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`description_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`description_el` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_sl` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription_el` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_team_profile
DROP VIEW IF EXISTS `vi_team_profile`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_team_profile` (
	`id` INT(11) NOT NULL,
	`position` INT(11) NULL,
	`name` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`profession` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`photo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`skypeId` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pinBb` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`phoneNumber` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`showDownloadCvId` INT(11) NULL,
	`showDownloadCv` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`cvFile` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_team_profile_skills
DROP VIEW IF EXISTS `vi_team_profile_skills`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_team_profile_skills` (
	`id` INT(11) NOT NULL,
	`teamProfileId` INT(11) NULL,
	`skill` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`percentage` VARCHAR(12) NULL COLLATE 'utf8mb4_general_ci',
	`_percentage` INT(11) NULL,
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_team_profile_social_media
DROP VIEW IF EXISTS `vi_team_profile_social_media`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_team_profile_social_media` (
	`id` INT(11) NOT NULL,
	`teamProfileId` INT(11) NULL,
	`socialMediaId` INT(11) NULL,
	`socialMedia` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`websiteIcon` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`websiteColor` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`url` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_upcoming_events
DROP VIEW IF EXISTS `vi_upcoming_events`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_upcoming_events` (
	`id` INT(11) NOT NULL,
	`title` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`location` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`latitude` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`longitude` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`eventsDate` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`_eventsDate` DATE NULL,
	`eventsTime` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`description` TEXT NULL COLLATE 'utf8_general_ci',
	`moreDescription` TEXT NULL COLLATE 'utf8_general_ci',
	`publishStatusId` INT(11) NULL,
	`publishStatus` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_user
DROP VIEW IF EXISTS `vi_user`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_user` (
	`id` INT(11) NOT NULL,
	`name` VARCHAR(101) NULL COLLATE 'utf8_general_ci',
	`firstName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`lastName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`photo` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`password` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`salt` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`privilegesId` INT(11) NULL,
	`privileges` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`menuAccess` TEXT NULL COLLATE 'utf8_general_ci',
	`panelAccess` TEXT NULL COLLATE 'utf8_general_ci',
	`genderId` INT(11) NULL,
	`gender` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`dateOfBirth` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`_dateOfBirth` DATE NULL,
	`mobileNumber` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`regionalId` INT(11) NULL,
	`regional` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`districtCityId` INT(11) NULL,
	`districtCity` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`branchId` INT(11) NULL,
	`branchName` VARCHAR(64) NULL COLLATE 'utf8_general_ci',
	`_branchName` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`address` TEXT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_user_log
DROP VIEW IF EXISTS `vi_user_log`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_user_log` (
	`id` INT(11) NOT NULL,
	`userLoginId` INT(11) NOT NULL,
	`userId` INT(11) NULL,
	`name` VARCHAR(101) NULL COLLATE 'utf8_general_ci',
	`auth` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`loginOn` VARCHAR(19) NULL COLLATE 'utf8mb4_general_ci',
	`_loginOn` DATETIME NULL,
	`logoutOn` VARCHAR(19) NULL COLLATE 'utf8mb4_general_ci',
	`_logoutOn` DATE NULL,
	`stillInsideId` INT(1) NOT NULL,
	`stillInside` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_user_login
DROP VIEW IF EXISTS `vi_user_login`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_user_login` (
	`id` INT(11) NOT NULL,
	`userId` INT(11) NULL,
	`name` VARCHAR(101) NULL COLLATE 'utf8_general_ci',
	`auth` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`loginOn` VARCHAR(19) NULL COLLATE 'utf8mb4_general_ci',
	`_loginOn` DATETIME NULL
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_user_logout
DROP VIEW IF EXISTS `vi_user_logout`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vi_user_logout` (
	`id` INT(11) NOT NULL,
	`userLoginId` INT(11) NULL,
	`logoutOn` VARCHAR(19) NULL COLLATE 'utf8mb4_general_ci',
	`_logoutOn` DATE NULL
) ENGINE=MyISAM;

-- Dumping structure for view db_dafearsoft.vi_all_ordered_pages
DROP VIEW IF EXISTS `vi_all_ordered_pages`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_all_ordered_pages`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_all_ordered_pages` AS select * from vi_all_pages order by position ;

-- Dumping structure for view db_dafearsoft.vi_all_pages
DROP VIEW IF EXISTS `vi_all_pages`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_all_pages`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_all_pages` AS select
	9990 as id,
	0 as position,
	'Home' as title,
	'Home' as title_sl,
	'Home' as title_el,
	'' as uri

union

select
	tb_pages.id,
	tb_pages.position as position,
	concat(tb_pages.title, ' (Regular Pages)'),
	concat(tb_pages.title_sl, ' (Regular Pages)'),
	concat(tb_pages.title_el, ' (Regular Pages)'),
	concat('page/', tb_pages.id) as uri

from tb_pages

union

select
	concat(999, tb_system_pages.id) as id,
	concat(999, tb_system_pages.id) as position,
	concat(tb_system_pages.title, ' (System Pages)'),
	concat(tb_system_pages.title_sl, ' (System Pages)'),
	concat(tb_system_pages.title_el, ' (System Pages)'),
	tb_system_pages.uri

from tb_system_pages ;

-- Dumping structure for view db_dafearsoft.vi_banner
DROP VIEW IF EXISTS `vi_banner`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_banner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_banner` AS select
	tb_banner.id,
	tb_banner.position,

	tb_banner.title,
	tb_banner.title_sl,
	tb_banner.title_el,

	tb_banner.banner,

	tb_banner.description,
	tb_banner.description_sl,
	tb_banner.description_el,

	tb_banner.showReadMoreLinkId,
	vi_show_read_more_link.decision as showReadMoreLink,

	tb_banner.linkBehaviorId,
	vi_link_behavior.behavior,

	tb_banner.pagesId,
	vi_all_pages.title as page,
	vi_all_pages.uri,

	tb_banner.url,
	tb_banner.openUrlOnNewTabId,
	tb_decision.decision as openURLOnNewTab,

	tb_banner.publishStatusId,
	tb_publish_status.publishStatus

from tb_banner

	left join tb_decision as vi_show_read_more_link
	on tb_banner.showReadMoreLinkId = vi_show_read_more_link.id

	left join vi_link_behavior
	on tb_banner.linkBehaviorId = vi_link_behavior.id

	left join vi_all_pages
	on tb_banner.pagesId = vi_all_pages.id

	left join tb_decision
	on tb_banner.openUrlOnNewTabId= tb_decision.id

	left join tb_publish_status
	on tb_banner.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_blog
DROP VIEW IF EXISTS `vi_blog`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_blog`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_blog` AS select
	tb_blog.id,

	tb_blog.blogCategoryId,
	tb_blog_category.category,
	tb_blog_category.category_sl,
	tb_blog_category.category_el,

	tb_blog.author,
	tb_blog.author_sl,
	tb_blog.author_el,

	tb_blog.title,
	tb_blog.title_sl,
	tb_blog.title_el,

	tb_blog.mediaTypeId,
	tb_media_type.mediaType,
	tb_blog.contentLayoutId,
	tb_content_layout.contentLayout,
	tb_blog.image,
	tb_blog.videoEmbed,

	tb_blog.description,
	tb_blog.description_sl,
	tb_blog.description_el,

	tb_blog.moreDescription,
	tb_blog.moreDescription_sl,
	tb_blog.moreDescription_el,

	tb_blog.publishStatusId,
	tb_publish_status.publishStatus,

	date_format(tb_blog.postedOn, '%d/%m/%Y') as postedOn,
	tb_blog.postedOn as _postedOn,

	(select count(id) from tb_blog_read_count where blogId = tb_blog.id) as readCount

from tb_blog

	left join tb_blog_category
	on tb_blog.blogCategoryId = tb_blog_category.id

	left join tb_media_type
	on tb_blog.mediaTypeId = tb_media_type.id

	left join tb_content_layout
	on tb_blog.contentLayoutId = tb_content_layout.id

	left join tb_publish_status
	on tb_blog.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_blog_category
DROP VIEW IF EXISTS `vi_blog_category`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_blog_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_blog_category` AS select
	tb_blog_category.id,
	tb_blog_category.position,
	tb_blog_category.category,
	tb_blog_category.category_sl,
	tb_blog_category.category_el,
	tb_blog_category.publishStatusId,
	tb_publish_status.publishStatus

from tb_blog_category

	left join tb_publish_status
	on tb_blog_category.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_branch
DROP VIEW IF EXISTS `vi_branch`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_branch`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_branch` AS select
	tb_branch.id,
	tb_branch.position,

	if(tb_branch.mainBranchId = 1, concat(tb_branch.branchName,' (Main Branch)'), tb_branch.branchName) as branchName,
	tb_branch.branchName as _branchName,

	vi_district_city.regionalId,
	vi_district_city.regional,
	tb_branch.districtCityId,
	vi_district_city.districtCity,

	tb_branch.address,
	tb_branch.latitude,
	tb_branch.longitude,
	tb_branch.phoneNumber,
	tb_branch.faxNumber,
	tb_branch.email,
	tb_branch.facebookPage,
	tb_branch.twitterPage,

	tb_branch.mainBranchId,
	tb_decision.decision as mainBranch

from tb_branch

	left join vi_district_city
	on tb_branch.districtCityId = vi_district_city.id

	left join tb_decision
	on tb_branch.mainBranchId = tb_decision.id ;

-- Dumping structure for view db_dafearsoft.vi_comments
DROP VIEW IF EXISTS `vi_comments`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_comments`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_comments` AS select
	tb_comments.id,
	tb_comments.author,
	tb_comments.email,
	tb_comments.url,

	tb_comments.`comment`,

	tb_comments.commentsAtId,
	tb_comments_at.commentsAt,

	tb_comments.postsId,
	if(tb_comments.commentsAtId = 1,
	(select title from tb_blog where id = tb_comments.postsId),
	if(tb_comments.commentsAtId = 2,
	(select title from tb_news where id = tb_comments.postsId),
	(select title from tb_events where id = tb_comments.postsId)
	)) as inResponseTo,

	date_format(tb_comments.postedOn, '%d/%m/%Y') as postedOn,
	tb_comments.postedOn as _postedOn,

	tb_comments.publishStatusId,
	tb_publish_status.publishStatus

from tb_comments

	left join tb_comments_at
	on tb_comments.commentsAtId = tb_comments_at.id

	left join tb_publish_status
	on tb_comments.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_contents
DROP VIEW IF EXISTS `vi_contents`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_contents`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_contents` AS select
	0 as pagesId,
	0 as categoryId,
	id,
	title,
	title_sl,
	description,
	description_sl,
	2 as publishStatusId
from tb_pages

union

select
	pagesId,
	pagesId as categoryId,
	id,
	title,
	title_sl,
	description,
	description_sl,
	publishStatusId
from tb_sub_pages

union

select
	9991 as pagesId,
	blogCategoryId as categoryId,
	id,
	title,
	title_sl,
	description,
	description_sl,
	publishStatusId
from tb_blog

union

select
	9992 as pagesId,
	newsCategoryId as categoryId,
	id,
	title,
	title_sl,
	description,
	description_sl,
	publishStatusId
from tb_news

union

select
	9993 as pagesId,
	0 as categoryId,
	id,
	title,
	title_sl,
	description,
	description_sl,
	publishStatusId
from tb_events ;

-- Dumping structure for view db_dafearsoft.vi_district_city
DROP VIEW IF EXISTS `vi_district_city`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_district_city`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_district_city` AS select
	tb_district_city.id,
	tb_district_city.regionalId,
	tb_regional.regional,
	tb_district_city.districtCity

from tb_district_city

	left join tb_regional
	on tb_district_city.regionalId = tb_regional.id ;

-- Dumping structure for view db_dafearsoft.vi_download
DROP VIEW IF EXISTS `vi_download`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_download`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_download` AS select
	tb_download.id,
	tb_download.position,
	tb_download.title,
	tb_download.title_sl,
	tb_download.title_el,
	tb_download.description,
	tb_download.description_sl,
	tb_download.description_el,
	tb_download.publishStatusId,
	tb_publish_status.publishStatus
	
from tb_download

	left join tb_publish_status
	on tb_download.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_download_file
DROP VIEW IF EXISTS `vi_download_file`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_download_file`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_download_file` AS select
	tb_download_file.id,
	
	tb_download_file.position,
	tb_download_file.downloadId,
	tb_download_file.title,
	tb_download_file.title_sl,
	tb_download_file.title_el,
	tb_download_file.`file`,
	tb_download_file.publishStatusId,
	tb_publish_status.publishStatus
	
from tb_download_file

	left join tb_download
	on tb_download_file.downloadId = tb_download.id

	left join tb_publish_status
	on tb_download_file.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_events
DROP VIEW IF EXISTS `vi_events`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_events`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_events` AS select
	tb_events.id,

	tb_events.title,
	tb_events.title_sl,
	tb_events.title_el,

	tb_events.location,
	tb_events.location_sl,
	tb_events.location_el,

	tb_events.latitude,
	tb_events.longitude,

	date_format(tb_events.eventsDate, '%d/%m/%Y') as eventsDate,
	tb_events.eventsDate as _eventsDate,
	tb_events.eventsTime,

	tb_events.description,
	tb_events.description_sl,
	tb_events.description_el,

	tb_events.moreDescription,
	tb_events.moreDescription_sl,
	tb_events.moreDescription_el,

	tb_events.publishStatusId,
	tb_publish_status.publishStatus

from tb_events

	left join tb_publish_status
	on tb_events.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_faq
DROP VIEW IF EXISTS `vi_faq`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_faq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_faq` AS select
	tb_faq.id,

	tb_faq.question,
	tb_faq.question_sl,
	tb_faq.question_el,

	tb_faq.answer,
	tb_faq.answer_sl,
	tb_faq.answer_el,

	tb_faq.publishStatusId,
	tb_publish_status.publishStatus,

	date_format(tb_faq.postedOn, '%d/%m/%Y %h:%i:%s') as postedOn,
	tb_faq.postedOn as _postedOn

from tb_faq

	left join tb_publish_status
	on tb_faq.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_faq_brief_overview
DROP VIEW IF EXISTS `vi_faq_brief_overview`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_faq_brief_overview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_faq_brief_overview` AS select
	tb_faq_brief_overview.id,

	tb_faq_brief_overview.title,
	tb_faq_brief_overview.title_sl,
	tb_faq_brief_overview.title_el,

	tb_faq_brief_overview.mediaTypeId,
	tb_media_type.mediaType,

	tb_faq_brief_overview.contentLayoutId,
	tb_content_layout.contentLayout,

	tb_faq_brief_overview.image,
	tb_faq_brief_overview.videoEmbed,

	tb_faq_brief_overview.description,
	tb_faq_brief_overview.description_sl,
	tb_faq_brief_overview.description_el,

	tb_faq_brief_overview.publishStatusId,
	tb_publish_status.publishStatus

from tb_faq_brief_overview

	left join tb_media_type
	on tb_faq_brief_overview.mediaTypeId = tb_media_type.id

	left join tb_content_layout
	on tb_faq_brief_overview.contentLayoutId = tb_content_layout.id

	left join tb_publish_status
	on tb_faq_brief_overview.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_foot_links
DROP VIEW IF EXISTS `vi_foot_links`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_foot_links`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_foot_links` AS select
	tb_foot_links.id,
	tb_foot_links.footContentId,
	tb_foot_links.linkCaption,
	tb_foot_links.linkCaption_sl,
	tb_foot_links.linkCaption_el,

	tb_foot_links.linkBehaviorId,
	vi_link_behavior.behavior,

	tb_foot_links.pagesId,
	vi_all_pages.title as page,
	vi_all_pages.uri,

	tb_foot_links.url,
	tb_foot_links.openUrlOnNewTabId,
	tb_decision.decision as openURLOnNewTab,

	if (tb_foot_links.linkBehaviorId = 1, vi_all_pages.title, tb_foot_links.url) as destination

from tb_foot_links

	left join vi_link_behavior
	on tb_foot_links.linkBehaviorId = vi_link_behavior.id

	left join vi_all_pages
	on tb_foot_links.pagesId = vi_all_pages.id

	left join tb_decision
	on tb_foot_links.openUrlOnNewTabId= tb_decision.id ;

-- Dumping structure for view db_dafearsoft.vi_guest_book
DROP VIEW IF EXISTS `vi_guest_book`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_guest_book`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_guest_book` AS select
	tb_guest_book.id,
	tb_guest_book.name,
	tb_guest_book.email,
	tb_guest_book.subject,
	tb_guest_book.message,
	date_format(tb_guest_book.postedOn, '%d/%m/%Y') as postedOn

from tb_guest_book ;

-- Dumping structure for view db_dafearsoft.vi_head_links
DROP VIEW IF EXISTS `vi_head_links`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_head_links`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_head_links` AS select
	tb_head_links.id,
	tb_head_links.headContentId,
	tb_head_links.linkCaption,
	tb_head_links.linkCaption_sl,
	tb_head_links.linkCaption_el,

	tb_head_links.linkBehaviorId,
	vi_link_behavior.behavior,

	tb_head_links.pagesId,
	vi_all_pages.title as page,
	vi_all_pages.uri,

	tb_head_links.url,
	tb_head_links.openUrlOnNewTabId,
	tb_decision.decision as openURLOnNewTab,

	if (tb_head_links.linkBehaviorId = 1, vi_all_pages.title, tb_head_links.url) as destination

from tb_head_links

	left join vi_link_behavior
	on tb_head_links.linkBehaviorId = vi_link_behavior.id

	left join vi_all_pages
	on tb_head_links.pagesId = vi_all_pages.id

	left join tb_decision
	on tb_head_links.openUrlOnNewTabId= tb_decision.id ;

-- Dumping structure for view db_dafearsoft.vi_language
DROP VIEW IF EXISTS `vi_language`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_language`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_language` AS select
	tb_language.id,
	tb_language.primaryCode,
	tb_language.primaryLanguage,
	tb_language.primaryFlag,
	tb_language.secondaryCode,
	tb_language.secondaryLanguage,
	tb_language.secondaryFlag,
	tb_language.secondaryEnabledId,
	vi_secondary_enabled.enabled as secondaryEnabled,
	tb_language.extendedCode,
	tb_language.extendedLanguage,
	tb_language.extendedFlag,
	tb_language.extendedEnabledId,
	vi_extended_enabled.enabled as extendedEnabled

from tb_language

	left join tb_enabled as vi_secondary_enabled
	on tb_language.secondaryEnabledId = vi_secondary_enabled.id

	left join tb_enabled as vi_extended_enabled
	on tb_language.extendedEnabledId = vi_extended_enabled.id ;

-- Dumping structure for view db_dafearsoft.vi_link_behavior
DROP VIEW IF EXISTS `vi_link_behavior`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_link_behavior`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_link_behavior` AS select * from tb_menu_behavior where id <> 3 ;

-- Dumping structure for view db_dafearsoft.vi_menu
DROP VIEW IF EXISTS `vi_menu`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_menu` AS select
	tb_menu.id,
	tb_menu.position,

	tb_menu.menuCaption,
	tb_menu.menuCaption_sl,
	tb_menu.menuCaption_el,

	tb_menu.menuBehaviorId,
	tb_menu_behavior.behavior,

	tb_menu.pagesId,
	vi_all_pages.title as page,
	vi_all_pages.title_sl as page_sl,
	vi_all_pages.title_el as page_el,
	vi_all_pages.uri,

	tb_menu.url,
	tb_menu.openUrlOnNewTabId,
	tb_decision.decision as openURLOnNewTab,

	tb_menu.publishStatusId,
	tb_publish_status.publishStatus

from tb_menu

	left join tb_menu_behavior
	on tb_menu.menuBehaviorId = tb_menu_behavior.id

	left join vi_all_pages
	on tb_menu.pagesId = vi_all_pages.id

	left join tb_decision
	on tb_menu.openUrlOnNewTabId = tb_decision.id

	left join tb_publish_status
	on tb_menu.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_news
DROP VIEW IF EXISTS `vi_news`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_news`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_news` AS select
	tb_news.id,

	tb_news.newsCategoryId,
	tb_news_category.category,
	tb_news_category.category_sl,
	tb_news_category.category_el,

	tb_news.author,
	tb_news.author_sl,
	tb_news.author_el,

	tb_news.title,
	tb_news.title_sl,
	tb_news.title_el,

	tb_news.mediaTypeId,
	tb_media_type.mediaType,
	tb_news.contentLayoutId,
	tb_content_layout.contentLayout,
	tb_news.image,
	tb_news.videoEmbed,

	tb_news.description,
	tb_news.description_sl,
	tb_news.description_el,

	tb_news.moreDescription,
	tb_news.moreDescription_sl,
	tb_news.moreDescription_el,

	tb_news.publishStatusId,
	tb_publish_status.publishStatus,

	tb_news.headlineId,
	tb_decision.decision as headline,

	date_format(tb_news.postedOn, '%d/%m/%Y') as postedOn,
	tb_news.postedOn as _postedOn

from tb_news

	left join tb_news_category
	on tb_news.newsCategoryId = tb_news_category.id

	left join tb_media_type
	on tb_news.mediaTypeId = tb_media_type.id

	left join tb_content_layout
	on tb_news.contentLayoutId = tb_content_layout.id

	left join tb_publish_status
	on tb_news.publishStatusId = tb_publish_status.id

	left join tb_decision
	on tb_news.headlineId = tb_decision.id ;

-- Dumping structure for view db_dafearsoft.vi_news_category
DROP VIEW IF EXISTS `vi_news_category`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_news_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_news_category` AS select
	tb_news_category.id,
	tb_news_category.position,
	tb_news_category.category,
	tb_news_category.category_sl,
	tb_news_category.category_el,
	tb_news_category.publishStatusId,
	tb_publish_status.publishStatus

from tb_news_category

	left join tb_publish_status
	on tb_news_category.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_other_banner
DROP VIEW IF EXISTS `vi_other_banner`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_other_banner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_other_banner` AS select
	tb_other_banner.id,
	tb_other_banner.pagesId,
	vi_all_pages.title as page,

	tb_other_banner.title,
	tb_other_banner.title_sl,
	tb_other_banner.title_el,

	tb_other_banner.banner,
	tb_other_banner.publishStatusId,
	tb_publish_status.publishStatus

from tb_other_banner

	left join vi_all_pages
	on tb_other_banner.pagesId = vi_all_pages.id

	left join tb_publish_status
	on tb_other_banner.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_pages
DROP VIEW IF EXISTS `vi_pages`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_pages`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_pages` AS select
	tb_pages.id,
	tb_pages.position,

	tb_pages.title,
	tb_pages.title_sl,
	tb_pages.title_el,

	tb_pages.mediaTypeId,
	tb_media_type.mediaType,

	tb_pages.contentLayoutId,
	tb_content_layout.contentLayout,

	tb_pages.image,
	tb_pages.videoEmbed,

	tb_pages.description,
	tb_pages.description_sl,
	tb_pages.description_el,

	tb_pages.moreDescription,
	tb_pages.moreDescription_sl,
	tb_pages.moreDescription_el,

	tb_pages.publishStatusId,
	tb_publish_status.publishStatus

from tb_pages

	left join tb_media_type
	on tb_pages.mediaTypeId = tb_media_type.id

	left join tb_content_layout
	on tb_pages.contentLayoutId = tb_content_layout.id

	left join tb_publish_status
	on tb_pages.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_photo
DROP VIEW IF EXISTS `vi_photo`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_photo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_photo` AS select
	tb_photo.id,
	tb_photo.position,

	tb_photo.photoCategoryId,
	tb_photo_category.category,
	tb_photo_category.category_sl,
	tb_photo_category.category_el,

	tb_photo.title,
	tb_photo.title_sl,
	tb_photo.title_el,

	tb_photo.coverPhoto,

	tb_photo.description,
	tb_photo.description_sl,
	tb_photo.description_el,

	tb_photo.photos,

	tb_photo.publishStatusId,
	tb_publish_status.publishStatus

from tb_photo

	left join tb_photo_category
	on tb_photo.photoCategoryId = tb_photo_category.id

	left join tb_publish_status
	on tb_photo.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_photo_category
DROP VIEW IF EXISTS `vi_photo_category`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_photo_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_photo_category` AS select
	tb_photo_category.id,
	tb_photo_category.position,
	tb_photo_category.category,
	tb_photo_category.category_sl,
	tb_photo_category.category_el,
	tb_photo_category.publishStatusId,
	tb_publish_status.publishStatus

from tb_photo_category

	left join tb_publish_status
	on tb_photo_category.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_portfolio
DROP VIEW IF EXISTS `vi_portfolio`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_portfolio`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_portfolio` AS select
	tb_portfolio.id,
	tb_portfolio.position,
	tb_portfolio.productName,
	tb_portfolio.productName_sl,
	tb_portfolio.productName_el,
	tb_portfolio.image,
	tb_portfolio.description,
	tb_portfolio.description_sl,
	tb_portfolio.description_el,

	tb_portfolio.showViewDemoId,
	vi_show_view_demo.decision as showViewDemo,
	tb_portfolio.viewDemoUrl,

	tb_portfolio.showVisitPageId,
	vi_show_visit_page.decision as showVisitPage,
	tb_portfolio.visitPageUrl,

	tb_portfolio.publishStatusId,
	tb_publish_status.publishStatus

from tb_portfolio

	left join tb_decision as vi_show_view_demo
	on tb_portfolio.showViewDemoId = vi_show_view_demo.id

	left join tb_decision as vi_show_visit_page
	on tb_portfolio.showVisitPageId = vi_show_visit_page.id

	left join tb_publish_status
	on tb_portfolio.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_product
DROP VIEW IF EXISTS `vi_product`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_product` AS select
	tb_product.id,
	tb_product.position,

	tb_product.productCategoryId,
	tb_product_category.category,
	tb_product_category.category_sl,
	tb_product_category.category_el,

	tb_product.productName,
	tb_product.productName_sl,
	tb_product.productName_el,

	tb_product.coverImage,

	tb_product.description,
	tb_product.description_sl,
	tb_product.description_el,

	tb_product.moreDescription,
	tb_product.moreDescription_sl,
	tb_product.moreDescription_el,

	tb_product.showPriceId,
	tb_decision.decision as showPrice,

	tb_product.price,
	tb_product.price_sl,

	tb_product.showWebsiteDemoId,
	vi_show_website_demo.decision as showWebsiteDemo,
	tb_product.websiteDemoUrl,

	tb_product.showDashboardDemoId,
	vi_show_dashboard_demo.decision as showDashboardDemo,
	tb_product.dashboardDemoUrl,

	tb_product.showApplicationDemoId,
	vi_show_application_demo.decision as showApplicationDemo,
	tb_product.applicationDemoUrl,

	tb_product.showDownloadId,
	vi_show_download.decision as showDownload,
	tb_product.productFile,

	tb_product.images,

	tb_product.publishStatusId,
	tb_publish_status.publishStatus

from tb_product

	left join tb_decision as vi_show_website_demo
	on tb_product.showWebsiteDemoId = vi_show_website_demo.id

	left join tb_decision as vi_show_dashboard_demo
	on tb_product.showDashboardDemoId = vi_show_dashboard_demo.id

	left join tb_decision as vi_show_application_demo
	on tb_product.showApplicationDemoId = vi_show_application_demo.id

	left join tb_decision as vi_show_download
	on tb_product.showDownloadId = vi_show_download.id

	left join tb_product_category
	on tb_product.productCategoryId = tb_product_category.id

	left join tb_decision
	on tb_product.showPriceId = tb_decision.id

	left join tb_publish_status
	on tb_product.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_product_category
DROP VIEW IF EXISTS `vi_product_category`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_product_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_product_category` AS select
	tb_product_category.id,
	tb_product_category.position,
	tb_product_category.category,
	tb_product_category.category_sl,
	tb_product_category.category_el,
	tb_product_category.publishStatusId,
	tb_publish_status.publishStatus

from tb_product_category

	left join tb_publish_status
	on tb_product_category.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_project
DROP VIEW IF EXISTS `vi_project`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_project`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_project` AS select
	tb_project.id,

	tb_project.position,
	tb_project.clientName,

	tb_project.publishStatusId,
	tb_publish_status.publishStatus

from tb_project

	left join tb_publish_status
	on tb_project.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_project_products
DROP VIEW IF EXISTS `vi_project_products`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_project_products`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_project_products` AS select
	tb_project_products.id,
	tb_project_products.projectId,
	tb_project_products.productName,
	tb_project_products.productName_sl,
	tb_project_products.productName_el,
	tb_project_products.yearFrom,
	tb_project_products.yearTo,

	tb_project_products.publishStatusId,
	tb_publish_status.publishStatus

from tb_project_products

	left join tb_publish_status
	on tb_project_products.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_seo
DROP VIEW IF EXISTS `vi_seo`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_seo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_seo` AS select
	tb_seo.id,
	tb_seo.pagesId,
	vi_all_pages.title as page,
	(select group_concat(keywords) from tb_seo_keywords where seoId = tb_seo.id) as keywords,
	tb_seo.description

from tb_seo

	left join vi_all_pages
	on tb_seo.pagesId = vi_all_pages.id ;

-- Dumping structure for view db_dafearsoft.vi_services
DROP VIEW IF EXISTS `vi_services`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_services`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_services` AS select
	tb_services.id,

	tb_services.position,
	tb_services.title,
	tb_services.title_sl,
	tb_services.title_el,
	tb_services.description,
	tb_services.description_sl,
	tb_services.description_el,

	tb_services.publishStatusId,
	tb_publish_status.publishStatus

from tb_services

	left join tb_publish_status
	on tb_services.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_services_brief_overview
DROP VIEW IF EXISTS `vi_services_brief_overview`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_services_brief_overview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_services_brief_overview` AS select
	tb_services_brief_overview.id,

	tb_services_brief_overview.title,
	tb_services_brief_overview.title_sl,
	tb_services_brief_overview.title_el,

	tb_services_brief_overview.mediaTypeId,
	tb_media_type.mediaType,

	tb_services_brief_overview.contentLayoutId,
	tb_content_layout.contentLayout,

	tb_services_brief_overview.image,
	tb_services_brief_overview.videoEmbed,

	tb_services_brief_overview.description,
	tb_services_brief_overview.description_sl,
	tb_services_brief_overview.description_el,

	tb_services_brief_overview.publishStatusId,
	tb_publish_status.publishStatus

from tb_services_brief_overview

	left join tb_media_type
	on tb_services_brief_overview.mediaTypeId = tb_media_type.id

	left join tb_content_layout
	on tb_services_brief_overview.contentLayoutId = tb_content_layout.id

	left join tb_publish_status
	on tb_services_brief_overview.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_subscriber
DROP VIEW IF EXISTS `vi_subscriber`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_subscriber`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_subscriber` AS select
	tb_subscriber.id,
	tb_subscriber.email,
	date_format(tb_subscriber.postedOn, '%d/%m/%Y') as postedOn

from tb_subscriber ;

-- Dumping structure for view db_dafearsoft.vi_sub_menu
DROP VIEW IF EXISTS `vi_sub_menu`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_sub_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_sub_menu` AS select
	tb_sub_menu.id,

	tb_sub_menu.menuId,
	tb_menu.menuCaption,

	tb_sub_menu.subMenuCaption,
	tb_sub_menu.subMenuCaption_sl,
	tb_sub_menu.subMenuCaption_el,

	tb_sub_menu.subMenuBehaviorId,
	vi_sub_menu_behavior.behavior,

	tb_sub_menu.pagesId,
	vi_all_pages.title as page,
	vi_all_pages.title_sl as page_sl,
	vi_all_pages.title_el as page_el,

	vi_all_pages.uri,

	tb_sub_menu.url,
	tb_sub_menu.openUrlOnNewTabId,
	tb_decision.decision as openUrlOnNewTab,

	if (tb_sub_menu.subMenuBehaviorId = 1, vi_all_pages.title, tb_sub_menu.url) as destination

from tb_sub_menu

	left join tb_menu
	on tb_sub_menu.menuId = tb_menu.id

	left join vi_sub_menu_behavior
	on tb_sub_menu.subMenuBehaviorId = vi_sub_menu_behavior.id

	left join vi_all_pages
	on tb_sub_menu.pagesId = vi_all_pages.id

	left join tb_decision
	on tb_menu.openUrlOnNewTabId = tb_decision.id ;

-- Dumping structure for view db_dafearsoft.vi_sub_menu_behavior
DROP VIEW IF EXISTS `vi_sub_menu_behavior`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_sub_menu_behavior`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_sub_menu_behavior` AS select * from tb_menu_behavior where id <> 3 ;

-- Dumping structure for view db_dafearsoft.vi_sub_pages
DROP VIEW IF EXISTS `vi_sub_pages`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_sub_pages`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_sub_pages` AS select
	tb_sub_pages.id,
	tb_sub_pages.position,

	tb_sub_pages.pagesId,
	tb_pages.title as pages,
	tb_pages.title_sl as pages_sl,
	tb_pages.title_el as pages_el,

	tb_sub_pages.title,
	tb_sub_pages.title_sl,
	tb_sub_pages.title_el,

	tb_sub_pages.mediaTypeId,
	tb_media_type.mediaType,

	tb_sub_pages.contentLayoutId,
	tb_content_layout.contentLayout,

	tb_sub_pages.image,
	tb_sub_pages.videoEmbed,

	tb_sub_pages.description,
	tb_sub_pages.description_sl,
	tb_sub_pages.description_el,

	tb_sub_pages.moreDescription,
	tb_sub_pages.moreDescription_sl,
	tb_sub_pages.moreDescription_el,

	tb_sub_pages.publishStatusId,
	tb_publish_status.publishStatus

from tb_sub_pages

	left join tb_pages
	on tb_sub_pages.pagesId = tb_pages.id

	left join tb_media_type
	on tb_sub_pages.mediaTypeId = tb_media_type.id

	left join tb_content_layout
	on tb_sub_pages.contentLayoutId = tb_content_layout.id

	left join tb_publish_status
	on tb_sub_pages.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_team_profile
DROP VIEW IF EXISTS `vi_team_profile`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_team_profile`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_team_profile` AS select
	tb_team_profile.id,

	tb_team_profile.position,

	tb_team_profile.name,
	tb_team_profile.profession,
	tb_team_profile.photo,
	tb_team_profile.email,
	tb_team_profile.skypeId,
	tb_team_profile.pinBb,
	tb_team_profile.phoneNumber,
	tb_team_profile.description,

	tb_team_profile.showDownloadCvId,
	vi_show_download_cv.decision as showDownloadCv,
	tb_team_profile.cvFile,

	tb_team_profile.publishStatusId,
	tb_publish_status.publishStatus

from tb_team_profile

	left join tb_decision as vi_show_download_cv
	on tb_team_profile.showDownloadCvId = vi_show_download_cv.id

	left join tb_publish_status
	on tb_team_profile.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_team_profile_skills
DROP VIEW IF EXISTS `vi_team_profile_skills`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_team_profile_skills`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_team_profile_skills` AS select
	tb_team_profile_skills.id,
	tb_team_profile_skills.teamProfileId,

	tb_team_profile_skills.skill,

	concat(tb_team_profile_skills.percentage,'%') as percentage,
	tb_team_profile_skills.percentage as _percentage,

	tb_team_profile_skills.publishStatusId,
	tb_publish_status.publishStatus

from tb_team_profile_skills

		left join tb_publish_status
	on tb_team_profile_skills.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_team_profile_social_media
DROP VIEW IF EXISTS `vi_team_profile_social_media`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_team_profile_social_media`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_team_profile_social_media` AS select
	tb_team_profile_social_media.id,
	tb_team_profile_social_media.teamProfileId,

	tb_team_profile_social_media.socialMediaId,
	tb_social_media.socialMedia,
	tb_social_media.websiteIcon,
	tb_social_media.websiteColor,

	tb_team_profile_social_media.url,

	tb_team_profile_social_media.publishStatusId,
	tb_publish_status.publishStatus

from tb_team_profile_social_media

	left join tb_social_media
	on tb_team_profile_social_media.socialMediaId = tb_social_media.id

		left join tb_publish_status
	on tb_team_profile_social_media.publishStatusId = tb_publish_status.id ;

-- Dumping structure for view db_dafearsoft.vi_upcoming_events
DROP VIEW IF EXISTS `vi_upcoming_events`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_upcoming_events`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_upcoming_events` AS select
	vi_events.id,
	vi_events.title,
	vi_events.location,
	vi_events.latitude,
	vi_events.longitude,
	vi_events.eventsDate,
	vi_events._eventsDate,
	vi_events.eventsTime,
	vi_events.description,
	vi_events.moreDescription,
	vi_events.publishStatusId,
	vi_events.publishStatus

from vi_events

	where vi_events.eventsDate < date(now())
	order by id desc ;

-- Dumping structure for view db_dafearsoft.vi_user
DROP VIEW IF EXISTS `vi_user`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_user` AS select
	tb_user.id,
	concat(tb_user.firstName, ' ', tb_user.lastName) as name,
	tb_user.firstName,
	tb_user.lastName,
	tb_user.photo,
	tb_user.email,
	tb_user.password,
	tb_user.salt,

	tb_user.privilegesId,
	tb_user_privileges.`privileges`,
	tb_user_privileges.menuAccess,
	tb_user_privileges.panelAccess,

	tb_user.genderId,
	tb_gender.gender,
	date_format(tb_user.dateOfBirth, '%d/%m/%Y') as dateOfBirth,
	tb_user.dateOfBirth as _dateOfBirth,
	tb_user.mobileNumber,

	vi_branch.regionalId,
	vi_branch.regional,
	vi_branch.districtCityId,
	vi_branch.districtCity,
	tb_user.branchId,
	vi_branch.branchName,
	vi_branch._branchName,

	tb_user.address

from tb_user

	left join tb_user_privileges
	on tb_user.privilegesId = tb_user_privileges.id

	left join tb_gender
	on tb_user.genderId = tb_gender.id

	left join vi_branch
	on tb_user.branchId = vi_branch.id ;

-- Dumping structure for view db_dafearsoft.vi_user_log
DROP VIEW IF EXISTS `vi_user_log`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_user_log`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_user_log` AS select
	vi_user_login.id,
	vi_user_login.id as userLoginId,
	vi_user_login.userId,
	if(vi_user_login.userId = 0, 'Super Admin', vi_user_login.name) as name,
	vi_user_login.auth,
	vi_user_login.loginOn,
	vi_user_login._loginOn,
	vi_user_logout.logoutOn,
	vi_user_logout._logoutOn,
	if(isnull(vi_user_logout.logoutOn) = 1, 1, 2) as stillInsideId,
	(select decision from tb_decision where id = if(isnull(vi_user_logout.logoutOn) = 1, 1, 2)) as stillInside

from vi_user_login

	left join vi_user_logout
	on vi_user_logout.userLoginId = vi_user_login.id ;

-- Dumping structure for view db_dafearsoft.vi_user_login
DROP VIEW IF EXISTS `vi_user_login`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_user_login`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_user_login` AS select
	tb_user_login.id,
	tb_user_login.userId,
	vi_user.name,
	tb_user_login.auth,

	date_format(tb_user_login.loginOn, '%d/%m/%Y %h:%i:%s') as loginOn,
	tb_user_login.loginOn as _loginOn

from tb_user_login

	left join vi_user
	on tb_user_login.userId = vi_user.id ;

-- Dumping structure for view db_dafearsoft.vi_user_logout
DROP VIEW IF EXISTS `vi_user_logout`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vi_user_logout`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_user_logout` AS select
	tb_user_logout.id,
	tb_user_logout.userLoginId,

	date_format(tb_user_logout.logoutOn, '%d/%m/%Y %h:%i:%s') as logoutOn,
	tb_user_logout.logoutOn as _logoutOn

from tb_user_logout ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
