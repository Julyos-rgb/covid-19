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
INSERT INTO `health` VALUES (1, 1, 36.5, '否', '否', '否', '否', '否', '是', '是', 20, '是', NULL);

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
  `id` int NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `head` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '头像',
  `mailbox` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '籍贯',
  `sex` set('男','女') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '性别',
  `modifytime` datetime NULL DEFAULT NULL COMMENT '用户创建时间',
  `createtime` datetime NULL DEFAULT NULL COMMENT '最后一次修改的时间',
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级',
  `type` int NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (0, 'eliteKung', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, '管理员', 1);
INSERT INTO `user` VALUES (1, '羽浩南', '123', NULL, NULL, '江西', '男', '2021-05-10 14:38:06', NULL, '一班', 2);
INSERT INTO `user` VALUES (2, '邓中夏', '123', NULL, NULL, '北京', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (3, '胡适', NULL, NULL, NULL, '北京', '男', NULL, NULL, NULL, 3);
INSERT INTO `user` VALUES (4, '陈亚年', NULL, NULL, NULL, '北京', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (5, '周恩来', '123', NULL, NULL, '天津', '男', NULL, NULL, NULL, 3);
INSERT INTO `user` VALUES (6, '赵世炎', '123', NULL, NULL, '北京', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (7, '邓恩铭', '123', NULL, NULL, '浙江', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (8, '蒋介石', '123', NULL, NULL, '上海', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (9, '蔡元培', '123', NULL, NULL, '北京', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (10, '毛泽东', '123', NULL, NULL, '湖南', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (11, '曾国潘', '123', NULL, NULL, '江西', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (12, '千门曦', '123', NULL, NULL, '香港', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (13, '易中泽', '123', NULL, NULL, '台湾', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (14, '龚自珍', '123', NULL, NULL, '山西', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (15, '贾平', '123', NULL, NULL, '湖北', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (16, '王伟', '123', NULL, NULL, '福建', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (17, '王雨涵', '123', NULL, NULL, '江西', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (18, '张继贤', '123', NULL, NULL, '陕西', '男', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (19, '王娇倩', '123', NULL, NULL, '山东', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (20, '许晴', '123', NULL, NULL, '天津', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (21, '徐琴', '123', NULL, NULL, '上海', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (22, '王安莹', '123', NULL, NULL, '湖南', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (23, '徐南', '123', NULL, NULL, '河北', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (24, '万莹', '123', NULL, NULL, '河南', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (25, '夏婉儿', '123', NULL, NULL, '湖北', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (26, '邱中宇', '123', NULL, NULL, '西藏', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (27, '丁晨曦', '123', NULL, NULL, '新疆', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (28, '程潇', '123', NULL, NULL, '内蒙古', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (29, '迪丽巴', '123', NULL, NULL, '广西', '女', NULL, NULL, NULL, 2);
INSERT INTO `user` VALUES (30, '陈希涵', '123', NULL, NULL, '广东', '女', NULL, NULL, NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;
