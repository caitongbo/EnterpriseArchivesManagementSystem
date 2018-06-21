/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : enterpriseams

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 21/06/2018 18:05:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_destroy
-- ----------------------------
DROP TABLE IF EXISTS `t_destroy`;
CREATE TABLE `t_destroy`  (
  `DestroyId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `ArchiveId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'fk2',
  `LoginId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'fk1',
  `DestroyTime` datetime(0) NULL DEFAULT NULL,
  `Reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DestroyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_destroy
-- ----------------------------
INSERT INTO `t_destroy` VALUES (1, '2015100001', '1', '2017-05-01 17:53:50', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (2, '2015100002', '2', '2016-06-21 03:09:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (3, '2015100003', '3', '2014-11-21 18:23:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (4, '2015100004', '4', '2018-04-19 12:54:17', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (5, '2015100005', '5', '2017-09-28 09:45:21', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (6, '2015100006', '6', '2018-01-03 05:07:52', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (7, '2015100007', '7', '2017-05-03 17:55:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (8, '2015100008', '8', '2018-01-01 16:56:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (9, '2015100009', '9', '2017-08-18 23:17:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (10, '2015100010', '10', '2017-08-30 09:04:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (11, '2015100011', '11', '2016-06-30 19:48:16', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (12, '2015100012', '12', '2017-05-01 17:53:50', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (13, '2015100013', '13', '2016-06-21 03:09:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (14, '2015100014', '14', '2014-11-21 18:23:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (15, '2015100015', '15', '2018-04-19 12:54:17', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (16, '2015100016', '16', '2017-09-28 09:45:21', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (17, '2015100017', '17', '2018-01-03 05:07:52', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (18, '2015100018', '18', '2017-05-03 17:55:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (19, '2015100019', '19', '2018-01-01 16:56:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (20, '2015100020', '20', '2017-08-18 23:17:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (21, '2015100021', '21', '2017-08-30 09:04:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (22, '2015100022', '22', '2016-06-30 19:48:16', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (23, '2015100023', '23', '2017-05-01 17:53:50', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (24, '2015100024', '24', '2016-06-21 03:09:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (25, '2015100025', '25', '2014-11-21 18:23:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (26, '2015100026', '26', '2018-04-19 12:54:17', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (27, '2015100027', '27', '2017-09-28 09:45:21', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (28, '2015100028', '28', '2018-01-03 05:07:52', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (29, '2015100029', '29', '2017-05-03 17:55:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (30, '2015100030', '30', '2018-01-01 16:56:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (31, '2015100031', '31', '2017-08-18 23:17:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (32, '2015100032', '32', '2017-08-30 09:04:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (33, '2015100033', '33', '2016-06-30 19:48:16', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (34, '2015100034', '34', '2017-05-03 17:55:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (35, '2015100035', '35', '2018-01-01 16:56:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (36, '2015100036', '36', '2017-08-18 23:17:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (37, '2015100037', '37', '2017-08-30 09:04:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (38, '2015100038', '38', '2016-06-30 19:48:16', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (39, '2015100039', '39', '2017-05-01 17:53:50', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (40, '2015100040', '40', '2016-06-21 03:09:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (41, '2015100041', '41', '2014-11-21 18:23:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (42, '2015100042', '42', '2018-04-19 12:54:17', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (43, '2015100043', '43', '2017-09-28 09:45:21', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (44, '2015100044', '44', '2018-01-03 05:07:52', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (45, '2015100045', '45', '2017-05-03 17:55:07', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (46, '2015100046', '46', '2018-01-01 16:56:12', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (47, '2015100047', '47', '2017-08-18 23:17:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (48, '2015100048', '48', '2017-08-30 09:04:29', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (49, '2015100049', '49', '2016-06-30 19:48:16', '已过期', '无效文件');
INSERT INTO `t_destroy` VALUES (50, '2015100050', '50', '2018-06-21 18:01:45', '已过期', '无效文件');

-- ----------------------------
-- Table structure for t_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo`  (
  `LoginId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'pk',
  `LoginName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LoginPwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RoleId` int(11) NULL DEFAULT NULL COMMENT 'fk1',
  `LevelId` int(11) NULL DEFAULT NULL,
  `CardId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DutyId` int(11) NULL DEFAULT NULL,
  `DeptId` int(11) NULL DEFAULT NULL COMMENT 'fk2',
  `JoinDate` int(11) NULL DEFAULT NULL,
  `TelePhone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `EnduId` int(11) NULL DEFAULT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`LoginId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('1', 'admin', 'admin', 2, 89, '1101', 1, 1, 12, '100000011100', 1, '中国南京', '男', '管理员');

SET FOREIGN_KEY_CHECKS = 1;
