/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : spider

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-04-27 01:07:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(255) NOT NULL,
  `course_url` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '210359', 'https://fudao.qq.com//pc/course.html?course_id=210359', '数学', '初一', '2020-04-26');
INSERT INTO `course` VALUES ('2', '210361', 'https://fudao.qq.com//pc/course.html?course_id=210361', '数学', '初一', '2020-04-26');
INSERT INTO `course` VALUES ('3', '195955', 'https://fudao.qq.com//pc/course.html?course_id=195955', '数学', '初一', '2020-04-26');
INSERT INTO `course` VALUES ('4', '210123', 'https://fudao.qq.com//pc/course.html?course_id=210123', '英语', '初一', '2020-04-26');
INSERT INTO `course` VALUES ('5', '210124', 'https://fudao.qq.com//pc/course.html?course_id=210124', '英语', '初一', '2020-04-26');
INSERT INTO `course` VALUES ('6', '190458', 'https://fudao.qq.com//pc/course.html?course_id=190458', '讲座', '初一', '2020-04-26');
INSERT INTO `course` VALUES ('7', '214701', 'https://fudao.qq.com//pc/course.html?course_id=214701', '数学', '四年级', '2020-04-26');
INSERT INTO `course` VALUES ('8', '214701', 'https://fudao.qq.com//pc/course.html?course_id=214701', '数学', '五年级', '2020-04-26');
INSERT INTO `course` VALUES ('9', '214701', 'https://fudao.qq.com//pc/course.html?course_id=214701', '数学', '六年级', '2020-04-26');
INSERT INTO `course` VALUES ('10', '210357', 'https://fudao.qq.com//pc/course.html?course_id=210357', '数学', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('11', '210126', 'https://fudao.qq.com//pc/course.html?course_id=210126', '英语', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('12', '210125', 'https://fudao.qq.com//pc/course.html?course_id=210125', '英语', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('13', '211738', 'https://fudao.qq.com//pc/course.html?course_id=211738', '英语', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('14', '198859', 'https://fudao.qq.com//pc/course.html?course_id=198859', '讲座', '小班', '2020-04-26');
INSERT INTO `course` VALUES ('15', '210130', 'https://fudao.qq.com//pc/course.html?course_id=210130', '讲座', '小班', '2020-04-26');
INSERT INTO `course` VALUES ('16', '198858', 'https://fudao.qq.com//pc/course.html?course_id=198858', '讲座', '中班', '2020-04-26');
INSERT INTO `course` VALUES ('17', '210132', 'https://fudao.qq.com//pc/course.html?course_id=210132', '讲座', '中班', '2020-04-26');
INSERT INTO `course` VALUES ('18', '198857', 'https://fudao.qq.com//pc/course.html?course_id=198857', '讲座', '大班', '2020-04-26');
INSERT INTO `course` VALUES ('19', '210131', 'https://fudao.qq.com//pc/course.html?course_id=210131', '讲座', '大班', '2020-04-26');
INSERT INTO `course` VALUES ('20', '198857', 'https://fudao.qq.com//pc/course.html?course_id=198857', '讲座', '一年级', '2020-04-26');
INSERT INTO `course` VALUES ('21', '198858', 'https://fudao.qq.com//pc/course.html?course_id=198858', '讲座', '一年级', '2020-04-26');
INSERT INTO `course` VALUES ('22', '209794', 'https://fudao.qq.com//pc/course.html?course_id=209794', '讲座', '一年级', '2020-04-26');
INSERT INTO `course` VALUES ('23', '209794', 'https://fudao.qq.com//pc/course.html?course_id=209794', '讲座', '二年级', '2020-04-26');
INSERT INTO `course` VALUES ('24', '209794', 'https://fudao.qq.com//pc/course.html?course_id=209794', '讲座', '三年级', '2020-04-26');
INSERT INTO `course` VALUES ('25', '209794', 'https://fudao.qq.com//pc/course.html?course_id=209794', '讲座', '四年级', '2020-04-26');
INSERT INTO `course` VALUES ('26', '209794', 'https://fudao.qq.com//pc/course.html?course_id=209794', '讲座', '五年级', '2020-04-26');
INSERT INTO `course` VALUES ('27', '209794', 'https://fudao.qq.com//pc/course.html?course_id=209794', '讲座', '六年级', '2020-04-26');
INSERT INTO `course` VALUES ('28', '190461', 'https://fudao.qq.com//pc/course.html?course_id=190461', '讲座', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('29', '209177', 'https://fudao.qq.com//pc/course.html?course_id=209177', '讲座', '初三', '2020-04-26');
INSERT INTO `course` VALUES ('30', '207895', 'https://fudao.qq.com//pc/course.html?course_id=207895', '讲座', '高一', '2020-04-26');
INSERT INTO `course` VALUES ('31', '209180', 'https://fudao.qq.com//pc/course.html?course_id=209180', '讲座', '高一', '2020-04-26');
INSERT INTO `course` VALUES ('32', '209175', 'https://fudao.qq.com//pc/course.html?course_id=209175', '讲座', '高二', '2020-04-26');
INSERT INTO `course` VALUES ('33', '215335', 'https://fudao.qq.com//pc/course.html?course_id=215335', '科学', '三年级', '2020-04-26');
INSERT INTO `course` VALUES ('34', '215335', 'https://fudao.qq.com//pc/course.html?course_id=215335', '科学', '四年级', '2020-04-26');
INSERT INTO `course` VALUES ('35', '215335', 'https://fudao.qq.com//pc/course.html?course_id=215335', '科学', '五年级', '2020-04-26');
INSERT INTO `course` VALUES ('36', '213409', 'https://fudao.qq.com//pc/course.html?course_id=213409', '物理', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('37', '213407', 'https://fudao.qq.com//pc/course.html?course_id=213407', '物理', '初二', '2020-04-26');
INSERT INTO `course` VALUES ('38', '201667', 'https://fudao.qq.com//pc/course.html?course_id=201667', '物理', '初二', '2020-04-26');

-- ----------------------------
-- Table structure for `course_content`
-- ----------------------------
DROP TABLE IF EXISTS `course_content`;
CREATE TABLE `course_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_content_url` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course_content
-- ----------------------------
INSERT INTO `course_content` VALUES ('441', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6001/subject_system/str_sys_course_pkg_info_1_6001_9_20', '初一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('442', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6001/subject_system/str_sys_course_pkg_info_1_6001_9_12', '初一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('443', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6001/subject_system/str_sys_course_pkg_info_1_6001_9_13', '初一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('444', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6001/subject_system/str_sys_course_pkg_info_1_6001_9_14', '初一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('445', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6001/subject_system/str_sys_course_pkg_info_1_6001_9_15', '初一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('446', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6001/subject_system/str_sys_course_pkg_info_1_6001_8_0', '初一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('447', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6002/subject_system/str_sys_course_pkg_info_1_6002_9_20', '初一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('448', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6002/subject_system/str_sys_course_pkg_info_1_6002_9_12', '初一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('449', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6002/subject_system/str_sys_course_pkg_info_1_6002_9_13', '初一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('450', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6002/subject_system/str_sys_course_pkg_info_1_6002_9_14', '初一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('451', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6002/subject_system/str_sys_course_pkg_info_1_6002_9_15', '初一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('452', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6002/subject_system/str_sys_course_pkg_info_1_6002_8_0', '初一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('453', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6005/subject_system/str_sys_course_pkg_info_1_6005_9_20', '初一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('454', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6005/subject_system/str_sys_course_pkg_info_1_6005_9_12', '初一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('455', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6005/subject_system/str_sys_course_pkg_info_1_6005_9_13', '初一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('456', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6005/subject_system/str_sys_course_pkg_info_1_6005_9_14', '初一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('457', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6005/subject_system/str_sys_course_pkg_info_1_6005_9_15', '初一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('458', 'https://fudao.qq.com/pc/discover/grade/6001/subject/6005/subject_system/str_sys_course_pkg_info_1_6005_8_0', '初一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('459', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6001/subject_system/str_sys_course_pkg_info_64_6001_9_13', '一年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('460', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6001/subject_system/str_sys_course_pkg_info_64_6001_9_14', '一年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('461', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6001/subject_system/str_sys_course_pkg_info_64_6001_9_15', '一年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('462', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6001/subject_system/str_sys_course_pkg_info_128_6001_9_12', '二年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('463', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6001/subject_system/str_sys_course_pkg_info_128_6001_9_13', '二年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('464', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6001/subject_system/str_sys_course_pkg_info_128_6001_9_14', '二年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('465', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6001/subject_system/str_sys_course_pkg_info_128_6001_9_15', '二年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('466', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6001/subject_system/str_sys_course_pkg_info_256_6001_9_12', '三年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('467', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6001/subject_system/str_sys_course_pkg_info_256_6001_9_13', '三年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('468', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6001/subject_system/str_sys_course_pkg_info_256_6001_9_14', '三年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('469', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6001/subject_system/str_sys_course_pkg_info_256_6001_9_15', '三年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('470', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6001/subject_system/str_sys_course_pkg_info_256_6001_8_0', '三年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('471', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6001/subject_system/str_sys_course_pkg_info_512_6001_9_12', '四年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('472', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6001/subject_system/str_sys_course_pkg_info_512_6001_9_13', '四年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('473', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6001/subject_system/str_sys_course_pkg_info_512_6001_9_14', '四年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('474', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6001/subject_system/str_sys_course_pkg_info_512_6001_9_15', '四年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('475', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6001/subject_system/str_sys_course_pkg_info_512_6001_8_0', '四年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('476', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6001/subject_system/str_sys_course_pkg_info_1024_6001_9_12', '五年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('477', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6001/subject_system/str_sys_course_pkg_info_1024_6001_9_13', '五年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('478', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6001/subject_system/str_sys_course_pkg_info_1024_6001_9_14', '五年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('479', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6001/subject_system/str_sys_course_pkg_info_1024_6001_9_15', '五年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('480', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6001/subject_system/str_sys_course_pkg_info_1024_6001_8_0', '五年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('481', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6001/subject_system/str_sys_course_pkg_info_2048_6001_9_12', '六年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('482', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6001/subject_system/str_sys_course_pkg_info_2048_6001_9_13', '六年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('483', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6001/subject_system/str_sys_course_pkg_info_2048_6001_9_14', '六年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('484', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6001/subject_system/str_sys_course_pkg_info_2048_6001_9_15', '六年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('485', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6001/subject_system/str_sys_course_pkg_info_2048_6001_8_0', '六年级', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('486', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6001/subject_system/str_sys_course_pkg_info_2_6001_9_12', '初二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('487', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6001/subject_system/str_sys_course_pkg_info_2_6001_9_13', '初二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('488', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6001/subject_system/str_sys_course_pkg_info_2_6001_9_14', '初二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('489', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6001/subject_system/str_sys_course_pkg_info_2_6001_9_15', '初二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('490', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6001/subject_system/str_sys_course_pkg_info_2_6001_8_0', '初二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('491', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6001/subject_system/str_sys_course_pkg_info_4_6001_9_12', '初三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('492', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6001/subject_system/str_sys_course_pkg_info_4_6001_9_13', '初三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('493', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6001/subject_system/str_sys_course_pkg_info_4_6001_9_14', '初三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('494', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6001/subject_system/str_sys_course_pkg_info_4_6001_9_15', '初三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('495', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6001/subject_system/str_sys_course_pkg_info_4_6001_8_0', '初三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('496', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6001/subject_system/str_sys_course_pkg_info_8_6001_9_13', '高一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('497', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6001/subject_system/str_sys_course_pkg_info_8_6001_9_14', '高一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('498', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6001/subject_system/str_sys_course_pkg_info_8_6001_9_15', '高一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('499', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6001/subject_system/str_sys_course_pkg_info_8_6001_8_0', '高一', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('500', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6001/subject_system/str_sys_course_pkg_info_16_6001_9_13', '高二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('501', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6001/subject_system/str_sys_course_pkg_info_16_6001_9_14', '高二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('502', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6001/subject_system/str_sys_course_pkg_info_16_6001_8_0', '高二', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('503', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6001/subject_system/str_sys_course_pkg_info_32_6001_9_13', '高三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('504', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6001/subject_system/str_sys_course_pkg_info_32_6001_9_14', '高三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('505', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6001/subject_system/str_sys_course_pkg_info_32_6001_8_0', '高三', '语文', '2020-04-26');
INSERT INTO `course_content` VALUES ('506', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6002/subject_system/str_sys_course_pkg_info_64_6002_9_12', '一年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('507', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6002/subject_system/str_sys_course_pkg_info_64_6002_9_13', '一年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('508', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6002/subject_system/str_sys_course_pkg_info_64_6002_9_14', '一年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('509', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6002/subject_system/str_sys_course_pkg_info_64_6002_9_15', '一年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('510', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6002/subject_system/str_sys_course_pkg_info_64_6002_8_0', '一年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('511', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6002/subject_system/str_sys_course_pkg_info_128_6002_9_12', '二年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('512', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6002/subject_system/str_sys_course_pkg_info_128_6002_9_13', '二年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('513', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6002/subject_system/str_sys_course_pkg_info_128_6002_9_14', '二年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('514', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6002/subject_system/str_sys_course_pkg_info_128_6002_9_15', '二年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('515', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6002/subject_system/str_sys_course_pkg_info_128_6002_8_0', '二年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('516', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6002/subject_system/str_sys_course_pkg_info_256_6002_9_12', '三年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('517', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6002/subject_system/str_sys_course_pkg_info_256_6002_9_13', '三年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('518', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6002/subject_system/str_sys_course_pkg_info_256_6002_9_14', '三年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('519', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6002/subject_system/str_sys_course_pkg_info_256_6002_9_15', '三年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('520', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6002/subject_system/str_sys_course_pkg_info_256_6002_8_0', '三年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('521', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6002/subject_system/str_sys_course_pkg_info_512_6002_9_12', '四年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('522', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6002/subject_system/str_sys_course_pkg_info_512_6002_9_13', '四年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('523', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6002/subject_system/str_sys_course_pkg_info_512_6002_9_14', '四年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('524', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6002/subject_system/str_sys_course_pkg_info_512_6002_9_15', '四年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('525', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6002/subject_system/str_sys_course_pkg_info_512_6002_8_0', '四年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('526', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6002/subject_system/str_sys_course_pkg_info_1024_6002_9_12', '五年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('527', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6002/subject_system/str_sys_course_pkg_info_1024_6002_9_13', '五年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('528', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6002/subject_system/str_sys_course_pkg_info_1024_6002_9_14', '五年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('529', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6002/subject_system/str_sys_course_pkg_info_1024_6002_9_15', '五年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('530', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6002/subject_system/str_sys_course_pkg_info_1024_6002_8_0', '五年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('531', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6002/subject_system/str_sys_course_pkg_info_2048_6002_9_12', '六年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('532', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6002/subject_system/str_sys_course_pkg_info_2048_6002_9_13', '六年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('533', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6002/subject_system/str_sys_course_pkg_info_2048_6002_9_14', '六年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('534', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6002/subject_system/str_sys_course_pkg_info_2048_6002_9_15', '六年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('535', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6002/subject_system/str_sys_course_pkg_info_2048_6002_8_0', '六年级', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('536', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6002/subject_system/str_sys_course_pkg_info_2_6002_9_12', '初二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('537', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6002/subject_system/str_sys_course_pkg_info_2_6002_9_13', '初二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('538', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6002/subject_system/str_sys_course_pkg_info_2_6002_9_14', '初二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('539', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6002/subject_system/str_sys_course_pkg_info_2_6002_9_15', '初二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('540', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6002/subject_system/str_sys_course_pkg_info_2_6002_8_0', '初二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('541', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6002/subject_system/str_sys_course_pkg_info_4_6002_9_12', '初三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('542', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6002/subject_system/str_sys_course_pkg_info_4_6002_9_13', '初三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('543', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6002/subject_system/str_sys_course_pkg_info_4_6002_9_14', '初三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('544', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6002/subject_system/str_sys_course_pkg_info_4_6002_9_15', '初三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('545', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6002/subject_system/str_sys_course_pkg_info_4_6002_8_0', '初三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('546', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6002/subject_system/str_sys_course_pkg_info_8_6002_9_13', '高一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('547', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6002/subject_system/str_sys_course_pkg_info_8_6002_9_14', '高一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('548', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6002/subject_system/str_sys_course_pkg_info_8_6002_8_0', '高一', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('549', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6002/subject_system/str_sys_course_pkg_info_16_6002_9_13', '高二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('550', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6002/subject_system/str_sys_course_pkg_info_16_6002_9_14', '高二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('551', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6002/subject_system/str_sys_course_pkg_info_16_6002_8_0', '高二', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('552', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6002/subject_system/str_sys_course_pkg_info_32_6002_9_13', '高三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('553', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6002/subject_system/str_sys_course_pkg_info_32_6002_9_14', '高三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('554', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6002/subject_system/str_sys_course_pkg_info_32_6002_8_0', '高三', '数学', '2020-04-26');
INSERT INTO `course_content` VALUES ('555', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6005/subject_system/str_sys_course_pkg_info_64_6005_9_12', '一年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('556', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6005/subject_system/str_sys_course_pkg_info_64_6005_9_14', '一年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('557', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6005/subject_system/str_sys_course_pkg_info_64_6005_9_15', '一年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('558', 'https://fudao.qq.com/pc/discover/grade/7001/subject/6005/subject_system/str_sys_course_pkg_info_64_6005_8_0', '一年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('559', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6005/subject_system/str_sys_course_pkg_info_128_6005_9_12', '二年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('560', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6005/subject_system/str_sys_course_pkg_info_128_6005_9_13', '二年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('561', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6005/subject_system/str_sys_course_pkg_info_128_6005_9_14', '二年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('562', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6005/subject_system/str_sys_course_pkg_info_128_6005_9_15', '二年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('563', 'https://fudao.qq.com/pc/discover/grade/7002/subject/6005/subject_system/str_sys_course_pkg_info_128_6005_8_0', '二年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('564', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6005/subject_system/str_sys_course_pkg_info_256_6005_9_12', '三年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('565', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6005/subject_system/str_sys_course_pkg_info_256_6005_9_13', '三年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('566', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6005/subject_system/str_sys_course_pkg_info_256_6005_9_14', '三年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('567', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6005/subject_system/str_sys_course_pkg_info_256_6005_9_15', '三年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('568', 'https://fudao.qq.com/pc/discover/grade/7003/subject/6005/subject_system/str_sys_course_pkg_info_256_6005_8_0', '三年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('569', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6005/subject_system/str_sys_course_pkg_info_512_6005_9_12', '四年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('570', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6005/subject_system/str_sys_course_pkg_info_512_6005_9_13', '四年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('571', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6005/subject_system/str_sys_course_pkg_info_512_6005_9_14', '四年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('572', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6005/subject_system/str_sys_course_pkg_info_512_6005_9_15', '四年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('573', 'https://fudao.qq.com/pc/discover/grade/7004/subject/6005/subject_system/str_sys_course_pkg_info_512_6005_8_0', '四年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('574', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6005/subject_system/str_sys_course_pkg_info_1024_6005_9_12', '五年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('575', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6005/subject_system/str_sys_course_pkg_info_1024_6005_9_13', '五年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('576', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6005/subject_system/str_sys_course_pkg_info_1024_6005_9_14', '五年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('577', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6005/subject_system/str_sys_course_pkg_info_1024_6005_9_15', '五年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('578', 'https://fudao.qq.com/pc/discover/grade/7005/subject/6005/subject_system/str_sys_course_pkg_info_1024_6005_8_0', '五年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('579', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6005/subject_system/str_sys_course_pkg_info_2048_6005_9_12', '六年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('580', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6005/subject_system/str_sys_course_pkg_info_2048_6005_9_13', '六年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('581', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6005/subject_system/str_sys_course_pkg_info_2048_6005_9_14', '六年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('582', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6005/subject_system/str_sys_course_pkg_info_2048_6005_9_15', '六年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('583', 'https://fudao.qq.com/pc/discover/grade/7006/subject/6005/subject_system/str_sys_course_pkg_info_2048_6005_8_0', '六年级', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('584', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6005/subject_system/str_sys_course_pkg_info_2_6005_9_12', '初二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('585', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6005/subject_system/str_sys_course_pkg_info_2_6005_9_13', '初二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('586', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6005/subject_system/str_sys_course_pkg_info_2_6005_9_14', '初二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('587', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6005/subject_system/str_sys_course_pkg_info_2_6005_9_15', '初二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('588', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6005/subject_system/str_sys_course_pkg_info_2_6005_8_0', '初二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('589', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6005/subject_system/str_sys_course_pkg_info_4_6005_9_12', '初三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('590', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6005/subject_system/str_sys_course_pkg_info_4_6005_9_13', '初三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('591', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6005/subject_system/str_sys_course_pkg_info_4_6005_9_14', '初三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('592', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6005/subject_system/str_sys_course_pkg_info_4_6005_9_15', '初三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('593', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6005/subject_system/str_sys_course_pkg_info_4_6005_8_0', '初三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('594', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6005/subject_system/str_sys_course_pkg_info_8_6005_9_12', '高一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('595', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6005/subject_system/str_sys_course_pkg_info_8_6005_9_13', '高一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('596', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6005/subject_system/str_sys_course_pkg_info_8_6005_9_14', '高一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('597', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6005/subject_system/str_sys_course_pkg_info_8_6005_9_15', '高一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('598', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6005/subject_system/str_sys_course_pkg_info_8_6005_8_0', '高一', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('599', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6005/subject_system/str_sys_course_pkg_info_16_6005_9_12', '高二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('600', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6005/subject_system/str_sys_course_pkg_info_16_6005_9_13', '高二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('601', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6005/subject_system/str_sys_course_pkg_info_16_6005_9_14', '高二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('602', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6005/subject_system/str_sys_course_pkg_info_16_6005_9_15', '高二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('603', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6005/subject_system/str_sys_course_pkg_info_16_6005_8_0', '高二', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('604', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6005/subject_system/str_sys_course_pkg_info_32_6005_9_13', '高三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('605', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6005/subject_system/str_sys_course_pkg_info_32_6005_9_14', '高三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('606', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6005/subject_system/str_sys_course_pkg_info_32_6005_8_0', '高三', '英语', '2020-04-26');
INSERT INTO `course_content` VALUES ('607', 'https://fudao.qq.com/pc/discover/grade/7003/subject/7057/subject_system/str_sys_course_pkg_info_256_7057_8_0', '三年级', '编程', '2020-04-26');
INSERT INTO `course_content` VALUES ('608', 'https://fudao.qq.com/pc/discover/grade/7003/subject/7058/subject_system/str_sys_course_pkg_info_256_7058_8_0', '三年级', '科学', '2020-04-26');
INSERT INTO `course_content` VALUES ('609', 'https://fudao.qq.com/pc/discover/grade/7004/subject/7057/subject_system/str_sys_course_pkg_info_512_7057_8_0', '四年级', '编程', '2020-04-26');
INSERT INTO `course_content` VALUES ('610', 'https://fudao.qq.com/pc/discover/grade/7004/subject/7058/subject_system/str_sys_course_pkg_info_512_7058_8_0', '四年级', '科学', '2020-04-26');
INSERT INTO `course_content` VALUES ('611', 'https://fudao.qq.com/pc/discover/grade/7005/subject/7057/subject_system/str_sys_course_pkg_info_1024_7057_8_0', '五年级', '编程', '2020-04-26');
INSERT INTO `course_content` VALUES ('612', 'https://fudao.qq.com/pc/discover/grade/7005/subject/7058/subject_system/str_sys_course_pkg_info_1024_7058_8_0', '五年级', '科学', '2020-04-26');
INSERT INTO `course_content` VALUES ('613', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6004/subject_system/str_sys_course_pkg_info_2_6004_9_12', '初二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('614', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6004/subject_system/str_sys_course_pkg_info_2_6004_9_13', '初二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('615', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6004/subject_system/str_sys_course_pkg_info_2_6004_9_14', '初二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('616', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6004/subject_system/str_sys_course_pkg_info_2_6004_9_15', '初二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('617', 'https://fudao.qq.com/pc/discover/grade/6002/subject/6004/subject_system/str_sys_course_pkg_info_2_6004_8_0', '初二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('618', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6004/subject_system/str_sys_course_pkg_info_4_6004_9_12', '初三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('619', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6004/subject_system/str_sys_course_pkg_info_4_6004_9_13', '初三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('620', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6004/subject_system/str_sys_course_pkg_info_4_6004_9_14', '初三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('621', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6004/subject_system/str_sys_course_pkg_info_4_6004_9_15', '初三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('622', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6004/subject_system/str_sys_course_pkg_info_4_6004_8_0', '初三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('623', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6003/subject_system/str_sys_course_pkg_info_4_6003_9_12', '初三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('624', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6003/subject_system/str_sys_course_pkg_info_4_6003_9_13', '初三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('625', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6003/subject_system/str_sys_course_pkg_info_4_6003_9_14', '初三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('626', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6003/subject_system/str_sys_course_pkg_info_4_6003_9_15', '初三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('627', 'https://fudao.qq.com/pc/discover/grade/6003/subject/6003/subject_system/str_sys_course_pkg_info_4_6003_8_0', '初三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('628', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6004/subject_system/str_sys_course_pkg_info_8_6004_9_13', '高一', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('629', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6004/subject_system/str_sys_course_pkg_info_8_6004_9_14', '高一', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('630', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6004/subject_system/str_sys_course_pkg_info_8_6004_8_0', '高一', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('631', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6003/subject_system/str_sys_course_pkg_info_8_6003_9_13', '高一', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('632', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6003/subject_system/str_sys_course_pkg_info_8_6003_9_14', '高一', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('633', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6003/subject_system/str_sys_course_pkg_info_8_6003_8_0', '高一', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('634', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6006/subject_system/str_sys_course_pkg_info_8_6006_9_13', '高一', '生物', '2020-04-26');
INSERT INTO `course_content` VALUES ('635', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6006/subject_system/str_sys_course_pkg_info_8_6006_9_14', '高一', '生物', '2020-04-26');
INSERT INTO `course_content` VALUES ('636', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6006/subject_system/str_sys_course_pkg_info_8_6006_8_0', '高一', '生物', '2020-04-26');
INSERT INTO `course_content` VALUES ('637', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6007/subject_system/str_sys_course_pkg_info_8_6007_8_0', '高一', '政治', '2020-04-26');
INSERT INTO `course_content` VALUES ('638', 'https://fudao.qq.com/pc/discover/grade/5001/subject/6009/subject_system/str_sys_course_pkg_info_8_6009_8_0', '高一', '地理', '2020-04-26');
INSERT INTO `course_content` VALUES ('639', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6004/subject_system/str_sys_course_pkg_info_16_6004_9_13', '高二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('640', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6004/subject_system/str_sys_course_pkg_info_16_6004_9_14', '高二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('641', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6004/subject_system/str_sys_course_pkg_info_16_6004_8_0', '高二', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('642', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6003/subject_system/str_sys_course_pkg_info_16_6003_9_13', '高二', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('643', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6003/subject_system/str_sys_course_pkg_info_16_6003_9_14', '高二', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('644', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6003/subject_system/str_sys_course_pkg_info_16_6003_8_0', '高二', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('645', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6006/subject_system/str_sys_course_pkg_info_16_6006_9_13', '高二', '生物', '2020-04-26');
INSERT INTO `course_content` VALUES ('646', 'https://fudao.qq.com/pc/discover/grade/5002/subject/6008/subject_system/str_sys_course_pkg_info_16_6008_8_0', '高二', '历史', '2020-04-26');
INSERT INTO `course_content` VALUES ('647', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6004/subject_system/str_sys_course_pkg_info_32_6004_9_13', '高三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('648', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6004/subject_system/str_sys_course_pkg_info_32_6004_9_14', '高三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('649', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6004/subject_system/str_sys_course_pkg_info_32_6004_8_0', '高三', '物理', '2020-04-26');
INSERT INTO `course_content` VALUES ('650', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6003/subject_system/str_sys_course_pkg_info_32_6003_9_13', '高三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('651', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6003/subject_system/str_sys_course_pkg_info_32_6003_9_14', '高三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('652', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6003/subject_system/str_sys_course_pkg_info_32_6003_8_0', '高三', '化学', '2020-04-26');
INSERT INTO `course_content` VALUES ('653', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6006/subject_system/str_sys_course_pkg_info_32_6006_9_13', '高三', '生物', '2020-04-26');
INSERT INTO `course_content` VALUES ('654', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6006/subject_system/str_sys_course_pkg_info_32_6006_9_14', '高三', '生物', '2020-04-26');
INSERT INTO `course_content` VALUES ('655', 'https://fudao.qq.com/pc/discover/grade/5003/subject/6006/subject_system/str_sys_course_pkg_info_32_6006_8_0', '高三', '生物', '2020-04-26');

-- ----------------------------
-- Table structure for `course_info`
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course_info
-- ----------------------------

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
