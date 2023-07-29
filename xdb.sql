/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : xdb

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 28/07/2023 22:42:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for x_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_menu`;
CREATE TABLE `x_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `redirect` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `is_leaf` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hidden` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_menu
-- ----------------------------
INSERT INTO `x_menu` VALUES (1, 'Layout', '/sys', '/sys/user', 'sysManage', '系统管理', 'userManage', 0, 'N', 0);
INSERT INTO `x_menu` VALUES (2, 'sys/user', 'user', NULL, 'userList', '用户列表', 'user', 1, 'Y', 0);
INSERT INTO `x_menu` VALUES (3, 'sys/role', 'role', NULL, 'roleList', '角色列表', 'roleManage', 1, 'Y', 0);
INSERT INTO `x_menu` VALUES (4, 'Layout', '/test', '/test/test1', 'test', '功能测试', 'form', 0, 'N', 0);
INSERT INTO `x_menu` VALUES (5, 'test/test1', 'test1', '', 'test1', '测试点一', 'form', 4, 'Y', 0);
INSERT INTO `x_menu` VALUES (6, 'test/test2', 'test2', '', 'test2', '测试点二', 'form', 4, 'Y', 0);
INSERT INTO `x_menu` VALUES (7, 'test/test3', 'test3', '', 'test3', '测试点三', 'form', 4, 'Y', 0);

-- ----------------------------
-- Table structure for x_role
-- ----------------------------
DROP TABLE IF EXISTS `x_role`;
CREATE TABLE `x_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_role
-- ----------------------------
INSERT INTO `x_role` VALUES (1, 'admin', '超级管理员');
INSERT INTO `x_role` VALUES (2, 'hr', '人事管理员');
INSERT INTO `x_role` VALUES (3, 'normal', '普通员工');

-- ----------------------------
-- Table structure for x_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_role_menu`;
CREATE TABLE `x_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL,
  `menu_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_role_menu
-- ----------------------------
INSERT INTO `x_role_menu` VALUES (11, 1, 1);
INSERT INTO `x_role_menu` VALUES (12, 1, 2);
INSERT INTO `x_role_menu` VALUES (13, 1, 3);
INSERT INTO `x_role_menu` VALUES (14, 1, 4);
INSERT INTO `x_role_menu` VALUES (15, 1, 5);
INSERT INTO `x_role_menu` VALUES (16, 1, 6);
INSERT INTO `x_role_menu` VALUES (17, 1, 7);
INSERT INTO `x_role_menu` VALUES (18, 3, 4);
INSERT INTO `x_role_menu` VALUES (19, 3, 5);
INSERT INTO `x_role_menu` VALUES (20, 3, 6);
INSERT INTO `x_role_menu` VALUES (21, 3, 7);

-- ----------------------------
-- Table structure for x_user
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `deleted` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES (1, 'admin', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'super@aliyun.com', '18677778888', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (2, 'zhangsan', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'zhangsan@gmail.com', '13966667777', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (3, 'lisi', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'lisi@gmail.com', '13966667778', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (4, 'wangwu', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'wangwu@gmail.com', '13966667772', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (5, 'zhaoer', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'zhaoer@gmail.com', '13966667776', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (6, 'songliu', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'songliu@gmail.com', '13966667771', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (7, 'aaa', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', 'aaa@aliyun.com', '18899998888', 1, NULL, 1);
INSERT INTO `x_user` VALUES (8, 'bbb', '666666', 'bbb@qq.com', '188888889999', 1, NULL, 1);
INSERT INTO `x_user` VALUES (9, 'ccc', '$2a$10$3ZDHAfyo/P7tSOabB8X.DuVM1DN92YWgSd46ecVY.5WUAQNef7iUC', '1111@ali.com', '11111111', 1, NULL, 0);
INSERT INTO `x_user` VALUES (10, 'xxx222', '$2a$10$dQ1n957Q3qP2D0lHBSqdEeRHym9kAauXgxnIqAv9KDhnsJOC0Kooi', '1122@qq.com', '111111122', 0, NULL, 1);
INSERT INTO `x_user` VALUES (11, 'yyy', '$2a$10$hX03AhH9Yt//V.crSdqGP.nhj3EQi.cMwIEglT9Eqd.5KDkIGaCQC', '1111111@ali.com', '1111111', 1, NULL, 0);
INSERT INTO `x_user` VALUES (12, 'xxx6', '$2a$10$LTtlLYIPtDelUtP01FhcSe9JZkNuJmeXf66YMJyZee.04Q1yzNoj.', 'xxx6@aliyun.com', '18677778886', 1, NULL, 1);
INSERT INTO `x_user` VALUES (13, 'test', '$2a$10$jWewP9UNr.6AhrP2ofza1OaTDBq7nBL23C9zHnwBXh8Q/9Vd2zNSC', 'test@ali.com', '11111111111', 1, NULL, 0);
INSERT INTO `x_user` VALUES (14, 'xxx', '$2a$10$QpmItVrXHa5YWTfH25yCEuTu69VFjJbcxBxMYQTWb8qVNBSp0laxq', 'xxx@ali.com', '1111111111111', 1, NULL, 1);

-- ----------------------------
-- Table structure for x_user_role
-- ----------------------------
DROP TABLE IF EXISTS `x_user_role`;
CREATE TABLE `x_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user_role
-- ----------------------------
INSERT INTO `x_user_role` VALUES (1, 1, 1);
INSERT INTO `x_user_role` VALUES (2, 1, 3);
INSERT INTO `x_user_role` VALUES (6, 3, 2);
INSERT INTO `x_user_role` VALUES (7, 4, 2);
INSERT INTO `x_user_role` VALUES (8, 4, 3);
INSERT INTO `x_user_role` VALUES (11, 2, 3);

SET FOREIGN_KEY_CHECKS = 1;
