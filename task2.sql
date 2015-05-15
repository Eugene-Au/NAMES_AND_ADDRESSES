/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : task2

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-05-15 13:11:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `names_addresses`
-- ----------------------------
DROP TABLE IF EXISTS `names_addresses`;
CREATE TABLE `names_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred` int(5) DEFAULT NULL COMMENT '1=true,   0=false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of names_addresses
-- ----------------------------
INSERT INTO `names_addresses` VALUES ('1', 'Dean', ' 1/663 Victoria Street', '0417584616', '0');
INSERT INTO `names_addresses` VALUES ('2', 'Dean', '800 High Street', '0398988877', '1');
INSERT INTO `names_addresses` VALUES ('3', 'James', '54 Builder Street', '0284744888', '1');
INSERT INTO `names_addresses` VALUES ('4', 'Mary', '45 Ace Drive', '0398779876', '1');
INSERT INTO `names_addresses` VALUES ('5', 'Mary', '23 Chelty Court', '0376543211', '0');
INSERT INTO `names_addresses` VALUES ('6', 'Michelle', '22 Severn Street', null, '1');
INSERT INTO `names_addresses` VALUES ('7', 'David', '12 Princess St', '0398598787', '0');
INSERT INTO `names_addresses` VALUES ('8', 'David', '4 Gold Drive', '0398889888', '1');
INSERT INTO `names_addresses` VALUES ('9', 'David', '24 Turtle Cove', '0354556554', '1');
