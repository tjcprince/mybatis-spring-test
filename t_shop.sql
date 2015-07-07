/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-07-07 09:16:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_shop
-- ----------------------------
DROP TABLE IF EXISTS `t_shop`;
CREATE TABLE `t_shop` (
  `id` int(11) DEFAULT NULL,
  `shopId` varchar(255) DEFAULT NULL,
  `catId` varchar(255) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bulletin` varchar(255) DEFAULT NULL,
  `picPath` varchar(255) DEFAULT NULL,
  `itemScore` varchar(255) DEFAULT NULL,
  `serviceScore` varchar(255) DEFAULT NULL,
  `deliveryScore` varchar(255) DEFAULT NULL,
  `deExpress` varchar(255) DEFAULT NULL,
  `enableMsg` varchar(255) DEFAULT NULL,
  `msgTemp` varchar(255) DEFAULT NULL,
  `msgSign` varchar(255) DEFAULT NULL,
  `outPlatformType` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shop
-- ----------------------------
INSERT INTO `t_shop` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-07-06 10:51:46', '2015-07-07 10:51:49', '0');
