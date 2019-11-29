/*
Navicat MySQL Data Transfer

Source Server         : wormhole
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : alumnidb

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-11-29 15:49:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `account_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssi_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('1', 'alumnus', 'caninon', '$2y$10$mpO9MWH9HZ9c18NNGdnb1e9pY5rmTqlNNbsWBJcJoldfuFjRzj3u6', '16', null, '2019-09-18 16:47:04', '2019-10-18 01:37:23', 'Carmelo', null);
INSERT INTO `accounts` VALUES ('2', 'alumnus', 'kcbollozos', '$2y$10$mpO9MWH9HZ9c18NNGdnb1e9pY5rmTqlNNbsWBJcJoldfuFjRzj3u6', '17', null, '2019-10-17 00:39:08', '2019-10-17 01:59:04', 'Keah', null);

-- ----------------------------
-- Table structure for activation_histories
-- ----------------------------
DROP TABLE IF EXISTS `activation_histories`;
CREATE TABLE `activation_histories` (
  `th_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pl_id` int(10) unsigned NOT NULL,
  `responsible` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `registered_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`th_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activation_histories
-- ----------------------------

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `reg_id` int(10) unsigned DEFAULT NULL,
  `province_id` int(10) unsigned DEFAULT NULL,
  `city_id` int(10) unsigned DEFAULT NULL,
  `brgy_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`add_id`),
  KEY `address_country_id_foreign` (`country_id`),
  KEY `address_reg_id_foreign` (`reg_id`),
  KEY `address_province_id_foreign` (`province_id`),
  KEY `address_city_id_foreign` (`city_id`),
  KEY `address_brgy_id_foreign` (`brgy_id`),
  CONSTRAINT `address_brgy_id_foreign` FOREIGN KEY (`brgy_id`) REFERENCES `brgy` (`brgy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `address_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `address_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `address_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `prov` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `address_reg_id_foreign` FOREIGN KEY (`reg_id`) REFERENCES `regions` (`reg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `admin_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'Rustom', 'Gwapo', 'Pedales', 'Fire Department', 'Fire Leader', 'tomtom', '$2y$10$Cp7HBkDfqLBD3SKhcBMEfOm3cqOWZYsHl4K1JYIncGIxEIy1pBLam', '2019-09-18 08:07:33', '2019-09-18 08:07:37', null, 'Rustom G. Pedales', null);
INSERT INTO `admins` VALUES ('18', 'Leone', 'Freaks', 'silverfall', 'Police Department', 'Police Chief', 'leone', '$2y$10$2DiHCkpWhfRqF2utPSH9buZS8AptzzGFGISallgO2jypFKeEHzYcy', '2019-09-18 06:07:05', '2019-09-18 06:07:05', null, 'Leone F. Silverfall', null);
INSERT INTO `admins` VALUES ('19', 'Karen Kate', 'B', 'Seronay', 'Math Department', 'Math Head', 'kate', '$2y$10$QWVTQmPbT3Q/RIyulygCIeOQ6uKBPudgE6fd/Icl8JmiO22AkNKPu', '2019-09-18 06:08:49', '2019-09-18 06:08:49', 'img/profile/karen kateseronay1568786929.jpg', 'Karen Kate B. Seronay', null);
INSERT INTO `admins` VALUES ('20', 'Ian Dale', 'M', 'Blanco', 'Accounting', 'Accounting Head', 'blancoid', '$2y$10$gqiCC3WoENyVgRJFDZSAK.Ekx8VoOcjsgngzaRlLqKazgaGoA.2ra', '2019-11-26 02:29:45', '2019-11-26 02:29:45', null, 'Ian Dale M. Blanco', null);

-- ----------------------------
-- Table structure for advertisements
-- ----------------------------
DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE `advertisements` (
  `ad_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of advertisements
-- ----------------------------
INSERT INTO `advertisements` VALUES ('1', '2019-09-11 14:18:15', '2019-09-13 14:18:19', '/img/ads/one_1572420159.jpg', '2019-09-11 14:18:46', '2019-10-30 07:22:39', '1', 'image', 'Active');
INSERT INTO `advertisements` VALUES ('2', '2019-09-13 10:12:54', '2019-10-01 10:12:57', '/img/ads/index_1571963938.jpg', '2019-09-13 10:13:05', '2019-10-25 01:31:01', '1', 'video', 'Active');

-- ----------------------------
-- Table structure for alumnus_awards
-- ----------------------------
DROP TABLE IF EXISTS `alumnus_awards`;
CREATE TABLE `alumnus_awards` (
  `ar_id` int(11) NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) DEFAULT NULL,
  `award` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alumnus_awards
-- ----------------------------
INSERT INTO `alumnus_awards` VALUES ('1', '16', 'Cum Laude', '2019th Closing Exercises', '2019-03-22 15:42:49', '2019-11-27 15:43:33', '2019-11-27 15:43:36');
INSERT INTO `alumnus_awards` VALUES ('2', '16', 'Deans List', '2019th Closing Exercises', '2019-03-22 15:44:24', '2019-11-27 15:44:44', '2019-11-27 15:44:47');

-- ----------------------------
-- Table structure for alumnus_organizations
-- ----------------------------
DROP TABLE IF EXISTS `alumnus_organizations`;
CREATE TABLE `alumnus_organizations` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) DEFAULT NULL,
  `org_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  `date_left` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alumnus_organizations
-- ----------------------------
INSERT INTO `alumnus_organizations` VALUES ('1', '16', 'Knights of Columbus', 'Supreme Knight', '2013-06-27 13:52:11', '2018-10-01 13:52:25', '2019-11-27 13:52:39', '2019-11-27 13:52:42');
INSERT INTO `alumnus_organizations` VALUES ('2', '16', 'LGBT+Q', 'President', '2016-02-14 14:33:37', null, '2019-11-27 14:33:52', '2019-11-27 14:33:56');

-- ----------------------------
-- Table structure for alumnus_skills
-- ----------------------------
DROP TABLE IF EXISTS `alumnus_skills`;
CREATE TABLE `alumnus_skills` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`as_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of alumnus_skills
-- ----------------------------
INSERT INTO `alumnus_skills` VALUES ('1', '16', '1', '2019-11-27 15:57:50', '2019-11-27 15:57:50');
INSERT INTO `alumnus_skills` VALUES ('2', '16', '2', '2019-11-27 15:57:56', '2019-11-27 15:57:56');
INSERT INTO `alumnus_skills` VALUES ('3', '16', '3', '2019-11-27 15:58:01', '2019-11-27 15:58:01');
INSERT INTO `alumnus_skills` VALUES ('4', '16', '4', '2019-11-27 15:58:07', '2019-11-27 15:58:07');
INSERT INTO `alumnus_skills` VALUES ('5', '16', '5', '2019-11-27 15:58:14', '2019-11-27 15:58:14');
INSERT INTO `alumnus_skills` VALUES ('6', '16', '6', '2019-11-27 15:58:20', '2019-11-27 15:58:20');

-- ----------------------------
-- Table structure for brgy
-- ----------------------------
DROP TABLE IF EXISTS `brgy`;
CREATE TABLE `brgy` (
  `brgy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brgy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brgy_id`),
  KEY `brgy_city_id_foreign` (`city_id`),
  CONSTRAINT `brgy_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of brgy
-- ----------------------------

-- ----------------------------
-- Table structure for childrens
-- ----------------------------
DROP TABLE IF EXISTS `childrens`;
CREATE TABLE `childrens` (
  `children_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_school` text COLLATE utf8mb4_unicode_ci,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`children_id`),
  KEY `childrens_spi_id_foreign` (`spi_id`),
  CONSTRAINT `childrens_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of childrens
-- ----------------------------

-- ----------------------------
-- Table structure for citizenship
-- ----------------------------
DROP TABLE IF EXISTS `citizenship`;
CREATE TABLE `citizenship` (
  `cit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of citizenship
-- ----------------------------

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `city_province_id_foreign` (`province_id`),
  CONSTRAINT `city_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `prov` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of city
-- ----------------------------

-- ----------------------------
-- Table structure for college_record
-- ----------------------------
DROP TABLE IF EXISTS `college_record`;
CREATE TABLE `college_record` (
  `cr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `sl_id` int(10) unsigned NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_graduated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_honor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cr_id`),
  KEY `college_record_spi_id_foreign` (`spi_id`),
  KEY `college_record_sl_id_foreign` (`sl_id`),
  CONSTRAINT `college_record_sl_id_foreign` FOREIGN KEY (`sl_id`) REFERENCES `school_lists` (`sl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `college_record_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of college_record
-- ----------------------------

-- ----------------------------
-- Table structure for college_record_address
-- ----------------------------
DROP TABLE IF EXISTS `college_record_address`;
CREATE TABLE `college_record_address` (
  `cr_add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cr_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cr_add_id`),
  KEY `college_record_address_cr_id_foreign` (`cr_id`),
  KEY `college_record_address_add_id_foreign` (`add_id`),
  CONSTRAINT `college_record_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `college_record_address_cr_id_foreign` FOREIGN KEY (`cr_id`) REFERENCES `college_record` (`cr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of college_record_address
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `alumni_post_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `ssi_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `company_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `goals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration` datetime NOT NULL,
  `expiration` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat veniam veritatis, fugit quo optio laborum quisquam? Explicabo labore laboriosam distinctio. Blanditiis dolorum fugit perspiciatis quas facere perferendis corporis numquam! Libero?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat veniam veritatis, fugit quo optio laborum quisquam? Explicabo labore laboriosam distinctio. Blanditiis dolorum fugit perspiciatis quas facere perferendis corporis numquam! Libero?', 'J.C Aquino Avenue Butuan City', '8.940366299999999, 125.51579170000002', '09095556252', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat veniam veritatis, fugit quo optio laborum quisquam? Explicabo labore laboriosam distinctio. Blanditiis dolorum fugit perspiciatis quas facere perferendis corporis numquam! Libero?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat veniam veritatis, fugit quo optio laborum quisquam? Explicabo labore laboriosam distinctio. Blanditiis dolorum fugit perspiciatis quas facere perferendis corporis numquam! Libero?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat veniam veritatis, fugit quo optio laborum quisquam? Explicabo labore laboriosam distinctio. Blanditiis dolorum fugit perspiciatis quas facere perferendis corporis numquam! Libero?', '2019-08-20 09:13:04', '2019-08-29 09:13:08', '2019-08-20 09:13:21', '2019-10-22 08:15:42', 'Azure Mindstream Incorporated', 'azure@gmail.com', 'Active', 'images/azurelogo.png', '225-6859', '816-7848');

-- ----------------------------
-- Table structure for company_helps
-- ----------------------------
DROP TABLE IF EXISTS `company_helps`;
CREATE TABLE `company_helps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `help_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_helps
-- ----------------------------
INSERT INTO `company_helps` VALUES ('1', '1', '1', null, null);
INSERT INTO `company_helps` VALUES ('2', '1', '2', null, null);
INSERT INTO `company_helps` VALUES ('3', '1', '3', null, null);
INSERT INTO `company_helps` VALUES ('4', '1', '4', null, null);

-- ----------------------------
-- Table structure for contact_people
-- ----------------------------
DROP TABLE IF EXISTS `contact_people`;
CREATE TABLE `contact_people` (
  `contact_person_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_person_id`),
  KEY `contact_people_spi_id_foreign` (`spi_id`),
  CONSTRAINT `contact_people_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contact_people
-- ----------------------------

-- ----------------------------
-- Table structure for contact_person_numbers
-- ----------------------------
DROP TABLE IF EXISTS `contact_person_numbers`;
CREATE TABLE `contact_person_numbers` (
  `contact_person_num_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_person_id` int(10) unsigned NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_person_num_id`),
  KEY `contact_person_numbers_contact_person_id_foreign` (`contact_person_id`),
  CONSTRAINT `contact_person_numbers_contact_person_id_foreign` FOREIGN KEY (`contact_person_id`) REFERENCES `contact_people` (`contact_person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contact_person_numbers
-- ----------------------------

-- ----------------------------
-- Table structure for conversations
-- ----------------------------
DROP TABLE IF EXISTS `conversations`;
CREATE TABLE `conversations` (
  `convo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sender_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`convo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of conversations
-- ----------------------------

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of country
-- ----------------------------

-- ----------------------------
-- Table structure for crediting_history
-- ----------------------------
DROP TABLE IF EXISTS `crediting_history`;
CREATE TABLE `crediting_history` (
  `ch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `cu_id` int(10) unsigned NOT NULL,
  `credit_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_date` date NOT NULL,
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of crediting_history
-- ----------------------------

-- ----------------------------
-- Table structure for curr_used
-- ----------------------------
DROP TABLE IF EXISTS `curr_used`;
CREATE TABLE `curr_used` (
  `cu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cu_id`),
  KEY `curr_used_ssi_id_foreign` (`ssi_id`),
  CONSTRAINT `curr_used_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of curr_used
-- ----------------------------

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dep_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for doctor_record
-- ----------------------------
DROP TABLE IF EXISTS `doctor_record`;
CREATE TABLE `doctor_record` (
  `dr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of doctor_record
-- ----------------------------

-- ----------------------------
-- Table structure for doctor_record_address
-- ----------------------------
DROP TABLE IF EXISTS `doctor_record_address`;
CREATE TABLE `doctor_record_address` (
  `dr_add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dr_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dr_add_id`),
  KEY `doctor_record_address_dr_id_foreign` (`dr_id`),
  KEY `doctor_record_address_add_id_foreign` (`add_id`),
  CONSTRAINT `doctor_record_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `doctor_record_address_dr_id_foreign` FOREIGN KEY (`dr_id`) REFERENCES `doctor_record` (`dr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of doctor_record_address
-- ----------------------------

-- ----------------------------
-- Table structure for elementary_address
-- ----------------------------
DROP TABLE IF EXISTS `elementary_address`;
CREATE TABLE `elementary_address` (
  `elem_add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `elementary_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`elem_add_id`),
  KEY `elementary_address_elementary_id_foreign` (`elementary_id`),
  KEY `elementary_address_add_id_foreign` (`add_id`),
  CONSTRAINT `elementary_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `elementary_address_elementary_id_foreign` FOREIGN KEY (`elementary_id`) REFERENCES `elementary_student` (`elementary_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of elementary_address
-- ----------------------------

-- ----------------------------
-- Table structure for elementary_student
-- ----------------------------
DROP TABLE IF EXISTS `elementary_student`;
CREATE TABLE `elementary_student` (
  `elementary_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `sl_id` int(10) unsigned NOT NULL,
  `sch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_honor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`elementary_id`),
  KEY `elementary_student_spi_id_foreign` (`spi_id`),
  KEY `elementary_student_sl_id_foreign` (`sl_id`),
  CONSTRAINT `elementary_student_sl_id_foreign` FOREIGN KEY (`sl_id`) REFERENCES `school_lists` (`sl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `elementary_student_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of elementary_student
-- ----------------------------

-- ----------------------------
-- Table structure for eligibilities
-- ----------------------------
DROP TABLE IF EXISTS `eligibilities`;
CREATE TABLE `eligibilities` (
  `eligibility_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_exam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_exam` datetime DEFAULT NULL,
  `date_of_release` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`eligibility_id`),
  KEY `eligibilities_spi_id_foreign` (`spi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of eligibilities
-- ----------------------------
INSERT INTO `eligibilities` VALUES ('1', '16', 'Civil Service Passer', '1st', 'Tokyo, Japan', null, '2019-10-14 10:06:58', '2019-11-21 10:07:07', '2019-11-13 10:01:35', '2019-11-13 10:01:38');
INSERT INTO `eligibilities` VALUES ('2', '16', 'Electronic Data Processing Specialist (EDPS)', '2nd', 'Beijing, China', null, '2019-09-01 10:07:12', '2019-11-04 10:07:19', '2019-11-04 10:07:25', '2019-11-04 10:07:29');

-- ----------------------------
-- Table structure for emails
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of emails
-- ----------------------------

-- ----------------------------
-- Table structure for email_parent
-- ----------------------------
DROP TABLE IF EXISTS `email_parent`;
CREATE TABLE `email_parent` (
  `parent_email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`parent_email_id`),
  KEY `email_parent_email_id_foreign` (`email_id`),
  KEY `email_parent_parent_id_foreign` (`parent_id`),
  CONSTRAINT `email_parent_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `email_parent_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`parent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of email_parent
-- ----------------------------

-- ----------------------------
-- Table structure for email_student
-- ----------------------------
DROP TABLE IF EXISTS `email_student`;
CREATE TABLE `email_student` (
  `stud_email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stud_email_id`),
  KEY `email_student_email_id_foreign` (`email_id`),
  KEY `email_student_spi_id_foreign` (`spi_id`),
  CONSTRAINT `email_student_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `email_student_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of email_student
-- ----------------------------

-- ----------------------------
-- Table structure for enrollment_flow_sources
-- ----------------------------
DROP TABLE IF EXISTS `enrollment_flow_sources`;
CREATE TABLE `enrollment_flow_sources` (
  `ef_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `step_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `steps_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of enrollment_flow_sources
-- ----------------------------

-- ----------------------------
-- Table structure for gen_ave
-- ----------------------------
DROP TABLE IF EXISTS `gen_ave`;
CREATE TABLE `gen_ave` (
  `ga_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cs_id` int(11) NOT NULL,
  `cu_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ga_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of gen_ave
-- ----------------------------

-- ----------------------------
-- Table structure for grade_override
-- ----------------------------
DROP TABLE IF EXISTS `grade_override`;
CREATE TABLE `grade_override` (
  `go_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instructor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registrar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_override` date NOT NULL,
  `sg_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`go_id`),
  KEY `grade_override_sg_id_foreign` (`sg_id`),
  CONSTRAINT `grade_override_sg_id_foreign` FOREIGN KEY (`sg_id`) REFERENCES `stud_grade` (`sg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of grade_override
-- ----------------------------

-- ----------------------------
-- Table structure for helps
-- ----------------------------
DROP TABLE IF EXISTS `helps`;
CREATE TABLE `helps` (
  `help_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `level` int(11) DEFAULT NULL,
  `visible` int(11) DEFAULT '1',
  PRIMARY KEY (`help_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of helps
-- ----------------------------
INSERT INTO `helps` VALUES ('1', 'Get clear on what you want', 'Before starting your job search, take the time to reflect on your strengths and weaknesses and the type of work you enjoy doing. The better you know yourself, the more likely you’ll find a new job that provides you with greater satisfaction. What do you want in a job? What’s most important, title, money, promotion, the work itself, location, or company culture?', '1', '1');
INSERT INTO `helps` VALUES ('2', 'Job Application', 'Once you know what you want, it’s time to find out what the companies you’re applying for want. A great tip for finding a new job is to investigate a company’s Glassdoor page. It will help you get a feel for their company culture, figure out what questions they commonly ask in interviews, and even discover what salary you’re likely to be paid.', '2', '1');
INSERT INTO `helps` VALUES ('3', 'Editing your Profile', 'Regardless of whether you are in business, trying to put your startup on the map, new to the working world or focus mostly on non-profit work, LinkedIn is a very good networking tool to help you achieve your professional goals.\r\n\r\nA hunting ground for headhunters, HR managers and new businesses looking for partners or opportunities, it will do you good to have a professional LinkedIn profile set up, to let you take advantage of this.', '3', '1');
INSERT INTO `helps` VALUES ('4', 'Job Hiring', 'You want to find an employee that will fit in with your company\'s culture. Check whether the candidate has social skills to get along with others, especially with current employees and managers. Ask how he or she is managing current business clients to judge compatibility skills.\r\n\r\nRemember, willingness is one of the primary things a candidate must possess to work with you. And if a person cannot get along with his or her current clients or previous bosses, it\'s not such a great idea to hire that candidate.', '4', '1');

-- ----------------------------
-- Table structure for hschool_address
-- ----------------------------
DROP TABLE IF EXISTS `hschool_address`;
CREATE TABLE `hschool_address` (
  `hs_add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hss_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hs_add_id`),
  KEY `hschool_address_hss_id_foreign` (`hss_id`),
  KEY `hschool_address_add_id_foreign` (`add_id`),
  CONSTRAINT `hschool_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hschool_address_hss_id_foreign` FOREIGN KEY (`hss_id`) REFERENCES `hschool_student` (`hss_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of hschool_address
-- ----------------------------

-- ----------------------------
-- Table structure for hschool_student
-- ----------------------------
DROP TABLE IF EXISTS `hschool_student`;
CREATE TABLE `hschool_student` (
  `hss_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `sl_id` int(10) unsigned NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_honor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hss_id`),
  KEY `hschool_student_spi_id_foreign` (`spi_id`),
  KEY `hschool_student_sl_id_foreign` (`sl_id`),
  CONSTRAINT `hschool_student_sl_id_foreign` FOREIGN KEY (`sl_id`) REFERENCES `school_lists` (`sl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hschool_student_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of hschool_student
-- ----------------------------

-- ----------------------------
-- Table structure for job_applicants
-- ----------------------------
DROP TABLE IF EXISTS `job_applicants`;
CREATE TABLE `job_applicants` (
  `applicant_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`applicant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_applicants
-- ----------------------------
INSERT INTO `job_applicants` VALUES ('1', '16', '1', null, 'Hello World', '2019-09-04 15:32:44', '2019-09-04 15:32:46', 'Not Hired');
INSERT INTO `job_applicants` VALUES ('2', '16', '2', null, 'I want to apply', '2019-09-19 11:39:47', '2019-09-19 11:39:53', 'Hired');

-- ----------------------------
-- Table structure for job_posts
-- ----------------------------
DROP TABLE IF EXISTS `job_posts`;
CREATE TABLE `job_posts` (
  `jpost_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `skills_requirement` text,
  `educational_requirement` text,
  `other_requirements` text,
  `salary_range` varchar(255) DEFAULT NULL,
  `company_id` bigint(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jpost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of job_posts
-- ----------------------------
INSERT INTO `job_posts` VALUES ('1', 'We need a genius Senior Programmer. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa adipisci repellendus autem ullam, eaque, reiciendis temporibus suscipit laboriosam consequatur nam magnam inventore natus distinctio. Repellat eos, atque possimus officia quisquam.', 'Basta kamao mo code kusog mang libre. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa adipisci repellendus autem ullam, eaque, reiciendis temporibus suscipit laboriosam consequatur nam magnam inventore natus distinctio. Repellat eos, atque possimus officia quisquam.', 'Kanang ni graduate sa skwelahan line of 9 ang grado. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa adipisci repellendus autem ullam, eaque, reiciendis temporibus suscipit laboriosam consequatur nam magnam inventore natus distinctio. Repellat eos, atque possimus officia quisquam.', 'Kanang gwapa single and available, wlay filter. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa adipisci repellendus autem ullam, eaque, reiciendis temporibus suscipit laboriosam consequatur nam magnam inventore natus distinctio. Repellat eos, atque possimus officia quisquam.', '80,000.00 - 100,000.00', '1', '2019-09-04 11:43:28', '2019-09-04 11:43:28', 'Senior Programmer');
INSERT INTO `job_posts` VALUES ('2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa adipisci repellendus autem ullam, eaque, reiciendis temporibus suscipit laboriosam consequatur nam magnam inventore natus distinctio. Repellat eos, atque possimus officia quisquam.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia commodi sint doloremque. Placeat quos consequuntur perferendis possimus modi, omnis dolor sequi facere recusandae! Enim cupiditate, ullam explicabo odio, quibusdam veritatis.', '30,000.00 - 50,000.00', '1', '2019-09-03 16:05:52', '2019-09-03 16:05:52', 'Database Administrator');

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------

-- ----------------------------
-- Table structure for language_student
-- ----------------------------
DROP TABLE IF EXISTS `language_student`;
CREATE TABLE `language_student` (
  `language_student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`language_student_id`),
  KEY `language_student_language_id_foreign` (`language_id`),
  KEY `language_student_spi_id_foreign` (`spi_id`),
  CONSTRAINT `language_student_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `language_student_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language_student
-- ----------------------------

-- ----------------------------
-- Table structure for loghistories
-- ----------------------------
DROP TABLE IF EXISTS `loghistories`;
CREATE TABLE `loghistories` (
  `lh_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `date_log_in` date DEFAULT NULL,
  `date_log_out` date DEFAULT NULL,
  `time_log_in` time DEFAULT NULL,
  `time_log_out` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`lh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of loghistories
-- ----------------------------

-- ----------------------------
-- Table structure for master_record
-- ----------------------------
DROP TABLE IF EXISTS `master_record`;
CREATE TABLE `master_record` (
  `mr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`mr_id`),
  KEY `master_record_spi_id_foreign` (`spi_id`),
  CONSTRAINT `master_record_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of master_record
-- ----------------------------

-- ----------------------------
-- Table structure for master_record_address
-- ----------------------------
DROP TABLE IF EXISTS `master_record_address`;
CREATE TABLE `master_record_address` (
  `mr_add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mr_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`mr_add_id`),
  KEY `master_record_address_mr_id_foreign` (`mr_id`),
  KEY `master_record_address_add_id_foreign` (`add_id`),
  CONSTRAINT `master_record_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `master_record_address_mr_id_foreign` FOREIGN KEY (`mr_id`) REFERENCES `master_record` (`mr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of master_record_address
-- ----------------------------

-- ----------------------------
-- Table structure for message_templates
-- ----------------------------
DROP TABLE IF EXISTS `message_templates`;
CREATE TABLE `message_templates` (
  `template_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssi_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of message_templates
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_05_28_003336_create_accounts_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_13_024438_create_admins_table', '1');
INSERT INTO `migrations` VALUES ('5', '2019_08_13_024816_create_advertisements_table', '1');
INSERT INTO `migrations` VALUES ('6', '2019_08_13_025726_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('7', '2019_08_13_030238_create_companies_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_08_13_030731_create_conversations_table', '1');
INSERT INTO `migrations` VALUES ('9', '2019_08_13_031050_create_job_applicants_table', '1');
INSERT INTO `migrations` VALUES ('10', '2019_08_13_031317_create_message_templates_table', '1');
INSERT INTO `migrations` VALUES ('11', '2019_08_13_031459_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('12', '2019_08_13_031957_create_replies_table', '1');
INSERT INTO `migrations` VALUES ('13', '2019_08_13_032330_create_updates_monitors_table', '1');

-- ----------------------------
-- Table structure for parents
-- ----------------------------
DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents` (
  `parent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deceased` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of parents
-- ----------------------------

-- ----------------------------
-- Table structure for parents_student
-- ----------------------------
DROP TABLE IF EXISTS `parents_student`;
CREATE TABLE `parents_student` (
  `ps_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `rel_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ps_id`),
  KEY `parents_student_parent_id_foreign` (`parent_id`),
  KEY `parents_student_spi_id_foreign` (`spi_id`),
  KEY `parents_student_rel_id_foreign` (`rel_id`),
  CONSTRAINT `parents_student_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`parent_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parents_student_rel_id_foreign` FOREIGN KEY (`rel_id`) REFERENCES `relationship` (`rel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parents_student_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of parents_student
-- ----------------------------

-- ----------------------------
-- Table structure for parent_address
-- ----------------------------
DROP TABLE IF EXISTS `parent_address`;
CREATE TABLE `parent_address` (
  `pu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `use_present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pu_id`),
  KEY `parent_address_parent_id_foreign` (`parent_id`),
  KEY `parent_address_add_id_foreign` (`add_id`),
  CONSTRAINT `parent_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parent_address_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`parent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of parent_address
-- ----------------------------

-- ----------------------------
-- Table structure for parent_phone
-- ----------------------------
DROP TABLE IF EXISTS `parent_phone`;
CREATE TABLE `parent_phone` (
  `parent_phone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`parent_phone_id`),
  KEY `parent_phone_phone_id_foreign` (`phone_id`),
  KEY `parent_phone_parent_id_foreign` (`parent_id`),
  CONSTRAINT `parent_phone_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`parent_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parent_phone_phone_id_foreign` FOREIGN KEY (`phone_id`) REFERENCES `phone_numbers` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of parent_phone
-- ----------------------------

-- ----------------------------
-- Table structure for parent_telephones
-- ----------------------------
DROP TABLE IF EXISTS `parent_telephones`;
CREATE TABLE `parent_telephones` (
  `pt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `telephone_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pt_id`),
  KEY `parent_telephones_telephone_id_foreign` (`telephone_id`),
  KEY `parent_telephones_parent_id_foreign` (`parent_id`),
  CONSTRAINT `parent_telephones_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`parent_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parent_telephones_telephone_id_foreign` FOREIGN KEY (`telephone_id`) REFERENCES `telephone_numbers` (`telephone_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of parent_telephones
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for phone_numbers
-- ----------------------------
DROP TABLE IF EXISTS `phone_numbers`;
CREATE TABLE `phone_numbers` (
  `phone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of phone_numbers
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci,
  `employee_quantity` int(11) DEFAULT NULL,
  `employee_hired` int(11) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_from` datetime NOT NULL,
  `duration_to` datetime NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssi_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'job', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', null, null, 'Database Administrator', '\r\n\r\n50000', '2019-10-28 09:57:54', '2019-12-31 09:57:57', null, null, '1', '2019-10-21 09:58:26', '2019-10-28 09:58:29');
INSERT INTO `posts` VALUES ('2', 'ad', null, null, null, null, null, '2019-10-28 10:13:25', '2020-01-02 10:13:27', 'images/posts/company-img1.png', null, '1', '2019-10-26 10:12:49', '2019-10-28 10:12:52');
INSERT INTO `posts` VALUES ('3', 'message', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', null, null, null, null, '2019-10-28 10:15:04', '2019-12-12 10:15:06', null, null, '1', '2019-09-01 10:15:17', '2019-10-28 10:15:20');

-- ----------------------------
-- Table structure for program_list
-- ----------------------------
DROP TABLE IF EXISTS `program_list`;
CREATE TABLE `program_list` (
  `pl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prog_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prog_abv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prog_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prog_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prog_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senior_high_track` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dep_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pl_id`),
  KEY `program_list_dep_id_foreign` (`dep_id`),
  CONSTRAINT `program_list_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of program_list
-- ----------------------------

-- ----------------------------
-- Table structure for prov
-- ----------------------------
DROP TABLE IF EXISTS `prov`;
CREATE TABLE `prov` (
  `province_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`province_id`),
  KEY `prov_reg_id_foreign` (`reg_id`),
  CONSTRAINT `prov_reg_id_foreign` FOREIGN KEY (`reg_id`) REFERENCES `regions` (`reg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of prov
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `q_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qc_id` int(10) unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`q_id`),
  KEY `questions_qc_id_foreign` (`qc_id`),
  CONSTRAINT `questions_qc_id_foreign` FOREIGN KEY (`qc_id`) REFERENCES `question_categories` (`qc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for question_answers
-- ----------------------------
DROP TABLE IF EXISTS `question_answers`;
CREATE TABLE `question_answers` (
  `qa_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `q_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`qa_id`),
  KEY `question_answers_q_id_foreign` (`q_id`),
  KEY `question_answers_spi_id_foreign` (`spi_id`),
  CONSTRAINT `question_answers_q_id_foreign` FOREIGN KEY (`q_id`) REFERENCES `questions` (`q_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question_answers_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of question_answers
-- ----------------------------

-- ----------------------------
-- Table structure for question_categories
-- ----------------------------
DROP TABLE IF EXISTS `question_categories`;
CREATE TABLE `question_categories` (
  `qc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`qc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of question_categories
-- ----------------------------

-- ----------------------------
-- Table structure for references
-- ----------------------------
DROP TABLE IF EXISTS `references`;
CREATE TABLE `references` (
  `reference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reference_id`),
  KEY `references_spi_id_foreign` (`spi_id`),
  CONSTRAINT `references_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of references
-- ----------------------------

-- ----------------------------
-- Table structure for reference_contact_numbers
-- ----------------------------
DROP TABLE IF EXISTS `reference_contact_numbers`;
CREATE TABLE `reference_contact_numbers` (
  `reference_num_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int(10) unsigned NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reference_num_id`),
  KEY `reference_contact_numbers_reference_id_foreign` (`reference_id`),
  CONSTRAINT `reference_contact_numbers_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `references` (`reference_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of reference_contact_numbers
-- ----------------------------

-- ----------------------------
-- Table structure for regions
-- ----------------------------
DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `reg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `regions_country_id_foreign` (`country_id`),
  CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of regions
-- ----------------------------

-- ----------------------------
-- Table structure for registered_users
-- ----------------------------
DROP TABLE IF EXISTS `registered_users`;
CREATE TABLE `registered_users` (
  `ru_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `date_created` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ru_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of registered_users
-- ----------------------------

-- ----------------------------
-- Table structure for reg_queueing_departments
-- ----------------------------
DROP TABLE IF EXISTS `reg_queueing_departments`;
CREATE TABLE `reg_queueing_departments` (
  `rqd_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_reg` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rqd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of reg_queueing_departments
-- ----------------------------

-- ----------------------------
-- Table structure for relationship
-- ----------------------------
DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `rel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relationship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of relationship
-- ----------------------------

-- ----------------------------
-- Table structure for replies
-- ----------------------------
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies` (
  `reply_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci,
  `comment_id` int(11) DEFAULT NULL,
  `ssi_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of replies
-- ----------------------------
INSERT INTO `replies` VALUES ('30', 'this is it...', '2', '17', null, '2019-10-30 06:10:24', '2019-10-30 06:10:24');
INSERT INTO `replies` VALUES ('31', 'apply now!', '1', '17', null, '2019-10-30 07:02:24', '2019-10-30 07:02:24');
INSERT INTO `replies` VALUES ('32', 'please translate, I can\'t understand...', '3', '17', null, '2019-10-30 07:02:49', '2019-10-30 07:02:49');
INSERT INTO `replies` VALUES ('33', 'fdsfsfs', '1', '16', null, '2019-11-28 07:52:08', '2019-11-28 07:52:08');

-- ----------------------------
-- Table structure for requirements
-- ----------------------------
DROP TABLE IF EXISTS `requirements`;
CREATE TABLE `requirements` (
  `req_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `rl_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`req_id`),
  KEY `requirements_rl_id_foreign` (`rl_id`),
  KEY `requirements_spi_id_foreign` (`spi_id`),
  CONSTRAINT `requirements_rl_id_foreign` FOREIGN KEY (`rl_id`) REFERENCES `requirements_list` (`rl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `requirements_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of requirements
-- ----------------------------

-- ----------------------------
-- Table structure for requirements_list
-- ----------------------------
DROP TABLE IF EXISTS `requirements_list`;
CREATE TABLE `requirements_list` (
  `rl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `requirements` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of requirements_list
-- ----------------------------

-- ----------------------------
-- Table structure for requirement_file_paths
-- ----------------------------
DROP TABLE IF EXISTS `requirement_file_paths`;
CREATE TABLE `requirement_file_paths` (
  `req_fp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `req_id` int(10) unsigned NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`req_fp_id`),
  KEY `requirement_file_paths_req_id_foreign` (`req_id`),
  CONSTRAINT `requirement_file_paths_req_id_foreign` FOREIGN KEY (`req_id`) REFERENCES `requirements` (`req_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of requirement_file_paths
-- ----------------------------

-- ----------------------------
-- Table structure for scholarship
-- ----------------------------
DROP TABLE IF EXISTS `scholarship`;
CREATE TABLE `scholarship` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssi_id` int(10) unsigned NOT NULL,
  `sl_id` int(10) unsigned NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `scholarship_ssi_id_foreign` (`ssi_id`),
  KEY `scholarship_sl_id_foreign` (`sl_id`),
  CONSTRAINT `scholarship_sl_id_foreign` FOREIGN KEY (`sl_id`) REFERENCES `scholarship_list` (`sl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scholarship_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of scholarship
-- ----------------------------

-- ----------------------------
-- Table structure for scholarship_list
-- ----------------------------
DROP TABLE IF EXISTS `scholarship_list`;
CREATE TABLE `scholarship_list` (
  `sl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scholarship_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of scholarship_list
-- ----------------------------

-- ----------------------------
-- Table structure for school_lists
-- ----------------------------
DROP TABLE IF EXISTS `school_lists`;
CREATE TABLE `school_lists` (
  `sl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of school_lists
-- ----------------------------

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `details` text,
  `year_start` varchar(255) DEFAULT NULL,
  `year_end` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', '16', 'DWD Lend a Hand', 'Volunteer Worker', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis cupiditate veniam, earum aspernatur hic. Placeat consequatur possimus corporis quam ea velit.', '2014', '2015', '2019-11-28 09:38:22', '2019-11-28 09:38:24');
INSERT INTO `services` VALUES ('2', '16', 'Youth Eucharistic Congress', 'Organizer', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis cupiditate veniam, earum aspernatur hic. Placeat consequatur possimus corporis quam ea velit.', '2016', '2017', '2019-11-28 09:39:25', '2019-11-28 09:39:27');

-- ----------------------------
-- Table structure for shift_history
-- ----------------------------
DROP TABLE IF EXISTS `shift_history`;
CREATE TABLE `shift_history` (
  `sh_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sp_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sh_id`),
  KEY `shift_history_sp_id_foreign` (`sp_id`),
  CONSTRAINT `shift_history_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `stud_program` (`sp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shift_history
-- ----------------------------

-- ----------------------------
-- Table structure for siblings
-- ----------------------------
DROP TABLE IF EXISTS `siblings`;
CREATE TABLE `siblings` (
  `sib_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stud_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sib_id`),
  KEY `siblings_stud_id_foreign` (`stud_id`),
  KEY `siblings_spi_id_foreign` (`spi_id`),
  CONSTRAINT `siblings_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `siblings_stud_id_foreign` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of siblings
-- ----------------------------

-- ----------------------------
-- Table structure for skills
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of skills
-- ----------------------------
INSERT INTO `skills` VALUES ('1', 'Programming/Application Development', null, null);
INSERT INTO `skills` VALUES ('2', 'Project Management', '2019-11-27 15:54:01', '2019-11-27 15:54:01');
INSERT INTO `skills` VALUES ('3', 'Help Desk/Technical Support', '2019-11-27 15:54:09', '2019-11-27 15:54:09');
INSERT INTO `skills` VALUES ('4', 'Web Development', '2019-11-27 15:54:17', '2019-11-27 15:54:17');
INSERT INTO `skills` VALUES ('5', 'Database Administration', '2019-11-27 15:54:24', '2019-11-27 15:54:24');
INSERT INTO `skills` VALUES ('6', 'Security/Compliance Governance', '2019-11-27 15:54:32', '2019-11-27 15:54:32');
INSERT INTO `skills` VALUES ('7', 'Business Intelligence Analytics', '2019-11-27 15:54:39', '2019-11-27 15:54:39');
INSERT INTO `skills` VALUES ('8', 'Systems Analyst', '2019-11-27 15:54:50', '2019-11-27 15:54:50');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stud_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stud_id`),
  KEY `student_spi_id_foreign` (`spi_id`),
  CONSTRAINT `student_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for student_enrollment_stat
-- ----------------------------
DROP TABLE IF EXISTS `student_enrollment_stat`;
CREATE TABLE `student_enrollment_stat` (
  `ses_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssi_id` int(10) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dated` date NOT NULL,
  `actions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `student_enrollment_stat_ssi_id_foreign` (`ssi_id`),
  CONSTRAINT `student_enrollment_stat_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of student_enrollment_stat
-- ----------------------------

-- ----------------------------
-- Table structure for student_phone
-- ----------------------------
DROP TABLE IF EXISTS `student_phone`;
CREATE TABLE `student_phone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_id` int(10) unsigned NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_phone_phone_id_foreign` (`phone_id`),
  KEY `student_phone_spi_id_foreign` (`spi_id`),
  CONSTRAINT `student_phone_phone_id_foreign` FOREIGN KEY (`phone_id`) REFERENCES `phone_numbers` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_phone_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of student_phone
-- ----------------------------

-- ----------------------------
-- Table structure for stud_grade
-- ----------------------------
DROP TABLE IF EXISTS `stud_grade`;
CREATE TABLE `stud_grade` (
  `sg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prelim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `midterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefinal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `se_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sg_id`),
  KEY `stud_grade_se_id_foreign` (`se_id`),
  CONSTRAINT `stud_grade_se_id_foreign` FOREIGN KEY (`se_id`) REFERENCES `subject_enrolled` (`se_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_grade
-- ----------------------------

-- ----------------------------
-- Table structure for stud_image
-- ----------------------------
DROP TABLE IF EXISTS `stud_image`;
CREATE TABLE `stud_image` (
  `simg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`simg_id`),
  KEY `stud_image_spi_id_foreign` (`spi_id`),
  CONSTRAINT `stud_image_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_image
-- ----------------------------

-- ----------------------------
-- Table structure for stud_per_info
-- ----------------------------
DROP TABLE IF EXISTS `stud_per_info`;
CREATE TABLE `stud_per_info` (
  `spi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cit_id` int(10) unsigned NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civ_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`spi_id`),
  KEY `stud_per_info_cit_id_foreign` (`cit_id`),
  CONSTRAINT `stud_per_info_cit_id_foreign` FOREIGN KEY (`cit_id`) REFERENCES `citizenship` (`cit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_per_info
-- ----------------------------

-- ----------------------------
-- Table structure for stud_program
-- ----------------------------
DROP TABLE IF EXISTS `stud_program`;
CREATE TABLE `stud_program` (
  `sp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pl_id` int(10) unsigned NOT NULL,
  `ssi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `stud_program_pl_id_foreign` (`pl_id`),
  KEY `stud_program_ssi_id_foreign` (`ssi_id`),
  CONSTRAINT `stud_program_pl_id_foreign` FOREIGN KEY (`pl_id`) REFERENCES `program_list` (`pl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stud_program_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_program
-- ----------------------------

-- ----------------------------
-- Table structure for stud_prog_taken
-- ----------------------------
DROP TABLE IF EXISTS `stud_prog_taken`;
CREATE TABLE `stud_prog_taken` (
  `spth_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssi_id` int(10) unsigned NOT NULL,
  `stat_id` int(10) unsigned NOT NULL,
  `pl_id` int(10) unsigned NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`spth_id`),
  KEY `stud_prog_taken_ssi_id_foreign` (`ssi_id`),
  KEY `stud_prog_taken_stat_id_foreign` (`stat_id`),
  KEY `stud_prog_taken_pl_id_foreign` (`pl_id`),
  CONSTRAINT `stud_prog_taken_pl_id_foreign` FOREIGN KEY (`pl_id`) REFERENCES `program_list` (`pl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stud_prog_taken_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stud_prog_taken_stat_id_foreign` FOREIGN KEY (`stat_id`) REFERENCES `stud_stat_list` (`stat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_prog_taken
-- ----------------------------

-- ----------------------------
-- Table structure for stud_sch_info
-- ----------------------------
DROP TABLE IF EXISTS `stud_sch_info`;
CREATE TABLE `stud_sch_info` (
  `ssi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acct_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usn_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_ed_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `st_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ssi_id`),
  KEY `stud_sch_info_spi_id_foreign` (`spi_id`),
  KEY `stud_sch_info_st_id_foreign` (`st_id`),
  CONSTRAINT `stud_sch_info_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stud_sch_info_st_id_foreign` FOREIGN KEY (`st_id`) REFERENCES `stud_type` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_sch_info
-- ----------------------------

-- ----------------------------
-- Table structure for stud_stat_list
-- ----------------------------
DROP TABLE IF EXISTS `stud_stat_list`;
CREATE TABLE `stud_stat_list` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_stat_list
-- ----------------------------

-- ----------------------------
-- Table structure for stud_subject_logs
-- ----------------------------
DROP TABLE IF EXISTS `stud_subject_logs`;
CREATE TABLE `stud_subject_logs` (
  `stud_sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `se_id` int(10) unsigned NOT NULL,
  `ssi_id` int(10) unsigned NOT NULL,
  `stud_sub_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stud_sub_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stud_sub_remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stud_sub_id`),
  KEY `stud_subject_logs_se_id_foreign` (`se_id`),
  KEY `stud_subject_logs_ssi_id_foreign` (`ssi_id`),
  CONSTRAINT `stud_subject_logs_se_id_foreign` FOREIGN KEY (`se_id`) REFERENCES `subject_enrolled` (`se_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stud_subject_logs_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_subject_logs
-- ----------------------------

-- ----------------------------
-- Table structure for stud_type
-- ----------------------------
DROP TABLE IF EXISTS `stud_type`;
CREATE TABLE `stud_type` (
  `st_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stud_type
-- ----------------------------

-- ----------------------------
-- Table structure for subject_enrolled
-- ----------------------------
DROP TABLE IF EXISTS `subject_enrolled`;
CREATE TABLE `subject_enrolled` (
  `se_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssi_id` int(10) unsigned NOT NULL,
  `ses_id` int(10) unsigned DEFAULT NULL,
  `ss_id` int(11) NOT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of subject_enrolled
-- ----------------------------

-- ----------------------------
-- Table structure for subject_enrolled_status
-- ----------------------------
DROP TABLE IF EXISTS `subject_enrolled_status`;
CREATE TABLE `subject_enrolled_status` (
  `ses_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of subject_enrolled_status
-- ----------------------------

-- ----------------------------
-- Table structure for s_bh_address
-- ----------------------------
DROP TABLE IF EXISTS `s_bh_address`;
CREATE TABLE `s_bh_address` (
  `sbha_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `land_lord` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sbha_id`),
  KEY `s_bh_address_spi_id_foreign` (`spi_id`),
  KEY `s_bh_address_add_id_foreign` (`add_id`),
  CONSTRAINT `s_bh_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `s_bh_address_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_bh_address
-- ----------------------------

-- ----------------------------
-- Table structure for s_bh_contact
-- ----------------------------
DROP TABLE IF EXISTS `s_bh_contact`;
CREATE TABLE `s_bh_contact` (
  `sbhc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_cell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sbhc_id`),
  KEY `s_bh_contact_spi_id_foreign` (`spi_id`),
  CONSTRAINT `s_bh_contact_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_bh_contact
-- ----------------------------

-- ----------------------------
-- Table structure for s_img
-- ----------------------------
DROP TABLE IF EXISTS `s_img`;
CREATE TABLE `s_img` (
  `si_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`si_id`),
  KEY `s_img_spi_id_foreign` (`spi_id`),
  CONSTRAINT `s_img_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_img
-- ----------------------------

-- ----------------------------
-- Table structure for s_main_address
-- ----------------------------
DROP TABLE IF EXISTS `s_main_address`;
CREATE TABLE `s_main_address` (
  `sma_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `address_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sma_id`),
  KEY `s_main_address_spi_id_foreign` (`spi_id`),
  KEY `s_main_address_add_id_foreign` (`add_id`),
  CONSTRAINT `s_main_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `s_main_address_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_main_address
-- ----------------------------

-- ----------------------------
-- Table structure for s_main_contact
-- ----------------------------
DROP TABLE IF EXISTS `s_main_contact`;
CREATE TABLE `s_main_contact` (
  `smc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_cell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`smc_id`),
  KEY `s_main_contact_spi_id_foreign` (`spi_id`),
  CONSTRAINT `s_main_contact_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of s_main_contact
-- ----------------------------

-- ----------------------------
-- Table structure for telephone_numbers
-- ----------------------------
DROP TABLE IF EXISTS `telephone_numbers`;
CREATE TABLE `telephone_numbers` (
  `telephone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `telephone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`telephone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of telephone_numbers
-- ----------------------------

-- ----------------------------
-- Table structure for trainings
-- ----------------------------
DROP TABLE IF EXISTS `trainings`;
CREATE TABLE `trainings` (
  `training_id` int(11) NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) DEFAULT NULL,
  `training` varchar(255) DEFAULT NULL,
  `date_held` datetime DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trainings
-- ----------------------------
INSERT INTO `trainings` VALUES ('1', '16', 'Equela Bootcamp', '2017-06-14 13:18:46', 'ACLC Butuan Campus', '2019-11-27 13:18:58', '2019-11-27 13:19:01');
INSERT INTO `trainings` VALUES ('2', '16', 'Computer Security Training', '2019-01-08 13:19:17', 'Caraga State University Campus', '2019-11-27 13:19:24', '2019-11-27 13:19:29');

-- ----------------------------
-- Table structure for trans_history
-- ----------------------------
DROP TABLE IF EXISTS `trans_history`;
CREATE TABLE `trans_history` (
  `th_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsible` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registered_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pl_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`th_id`),
  KEY `trans_history_pl_id_foreign` (`pl_id`),
  CONSTRAINT `trans_history_pl_id_foreign` FOREIGN KEY (`pl_id`) REFERENCES `program_list` (`pl_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of trans_history
-- ----------------------------

-- ----------------------------
-- Table structure for uncredited_subjects
-- ----------------------------
DROP TABLE IF EXISTS `uncredited_subjects`;
CREATE TABLE `uncredited_subjects` (
  `ucs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cr_id` int(10) unsigned DEFAULT NULL,
  `hss_id` int(10) unsigned DEFAULT NULL,
  `ssi_id` int(10) unsigned NOT NULL,
  `subj_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subj_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subj_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subj_credit_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subj_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ucs_id`),
  KEY `uncredited_subjects_cr_id_foreign` (`cr_id`),
  KEY `uncredited_subjects_hss_id_foreign` (`hss_id`),
  KEY `uncredited_subjects_ssi_id_foreign` (`ssi_id`),
  CONSTRAINT `uncredited_subjects_cr_id_foreign` FOREIGN KEY (`cr_id`) REFERENCES `college_record` (`cr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uncredited_subjects_hss_id_foreign` FOREIGN KEY (`hss_id`) REFERENCES `hschool_student` (`hss_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uncredited_subjects_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of uncredited_subjects
-- ----------------------------

-- ----------------------------
-- Table structure for uncredited_subject_grades
-- ----------------------------
DROP TABLE IF EXISTS `uncredited_subject_grades`;
CREATE TABLE `uncredited_subject_grades` (
  `sg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucs_id` int(10) unsigned NOT NULL,
  `gen_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sg_id`),
  KEY `uncredited_subject_grades_ucs_id_foreign` (`ucs_id`),
  CONSTRAINT `uncredited_subject_grades_ucs_id_foreign` FOREIGN KEY (`ucs_id`) REFERENCES `uncredited_subjects` (`ucs_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of uncredited_subject_grades
-- ----------------------------

-- ----------------------------
-- Table structure for updates_monitors
-- ----------------------------
DROP TABLE IF EXISTS `updates_monitors`;
CREATE TABLE `updates_monitors` (
  `update_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssi_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of updates_monitors
-- ----------------------------
INSERT INTO `updates_monitors` VALUES ('1', 'Updated profile picture', '16', null, '2019-08-14 16:07:19', '2019-08-14 16:07:21');
INSERT INTO `updates_monitors` VALUES ('2', 'Updated Bio Data', '17', null, '2019-08-15 10:24:14', '2019-08-15 10:24:17');

-- ----------------------------
-- Table structure for usage_status
-- ----------------------------
DROP TABLE IF EXISTS `usage_status`;
CREATE TABLE `usage_status` (
  `us_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pl_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`us_id`),
  KEY `usage_status_pl_id_foreign` (`pl_id`),
  CONSTRAINT `usage_status_pl_id_foreign` FOREIGN KEY (`pl_id`) REFERENCES `program_list` (`pl_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of usage_status
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Leone', 'leone@gmail.com', null, '$2y$10$Cp7HBkDfqLBD3SKhcBMEfOm3cqOWZYsHl4K1JYIncGIxEIy1pBLam', null, '2019-09-18 00:08:14', '2019-09-18 00:08:14');

-- ----------------------------
-- Table structure for vocational_record
-- ----------------------------
DROP TABLE IF EXISTS `vocational_record`;
CREATE TABLE `vocational_record` (
  `vr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `sl_id` int(10) unsigned NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_graduated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_honor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`vr_id`),
  KEY `vocational_record_spi_id_foreign` (`spi_id`),
  KEY `vocational_record_sl_id_foreign` (`sl_id`),
  CONSTRAINT `vocational_record_sl_id_foreign` FOREIGN KEY (`sl_id`) REFERENCES `school_lists` (`sl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vocational_record_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vocational_record
-- ----------------------------

-- ----------------------------
-- Table structure for vocational_record_address
-- ----------------------------
DROP TABLE IF EXISTS `vocational_record_address`;
CREATE TABLE `vocational_record_address` (
  `vs_add_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vr_id` int(10) unsigned NOT NULL,
  `add_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`vs_add_id`),
  KEY `vocational_record_address_vr_id_foreign` (`vr_id`),
  KEY `vocational_record_address_add_id_foreign` (`add_id`),
  CONSTRAINT `vocational_record_address_add_id_foreign` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vocational_record_address_vr_id_foreign` FOREIGN KEY (`vr_id`) REFERENCES `vocational_record` (`vr_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vocational_record_address
-- ----------------------------

-- ----------------------------
-- Table structure for volunters
-- ----------------------------
DROP TABLE IF EXISTS `volunters`;
CREATE TABLE `volunters` (
  `volunter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`volunter_id`),
  KEY `volunters_spi_id_foreign` (`spi_id`),
  CONSTRAINT `volunters_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of volunters
-- ----------------------------

-- ----------------------------
-- Table structure for work_experience
-- ----------------------------
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE `work_experience` (
  `we_id` int(11) NOT NULL AUTO_INCREMENT,
  `ssi_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `year_start` varchar(255) DEFAULT NULL,
  `year_end` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`we_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of work_experience
-- ----------------------------
INSERT INTO `work_experience` VALUES ('1', '16', 'Procter & Gamble Philippines', 'Programmer', 'Makati City', '2015', '2017', '2019-11-28 09:12:33', '2019-11-28 09:12:35');
INSERT INTO `work_experience` VALUES ('2', '16', 'Johnson & Johnsons', 'Database Administrator', 'Los Angeles, California USA', '2013', '2014', '2019-11-28 09:14:50', '2019-11-28 09:14:52');

-- ----------------------------
-- Table structure for work_experiences
-- ----------------------------
DROP TABLE IF EXISTS `work_experiences`;
CREATE TABLE `work_experiences` (
  `work_exp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spi_id` int(10) unsigned NOT NULL,
  `years_of_exp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`work_exp_id`),
  KEY `work_experiences_spi_id_foreign` (`spi_id`),
  CONSTRAINT `work_experiences_spi_id_foreign` FOREIGN KEY (`spi_id`) REFERENCES `stud_per_info` (`spi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of work_experiences
-- ----------------------------

-- ----------------------------
-- Table structure for year
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year` (
  `y_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sch_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_stat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`y_id`),
  KEY `year_ssi_id_foreign` (`ssi_id`),
  CONSTRAINT `year_ssi_id_foreign` FOREIGN KEY (`ssi_id`) REFERENCES `stud_sch_info` (`ssi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of year
-- ----------------------------
