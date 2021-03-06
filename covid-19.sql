/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : covid-19

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 12/05/2021 15:43:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `c_id` int NOT NULL,
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for health
-- ----------------------------
DROP TABLE IF EXISTS `health`;
CREATE TABLE `health`  (
  `h_id` int NOT NULL,
  `u_id` int NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `hot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gohubei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hubeiren` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fever` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `leaveout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hesuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `masknum` int NULL DEFAULT NULL,
  `kills` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health
-- ----------------------------
INSERT INTO `health` VALUES (1, 1, 36.5, '???', '???', '???', '???', '???', '???', '???', 20, '???', NULL);

-- ----------------------------
-- Table structure for leave
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave`  (
  `l_id` int NOT NULL,
  `u_id` int NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `leavetype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `starttime` date NULL DEFAULT NULL,
  `endtime` date NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`l_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `n_id` int NOT NULL,
  `title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for read
-- ----------------------------
DROP TABLE IF EXISTS `read`;
CREATE TABLE `read`  (
  `r_id` int NOT NULL,
  `u_id` int NULL DEFAULT NULL,
  `n_id` int NULL DEFAULT NULL,
  `readtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of read
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL COMMENT '??????id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '?????????',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '??????',
  `head` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '??????',
  `mailbox` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '??????',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '??????',
  `sex` set('???','???') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '??????',
  `modifytime` datetime NULL DEFAULT NULL COMMENT '??????????????????',
  `createtime` datetime NULL DEFAULT NULL COMMENT '???????????????????????????',
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '??????',
  `type` int NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (0, 'eliteKung', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, '?????????', 1);
INSERT INTO `user` VALUES (1, '?????????', '123', NULL, NULL, '??????', '???', '2021-05-10 14:38:06', NULL, '??????', 2);
INSERT INTO `user` VALUES (2, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (3, '??????', NULL, NULL, NULL, '??????', '???', NULL, NULL, NULL, 3);
INSERT INTO `user` VALUES (4, '?????????', NULL, NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (5, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 3);
INSERT INTO `user` VALUES (6, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (7, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (8, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (9, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (10, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (11, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (12, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (13, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (14, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (15, '??????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (16, '??????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (17, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (18, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (19, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (20, '??????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (21, '??????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (22, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (23, '??????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (24, '??????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (25, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (26, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (27, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (28, '??????', '123', NULL, NULL, '?????????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (29, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (30, '?????????', '123', NULL, NULL, '??????', '???', NULL, NULL, NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;
