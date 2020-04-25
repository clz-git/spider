/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : spider

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-04-26 00:58:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) NOT NULL,
  `grade_url` varchar(255) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('31', '小班', 'https://fudao.qq.com/grade/8001/', '2020-04-25');
INSERT INTO `grade` VALUES ('32', '中班', 'https://fudao.qq.com/grade/8002/', '2020-04-25');
INSERT INTO `grade` VALUES ('33', '大班', 'https://fudao.qq.com/grade/8003/', '2020-04-25');
INSERT INTO `grade` VALUES ('34', '一年级', 'https://fudao.qq.com/grade/7001/', '2020-04-25');
INSERT INTO `grade` VALUES ('35', '二年级', 'https://fudao.qq.com/grade/7002/', '2020-04-25');
INSERT INTO `grade` VALUES ('36', '三年级', 'https://fudao.qq.com/grade/7003/', '2020-04-25');
INSERT INTO `grade` VALUES ('37', '四年级', 'https://fudao.qq.com/grade/7004/', '2020-04-25');
INSERT INTO `grade` VALUES ('38', '五年级', 'https://fudao.qq.com/grade/7005/', '2020-04-25');
INSERT INTO `grade` VALUES ('39', '六年级', 'https://fudao.qq.com/grade/7006/', '2020-04-25');
INSERT INTO `grade` VALUES ('40', '初一', 'https://fudao.qq.com/grade/6001/', '2020-04-25');
INSERT INTO `grade` VALUES ('41', '初二', 'https://fudao.qq.com/grade/6002/', '2020-04-25');
INSERT INTO `grade` VALUES ('42', '初三', 'https://fudao.qq.com/grade/6003/', '2020-04-25');
INSERT INTO `grade` VALUES ('43', '高一', 'https://fudao.qq.com/grade/5001/', '2020-04-25');
INSERT INTO `grade` VALUES ('44', '高二', 'https://fudao.qq.com/grade/5002/', '2020-04-25');
INSERT INTO `grade` VALUES ('45', '高三', 'https://fudao.qq.com/grade/5003/', '2020-04-25');
INSERT INTO `grade` VALUES ('79', '小班', 'https://fudao.qq.com/grade/8001/', '2020-04-26');
INSERT INTO `grade` VALUES ('80', '中班', 'https://fudao.qq.com/grade/8002/', '2020-04-26');
INSERT INTO `grade` VALUES ('81', '大班', 'https://fudao.qq.com/grade/8003/', '2020-04-26');
INSERT INTO `grade` VALUES ('82', '一年级', 'https://fudao.qq.com/grade/7001/', '2020-04-26');
INSERT INTO `grade` VALUES ('83', '二年级', 'https://fudao.qq.com/grade/7002/', '2020-04-26');
INSERT INTO `grade` VALUES ('84', '三年级', 'https://fudao.qq.com/grade/7003/', '2020-04-26');
INSERT INTO `grade` VALUES ('85', '四年级', 'https://fudao.qq.com/grade/7004/', '2020-04-26');
INSERT INTO `grade` VALUES ('86', '五年级', 'https://fudao.qq.com/grade/7005/', '2020-04-26');
INSERT INTO `grade` VALUES ('87', '六年级', 'https://fudao.qq.com/grade/7006/', '2020-04-26');
INSERT INTO `grade` VALUES ('88', '初一', 'https://fudao.qq.com/grade/6001/', '2020-04-26');
INSERT INTO `grade` VALUES ('89', '初二', 'https://fudao.qq.com/grade/6002/', '2020-04-26');
INSERT INTO `grade` VALUES ('90', '初三', 'https://fudao.qq.com/grade/6003/', '2020-04-26');
INSERT INTO `grade` VALUES ('91', '高一', 'https://fudao.qq.com/grade/5001/', '2020-04-26');
INSERT INTO `grade` VALUES ('92', '高二', 'https://fudao.qq.com/grade/5002/', '2020-04-26');
INSERT INTO `grade` VALUES ('93', '高三', 'https://fudao.qq.com/grade/5003/', '2020-04-26');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `subject_url` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `grade_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('72', '讲座', 'https://fudao.qq.com/grade/8001/subject/6010/', '2020-04-26', '小班');
INSERT INTO `subject` VALUES ('73', '讲座', 'https://fudao.qq.com/grade/8002/subject/6010/', '2020-04-26', '中班');
INSERT INTO `subject` VALUES ('74', '讲座', 'https://fudao.qq.com/grade/8003/subject/6010/', '2020-04-26', '大班');
INSERT INTO `subject` VALUES ('75', '语文', 'https://fudao.qq.com/grade/7001/subject/6001/', '2020-04-26', '一年级');
INSERT INTO `subject` VALUES ('76', '数学', 'https://fudao.qq.com/grade/7001/subject/6002/', '2020-04-26', '一年级');
INSERT INTO `subject` VALUES ('77', '英语', 'https://fudao.qq.com/grade/7001/subject/6005/', '2020-04-26', '一年级');
INSERT INTO `subject` VALUES ('78', '讲座', 'https://fudao.qq.com/grade/7001/subject/6010/', '2020-04-26', '一年级');
INSERT INTO `subject` VALUES ('79', '语文', 'https://fudao.qq.com/grade/7002/subject/6001/', '2020-04-26', '二年级');
INSERT INTO `subject` VALUES ('80', '数学', 'https://fudao.qq.com/grade/7002/subject/6002/', '2020-04-26', '二年级');
INSERT INTO `subject` VALUES ('81', '英语', 'https://fudao.qq.com/grade/7002/subject/6005/', '2020-04-26', '二年级');
INSERT INTO `subject` VALUES ('82', '讲座', 'https://fudao.qq.com/grade/7002/subject/6010/', '2020-04-26', '二年级');
INSERT INTO `subject` VALUES ('83', '语文', 'https://fudao.qq.com/grade/7003/subject/6001/', '2020-04-26', '三年级');
INSERT INTO `subject` VALUES ('84', '数学', 'https://fudao.qq.com/grade/7003/subject/6002/', '2020-04-26', '三年级');
INSERT INTO `subject` VALUES ('85', '英语', 'https://fudao.qq.com/grade/7003/subject/6005/', '2020-04-26', '三年级');
INSERT INTO `subject` VALUES ('86', '讲座', 'https://fudao.qq.com/grade/7003/subject/6010/', '2020-04-26', '三年级');
INSERT INTO `subject` VALUES ('87', '编程', 'https://fudao.qq.com/grade/7003/subject/7057/', '2020-04-26', '三年级');
INSERT INTO `subject` VALUES ('88', '科学', 'https://fudao.qq.com/grade/7003/subject/7058/', '2020-04-26', '三年级');
INSERT INTO `subject` VALUES ('89', '语文', 'https://fudao.qq.com/grade/7004/subject/6001/', '2020-04-26', '四年级');
INSERT INTO `subject` VALUES ('90', '数学', 'https://fudao.qq.com/grade/7004/subject/6002/', '2020-04-26', '四年级');
INSERT INTO `subject` VALUES ('91', '英语', 'https://fudao.qq.com/grade/7004/subject/6005/', '2020-04-26', '四年级');
INSERT INTO `subject` VALUES ('92', '讲座', 'https://fudao.qq.com/grade/7004/subject/6010/', '2020-04-26', '四年级');
INSERT INTO `subject` VALUES ('93', '编程', 'https://fudao.qq.com/grade/7004/subject/7057/', '2020-04-26', '四年级');
INSERT INTO `subject` VALUES ('94', '科学', 'https://fudao.qq.com/grade/7004/subject/7058/', '2020-04-26', '四年级');
INSERT INTO `subject` VALUES ('95', '语文', 'https://fudao.qq.com/grade/7005/subject/6001/', '2020-04-26', '五年级');
INSERT INTO `subject` VALUES ('96', '数学', 'https://fudao.qq.com/grade/7005/subject/6002/', '2020-04-26', '五年级');
INSERT INTO `subject` VALUES ('97', '英语', 'https://fudao.qq.com/grade/7005/subject/6005/', '2020-04-26', '五年级');
INSERT INTO `subject` VALUES ('98', '讲座', 'https://fudao.qq.com/grade/7005/subject/6010/', '2020-04-26', '五年级');
INSERT INTO `subject` VALUES ('99', '编程', 'https://fudao.qq.com/grade/7005/subject/7057/', '2020-04-26', '五年级');
INSERT INTO `subject` VALUES ('100', '科学', 'https://fudao.qq.com/grade/7005/subject/7058/', '2020-04-26', '五年级');
INSERT INTO `subject` VALUES ('101', '语文', 'https://fudao.qq.com/grade/7006/subject/6001/', '2020-04-26', '六年级');
INSERT INTO `subject` VALUES ('102', '数学', 'https://fudao.qq.com/grade/7006/subject/6002/', '2020-04-26', '六年级');
INSERT INTO `subject` VALUES ('103', '英语', 'https://fudao.qq.com/grade/7006/subject/6005/', '2020-04-26', '六年级');
INSERT INTO `subject` VALUES ('104', '讲座', 'https://fudao.qq.com/grade/7006/subject/6010/', '2020-04-26', '六年级');
INSERT INTO `subject` VALUES ('105', '语文', 'https://fudao.qq.com/grade/6001/subject/6001/', '2020-04-26', '初一');
INSERT INTO `subject` VALUES ('106', '数学', 'https://fudao.qq.com/grade/6001/subject/6002/', '2020-04-26', '初一');
INSERT INTO `subject` VALUES ('107', '英语', 'https://fudao.qq.com/grade/6001/subject/6005/', '2020-04-26', '初一');
INSERT INTO `subject` VALUES ('108', '讲座', 'https://fudao.qq.com/grade/6001/subject/6010/', '2020-04-26', '初一');
INSERT INTO `subject` VALUES ('109', '语文', 'https://fudao.qq.com/grade/6002/subject/6001/', '2020-04-26', '初二');
INSERT INTO `subject` VALUES ('110', '数学', 'https://fudao.qq.com/grade/6002/subject/6002/', '2020-04-26', '初二');
INSERT INTO `subject` VALUES ('111', '英语', 'https://fudao.qq.com/grade/6002/subject/6005/', '2020-04-26', '初二');
INSERT INTO `subject` VALUES ('112', '物理', 'https://fudao.qq.com/grade/6002/subject/6004/', '2020-04-26', '初二');
INSERT INTO `subject` VALUES ('113', '讲座', 'https://fudao.qq.com/grade/6002/subject/6010/', '2020-04-26', '初二');
INSERT INTO `subject` VALUES ('114', '语文', 'https://fudao.qq.com/grade/6003/subject/6001/', '2020-04-26', '初三');
INSERT INTO `subject` VALUES ('115', '数学', 'https://fudao.qq.com/grade/6003/subject/6002/', '2020-04-26', '初三');
INSERT INTO `subject` VALUES ('116', '英语', 'https://fudao.qq.com/grade/6003/subject/6005/', '2020-04-26', '初三');
INSERT INTO `subject` VALUES ('117', '物理', 'https://fudao.qq.com/grade/6003/subject/6004/', '2020-04-26', '初三');
INSERT INTO `subject` VALUES ('118', '化学', 'https://fudao.qq.com/grade/6003/subject/6003/', '2020-04-26', '初三');
INSERT INTO `subject` VALUES ('119', '讲座', 'https://fudao.qq.com/grade/6003/subject/6010/', '2020-04-26', '初三');
INSERT INTO `subject` VALUES ('120', '语文', 'https://fudao.qq.com/grade/5001/subject/6001/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('121', '数学', 'https://fudao.qq.com/grade/5001/subject/6002/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('122', '英语', 'https://fudao.qq.com/grade/5001/subject/6005/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('123', '物理', 'https://fudao.qq.com/grade/5001/subject/6004/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('124', '化学', 'https://fudao.qq.com/grade/5001/subject/6003/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('125', '生物', 'https://fudao.qq.com/grade/5001/subject/6006/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('126', '政治', 'https://fudao.qq.com/grade/5001/subject/6007/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('127', '地理', 'https://fudao.qq.com/grade/5001/subject/6009/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('128', '讲座', 'https://fudao.qq.com/grade/5001/subject/6010/', '2020-04-26', '高一');
INSERT INTO `subject` VALUES ('129', '语文', 'https://fudao.qq.com/grade/5002/subject/6001/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('130', '数学', 'https://fudao.qq.com/grade/5002/subject/6002/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('131', '英语', 'https://fudao.qq.com/grade/5002/subject/6005/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('132', '物理', 'https://fudao.qq.com/grade/5002/subject/6004/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('133', '化学', 'https://fudao.qq.com/grade/5002/subject/6003/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('134', '生物', 'https://fudao.qq.com/grade/5002/subject/6006/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('135', '历史', 'https://fudao.qq.com/grade/5002/subject/6008/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('136', '讲座', 'https://fudao.qq.com/grade/5002/subject/6010/', '2020-04-26', '高二');
INSERT INTO `subject` VALUES ('137', '语文', 'https://fudao.qq.com/grade/5003/subject/6001/', '2020-04-26', '高三');
INSERT INTO `subject` VALUES ('138', '数学', 'https://fudao.qq.com/grade/5003/subject/6002/', '2020-04-26', '高三');
INSERT INTO `subject` VALUES ('139', '英语', 'https://fudao.qq.com/grade/5003/subject/6005/', '2020-04-26', '高三');
INSERT INTO `subject` VALUES ('140', '物理', 'https://fudao.qq.com/grade/5003/subject/6004/', '2020-04-26', '高三');
INSERT INTO `subject` VALUES ('141', '化学', 'https://fudao.qq.com/grade/5003/subject/6003/', '2020-04-26', '高三');
INSERT INTO `subject` VALUES ('142', '生物', 'https://fudao.qq.com/grade/5003/subject/6006/', '2020-04-26', '高三');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`a`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1');
