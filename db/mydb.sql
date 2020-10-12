/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : localhost:3306
 Source Schema         : mydb

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 12/10/2020 16:07:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `account_id` int(9) NOT NULL AUTO_INCREMENT,
  `recommender_id` int(9) NULL DEFAULT NULL,
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_passwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pause_date` timestamp NULL DEFAULT NULL,
  `close_date` timestamp NULL DEFAULT NULL,
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard_no` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthdate` date NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `occupation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mailaddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zipcode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, NULL, 'taiji001', '256528', '1', '2020-09-11 09:34:38', NULL, NULL, 'zhangsanfeng', '410381194302256528', '1943-02-25', NULL, NULL, '13669351234', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (2, NULL, 'xl18z60', '190613', '1', '2020-09-11 09:34:38', NULL, NULL, 'guojing', '330682196903190613', '1969-03-19', NULL, NULL, '13338924567', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (3, 1010, 'dgbf70', '270429', '1', '2020-09-11 09:34:38', NULL, NULL, 'huangrong', '330902197108270429', '1971-08-27', NULL, NULL, '13637811357', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (4, 1005, 'mjjzh64', '041115', '1', '2020-09-11 09:34:38', NULL, NULL, 'zhangwuji', '610121198906041115', '1989-06-04', NULL, NULL, '13572952468', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (5, 1011, 'jmdxj00', '010322', '1', '2020-09-11 09:34:38', NULL, NULL, 'guofurong', '350581200201010322', '1996-01-01', NULL, NULL, '18617832562', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (6, 1011, 'ljxj90', '310346', '1', '2020-09-11 09:34:38', NULL, NULL, 'luwushuang', '320211199307310346', '1993-07-31', NULL, NULL, '13186454984', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (7, NULL, 'kxhxd20', '012115', '1', '2020-09-11 09:34:38', NULL, NULL, 'weixiaobao', '321022200010012115', '2000-10-01', NULL, NULL, '13953410078', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (8, NULL, 'kxhxd21', '012116', '1', '2020-09-11 09:34:38', NULL, NULL, 'zhangsan', '321022200010012116', '2000-10-02', NULL, NULL, '13953410079', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (9, NULL, 'kxhxd22', '012117', '1', '2020-09-11 09:34:38', NULL, NULL, 'lisi', '321022200010012117', '2000-10-03', NULL, NULL, '13953410080', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (10, NULL, 'kxhxd23', '012118', '1', '2020-09-11 09:34:38', NULL, NULL, 'wangwu', '321022200010012118', '2000-10-04', NULL, NULL, '13953410081', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (11, NULL, 'kxhxd24', '012119', '1', '2020-09-11 09:34:38', NULL, NULL, 'zhouliu', '321022200010012119', '2000-10-05', NULL, NULL, '13953410082', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `account` VALUES (12, NULL, 'kxhxd25', '012120', '1', '2020-09-11 09:34:38', NULL, NULL, 'maqi', '321022200010012120', '2000-10-06', NULL, NULL, '13953410083', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `admin_id` int(8) NOT NULL AUTO_INCREMENT,
  `admin_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolldate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (2000, 'admin', '123', 'ADMIN', '123456789', 'admin@tarena.com.cn', '2020-09-11 09:34:38');
INSERT INTO `admin_info` VALUES (3000, 'zhangfei', '123', 'ZhangFei', '123456789', 'zhangfei@tarena.com.cn', '2020-09-11 09:34:38');
INSERT INTO `admin_info` VALUES (4000, 'liubei', '123', 'LiuBei', '123456789', 'liubei@tarena.com.cn', '2020-09-11 09:34:38');
INSERT INTO `admin_info` VALUES (5000, 'caocao', '123', 'CaoCao', '123456789', 'caocao@tarena.com.cn', '2020-09-11 09:34:38');
INSERT INTO `admin_info` VALUES (6000, 'aaa', '123', 'AAA', '123456789', 'aaa@tarena.com.cn', '2020-09-11 09:34:38');
INSERT INTO `admin_info` VALUES (7000, 'bbb', '123', 'BBB', '123456789', 'bbb@tarena.com.cn', '2020-09-11 09:34:38');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `admin_id` int(8) NOT NULL,
  `role_id` int(4) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (2000, 100);
INSERT INTO `admin_role` VALUES (3000, 200);
INSERT INTO `admin_role` VALUES (4000, 300);
INSERT INTO `admin_role` VALUES (5000, 100);
INSERT INTO `admin_role` VALUES (5000, 200);
INSERT INTO `admin_role` VALUES (5000, 300);

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost`  (
  `cost_id` int(4) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_duration` int(11) NULL DEFAULT NULL,
  `base_cost` double(7, 2) NULL DEFAULT NULL,
  `unit_cost` double(7, 4) NULL DEFAULT NULL,
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startime` timestamp NULL DEFAULT NULL,
  `cost_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cost_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES (1, '5.9元套餐', 20, 5.90, 0.4000, '1', '5.9元20小时/月,超出部分0.4元/时', '2020-09-11 09:34:38', NULL, '2');
INSERT INTO `cost` VALUES (2, '6.9元套餐', 40, 6.90, 0.3000, '1', '6.9元40小时/月,超出部分0.3元/时', '2020-09-11 09:34:38', NULL, '2');
INSERT INTO `cost` VALUES (3, '8.5元套餐', 100, 8.50, 0.2000, '1', '8.5元100小时/月,超出部分0.2元/时', '2020-09-11 09:34:38', NULL, '2');
INSERT INTO `cost` VALUES (4, '10.5元套餐', 200, 10.50, 0.1000, '1', '10.5元200小时/月,超出部分0.1元/时', '2020-09-11 09:34:38', NULL, '2');
INSERT INTO `cost` VALUES (5, '计时收费', NULL, NULL, 0.5000, '1', '0.5元/时,不使用不收费', '2020-09-11 09:34:38', NULL, '3');
INSERT INTO `cost` VALUES (6, '包月', NULL, 20.00, NULL, '1', '每月20元,不限制使用时间', '2020-09-11 09:34:38', NULL, '1');
INSERT INTO `cost` VALUES (7, '计时收费', NULL, 20.00, NULL, '1', '每月30元,不限制使用时间', '2020-09-11 09:34:38', NULL, '1');
INSERT INTO `cost` VALUES (11, '帅哥套餐', NULL, NULL, 22.3300, '1', '哈哈哈', '2020-09-12 17:35:55', NULL, NULL);

-- ----------------------------
-- Table structure for module_info
-- ----------------------------
DROP TABLE IF EXISTS `module_info`;
CREATE TABLE `module_info`  (
  `module_id` int(4) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of module_info
-- ----------------------------
INSERT INTO `module_info` VALUES (1, '角色管理');
INSERT INTO `module_info` VALUES (2, '管理员');
INSERT INTO `module_info` VALUES (3, '资费管理');
INSERT INTO `module_info` VALUES (4, '账务账号');
INSERT INTO `module_info` VALUES (5, '业务账号');
INSERT INTO `module_info` VALUES (6, '账单管理');
INSERT INTO `module_info` VALUES (7, '报表');

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info`  (
  `role_id` int(4) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 601 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES (100, '管理员');
INSERT INTO `role_info` VALUES (200, '营业员');
INSERT INTO `role_info` VALUES (300, '经理');
INSERT INTO `role_info` VALUES (400, 'aaa');
INSERT INTO `role_info` VALUES (500, 'bbb');
INSERT INTO `role_info` VALUES (600, 'ccc');

-- ----------------------------
-- Table structure for role_module
-- ----------------------------
DROP TABLE IF EXISTS `role_module`;
CREATE TABLE `role_module`  (
  `role_id` int(4) NOT NULL,
  `module_id` int(4) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_module
-- ----------------------------
INSERT INTO `role_module` VALUES (100, 1);
INSERT INTO `role_module` VALUES (100, 2);
INSERT INTO `role_module` VALUES (200, 3);
INSERT INTO `role_module` VALUES (200, 4);
INSERT INTO `role_module` VALUES (200, 5);
INSERT INTO `role_module` VALUES (200, 6);
INSERT INTO `role_module` VALUES (300, 7);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `service_id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(9) NOT NULL,
  `unix_host` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `os_username` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_passwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pause_date` timestamp NULL DEFAULT NULL,
  `close_date` timestamp NULL DEFAULT NULL,
  `cost_id` int(4) NOT NULL,
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 1010, '192.168.0.26', 'guojing', 'guo1234', '0', '2020-09-11 09:34:38', NULL, NULL, 1);
INSERT INTO `service` VALUES (2, 1011, '192.168.0.26', 'huangr', 'huang234', '0', '2020-09-11 09:34:38', NULL, NULL, 1);
INSERT INTO `service` VALUES (3, 1011, '192.168.0.20', 'huangr', 'huang234', '0', '2020-09-11 09:34:38', NULL, NULL, 3);
INSERT INTO `service` VALUES (4, 1011, '192.168.0.23', 'huangr', 'huang234', '0', '2020-09-11 09:34:38', NULL, NULL, 6);
INSERT INTO `service` VALUES (5, 1019, '192.168.0.26', 'luwsh', 'luwu2345', '0', '2020-09-11 09:34:38', NULL, NULL, 4);
INSERT INTO `service` VALUES (6, 1019, '192.168.0.20', 'luwsh', 'luwu2345', '0', '2020-09-11 09:34:38', NULL, NULL, 5);
INSERT INTO `service` VALUES (7, 1020, '192.168.0.20', 'weixb', 'wei12345', '0', '2020-09-11 09:34:38', NULL, NULL, 6);
INSERT INTO `service` VALUES (8, 1010, '192.168.0.20', 'guojing', 'guo09876', '0', '2020-09-11 09:34:38', NULL, NULL, 6);

-- ----------------------------
-- Table structure for service_update_bak
-- ----------------------------
DROP TABLE IF EXISTS `service_update_bak`;
CREATE TABLE `service_update_bak`  (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `SERVICE_ID` int(9) NOT NULL,
  `COST_ID` int(4) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
