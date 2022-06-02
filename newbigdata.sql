/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : localhost:3306
 Source Schema         : bigdata

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 19/06/2021 22:06:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asname
-- ----------------------------
DROP TABLE IF EXISTS `asname`;
CREATE TABLE `asname`  (
  `as` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for df
-- ----------------------------
DROP TABLE IF EXISTS `df`;
CREATE TABLE `df`  (
  `ip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `user` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year` int(0) NULL DEFAULT NULL,
  `month` int(0) NULL DEFAULT NULL,
  `day` int(0) NULL DEFAULT NULL,
  `hour` int(0) NULL DEFAULT NULL,
  `min` int(0) NULL DEFAULT NULL,
  `second` int(0) NULL DEFAULT NULL,
  `http_method` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `http_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `http_version` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` int(0) NULL DEFAULT NULL,
  `bytes` bigint(0) NULL DEFAULT NULL,
  `http_content_type` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `referer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `os` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `scheme` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `as` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `country_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `region_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `city_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `latitude` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `longitude` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for echart_dbsetup
-- ----------------------------
DROP TABLE IF EXISTS `echart_dbsetup`;
CREATE TABLE `echart_dbsetup`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dbtype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `host` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `port` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_blank` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `database` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_dbsetup
-- ----------------------------

-- ----------------------------
-- Table structure for echart_dbsetup_users
-- ----------------------------
DROP TABLE IF EXISTS `echart_dbsetup_users`;
CREATE TABLE `echart_dbsetup_users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `dbsetup_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_dbsetup_users_dbsetup_id_user_id_fa1f9aaa_uniq`(`dbsetup_id`, `user_id`) USING BTREE,
  INDEX `echart_dbsetup_users_user_id_0c124d18_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `echart_dbsetup_users_dbsetup_id_04db6f21_fk_echart_dbsetup_id` FOREIGN KEY (`dbsetup_id`) REFERENCES `echart_dbsetup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_dbsetup_users_user_id_0c124d18_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_dbsetup_users
-- ----------------------------

-- ----------------------------
-- Table structure for echart_dimensiontable
-- ----------------------------
DROP TABLE IF EXISTS `echart_dimensiontable`;
CREATE TABLE `echart_dimensiontable`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name_id` int(0) NOT NULL,
  `row` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `col` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` double NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_dimensiontable
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartdashboardsetup_v2
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartdashboardsetup_v2`;
CREATE TABLE `echart_echartdashboardsetup_v2`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `body` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `others` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token_time` smallint(0) NOT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_walter` tinyint(1) NOT NULL,
  `desktop` tinyint(1) NOT NULL,
  `is_loading` tinyint(1) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `conn_id` int(0) NULL DEFAULT NULL,
  `html_file_id` int(0) NOT NULL,
  `project_name_id` int(0) NULL DEFAULT NULL,
  `theme_name_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `echart_echartdashboa_conn_id_5174d10a_fk_echart_db`(`conn_id`) USING BTREE,
  INDEX `echart_echartdashboa_html_file_id_ac458c8a_fk_echart_ec`(`html_file_id`) USING BTREE,
  INDEX `echart_echartdashboa_project_name_id_29d1fd9c_fk_echart_pr`(`project_name_id`) USING BTREE,
  INDEX `echart_echartdashboa_theme_name_id_33ea6edc_fk_echart_ec`(`theme_name_id`) USING BTREE,
  CONSTRAINT `echart_echartdashboa_conn_id_5174d10a_fk_echart_db` FOREIGN KEY (`conn_id`) REFERENCES `echart_dbsetup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdashboa_html_file_id_ac458c8a_fk_echart_ec` FOREIGN KEY (`html_file_id`) REFERENCES `echart_echarttemplateformat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdashboa_project_name_id_29d1fd9c_fk_echart_pr` FOREIGN KEY (`project_name_id`) REFERENCES `echart_projectlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdashboa_theme_name_id_33ea6edc_fk_echart_ec` FOREIGN KEY (`theme_name_id`) REFERENCES `echart_echarttheme` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartdashboardsetup_v2
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartdashboardsetup_v2_group
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartdashboardsetup_v2_group`;
CREATE TABLE `echart_echartdashboardsetup_v2_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `echartdashboardsetup_v2_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_echartdashboardse_echartdashboardsetup_v2__a1ea3ae1_uniq`(`echartdashboardsetup_v2_id`, `group_id`) USING BTREE,
  INDEX `echart_echartdashboa_group_id_026f50c5_fk_auth_grou`(`group_id`) USING BTREE,
  CONSTRAINT `echart_echartdashboa_echartdashboardsetup_51edc5c5_fk_echart_ec` FOREIGN KEY (`echartdashboardsetup_v2_id`) REFERENCES `echart_echartdashboardsetup_v2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdashboa_group_id_026f50c5_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartdashboardsetup_v2_group
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartdashboardsetup_v2_users
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartdashboardsetup_v2_users`;
CREATE TABLE `echart_echartdashboardsetup_v2_users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `echartdashboardsetup_v2_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_echartdashboardse_echartdashboardsetup_v2__a4376c41_uniq`(`echartdashboardsetup_v2_id`, `user_id`) USING BTREE,
  INDEX `echart_echartdashboa_user_id_9a716252_fk_auth_user`(`user_id`) USING BTREE,
  CONSTRAINT `echart_echartdashboa_echartdashboardsetup_2676b5db_fk_echart_ec` FOREIGN KEY (`echartdashboardsetup_v2_id`) REFERENCES `echart_echartdashboardsetup_v2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdashboa_user_id_9a716252_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartdashboardsetup_v2_users
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartdataset
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartdataset`;
CREATE TABLE `echart_echartdataset`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sql_str` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `with_head` tinyint(1) NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nextsyn_time` datetime(6) NOT NULL,
  `syn_interval` double NOT NULL,
  `is_cache` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `conn_id` int(0) NOT NULL,
  `echart_format_id` int(0) NOT NULL,
  `project_name_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `echart_echartdataset_conn_id_c2c41279_fk_echart_dbsetup_id`(`conn_id`) USING BTREE,
  INDEX `echart_echartdataset_echart_format_id_62fcd184_fk_echart_ec`(`echart_format_id`) USING BTREE,
  INDEX `echart_echartdataset_project_name_id_c55efafb_fk_echart_pr`(`project_name_id`) USING BTREE,
  CONSTRAINT `echart_echartdataset_conn_id_c2c41279_fk_echart_dbsetup_id` FOREIGN KEY (`conn_id`) REFERENCES `echart_dbsetup` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdataset_echart_format_id_62fcd184_fk_echart_ec` FOREIGN KEY (`echart_format_id`) REFERENCES `echart_echartformat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdataset_project_name_id_c55efafb_fk_echart_pr` FOREIGN KEY (`project_name_id`) REFERENCES `echart_projectlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartdataset
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartdataset_users
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartdataset_users`;
CREATE TABLE `echart_echartdataset_users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `echartdataset_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_echartdataset_use_echartdataset_id_user_id_081126da_uniq`(`echartdataset_id`, `user_id`) USING BTREE,
  INDEX `echart_echartdataset_users_user_id_669c7ae2_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `echart_echartdataset_echartdataset_id_70605bf3_fk_echart_ec` FOREIGN KEY (`echartdataset_id`) REFERENCES `echart_echartdataset` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartdataset_users_user_id_669c7ae2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartdataset_users
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartformat
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartformat`;
CREATE TABLE `echart_echartformat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_format` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_format_x` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dataset_sample` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seq` smallint(0) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartformat
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartformat_users
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartformat_users`;
CREATE TABLE `echart_echartformat_users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `echartformat_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_echartformat_users_echartformat_id_user_id_275f25bc_uniq`(`echartformat_id`, `user_id`) USING BTREE,
  INDEX `echart_echartformat_users_user_id_c4d71d61_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `echart_echartformat__echartformat_id_ab299275_fk_echart_ec` FOREIGN KEY (`echartformat_id`) REFERENCES `echart_echartformat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartformat_users_user_id_c4d71d61_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartformat_users
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echartreportsetup
-- ----------------------------
DROP TABLE IF EXISTS `echart_echartreportsetup`;
CREATE TABLE `echart_echartreportsetup`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `div_format` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seq` smallint(0) NOT NULL,
  `group` smallint(0) NOT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `interval` smallint(0) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `dataset_id` int(0) NOT NULL,
  `echartdashboard_id` int(0) NOT NULL,
  `echartformat_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `echart_echartreports_dataset_id_01ae3d5a_fk_echart_ec`(`dataset_id`) USING BTREE,
  INDEX `echart_echartreports_echartdashboard_id_b02a7497_fk_echart_ec`(`echartdashboard_id`) USING BTREE,
  INDEX `echart_echartreports_echartformat_id_d49a9c70_fk_echart_ec`(`echartformat_id`) USING BTREE,
  CONSTRAINT `echart_echartreports_dataset_id_01ae3d5a_fk_echart_ec` FOREIGN KEY (`dataset_id`) REFERENCES `echart_echartdataset` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartreports_echartdashboard_id_b02a7497_fk_echart_ec` FOREIGN KEY (`echartdashboard_id`) REFERENCES `echart_echartdashboardsetup_v2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echartreports_echartformat_id_d49a9c70_fk_echart_ec` FOREIGN KEY (`echartformat_id`) REFERENCES `echart_echartformat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echartreportsetup
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echarttemplateformat
-- ----------------------------
DROP TABLE IF EXISTS `echart_echarttemplateformat`;
CREATE TABLE `echart_echarttemplateformat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `html_file` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `html_file`(`html_file`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echarttemplateformat
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echarttheme
-- ----------------------------
DROP TABLE IF EXISTS `echart_echarttheme`;
CREATE TABLE `echart_echarttheme`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme_file` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `theme_file`(`theme_file`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echarttheme
-- ----------------------------

-- ----------------------------
-- Table structure for echart_echarttheme_users
-- ----------------------------
DROP TABLE IF EXISTS `echart_echarttheme_users`;
CREATE TABLE `echart_echarttheme_users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `echarttheme_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_echarttheme_users_echarttheme_id_user_id_7534d1f7_uniq`(`echarttheme_id`, `user_id`) USING BTREE,
  INDEX `echart_echarttheme_users_user_id_f1570026_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `echart_echarttheme_u_echarttheme_id_591fe4ea_fk_echart_ec` FOREIGN KEY (`echarttheme_id`) REFERENCES `echart_echarttheme` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_echarttheme_users_user_id_f1570026_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_echarttheme_users
-- ----------------------------

-- ----------------------------
-- Table structure for echart_errorlog
-- ----------------------------
DROP TABLE IF EXISTS `echart_errorlog`;
CREATE TABLE `echart_errorlog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_errorlog
-- ----------------------------

-- ----------------------------
-- Table structure for echart_projectlist
-- ----------------------------
DROP TABLE IF EXISTS `echart_projectlist`;
CREATE TABLE `echart_projectlist`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seq` int(0) NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `father` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_projectlist
-- ----------------------------

-- ----------------------------
-- Table structure for echart_projectlist_users
-- ----------------------------
DROP TABLE IF EXISTS `echart_projectlist_users`;
CREATE TABLE `echart_projectlist_users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `projectlist_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `echart_projectlist_users_projectlist_id_user_id_0cc13765_uniq`(`projectlist_id`, `user_id`) USING BTREE,
  INDEX `echart_projectlist_users_user_id_ef4b58bd_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `echart_projectlist_u_projectlist_id_b761848e_fk_echart_pr` FOREIGN KEY (`projectlist_id`) REFERENCES `echart_projectlist` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `echart_projectlist_users_user_id_ef4b58bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_projectlist_users
-- ----------------------------

-- ----------------------------
-- Table structure for echart_reportcomment
-- ----------------------------
DROP TABLE IF EXISTS `echart_reportcomment`;
CREATE TABLE `echart_reportcomment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `report_link` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `report_id` int(0) NOT NULL,
  `report_flag` int(0) NOT NULL,
  `remark` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_reportcomment
-- ----------------------------

-- ----------------------------
-- Table structure for echart_reportcommentread
-- ----------------------------
DROP TABLE IF EXISTS `echart_reportcommentread`;
CREATE TABLE `echart_reportcommentread`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `report_id` int(0) NOT NULL,
  `report_flag` int(0) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_reportcommentread
-- ----------------------------

-- ----------------------------
-- Table structure for echart_visitlog
-- ----------------------------
DROP TABLE IF EXISTS `echart_visitlog`;
CREATE TABLE `echart_visitlog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart_visitlog
-- ----------------------------

-- ----------------------------
-- Table structure for https
-- ----------------------------
DROP TABLE IF EXISTS `https`;
CREATE TABLE `https`  (
  `scheme` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for ip
-- ----------------------------
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip`  (
  `ip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for ip404
-- ----------------------------
DROP TABLE IF EXISTS `ip404`;
CREATE TABLE `ip404`  (
  `ip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` int(0) NULL DEFAULT NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for method
-- ----------------------------
DROP TABLE IF EXISTS `method`;
CREATE TABLE `method`  (
  `http_method` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for os
-- ----------------------------
DROP TABLE IF EXISTS `os`;
CREATE TABLE `os`  (
  `os` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `status` int(0) NULL DEFAULT NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for views
-- ----------------------------
DROP TABLE IF EXISTS `views`;
CREATE TABLE `views`  (
  `year` int(0) NULL DEFAULT NULL,
  `month` int(0) NULL DEFAULT NULL,
  `day` int(0) NULL DEFAULT NULL,
  `sum` bigint(0) NULL DEFAULT NULL,
  `count` bigint(0) NOT NULL,
  `id` bigint(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ip
-- ----------------------------
INSERT INTO `ip` VALUES ('117.173.87.129', 12298, 0);
INSERT INTO `ip` VALUES ('117.173.87.66', 10727, 1);
INSERT INTO `ip` VALUES ('117.173.87.12', 10427, 2);
INSERT INTO `ip` VALUES ('117.173.87.133', 10376, 3);
INSERT INTO `ip` VALUES ('117.173.87.253', 9815, 4);
INSERT INTO `ip` VALUES ('117.173.87.90', 9264, 5);
INSERT INTO `ip` VALUES ('117.173.87.88', 9228, 6);
INSERT INTO `ip` VALUES ('117.173.87.37', 9166, 7);
INSERT INTO `ip` VALUES ('117.173.87.118', 9147, 8);
INSERT INTO `ip` VALUES ('117.173.87.61', 9111, 9);

-- ----------------------------
-- Records of ip404
-- ----------------------------
INSERT INTO `ip404` VALUES ('42.192.52.236', 404, 737, 0);
INSERT INTO `ip404` VALUES ('116.17.144.197', 404, 390, 1);
INSERT INTO `ip404` VALUES ('203.168.2.229', 404, 384, 2);
INSERT INTO `ip404` VALUES ('116.17.144.149', 404, 327, 3);
INSERT INTO `ip404` VALUES ('34.123.26.248', 404, 327, 4);
INSERT INTO `ip404` VALUES ('34.123.26.50', 404, 296, 5);
INSERT INTO `ip404` VALUES ('120.228.91.240', 404, 293, 6);
INSERT INTO `ip404` VALUES ('34.123.26.91', 404, 256, 7);
INSERT INTO `ip404` VALUES ('116.17.144.229', 404, 241, 8);
INSERT INTO `ip404` VALUES ('116.17.144.176', 404, 231, 9);
INSERT INTO `ip404` VALUES ('34.123.26.65', 404, 228, 10);
INSERT INTO `ip404` VALUES ('34.123.26.26', 404, 218, 11);
INSERT INTO `ip404` VALUES ('120.228.91.51', 404, 209, 12);
INSERT INTO `ip404` VALUES ('203.168.2.37', 404, 200, 13);
INSERT INTO `ip404` VALUES ('103.242.134.66', 404, 159, 14);
INSERT INTO `ip404` VALUES ('111.198.228.80', 404, 134, 15);
INSERT INTO `ip404` VALUES ('175.10.93.175', 404, 132, 16);
INSERT INTO `ip404` VALUES ('111.193.131.254', 404, 126, 17);
INSERT INTO `ip404` VALUES ('240e:365:426:3007:8af4:f9f0:1e4f:b1a1', 404, 124, 18);
INSERT INTO `ip404` VALUES ('34.123.26.14', 404, 115, 19);

-- ----------------------------
-- Records of method
-- ----------------------------
INSERT INTO `method` VALUES ('GET', 31282211, 0);
INSERT INTO `method` VALUES ('POST', 7259379, 8589934592);
INSERT INTO `method` VALUES ('HEAD', 2243, 17179869184);
INSERT INTO `method` VALUES ('PUT', 70, 25769803776);
INSERT INTO `method` VALUES ('OPTIONS', 34, 42949672960);
INSERT INTO `method` VALUES ('TRACE', 2, 51539607552);
INSERT INTO `method` VALUES ('CONNECT', 1, 60129542144);
INSERT INTO `method` VALUES ('ACUNETIX', 1, 60129542145);
INSERT INTO `method` VALUES ('TRACK', 1, 60129542146);

-- ----------------------------
-- Records of os
-- ----------------------------
INSERT INTO `os` VALUES ('Linux', 27691684, 566935683072);
INSERT INTO `os` VALUES ('-', 7056841, 850403524608);
INSERT INTO `os` VALUES ('bot', 2399, 1073741824000);
INSERT INTO `os` VALUES ('Apple', 3767252, 1468878815232);
INSERT INTO `os` VALUES ('Windows', 25822, 1683627180032);

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (504, 23, 635655159808);
INSERT INTO `status` VALUES (502, 752, 730144440320);
INSERT INTO `status` VALUES (503, 396485, 816043786240);
INSERT INTO `status` VALUES (301, 6817111, 867583393792);
INSERT INTO `status` VALUES (400, 359, 996432412672);
INSERT INTO `status` VALUES (403, 2, 1030792151040);
INSERT INTO `status` VALUES (404, 969766, 1073741824000);
INSERT INTO `status` VALUES (408, 865, 1168231104512);
INSERT INTO `status` VALUES (200, 30004982, 1331439861760);
INSERT INTO `status` VALUES (499, 2425, 1477468749824);
INSERT INTO `status` VALUES (302, 351226, 1563368095744);
INSERT INTO `status` VALUES (405, 2, 1571958030336);

-- ----------------------------
-- Records of views
-- ----------------------------
INSERT INTO `views` VALUES (2021, 1, 28, 63480125884, 18641, 0);
INSERT INTO `views` VALUES (2021, 1, 15, 57430312712, 8744, 1);
INSERT INTO `views` VALUES (2021, 1, 30, 45516443692, 13227, 2);
INSERT INTO `views` VALUES (2021, 2, 8, 62165222421, 7081, 3);
INSERT INTO `views` VALUES (2021, 3, 23, 24679827457, 18728, 4);
INSERT INTO `views` VALUES (2021, 4, 14, 66664931624, 29977, 5);
INSERT INTO `views` VALUES (2021, 4, 15, 84283049314, 15442, 6);
INSERT INTO `views` VALUES (2021, 5, 13, 40837366835, 9909, 7);
INSERT INTO `views` VALUES (2021, 4, 7, 39180856036, 7806, 8);
INSERT INTO `views` VALUES (2021, 4, 20, 36190536501, 4217, 9);
INSERT INTO `views` VALUES (2021, 4, 18, 27192772618, 4187, 10);
INSERT INTO `views` VALUES (2021, 2, 28, 34782092116, 4972, 11);
INSERT INTO `views` VALUES (2021, 2, 5, 45233962362, 20720, 8589934592);
INSERT INTO `views` VALUES (2021, 1, 20, 22288112837, 25096, 8589934593);
INSERT INTO `views` VALUES (2021, 1, 26, 37010847974, 8928, 8589934594);
INSERT INTO `views` VALUES (2021, 1, 28, 87966974903, 37144, 8589934595);
INSERT INTO `views` VALUES (2021, 3, 24, 38139843738, 6924, 8589934596);
INSERT INTO `views` VALUES (2021, 5, 9, 27054970487, 34069, 8589934597);
INSERT INTO `views` VALUES (2021, 5, 9, 14035551930, 14277, 8589934598);
INSERT INTO `views` VALUES (2021, 1, 18, 82881801095, 11027, 8589934599);
INSERT INTO `views` VALUES (2021, 2, 24, 74643962023, 13911, 8589934600);
INSERT INTO `views` VALUES (2021, 4, 25, 34167280458, 24353, 8589934601);
INSERT INTO `views` VALUES (2021, 5, 11, 11725217931, 22826, 8589934602);
INSERT INTO `views` VALUES (2021, 3, 8, 22516925295, 8395, 8589934603);
INSERT INTO `views` VALUES (2021, 4, 30, 25468468439, 5253, 8589934604);
INSERT INTO `views` VALUES (2021, 4, 18, 16425570422, 257, 8589934605);
INSERT INTO `views` VALUES (2021, 2, 28, 56445354112, 13193, 8589934606);
INSERT INTO `views` VALUES (2021, 4, 8, 14593713471, 1755, 17179869184);
INSERT INTO `views` VALUES (2021, 5, 9, 15898228740, 14472, 17179869185);
INSERT INTO `views` VALUES (2021, 5, 10, 57655578310, 30252, 17179869186);
INSERT INTO `views` VALUES (2021, 4, 25, 91968487927, 14398, 17179869187);
INSERT INTO `views` VALUES (2021, 3, 12, 31197580586, 23633, 17179869188);
INSERT INTO `views` VALUES (2021, 3, 28, 27531623477, 11067, 17179869189);
INSERT INTO `views` VALUES (2021, 4, 13, 97970233604, 1570, 17179869190);
INSERT INTO `views` VALUES (2021, 4, 2, 31794175645, 8136, 17179869191);
INSERT INTO `views` VALUES (2021, 4, 12, 7299252396, 2744, 17179869192);
INSERT INTO `views` VALUES (2021, 3, 5, 18372990548, 5471, 17179869193);
INSERT INTO `views` VALUES (2021, 3, 13, 34537894540, 4540, 17179869194);
INSERT INTO `views` VALUES (2021, 1, 23, 65198959017, 11414, 25769803776);
INSERT INTO `views` VALUES (2021, 2, 5, 92183184379, 34825, 25769803777);
INSERT INTO `views` VALUES (2021, 1, 21, 51180111355, 19650, 25769803778);
INSERT INTO `views` VALUES (2021, 5, 8, 52586336711, 9151, 25769803779);
INSERT INTO `views` VALUES (2021, 3, 12, 25309904635, 5115, 25769803780);
INSERT INTO `views` VALUES (2021, 4, 22, 21489180402, 5512, 25769803781);
INSERT INTO `views` VALUES (2021, 1, 29, 47028116835, 14402, 25769803782);
INSERT INTO `views` VALUES (2021, 1, 29, 36192448677, 18038, 25769803783);
INSERT INTO `views` VALUES (2021, 5, 12, 73241034801, 12220, 25769803784);
INSERT INTO `views` VALUES (2021, 2, 20, 69816334599, 9991, 25769803785);
INSERT INTO `views` VALUES (2021, 2, 26, 45653121662, 10937, 25769803786);
INSERT INTO `views` VALUES (2021, 4, 13, 24716072302, 14209, 25769803787);
INSERT INTO `views` VALUES (2021, 3, 26, 46643272899, 14818, 25769803788);
INSERT INTO `views` VALUES (2021, 3, 9, 36437727645, 10102, 25769803789);
INSERT INTO `views` VALUES (2021, 4, 24, 47735362204, 8100, 25769803790);
INSERT INTO `views` VALUES (2021, 3, 5, 21726804567, 7026, 25769803791);
INSERT INTO `views` VALUES (2021, 4, 5, 32251382043, 18268, 25769803792);
INSERT INTO `views` VALUES (2021, 2, 6, 40324526226, 19150, 34359738368);
INSERT INTO `views` VALUES (2021, 3, 17, 27707011229, 15864, 34359738369);
INSERT INTO `views` VALUES (2021, 4, 26, 36346224025, 23405, 34359738370);
INSERT INTO `views` VALUES (2021, 1, 15, 18516963881, 4034, 34359738371);
INSERT INTO `views` VALUES (2021, 3, 10, 36946743669, 8173, 34359738372);
INSERT INTO `views` VALUES (2021, 4, 11, 52802375636, 10294, 34359738373);
INSERT INTO `views` VALUES (2021, 3, 19, 32756514878, 6485, 34359738374);
INSERT INTO `views` VALUES (2021, 5, 13, 15406047200, 9865, 34359738375);
INSERT INTO `views` VALUES (2021, 2, 10, 60548241628, 10918, 34359738376);
INSERT INTO `views` VALUES (2021, 2, 17, 34435929590, 6040, 34359738377);
INSERT INTO `views` VALUES (2021, 5, 1, 10227702966, 11901, 42949672960);
INSERT INTO `views` VALUES (2021, 4, 25, 41057104182, 8489, 42949672961);
INSERT INTO `views` VALUES (2021, 1, 29, 25894533648, 15372, 42949672962);
INSERT INTO `views` VALUES (2021, 2, 8, 65533054868, 10993, 42949672963);
INSERT INTO `views` VALUES (2021, 2, 3, 36092125958, 10683, 42949672964);
INSERT INTO `views` VALUES (2021, 4, 19, 45116758842, 9806, 42949672965);
INSERT INTO `views` VALUES (2021, 2, 26, 70741054463, 7580, 42949672966);
INSERT INTO `views` VALUES (2021, 4, 11, 55438048179, 18822, 42949672967);
INSERT INTO `views` VALUES (2021, 3, 5, 21946283078, 7791, 42949672968);
INSERT INTO `views` VALUES (2021, 2, 28, 49023821822, 10111, 42949672969);
INSERT INTO `views` VALUES (2021, 2, 13, 87686065783, 2615, 42949672970);
INSERT INTO `views` VALUES (2021, 2, 17, 109281743, 2208, 42949672971);
INSERT INTO `views` VALUES (2021, 1, 23, 79466145865, 5353, 51539607552);
INSERT INTO `views` VALUES (2021, 1, 21, 31923812342, 23624, 51539607553);
INSERT INTO `views` VALUES (2021, 4, 8, 55859675943, 59044, 51539607554);
INSERT INTO `views` VALUES (2021, 5, 1, 37573198765, 9484, 51539607555);
INSERT INTO `views` VALUES (2021, 3, 11, 10198796756, 35825, 51539607556);
INSERT INTO `views` VALUES (2021, 4, 6, 4516868300, 8092, 51539607557);
INSERT INTO `views` VALUES (2021, 4, 15, 46342863030, 13007, 51539607558);
INSERT INTO `views` VALUES (2021, 4, 3, 74220032520, 13195, 51539607559);
INSERT INTO `views` VALUES (2021, 4, 12, 35032736607, 8584, 51539607560);
INSERT INTO `views` VALUES (2021, 4, 12, 33507000130, 11758, 51539607561);
INSERT INTO `views` VALUES (2021, 4, 12, 38372074771, 51425, 51539607562);
INSERT INTO `views` VALUES (2021, 3, 3, 21825597711, 6150, 51539607563);
INSERT INTO `views` VALUES (2021, 3, 29, 31987215433, 5833, 51539607564);
INSERT INTO `views` VALUES (2021, 5, 2, 108388835607, 5880, 51539607565);
INSERT INTO `views` VALUES (2021, 2, 2, 37419751078, 7972, 60129542144);
INSERT INTO `views` VALUES (2021, 2, 1, 63643447669, 16319, 60129542145);
INSERT INTO `views` VALUES (2021, 1, 26, 26436802266, 27336, 60129542146);
INSERT INTO `views` VALUES (2021, 5, 1, 67761201219, 7935, 60129542147);
INSERT INTO `views` VALUES (2021, 1, 29, 27601937640, 15155, 60129542148);
INSERT INTO `views` VALUES (2021, 2, 3, 28661966960, 7030, 60129542149);
INSERT INTO `views` VALUES (2021, 2, 26, 91091421717, 15390, 60129542150);
INSERT INTO `views` VALUES (2021, 3, 25, 71174100313, 15896, 60129542151);
INSERT INTO `views` VALUES (2021, 4, 14, 47123599012, 11024, 60129542152);
INSERT INTO `views` VALUES (2021, 4, 6, 125810423940, 17673, 60129542153);
INSERT INTO `views` VALUES (2021, 4, 2, 64668177915, 23286, 60129542154);
INSERT INTO `views` VALUES (2021, 3, 2, 15850991055, 20782, 60129542155);
INSERT INTO `views` VALUES (2021, 4, 11, 33970604062, 6164, 60129542156);
INSERT INTO `views` VALUES (2021, 4, 20, 21933094137, 8601, 60129542157);
INSERT INTO `views` VALUES (2021, 5, 3, 17496135770, 7752, 60129542158);
INSERT INTO `views` VALUES (2021, 5, 3, 25057490034, 7878, 60129542159);
INSERT INTO `views` VALUES (2021, 2, 28, 53146631943, 5278, 60129542160);
INSERT INTO `views` VALUES (2021, 3, 13, 33737565118, 1254, 60129542161);
INSERT INTO `views` VALUES (2021, 4, 3, 44444865655, 4913, 60129542162);
INSERT INTO `views` VALUES (2021, 2, 17, 31103731448, 7023, 60129542163);
INSERT INTO `views` VALUES (2021, 2, 2, 65953154334, 92856, 68719476736);
INSERT INTO `views` VALUES (2021, 1, 26, 29861076817, 11560, 68719476737);
INSERT INTO `views` VALUES (2021, 3, 24, 11640959889, 43166, 68719476738);
INSERT INTO `views` VALUES (2021, 4, 26, 107537774007, 15199, 68719476739);
INSERT INTO `views` VALUES (2021, 2, 24, 44077765384, 15509, 68719476740);
INSERT INTO `views` VALUES (2021, 5, 11, 13897235753, 5939, 68719476741);
INSERT INTO `views` VALUES (2021, 5, 6, 63619306199, 13177, 68719476742);
INSERT INTO `views` VALUES (2021, 2, 19, 3767366377, 8608, 68719476743);
INSERT INTO `views` VALUES (2021, 4, 10, 90305769354, 14416, 68719476744);
INSERT INTO `views` VALUES (2021, 4, 16, 31655606572, 439, 68719476745);
INSERT INTO `views` VALUES (2021, 4, 28, 39018081367, 5911, 68719476746);
INSERT INTO `views` VALUES (2021, 4, 30, 17820664348, 7767, 68719476747);
INSERT INTO `views` VALUES (2021, 4, 3, 34810256916, 5493, 68719476748);
INSERT INTO `views` VALUES (2021, 4, 9, 54942144743, 8458, 77309411328);
INSERT INTO `views` VALUES (2021, 1, 24, 87714308929, 13562, 77309411329);
INSERT INTO `views` VALUES (2021, 1, 14, 37903123355, 2890, 77309411330);
INSERT INTO `views` VALUES (2021, 2, 25, 109751441120, 21200, 77309411331);
INSERT INTO `views` VALUES (2021, 3, 16, 24682944192, 12445, 77309411332);
INSERT INTO `views` VALUES (2021, 4, 13, 35337014185, 18520, 77309411333);
INSERT INTO `views` VALUES (2021, 4, 29, 69600845281, 21583, 77309411334);
INSERT INTO `views` VALUES (2021, 4, 12, 54475320640, 18573, 77309411335);
INSERT INTO `views` VALUES (2021, 3, 14, 53776828013, 14529, 77309411336);
INSERT INTO `views` VALUES (2021, 3, 7, 31804188019, 12340, 77309411337);
INSERT INTO `views` VALUES (2021, 4, 28, 29281382688, 15095, 77309411338);
INSERT INTO `views` VALUES (2021, 2, 9, 47223647163, 5215, 77309411339);
INSERT INTO `views` VALUES (2021, 4, 5, 27748061, 249, 77309411340);
INSERT INTO `views` VALUES (2021, 3, 29, 37338690922, 6874, 77309411341);
INSERT INTO `views` VALUES (2021, 1, 21, 80715863741, 27163, 85899345920);
INSERT INTO `views` VALUES (2021, 5, 10, 29255721245, 16460, 85899345921);
INSERT INTO `views` VALUES (2021, 1, 18, 44317592436, 2975, 85899345922);
INSERT INTO `views` VALUES (2021, 4, 22, 16809196095, 3789, 85899345923);
INSERT INTO `views` VALUES (2021, 5, 12, 63268404626, 21684, 85899345924);
INSERT INTO `views` VALUES (2021, 5, 5, 13704627309, 5865, 85899345925);
INSERT INTO `views` VALUES (2021, 3, 30, 80594930569, 7344, 85899345926);
INSERT INTO `views` VALUES (2021, 4, 16, 34168719035, 7141, 85899345927);
INSERT INTO `views` VALUES (2021, 3, 21, 50683347129, 5913, 85899345928);
INSERT INTO `views` VALUES (2021, 4, 27, 59622961218, 4147, 85899345929);
INSERT INTO `views` VALUES (2021, 3, 13, 27178698099, 9234, 85899345930);
INSERT INTO `views` VALUES (2021, 2, 21, 57493702813, 4718, 85899345931);
INSERT INTO `views` VALUES (2021, 4, 3, 42966731347, 2007, 85899345932);
INSERT INTO `views` VALUES (2021, 4, 9, 40606560776, 59549, 94489280512);
INSERT INTO `views` VALUES (2021, 2, 4, 13873317078, 26039, 94489280513);
INSERT INTO `views` VALUES (2021, 2, 3, 54166474924, 15996, 94489280514);
INSERT INTO `views` VALUES (2021, 4, 16, 26518121684, 5330, 94489280515);
INSERT INTO `views` VALUES (2021, 4, 7, 47411403899, 11680, 94489280516);
INSERT INTO `views` VALUES (2021, 4, 4, 3908922823, 8046, 94489280517);
INSERT INTO `views` VALUES (2021, 2, 16, 33922238837, 3694, 94489280518);
INSERT INTO `views` VALUES (2021, 2, 14, 17568766726, 9612, 94489280519);
INSERT INTO `views` VALUES (2021, 1, 23, 69523429505, 16197, 103079215104);
INSERT INTO `views` VALUES (2021, 4, 9, 38606184766, 45554, 103079215105);
INSERT INTO `views` VALUES (2021, 2, 5, 85444077435, 30018, 103079215106);
INSERT INTO `views` VALUES (2021, 2, 1, 42803344173, 10177, 103079215107);
INSERT INTO `views` VALUES (2021, 1, 20, 11556862100, 4284, 103079215108);
INSERT INTO `views` VALUES (2021, 1, 26, 87356009125, 20160, 103079215109);
INSERT INTO `views` VALUES (2021, 1, 28, 109618931212, 20679, 103079215110);
INSERT INTO `views` VALUES (2021, 4, 22, 15122281583, 4270, 103079215111);
INSERT INTO `views` VALUES (2021, 1, 19, 62804560740, 15973, 103079215112);
INSERT INTO `views` VALUES (2021, 1, 15, 28555339685, 5212, 103079215113);
INSERT INTO `views` VALUES (2021, 3, 4, 77486390387, 19575, 103079215114);
INSERT INTO `views` VALUES (2021, 3, 27, 53500327218, 25772, 103079215115);
INSERT INTO `views` VALUES (2021, 3, 26, 17405389363, 20998, 103079215116);
INSERT INTO `views` VALUES (2021, 4, 29, 26608727221, 17331, 103079215117);
INSERT INTO `views` VALUES (2021, 4, 12, 59954579169, 16672, 103079215118);
INSERT INTO `views` VALUES (2021, 3, 3, 25121105073, 8848, 103079215119);
INSERT INTO `views` VALUES (2021, 3, 9, 37856208478, 14690, 103079215120);
INSERT INTO `views` VALUES (2021, 4, 10, 83986549182, 6948, 103079215121);
INSERT INTO `views` VALUES (2021, 3, 5, 36928109785, 14266, 103079215122);
INSERT INTO `views` VALUES (2021, 2, 21, 49512103476, 8767, 103079215123);
INSERT INTO `views` VALUES (2021, 2, 21, 103872058850, 17199, 103079215124);
INSERT INTO `views` VALUES (2021, 5, 15, 25823346949, 5877, 103079215125);
INSERT INTO `views` VALUES (2021, 3, 24, 55382180630, 19055, 111669149696);
INSERT INTO `views` VALUES (2021, 1, 31, 27220441701, 26325, 111669149697);
INSERT INTO `views` VALUES (2021, 5, 9, 78085593390, 18096, 111669149698);
INSERT INTO `views` VALUES (2021, 4, 25, 59511511968, 21220, 111669149699);
INSERT INTO `views` VALUES (2021, 1, 16, 91459005105, 29597, 111669149700);
INSERT INTO `views` VALUES (2021, 1, 16, 50084518460, 12830, 111669149701);
INSERT INTO `views` VALUES (2021, 3, 10, 29954119565, 7105, 111669149702);
INSERT INTO `views` VALUES (2021, 3, 8, 35721918563, 19263, 111669149703);
INSERT INTO `views` VALUES (2021, 4, 1, 29994978276, 12279, 111669149704);
INSERT INTO `views` VALUES (2021, 3, 16, 24344881716, 11809, 111669149705);
INSERT INTO `views` VALUES (2021, 4, 14, 15433007963, 965, 111669149706);
INSERT INTO `views` VALUES (2021, 4, 12, 29397756119, 3942, 111669149707);
INSERT INTO `views` VALUES (2021, 3, 3, 32464966907, 7215, 111669149708);
INSERT INTO `views` VALUES (2021, 4, 28, 17865231533, 4753, 111669149709);
INSERT INTO `views` VALUES (2021, 3, 5, 16098165826, 16370, 111669149710);
INSERT INTO `views` VALUES (2021, 5, 14, 47373948303, 3376, 111669149711);
INSERT INTO `views` VALUES (2021, 2, 15, 7655805681, 11510, 111669149712);
INSERT INTO `views` VALUES (2021, 2, 6, 36269765942, 30220, 120259084288);
INSERT INTO `views` VALUES (2021, 1, 30, 53443757118, 10244, 120259084289);
INSERT INTO `views` VALUES (2021, 1, 24, 71046859525, 8037, 120259084290);
INSERT INTO `views` VALUES (2021, 4, 26, 51663154312, 52791, 120259084291);
INSERT INTO `views` VALUES (2021, 2, 7, 77230124893, 16767, 120259084292);
INSERT INTO `views` VALUES (2021, 3, 27, 31870586358, 1144, 120259084293);
INSERT INTO `views` VALUES (2021, 4, 6, 41312973588, 5791, 120259084294);
INSERT INTO `views` VALUES (2021, 3, 28, 34225849508, 2838, 120259084295);
INSERT INTO `views` VALUES (2021, 3, 3, 71762383593, 17933, 120259084296);
INSERT INTO `views` VALUES (2021, 4, 18, 37987294160, 2833, 120259084297);
INSERT INTO `views` VALUES (2021, 2, 18, 59834491349, 13734, 120259084298);
INSERT INTO `views` VALUES (2021, 2, 21, 43148944066, 6131, 120259084299);
INSERT INTO `views` VALUES (2021, 2, 16, 33961295101, 1615, 120259084300);
INSERT INTO `views` VALUES (2021, 1, 16, 94137968937, 34376, 128849018880);
INSERT INTO `views` VALUES (2021, 1, 29, 42862894866, 13643, 128849018881);
INSERT INTO `views` VALUES (2021, 4, 20, 106390832386, 13468, 128849018882);
INSERT INTO `views` VALUES (2021, 2, 20, 76388665596, 11980, 128849018883);
INSERT INTO `views` VALUES (2021, 4, 16, 45565576537, 1515, 128849018884);
INSERT INTO `views` VALUES (2021, 3, 6, 62907789872, 16900, 128849018885);
INSERT INTO `views` VALUES (2021, 1, 22, 58740522424, 7914, 137438953472);
INSERT INTO `views` VALUES (2021, 1, 22, 62235678625, 19478, 137438953473);
INSERT INTO `views` VALUES (2021, 1, 26, 60100662271, 13000, 137438953474);
INSERT INTO `views` VALUES (2021, 1, 28, 47761263953, 12975, 137438953475);
INSERT INTO `views` VALUES (2021, 4, 23, 45753131475, 24638, 137438953476);
INSERT INTO `views` VALUES (2021, 1, 16, 83750975726, 25132, 137438953477);
INSERT INTO `views` VALUES (2021, 4, 25, 68394328636, 48217, 137438953478);
INSERT INTO `views` VALUES (2021, 5, 12, 20737654907, 9465, 137438953479);
INSERT INTO `views` VALUES (2021, 4, 2, 8095704483, 6140, 137438953480);
INSERT INTO `views` VALUES (2021, 4, 11, 35810813510, 909, 137438953481);
INSERT INTO `views` VALUES (2021, 3, 19, 27882596392, 18737, 137438953482);
INSERT INTO `views` VALUES (2021, 3, 19, 50479854818, 17596, 137438953483);
INSERT INTO `views` VALUES (2021, 3, 19, 16461905869, 10519, 137438953484);
INSERT INTO `views` VALUES (2021, 3, 6, 39445507648, 6137, 137438953485);
INSERT INTO `views` VALUES (2021, 3, 6, 51294105266, 6534, 137438953486);
INSERT INTO `views` VALUES (2021, 2, 8, 52713036774, 4114, 137438953487);
INSERT INTO `views` VALUES (2021, 2, 16, 26039514151, 4561, 137438953488);
INSERT INTO `views` VALUES (2021, 1, 27, 68089771530, 13512, 146028888064);
INSERT INTO `views` VALUES (2021, 3, 20, 53517907316, 5381, 146028888065);
INSERT INTO `views` VALUES (2021, 4, 22, 49163259497, 17659, 146028888066);
INSERT INTO `views` VALUES (2021, 2, 24, 68631838882, 16287, 146028888067);
INSERT INTO `views` VALUES (2021, 5, 11, 5427514418, 15746, 146028888068);
INSERT INTO `views` VALUES (2021, 4, 2, 34526717376, 10740, 146028888069);
INSERT INTO `views` VALUES (2021, 3, 2, 735827348, 77, 146028888070);
INSERT INTO `views` VALUES (2021, 2, 23, 25475094587, 1583, 146028888071);
INSERT INTO `views` VALUES (2021, 5, 2, 47582765758, 2638, 146028888072);
INSERT INTO `views` VALUES (2021, 2, 21, 35721710308, 9388, 146028888073);
INSERT INTO `views` VALUES (2021, 2, 14, 52083172516, 9725, 146028888074);
INSERT INTO `views` VALUES (2021, 2, 17, 17999630372, 2848, 146028888075);
INSERT INTO `views` VALUES (2021, 4, 9, 55696646283, 68579, 154618822656);
INSERT INTO `views` VALUES (2021, 4, 9, 89562265267, 15712, 154618822657);
INSERT INTO `views` VALUES (2021, 1, 20, 30794009616, 12045, 154618822658);
INSERT INTO `views` VALUES (2021, 3, 20, 54507045891, 12473, 154618822659);
INSERT INTO `views` VALUES (2021, 1, 31, 63417693653, 20724, 154618822660);
INSERT INTO `views` VALUES (2021, 5, 10, 5575824677, 17024, 154618822661);
INSERT INTO `views` VALUES (2021, 3, 15, 27181967843, 14174, 154618822662);
INSERT INTO `views` VALUES (2021, 4, 14, 53673424702, 17260, 154618822663);
INSERT INTO `views` VALUES (2021, 4, 13, 55530541769, 2906, 154618822664);
INSERT INTO `views` VALUES (2021, 2, 23, 43063593726, 937, 154618822665);
INSERT INTO `views` VALUES (2021, 3, 3, 21814804010, 7922, 154618822666);
INSERT INTO `views` VALUES (2021, 4, 10, 50772498057, 7186, 154618822667);
INSERT INTO `views` VALUES (2021, 5, 13, 15066428665, 3556, 154618822668);
INSERT INTO `views` VALUES (2021, 3, 14, 34079642315, 17229, 154618822669);
INSERT INTO `views` VALUES (2021, 4, 16, 56103604735, 12470, 154618822670);
INSERT INTO `views` VALUES (2021, 3, 6, 30340945448, 5910, 154618822671);
INSERT INTO `views` VALUES (2021, 4, 21, 18166645874, 1321, 154618822672);
INSERT INTO `views` VALUES (2021, 2, 27, 33344230148, 7027, 154618822673);
INSERT INTO `views` VALUES (2021, 2, 5, 51068178705, 7720, 163208757248);
INSERT INTO `views` VALUES (2021, 2, 4, 40941462785, 26613, 163208757249);
INSERT INTO `views` VALUES (2021, 1, 20, 36367354421, 18409, 163208757250);
INSERT INTO `views` VALUES (2021, 5, 9, 6975306189, 18884, 163208757251);
INSERT INTO `views` VALUES (2021, 2, 24, 74125074691, 14281, 163208757252);
INSERT INTO `views` VALUES (2021, 3, 23, 39190489481, 22216, 163208757253);
INSERT INTO `views` VALUES (2021, 3, 28, 48907535151, 27587, 163208757254);
INSERT INTO `views` VALUES (2021, 3, 26, 96923881142, 13791, 163208757255);
INSERT INTO `views` VALUES (2021, 2, 22, 112197797527, 11812, 163208757256);
INSERT INTO `views` VALUES (2021, 5, 13, 24249500213, 20257, 163208757257);
INSERT INTO `views` VALUES (2021, 4, 7, 316361651, 3311, 163208757258);
INSERT INTO `views` VALUES (2021, 3, 22, 20813418643, 2496, 163208757259);
INSERT INTO `views` VALUES (2021, 4, 21, 3792311455, 4347, 163208757260);
INSERT INTO `views` VALUES (2021, 4, 27, 19213421338, 5618, 163208757261);
INSERT INTO `views` VALUES (2021, 4, 5, 19258438709, 11402, 163208757262);
INSERT INTO `views` VALUES (2021, 3, 13, 52961935598, 16319, 163208757263);
INSERT INTO `views` VALUES (2021, 1, 26, 70586508455, 17078, 171798691840);
INSERT INTO `views` VALUES (2021, 1, 31, 26363638363, 17754, 171798691841);
INSERT INTO `views` VALUES (2021, 1, 20, 30503392232, 7563, 171798691842);
INSERT INTO `views` VALUES (2021, 3, 25, 8106403291, 7212, 171798691843);
INSERT INTO `views` VALUES (2021, 4, 6, 48263377169, 18455, 171798691844);
INSERT INTO `views` VALUES (2021, 3, 23, 18010987187, 11510, 171798691845);
INSERT INTO `views` VALUES (2021, 4, 29, 55178478313, 22104, 171798691846);
INSERT INTO `views` VALUES (2021, 4, 24, 59038216185, 3737, 171798691847);
INSERT INTO `views` VALUES (2021, 3, 22, 35902664302, 8306, 171798691848);
INSERT INTO `views` VALUES (2021, 4, 21, 37943853292, 11290, 171798691849);
INSERT INTO `views` VALUES (2021, 5, 4, 40572966041, 4340, 171798691850);
INSERT INTO `views` VALUES (2021, 4, 18, 93666686216, 5874, 171798691851);
INSERT INTO `views` VALUES (2021, 3, 29, 64325475359, 7870, 171798691852);
INSERT INTO `views` VALUES (2021, 2, 15, 232743339, 1752, 171798691853);
INSERT INTO `views` VALUES (2021, 3, 24, 38133042464, 11785, 180388626432);
INSERT INTO `views` VALUES (2021, 3, 1, 52742745384, 16952, 180388626433);
INSERT INTO `views` VALUES (2021, 1, 17, 143632063567, 17776, 180388626434);
INSERT INTO `views` VALUES (2021, 5, 13, 65347129633, 16673, 180388626435);
INSERT INTO `views` VALUES (2021, 3, 16, 41915422902, 11469, 180388626436);
INSERT INTO `views` VALUES (2021, 4, 16, 87430219631, 14807, 180388626437);
INSERT INTO `views` VALUES (2021, 3, 26, 14142871668, 7539, 180388626438);
INSERT INTO `views` VALUES (2021, 2, 19, 39911662911, 17966, 180388626439);
INSERT INTO `views` VALUES (2021, 4, 10, 59655206564, 17186, 180388626440);
INSERT INTO `views` VALUES (2021, 4, 4, 10681637507, 5, 180388626441);
INSERT INTO `views` VALUES (2021, 1, 23, 54363320987, 10556, 188978561024);
INSERT INTO `views` VALUES (2021, 1, 27, 12554431383, 40462, 188978561025);
INSERT INTO `views` VALUES (2021, 4, 8, 45188691297, 5733, 188978561026);
INSERT INTO `views` VALUES (2021, 5, 1, 51152854788, 4688, 188978561027);
INSERT INTO `views` VALUES (2021, 4, 19, 85103241505, 21176, 188978561028);
INSERT INTO `views` VALUES (2021, 3, 16, 26416627555, 19904, 188978561029);
INSERT INTO `views` VALUES (2021, 4, 7, 45301324536, 30545, 188978561030);
INSERT INTO `views` VALUES (2021, 3, 26, 28823247445, 9892, 188978561031);
INSERT INTO `views` VALUES (2021, 4, 3, 46461081934, 10986, 188978561032);
INSERT INTO `views` VALUES (2021, 2, 19, 19942793157, 8105, 188978561033);
INSERT INTO `views` VALUES (2021, 3, 5, 18547286, 137, 188978561034);
INSERT INTO `views` VALUES (2021, 2, 15, 22307463826, 10031, 188978561035);
INSERT INTO `views` VALUES (2021, 2, 11, 37521330236, 14366, 188978561036);
INSERT INTO `views` VALUES (2021, 1, 26, 32292587826, 13627, 197568495616);
INSERT INTO `views` VALUES (2021, 1, 29, 68258756183, 17170, 197568495617);
INSERT INTO `views` VALUES (2021, 1, 29, 38329013230, 14591, 197568495618);
INSERT INTO `views` VALUES (2021, 5, 7, 56850109493, 7659, 197568495619);
INSERT INTO `views` VALUES (2021, 4, 19, 103323227914, 14846, 197568495620);
INSERT INTO `views` VALUES (2021, 3, 27, 103564867365, 16240, 197568495621);
INSERT INTO `views` VALUES (2021, 3, 16, 12615442518, 3034, 197568495622);
INSERT INTO `views` VALUES (2021, 2, 15, 18802664655, 5084, 197568495623);
INSERT INTO `views` VALUES (2021, 2, 12, 4512644411, 661, 197568495624);
INSERT INTO `views` VALUES (2021, 1, 22, 62255971327, 34911, 206158430208);
INSERT INTO `views` VALUES (2021, 1, 22, 66051544807, 22325, 206158430209);
INSERT INTO `views` VALUES (2021, 1, 18, 64678772157, 18619, 206158430210);
INSERT INTO `views` VALUES (2021, 2, 24, 35555420065, 12664, 206158430211);
INSERT INTO `views` VALUES (2021, 3, 4, 43837183336, 11722, 206158430212);
INSERT INTO `views` VALUES (2021, 3, 4, 53959893195, 10417, 206158430213);
INSERT INTO `views` VALUES (2021, 3, 23, 20703041709, 11586, 206158430214);
INSERT INTO `views` VALUES (2021, 4, 19, 23108005379, 13659, 206158430215);
INSERT INTO `views` VALUES (2021, 2, 20, 79267113920, 14686, 206158430216);
INSERT INTO `views` VALUES (2021, 4, 13, 83655896404, 10479, 206158430217);
INSERT INTO `views` VALUES (2021, 4, 11, 66106024467, 8915, 206158430218);
INSERT INTO `views` VALUES (2021, 3, 31, 34402364859, 14129, 206158430219);
INSERT INTO `views` VALUES (2021, 3, 9, 66047890052, 11184, 206158430220);
INSERT INTO `views` VALUES (2021, 4, 28, 29322004369, 9660, 206158430221);
INSERT INTO `views` VALUES (2021, 4, 28, 39786202067, 11490, 206158430222);
INSERT INTO `views` VALUES (2021, 4, 19, 15976729560, 1454, 206158430223);
INSERT INTO `views` VALUES (2021, 3, 13, 25679869063, 1297, 206158430224);
INSERT INTO `views` VALUES (2021, 5, 14, 29278413475, 6192, 206158430225);
INSERT INTO `views` VALUES (2021, 2, 13, 7403533615, 10231, 206158430226);
INSERT INTO `views` VALUES (2021, 1, 21, 87798232616, 20564, 214748364800);
INSERT INTO `views` VALUES (2021, 1, 18, 21936370014, 12214, 214748364801);
INSERT INTO `views` VALUES (2021, 2, 20, 102610231826, 21407, 214748364802);
INSERT INTO `views` VALUES (2021, 5, 6, 12161107320, 10667, 214748364803);
INSERT INTO `views` VALUES (2021, 4, 13, 34129319685, 12359, 214748364804);
INSERT INTO `views` VALUES (2021, 4, 29, 42182824442, 17461, 214748364805);
INSERT INTO `views` VALUES (2021, 2, 27, 47861994664, 9458, 214748364806);
INSERT INTO `views` VALUES (2021, 3, 30, 73124830201, 6880, 214748364807);
INSERT INTO `views` VALUES (2021, 2, 22, 45139434024, 698, 214748364808);
INSERT INTO `views` VALUES (2021, 4, 16, 44280546737, 125, 214748364809);
INSERT INTO `views` VALUES (2021, 2, 24, 49662217961, 17558, 223338299392);
INSERT INTO `views` VALUES (2021, 1, 19, 9923401953, 774, 223338299393);
INSERT INTO `views` VALUES (2021, 1, 15, 32073154742, 11219, 223338299394);
INSERT INTO `views` VALUES (2021, 3, 10, 29275219623, 22922, 223338299395);
INSERT INTO `views` VALUES (2021, 3, 11, 24177664491, 31498, 223338299396);
INSERT INTO `views` VALUES (2021, 3, 4, 17017739327, 7435, 223338299397);
INSERT INTO `views` VALUES (2021, 5, 12, 69324999935, 9022, 223338299398);
INSERT INTO `views` VALUES (2021, 4, 2, 39069306568, 18575, 223338299399);
INSERT INTO `views` VALUES (2021, 3, 2, 23450929305, 22316, 223338299400);
INSERT INTO `views` VALUES (2021, 2, 19, 16843081477, 18469, 223338299401);
INSERT INTO `views` VALUES (2021, 3, 31, 29712677510, 4124, 223338299402);
INSERT INTO `views` VALUES (2021, 3, 14, 58019555868, 910, 223338299403);
INSERT INTO `views` VALUES (2021, 4, 20, 52516445412, 4867, 223338299404);
INSERT INTO `views` VALUES (2021, 2, 8, 106859056434, 17736, 223338299405);
INSERT INTO `views` VALUES (2021, 2, 18, 11988437592, 2396, 223338299406);
INSERT INTO `views` VALUES (2021, 4, 4, 60211340368, 9462, 223338299407);
INSERT INTO `views` VALUES (2021, 5, 14, 14811552066, 8765, 223338299408);
INSERT INTO `views` VALUES (2021, 2, 2, 39160300270, 23100, 231928233984);
INSERT INTO `views` VALUES (2021, 3, 17, 44492900113, 17546, 231928233985);
INSERT INTO `views` VALUES (2021, 1, 15, 65394335456, 7566, 231928233986);
INSERT INTO `views` VALUES (2021, 1, 19, 90255067529, 22020, 231928233987);
INSERT INTO `views` VALUES (2021, 3, 1, 38036773933, 21128, 231928233988);
INSERT INTO `views` VALUES (2021, 5, 11, 17384663573, 13611, 231928233989);
INSERT INTO `views` VALUES (2021, 5, 11, 19504818703, 10545, 231928233990);
INSERT INTO `views` VALUES (2021, 5, 11, 40742819485, 27407, 231928233991);
INSERT INTO `views` VALUES (2021, 3, 12, 36912326778, 16091, 231928233992);
INSERT INTO `views` VALUES (2021, 3, 13, 46308340668, 5659, 231928233993);
INSERT INTO `views` VALUES (2021, 2, 13, 46648622101, 10773, 231928233994);
INSERT INTO `views` VALUES (2021, 1, 24, 108472858065, 10729, 240518168576);
INSERT INTO `views` VALUES (2021, 5, 6, 41186736462, 34775, 240518168577);
INSERT INTO `views` VALUES (2021, 2, 25, 82397969095, 11062, 240518168578);
INSERT INTO `views` VALUES (2021, 3, 9, 17598057452, 1327, 240518168579);
INSERT INTO `views` VALUES (2021, 3, 19, 28342498910, 10779, 240518168580);
INSERT INTO `views` VALUES (2021, 4, 16, 27130649247, 4314, 240518168581);
INSERT INTO `views` VALUES (2021, 1, 27, 37798885275, 26804, 249108103168);
INSERT INTO `views` VALUES (2021, 1, 19, 46770968627, 15258, 249108103169);
INSERT INTO `views` VALUES (2021, 2, 20, 29017373974, 14525, 249108103170);
INSERT INTO `views` VALUES (2021, 4, 2, 85929514120, 6002, 249108103171);
INSERT INTO `views` VALUES (2021, 3, 30, 23002618259, 12208, 249108103172);
INSERT INTO `views` VALUES (2021, 5, 13, 25316369849, 7212, 249108103173);
INSERT INTO `views` VALUES (2021, 3, 14, 54226041443, 4746, 249108103174);
INSERT INTO `views` VALUES (2021, 2, 11, 32834946525, 305, 249108103175);
INSERT INTO `views` VALUES (2021, 1, 22, 33672053544, 25369, 257698037760);
INSERT INTO `views` VALUES (2021, 4, 9, 45627679477, 64358, 257698037761);
INSERT INTO `views` VALUES (2021, 5, 8, 54211833866, 21768, 257698037762);
INSERT INTO `views` VALUES (2021, 4, 26, 24469847057, 43651, 257698037763);
INSERT INTO `views` VALUES (2021, 4, 26, 60440875195, 14278, 257698037764);
INSERT INTO `views` VALUES (2021, 5, 1, 15930625468, 5815, 257698037765);
INSERT INTO `views` VALUES (2021, 1, 31, 61995556297, 24672, 257698037766);
INSERT INTO `views` VALUES (2021, 1, 19, 60167120814, 18761, 257698037767);
INSERT INTO `views` VALUES (2021, 2, 3, 12472746566, 5318, 257698037768);
INSERT INTO `views` VALUES (2021, 5, 7, 66333033803, 18327, 257698037769);
INSERT INTO `views` VALUES (2021, 3, 8, 16411956604, 19389, 257698037770);
INSERT INTO `views` VALUES (2021, 2, 25, 74686668699, 9039, 257698037771);
INSERT INTO `views` VALUES (2021, 4, 14, 112687582218, 10706, 257698037772);
INSERT INTO `views` VALUES (2021, 4, 29, 22314394220, 8908, 257698037773);
INSERT INTO `views` VALUES (2021, 4, 15, 35086095114, 11017, 257698037774);
INSERT INTO `views` VALUES (2021, 3, 26, 59094047003, 10285, 257698037775);
INSERT INTO `views` VALUES (2021, 4, 2, 409440643, 924, 257698037776);
INSERT INTO `views` VALUES (2021, 4, 12, 35005183589, 23417, 257698037777);
INSERT INTO `views` VALUES (2021, 2, 23, 75801405058, 8744, 257698037778);
INSERT INTO `views` VALUES (2021, 3, 3, 20354727279, 11907, 257698037779);
INSERT INTO `views` VALUES (2021, 3, 22, 3082678909, 2455, 257698037780);
INSERT INTO `views` VALUES (2021, 5, 14, 72840649042, 17444, 257698037781);
INSERT INTO `views` VALUES (2021, 3, 21, 51701493708, 21819, 257698037782);
INSERT INTO `views` VALUES (2021, 4, 30, 4772776263, 5577, 257698037783);
INSERT INTO `views` VALUES (2021, 5, 3, 26855125181, 6689, 257698037784);
INSERT INTO `views` VALUES (2021, 2, 11, 35079170158, 7726, 257698037785);
INSERT INTO `views` VALUES (2021, 4, 4, 76638225164, 15440, 257698037786);
INSERT INTO `views` VALUES (2021, 1, 22, 75152042438, 14499, 266287972352);
INSERT INTO `views` VALUES (2021, 2, 1, 75918237425, 16970, 266287972353);
INSERT INTO `views` VALUES (2021, 3, 11, 27145788824, 37481, 266287972354);
INSERT INTO `views` VALUES (2021, 1, 19, 27797349855, 11898, 266287972355);
INSERT INTO `views` VALUES (2021, 1, 19, 50522630227, 9959, 266287972356);
INSERT INTO `views` VALUES (2021, 3, 1, 23293560720, 18542, 266287972357);
INSERT INTO `views` VALUES (2021, 3, 4, 36177726774, 17229, 266287972358);
INSERT INTO `views` VALUES (2021, 2, 3, 31684299139, 10946, 266287972359);
INSERT INTO `views` VALUES (2021, 3, 27, 92460661491, 12002, 266287972360);
INSERT INTO `views` VALUES (2021, 3, 25, 30174960928, 7283, 266287972361);
INSERT INTO `views` VALUES (2021, 2, 22, 53052177726, 15793, 266287972362);
INSERT INTO `views` VALUES (2021, 2, 22, 43313014992, 9864, 266287972363);
INSERT INTO `views` VALUES (2021, 3, 21, 59555743671, 13995, 266287972364);
INSERT INTO `views` VALUES (2021, 4, 5, 47142368935, 21776, 266287972365);
INSERT INTO `views` VALUES (2021, 5, 14, 34648539254, 5199, 266287972366);
INSERT INTO `views` VALUES (2021, 2, 14, 3760188648, 258, 266287972367);
INSERT INTO `views` VALUES (2021, 1, 23, 39574626742, 8318, 274877906944);
INSERT INTO `views` VALUES (2021, 4, 8, 66861331821, 59729, 274877906945);
INSERT INTO `views` VALUES (2021, 4, 8, 55852966368, 51964, 274877906946);
INSERT INTO `views` VALUES (2021, 2, 1, 8993342646, 19702, 274877906947);
INSERT INTO `views` VALUES (2021, 3, 16, 26579395084, 7791, 274877906948);
INSERT INTO `views` VALUES (2021, 2, 19, 29555144388, 5849, 274877906949);
INSERT INTO `views` VALUES (2021, 4, 12, 17105398756, 9598, 274877906950);
INSERT INTO `views` VALUES (2021, 5, 13, 70701433205, 7339, 274877906951);
INSERT INTO `views` VALUES (2021, 4, 27, 35527951187, 5600, 274877906952);
INSERT INTO `views` VALUES (2021, 2, 8, 26488128317, 7894, 274877906953);
INSERT INTO `views` VALUES (2021, 3, 29, 9207967093, 8134, 274877906954);
INSERT INTO `views` VALUES (2021, 2, 28, 54819222621, 7210, 274877906955);
INSERT INTO `views` VALUES (2021, 2, 16, 58898122936, 7006, 274877906956);
INSERT INTO `views` VALUES (2021, 2, 12, 9723686234, 156, 274877906957);
INSERT INTO `views` VALUES (2021, 1, 23, 59547673957, 1570, 283467841536);
INSERT INTO `views` VALUES (2021, 3, 11, 12704288400, 40206, 283467841537);
INSERT INTO `views` VALUES (2021, 1, 14, 21799691482, 12177, 283467841538);
INSERT INTO `views` VALUES (2021, 3, 10, 33850187369, 4895, 283467841539);
INSERT INTO `views` VALUES (2021, 5, 12, 54666425936, 15218, 283467841540);
INSERT INTO `views` VALUES (2021, 5, 5, 110236320387, 21936, 283467841541);
INSERT INTO `views` VALUES (2021, 3, 9, 27652251758, 12879, 283467841542);
INSERT INTO `views` VALUES (2021, 4, 20, 37204737751, 9216, 283467841543);
INSERT INTO `views` VALUES (2021, 5, 4, 21029306131, 6981, 283467841544);
INSERT INTO `views` VALUES (2021, 2, 21, 85006866643, 5086, 283467841545);
INSERT INTO `views` VALUES (2021, 2, 27, 17457035044, 7895, 283467841546);
INSERT INTO `views` VALUES (2021, 2, 13, 12016243825, 116, 283467841547);
INSERT INTO `views` VALUES (2021, 2, 5, 84978896172, 27075, 292057776128);
INSERT INTO `views` VALUES (2021, 1, 24, 96652706498, 24714, 292057776129);
INSERT INTO `views` VALUES (2021, 4, 24, 18529479513, 11967, 292057776130);
INSERT INTO `views` VALUES (2021, 5, 12, 48619496770, 13714, 292057776131);
INSERT INTO `views` VALUES (2021, 3, 15, 16962064283, 9304, 292057776132);
INSERT INTO `views` VALUES (2021, 4, 6, 16875860047, 18171, 292057776133);
INSERT INTO `views` VALUES (2021, 4, 6, 33409913546, 10927, 292057776134);
INSERT INTO `views` VALUES (2021, 2, 26, 42928759334, 5025, 292057776135);
INSERT INTO `views` VALUES (2021, 3, 21, 114348116454, 6514, 292057776136);
INSERT INTO `views` VALUES (2021, 2, 8, 45126674281, 7714, 292057776137);
INSERT INTO `views` VALUES (2021, 2, 11, 42223664026, 6207, 292057776138);
INSERT INTO `views` VALUES (2021, 2, 12, 5887864133, 4270, 292057776139);
INSERT INTO `views` VALUES (2021, 5, 9, 76023887913, 26469, 300647710720);
INSERT INTO `views` VALUES (2021, 1, 28, 59371731712, 15148, 300647710721);
INSERT INTO `views` VALUES (2021, 4, 26, 20570503699, 43188, 300647710722);
INSERT INTO `views` VALUES (2021, 5, 9, 22231049813, 16666, 300647710723);
INSERT INTO `views` VALUES (2021, 1, 15, 60856993684, 6063, 300647710724);
INSERT INTO `views` VALUES (2021, 5, 7, 31277404024, 5841, 300647710725);
INSERT INTO `views` VALUES (2021, 2, 25, 64269801241, 10942, 300647710726);
INSERT INTO `views` VALUES (2021, 3, 27, 143489970149, 19778, 300647710727);
INSERT INTO `views` VALUES (2021, 3, 15, 75451703574, 1282, 300647710728);
INSERT INTO `views` VALUES (2021, 4, 14, 123872417461, 14545, 300647710729);
INSERT INTO `views` VALUES (2021, 3, 28, 53093723461, 17118, 300647710730);
INSERT INTO `views` VALUES (2021, 3, 28, 56273615635, 21589, 300647710731);
INSERT INTO `views` VALUES (2021, 3, 14, 68292071018, 10541, 300647710732);
INSERT INTO `views` VALUES (2021, 3, 29, 37057221205, 12382, 300647710733);
INSERT INTO `views` VALUES (2021, 5, 3, 28254081662, 3273, 300647710734);
INSERT INTO `views` VALUES (2021, 5, 2, 35180451659, 14514, 300647710735);
INSERT INTO `views` VALUES (2021, 2, 10, 35941436598, 6450, 300647710736);
INSERT INTO `views` VALUES (2021, 2, 21, 16399264406, 5885, 300647710737);
INSERT INTO `views` VALUES (2021, 5, 14, 21448165497, 17008, 300647710738);
INSERT INTO `views` VALUES (2021, 5, 15, 7045496591, 1433, 300647710739);
INSERT INTO `views` VALUES (2021, 4, 9, 23093756055, 32734, 309237645312);
INSERT INTO `views` VALUES (2021, 1, 30, 52559234580, 28158, 309237645313);
INSERT INTO `views` VALUES (2021, 1, 30, 44827542502, 29177, 309237645314);
INSERT INTO `views` VALUES (2021, 3, 20, 33844483589, 8120, 309237645315);
INSERT INTO `views` VALUES (2021, 5, 1, 62083076117, 4090, 309237645316);
INSERT INTO `views` VALUES (2021, 3, 23, 34373275637, 10643, 309237645317);
INSERT INTO `views` VALUES (2021, 3, 28, 46794181581, 6846, 309237645318);
INSERT INTO `views` VALUES (2021, 3, 28, 53905134261, 12503, 309237645319);
INSERT INTO `views` VALUES (2021, 3, 3, 27542298726, 10751, 309237645320);
INSERT INTO `views` VALUES (2021, 3, 9, 44450737816, 18563, 309237645321);
INSERT INTO `views` VALUES (2021, 4, 10, 32860594191, 3239, 309237645322);
INSERT INTO `views` VALUES (2021, 3, 19, 66810303142, 21058, 309237645323);
INSERT INTO `views` VALUES (2021, 4, 21, 11607527160, 9325, 309237645324);
INSERT INTO `views` VALUES (2021, 3, 29, 92577938134, 14770, 309237645325);
INSERT INTO `views` VALUES (2021, 2, 10, 53027429514, 7747, 309237645326);
INSERT INTO `views` VALUES (2021, 2, 13, 47406716005, 9509, 309237645327);
INSERT INTO `views` VALUES (2021, 2, 2, 58426000801, 16546, 317827579904);
INSERT INTO `views` VALUES (2021, 1, 30, 27686383313, 37070, 317827579905);
INSERT INTO `views` VALUES (2021, 3, 18, 31328603068, 20399, 317827579906);
INSERT INTO `views` VALUES (2021, 4, 22, 49841051211, 22400, 317827579907);
INSERT INTO `views` VALUES (2021, 3, 1, 42887714045, 9345, 317827579908);
INSERT INTO `views` VALUES (2021, 4, 10, 28074893279, 7493, 317827579909);
INSERT INTO `views` VALUES (2021, 2, 28, 41196846181, 9418, 317827579910);
INSERT INTO `views` VALUES (2021, 2, 16, 113584511465, 10508, 317827579911);
INSERT INTO `views` VALUES (2021, 2, 16, 42629762264, 6143, 317827579912);
INSERT INTO `views` VALUES (2021, 1, 15, 56289143559, 5985, 326417514496);
INSERT INTO `views` VALUES (2021, 4, 14, 82713056667, 7614, 326417514497);
INSERT INTO `views` VALUES (2021, 4, 29, 25089593697, 9433, 326417514498);
INSERT INTO `views` VALUES (2021, 4, 15, 57465935992, 17420, 326417514499);
INSERT INTO `views` VALUES (2021, 2, 22, 110392382820, 15164, 326417514500);
INSERT INTO `views` VALUES (2021, 3, 14, 12221892389, 7308, 326417514501);
INSERT INTO `views` VALUES (2021, 2, 8, 111560752560, 8580, 326417514502);
INSERT INTO `views` VALUES (2021, 2, 9, 55465051061, 5603, 326417514503);
INSERT INTO `views` VALUES (2021, 5, 3, 21865419422, 4352, 326417514504);
INSERT INTO `views` VALUES (2021, 2, 1, 39362893658, 23099, 335007449088);
INSERT INTO `views` VALUES (2021, 1, 25, 53459757276, 4220, 335007449089);
INSERT INTO `views` VALUES (2021, 1, 26, 38351729136, 20003, 335007449090);
INSERT INTO `views` VALUES (2021, 5, 10, 33082637592, 18574, 335007449091);
INSERT INTO `views` VALUES (2021, 5, 11, 15001856828, 22617, 335007449092);
INSERT INTO `views` VALUES (2021, 3, 8, 14506008565, 722, 335007449093);
INSERT INTO `views` VALUES (2021, 3, 15, 73804820337, 4721, 335007449094);
INSERT INTO `views` VALUES (2021, 3, 26, 44522658312, 15435, 335007449095);
INSERT INTO `views` VALUES (2021, 2, 19, 67031611131, 7148, 335007449096);
INSERT INTO `views` VALUES (2021, 4, 28, 40478624629, 11357, 335007449097);
INSERT INTO `views` VALUES (2021, 4, 21, 11990089499, 15945, 335007449098);
INSERT INTO `views` VALUES (2021, 4, 18, 128660334661, 5586, 335007449099);
INSERT INTO `views` VALUES (2021, 3, 29, 16090472481, 9889, 335007449100);
INSERT INTO `views` VALUES (2021, 2, 28, 56558728559, 4632, 335007449101);
INSERT INTO `views` VALUES (2021, 5, 14, 4677372887, 8806, 335007449102);
INSERT INTO `views` VALUES (2021, 2, 16, 75135346461, 1014, 335007449103);
INSERT INTO `views` VALUES (2021, 2, 7, 19412183646, 31539, 343597383680);
INSERT INTO `views` VALUES (2021, 3, 17, 14258761764, 5290, 343597383681);
INSERT INTO `views` VALUES (2021, 1, 26, 86165138770, 7756, 343597383682);
INSERT INTO `views` VALUES (2021, 3, 20, 50516922717, 4715, 343597383683);
INSERT INTO `views` VALUES (2021, 4, 1, 30323464429, 9923, 343597383684);
INSERT INTO `views` VALUES (2021, 5, 6, 8445004221, 874, 343597383685);
INSERT INTO `views` VALUES (2021, 3, 28, 45029530705, 14458, 343597383686);
INSERT INTO `views` VALUES (2021, 4, 30, 35790706366, 9999, 343597383687);
INSERT INTO `views` VALUES (2021, 3, 31, 49087207380, 9324, 343597383688);
INSERT INTO `views` VALUES (2021, 5, 5, 35897172525, 9822, 343597383689);
INSERT INTO `views` VALUES (2021, 4, 17, 76305736091, 9167, 343597383690);
INSERT INTO `views` VALUES (2021, 3, 21, 103665663090, 7244, 343597383691);
INSERT INTO `views` VALUES (2021, 5, 4, 31243906906, 7870, 343597383692);
INSERT INTO `views` VALUES (2021, 4, 18, 108496946634, 11660, 343597383693);
INSERT INTO `views` VALUES (2021, 2, 18, 33572607008, 8933, 343597383694);
INSERT INTO `views` VALUES (2021, 3, 13, 67599825621, 3990, 343597383695);
INSERT INTO `views` VALUES (2021, 2, 11, 1413235, 6, 343597383696);
INSERT INTO `views` VALUES (2021, 2, 6, 67018943227, 28311, 352187318272);
INSERT INTO `views` VALUES (2021, 5, 8, 84838308367, 20188, 352187318273);
INSERT INTO `views` VALUES (2021, 1, 24, 120358514248, 24672, 352187318274);
INSERT INTO `views` VALUES (2021, 5, 1, 69410367474, 16385, 352187318275);
INSERT INTO `views` VALUES (2021, 1, 15, 38207632413, 12868, 352187318276);
INSERT INTO `views` VALUES (2021, 1, 15, 47777152916, 12392, 352187318277);
INSERT INTO `views` VALUES (2021, 1, 25, 53412180203, 17562, 352187318278);
INSERT INTO `views` VALUES (2021, 2, 7, 77470310776, 10780, 352187318279);
INSERT INTO `views` VALUES (2021, 3, 4, 50408131653, 12953, 352187318280);
INSERT INTO `views` VALUES (2021, 3, 23, 34548439027, 6661, 352187318281);
INSERT INTO `views` VALUES (2021, 3, 28, 71545234136, 19524, 352187318282);
INSERT INTO `views` VALUES (2021, 2, 22, 51111664559, 7753, 352187318283);
INSERT INTO `views` VALUES (2021, 2, 10, 30003378189, 6355, 352187318284);
INSERT INTO `views` VALUES (2021, 2, 28, 52523779555, 13384, 352187318285);
INSERT INTO `views` VALUES (2021, 2, 21, 11868262090, 5557, 352187318286);
INSERT INTO `views` VALUES (2021, 4, 4, 24088147994, 10691, 352187318287);
INSERT INTO `views` VALUES (2021, 2, 15, 3449438575, 6231, 352187318288);
INSERT INTO `views` VALUES (2021, 1, 23, 92220821628, 27098, 360777252864);
INSERT INTO `views` VALUES (2021, 4, 9, 65988361434, 62445, 360777252865);
INSERT INTO `views` VALUES (2021, 1, 20, 13300684039, 14594, 360777252866);
INSERT INTO `views` VALUES (2021, 1, 20, 69139258718, 27950, 360777252867);
INSERT INTO `views` VALUES (2021, 5, 10, 9751007791, 15491, 360777252868);
INSERT INTO `views` VALUES (2021, 1, 30, 53255080488, 23671, 360777252869);
INSERT INTO `views` VALUES (2021, 4, 1, 40572861287, 8117, 360777252870);
INSERT INTO `views` VALUES (2021, 5, 6, 51839055039, 28689, 360777252871);
INSERT INTO `views` VALUES (2021, 3, 27, 101380775687, 17008, 360777252872);
INSERT INTO `views` VALUES (2021, 4, 30, 26874653320, 9478, 360777252873);
INSERT INTO `views` VALUES (2021, 5, 5, 95746834137, 5729, 360777252874);
INSERT INTO `views` VALUES (2021, 3, 30, 41266709878, 12739, 360777252875);
INSERT INTO `views` VALUES (2021, 4, 17, 76409616475, 13486, 360777252876);
INSERT INTO `views` VALUES (2021, 3, 14, 35921351831, 10102, 360777252877);
INSERT INTO `views` VALUES (2021, 2, 28, 43459988638, 4948, 360777252878);
INSERT INTO `views` VALUES (2021, 2, 10, 61543754519, 14547, 360777252879);
INSERT INTO `views` VALUES (2021, 5, 14, 45024317846, 1215, 360777252880);
INSERT INTO `views` VALUES (2021, 2, 4, 35156933759, 26772, 369367187456);
INSERT INTO `views` VALUES (2021, 1, 25, 124080666441, 8993, 369367187457);
INSERT INTO `views` VALUES (2021, 1, 29, 53130631932, 20298, 369367187458);
INSERT INTO `views` VALUES (2021, 3, 23, 25167496646, 18206, 369367187459);
INSERT INTO `views` VALUES (2021, 4, 19, 2876498514, 1600, 369367187460);
INSERT INTO `views` VALUES (2021, 3, 16, 9571423839, 1988, 369367187461);
INSERT INTO `views` VALUES (2021, 4, 2, 81178472924, 10240, 369367187462);
INSERT INTO `views` VALUES (2021, 2, 19, 27700117588, 12853, 369367187463);
INSERT INTO `views` VALUES (2021, 4, 5, 6054886970, 6800, 369367187464);
INSERT INTO `views` VALUES (2021, 5, 3, 57117589438, 8121, 369367187465);
INSERT INTO `views` VALUES (2021, 2, 16, 108249512071, 6647, 369367187466);
INSERT INTO `views` VALUES (2021, 2, 2, 42783061105, 20185, 377957122048);
INSERT INTO `views` VALUES (2021, 1, 28, 99596829952, 28113, 377957122049);
INSERT INTO `views` VALUES (2021, 2, 4, 25078148570, 21383, 377957122050);
INSERT INTO `views` VALUES (2021, 3, 18, 35869177288, 42112, 377957122051);
INSERT INTO `views` VALUES (2021, 4, 8, 11735411849, 2759, 377957122052);
INSERT INTO `views` VALUES (2021, 4, 23, 2778758267, 27639, 377957122053);
INSERT INTO `views` VALUES (2021, 4, 19, 24745327316, 13038, 377957122054);
INSERT INTO `views` VALUES (2021, 1, 18, 69635931732, 8867, 377957122055);
INSERT INTO `views` VALUES (2021, 5, 12, 21886013239, 15368, 377957122056);
INSERT INTO `views` VALUES (2021, 4, 14, 25447925524, 3167, 377957122057);
INSERT INTO `views` VALUES (2021, 4, 3, 70991759574, 16422, 377957122058);
INSERT INTO `views` VALUES (2021, 2, 26, 24355488729, 12016, 377957122059);
INSERT INTO `views` VALUES (2021, 3, 3, 41572226537, 14715, 377957122060);
INSERT INTO `views` VALUES (2021, 4, 17, 120794331349, 5844, 377957122061);
INSERT INTO `views` VALUES (2021, 5, 13, 13939881774, 4954, 377957122062);
INSERT INTO `views` VALUES (2021, 4, 21, 29084835259, 5020, 377957122063);
INSERT INTO `views` VALUES (2021, 4, 4, 12159493800, 1768, 377957122064);
INSERT INTO `views` VALUES (2021, 2, 27, 24059407703, 3696, 377957122065);
INSERT INTO `views` VALUES (2021, 2, 13, 26326733897, 7360, 377957122066);
INSERT INTO `views` VALUES (2021, 2, 13, 57262346455, 3494, 377957122067);
INSERT INTO `views` VALUES (2021, 1, 31, 54759277986, 31819, 386547056640);
INSERT INTO `views` VALUES (2021, 3, 11, 31705395417, 11210, 386547056641);
INSERT INTO `views` VALUES (2021, 1, 15, 3471595305, 1517, 386547056642);
INSERT INTO `views` VALUES (2021, 4, 23, 51206490475, 16210, 386547056643);
INSERT INTO `views` VALUES (2021, 1, 25, 81006465726, 18107, 386547056644);
INSERT INTO `views` VALUES (2021, 3, 4, 24244583349, 19843, 386547056645);
INSERT INTO `views` VALUES (2021, 3, 28, 42839548177, 9605, 386547056646);
INSERT INTO `views` VALUES (2021, 4, 30, 16139215586, 3634, 386547056647);
INSERT INTO `views` VALUES (2021, 3, 2, 35444636413, 11184, 386547056648);
INSERT INTO `views` VALUES (2021, 4, 12, 35279181834, 10181, 386547056649);
INSERT INTO `views` VALUES (2021, 4, 24, 72144891362, 6941, 386547056650);
INSERT INTO `views` VALUES (2021, 4, 30, 63897261891, 20690, 386547056651);
INSERT INTO `views` VALUES (2021, 4, 30, 24523233269, 6911, 386547056652);
INSERT INTO `views` VALUES (2021, 2, 18, 76707792647, 10355, 386547056653);
INSERT INTO `views` VALUES (2021, 1, 23, 46559437902, 16229, 395136991232);
INSERT INTO `views` VALUES (2021, 1, 19, 75715151604, 18406, 395136991233);
INSERT INTO `views` VALUES (2021, 4, 23, 41200584469, 12598, 395136991234);
INSERT INTO `views` VALUES (2021, 4, 25, 67892785707, 11134, 395136991235);
INSERT INTO `views` VALUES (2021, 3, 1, 44398173117, 14418, 395136991236);
INSERT INTO `views` VALUES (2021, 3, 12, 27932474019, 18069, 395136991237);
INSERT INTO `views` VALUES (2021, 3, 30, 45556338186, 24478, 395136991238);
INSERT INTO `views` VALUES (2021, 3, 19, 13607597698, 253, 395136991239);
INSERT INTO `views` VALUES (2021, 2, 16, 83689637111, 8409, 395136991240);
INSERT INTO `views` VALUES (2021, 2, 13, 26097229140, 3342, 395136991241);
INSERT INTO `views` VALUES (2021, 2, 17, 16251605832, 792, 395136991242);
INSERT INTO `views` VALUES (2021, 2, 11, 30773629267, 35, 395136991243);
INSERT INTO `views` VALUES (2021, 2, 12, 26059515957, 15288, 395136991244);
INSERT INTO `views` VALUES (2021, 3, 24, 9771739804, 36882, 403726925824);
INSERT INTO `views` VALUES (2021, 5, 9, 45022747218, 17311, 403726925825);
INSERT INTO `views` VALUES (2021, 1, 25, 76902659356, 16972, 403726925826);
INSERT INTO `views` VALUES (2021, 3, 10, 27030960647, 13205, 403726925827);
INSERT INTO `views` VALUES (2021, 3, 12, 1428620, 6, 403726925828);
INSERT INTO `views` VALUES (2021, 3, 3, 74478120740, 26049, 403726925829);
INSERT INTO `views` VALUES (2021, 4, 30, 1527664195, 1666, 403726925830);
INSERT INTO `views` VALUES (2021, 5, 2, 62091012691, 12791, 403726925831);
INSERT INTO `views` VALUES (2021, 2, 10, 20033385851, 7793, 403726925832);
INSERT INTO `views` VALUES (2021, 2, 21, 72300160818, 3684, 403726925833);
INSERT INTO `views` VALUES (2021, 2, 13, 21679206673, 2330, 403726925834);
INSERT INTO `views` VALUES (2021, 2, 4, 59475678048, 21520, 412316860416);
INSERT INTO `views` VALUES (2021, 3, 17, 62682663124, 21865, 412316860417);
INSERT INTO `views` VALUES (2021, 1, 29, 24328483861, 11178, 412316860418);
INSERT INTO `views` VALUES (2021, 1, 31, 66634171721, 26793, 412316860419);
INSERT INTO `views` VALUES (2021, 5, 9, 13465490766, 11475, 412316860420);
INSERT INTO `views` VALUES (2021, 3, 11, 43384185786, 9015, 412316860421);
INSERT INTO `views` VALUES (2021, 3, 19, 44172559236, 15894, 412316860422);
INSERT INTO `views` VALUES (2021, 4, 23, 35498851120, 31363, 412316860423);
INSERT INTO `views` VALUES (2021, 3, 4, 45032268583, 7027, 412316860424);
INSERT INTO `views` VALUES (2021, 5, 11, 52841666182, 24258, 412316860425);
INSERT INTO `views` VALUES (2021, 5, 11, 37598211939, 9846, 412316860426);
INSERT INTO `views` VALUES (2021, 5, 12, 32931161945, 13900, 412316860427);
INSERT INTO `views` VALUES (2021, 4, 14, 62056904544, 18017, 412316860428);
INSERT INTO `views` VALUES (2021, 2, 23, 24376032152, 2103, 412316860429);
INSERT INTO `views` VALUES (2021, 3, 6, 71390234144, 8024, 412316860430);
INSERT INTO `views` VALUES (2021, 4, 28, 39408652256, 6824, 412316860431);
INSERT INTO `views` VALUES (2021, 4, 27, 65153416065, 3259, 412316860432);
INSERT INTO `views` VALUES (2021, 2, 15, 3960369499, 1961, 412316860433);
INSERT INTO `views` VALUES (2021, 3, 17, 12124788403, 12712, 420906795008);
INSERT INTO `views` VALUES (2021, 3, 11, 41662500889, 8164, 420906795009);
INSERT INTO `views` VALUES (2021, 1, 18, 42246699982, 2725, 420906795010);
INSERT INTO `views` VALUES (2021, 1, 14, 55537919640, 7204, 420906795011);
INSERT INTO `views` VALUES (2021, 3, 4, 48041818924, 19776, 420906795012);
INSERT INTO `views` VALUES (2021, 1, 17, 68072899866, 8477, 420906795013);
INSERT INTO `views` VALUES (2021, 3, 26, 69959495772, 7915, 420906795014);
INSERT INTO `views` VALUES (2021, 2, 23, 10446137856, 873, 420906795015);
INSERT INTO `views` VALUES (2021, 5, 5, 47695468146, 6149, 420906795016);
INSERT INTO `views` VALUES (2021, 4, 27, 60523560930, 14206, 420906795017);
INSERT INTO `views` VALUES (2021, 4, 18, 10085782448, 10951, 420906795018);
INSERT INTO `views` VALUES (2021, 3, 7, 70299702279, 12265, 420906795019);
INSERT INTO `views` VALUES (2021, 2, 18, 2049060605, 4078, 420906795020);
INSERT INTO `views` VALUES (2021, 2, 14, 56807675903, 6888, 420906795021);
INSERT INTO `views` VALUES (2021, 2, 17, 16098411912, 64, 420906795022);
INSERT INTO `views` VALUES (2021, 1, 22, 56306659641, 19585, 429496729600);
INSERT INTO `views` VALUES (2021, 2, 5, 48457605991, 27993, 429496729601);
INSERT INTO `views` VALUES (2021, 1, 30, 28301030331, 14685, 429496729602);
INSERT INTO `views` VALUES (2021, 1, 25, 77027706609, 6315, 429496729603);
INSERT INTO `views` VALUES (2021, 1, 26, 28968014886, 11867, 429496729604);
INSERT INTO `views` VALUES (2021, 4, 24, 66227679832, 11954, 429496729605);
INSERT INTO `views` VALUES (2021, 4, 19, 7931169939, 3681, 429496729606);
INSERT INTO `views` VALUES (2021, 4, 29, 18293797316, 8371, 429496729607);
INSERT INTO `views` VALUES (2021, 3, 31, 40288492412, 4519, 429496729608);
INSERT INTO `views` VALUES (2021, 4, 24, 37340608680, 7851, 429496729609);
INSERT INTO `views` VALUES (2021, 4, 16, 33738175667, 14266, 429496729610);
INSERT INTO `views` VALUES (2021, 5, 4, 3482167633, 2621, 429496729611);
INSERT INTO `views` VALUES (2021, 5, 2, 84877942907, 12447, 429496729612);
INSERT INTO `views` VALUES (2021, 3, 7, 53190496969, 7559, 429496729613);
INSERT INTO `views` VALUES (2021, 2, 27, 31859280327, 6399, 429496729614);
INSERT INTO `views` VALUES (2021, 2, 17, 46246476200, 6304, 429496729615);
INSERT INTO `views` VALUES (2021, 2, 5, 35964289248, 24295, 438086664192);
INSERT INTO `views` VALUES (2021, 5, 8, 63146033947, 18567, 438086664193);
INSERT INTO `views` VALUES (2021, 1, 18, 40434930754, 6417, 438086664194);
INSERT INTO `views` VALUES (2021, 4, 22, 6144030204, 8777, 438086664195);
INSERT INTO `views` VALUES (2021, 4, 23, 26263566234, 32005, 438086664196);
INSERT INTO `views` VALUES (2021, 2, 24, 30271590378, 19027, 438086664197);
INSERT INTO `views` VALUES (2021, 1, 14, 42994420358, 6478, 438086664198);
INSERT INTO `views` VALUES (2021, 1, 29, 71200438093, 11567, 438086664199);
INSERT INTO `views` VALUES (2021, 3, 8, 39048802159, 8709, 438086664200);
INSERT INTO `views` VALUES (2021, 3, 17, 14049848871, 9745, 438086664201);
INSERT INTO `views` VALUES (2021, 4, 2, 22141980407, 1513, 438086664202);
INSERT INTO `views` VALUES (2021, 4, 28, 33640687581, 1754, 438086664203);
INSERT INTO `views` VALUES (2021, 4, 7, 30967570851, 18325, 438086664204);
INSERT INTO `views` VALUES (2021, 4, 20, 48431466900, 10746, 438086664205);
INSERT INTO `views` VALUES (2021, 3, 21, 61942950652, 7239, 438086664206);
INSERT INTO `views` VALUES (2021, 2, 8, 90711033371, 15999, 438086664207);
INSERT INTO `views` VALUES (2021, 5, 3, 35136487840, 5641, 438086664208);
INSERT INTO `views` VALUES (2021, 5, 3, 15417738402, 11870, 438086664209);
INSERT INTO `views` VALUES (2021, 1, 22, 52169804981, 12662, 446676598784);
INSERT INTO `views` VALUES (2021, 1, 30, 48296216334, 19277, 446676598785);
INSERT INTO `views` VALUES (2021, 1, 15, 2713550020, 3539, 446676598786);
INSERT INTO `views` VALUES (2021, 1, 26, 98094616840, 5120, 446676598787);
INSERT INTO `views` VALUES (2021, 2, 24, 60961767980, 17725, 446676598788);
INSERT INTO `views` VALUES (2021, 2, 24, 38967355086, 17010, 446676598789);
INSERT INTO `views` VALUES (2021, 4, 2, 2009955599, 5706, 446676598790);
INSERT INTO `views` VALUES (2021, 3, 9, 5929664807, 2396, 446676598791);
INSERT INTO `views` VALUES (2021, 2, 22, 57480278590, 8470, 446676598792);
INSERT INTO `views` VALUES (2021, 4, 28, 22748033007, 15789, 446676598793);
INSERT INTO `views` VALUES (2021, 4, 5, 31059181319, 4284, 446676598794);
INSERT INTO `views` VALUES (2021, 4, 5, 70355269363, 7312, 446676598795);
INSERT INTO `views` VALUES (2021, 2, 11, 52610807993, 11894, 446676598796);
INSERT INTO `views` VALUES (2021, 4, 3, 44935258807, 2414, 446676598797);
INSERT INTO `views` VALUES (2021, 1, 24, 134393259373, 36581, 455266533376);
INSERT INTO `views` VALUES (2021, 4, 27, 68143561449, 13490, 455266533377);
INSERT INTO `views` VALUES (2021, 3, 12, 21831135297, 2093, 455266533378);
INSERT INTO `views` VALUES (2021, 3, 3, 12630678722, 7690, 455266533379);
INSERT INTO `views` VALUES (2021, 3, 22, 71078234964, 13418, 455266533380);
INSERT INTO `views` VALUES (2021, 4, 28, 41724707659, 5005, 455266533381);
INSERT INTO `views` VALUES (2021, 3, 21, 47982807669, 4953, 455266533382);
INSERT INTO `views` VALUES (2021, 5, 4, 16197377993, 2931, 455266533383);
INSERT INTO `views` VALUES (2021, 5, 4, 30486800563, 14658, 455266533384);
INSERT INTO `views` VALUES (2021, 2, 8, 60938140559, 5499, 455266533385);
INSERT INTO `views` VALUES (2021, 2, 27, 50893239029, 7848, 455266533386);
INSERT INTO `views` VALUES (2021, 2, 17, 12503174931, 1185, 455266533387);
INSERT INTO `views` VALUES (2021, 2, 12, 9560524295, 3623, 455266533388);
INSERT INTO `views` VALUES (2021, 1, 23, 110873623345, 31540, 463856467968);
INSERT INTO `views` VALUES (2021, 1, 30, 20488318598, 32554, 463856467969);
INSERT INTO `views` VALUES (2021, 4, 8, 11261376310, 2144, 463856467970);
INSERT INTO `views` VALUES (2021, 5, 10, 12815761034, 9340, 463856467971);
INSERT INTO `views` VALUES (2021, 5, 7, 9529114254, 13447, 463856467972);
INSERT INTO `views` VALUES (2021, 1, 17, 86041306894, 12761, 463856467973);
INSERT INTO `views` VALUES (2021, 3, 16, 17369724550, 6280, 463856467974);
INSERT INTO `views` VALUES (2021, 3, 25, 35446162522, 8891, 463856467975);
INSERT INTO `views` VALUES (2021, 4, 6, 26371779335, 10122, 463856467976);
INSERT INTO `views` VALUES (2021, 4, 11, 59188434842, 12387, 463856467977);
INSERT INTO `views` VALUES (2021, 2, 22, 60386699566, 6079, 463856467978);
INSERT INTO `views` VALUES (2021, 4, 5, 21405687775, 9046, 463856467979);
INSERT INTO `views` VALUES (2021, 2, 15, 52377877059, 5977, 463856467980);
INSERT INTO `views` VALUES (2021, 5, 8, 68260558119, 19857, 472446402560);
INSERT INTO `views` VALUES (2021, 2, 1, 40457032107, 20496, 472446402561);
INSERT INTO `views` VALUES (2021, 4, 26, 48174565560, 14733, 472446402562);
INSERT INTO `views` VALUES (2021, 2, 24, 14775610183, 15387, 472446402563);
INSERT INTO `views` VALUES (2021, 2, 7, 89377710712, 9670, 472446402564);
INSERT INTO `views` VALUES (2021, 2, 4, 44615294970, 35700, 472446402565);
INSERT INTO `views` VALUES (2021, 5, 7, 27542482358, 9851, 472446402566);
INSERT INTO `views` VALUES (2021, 4, 1, 29006377491, 7048, 472446402567);
INSERT INTO `views` VALUES (2021, 3, 16, 10566069055, 755, 472446402568);
INSERT INTO `views` VALUES (2021, 4, 14, 49591568187, 5787, 472446402569);
INSERT INTO `views` VALUES (2021, 4, 6, 25519401088, 7473, 472446402570);
INSERT INTO `views` VALUES (2021, 4, 29, 58705570046, 17765, 472446402571);
INSERT INTO `views` VALUES (2021, 3, 9, 61173477314, 7847, 472446402572);
INSERT INTO `views` VALUES (2021, 4, 17, 66854007362, 13016, 472446402573);
INSERT INTO `views` VALUES (2021, 5, 14, 61914331780, 8052, 472446402574);
INSERT INTO `views` VALUES (2021, 4, 20, 35903767721, 14420, 472446402575);
INSERT INTO `views` VALUES (2021, 2, 8, 60516720705, 6045, 472446402576);
INSERT INTO `views` VALUES (2021, 5, 2, 45214300076, 9846, 472446402577);
INSERT INTO `views` VALUES (2021, 2, 10, 23909416418, 6014, 472446402578);
INSERT INTO `views` VALUES (2021, 2, 15, 1414435, 5, 472446402579);
INSERT INTO `views` VALUES (2021, 2, 14, 24882229207, 6367, 472446402580);
INSERT INTO `views` VALUES (2021, 2, 17, 30801386668, 4052, 472446402581);
INSERT INTO `views` VALUES (2021, 5, 6, 22180173803, 1022, 481036337152);
INSERT INTO `views` VALUES (2021, 5, 6, 7032503197, 11307, 481036337153);
INSERT INTO `views` VALUES (2021, 4, 14, 26805734111, 3876, 481036337154);
INSERT INTO `views` VALUES (2021, 4, 6, 61827492691, 14857, 481036337155);
INSERT INTO `views` VALUES (2021, 2, 23, 17534092833, 1205, 481036337156);
INSERT INTO `views` VALUES (2021, 4, 17, 141219679565, 9114, 481036337157);
INSERT INTO `views` VALUES (2021, 3, 7, 33361908244, 6052, 481036337158);
INSERT INTO `views` VALUES (2021, 3, 13, 81943316502, 2454, 481036337159);
INSERT INTO `views` VALUES (2021, 2, 14, 70935587956, 10555, 481036337160);
INSERT INTO `views` VALUES (2021, 4, 8, 24822844931, 38220, 489626271744);
INSERT INTO `views` VALUES (2021, 3, 10, 4265933466, 105, 489626271745);
INSERT INTO `views` VALUES (2021, 2, 20, 57926552238, 15067, 489626271746);
INSERT INTO `views` VALUES (2021, 2, 20, 100932856539, 6494, 489626271747);
INSERT INTO `views` VALUES (2021, 1, 17, 62883919225, 14496, 489626271748);
INSERT INTO `views` VALUES (2021, 3, 26, 55274438858, 21485, 489626271749);
INSERT INTO `views` VALUES (2021, 3, 28, 53830211888, 12653, 489626271750);
INSERT INTO `views` VALUES (2021, 4, 29, 51751412142, 10005, 489626271751);
INSERT INTO `views` VALUES (2021, 4, 1, 67817550619, 22958, 489626271752);
INSERT INTO `views` VALUES (2021, 2, 22, 41951804018, 11841, 489626271753);
INSERT INTO `views` VALUES (2021, 2, 8, 36747267938, 4561, 489626271754);
INSERT INTO `views` VALUES (2021, 2, 28, 37140650033, 7589, 489626271755);
INSERT INTO `views` VALUES (2021, 4, 3, 44967488338, 10649, 489626271756);
INSERT INTO `views` VALUES (2021, 5, 14, 48520566487, 1261, 489626271757);
INSERT INTO `views` VALUES (2021, 1, 30, 35861872052, 26614, 498216206336);
INSERT INTO `views` VALUES (2021, 2, 2, 90212587106, 19400, 498216206337);
INSERT INTO `views` VALUES (2021, 1, 28, 74352329107, 19200, 498216206338);
INSERT INTO `views` VALUES (2021, 2, 24, 59433502723, 12957, 498216206339);
INSERT INTO `views` VALUES (2021, 2, 25, 20067770057, 7203, 498216206340);
INSERT INTO `views` VALUES (2021, 3, 22, 17753935213, 8177, 498216206341);
INSERT INTO `views` VALUES (2021, 5, 14, 98392625657, 13104, 498216206342);
INSERT INTO `views` VALUES (2021, 4, 16, 41472723767, 14764, 498216206343);
INSERT INTO `views` VALUES (2021, 3, 6, 32087682892, 13794, 498216206344);
INSERT INTO `views` VALUES (2021, 4, 3, 27520818717, 1946, 498216206345);
INSERT INTO `views` VALUES (2021, 2, 27, 30300389531, 7730, 498216206346);
INSERT INTO `views` VALUES (2021, 2, 16, 97302553018, 8977, 498216206347);
INSERT INTO `views` VALUES (2021, 2, 17, 13753466057, 8131, 498216206348);
INSERT INTO `views` VALUES (2021, 2, 2, 64622495604, 78671, 506806140928);
INSERT INTO `views` VALUES (2021, 4, 9, 40972141518, 70681, 506806140929);
INSERT INTO `views` VALUES (2021, 1, 24, 84034488467, 3813, 506806140930);
INSERT INTO `views` VALUES (2021, 3, 20, 32363720024, 51532, 506806140931);
INSERT INTO `views` VALUES (2021, 3, 19, 29582936651, 2553, 506806140932);
INSERT INTO `views` VALUES (2021, 1, 25, 62805684859, 3365, 506806140933);
INSERT INTO `views` VALUES (2021, 3, 23, 16763189801, 19515, 506806140934);
INSERT INTO `views` VALUES (2021, 3, 16, 21910265583, 7010, 506806140935);
INSERT INTO `views` VALUES (2021, 4, 6, 23855738133, 906, 506806140936);
INSERT INTO `views` VALUES (2021, 4, 6, 18220264540, 12907, 506806140937);
INSERT INTO `views` VALUES (2021, 2, 19, 58300354692, 19911, 506806140938);
INSERT INTO `views` VALUES (2021, 5, 5, 66862167550, 7611, 506806140939);
INSERT INTO `views` VALUES (2021, 4, 20, 56572857983, 8694, 506806140940);
INSERT INTO `views` VALUES (2021, 5, 4, 12197877578, 2747, 506806140941);
INSERT INTO `views` VALUES (2021, 5, 3, 19329991246, 4015, 506806140942);
INSERT INTO `views` VALUES (2021, 2, 27, 23257265491, 11605, 506806140943);
INSERT INTO `views` VALUES (2021, 2, 5, 14932563462, 18482, 515396075520);
INSERT INTO `views` VALUES (2021, 1, 27, 46811599660, 16831, 515396075521);
INSERT INTO `views` VALUES (2021, 1, 26, 90166416694, 25676, 515396075522);
INSERT INTO `views` VALUES (2021, 5, 1, 6732286916, 9351, 515396075523);
INSERT INTO `views` VALUES (2021, 1, 16, 38349539682, 15152, 515396075524);
INSERT INTO `views` VALUES (2021, 2, 3, 324773196, 1084, 515396075525);
INSERT INTO `views` VALUES (2021, 5, 7, 5254860987, 6289, 515396075526);
INSERT INTO `views` VALUES (2021, 3, 27, 86614256767, 3631, 515396075527);
INSERT INTO `views` VALUES (2021, 3, 15, 59722522586, 11978, 515396075528);
INSERT INTO `views` VALUES (2021, 3, 15, 16779409774, 12100, 515396075529);
INSERT INTO `views` VALUES (2021, 4, 6, 26571729081, 6665, 515396075530);
INSERT INTO `views` VALUES (2021, 4, 15, 36856180335, 4332, 515396075531);
INSERT INTO `views` VALUES (2021, 3, 26, 37639921553, 14832, 515396075532);
INSERT INTO `views` VALUES (2021, 4, 11, 39298434180, 4901, 515396075533);
INSERT INTO `views` VALUES (2021, 3, 22, 44399579471, 14520, 515396075534);
INSERT INTO `views` VALUES (2021, 4, 22, 65919199487, 6736, 515396075535);
INSERT INTO `views` VALUES (2021, 3, 5, 9956866327, 1120, 515396075536);
INSERT INTO `views` VALUES (2021, 3, 7, 54278932974, 1073, 515396075537);
INSERT INTO `views` VALUES (2021, 2, 27, 13672912235, 56, 515396075538);
INSERT INTO `views` VALUES (2021, 2, 17, 43272527795, 1957, 515396075539);
INSERT INTO `views` VALUES (2021, 1, 21, 104227249571, 26929, 523986010112);
INSERT INTO `views` VALUES (2021, 4, 26, 56684147100, 12458, 523986010113);
INSERT INTO `views` VALUES (2021, 1, 19, 39536617256, 9382, 523986010114);
INSERT INTO `views` VALUES (2021, 4, 23, 57206265911, 6702, 523986010115);
INSERT INTO `views` VALUES (2021, 4, 19, 485849586, 8684, 523986010116);
INSERT INTO `views` VALUES (2021, 3, 8, 27570090238, 11564, 523986010117);
INSERT INTO `views` VALUES (2021, 1, 17, 110132645666, 23732, 523986010118);
INSERT INTO `views` VALUES (2021, 4, 14, 40629868705, 9127, 523986010119);
INSERT INTO `views` VALUES (2021, 4, 15, 2588186556, 2221, 523986010120);
INSERT INTO `views` VALUES (2021, 5, 5, 25936286595, 1870, 523986010121);
INSERT INTO `views` VALUES (2021, 3, 19, 41995884715, 14726, 523986010122);
INSERT INTO `views` VALUES (2021, 4, 17, 46760205086, 11312, 523986010123);
INSERT INTO `views` VALUES (2021, 2, 9, 50040892284, 9756, 523986010124);
INSERT INTO `views` VALUES (2021, 2, 21, 8532680798, 232, 523986010125);
INSERT INTO `views` VALUES (2021, 5, 14, 25533616358, 8960, 523986010126);
INSERT INTO `views` VALUES (2021, 2, 15, 9281546381, 3179, 523986010127);
INSERT INTO `views` VALUES (2021, 2, 11, 13220081004, 4530, 523986010128);
INSERT INTO `views` VALUES (2021, 2, 3, 12482086947, 6934, 532575944704);
INSERT INTO `views` VALUES (2021, 1, 20, 60756093215, 18456, 532575944705);
INSERT INTO `views` VALUES (2021, 5, 1, 99598774603, 13424, 532575944706);
INSERT INTO `views` VALUES (2021, 5, 10, 48203720567, 21313, 532575944707);
INSERT INTO `views` VALUES (2021, 3, 10, 32948579701, 7110, 532575944708);
INSERT INTO `views` VALUES (2021, 5, 12, 33547585403, 132, 532575944709);
INSERT INTO `views` VALUES (2021, 4, 13, 115544947802, 9213, 532575944710);
INSERT INTO `views` VALUES (2021, 2, 19, 5756320860, 16715, 532575944711);
INSERT INTO `views` VALUES (2021, 3, 30, 26742570121, 8960, 532575944712);
INSERT INTO `views` VALUES (2021, 4, 10, 31087999450, 4715, 532575944713);
INSERT INTO `views` VALUES (2021, 3, 14, 26402556138, 217, 532575944714);
INSERT INTO `views` VALUES (2021, 2, 27, 16675785279, 4029, 532575944715);
INSERT INTO `views` VALUES (2021, 2, 16, 49212311200, 4665, 532575944716);
INSERT INTO `views` VALUES (2021, 3, 24, 31445466697, 14469, 541165879296);
INSERT INTO `views` VALUES (2021, 5, 10, 53560370876, 19846, 541165879297);
INSERT INTO `views` VALUES (2021, 5, 10, 69558636988, 13997, 541165879298);
INSERT INTO `views` VALUES (2021, 3, 10, 22723917218, 3960, 541165879299);
INSERT INTO `views` VALUES (2021, 4, 1, 37521674739, 9414, 541165879300);
INSERT INTO `views` VALUES (2021, 4, 2, 93144799902, 16785, 541165879301);
INSERT INTO `views` VALUES (2021, 1, 17, 84588317690, 17127, 541165879302);
INSERT INTO `views` VALUES (2021, 3, 25, 89995514719, 20822, 541165879303);
INSERT INTO `views` VALUES (2021, 4, 17, 81908435413, 5970, 541165879304);
INSERT INTO `views` VALUES (2021, 5, 13, 29933956655, 13228, 541165879305);
INSERT INTO `views` VALUES (2021, 5, 13, 27818203649, 9786, 541165879306);
INSERT INTO `views` VALUES (2021, 4, 27, 30434384900, 2845, 541165879307);
INSERT INTO `views` VALUES (2021, 5, 3, 61794667379, 3790, 541165879308);
INSERT INTO `views` VALUES (2021, 5, 2, 48438180574, 9930, 541165879309);
INSERT INTO `views` VALUES (2021, 2, 10, 20820890451, 6420, 541165879310);
INSERT INTO `views` VALUES (2021, 3, 7, 49958457891, 3579, 541165879311);
INSERT INTO `views` VALUES (2021, 5, 14, 29760996349, 3429, 541165879312);
INSERT INTO `views` VALUES (2021, 1, 27, 68633768685, 20887, 549755813888);
INSERT INTO `views` VALUES (2021, 2, 4, 18517527609, 11572, 549755813889);
INSERT INTO `views` VALUES (2021, 1, 28, 66943665383, 22687, 549755813890);
INSERT INTO `views` VALUES (2021, 3, 24, 28450874571, 7402, 549755813891);
INSERT INTO `views` VALUES (2021, 1, 31, 66345271964, 35121, 549755813892);
INSERT INTO `views` VALUES (2021, 1, 25, 72327913356, 15269, 549755813893);
INSERT INTO `views` VALUES (2021, 3, 23, 9270348493, 4694, 549755813894);
INSERT INTO `views` VALUES (2021, 4, 20, 51443282436, 3284, 549755813895);
INSERT INTO `views` VALUES (2021, 4, 14, 89022725905, 20326, 549755813896);
INSERT INTO `views` VALUES (2021, 4, 29, 47258371012, 22465, 549755813897);
INSERT INTO `views` VALUES (2021, 3, 5, 20419764868, 10920, 549755813898);
INSERT INTO `views` VALUES (2021, 3, 9, 68547151750, 12683, 549755813899);
INSERT INTO `views` VALUES (2021, 4, 17, 60649175938, 13790, 549755813900);
INSERT INTO `views` VALUES (2021, 2, 22, 46571007217, 5611, 549755813901);
INSERT INTO `views` VALUES (2021, 4, 16, 21641409733, 7325, 549755813902);
INSERT INTO `views` VALUES (2021, 5, 4, 16138275011, 10622, 549755813903);
INSERT INTO `views` VALUES (2021, 5, 2, 27018935322, 7390, 549755813904);
INSERT INTO `views` VALUES (2021, 4, 4, 8522599865, 9227, 549755813905);
INSERT INTO `views` VALUES (2021, 1, 18, 58765135619, 7961, 558345748480);
INSERT INTO `views` VALUES (2021, 4, 23, 32296592218, 17342, 558345748481);
INSERT INTO `views` VALUES (2021, 4, 22, 16564281865, 1449, 558345748482);
INSERT INTO `views` VALUES (2021, 3, 15, 80011749957, 761, 558345748483);
INSERT INTO `views` VALUES (2021, 4, 14, 76213200879, 13023, 558345748484);
INSERT INTO `views` VALUES (2021, 3, 14, 31018904454, 10604, 558345748485);
INSERT INTO `views` VALUES (2021, 4, 21, 27289541657, 8280, 558345748486);
INSERT INTO `views` VALUES (2021, 4, 21, 17410816108, 1517, 558345748487);
INSERT INTO `views` VALUES (2021, 3, 21, 40776744504, 9343, 558345748488);
INSERT INTO `views` VALUES (2021, 2, 9, 30618340024, 5165, 558345748489);
INSERT INTO `views` VALUES (2021, 2, 27, 27422862750, 10846, 558345748490);
INSERT INTO `views` VALUES (2021, 5, 2, 62417251964, 12217, 558345748491);
INSERT INTO `views` VALUES (2021, 3, 13, 47451582108, 8968, 558345748492);
INSERT INTO `views` VALUES (2021, 3, 13, 55644706627, 13208, 558345748493);
INSERT INTO `views` VALUES (2021, 2, 6, 83682691491, 25244, 566935683072);
INSERT INTO `views` VALUES (2021, 2, 4, 47478773114, 33493, 566935683073);
INSERT INTO `views` VALUES (2021, 3, 11, 32687989036, 16387, 566935683074);
INSERT INTO `views` VALUES (2021, 3, 18, 54010813850, 11525, 566935683075);
INSERT INTO `views` VALUES (2021, 3, 19, 40064364711, 4189, 566935683076);
INSERT INTO `views` VALUES (2021, 4, 22, 13944408504, 1046, 566935683077);
INSERT INTO `views` VALUES (2021, 3, 8, 62069050555, 10745, 566935683078);
INSERT INTO `views` VALUES (2021, 4, 1, 29363374589, 15148, 566935683079);
INSERT INTO `views` VALUES (2021, 2, 25, 91018217338, 19949, 566935683080);
INSERT INTO `views` VALUES (2021, 4, 11, 81610251986, 20922, 566935683081);
INSERT INTO `views` VALUES (2021, 4, 24, 57768290556, 8983, 566935683082);
INSERT INTO `views` VALUES (2021, 3, 22, 44531081095, 10164, 566935683083);
INSERT INTO `views` VALUES (2021, 4, 18, 82143904778, 5040, 566935683084);
INSERT INTO `views` VALUES (2021, 4, 19, 75448549790, 6625, 566935683085);
INSERT INTO `views` VALUES (2021, 2, 11, 20978308798, 273, 566935683086);
INSERT INTO `views` VALUES (2021, 2, 2, 79111339885, 26252, 575525617664);
INSERT INTO `views` VALUES (2021, 1, 28, 108106769144, 26257, 575525617665);
INSERT INTO `views` VALUES (2021, 1, 30, 41321070995, 19032, 575525617666);
INSERT INTO `views` VALUES (2021, 1, 21, 59673387016, 10284, 575525617667);
INSERT INTO `views` VALUES (2021, 5, 8, 90103151883, 10174, 575525617668);
INSERT INTO `views` VALUES (2021, 3, 12, 58702587113, 19090, 575525617669);
INSERT INTO `views` VALUES (2021, 1, 19, 55937280457, 18865, 575525617670);
INSERT INTO `views` VALUES (2021, 1, 14, 37746482289, 10188, 575525617671);
INSERT INTO `views` VALUES (2021, 2, 3, 35217502989, 15814, 575525617672);
INSERT INTO `views` VALUES (2021, 4, 19, 33423525661, 3885, 575525617673);
INSERT INTO `views` VALUES (2021, 4, 19, 51157600573, 24504, 575525617674);
INSERT INTO `views` VALUES (2021, 4, 2, 9458213980, 9182, 575525617675);
INSERT INTO `views` VALUES (2021, 4, 3, 55251657004, 14613, 575525617676);
INSERT INTO `views` VALUES (2021, 3, 19, 37875179009, 17040, 575525617677);
INSERT INTO `views` VALUES (2021, 4, 20, 34898390529, 8714, 575525617678);
INSERT INTO `views` VALUES (2021, 4, 21, 25787303310, 2924, 575525617679);
INSERT INTO `views` VALUES (2021, 4, 18, 15665504458, 2018, 575525617680);
INSERT INTO `views` VALUES (2021, 2, 16, 59684636518, 3085, 575525617681);
INSERT INTO `views` VALUES (2021, 2, 17, 11527674520, 10327, 575525617682);
INSERT INTO `views` VALUES (2021, 2, 12, 5958985193, 604, 575525617683);
INSERT INTO `views` VALUES (2021, 3, 24, 66107881666, 15580, 584115552256);
INSERT INTO `views` VALUES (2021, 4, 1, 5392995024, 17210, 584115552257);
INSERT INTO `views` VALUES (2021, 3, 25, 1551693313, 113, 584115552258);
INSERT INTO `views` VALUES (2021, 4, 15, 57513636782, 15735, 584115552259);
INSERT INTO `views` VALUES (2021, 2, 25, 51803102791, 3509, 584115552260);
INSERT INTO `views` VALUES (2021, 3, 6, 28404386084, 8072, 584115552261);
INSERT INTO `views` VALUES (2021, 4, 30, 1615344822, 2300, 584115552262);
INSERT INTO `views` VALUES (2021, 5, 3, 60607906926, 8174, 584115552263);
INSERT INTO `views` VALUES (2021, 4, 3, 89040538203, 2920, 584115552264);
INSERT INTO `views` VALUES (2021, 3, 7, 21037977911, 8427, 584115552265);
INSERT INTO `views` VALUES (2021, 2, 15, 604910787, 6856, 584115552266);
INSERT INTO `views` VALUES (2021, 2, 2, 76692264878, 37401, 592705486848);
INSERT INTO `views` VALUES (2021, 2, 2, 42026679160, 22522, 592705486849);
INSERT INTO `views` VALUES (2021, 5, 8, 22465580387, 42460, 592705486850);
INSERT INTO `views` VALUES (2021, 4, 26, 73605765302, 22755, 592705486851);
INSERT INTO `views` VALUES (2021, 3, 11, 17467805381, 21830, 592705486852);
INSERT INTO `views` VALUES (2021, 2, 24, 7210975959, 18674, 592705486853);
INSERT INTO `views` VALUES (2021, 2, 8, 85201885502, 12310, 592705486854);
INSERT INTO `views` VALUES (2021, 4, 1, 20427509297, 24377, 592705486855);
INSERT INTO `views` VALUES (2021, 5, 6, 19140346940, 8264, 592705486856);
INSERT INTO `views` VALUES (2021, 2, 26, 46475072371, 8144, 592705486857);
INSERT INTO `views` VALUES (2021, 3, 16, 20470950723, 4711, 592705486858);
INSERT INTO `views` VALUES (2021, 2, 19, 37031472821, 17505, 592705486859);
INSERT INTO `views` VALUES (2021, 3, 22, 58111923115, 9013, 592705486860);
INSERT INTO `views` VALUES (2021, 5, 4, 25787769255, 2693, 592705486861);
INSERT INTO `views` VALUES (2021, 4, 5, 14909300392, 11351, 592705486862);
INSERT INTO `views` VALUES (2021, 2, 21, 61087589915, 6232, 592705486863);
INSERT INTO `views` VALUES (2021, 2, 18, 39055248054, 8794, 592705486864);
INSERT INTO `views` VALUES (2021, 2, 15, 10689331613, 3664, 592705486865);
INSERT INTO `views` VALUES (2021, 2, 14, 57428948499, 4297, 592705486866);
INSERT INTO `views` VALUES (2021, 3, 20, 41050039885, 60331, 601295421440);
INSERT INTO `views` VALUES (2021, 3, 8, 24876273454, 13497, 601295421441);
INSERT INTO `views` VALUES (2021, 2, 20, 39021207998, 13305, 601295421442);
INSERT INTO `views` VALUES (2021, 5, 7, 24692505965, 13102, 601295421443);
INSERT INTO `views` VALUES (2021, 1, 17, 65352880705, 1528, 601295421444);
INSERT INTO `views` VALUES (2021, 3, 25, 5264373517, 2247, 601295421445);
INSERT INTO `views` VALUES (2021, 3, 26, 61782917978, 7589, 601295421446);
INSERT INTO `views` VALUES (2021, 3, 30, 38732309294, 7598, 601295421447);
INSERT INTO `views` VALUES (2021, 4, 24, 41902912917, 19620, 601295421448);
INSERT INTO `views` VALUES (2021, 2, 22, 49718571393, 11749, 601295421449);
INSERT INTO `views` VALUES (2021, 3, 14, 89516898469, 31847, 601295421450);
INSERT INTO `views` VALUES (2021, 4, 21, 43092447456, 10989, 601295421451);
INSERT INTO `views` VALUES (2021, 4, 22, 30536775189, 10531, 601295421452);
INSERT INTO `views` VALUES (2021, 2, 16, 85124789899, 3988, 601295421453);
INSERT INTO `views` VALUES (2021, 2, 13, 17798148576, 4475, 601295421454);
INSERT INTO `views` VALUES (2021, 2, 12, 43354299846, 2836, 601295421455);
INSERT INTO `views` VALUES (2021, 2, 3, 41049666285, 20200, 609885356032);
INSERT INTO `views` VALUES (2021, 1, 21, 88963630678, 24387, 609885356033);
INSERT INTO `views` VALUES (2021, 5, 10, 13407976986, 16300, 609885356034);
INSERT INTO `views` VALUES (2021, 1, 18, 55507909275, 24348, 609885356035);
INSERT INTO `views` VALUES (2021, 4, 2, 36017580456, 2020, 609885356036);
INSERT INTO `views` VALUES (2021, 3, 25, 44306983202, 19652, 609885356037);
INSERT INTO `views` VALUES (2021, 5, 5, 12963937454, 11394, 609885356038);
INSERT INTO `views` VALUES (2021, 4, 18, 143080346384, 22072, 609885356039);
INSERT INTO `views` VALUES (2021, 4, 7, 31143240242, 12009, 609885356040);
INSERT INTO `views` VALUES (2021, 2, 18, 33274168345, 15441, 609885356041);
INSERT INTO `views` VALUES (2021, 5, 3, 52332247690, 9269, 609885356042);
INSERT INTO `views` VALUES (2021, 3, 7, 37282524430, 12872, 609885356043);
INSERT INTO `views` VALUES (2021, 2, 15, 3580773948, 1352, 609885356044);
INSERT INTO `views` VALUES (2021, 2, 5, 50988034098, 34456, 618475290624);
INSERT INTO `views` VALUES (2021, 1, 20, 53577104160, 34730, 618475290625);
INSERT INTO `views` VALUES (2021, 5, 9, 13027714943, 17255, 618475290626);
INSERT INTO `views` VALUES (2021, 3, 23, 30906138985, 15173, 618475290627);
INSERT INTO `views` VALUES (2021, 5, 6, 58819692800, 12425, 618475290628);
INSERT INTO `views` VALUES (2021, 4, 13, 68615549935, 3331, 618475290629);
INSERT INTO `views` VALUES (2021, 4, 13, 36624680933, 8559, 618475290630);
INSERT INTO `views` VALUES (2021, 4, 2, 28600322312, 11384, 618475290631);
INSERT INTO `views` VALUES (2021, 4, 12, 31542208799, 2852, 618475290632);
INSERT INTO `views` VALUES (2021, 2, 23, 46330038008, 6393, 618475290633);
INSERT INTO `views` VALUES (2021, 4, 28, 29498975912, 12562, 618475290634);
INSERT INTO `views` VALUES (2021, 4, 21, 21444261633, 10807, 618475290635);
INSERT INTO `views` VALUES (2021, 2, 10, 28969645083, 14254, 618475290636);
INSERT INTO `views` VALUES (2021, 4, 18, 17453854810, 9222, 618475290637);
INSERT INTO `views` VALUES (2021, 5, 2, 22173540656, 6715, 618475290638);
INSERT INTO `views` VALUES (2021, 2, 11, 32246895624, 6307, 618475290639);
INSERT INTO `views` VALUES (2021, 1, 27, 51537649617, 17891, 627065225216);
INSERT INTO `views` VALUES (2021, 1, 27, 126709860321, 37499, 627065225217);
INSERT INTO `views` VALUES (2021, 2, 7, 32360930612, 18479, 627065225218);
INSERT INTO `views` VALUES (2021, 3, 10, 36311772206, 799, 627065225219);
INSERT INTO `views` VALUES (2021, 3, 4, 74673370944, 11320, 627065225220);
INSERT INTO `views` VALUES (2021, 2, 3, 32133929422, 13008, 627065225221);
INSERT INTO `views` VALUES (2021, 3, 13, 60552667274, 8326, 627065225222);
INSERT INTO `views` VALUES (2021, 3, 13, 41492240873, 9835, 627065225223);
INSERT INTO `views` VALUES (2021, 5, 12, 2981056912, 1725, 627065225224);
INSERT INTO `views` VALUES (2021, 3, 27, 89720475847, 21824, 627065225225);
INSERT INTO `views` VALUES (2021, 2, 23, 47649257456, 16769, 627065225226);
INSERT INTO `views` VALUES (2021, 3, 9, 23029154640, 1956, 627065225227);
INSERT INTO `views` VALUES (2021, 3, 9, 40590497172, 10101, 627065225228);
INSERT INTO `views` VALUES (2021, 4, 10, 73073275870, 7238, 627065225229);
INSERT INTO `views` VALUES (2021, 5, 2, 67634108230, 10416, 627065225230);
INSERT INTO `views` VALUES (2021, 4, 4, 88640893941, 1411, 627065225231);
INSERT INTO `views` VALUES (2021, 4, 9, 44402365643, 74972, 635655159808);
INSERT INTO `views` VALUES (2021, 1, 27, 35247712337, 18428, 635655159809);
INSERT INTO `views` VALUES (2021, 2, 4, 33874746866, 40982, 635655159810);
INSERT INTO `views` VALUES (2021, 1, 21, 41645798621, 33044, 635655159811);
INSERT INTO `views` VALUES (2021, 1, 29, 56949269562, 13173, 635655159812);
INSERT INTO `views` VALUES (2021, 3, 24, 9193589592, 30559, 635655159813);
INSERT INTO `views` VALUES (2021, 5, 1, 36429566021, 8795, 635655159814);
INSERT INTO `views` VALUES (2021, 4, 22, 39427820194, 9178, 635655159815);
INSERT INTO `views` VALUES (2021, 4, 22, 36220002658, 20210, 635655159816);
INSERT INTO `views` VALUES (2021, 3, 28, 67880770132, 7689, 635655159817);
INSERT INTO `views` VALUES (2021, 4, 2, 13535919014, 9312, 635655159818);
INSERT INTO `views` VALUES (2021, 3, 31, 93499144458, 18074, 635655159819);
INSERT INTO `views` VALUES (2021, 5, 5, 32412154756, 8966, 635655159820);
INSERT INTO `views` VALUES (2021, 3, 30, 57464936580, 20657, 635655159821);
INSERT INTO `views` VALUES (2021, 4, 10, 43461633995, 4529, 635655159822);
INSERT INTO `views` VALUES (2021, 3, 22, 32598323820, 14167, 635655159823);
INSERT INTO `views` VALUES (2021, 5, 13, 28810441905, 27644, 635655159824);
INSERT INTO `views` VALUES (2021, 3, 29, 38912417158, 5085, 635655159825);
INSERT INTO `views` VALUES (2021, 5, 3, 56814617515, 11437, 635655159826);
INSERT INTO `views` VALUES (2021, 4, 3, 22325406685, 5983, 635655159827);
INSERT INTO `views` VALUES (2021, 2, 15, 58130993632, 7835, 635655159828);
INSERT INTO `views` VALUES (2021, 3, 24, 24064171715, 3510, 644245094400);
INSERT INTO `views` VALUES (2021, 1, 31, 26693796738, 20405, 644245094401);
INSERT INTO `views` VALUES (2021, 1, 18, 27039367018, 5189, 644245094402);
INSERT INTO `views` VALUES (2021, 1, 25, 55199558234, 14926, 644245094403);
INSERT INTO `views` VALUES (2021, 1, 16, 139446659934, 24528, 644245094404);
INSERT INTO `views` VALUES (2021, 3, 12, 22811017532, 6711, 644245094405);
INSERT INTO `views` VALUES (2021, 2, 20, 67552551896, 15221, 644245094406);
INSERT INTO `views` VALUES (2021, 4, 11, 51907619830, 4896, 644245094407);
INSERT INTO `views` VALUES (2021, 4, 1, 17978616185, 21226, 644245094408);
INSERT INTO `views` VALUES (2021, 3, 3, 40844476857, 11465, 644245094409);
INSERT INTO `views` VALUES (2021, 3, 9, 61130048044, 11639, 644245094410);
INSERT INTO `views` VALUES (2021, 4, 30, 48539846989, 16737, 644245094411);
INSERT INTO `views` VALUES (2021, 3, 5, 16332546366, 10355, 644245094412);
INSERT INTO `views` VALUES (2021, 5, 4, 18828002932, 6580, 644245094413);
INSERT INTO `views` VALUES (2021, 4, 5, 35361084154, 8086, 644245094414);
INSERT INTO `views` VALUES (2021, 5, 14, 6635054323, 7080, 644245094415);
INSERT INTO `views` VALUES (2021, 5, 9, 29203460930, 16304, 652835028992);
INSERT INTO `views` VALUES (2021, 5, 10, 14420170796, 16505, 652835028993);
INSERT INTO `views` VALUES (2021, 1, 25, 113344630373, 15597, 652835028994);
INSERT INTO `views` VALUES (2021, 1, 14, 35153377775, 14834, 652835028995);
INSERT INTO `views` VALUES (2021, 5, 6, 70670785642, 35517, 652835028996);
INSERT INTO `views` VALUES (2021, 5, 6, 38698782818, 12996, 652835028997);
INSERT INTO `views` VALUES (2021, 3, 25, 75044813047, 11277, 652835028998);
INSERT INTO `views` VALUES (2021, 4, 14, 84020160927, 7353, 652835028999);
INSERT INTO `views` VALUES (2021, 3, 22, 1024, 8, 652835029000);
INSERT INTO `views` VALUES (2021, 5, 4, 11848577402, 5460, 652835029001);
INSERT INTO `views` VALUES (2021, 5, 4, 25545058650, 2783, 652835029002);
INSERT INTO `views` VALUES (2021, 2, 28, 37174397422, 6489, 652835029003);
INSERT INTO `views` VALUES (2021, 4, 3, 40251579146, 5666, 652835029004);
INSERT INTO `views` VALUES (2021, 2, 15, 55146247162, 5643, 652835029005);
INSERT INTO `views` VALUES (2021, 2, 14, 50980815736, 5968, 652835029006);
INSERT INTO `views` VALUES (2021, 2, 2, 32546825205, 22457, 661424963584);
INSERT INTO `views` VALUES (2021, 2, 5, 100334223513, 29643, 661424963585);
INSERT INTO `views` VALUES (2021, 2, 6, 75125377618, 30795, 661424963586);
INSERT INTO `views` VALUES (2021, 1, 27, 79849183024, 27315, 661424963587);
INSERT INTO `views` VALUES (2021, 3, 20, 39135959636, 4154, 661424963588);
INSERT INTO `views` VALUES (2021, 3, 15, 63270864493, 12109, 661424963589);
INSERT INTO `views` VALUES (2021, 3, 14, 81375488342, 27932, 661424963590);
INSERT INTO `views` VALUES (2021, 4, 7, 13702844890, 2038, 661424963591);
INSERT INTO `views` VALUES (2021, 4, 20, 39010597538, 16407, 661424963592);
INSERT INTO `views` VALUES (2021, 2, 11, 50184224555, 2451, 661424963593);
INSERT INTO `views` VALUES (2021, 2, 5, 31172107974, 17780, 670014898176);
INSERT INTO `views` VALUES (2021, 3, 17, 46492157048, 16744, 670014898177);
INSERT INTO `views` VALUES (2021, 5, 1, 40641768461, 8667, 670014898178);
INSERT INTO `views` VALUES (2021, 2, 24, 29800599863, 21184, 670014898179);
INSERT INTO `views` VALUES (2021, 2, 7, 49908291873, 16596, 670014898180);
INSERT INTO `views` VALUES (2021, 5, 11, 11255383022, 17755, 670014898181);
INSERT INTO `views` VALUES (2021, 5, 7, 12072161015, 20372, 670014898182);
INSERT INTO `views` VALUES (2021, 4, 14, 34056529574, 10824, 670014898183);
INSERT INTO `views` VALUES (2021, 4, 15, 38752168920, 7931, 670014898184);
INSERT INTO `views` VALUES (2021, 3, 26, 37332810703, 16665, 670014898185);
INSERT INTO `views` VALUES (2021, 4, 11, 39821921494, 11539, 670014898186);
INSERT INTO `views` VALUES (2021, 4, 17, 24039909471, 2645, 670014898187);
INSERT INTO `views` VALUES (2021, 4, 27, 60972740551, 14320, 670014898188);
INSERT INTO `views` VALUES (2021, 2, 12, 2965234498, 4599, 670014898189);
INSERT INTO `views` VALUES (2021, 2, 5, 52619883776, 13324, 678604832768);
INSERT INTO `views` VALUES (2021, 4, 8, 34324733982, 39345, 678604832769);
INSERT INTO `views` VALUES (2021, 1, 28, 57740687978, 15590, 678604832770);
INSERT INTO `views` VALUES (2021, 3, 24, 50275211500, 13943, 678604832771);
INSERT INTO `views` VALUES (2021, 3, 24, 31353554906, 12172, 678604832772);
INSERT INTO `views` VALUES (2021, 4, 24, 76807142114, 11816, 678604832773);
INSERT INTO `views` VALUES (2021, 3, 1, 27638459344, 26751, 678604832774);
INSERT INTO `views` VALUES (2021, 3, 2, 65892553388, 11437, 678604832775);
INSERT INTO `views` VALUES (2021, 3, 16, 9708541277, 1168, 678604832776);
INSERT INTO `views` VALUES (2021, 3, 2, 37496123352, 12097, 678604832777);
INSERT INTO `views` VALUES (2021, 2, 19, 50864073059, 13252, 678604832778);
INSERT INTO `views` VALUES (2021, 2, 26, 72032187546, 22789, 678604832779);
INSERT INTO `views` VALUES (2021, 5, 5, 79929613388, 19471, 678604832780);
INSERT INTO `views` VALUES (2021, 3, 31, 57014703959, 8407, 678604832781);
INSERT INTO `views` VALUES (2021, 4, 20, 48147945862, 6175, 678604832782);
INSERT INTO `views` VALUES (2021, 4, 21, 14301365221, 8005, 678604832783);
INSERT INTO `views` VALUES (2021, 1, 18, 32193624815, 15693, 687194767360);
INSERT INTO `views` VALUES (2021, 3, 11, 15513782133, 40637, 687194767361);
INSERT INTO `views` VALUES (2021, 2, 20, 24033501373, 3639, 687194767362);
INSERT INTO `views` VALUES (2021, 4, 1, 8960019087, 15212, 687194767363);
INSERT INTO `views` VALUES (2021, 3, 25, 4051299817, 9729, 687194767364);
INSERT INTO `views` VALUES (2021, 3, 25, 79740782774, 13237, 687194767365);
INSERT INTO `views` VALUES (2021, 3, 15, 23012741163, 14492, 687194767366);
INSERT INTO `views` VALUES (2021, 4, 14, 16054906201, 5764, 687194767367);
INSERT INTO `views` VALUES (2021, 3, 23, 32981107248, 24015, 687194767368);
INSERT INTO `views` VALUES (2021, 2, 19, 48298444593, 15548, 687194767369);
INSERT INTO `views` VALUES (2021, 4, 12, 44192581787, 13390, 687194767370);
INSERT INTO `views` VALUES (2021, 2, 23, 50785808121, 24233, 687194767371);
INSERT INTO `views` VALUES (2021, 4, 10, 54752924050, 6036, 687194767372);
INSERT INTO `views` VALUES (2021, 2, 10, 14154852416, 1799, 687194767373);
INSERT INTO `views` VALUES (2021, 2, 21, 24122579531, 7153, 687194767374);
INSERT INTO `views` VALUES (2021, 2, 17, 169723, 10, 687194767375);
INSERT INTO `views` VALUES (2021, 2, 13, 23841311327, 2821, 687194767376);
INSERT INTO `views` VALUES (2021, 1, 23, 56436751415, 16376, 695784701952);
INSERT INTO `views` VALUES (2021, 1, 23, 55650445056, 11617, 695784701953);
INSERT INTO `views` VALUES (2021, 1, 24, 132746886530, 38969, 695784701954);
INSERT INTO `views` VALUES (2021, 1, 28, 31045349593, 25033, 695784701955);
INSERT INTO `views` VALUES (2021, 1, 31, 32419966565, 18652, 695784701956);
INSERT INTO `views` VALUES (2021, 5, 10, 28576697658, 25477, 695784701957);
INSERT INTO `views` VALUES (2021, 4, 23, 47915953194, 31602, 695784701958);
INSERT INTO `views` VALUES (2021, 2, 24, 101638243062, 17638, 695784701959);
INSERT INTO `views` VALUES (2021, 4, 25, 45647076234, 13163, 695784701960);
INSERT INTO `views` VALUES (2021, 1, 14, 41226122331, 2294, 695784701961);
INSERT INTO `views` VALUES (2021, 1, 29, 35355137450, 10384, 695784701962);
INSERT INTO `views` VALUES (2021, 3, 8, 32463056481, 11014, 695784701963);
INSERT INTO `views` VALUES (2021, 3, 8, 50199766350, 14315, 695784701964);
INSERT INTO `views` VALUES (2021, 3, 16, 42152706743, 13332, 695784701965);
INSERT INTO `views` VALUES (2021, 3, 2, 67447006957, 20138, 695784701966);
INSERT INTO `views` VALUES (2021, 3, 31, 29211743601, 13438, 695784701967);
INSERT INTO `views` VALUES (2021, 4, 17, 44563008709, 6101, 695784701968);
INSERT INTO `views` VALUES (2021, 4, 20, 24891526139, 8823, 695784701969);
INSERT INTO `views` VALUES (2021, 4, 18, 113431965350, 15184, 695784701970);
INSERT INTO `views` VALUES (2021, 5, 3, 28937516287, 2914, 695784701971);
INSERT INTO `views` VALUES (2021, 2, 10, 32852787932, 2885, 695784701972);
INSERT INTO `views` VALUES (2021, 4, 4, 34737730138, 6089, 695784701973);
INSERT INTO `views` VALUES (2021, 2, 2, 75894293220, 94642, 704374636544);
INSERT INTO `views` VALUES (2021, 2, 4, 84330771248, 32741, 704374636545);
INSERT INTO `views` VALUES (2021, 5, 8, 33827602501, 14677, 704374636546);
INSERT INTO `views` VALUES (2021, 2, 25, 41168373663, 2303, 704374636547);
INSERT INTO `views` VALUES (2021, 4, 15, 71195627830, 5478, 704374636548);
INSERT INTO `views` VALUES (2021, 2, 26, 33727303043, 6660, 704374636549);
INSERT INTO `views` VALUES (2021, 5, 5, 28714349823, 11074, 704374636550);
INSERT INTO `views` VALUES (2021, 5, 5, 41328011576, 4594, 704374636551);
INSERT INTO `views` VALUES (2021, 4, 10, 36744653404, 4731, 704374636552);
INSERT INTO `views` VALUES (2021, 4, 20, 31501054066, 5921, 704374636553);
INSERT INTO `views` VALUES (2021, 3, 16, 13719307443, 12157, 704374636554);
INSERT INTO `views` VALUES (2021, 5, 14, 9928578962, 8678, 704374636555);
INSERT INTO `views` VALUES (2021, 1, 27, 86463952209, 32700, 712964571136);
INSERT INTO `views` VALUES (2021, 5, 8, 25620406571, 34184, 712964571137);
INSERT INTO `views` VALUES (2021, 2, 20, 83403388649, 19535, 712964571138);
INSERT INTO `views` VALUES (2021, 2, 22, 71373316382, 17291, 712964571139);
INSERT INTO `views` VALUES (2021, 4, 28, 22400075198, 13585, 712964571140);
INSERT INTO `views` VALUES (2021, 3, 29, 46345327157, 6562, 712964571141);
INSERT INTO `views` VALUES (2021, 5, 3, 18587061285, 3976, 712964571142);
INSERT INTO `views` VALUES (2021, 2, 12, 17300497279, 3467, 712964571143);
INSERT INTO `views` VALUES (2021, 3, 20, 44291383820, 9344, 721554505728);
INSERT INTO `views` VALUES (2021, 1, 16, 56882439851, 18563, 721554505729);
INSERT INTO `views` VALUES (2021, 4, 22, 22411910866, 8963, 721554505730);
INSERT INTO `views` VALUES (2021, 1, 14, 37897090268, 3958, 721554505731);
INSERT INTO `views` VALUES (2021, 3, 10, 22138176693, 6559, 721554505732);
INSERT INTO `views` VALUES (2021, 4, 6, 16420091528, 6571, 721554505733);
INSERT INTO `views` VALUES (2021, 3, 19, 7885163516, 7367, 721554505734);
INSERT INTO `views` VALUES (2021, 4, 17, 79149223673, 14468, 721554505735);
INSERT INTO `views` VALUES (2021, 4, 16, 36405703528, 15157, 721554505736);
INSERT INTO `views` VALUES (2021, 1, 27, 69623076866, 40236, 730144440320);
INSERT INTO `views` VALUES (2021, 1, 24, 61913797891, 37627, 730144440321);
INSERT INTO `views` VALUES (2021, 5, 10, 32283386932, 18857, 730144440322);
INSERT INTO `views` VALUES (2021, 1, 15, 67604044334, 6770, 730144440323);
INSERT INTO `views` VALUES (2021, 1, 19, 805818131, 1655, 730144440324);
INSERT INTO `views` VALUES (2021, 3, 1, 37263087748, 24607, 730144440325);
INSERT INTO `views` VALUES (2021, 1, 17, 97672151978, 9465, 730144440326);
INSERT INTO `views` VALUES (2021, 3, 28, 28369897138, 1439, 730144440327);
INSERT INTO `views` VALUES (2021, 3, 26, 20248680973, 8131, 730144440328);
INSERT INTO `views` VALUES (2021, 3, 22, 7395038026, 300, 730144440329);
INSERT INTO `views` VALUES (2021, 3, 31, 72207040738, 12866, 730144440330);
INSERT INTO `views` VALUES (2021, 4, 28, 20873618553, 8437, 730144440331);
INSERT INTO `views` VALUES (2021, 4, 27, 19115952625, 7326, 730144440332);
INSERT INTO `views` VALUES (2021, 5, 4, 74235290217, 9527, 730144440333);
INSERT INTO `views` VALUES (2021, 2, 16, 60474959534, 1262, 730144440334);
INSERT INTO `views` VALUES (2021, 2, 15, 7828931435, 6362, 730144440335);
INSERT INTO `views` VALUES (2021, 3, 17, 23920962459, 17742, 738734374912);
INSERT INTO `views` VALUES (2021, 1, 25, 125689361294, 16152, 738734374913);
INSERT INTO `views` VALUES (2021, 3, 24, 30351794083, 14896, 738734374914);
INSERT INTO `views` VALUES (2021, 4, 26, 58941697350, 27619, 738734374915);
INSERT INTO `views` VALUES (2021, 4, 22, 18706190152, 4294, 738734374916);
INSERT INTO `views` VALUES (2021, 5, 7, 13443198582, 3788, 738734374917);
INSERT INTO `views` VALUES (2021, 4, 1, 609496575, 14924, 738734374918);
INSERT INTO `views` VALUES (2021, 5, 6, 41746835214, 6478, 738734374919);
INSERT INTO `views` VALUES (2021, 4, 13, 29799073913, 16046, 738734374920);
INSERT INTO `views` VALUES (2021, 5, 5, 62442486329, 8456, 738734374921);
INSERT INTO `views` VALUES (2021, 4, 10, 20382109197, 604, 738734374922);
INSERT INTO `views` VALUES (2021, 4, 30, 53356806111, 32623, 738734374923);
INSERT INTO `views` VALUES (2021, 4, 26, 92317691256, 47026, 747324309504);
INSERT INTO `views` VALUES (2021, 5, 1, 45127364066, 4834, 747324309505);
INSERT INTO `views` VALUES (2021, 5, 1, 65578713760, 17219, 747324309506);
INSERT INTO `views` VALUES (2021, 3, 18, 37530642154, 14139, 747324309507);
INSERT INTO `views` VALUES (2021, 1, 15, 52065696453, 9603, 747324309508);
INSERT INTO `views` VALUES (2021, 1, 15, 70172373933, 9049, 747324309509);
INSERT INTO `views` VALUES (2021, 2, 3, 55739269781, 8101, 747324309510);
INSERT INTO `views` VALUES (2021, 4, 1, 1044444808, 16830, 747324309511);
INSERT INTO `views` VALUES (2021, 3, 28, 24100062608, 1369, 747324309512);
INSERT INTO `views` VALUES (2021, 3, 31, 23632718356, 4558, 747324309513);
INSERT INTO `views` VALUES (2021, 3, 21, 46981429745, 4579, 747324309514);
INSERT INTO `views` VALUES (2021, 5, 4, 31056767466, 10008, 747324309515);
INSERT INTO `views` VALUES (2021, 2, 16, 37764281585, 7432, 747324309516);
INSERT INTO `views` VALUES (2021, 1, 23, 85829696225, 11966, 755914244096);
INSERT INTO `views` VALUES (2021, 3, 19, 45939076991, 11402, 755914244097);
INSERT INTO `views` VALUES (2021, 4, 22, 43075347052, 17918, 755914244098);
INSERT INTO `views` VALUES (2021, 2, 24, 62887991607, 14020, 755914244099);
INSERT INTO `views` VALUES (2021, 1, 29, 20528464494, 11434, 755914244100);
INSERT INTO `views` VALUES (2021, 3, 4, 41066452007, 18795, 755914244101);
INSERT INTO `views` VALUES (2021, 4, 19, 31983799836, 22973, 755914244102);
INSERT INTO `views` VALUES (2021, 5, 6, 24029260032, 31442, 755914244103);
INSERT INTO `views` VALUES (2021, 2, 25, 44459589040, 19386, 755914244104);
INSERT INTO `views` VALUES (2021, 2, 25, 38618889783, 14398, 755914244105);
INSERT INTO `views` VALUES (2021, 3, 15, 8230651007, 9021, 755914244106);
INSERT INTO `views` VALUES (2021, 4, 13, 62033882482, 3503, 755914244107);
INSERT INTO `views` VALUES (2021, 4, 15, 18773756843, 12473, 755914244108);
INSERT INTO `views` VALUES (2021, 3, 10, 74662089047, 17637, 755914244109);
INSERT INTO `views` VALUES (2021, 4, 20, 53366813093, 3066, 755914244110);
INSERT INTO `views` VALUES (2021, 4, 4, 53025997604, 6702, 755914244111);
INSERT INTO `views` VALUES (2021, 2, 1, 33860294520, 26904, 764504178688);
INSERT INTO `views` VALUES (2021, 4, 27, 56887188819, 9066, 764504178689);
INSERT INTO `views` VALUES (2021, 3, 18, 15318145300, 14666, 764504178690);
INSERT INTO `views` VALUES (2021, 1, 25, 78407013740, 11507, 764504178691);
INSERT INTO `views` VALUES (2021, 4, 25, 43298051127, 19429, 764504178692);
INSERT INTO `views` VALUES (2021, 1, 14, 25836162317, 3975, 764504178693);
INSERT INTO `views` VALUES (2021, 3, 4, 96724243500, 12178, 764504178694);
INSERT INTO `views` VALUES (2021, 3, 4, 61102754559, 16187, 764504178695);
INSERT INTO `views` VALUES (2021, 2, 3, 13242142711, 2525, 764504178696);
INSERT INTO `views` VALUES (2021, 5, 11, 12520954583, 5761, 764504178697);
INSERT INTO `views` VALUES (2021, 5, 7, 50228295456, 15467, 764504178698);
INSERT INTO `views` VALUES (2021, 3, 19, 26569045334, 7927, 764504178699);
INSERT INTO `views` VALUES (2021, 5, 13, 54468111290, 26548, 764504178700);
INSERT INTO `views` VALUES (2021, 4, 28, 20503681044, 5856, 764504178701);
INSERT INTO `views` VALUES (2021, 4, 7, 33345978958, 7073, 764504178702);
INSERT INTO `views` VALUES (2021, 4, 27, 11402887981, 9776, 764504178703);
INSERT INTO `views` VALUES (2021, 4, 4, 25249436221, 603, 764504178704);
INSERT INTO `views` VALUES (2021, 2, 11, 73492974, 254, 764504178705);
INSERT INTO `views` VALUES (2021, 1, 21, 76824253516, 28529, 773094113280);
INSERT INTO `views` VALUES (2021, 5, 8, 49153825007, 22619, 773094113281);
INSERT INTO `views` VALUES (2021, 3, 10, 58155237471, 14039, 773094113282);
INSERT INTO `views` VALUES (2021, 4, 19, 1768643523, 8795, 773094113283);
INSERT INTO `views` VALUES (2021, 4, 14, 52743870968, 5256, 773094113284);
INSERT INTO `views` VALUES (2021, 3, 9, 28088602687, 10445, 773094113285);
INSERT INTO `views` VALUES (2021, 5, 13, 15086654151, 5681, 773094113286);
INSERT INTO `views` VALUES (2021, 3, 6, 37698755572, 13077, 773094113287);
INSERT INTO `views` VALUES (2021, 4, 21, 54404466675, 8055, 773094113288);
INSERT INTO `views` VALUES (2021, 2, 10, 22932045011, 7419, 773094113289);
INSERT INTO `views` VALUES (2021, 5, 3, 17391174683, 4911, 773094113290);
INSERT INTO `views` VALUES (2021, 2, 12, 10283087121, 562, 773094113291);
INSERT INTO `views` VALUES (2021, 1, 20, 32276034964, 19796, 781684047872);
INSERT INTO `views` VALUES (2021, 5, 1, 47439418843, 6748, 781684047873);
INSERT INTO `views` VALUES (2021, 1, 31, 22601865397, 18210, 781684047874);
INSERT INTO `views` VALUES (2021, 2, 20, 49433494594, 7422, 781684047875);
INSERT INTO `views` VALUES (2021, 3, 27, 151056901124, 12260, 781684047876);
INSERT INTO `views` VALUES (2021, 4, 6, 11823648840, 987, 781684047877);
INSERT INTO `views` VALUES (2021, 4, 7, 27839153883, 4520, 781684047878);
INSERT INTO `views` VALUES (2021, 4, 21, 42062500192, 10218, 781684047879);
INSERT INTO `views` VALUES (2021, 2, 9, 58156078789, 1827, 781684047880);
INSERT INTO `views` VALUES (2021, 5, 4, 15828187201, 9595, 781684047881);
INSERT INTO `views` VALUES (2021, 4, 4, 52274037846, 5012, 781684047882);
INSERT INTO `views` VALUES (2021, 2, 2, 61105180002, 15581, 790273982464);
INSERT INTO `views` VALUES (2021, 2, 4, 43645787010, 23203, 790273982465);
INSERT INTO `views` VALUES (2021, 5, 10, 26339471538, 19716, 790273982466);
INSERT INTO `views` VALUES (2021, 5, 10, 46904401775, 16479, 790273982467);
INSERT INTO `views` VALUES (2021, 1, 19, 416122468, 3891, 790273982468);
INSERT INTO `views` VALUES (2021, 3, 23, 767488149, 8195, 790273982469);
INSERT INTO `views` VALUES (2021, 2, 26, 123869886078, 24699, 790273982470);
INSERT INTO `views` VALUES (2021, 3, 22, 50978162457, 11359, 790273982471);
INSERT INTO `views` VALUES (2021, 4, 8, 39732403960, 34694, 798863917056);
INSERT INTO `views` VALUES (2021, 1, 24, 85191129804, 33093, 798863917057);
INSERT INTO `views` VALUES (2021, 3, 20, 44394935148, 2349, 798863917058);
INSERT INTO `views` VALUES (2021, 3, 15, 17937377194, 9690, 798863917059);
INSERT INTO `views` VALUES (2021, 3, 28, 38901888229, 4389, 798863917060);
INSERT INTO `views` VALUES (2021, 3, 28, 51853253177, 16003, 798863917061);
INSERT INTO `views` VALUES (2021, 4, 15, 57248436415, 10298, 798863917062);
INSERT INTO `views` VALUES (2021, 1, 23, 34035432005, 22362, 798863917063);
INSERT INTO `views` VALUES (2021, 4, 17, 33196224569, 10610, 798863917064);
INSERT INTO `views` VALUES (2021, 5, 13, 25408555119, 8051, 798863917065);
INSERT INTO `views` VALUES (2021, 3, 7, 50177824637, 15847, 798863917066);
INSERT INTO `views` VALUES (2021, 4, 22, 77460625006, 9565, 798863917067);
INSERT INTO `views` VALUES (2021, 3, 6, 49121840232, 11166, 798863917068);
INSERT INTO `views` VALUES (2021, 2, 9, 60182512147, 10319, 798863917069);
INSERT INTO `views` VALUES (2021, 5, 4, 25014535366, 11493, 798863917070);
INSERT INTO `views` VALUES (2021, 4, 5, 430934252, 4576, 798863917071);
INSERT INTO `views` VALUES (2021, 5, 3, 16386930982, 4749, 798863917072);
INSERT INTO `views` VALUES (2021, 4, 3, 29704286534, 4896, 798863917073);
INSERT INTO `views` VALUES (2021, 5, 15, 4345769610, 3627, 798863917074);
INSERT INTO `views` VALUES (2021, 2, 27, 11607322866, 4268, 798863917075);
INSERT INTO `views` VALUES (2021, 2, 6, 54502431381, 20193, 807453851648);
INSERT INTO `views` VALUES (2021, 1, 24, 87234909170, 15865, 807453851649);
INSERT INTO `views` VALUES (2021, 1, 15, 8784370281, 5693, 807453851650);
INSERT INTO `views` VALUES (2021, 2, 7, 13614551793, 21416, 807453851651);
INSERT INTO `views` VALUES (2021, 3, 12, 18956122519, 12216, 807453851652);
INSERT INTO `views` VALUES (2021, 4, 29, 3912119890, 12523, 807453851653);
INSERT INTO `views` VALUES (2021, 4, 15, 85897703299, 7893, 807453851654);
INSERT INTO `views` VALUES (2021, 3, 30, 75134837076, 11702, 807453851655);
INSERT INTO `views` VALUES (2021, 4, 24, 41074345685, 2530, 807453851656);
INSERT INTO `views` VALUES (2021, 4, 17, 43023455405, 12004, 807453851657);
INSERT INTO `views` VALUES (2021, 5, 4, 13280010631, 9039, 807453851658);
INSERT INTO `views` VALUES (2021, 4, 5, 3031903340, 963, 807453851659);
INSERT INTO `views` VALUES (2021, 2, 10, 36654197516, 7018, 807453851660);
INSERT INTO `views` VALUES (2021, 4, 3, 17775916737, 10464, 807453851661);
INSERT INTO `views` VALUES (2021, 2, 17, 7880296799, 6545, 807453851662);
INSERT INTO `views` VALUES (2021, 1, 23, 95878440559, 23182, 816043786240);
INSERT INTO `views` VALUES (2021, 1, 20, 64514456637, 23137, 816043786241);
INSERT INTO `views` VALUES (2021, 3, 21, 67401816693, 15486, 816043786242);
INSERT INTO `views` VALUES (2021, 4, 26, 39228277133, 11821, 816043786243);
INSERT INTO `views` VALUES (2021, 1, 18, 31391602378, 15306, 816043786244);
INSERT INTO `views` VALUES (2021, 1, 29, 45886677450, 10874, 816043786245);
INSERT INTO `views` VALUES (2021, 3, 8, 22054872659, 28874, 816043786246);
INSERT INTO `views` VALUES (2021, 3, 9, 50125569190, 8176, 816043786247);
INSERT INTO `views` VALUES (2021, 1, 17, 100785779487, 20432, 816043786248);
INSERT INTO `views` VALUES (2021, 3, 2, 15980128649, 10092, 816043786249);
INSERT INTO `views` VALUES (2021, 3, 6, 58637086919, 21329, 816043786250);
INSERT INTO `views` VALUES (2021, 4, 18, 41037603457, 4105, 816043786251);
INSERT INTO `views` VALUES (2021, 5, 3, 44154239152, 7623, 816043786252);
INSERT INTO `views` VALUES (2021, 5, 2, 48943416350, 10916, 816043786253);
INSERT INTO `views` VALUES (2021, 3, 13, 36134082052, 15767, 816043786254);
INSERT INTO `views` VALUES (2021, 3, 17, 46462384668, 25032, 824633720832);
INSERT INTO `views` VALUES (2021, 3, 24, 33470148072, 34633, 824633720833);
INSERT INTO `views` VALUES (2021, 5, 10, 62958347881, 31254, 824633720834);
INSERT INTO `views` VALUES (2021, 2, 20, 92590533958, 15119, 824633720835);
INSERT INTO `views` VALUES (2021, 2, 25, 30461959948, 564, 824633720836);
INSERT INTO `views` VALUES (2021, 4, 14, 41051683607, 9220, 824633720837);
INSERT INTO `views` VALUES (2021, 4, 11, 39774196091, 8572, 824633720838);
INSERT INTO `views` VALUES (2021, 2, 23, 80058588122, 15316, 824633720839);
INSERT INTO `views` VALUES (2021, 4, 16, 33969058938, 12593, 824633720840);
INSERT INTO `views` VALUES (2021, 2, 8, 23975276969, 2826, 824633720841);
INSERT INTO `views` VALUES (2021, 4, 18, 107428282962, 16152, 824633720842);
INSERT INTO `views` VALUES (2021, 2, 14, 12969475976, 11551, 824633720843);
INSERT INTO `views` VALUES (2021, 2, 2, 28783030839, 24419, 833223655424);
INSERT INTO `views` VALUES (2021, 2, 1, 81027485797, 16587, 833223655425);
INSERT INTO `views` VALUES (2021, 1, 31, 55523871486, 21480, 833223655426);
INSERT INTO `views` VALUES (2021, 5, 10, 26723968641, 25641, 833223655427);
INSERT INTO `views` VALUES (2021, 3, 4, 42366169406, 15825, 833223655428);
INSERT INTO `views` VALUES (2021, 4, 14, 20290244665, 9993, 833223655429);
INSERT INTO `views` VALUES (2021, 3, 3, 33469193211, 9694, 833223655430);
INSERT INTO `views` VALUES (2021, 4, 10, 32053757967, 5254, 833223655431);
INSERT INTO `views` VALUES (2021, 4, 30, 47730005345, 10295, 833223655432);
INSERT INTO `views` VALUES (2021, 2, 8, 33196540423, 10288, 833223655433);
INSERT INTO `views` VALUES (2021, 4, 5, 32901927328, 11389, 833223655434);
INSERT INTO `views` VALUES (2021, 4, 18, 83871893119, 11719, 833223655435);
INSERT INTO `views` VALUES (2021, 3, 7, 61734232213, 3155, 833223655436);
INSERT INTO `views` VALUES (2021, 5, 15, 10559302385, 1949, 833223655437);
INSERT INTO `views` VALUES (2021, 2, 11, 19185699480, 4490, 833223655438);
INSERT INTO `views` VALUES (2021, 2, 11, 36341954256, 7418, 833223655439);
INSERT INTO `views` VALUES (2021, 2, 2, 29464274690, 79096, 841813590016);
INSERT INTO `views` VALUES (2021, 1, 21, 62464692456, 18057, 841813590017);
INSERT INTO `views` VALUES (2021, 3, 11, 7640158209, 35354, 841813590018);
INSERT INTO `views` VALUES (2021, 1, 18, 6359631055, 2627, 841813590019);
INSERT INTO `views` VALUES (2021, 4, 25, 45467613751, 12715, 841813590020);
INSERT INTO `views` VALUES (2021, 2, 3, 35064523701, 6815, 841813590021);
INSERT INTO `views` VALUES (2021, 3, 12, 10296153742, 1729, 841813590022);
INSERT INTO `views` VALUES (2021, 3, 26, 42556774871, 20509, 841813590023);
INSERT INTO `views` VALUES (2021, 3, 5, 231905069, 2133, 841813590024);
INSERT INTO `views` VALUES (2021, 2, 22, 37227616519, 7419, 841813590025);
INSERT INTO `views` VALUES (2021, 4, 21, 6037908825, 2802, 841813590026);
INSERT INTO `views` VALUES (2021, 4, 27, 50319662925, 8767, 841813590027);
INSERT INTO `views` VALUES (2021, 4, 4, 44238337058, 7752, 841813590028);
INSERT INTO `views` VALUES (2021, 5, 14, 61134114474, 203, 841813590029);
INSERT INTO `views` VALUES (2021, 2, 18, 11615080512, 1585, 841813590030);
INSERT INTO `views` VALUES (2021, 2, 6, 58983189889, 25700, 850403524608);
INSERT INTO `views` VALUES (2021, 4, 9, 55929285792, 13110, 850403524609);
INSERT INTO `views` VALUES (2021, 3, 18, 5828335039, 28443, 850403524610);
INSERT INTO `views` VALUES (2021, 3, 1, 54491211319, 14166, 850403524611);
INSERT INTO `views` VALUES (2021, 3, 23, 29043817921, 28971, 850403524612);
INSERT INTO `views` VALUES (2021, 5, 7, 59318335038, 16823, 850403524613);
INSERT INTO `views` VALUES (2021, 1, 17, 43770903385, 11654, 850403524614);
INSERT INTO `views` VALUES (2021, 5, 12, 52517810748, 7240, 850403524615);
INSERT INTO `views` VALUES (2021, 4, 15, 53245792897, 18356, 850403524616);
INSERT INTO `views` VALUES (2021, 5, 13, 11903911433, 2915, 850403524617);
INSERT INTO `views` VALUES (2021, 4, 7, 21253826080, 9396, 850403524618);
INSERT INTO `views` VALUES (2021, 4, 30, 23812047353, 7068, 850403524619);
INSERT INTO `views` VALUES (2021, 2, 18, 50225439642, 12198, 850403524620);
INSERT INTO `views` VALUES (2021, 5, 2, 18283837711, 8391, 850403524621);
INSERT INTO `views` VALUES (2021, 4, 3, 71120594270, 10337, 850403524622);
INSERT INTO `views` VALUES (2021, 3, 7, 21408676366, 6012, 850403524623);
INSERT INTO `views` VALUES (2021, 2, 13, 28979745878, 7017, 850403524624);
INSERT INTO `views` VALUES (2021, 1, 22, 60329563408, 14664, 858993459200);
INSERT INTO `views` VALUES (2021, 2, 4, 72511820250, 34078, 858993459201);
INSERT INTO `views` VALUES (2021, 1, 19, 10554864935, 3776, 858993459202);
INSERT INTO `views` VALUES (2021, 2, 20, 33365824536, 12381, 858993459203);
INSERT INTO `views` VALUES (2021, 5, 13, 28639646548, 9351, 858993459204);
INSERT INTO `views` VALUES (2021, 4, 20, 38024047119, 3764, 858993459205);
INSERT INTO `views` VALUES (2021, 2, 14, 20718445381, 8287, 858993459206);
INSERT INTO `views` VALUES (2021, 4, 9, 53462705769, 6956, 867583393792);
INSERT INTO `views` VALUES (2021, 5, 8, 35049362401, 9600, 867583393793);
INSERT INTO `views` VALUES (2021, 3, 18, 11835460051, 34919, 867583393794);
INSERT INTO `views` VALUES (2021, 5, 11, 63131791134, 32926, 867583393795);
INSERT INTO `views` VALUES (2021, 2, 21, 43435885056, 11266, 867583393796);
INSERT INTO `views` VALUES (2021, 5, 6, 54529431479, 13921, 867583393797);
INSERT INTO `views` VALUES (2021, 5, 12, 35739455360, 17205, 867583393798);
INSERT INTO `views` VALUES (2021, 3, 25, 13122584760, 4083, 867583393799);
INSERT INTO `views` VALUES (2021, 4, 12, 22589027134, 21730, 867583393800);
INSERT INTO `views` VALUES (2021, 3, 31, 36415384907, 8281, 867583393801);
INSERT INTO `views` VALUES (2021, 4, 24, 66494464505, 14958, 867583393802);
INSERT INTO `views` VALUES (2021, 4, 24, 24976956924, 27028, 867583393803);
INSERT INTO `views` VALUES (2021, 2, 18, 32262167907, 9681, 867583393804);
INSERT INTO `views` VALUES (2021, 3, 7, 3903710887, 2030, 867583393805);
INSERT INTO `views` VALUES (2021, 2, 15, 71487260148, 4810, 867583393806);
INSERT INTO `views` VALUES (2021, 2, 15, 45904837348, 10242, 867583393807);
INSERT INTO `views` VALUES (2021, 2, 2, 55672079244, 94911, 876173328384);
INSERT INTO `views` VALUES (2021, 2, 6, 38985444851, 35787, 876173328385);
INSERT INTO `views` VALUES (2021, 5, 8, 26875148642, 17012, 876173328386);
INSERT INTO `views` VALUES (2021, 3, 24, 40788598661, 12896, 876173328387);
INSERT INTO `views` VALUES (2021, 3, 20, 96008403538, 12949, 876173328388);
INSERT INTO `views` VALUES (2021, 4, 23, 34734878655, 5910, 876173328389);
INSERT INTO `views` VALUES (2021, 1, 14, 22971168065, 6425, 876173328390);
INSERT INTO `views` VALUES (2021, 3, 1, 40679684259, 23061, 876173328391);
INSERT INTO `views` VALUES (2021, 2, 25, 52520972144, 5078, 876173328392);
INSERT INTO `views` VALUES (2021, 5, 12, 31700037182, 15297, 876173328393);
INSERT INTO `views` VALUES (2021, 4, 11, 56019795492, 2246, 876173328394);
INSERT INTO `views` VALUES (2021, 3, 29, 20139999046, 9009, 876173328395);
INSERT INTO `views` VALUES (2021, 5, 2, 78316253471, 6794, 876173328396);
INSERT INTO `views` VALUES (2021, 2, 10, 48815956379, 5007, 876173328397);
INSERT INTO `views` VALUES (2021, 2, 10, 43549676678, 7537, 876173328398);
INSERT INTO `views` VALUES (2021, 3, 7, 16032592359, 398, 876173328399);
INSERT INTO `views` VALUES (2021, 1, 27, 6756301358, 35291, 884763262976);
INSERT INTO `views` VALUES (2021, 1, 24, 77760307961, 11526, 884763262977);
INSERT INTO `views` VALUES (2021, 1, 20, 39954094519, 27505, 884763262978);
INSERT INTO `views` VALUES (2021, 1, 26, 68687277476, 21342, 884763262979);
INSERT INTO `views` VALUES (2021, 3, 20, 100184288440, 12173, 884763262980);
INSERT INTO `views` VALUES (2021, 4, 19, 43026566662, 16040, 884763262981);
INSERT INTO `views` VALUES (2021, 3, 8, 12153141016, 8468, 884763262982);
INSERT INTO `views` VALUES (2021, 1, 17, 66445589461, 8464, 884763262983);
INSERT INTO `views` VALUES (2021, 3, 15, 95373208857, 5312, 884763262984);
INSERT INTO `views` VALUES (2021, 2, 26, 31597211473, 91, 884763262985);
INSERT INTO `views` VALUES (2021, 2, 23, 36199350687, 10402, 884763262986);
INSERT INTO `views` VALUES (2021, 3, 30, 64763326537, 5526, 884763262987);
INSERT INTO `views` VALUES (2021, 3, 6, 73341057054, 11246, 884763262988);
INSERT INTO `views` VALUES (2021, 4, 7, 20218174720, 12372, 884763262989);
INSERT INTO `views` VALUES (2021, 3, 29, 66254394222, 6018, 884763262990);
INSERT INTO `views` VALUES (2021, 2, 27, 29124363713, 5176, 884763262991);
INSERT INTO `views` VALUES (2021, 2, 14, 5524579139, 713, 884763262992);
INSERT INTO `views` VALUES (2021, 4, 9, 39428844199, 13696, 893353197568);
INSERT INTO `views` VALUES (2021, 4, 8, 57140162081, 16286, 893353197569);
INSERT INTO `views` VALUES (2021, 1, 26, 40704205664, 10552, 893353197570);
INSERT INTO `views` VALUES (2021, 4, 26, 41848062323, 9645, 893353197571);
INSERT INTO `views` VALUES (2021, 1, 19, 31613977929, 4621, 893353197572);
INSERT INTO `views` VALUES (2021, 2, 24, 66386529074, 7342, 893353197573);
INSERT INTO `views` VALUES (2021, 4, 19, 36042452889, 18087, 893353197574);
INSERT INTO `views` VALUES (2021, 5, 7, 44602231122, 10226, 893353197575);
INSERT INTO `views` VALUES (2021, 4, 14, 45736433303, 12733, 893353197576);
INSERT INTO `views` VALUES (2021, 3, 10, 60377828133, 4583, 893353197577);
INSERT INTO `views` VALUES (2021, 4, 17, 83563479788, 13569, 893353197578);
INSERT INTO `views` VALUES (2021, 3, 14, 82613046972, 8922, 893353197579);
INSERT INTO `views` VALUES (2021, 2, 10, 45554324143, 14278, 893353197580);
INSERT INTO `views` VALUES (2021, 2, 21, 149791337326, 10640, 893353197581);
INSERT INTO `views` VALUES (2021, 2, 16, 104428482032, 7719, 893353197582);
INSERT INTO `views` VALUES (2021, 2, 2, 60458325931, 14980, 901943132160);
INSERT INTO `views` VALUES (2021, 2, 5, 65821856502, 31373, 901943132161);
INSERT INTO `views` VALUES (2021, 1, 30, 14387610313, 34890, 901943132162);
INSERT INTO `views` VALUES (2021, 1, 21, 17081166785, 33828, 901943132163);
INSERT INTO `views` VALUES (2021, 1, 24, 102793777163, 37307, 901943132164);
INSERT INTO `views` VALUES (2021, 1, 26, 24999025173, 17302, 901943132165);
INSERT INTO `views` VALUES (2021, 1, 28, 102894115567, 28456, 901943132166);
INSERT INTO `views` VALUES (2021, 3, 24, 42244909163, 12607, 901943132167);
INSERT INTO `views` VALUES (2021, 1, 14, 52823556432, 1975, 901943132168);
INSERT INTO `views` VALUES (2021, 4, 29, 13677548601, 11100, 901943132169);
INSERT INTO `views` VALUES (2021, 3, 2, 28963227236, 28541, 901943132170);
INSERT INTO `views` VALUES (2021, 2, 26, 53828099921, 1005, 901943132171);
INSERT INTO `views` VALUES (2021, 2, 23, 19407688303, 10778, 901943132172);
INSERT INTO `views` VALUES (2021, 4, 18, 89541820317, 8231, 901943132173);
INSERT INTO `views` VALUES (2021, 3, 29, 77935545313, 13056, 901943132174);
INSERT INTO `views` VALUES (2021, 2, 2, 54478956471, 26316, 910533066752);
INSERT INTO `views` VALUES (2021, 4, 8, 20237147218, 7054, 910533066753);
INSERT INTO `views` VALUES (2021, 1, 26, 24407466882, 12244, 910533066754);
INSERT INTO `views` VALUES (2021, 4, 26, 99075696688, 26448, 910533066755);
INSERT INTO `views` VALUES (2021, 5, 9, 17772532619, 15902, 910533066756);
INSERT INTO `views` VALUES (2021, 5, 9, 60241129784, 28578, 910533066757);
INSERT INTO `views` VALUES (2021, 4, 23, 40303242561, 19002, 910533066758);
INSERT INTO `views` VALUES (2021, 4, 22, 38886475719, 13135, 910533066759);
INSERT INTO `views` VALUES (2021, 1, 14, 14487594195, 12376, 910533066760);
INSERT INTO `views` VALUES (2021, 3, 17, 43793694537, 15791, 910533066761);
INSERT INTO `views` VALUES (2021, 4, 12, 39151191377, 10839, 910533066762);
INSERT INTO `views` VALUES (2021, 2, 23, 30566517807, 9152, 910533066763);
INSERT INTO `views` VALUES (2021, 4, 17, 97899682931, 19778, 910533066764);
INSERT INTO `views` VALUES (2021, 2, 9, 54723254797, 10797, 910533066765);
INSERT INTO `views` VALUES (2021, 3, 5, 37311426890, 15284, 910533066766);
INSERT INTO `views` VALUES (2021, 4, 4, 41259522105, 28681, 910533066767);
INSERT INTO `views` VALUES (2021, 3, 18, 25731583463, 25014, 919123001344);
INSERT INTO `views` VALUES (2021, 1, 16, 46737745756, 15694, 919123001345);
INSERT INTO `views` VALUES (2021, 1, 16, 74159729194, 17833, 919123001346);
INSERT INTO `views` VALUES (2021, 3, 1, 39209938071, 17451, 919123001347);
INSERT INTO `views` VALUES (2021, 4, 13, 81017481469, 13948, 919123001348);
INSERT INTO `views` VALUES (2021, 2, 22, 44278859199, 10993, 919123001349);
INSERT INTO `views` VALUES (2021, 5, 14, 11644599595, 6600, 919123001350);
INSERT INTO `views` VALUES (2021, 2, 15, 10902571112, 13741, 919123001351);
INSERT INTO `views` VALUES (2021, 1, 22, 93052895547, 18586, 927712935936);
INSERT INTO `views` VALUES (2021, 1, 23, 86296502695, 13998, 927712935937);
INSERT INTO `views` VALUES (2021, 1, 30, 25657640709, 31087, 927712935938);
INSERT INTO `views` VALUES (2021, 1, 30, 44435823231, 19101, 927712935939);
INSERT INTO `views` VALUES (2021, 1, 26, 23917433553, 22125, 927712935940);
INSERT INTO `views` VALUES (2021, 5, 2, 66170574646, 12965, 927712935941);
INSERT INTO `views` VALUES (2021, 3, 18, 45506093925, 15863, 927712935942);
INSERT INTO `views` VALUES (2021, 3, 15, 51449821691, 27677, 927712935943);
INSERT INTO `views` VALUES (2021, 4, 24, 42254904627, 3117, 927712935944);
INSERT INTO `views` VALUES (2021, 4, 24, 8799438696, 5583, 927712935945);
INSERT INTO `views` VALUES (2021, 3, 14, 33576420091, 8875, 927712935946);
INSERT INTO `views` VALUES (2021, 2, 8, 112805807246, 15660, 927712935947);
INSERT INTO `views` VALUES (2021, 3, 7, 58797499682, 11911, 927712935948);
INSERT INTO `views` VALUES (2021, 1, 21, 58893619516, 18244, 936302870528);
INSERT INTO `views` VALUES (2021, 5, 8, 49528114587, 17527, 936302870529);
INSERT INTO `views` VALUES (2021, 1, 20, 40605002797, 14928, 936302870530);
INSERT INTO `views` VALUES (2021, 3, 18, 31470277186, 5008, 936302870531);
INSERT INTO `views` VALUES (2021, 1, 15, 32565093075, 1470, 936302870532);
INSERT INTO `views` VALUES (2021, 4, 10, 58596173900, 35827, 936302870533);
INSERT INTO `views` VALUES (2021, 2, 8, 69028312382, 12196, 936302870534);
INSERT INTO `views` VALUES (2021, 2, 3, 29121432606, 14140, 936302870535);
INSERT INTO `views` VALUES (2021, 5, 11, 40954965392, 16392, 936302870536);
INSERT INTO `views` VALUES (2021, 2, 20, 71940133677, 11172, 936302870537);
INSERT INTO `views` VALUES (2021, 1, 17, 82151087683, 14175, 936302870538);
INSERT INTO `views` VALUES (2021, 4, 16, 100124534330, 17279, 936302870539);
INSERT INTO `views` VALUES (2021, 4, 16, 56270946171, 3644, 936302870540);
INSERT INTO `views` VALUES (2021, 2, 23, 50666162501, 17205, 936302870541);
INSERT INTO `views` VALUES (2021, 4, 7, 32518367362, 6983, 936302870542);
INSERT INTO `views` VALUES (2021, 4, 4, 47486555007, 1307, 936302870543);
INSERT INTO `views` VALUES (2021, 3, 20, 46440607756, 29025, 944892805120);
INSERT INTO `views` VALUES (2021, 1, 31, 36963372887, 21008, 944892805121);
INSERT INTO `views` VALUES (2021, 3, 10, 37979184601, 6731, 944892805122);
INSERT INTO `views` VALUES (2021, 5, 7, 22218809610, 11808, 944892805123);
INSERT INTO `views` VALUES (2021, 4, 19, 289646, 1, 944892805124);
INSERT INTO `views` VALUES (2021, 2, 25, 52352478340, 13441, 944892805125);
INSERT INTO `views` VALUES (2021, 2, 19, 32462434448, 9690, 944892805126);
INSERT INTO `views` VALUES (2021, 4, 12, 8651834758, 4600, 944892805127);
INSERT INTO `views` VALUES (2021, 5, 4, 24032056145, 16552, 944892805128);
INSERT INTO `views` VALUES (2021, 4, 18, 73279311238, 13911, 944892805129);
INSERT INTO `views` VALUES (2021, 2, 27, 37445136555, 7118, 944892805130);
INSERT INTO `views` VALUES (2021, 2, 2, 85442055310, 24006, 953482739712);
INSERT INTO `views` VALUES (2021, 4, 9, 18876936384, 61216, 953482739713);
INSERT INTO `views` VALUES (2021, 3, 24, 23968850207, 7533, 953482739714);
INSERT INTO `views` VALUES (2021, 3, 11, 18707920329, 8833, 953482739715);
INSERT INTO `views` VALUES (2021, 5, 7, 19061852148, 4897, 953482739716);
INSERT INTO `views` VALUES (2021, 3, 16, 33412032671, 9739, 953482739717);
INSERT INTO `views` VALUES (2021, 3, 22, 28974476276, 15599, 953482739718);
INSERT INTO `views` VALUES (2021, 2, 8, 57910308696, 7411, 953482739719);
INSERT INTO `views` VALUES (2021, 2, 18, 30149430466, 15710, 953482739720);
INSERT INTO `views` VALUES (2021, 5, 3, 36216193117, 4609, 953482739721);
INSERT INTO `views` VALUES (2021, 2, 14, 11683461, 654, 953482739722);
INSERT INTO `views` VALUES (2021, 4, 9, 24721735905, 58806, 962072674304);
INSERT INTO `views` VALUES (2021, 1, 28, 31195295151, 10982, 962072674305);
INSERT INTO `views` VALUES (2021, 5, 9, 35530588515, 18724, 962072674306);
INSERT INTO `views` VALUES (2021, 5, 12, 13311369276, 7936, 962072674307);
INSERT INTO `views` VALUES (2021, 3, 28, 49581686062, 3733, 962072674308);
INSERT INTO `views` VALUES (2021, 3, 2, 10324467944, 6256, 962072674309);
INSERT INTO `views` VALUES (2021, 2, 19, 42718433287, 8550, 962072674310);
INSERT INTO `views` VALUES (2021, 5, 5, 12297223486, 1563, 962072674311);
INSERT INTO `views` VALUES (2021, 4, 28, 34215666748, 15171, 962072674312);
INSERT INTO `views` VALUES (2021, 3, 5, 31111123764, 11099, 962072674313);
INSERT INTO `views` VALUES (2021, 5, 2, 35898127394, 3810, 962072674314);
INSERT INTO `views` VALUES (2021, 2, 28, 76819692175, 9973, 962072674315);
INSERT INTO `views` VALUES (2021, 1, 22, 107488867947, 20178, 970662608896);
INSERT INTO `views` VALUES (2021, 1, 27, 45656470509, 14359, 970662608897);
INSERT INTO `views` VALUES (2021, 2, 4, 55149476515, 21511, 970662608898);
INSERT INTO `views` VALUES (2021, 4, 23, 2783829048, 27019, 970662608899);
INSERT INTO `views` VALUES (2021, 2, 24, 24695890741, 17136, 970662608900);
INSERT INTO `views` VALUES (2021, 1, 15, 19333551601, 3639, 970662608901);
INSERT INTO `views` VALUES (2021, 2, 7, 28810263260, 16060, 970662608902);
INSERT INTO `views` VALUES (2021, 3, 12, 1714500, 8, 970662608903);
INSERT INTO `views` VALUES (2021, 5, 12, 60825452451, 1393, 970662608904);
INSERT INTO `views` VALUES (2021, 3, 16, 28468710792, 9768, 970662608905);
INSERT INTO `views` VALUES (2021, 3, 27, 34678563099, 752, 970662608906);
INSERT INTO `views` VALUES (2021, 3, 25, 97378166361, 5528, 970662608907);
INSERT INTO `views` VALUES (2021, 4, 11, 60602735713, 8248, 970662608908);
INSERT INTO `views` VALUES (2021, 5, 5, 15815496148, 18746, 970662608909);
INSERT INTO `views` VALUES (2021, 4, 10, 45173569846, 1472, 970662608910);
INSERT INTO `views` VALUES (2021, 3, 22, 67537201721, 17019, 970662608911);
INSERT INTO `views` VALUES (2021, 4, 20, 23109989439, 9769, 970662608912);
INSERT INTO `views` VALUES (2021, 3, 29, 1186897604, 7774, 970662608913);
INSERT INTO `views` VALUES (2021, 2, 18, 31087072183, 4, 970662608914);
INSERT INTO `views` VALUES (2021, 1, 18, 117396483781, 37849, 979252543488);
INSERT INTO `views` VALUES (2021, 2, 7, 58197353442, 13397, 979252543489);
INSERT INTO `views` VALUES (2021, 2, 19, 95068590767, 11684, 979252543490);
INSERT INTO `views` VALUES (2021, 5, 5, 14888748384, 10045, 979252543491);
INSERT INTO `views` VALUES (2021, 3, 30, 48471859015, 16922, 979252543492);
INSERT INTO `views` VALUES (2021, 3, 22, 35702086911, 10879, 979252543493);
INSERT INTO `views` VALUES (2021, 4, 16, 17453320478, 7366, 979252543494);
INSERT INTO `views` VALUES (2021, 3, 6, 28941810555, 16380, 979252543495);
INSERT INTO `views` VALUES (2021, 1, 27, 74820049633, 52852, 987842478080);
INSERT INTO `views` VALUES (2021, 1, 27, 59333335203, 23319, 987842478081);
INSERT INTO `views` VALUES (2021, 1, 21, 49552334243, 6438, 987842478082);
INSERT INTO `views` VALUES (2021, 3, 24, 66837007315, 21321, 987842478083);
INSERT INTO `views` VALUES (2021, 5, 1, 41380044307, 6919, 987842478084);
INSERT INTO `views` VALUES (2021, 4, 23, 40327523174, 13401, 987842478085);
INSERT INTO `views` VALUES (2021, 1, 25, 57184218770, 16017, 987842478086);
INSERT INTO `views` VALUES (2021, 2, 4, 61810512835, 35816, 987842478087);
INSERT INTO `views` VALUES (2021, 4, 19, 16202970990, 10917, 987842478088);
INSERT INTO `views` VALUES (2021, 3, 12, 58537856391, 16342, 987842478089);
INSERT INTO `views` VALUES (2021, 2, 9, 22008959195, 6147, 987842478090);
INSERT INTO `views` VALUES (2021, 3, 29, 25887940216, 1563, 987842478091);
INSERT INTO `views` VALUES (2021, 3, 13, 30276608442, 10019, 987842478092);
INSERT INTO `views` VALUES (2021, 4, 8, 52688931110, 35375, 996432412672);
INSERT INTO `views` VALUES (2021, 5, 1, 16973024449, 10138, 996432412673);
INSERT INTO `views` VALUES (2021, 4, 23, 53631715037, 18270, 996432412674);
INSERT INTO `views` VALUES (2021, 3, 1, 19291214177, 21294, 996432412675);
INSERT INTO `views` VALUES (2021, 2, 7, 5716335667, 18239, 996432412676);
INSERT INTO `views` VALUES (2021, 3, 12, 50887651621, 15178, 996432412677);
INSERT INTO `views` VALUES (2021, 1, 17, 47179443409, 6572, 996432412678);
INSERT INTO `views` VALUES (2021, 3, 27, 56248075273, 11015, 996432412679);
INSERT INTO `views` VALUES (2021, 4, 13, 67380404503, 7062, 996432412680);
INSERT INTO `views` VALUES (2021, 3, 26, 54342821882, 13946, 996432412681);
INSERT INTO `views` VALUES (2021, 5, 5, 33030110959, 16763, 996432412682);
INSERT INTO `views` VALUES (2021, 4, 4, 66910213723, 9255, 996432412683);
INSERT INTO `views` VALUES (2021, 2, 16, 63068622616, 9563, 996432412684);
INSERT INTO `views` VALUES (2021, 2, 12, 6810127260, 7149, 996432412685);
INSERT INTO `views` VALUES (2021, 2, 6, 31848248570, 31508, 1005022347264);
INSERT INTO `views` VALUES (2021, 5, 8, 58768436110, 41739, 1005022347265);
INSERT INTO `views` VALUES (2021, 5, 1, 67626582921, 10840, 1005022347266);
INSERT INTO `views` VALUES (2021, 5, 10, 8691993436, 17306, 1005022347267);
INSERT INTO `views` VALUES (2021, 5, 10, 53489651557, 26510, 1005022347268);
INSERT INTO `views` VALUES (2021, 4, 23, 69412839659, 7429, 1005022347269);
INSERT INTO `views` VALUES (2021, 1, 25, 104346866967, 10765, 1005022347270);
INSERT INTO `views` VALUES (2021, 2, 24, 17529779684, 13760, 1005022347271);
INSERT INTO `views` VALUES (2021, 1, 17, 73613123866, 12533, 1005022347272);
INSERT INTO `views` VALUES (2021, 2, 7, 104500356116, 16556, 1005022347273);
INSERT INTO `views` VALUES (2021, 3, 23, 31226782594, 10539, 1005022347274);
INSERT INTO `views` VALUES (2021, 5, 11, 14443448309, 7948, 1005022347275);
INSERT INTO `views` VALUES (2021, 3, 2, 63557867471, 3967, 1005022347276);
INSERT INTO `views` VALUES (2021, 3, 27, 23067120232, 894, 1005022347277);
INSERT INTO `views` VALUES (2021, 4, 13, 22542361582, 7337, 1005022347278);
INSERT INTO `views` VALUES (2021, 4, 12, 38962138146, 6191, 1005022347279);
INSERT INTO `views` VALUES (2021, 5, 5, 31123406825, 6388, 1005022347280);
INSERT INTO `views` VALUES (2021, 3, 9, 66796464110, 11637, 1005022347281);
INSERT INTO `views` VALUES (2021, 2, 22, 39051758336, 5263, 1005022347282);
INSERT INTO `views` VALUES (2021, 3, 22, 36047060915, 8573, 1005022347283);
INSERT INTO `views` VALUES (2021, 4, 28, 17740903101, 7143, 1005022347284);
INSERT INTO `views` VALUES (2021, 1, 22, 45515544423, 42252, 1013612281856);
INSERT INTO `views` VALUES (2021, 2, 7, 22895648694, 20827, 1013612281857);
INSERT INTO `views` VALUES (2021, 2, 20, 93695216059, 19388, 1013612281858);
INSERT INTO `views` VALUES (2021, 4, 15, 115247191549, 13185, 1013612281859);
INSERT INTO `views` VALUES (2021, 3, 7, 41702124617, 9114, 1013612281860);
INSERT INTO `views` VALUES (2021, 4, 7, 38521569669, 6682, 1013612281861);
INSERT INTO `views` VALUES (2021, 4, 28, 59302862895, 13449, 1013612281862);
INSERT INTO `views` VALUES (2021, 4, 30, 15698024610, 10386, 1013612281863);
INSERT INTO `views` VALUES (2021, 2, 18, 72253723209, 10950, 1013612281864);
INSERT INTO `views` VALUES (2021, 1, 30, 30710427699, 23241, 1022202216448);
INSERT INTO `views` VALUES (2021, 2, 24, 27401158422, 14581, 1022202216449);
INSERT INTO `views` VALUES (2021, 1, 29, 19462030106, 11459, 1022202216450);
INSERT INTO `views` VALUES (2021, 5, 11, 39050185564, 18446, 1022202216451);
INSERT INTO `views` VALUES (2021, 3, 12, 23981393855, 32649, 1022202216452);
INSERT INTO `views` VALUES (2021, 4, 1, 14108250597, 16097, 1022202216453);
INSERT INTO `views` VALUES (2021, 4, 6, 50147940877, 6637, 1022202216454);
INSERT INTO `views` VALUES (2021, 3, 28, 48196624374, 12721, 1022202216455);
INSERT INTO `views` VALUES (2021, 3, 22, 32511926355, 21304, 1022202216456);
INSERT INTO `views` VALUES (2021, 4, 21, 23104344336, 14773, 1022202216457);
INSERT INTO `views` VALUES (2021, 2, 9, 92064477255, 26131, 1022202216458);
INSERT INTO `views` VALUES (2021, 4, 30, 39629930713, 10782, 1022202216459);
INSERT INTO `views` VALUES (2021, 4, 18, 6093644328, 1650, 1022202216460);
INSERT INTO `views` VALUES (2021, 1, 23, 93373587529, 19096, 1030792151040);
INSERT INTO `views` VALUES (2021, 1, 18, 87956327066, 13754, 1030792151041);
INSERT INTO `views` VALUES (2021, 1, 16, 49002308689, 9001, 1030792151042);
INSERT INTO `views` VALUES (2021, 2, 3, 40377075124, 16404, 1030792151043);
INSERT INTO `views` VALUES (2021, 3, 15, 44355036222, 7107, 1030792151044);
INSERT INTO `views` VALUES (2021, 2, 19, 67985135207, 11435, 1030792151045);
INSERT INTO `views` VALUES (2021, 4, 16, 26637360470, 8591, 1030792151046);
INSERT INTO `views` VALUES (2021, 4, 7, 34550272294, 17898, 1030792151047);
INSERT INTO `views` VALUES (2021, 4, 4, 10027445801, 15143, 1030792151048);
INSERT INTO `views` VALUES (2021, 2, 13, 23727960000, 2119, 1030792151049);
INSERT INTO `views` VALUES (2021, 1, 24, 104916379594, 20848, 1039382085632);
INSERT INTO `views` VALUES (2021, 1, 31, 52336071000, 19325, 1039382085633);
INSERT INTO `views` VALUES (2021, 3, 18, 17590531341, 34149, 1039382085634);
INSERT INTO `views` VALUES (2021, 4, 10, 44930991120, 18222, 1039382085635);
INSERT INTO `views` VALUES (2021, 2, 26, 96030142858, 21089, 1039382085636);
INSERT INTO `views` VALUES (2021, 3, 15, 24280531482, 8842, 1039382085637);
INSERT INTO `views` VALUES (2021, 4, 29, 26451339372, 18842, 1039382085638);
INSERT INTO `views` VALUES (2021, 3, 26, 36045712090, 15879, 1039382085639);
INSERT INTO `views` VALUES (2021, 3, 9, 49476560020, 3179, 1039382085640);
INSERT INTO `views` VALUES (2021, 4, 17, 74567674234, 17757, 1039382085641);
INSERT INTO `views` VALUES (2021, 5, 13, 11153537304, 3944, 1039382085642);
INSERT INTO `views` VALUES (2021, 4, 20, 13928428758, 1953, 1039382085643);
INSERT INTO `views` VALUES (2021, 4, 18, 75684122611, 10614, 1039382085644);
INSERT INTO `views` VALUES (2021, 2, 4, 33943971221, 26060, 1047972020224);
INSERT INTO `views` VALUES (2021, 1, 31, 58375362986, 35161, 1047972020225);
INSERT INTO `views` VALUES (2021, 1, 26, 64730541277, 15272, 1047972020226);
INSERT INTO `views` VALUES (2021, 3, 10, 25916081807, 10569, 1047972020227);
INSERT INTO `views` VALUES (2021, 5, 7, 12853670362, 12186, 1047972020228);
INSERT INTO `views` VALUES (2021, 1, 17, 65556899676, 12882, 1047972020229);
INSERT INTO `views` VALUES (2021, 5, 12, 27652583238, 6677, 1047972020230);
INSERT INTO `views` VALUES (2021, 3, 16, 47730059039, 12203, 1047972020231);
INSERT INTO `views` VALUES (2021, 4, 15, 53830910849, 2903, 1047972020232);
INSERT INTO `views` VALUES (2021, 3, 2, 17547090643, 12574, 1047972020233);
INSERT INTO `views` VALUES (2021, 4, 11, 59482563122, 4453, 1047972020234);
INSERT INTO `views` VALUES (2021, 3, 31, 34301968785, 8629, 1047972020235);
INSERT INTO `views` VALUES (2021, 4, 20, 39827306005, 7213, 1047972020236);
INSERT INTO `views` VALUES (2021, 4, 21, 29381183123, 10410, 1047972020237);
INSERT INTO `views` VALUES (2021, 3, 7, 17274055145, 8393, 1047972020238);
INSERT INTO `views` VALUES (2021, 4, 9, 27044192808, 39530, 1056561954816);
INSERT INTO `views` VALUES (2021, 1, 28, 101806835313, 11483, 1056561954817);
INSERT INTO `views` VALUES (2021, 2, 1, 39536346000, 26121, 1056561954818);
INSERT INTO `views` VALUES (2021, 4, 23, 31179064896, 10221, 1056561954819);
INSERT INTO `views` VALUES (2021, 4, 25, 79596342529, 7145, 1056561954820);
INSERT INTO `views` VALUES (2021, 3, 11, 16851688428, 36082, 1056561954821);
INSERT INTO `views` VALUES (2021, 2, 20, 40652382334, 13519, 1056561954822);
INSERT INTO `views` VALUES (2021, 4, 15, 62794973617, 8877, 1056561954823);
INSERT INTO `views` VALUES (2021, 4, 11, 53663317059, 7162, 1056561954824);
INSERT INTO `views` VALUES (2021, 3, 9, 51945014815, 11891, 1056561954825);
INSERT INTO `views` VALUES (2021, 4, 28, 39931427695, 6270, 1056561954826);
INSERT INTO `views` VALUES (2021, 5, 2, 45133205557, 5532, 1056561954827);
INSERT INTO `views` VALUES (2021, 4, 3, 7311446678, 6578, 1056561954828);
INSERT INTO `views` VALUES (2021, 2, 13, 33789062635, 1417, 1056561954829);
INSERT INTO `views` VALUES (2021, 2, 6, 73526684258, 25314, 1065151889408);
INSERT INTO `views` VALUES (2021, 1, 25, 84152814880, 5639, 1065151889409);
INSERT INTO `views` VALUES (2021, 1, 25, 71153075034, 20475, 1065151889410);
INSERT INTO `views` VALUES (2021, 1, 25, 65531533171, 13538, 1065151889411);
INSERT INTO `views` VALUES (2021, 4, 25, 50722690278, 12256, 1065151889412);
INSERT INTO `views` VALUES (2021, 1, 16, 50141595232, 25112, 1065151889413);
INSERT INTO `views` VALUES (2021, 2, 7, 13702221789, 11415, 1065151889414);
INSERT INTO `views` VALUES (2021, 3, 4, 36330089509, 20501, 1065151889415);
INSERT INTO `views` VALUES (2021, 3, 12, 39219716944, 20167, 1065151889416);
INSERT INTO `views` VALUES (2021, 4, 29, 14452954669, 10840, 1065151889417);
INSERT INTO `views` VALUES (2021, 5, 13, 42832413759, 11579, 1065151889418);
INSERT INTO `views` VALUES (2021, 2, 5, 44393353531, 27865, 1073741824000);
INSERT INTO `views` VALUES (2021, 1, 27, 42856081562, 27447, 1073741824001);
INSERT INTO `views` VALUES (2021, 2, 5, 104995173403, 25219, 1073741824002);
INSERT INTO `views` VALUES (2021, 3, 24, 2642425470, 35514, 1073741824003);
INSERT INTO `views` VALUES (2021, 5, 10, 42283536982, 21662, 1073741824004);
INSERT INTO `views` VALUES (2021, 1, 17, 61122912484, 12726, 1073741824005);
INSERT INTO `views` VALUES (2021, 3, 21, 30205765690, 6005, 1073741824006);
INSERT INTO `views` VALUES (2021, 2, 8, 99056848174, 16325, 1073741824007);
INSERT INTO `views` VALUES (2021, 2, 8, 104945154425, 12000, 1073741824008);
INSERT INTO `views` VALUES (2021, 1, 23, 87216649393, 14275, 1082331758592);
INSERT INTO `views` VALUES (2021, 1, 23, 76974941504, 25009, 1082331758593);
INSERT INTO `views` VALUES (2021, 4, 9, 34209028726, 4553, 1082331758594);
INSERT INTO `views` VALUES (2021, 4, 8, 58233014070, 19484, 1082331758595);
INSERT INTO `views` VALUES (2021, 2, 1, 40539088030, 8413, 1082331758596);
INSERT INTO `views` VALUES (2021, 1, 21, 23640767213, 24897, 1082331758597);
INSERT INTO `views` VALUES (2021, 3, 20, 42172887689, 6950, 1082331758598);
INSERT INTO `views` VALUES (2021, 3, 18, 42473015147, 14577, 1082331758599);
INSERT INTO `views` VALUES (2021, 1, 16, 91737164209, 25810, 1082331758600);
INSERT INTO `views` VALUES (2021, 5, 11, 11955715161, 7511, 1082331758601);
INSERT INTO `views` VALUES (2021, 4, 1, 22706147655, 9155, 1082331758602);
INSERT INTO `views` VALUES (2021, 3, 2, 34283016863, 6758, 1082331758603);
INSERT INTO `views` VALUES (2021, 2, 26, 37341174707, 2998, 1082331758604);
INSERT INTO `views` VALUES (2021, 4, 24, 18996360140, 5480, 1082331758605);
INSERT INTO `views` VALUES (2021, 4, 30, 18126967879, 1179, 1082331758606);
INSERT INTO `views` VALUES (2021, 5, 2, 21757131470, 10227, 1082331758607);
INSERT INTO `views` VALUES (2021, 4, 4, 18567059097, 6263, 1082331758608);
INSERT INTO `views` VALUES (2021, 2, 16, 33808128670, 777, 1082331758609);
INSERT INTO `views` VALUES (2021, 2, 13, 23085412153, 5656, 1082331758610);
INSERT INTO `views` VALUES (2021, 2, 5, 70641247283, 14233, 1090921693184);
INSERT INTO `views` VALUES (2021, 1, 26, 38159948010, 16195, 1090921693185);
INSERT INTO `views` VALUES (2021, 4, 26, 54758100484, 13580, 1090921693186);
INSERT INTO `views` VALUES (2021, 4, 26, 65285835525, 12895, 1090921693187);
INSERT INTO `views` VALUES (2021, 5, 10, 38093868149, 14960, 1090921693188);
INSERT INTO `views` VALUES (2021, 2, 24, 30230443052, 13066, 1090921693189);
INSERT INTO `views` VALUES (2021, 1, 14, 81365045431, 11220, 1090921693190);
INSERT INTO `views` VALUES (2021, 3, 12, 2848982053, 2975, 1090921693191);
INSERT INTO `views` VALUES (2021, 4, 13, 28689819580, 8185, 1090921693192);
INSERT INTO `views` VALUES (2021, 2, 19, 1541860763, 18721, 1090921693193);
INSERT INTO `views` VALUES (2021, 2, 19, 47210935917, 8144, 1090921693194);
INSERT INTO `views` VALUES (2021, 4, 16, 48762143523, 22686, 1090921693195);
INSERT INTO `views` VALUES (2021, 3, 25, 5234510050, 6851, 1090921693196);
INSERT INTO `views` VALUES (2021, 2, 22, 27333505171, 6872, 1090921693197);
INSERT INTO `views` VALUES (2021, 2, 14, 21361794460, 8263, 1090921693198);
INSERT INTO `views` VALUES (2021, 1, 23, 76432742730, 17656, 1099511627776);
INSERT INTO `views` VALUES (2021, 1, 21, 49333690446, 20964, 1099511627777);
INSERT INTO `views` VALUES (2021, 3, 18, 55267156806, 33605, 1099511627778);
INSERT INTO `views` VALUES (2021, 2, 1, 69621430871, 25831, 1099511627779);
INSERT INTO `views` VALUES (2021, 3, 24, 36662732624, 21147, 1099511627780);
INSERT INTO `views` VALUES (2021, 3, 12, 9268218389, 7750, 1099511627781);
INSERT INTO `views` VALUES (2021, 1, 15, 94312176875, 9564, 1099511627782);
INSERT INTO `views` VALUES (2021, 2, 25, 109204747055, 15316, 1099511627783);
INSERT INTO `views` VALUES (2021, 4, 27, 61960355574, 5951, 1099511627784);
INSERT INTO `views` VALUES (2021, 2, 18, 43205403970, 4059, 1099511627785);
INSERT INTO `views` VALUES (2021, 5, 3, 23210048413, 6693, 1099511627786);
INSERT INTO `views` VALUES (2021, 1, 16, 95120232714, 22613, 1108101562368);
INSERT INTO `views` VALUES (2021, 3, 25, 39724161974, 11613, 1108101562369);
INSERT INTO `views` VALUES (2021, 4, 14, 27820155771, 17580, 1108101562370);
INSERT INTO `views` VALUES (2021, 4, 29, 38264346813, 20885, 1108101562371);
INSERT INTO `views` VALUES (2021, 2, 23, 43397571081, 13779, 1108101562372);
INSERT INTO `views` VALUES (2021, 3, 9, 63400665126, 16643, 1108101562373);
INSERT INTO `views` VALUES (2021, 2, 15, 47102389443, 13656, 1108101562374);
INSERT INTO `views` VALUES (2021, 2, 14, 35639226946, 5086, 1108101562375);
INSERT INTO `views` VALUES (2021, 5, 8, 55237403521, 16933, 1116691496960);
INSERT INTO `views` VALUES (2021, 1, 30, 58026789725, 24000, 1116691496961);
INSERT INTO `views` VALUES (2021, 5, 7, 30693034491, 7045, 1116691496962);
INSERT INTO `views` VALUES (2021, 4, 19, 32355962537, 13472, 1116691496963);
INSERT INTO `views` VALUES (2021, 4, 14, 72327827651, 14659, 1116691496964);
INSERT INTO `views` VALUES (2021, 4, 11, 52600905603, 7468, 1116691496965);
INSERT INTO `views` VALUES (2021, 4, 28, 38304264752, 4808, 1116691496966);
INSERT INTO `views` VALUES (2021, 2, 28, 44353252489, 12156, 1116691496967);
INSERT INTO `views` VALUES (2021, 3, 13, 53355567508, 13918, 1116691496968);
INSERT INTO `views` VALUES (2021, 2, 27, 9843203324, 1911, 1116691496969);
INSERT INTO `views` VALUES (2021, 2, 15, 50167081848, 10942, 1116691496970);
INSERT INTO `views` VALUES (2021, 2, 11, 31705144822, 8642, 1116691496971);
INSERT INTO `views` VALUES (2021, 1, 22, 40723303672, 41237, 1125281431552);
INSERT INTO `views` VALUES (2021, 2, 5, 31408714552, 36580, 1125281431553);
INSERT INTO `views` VALUES (2021, 5, 8, 76969103189, 22502, 1125281431554);
INSERT INTO `views` VALUES (2021, 3, 20, 67589450032, 10034, 1125281431555);
INSERT INTO `views` VALUES (2021, 1, 31, 21713850368, 28978, 1125281431556);
INSERT INTO `views` VALUES (2021, 1, 25, 76218651398, 12049, 1125281431557);
INSERT INTO `views` VALUES (2021, 2, 24, 7510040409, 12180, 1125281431558);
INSERT INTO `views` VALUES (2021, 4, 25, 53466057992, 3628, 1125281431559);
INSERT INTO `views` VALUES (2021, 3, 4, 94739037799, 16933, 1125281431560);
INSERT INTO `views` VALUES (2021, 2, 3, 22324916704, 3867, 1125281431561);
INSERT INTO `views` VALUES (2021, 3, 27, 62138752673, 10695, 1125281431562);
INSERT INTO `views` VALUES (2021, 3, 27, 96992544807, 20410, 1125281431563);
INSERT INTO `views` VALUES (2021, 3, 25, 12152162866, 1411, 1125281431564);
INSERT INTO `views` VALUES (2021, 3, 31, 19846483835, 4404, 1125281431565);
INSERT INTO `views` VALUES (2021, 3, 31, 74103932001, 12376, 1125281431566);
INSERT INTO `views` VALUES (2021, 2, 9, 55229342949, 6951, 1125281431567);
INSERT INTO `views` VALUES (2021, 3, 5, 55602633464, 12926, 1125281431568);
INSERT INTO `views` VALUES (2021, 3, 17, 31164722782, 12132, 1133871366144);
INSERT INTO `views` VALUES (2021, 3, 17, 47327940762, 17728, 1133871366145);
INSERT INTO `views` VALUES (2021, 5, 9, 48003591102, 15098, 1133871366146);
INSERT INTO `views` VALUES (2021, 5, 10, 14462248403, 14212, 1133871366147);
INSERT INTO `views` VALUES (2021, 4, 25, 58348302498, 13105, 1133871366148);
INSERT INTO `views` VALUES (2021, 3, 10, 44455102306, 5067, 1133871366149);
INSERT INTO `views` VALUES (2021, 2, 20, 110608761938, 21834, 1133871366150);
INSERT INTO `views` VALUES (2021, 3, 28, 72047200465, 23427, 1133871366151);
INSERT INTO `views` VALUES (2021, 3, 9, 30323550047, 4532, 1133871366152);
INSERT INTO `views` VALUES (2021, 3, 22, 57340192317, 14375, 1133871366153);
INSERT INTO `views` VALUES (2021, 3, 21, 61427031678, 2650, 1133871366154);
INSERT INTO `views` VALUES (2021, 4, 5, 66553748906, 7570, 1133871366155);
INSERT INTO `views` VALUES (2021, 2, 18, 51215593331, 10995, 1133871366156);
INSERT INTO `views` VALUES (2021, 2, 28, 36731416878, 8899, 1133871366157);
INSERT INTO `views` VALUES (2021, 1, 19, 50161319458, 11482, 1142461300736);
INSERT INTO `views` VALUES (2021, 3, 16, 22397537751, 7400, 1142461300737);
INSERT INTO `views` VALUES (2021, 3, 2, 33371727654, 9342, 1142461300738);
INSERT INTO `views` VALUES (2021, 4, 29, 11505880585, 13682, 1142461300739);
INSERT INTO `views` VALUES (2021, 4, 12, 29866685799, 9004, 1142461300740);
INSERT INTO `views` VALUES (2021, 5, 13, 1924446346, 8074, 1142461300741);
INSERT INTO `views` VALUES (2021, 2, 8, 90172586319, 5222, 1142461300742);
INSERT INTO `views` VALUES (2021, 2, 18, 2418703065, 4481, 1142461300743);
INSERT INTO `views` VALUES (2021, 2, 21, 6125326548, 8700, 1142461300744);
INSERT INTO `views` VALUES (2021, 2, 5, 79073500590, 22647, 1151051235328);
INSERT INTO `views` VALUES (2021, 2, 6, 17236376529, 21779, 1151051235329);
INSERT INTO `views` VALUES (2021, 1, 29, 69043034929, 18073, 1151051235330);
INSERT INTO `views` VALUES (2021, 3, 24, 69475678541, 26155, 1151051235331);
INSERT INTO `views` VALUES (2021, 1, 25, 68673601553, 13709, 1151051235332);
INSERT INTO `views` VALUES (2021, 3, 1, 7675144130, 13597, 1151051235333);
INSERT INTO `views` VALUES (2021, 5, 11, 23227411918, 11360, 1151051235334);
INSERT INTO `views` VALUES (2021, 4, 19, 41595083721, 5318, 1151051235335);
INSERT INTO `views` VALUES (2021, 3, 8, 48033138698, 12683, 1151051235336);
INSERT INTO `views` VALUES (2021, 3, 27, 93981579053, 20900, 1151051235337);
INSERT INTO `views` VALUES (2021, 3, 15, 39411373072, 13808, 1151051235338);
INSERT INTO `views` VALUES (2021, 4, 6, 9124295131, 8214, 1151051235339);
INSERT INTO `views` VALUES (2021, 3, 5, 2602883598, 7606, 1151051235340);
INSERT INTO `views` VALUES (2021, 4, 11, 42645227576, 10579, 1151051235341);
INSERT INTO `views` VALUES (2021, 2, 23, 31882480703, 16946, 1151051235342);
INSERT INTO `views` VALUES (2021, 4, 10, 60838773930, 2193, 1151051235343);
INSERT INTO `views` VALUES (2021, 2, 22, 69108127203, 26442, 1151051235344);
INSERT INTO `views` VALUES (2021, 4, 16, 57919542528, 16608, 1151051235345);
INSERT INTO `views` VALUES (2021, 3, 6, 46397749797, 10772, 1151051235346);
INSERT INTO `views` VALUES (2021, 3, 6, 37942589575, 12049, 1151051235347);
INSERT INTO `views` VALUES (2021, 4, 7, 29004678258, 723, 1151051235348);
INSERT INTO `views` VALUES (2021, 2, 9, 78953339632, 17219, 1151051235349);
INSERT INTO `views` VALUES (2021, 2, 18, 59456777549, 9525, 1151051235350);
INSERT INTO `views` VALUES (2021, 2, 10, 29966278251, 4940, 1151051235351);
INSERT INTO `views` VALUES (2021, 2, 13, 11773296876, 5384, 1151051235352);
INSERT INTO `views` VALUES (2021, 4, 27, 57023066265, 3101, 1159641169920);
INSERT INTO `views` VALUES (2021, 1, 31, 23121294824, 30913, 1159641169921);
INSERT INTO `views` VALUES (2021, 1, 18, 52214673344, 11097, 1159641169922);
INSERT INTO `views` VALUES (2021, 1, 25, 98848128139, 13911, 1159641169923);
INSERT INTO `views` VALUES (2021, 4, 25, 79531620482, 23155, 1159641169924);
INSERT INTO `views` VALUES (2021, 2, 3, 50322163504, 20442, 1159641169925);
INSERT INTO `views` VALUES (2021, 3, 16, 41499468648, 10947, 1159641169926);
INSERT INTO `views` VALUES (2021, 4, 14, 46157535245, 15669, 1159641169927);
INSERT INTO `views` VALUES (2021, 4, 13, 51396175070, 13639, 1159641169928);
INSERT INTO `views` VALUES (2021, 2, 23, 50498427390, 4489, 1159641169929);
INSERT INTO `views` VALUES (2021, 5, 5, 108921319045, 5021, 1159641169930);
INSERT INTO `views` VALUES (2021, 3, 14, 59215111464, 29419, 1159641169931);
INSERT INTO `views` VALUES (2021, 2, 9, 76277846196, 13613, 1159641169932);
INSERT INTO `views` VALUES (2021, 2, 27, 22038841967, 13605, 1159641169933);
INSERT INTO `views` VALUES (2021, 2, 17, 36026234065, 2231, 1159641169934);
INSERT INTO `views` VALUES (2021, 1, 27, 30561730048, 44947, 1168231104512);
INSERT INTO `views` VALUES (2021, 4, 8, 17974294275, 11662, 1168231104513);
INSERT INTO `views` VALUES (2021, 2, 1, 20182299477, 29285, 1168231104514);
INSERT INTO `views` VALUES (2021, 2, 1, 21002771902, 16686, 1168231104515);
INSERT INTO `views` VALUES (2021, 1, 24, 92177403416, 22262, 1168231104516);
INSERT INTO `views` VALUES (2021, 3, 11, 17116727881, 43877, 1168231104517);
INSERT INTO `views` VALUES (2021, 1, 18, 92044688717, 26065, 1168231104518);
INSERT INTO `views` VALUES (2021, 5, 6, 22973528372, 22419, 1168231104519);
INSERT INTO `views` VALUES (2021, 5, 6, 62495140094, 16457, 1168231104520);
INSERT INTO `views` VALUES (2021, 2, 19, 50159125652, 3920, 1168231104521);
INSERT INTO `views` VALUES (2021, 3, 3, 45263883233, 6394, 1168231104522);
INSERT INTO `views` VALUES (2021, 4, 24, 47089136440, 15684, 1168231104523);
INSERT INTO `views` VALUES (2021, 4, 7, 42923182425, 12118, 1168231104524);
INSERT INTO `views` VALUES (2021, 3, 21, 54231892408, 15903, 1168231104525);
INSERT INTO `views` VALUES (2021, 4, 28, 33131351322, 9838, 1168231104526);
INSERT INTO `views` VALUES (2021, 3, 7, 35119241693, 3338, 1168231104527);
INSERT INTO `views` VALUES (2021, 5, 14, 17243365741, 8796, 1168231104528);
INSERT INTO `views` VALUES (2021, 2, 11, 27105425647, 4585, 1168231104529);
INSERT INTO `views` VALUES (2021, 2, 12, 11590767709, 5824, 1168231104530);
INSERT INTO `views` VALUES (2021, 5, 8, 27022839300, 20579, 1176821039104);
INSERT INTO `views` VALUES (2021, 4, 8, 13034733210, 1938, 1176821039105);
INSERT INTO `views` VALUES (2021, 2, 1, 67461663957, 16370, 1176821039106);
INSERT INTO `views` VALUES (2021, 1, 19, 51803299658, 10915, 1176821039107);
INSERT INTO `views` VALUES (2021, 3, 1, 28872968945, 17477, 1176821039108);
INSERT INTO `views` VALUES (2021, 1, 29, 76861167802, 10207, 1176821039109);
INSERT INTO `views` VALUES (2021, 3, 10, 40741762840, 16527, 1176821039110);
INSERT INTO `views` VALUES (2021, 2, 20, 44822170074, 10420, 1176821039111);
INSERT INTO `views` VALUES (2021, 1, 18, 101458391219, 16040, 1176821039112);
INSERT INTO `views` VALUES (2021, 3, 23, 48660098917, 17986, 1176821039113);
INSERT INTO `views` VALUES (2021, 2, 26, 35509887511, 2126, 1176821039114);
INSERT INTO `views` VALUES (2021, 4, 1, 51260439548, 27162, 1176821039115);
INSERT INTO `views` VALUES (2021, 4, 21, 57719128556, 9799, 1176821039116);
INSERT INTO `views` VALUES (2021, 5, 4, 5131300654, 2978, 1176821039117);
INSERT INTO `views` VALUES (2021, 5, 2, 21686628058, 5566, 1176821039118);
INSERT INTO `views` VALUES (2021, 2, 15, 19852321282, 19, 1176821039119);
INSERT INTO `views` VALUES (2021, 2, 17, 267573746, 2077, 1176821039120);
INSERT INTO `views` VALUES (2021, 1, 22, 38034820772, 9979, 1185410973696);
INSERT INTO `views` VALUES (2021, 2, 7, 24367648113, 25045, 1185410973697);
INSERT INTO `views` VALUES (2021, 1, 27, 46340219747, 43945, 1185410973698);
INSERT INTO `views` VALUES (2021, 4, 26, 19019377039, 41558, 1185410973699);
INSERT INTO `views` VALUES (2021, 1, 15, 30323112730, 10106, 1185410973700);
INSERT INTO `views` VALUES (2021, 4, 22, 52426638302, 9951, 1185410973701);
INSERT INTO `views` VALUES (2021, 1, 14, 27271516003, 11722, 1185410973702);
INSERT INTO `views` VALUES (2021, 3, 16, 35484419609, 14011, 1185410973703);
INSERT INTO `views` VALUES (2021, 3, 27, 13115027488, 4045, 1185410973704);
INSERT INTO `views` VALUES (2021, 3, 27, 54310286668, 16487, 1185410973705);
INSERT INTO `views` VALUES (2021, 4, 15, 19416058747, 300, 1185410973706);
INSERT INTO `views` VALUES (2021, 3, 2, 43392602012, 18471, 1185410973707);
INSERT INTO `views` VALUES (2021, 4, 17, 4553618330, 1625, 1185410973708);
INSERT INTO `views` VALUES (2021, 4, 27, 44761693442, 2875, 1185410973709);
INSERT INTO `views` VALUES (2021, 2, 18, 37433344146, 6208, 1185410973710);
INSERT INTO `views` VALUES (2021, 3, 7, 18646889474, 1213, 1185410973711);
INSERT INTO `views` VALUES (2021, 2, 13, 8185812396, 101, 1185410973712);
INSERT INTO `views` VALUES (2021, 2, 11, 8155025234, 3595, 1185410973713);
INSERT INTO `views` VALUES (2021, 1, 23, 65779139415, 18187, 1194000908288);
INSERT INTO `views` VALUES (2021, 4, 8, 53276884564, 35828, 1194000908289);
INSERT INTO `views` VALUES (2021, 2, 1, 27984517880, 26235, 1194000908290);
INSERT INTO `views` VALUES (2021, 1, 19, 58204853752, 20335, 1194000908291);
INSERT INTO `views` VALUES (2021, 2, 25, 43801267537, 14561, 1194000908292);
INSERT INTO `views` VALUES (2021, 3, 25, 64792117860, 11018, 1194000908293);
INSERT INTO `views` VALUES (2021, 3, 25, 56778071686, 12063, 1194000908294);
INSERT INTO `views` VALUES (2021, 4, 6, 80074197049, 7091, 1194000908295);
INSERT INTO `views` VALUES (2021, 4, 17, 71008235340, 16308, 1194000908296);
INSERT INTO `views` VALUES (2021, 2, 22, 114120555886, 16781, 1194000908297);
INSERT INTO `views` VALUES (2021, 2, 9, 39067876601, 16314, 1194000908298);
INSERT INTO `views` VALUES (2021, 2, 16, 47786267796, 5253, 1194000908299);
INSERT INTO `views` VALUES (2021, 1, 16, 122954530384, 16387, 1202590842880);
INSERT INTO `views` VALUES (2021, 1, 29, 27859375466, 14525, 1202590842881);
INSERT INTO `views` VALUES (2021, 3, 4, 50414406881, 11931, 1202590842882);
INSERT INTO `views` VALUES (2021, 2, 20, 87196337206, 24171, 1202590842883);
INSERT INTO `views` VALUES (2021, 3, 15, 32844425793, 10621, 1202590842884);
INSERT INTO `views` VALUES (2021, 4, 6, 47267637641, 1053, 1202590842885);
INSERT INTO `views` VALUES (2021, 4, 15, 59718118218, 28980, 1202590842886);
INSERT INTO `views` VALUES (2021, 4, 12, 37993331910, 11216, 1202590842887);
INSERT INTO `views` VALUES (2021, 3, 3, 15332633143, 17359, 1202590842888);
INSERT INTO `views` VALUES (2021, 3, 31, 61375850401, 17033, 1202590842889);
INSERT INTO `views` VALUES (2021, 2, 9, 64389639345, 5805, 1202590842890);
INSERT INTO `views` VALUES (2021, 2, 16, 91252498136, 10214, 1202590842891);
INSERT INTO `views` VALUES (2021, 2, 11, 112626505751, 7365, 1202590842892);
INSERT INTO `views` VALUES (2021, 1, 22, 55576367452, 17014, 1211180777472);
INSERT INTO `views` VALUES (2021, 2, 1, 43159036530, 8190, 1211180777473);
INSERT INTO `views` VALUES (2021, 5, 1, 50742370252, 10127, 1211180777474);
INSERT INTO `views` VALUES (2021, 3, 11, 54833323601, 16758, 1211180777475);
INSERT INTO `views` VALUES (2021, 1, 25, 60488459149, 8339, 1211180777476);
INSERT INTO `views` VALUES (2021, 1, 25, 100287565908, 24512, 1211180777477);
INSERT INTO `views` VALUES (2021, 3, 12, 67213567020, 18813, 1211180777478);
INSERT INTO `views` VALUES (2021, 3, 27, 46365735802, 6855, 1211180777479);
INSERT INTO `views` VALUES (2021, 3, 26, 101129170285, 17173, 1211180777480);
INSERT INTO `views` VALUES (2021, 3, 3, 67092616437, 6436, 1211180777481);
INSERT INTO `views` VALUES (2021, 3, 6, 54945981170, 10146, 1211180777482);
INSERT INTO `views` VALUES (2021, 3, 5, 54979901513, 10788, 1211180777483);
INSERT INTO `views` VALUES (2021, 5, 4, 108008616747, 19776, 1211180777484);
INSERT INTO `views` VALUES (2021, 2, 8, 39421685811, 8492, 1211180777485);
INSERT INTO `views` VALUES (2021, 4, 19, 58056277249, 9213, 1211180777486);
INSERT INTO `views` VALUES (2021, 2, 14, 8621685344, 8074, 1211180777487);
INSERT INTO `views` VALUES (2021, 1, 23, 83796813258, 14418, 1219770712064);
INSERT INTO `views` VALUES (2021, 2, 6, 40035099293, 25641, 1219770712065);
INSERT INTO `views` VALUES (2021, 1, 22, 58638653198, 24953, 1219770712066);
INSERT INTO `views` VALUES (2021, 1, 20, 57142065944, 23472, 1219770712067);
INSERT INTO `views` VALUES (2021, 1, 28, 25761544102, 19834, 1219770712068);
INSERT INTO `views` VALUES (2021, 1, 28, 35717352164, 17796, 1219770712069);
INSERT INTO `views` VALUES (2021, 1, 31, 38771601365, 25727, 1219770712070);
INSERT INTO `views` VALUES (2021, 3, 18, 41750450895, 18398, 1219770712071);
INSERT INTO `views` VALUES (2021, 3, 18, 50517676267, 22753, 1219770712072);
INSERT INTO `views` VALUES (2021, 4, 25, 53826561912, 15410, 1219770712073);
INSERT INTO `views` VALUES (2021, 2, 25, 69076897227, 13266, 1219770712074);
INSERT INTO `views` VALUES (2021, 3, 15, 53452025777, 9107, 1219770712075);
INSERT INTO `views` VALUES (2021, 4, 7, 30080466527, 16360, 1219770712076);
INSERT INTO `views` VALUES (2021, 3, 21, 54071533856, 2866, 1219770712077);
INSERT INTO `views` VALUES (2021, 4, 27, 37389905686, 11707, 1219770712078);
INSERT INTO `views` VALUES (2021, 3, 29, 7614394184, 6914, 1219770712079);
INSERT INTO `views` VALUES (2021, 2, 7, 24801382838, 28987, 1228360646656);
INSERT INTO `views` VALUES (2021, 1, 30, 40529287465, 16663, 1228360646657);
INSERT INTO `views` VALUES (2021, 1, 31, 72425840849, 30080, 1228360646658);
INSERT INTO `views` VALUES (2021, 1, 24, 105199113874, 21473, 1228360646659);
INSERT INTO `views` VALUES (2021, 1, 26, 74214047469, 9984, 1228360646660);
INSERT INTO `views` VALUES (2021, 4, 25, 51418470171, 46071, 1228360646661);
INSERT INTO `views` VALUES (2021, 1, 14, 20002027454, 11522, 1228360646662);
INSERT INTO `views` VALUES (2021, 3, 27, 28129589377, 7062, 1228360646663);
INSERT INTO `views` VALUES (2021, 4, 30, 10376650004, 7611, 1228360646664);
INSERT INTO `views` VALUES (2021, 3, 6, 59593861364, 10624, 1228360646665);
INSERT INTO `views` VALUES (2021, 4, 21, 58369962333, 7323, 1228360646666);
INSERT INTO `views` VALUES (2021, 5, 4, 26424816583, 13970, 1228360646667);
INSERT INTO `views` VALUES (2021, 4, 18, 9581646647, 8517, 1228360646668);
INSERT INTO `views` VALUES (2021, 3, 29, 20162671730, 7430, 1228360646669);
INSERT INTO `views` VALUES (2021, 5, 2, 29659090936, 8656, 1228360646670);
INSERT INTO `views` VALUES (2021, 2, 11, 4362313835, 12785, 1228360646671);
INSERT INTO `views` VALUES (2021, 2, 4, 58955277041, 25573, 1236950581248);
INSERT INTO `views` VALUES (2021, 3, 20, 47417383624, 10013, 1236950581249);
INSERT INTO `views` VALUES (2021, 5, 9, 16189408459, 25502, 1236950581250);
INSERT INTO `views` VALUES (2021, 3, 25, 94413364853, 10599, 1236950581251);
INSERT INTO `views` VALUES (2021, 3, 26, 78060517172, 24438, 1236950581252);
INSERT INTO `views` VALUES (2021, 4, 13, 38151353356, 17668, 1236950581253);
INSERT INTO `views` VALUES (2021, 4, 12, 47824460765, 11503, 1236950581254);
INSERT INTO `views` VALUES (2021, 2, 23, 56466583924, 18550, 1236950581255);
INSERT INTO `views` VALUES (2021, 4, 28, 29307958782, 6995, 1236950581256);
INSERT INTO `views` VALUES (2021, 2, 28, 33915302955, 7758, 1236950581257);
INSERT INTO `views` VALUES (2021, 2, 10, 33304822046, 2374, 1236950581258);
INSERT INTO `views` VALUES (2021, 2, 14, 44956289767, 4733, 1236950581259);
INSERT INTO `views` VALUES (2021, 3, 11, 20903773181, 16141, 1245540515840);
INSERT INTO `views` VALUES (2021, 5, 11, 48382569063, 17237, 1245540515841);
INSERT INTO `views` VALUES (2021, 3, 31, 12305463217, 7605, 1245540515842);
INSERT INTO `views` VALUES (2021, 4, 30, 35491330342, 12137, 1245540515843);
INSERT INTO `views` VALUES (2021, 2, 8, 82760732979, 17066, 1245540515844);
INSERT INTO `views` VALUES (2021, 4, 3, 66179801609, 6153, 1245540515845);
INSERT INTO `views` VALUES (2021, 2, 27, 18777415284, 10360, 1245540515846);
INSERT INTO `views` VALUES (2021, 2, 17, 4335854821, 4577, 1245540515847);
INSERT INTO `views` VALUES (2021, 1, 20, 23790875842, 8947, 1254130450432);
INSERT INTO `views` VALUES (2021, 1, 15, 10648889316, 12170, 1254130450433);
INSERT INTO `views` VALUES (2021, 3, 1, 41958547175, 19492, 1254130450434);
INSERT INTO `views` VALUES (2021, 4, 1, 28563838449, 7683, 1254130450435);
INSERT INTO `views` VALUES (2021, 4, 6, 42507304919, 13112, 1254130450436);
INSERT INTO `views` VALUES (2021, 4, 24, 24630159742, 8148, 1254130450437);
INSERT INTO `views` VALUES (2021, 4, 17, 75710896875, 16655, 1254130450438);
INSERT INTO `views` VALUES (2021, 3, 14, 39323643644, 4879, 1254130450439);
INSERT INTO `views` VALUES (2021, 3, 14, 56419003982, 4143, 1254130450440);
INSERT INTO `views` VALUES (2021, 3, 6, 38424575032, 4521, 1254130450441);
INSERT INTO `views` VALUES (2021, 4, 7, 19896624204, 10006, 1254130450442);
INSERT INTO `views` VALUES (2021, 2, 9, 33140178816, 7947, 1254130450443);
INSERT INTO `views` VALUES (2021, 4, 27, 21419116463, 8359, 1254130450444);
INSERT INTO `views` VALUES (2021, 3, 5, 18771795249, 11167, 1254130450445);
INSERT INTO `views` VALUES (2021, 2, 5, 60230908330, 21550, 1262720385024);
INSERT INTO `views` VALUES (2021, 4, 9, 23922246189, 65927, 1262720385025);
INSERT INTO `views` VALUES (2021, 3, 20, 59750009746, 12789, 1262720385026);
INSERT INTO `views` VALUES (2021, 4, 23, 35667664189, 30099, 1262720385027);
INSERT INTO `views` VALUES (2021, 1, 14, 24383280731, 10758, 1262720385028);
INSERT INTO `views` VALUES (2021, 2, 7, 41117747785, 9412, 1262720385029);
INSERT INTO `views` VALUES (2021, 3, 4, 38501155424, 28082, 1262720385030);
INSERT INTO `views` VALUES (2021, 3, 5, 83211878005, 18013, 1262720385031);
INSERT INTO `views` VALUES (2021, 2, 3, 70186325478, 10625, 1262720385032);
INSERT INTO `views` VALUES (2021, 2, 3, 22747640882, 7147, 1262720385033);
INSERT INTO `views` VALUES (2021, 5, 11, 11662442859, 5455, 1262720385034);
INSERT INTO `views` VALUES (2021, 1, 18, 37555432417, 6101, 1262720385035);
INSERT INTO `views` VALUES (2021, 3, 27, 155797929943, 17099, 1262720385036);
INSERT INTO `views` VALUES (2021, 3, 30, 33315999442, 6316, 1262720385037);
INSERT INTO `views` VALUES (2021, 3, 9, 44199697821, 6792, 1262720385038);
INSERT INTO `views` VALUES (2021, 4, 21, 12890770895, 14594, 1262720385039);
INSERT INTO `views` VALUES (2021, 3, 29, 15996068238, 5048, 1262720385040);
INSERT INTO `views` VALUES (2021, 2, 27, 50950429051, 5145, 1262720385041);
INSERT INTO `views` VALUES (2021, 1, 22, 8276706489, 34835, 1271310319616);
INSERT INTO `views` VALUES (2021, 4, 9, 24950168824, 8081, 1271310319617);
INSERT INTO `views` VALUES (2021, 3, 17, 17729231984, 3228, 1271310319618);
INSERT INTO `views` VALUES (2021, 3, 17, 34798750236, 16633, 1271310319619);
INSERT INTO `views` VALUES (2021, 2, 1, 17020339931, 21785, 1271310319620);
INSERT INTO `views` VALUES (2021, 5, 1, 14760272111, 9330, 1271310319621);
INSERT INTO `views` VALUES (2021, 2, 1, 17816328287, 27514, 1271310319622);
INSERT INTO `views` VALUES (2021, 1, 29, 41936960682, 9061, 1271310319623);
INSERT INTO `views` VALUES (2021, 5, 7, 23964043901, 7300, 1271310319624);
INSERT INTO `views` VALUES (2021, 4, 29, 17091685527, 9570, 1271310319625);
INSERT INTO `views` VALUES (2021, 5, 2, 42084270226, 11800, 1271310319626);
INSERT INTO `views` VALUES (2021, 2, 16, 96211826145, 8388, 1271310319627);
INSERT INTO `views` VALUES (2021, 2, 13, 23806846795, 7441, 1271310319628);
INSERT INTO `views` VALUES (2021, 1, 30, 47172995538, 17684, 1279900254208);
INSERT INTO `views` VALUES (2021, 3, 25, 59577981160, 21355, 1279900254209);
INSERT INTO `views` VALUES (2021, 4, 23, 33502107977, 10643, 1279900254210);
INSERT INTO `views` VALUES (2021, 1, 14, 36808597985, 1409, 1279900254211);
INSERT INTO `views` VALUES (2021, 5, 12, 21811158633, 2284, 1279900254212);
INSERT INTO `views` VALUES (2021, 5, 12, 46844531615, 9796, 1279900254213);
INSERT INTO `views` VALUES (2021, 3, 28, 68524054361, 10842, 1279900254214);
INSERT INTO `views` VALUES (2021, 3, 19, 44989541232, 14458, 1279900254215);
INSERT INTO `views` VALUES (2021, 3, 14, 51216088503, 5964, 1279900254216);
INSERT INTO `views` VALUES (2021, 4, 21, 56674873420, 10992, 1279900254217);
INSERT INTO `views` VALUES (2021, 5, 13, 28520385071, 5185, 1279900254218);
INSERT INTO `views` VALUES (2021, 2, 27, 32279672502, 2623, 1279900254219);
INSERT INTO `views` VALUES (2021, 2, 15, 943261926, 7888, 1279900254220);
INSERT INTO `views` VALUES (2021, 2, 5, 2182107810, 20852, 1288490188800);
INSERT INTO `views` VALUES (2021, 2, 6, 55374942892, 28954, 1288490188801);
INSERT INTO `views` VALUES (2021, 5, 8, 68417571242, 14895, 1288490188802);
INSERT INTO `views` VALUES (2021, 4, 8, 56210464927, 55247, 1288490188803);
INSERT INTO `views` VALUES (2021, 1, 24, 119708077863, 17001, 1288490188804);
INSERT INTO `views` VALUES (2021, 3, 24, 41423734390, 17732, 1288490188805);
INSERT INTO `views` VALUES (2021, 3, 19, 39640218247, 8949, 1288490188806);
INSERT INTO `views` VALUES (2021, 1, 18, 41059725379, 21257, 1288490188807);
INSERT INTO `views` VALUES (2021, 3, 1, 41966811025, 17394, 1288490188808);
INSERT INTO `views` VALUES (2021, 3, 10, 70985296550, 9462, 1288490188809);
INSERT INTO `views` VALUES (2021, 5, 7, 62094210675, 15359, 1288490188810);
INSERT INTO `views` VALUES (2021, 4, 20, 106452608654, 14162, 1288490188811);
INSERT INTO `views` VALUES (2021, 3, 12, 50203587816, 11333, 1288490188812);
INSERT INTO `views` VALUES (2021, 2, 22, 15971171595, 1206, 1288490188813);
INSERT INTO `views` VALUES (2021, 4, 7, 31622605798, 17386, 1288490188814);
INSERT INTO `views` VALUES (2021, 3, 21, 34368496788, 3908, 1288490188815);
INSERT INTO `views` VALUES (2021, 3, 21, 69131267769, 7877, 1288490188816);
INSERT INTO `views` VALUES (2021, 2, 9, 35592124586, 15434, 1288490188817);
INSERT INTO `views` VALUES (2021, 2, 10, 15634779928, 9000, 1288490188818);
INSERT INTO `views` VALUES (2021, 2, 11, 53654250975, 7025, 1288490188819);
INSERT INTO `views` VALUES (2021, 4, 26, 43015840213, 20384, 1297080123392);
INSERT INTO `views` VALUES (2021, 1, 16, 94436303150, 24048, 1297080123393);
INSERT INTO `views` VALUES (2021, 1, 19, 51843009989, 23041, 1297080123394);
INSERT INTO `views` VALUES (2021, 1, 20, 53904975063, 8674, 1297080123395);
INSERT INTO `views` VALUES (2021, 3, 8, 43512102184, 10102, 1297080123396);
INSERT INTO `views` VALUES (2021, 3, 8, 22419924223, 3847, 1297080123397);
INSERT INTO `views` VALUES (2021, 4, 15, 33399240052, 316, 1297080123398);
INSERT INTO `views` VALUES (2021, 4, 11, 37400575761, 21803, 1297080123399);
INSERT INTO `views` VALUES (2021, 3, 14, 31763358094, 10358, 1297080123400);
INSERT INTO `views` VALUES (2021, 4, 27, 79514436799, 7692, 1297080123401);
INSERT INTO `views` VALUES (2021, 4, 28, 69150462758, 12272, 1297080123402);
INSERT INTO `views` VALUES (2021, 3, 13, 32248903030, 7407, 1297080123403);
INSERT INTO `views` VALUES (2021, 2, 17, 17526316274, 9232, 1297080123404);
INSERT INTO `views` VALUES (2021, 2, 6, 54925512770, 21224, 1305670057984);
INSERT INTO `views` VALUES (2021, 1, 27, 55475325856, 16959, 1305670057985);
INSERT INTO `views` VALUES (2021, 5, 9, 62430513070, 23014, 1305670057986);
INSERT INTO `views` VALUES (2021, 5, 10, 16012282303, 15620, 1305670057987);
INSERT INTO `views` VALUES (2021, 1, 16, 19210417382, 9879, 1305670057988);
INSERT INTO `views` VALUES (2021, 1, 19, 41331551467, 15695, 1305670057989);
INSERT INTO `views` VALUES (2021, 3, 1, 14828813641, 21896, 1305670057990);
INSERT INTO `views` VALUES (2021, 1, 29, 39911021355, 25223, 1305670057991);
INSERT INTO `views` VALUES (2021, 4, 20, 24771096335, 8597, 1305670057992);
INSERT INTO `views` VALUES (2021, 4, 2, 17110420383, 7120, 1305670057993);
INSERT INTO `views` VALUES (2021, 3, 31, 46274172536, 11838, 1305670057994);
INSERT INTO `views` VALUES (2021, 3, 31, 65466273669, 5737, 1305670057995);
INSERT INTO `views` VALUES (2021, 3, 25, 4186853814, 8039, 1305670057996);
INSERT INTO `views` VALUES (2021, 4, 17, 38197055834, 1158, 1305670057997);
INSERT INTO `views` VALUES (2021, 4, 27, 42742240335, 9504, 1305670057998);
INSERT INTO `views` VALUES (2021, 4, 3, 29400426593, 15741, 1305670057999);
INSERT INTO `views` VALUES (2021, 3, 7, 26545797666, 7300, 1305670058000);
INSERT INTO `views` VALUES (2021, 2, 13, 49320129208, 8636, 1305670058001);
INSERT INTO `views` VALUES (2021, 2, 2, 36163384283, 32412, 1314259992576);
INSERT INTO `views` VALUES (2021, 2, 7, 26809944975, 21770, 1314259992577);
INSERT INTO `views` VALUES (2021, 5, 9, 22795944484, 17949, 1314259992578);
INSERT INTO `views` VALUES (2021, 3, 11, 29682166082, 5134, 1314259992579);
INSERT INTO `views` VALUES (2021, 3, 18, 30144116759, 18365, 1314259992580);
INSERT INTO `views` VALUES (2021, 3, 18, 26452782543, 22966, 1314259992581);
INSERT INTO `views` VALUES (2021, 1, 19, 42034312189, 17823, 1314259992582);
INSERT INTO `views` VALUES (2021, 3, 23, 61124486268, 21918, 1314259992583);
INSERT INTO `views` VALUES (2021, 4, 2, 52633954165, 18063, 1314259992584);
INSERT INTO `views` VALUES (2021, 3, 31, 1760435983, 1720, 1314259992585);
INSERT INTO `views` VALUES (2021, 3, 22, 28420716807, 2037, 1314259992586);
INSERT INTO `views` VALUES (2021, 3, 14, 48707536428, 15299, 1314259992587);
INSERT INTO `views` VALUES (2021, 4, 4, 45294795433, 3453, 1314259992588);
INSERT INTO `views` VALUES (2021, 2, 15, 70619207637, 8541, 1314259992589);
INSERT INTO `views` VALUES (2021, 1, 22, 51885338193, 7448, 1322849927168);
INSERT INTO `views` VALUES (2021, 3, 20, 47060889748, 11011, 1322849927169);
INSERT INTO `views` VALUES (2021, 4, 22, 51770175746, 13977, 1322849927170);
INSERT INTO `views` VALUES (2021, 3, 2, 39985462856, 8136, 1322849927171);
INSERT INTO `views` VALUES (2021, 3, 12, 32417716190, 17244, 1322849927172);
INSERT INTO `views` VALUES (2021, 2, 25, 25618868365, 21586, 1322849927173);
INSERT INTO `views` VALUES (2021, 5, 12, 42306237611, 14179, 1322849927174);
INSERT INTO `views` VALUES (2021, 3, 17, 88465842820, 18448, 1322849927175);
INSERT INTO `views` VALUES (2021, 2, 26, 48867831907, 8004, 1322849927176);
INSERT INTO `views` VALUES (2021, 4, 12, 9743986181, 5111, 1322849927177);
INSERT INTO `views` VALUES (2021, 4, 30, 22099497287, 23102, 1322849927178);
INSERT INTO `views` VALUES (2021, 3, 5, 19126404529, 4526, 1322849927179);
INSERT INTO `views` VALUES (2021, 2, 27, 26621850294, 7215, 1322849927180);
INSERT INTO `views` VALUES (2021, 5, 2, 20795574066, 9278, 1322849927181);
INSERT INTO `views` VALUES (2021, 1, 24, 116506385424, 10031, 1331439861760);
INSERT INTO `views` VALUES (2021, 1, 24, 118403260893, 38239, 1331439861761);
INSERT INTO `views` VALUES (2021, 1, 24, 129407606929, 9667, 1331439861762);
INSERT INTO `views` VALUES (2021, 1, 19, 63566384791, 18532, 1331439861763);
INSERT INTO `views` VALUES (2021, 5, 7, 28429088105, 37218, 1331439861764);
INSERT INTO `views` VALUES (2021, 5, 6, 49594883304, 12741, 1331439861765);
INSERT INTO `views` VALUES (2021, 4, 30, 762963856, 1346, 1331439861766);
INSERT INTO `views` VALUES (2021, 4, 12, 85999766503, 12817, 1331439861767);
INSERT INTO `views` VALUES (2021, 4, 12, 39875122641, 9765, 1331439861768);
INSERT INTO `views` VALUES (2021, 4, 21, 4251838923, 3127, 1331439861769);
INSERT INTO `views` VALUES (2021, 3, 5, 44653548273, 15884, 1331439861770);
INSERT INTO `views` VALUES (2021, 4, 5, 66212482640, 7238, 1331439861771);
INSERT INTO `views` VALUES (2021, 4, 10, 69334045053, 36601, 1340029796352);
INSERT INTO `views` VALUES (2021, 3, 17, 25748134958, 13825, 1340029796353);
INSERT INTO `views` VALUES (2021, 3, 18, 15437681661, 33615, 1340029796354);
INSERT INTO `views` VALUES (2021, 1, 28, 66224167133, 14374, 1340029796355);
INSERT INTO `views` VALUES (2021, 1, 29, 61931878841, 13301, 1340029796356);
INSERT INTO `views` VALUES (2021, 1, 25, 65984867120, 29088, 1340029796357);
INSERT INTO `views` VALUES (2021, 3, 8, 37855134362, 25471, 1340029796358);
INSERT INTO `views` VALUES (2021, 4, 2, 20758248284, 7734, 1340029796359);
INSERT INTO `views` VALUES (2021, 4, 13, 80200847263, 3942, 1340029796360);
INSERT INTO `views` VALUES (2021, 3, 26, 79385166935, 20119, 1340029796361);
INSERT INTO `views` VALUES (2021, 3, 30, 31067118271, 11592, 1340029796362);
INSERT INTO `views` VALUES (2021, 3, 6, 43493428502, 10254, 1340029796363);
INSERT INTO `views` VALUES (2021, 2, 28, 17015587261, 5187, 1340029796364);
INSERT INTO `views` VALUES (2021, 4, 8, 44985077853, 62321, 1348619730944);
INSERT INTO `views` VALUES (2021, 1, 28, 56476259491, 22684, 1348619730945);
INSERT INTO `views` VALUES (2021, 1, 28, 38428887827, 12442, 1348619730946);
INSERT INTO `views` VALUES (2021, 3, 15, 26655101452, 6418, 1348619730947);
INSERT INTO `views` VALUES (2021, 4, 11, 35232428233, 13972, 1348619730948);
INSERT INTO `views` VALUES (2021, 3, 22, 49159471735, 10575, 1348619730949);
INSERT INTO `views` VALUES (2021, 5, 13, 32992573840, 9556, 1348619730950);
INSERT INTO `views` VALUES (2021, 2, 9, 99347914963, 96, 1348619730951);
INSERT INTO `views` VALUES (2021, 4, 18, 203038533372, 9470, 1348619730952);
INSERT INTO `views` VALUES (2021, 4, 4, 18100703521, 141, 1348619730953);
INSERT INTO `views` VALUES (2021, 1, 22, 24979266463, 54380, 1357209665536);
INSERT INTO `views` VALUES (2021, 2, 1, 16325524995, 22634, 1357209665537);
INSERT INTO `views` VALUES (2021, 1, 20, 43782062654, 23653, 1357209665538);
INSERT INTO `views` VALUES (2021, 1, 31, 38950897982, 22329, 1357209665539);
INSERT INTO `views` VALUES (2021, 2, 19, 37960181916, 5670, 1357209665540);
INSERT INTO `views` VALUES (2021, 3, 9, 43316097034, 15538, 1357209665541);
INSERT INTO `views` VALUES (2021, 2, 21, 54596054132, 10088, 1357209665542);
INSERT INTO `views` VALUES (2021, 3, 14, 56086485081, 691, 1357209665543);
INSERT INTO `views` VALUES (2021, 5, 14, 11881089820, 6263, 1357209665544);
INSERT INTO `views` VALUES (2021, 2, 14, 18000688346, 4903, 1357209665545);
INSERT INTO `views` VALUES (2021, 2, 12, 9132549969, 8361, 1357209665546);
INSERT INTO `views` VALUES (2021, 2, 12, 16502490860, 4276, 1357209665547);
INSERT INTO `views` VALUES (2021, 4, 19, 54728582876, 25395, 1365799600128);
INSERT INTO `views` VALUES (2021, 3, 12, 33548637426, 17682, 1365799600129);
INSERT INTO `views` VALUES (2021, 3, 8, 33053304609, 17162, 1365799600130);
INSERT INTO `views` VALUES (2021, 4, 6, 2899337872, 4824, 1365799600131);
INSERT INTO `views` VALUES (2021, 4, 15, 19475145009, 19902, 1365799600132);
INSERT INTO `views` VALUES (2021, 4, 15, 74931141574, 12243, 1365799600133);
INSERT INTO `views` VALUES (2021, 3, 2, 45083954610, 19362, 1365799600134);
INSERT INTO `views` VALUES (2021, 3, 22, 28061335589, 12923, 1365799600135);
INSERT INTO `views` VALUES (2021, 2, 9, 66260056416, 4387, 1365799600136);
INSERT INTO `views` VALUES (2021, 3, 29, 38760096209, 13602, 1365799600137);
INSERT INTO `views` VALUES (2021, 2, 1, 81695528654, 19985, 1374389534720);
INSERT INTO `views` VALUES (2021, 1, 20, 30806938903, 8357, 1374389534721);
INSERT INTO `views` VALUES (2021, 1, 31, 44282889160, 17119, 1374389534722);
INSERT INTO `views` VALUES (2021, 1, 16, 67794752393, 18801, 1374389534723);
INSERT INTO `views` VALUES (2021, 4, 23, 5086130744, 28574, 1374389534724);
INSERT INTO `views` VALUES (2021, 2, 24, 32508430342, 11922, 1374389534725);
INSERT INTO `views` VALUES (2021, 1, 16, 60132053012, 21396, 1374389534726);
INSERT INTO `views` VALUES (2021, 3, 23, 24090803892, 21901, 1374389534727);
INSERT INTO `views` VALUES (2021, 5, 7, 36957232069, 9656, 1374389534728);
INSERT INTO `views` VALUES (2021, 4, 13, 37611557965, 8446, 1374389534729);
INSERT INTO `views` VALUES (2021, 4, 13, 54059581574, 16799, 1374389534730);
INSERT INTO `views` VALUES (2021, 4, 29, 50675924705, 13909, 1374389534731);
INSERT INTO `views` VALUES (2021, 2, 25, 51405461399, 11765, 1374389534732);
INSERT INTO `views` VALUES (2021, 2, 26, 90178604956, 20837, 1374389534733);
INSERT INTO `views` VALUES (2021, 4, 11, 36480403358, 12070, 1374389534734);
INSERT INTO `views` VALUES (2021, 3, 3, 45053855822, 2043, 1374389534735);
INSERT INTO `views` VALUES (2021, 4, 17, 39136664534, 1484, 1374389534736);
INSERT INTO `views` VALUES (2021, 5, 3, 16491064356, 4145, 1374389534737);
INSERT INTO `views` VALUES (2021, 2, 28, 51111527257, 7156, 1374389534738);
INSERT INTO `views` VALUES (2021, 2, 10, 20687021606, 8742, 1374389534739);
INSERT INTO `views` VALUES (2021, 5, 14, 34483000726, 216, 1374389534740);
INSERT INTO `views` VALUES (2021, 1, 24, 142225412981, 40528, 1382979469312);
INSERT INTO `views` VALUES (2021, 2, 6, 57397265128, 27766, 1382979469313);
INSERT INTO `views` VALUES (2021, 4, 8, 39854713283, 53323, 1382979469314);
INSERT INTO `views` VALUES (2021, 4, 26, 81754873758, 28373, 1382979469315);
INSERT INTO `views` VALUES (2021, 3, 1, 47958927462, 14786, 1382979469316);
INSERT INTO `views` VALUES (2021, 1, 17, 74504036103, 8890, 1382979469317);
INSERT INTO `views` VALUES (2021, 4, 13, 44811063032, 12812, 1382979469318);
INSERT INTO `views` VALUES (2021, 3, 3, 31973300788, 5124, 1382979469319);
INSERT INTO `views` VALUES (2021, 5, 5, 7706299095, 1590, 1382979469320);
INSERT INTO `views` VALUES (2021, 3, 6, 52412463989, 18369, 1382979469321);
INSERT INTO `views` VALUES (2021, 3, 21, 56534011692, 8712, 1382979469322);
INSERT INTO `views` VALUES (2021, 2, 9, 37014516327, 22580, 1382979469323);
INSERT INTO `views` VALUES (2021, 3, 5, 32173834859, 12865, 1382979469324);
INSERT INTO `views` VALUES (2021, 2, 28, 17015999711, 781, 1382979469325);
INSERT INTO `views` VALUES (2021, 2, 12, 874040437, 4138, 1382979469326);
INSERT INTO `views` VALUES (2021, 2, 6, 45649922171, 25376, 1391569403904);
INSERT INTO `views` VALUES (2021, 4, 8, 45218488580, 59291, 1391569403905);
INSERT INTO `views` VALUES (2021, 2, 1, 31832419473, 20162, 1391569403906);
INSERT INTO `views` VALUES (2021, 3, 20, 45033831110, 16601, 1391569403907);
INSERT INTO `views` VALUES (2021, 5, 9, 39903538428, 18307, 1391569403908);
INSERT INTO `views` VALUES (2021, 5, 9, 35325756833, 23884, 1391569403909);
INSERT INTO `views` VALUES (2021, 1, 14, 33533860739, 12148, 1391569403910);
INSERT INTO `views` VALUES (2021, 3, 2, 22209791775, 12769, 1391569403911);
INSERT INTO `views` VALUES (2021, 2, 23, 44584721173, 18803, 1391569403912);
INSERT INTO `views` VALUES (2021, 3, 19, 71256412656, 16639, 1391569403913);
INSERT INTO `views` VALUES (2021, 2, 22, 18196480190, 12331, 1391569403914);
INSERT INTO `views` VALUES (2021, 4, 5, 89101648771, 6556, 1391569403915);
INSERT INTO `views` VALUES (2021, 3, 29, 5262159902, 5775, 1391569403916);
INSERT INTO `views` VALUES (2021, 2, 16, 111158968925, 4091, 1391569403917);
INSERT INTO `views` VALUES (2021, 1, 22, 101562568145, 22828, 1400159338496);
INSERT INTO `views` VALUES (2021, 1, 21, 50086992704, 22859, 1400159338497);
INSERT INTO `views` VALUES (2021, 5, 8, 33395182586, 8298, 1400159338498);
INSERT INTO `views` VALUES (2021, 1, 20, 27834721854, 9781, 1400159338499);
INSERT INTO `views` VALUES (2021, 5, 9, 67846812734, 19960, 1400159338500);
INSERT INTO `views` VALUES (2021, 3, 1, 68143884042, 24301, 1400159338501);
INSERT INTO `views` VALUES (2021, 3, 2, 40163628298, 7659, 1400159338502);
INSERT INTO `views` VALUES (2021, 2, 7, 42762644397, 7762, 1400159338503);
INSERT INTO `views` VALUES (2021, 5, 12, 40992381122, 8608, 1400159338504);
INSERT INTO `views` VALUES (2021, 3, 3, 46299066502, 6160, 1400159338505);
INSERT INTO `views` VALUES (2021, 4, 5, 58290767328, 10559, 1400159338506);
INSERT INTO `views` VALUES (2021, 2, 13, 14196120181, 1327, 1400159338507);
INSERT INTO `views` VALUES (2021, 1, 20, 18462983841, 4433, 1408749273088);
INSERT INTO `views` VALUES (2021, 4, 25, 43083708653, 45515, 1408749273089);
INSERT INTO `views` VALUES (2021, 4, 25, 24674623156, 5732, 1408749273090);
INSERT INTO `views` VALUES (2021, 1, 22, 90224519265, 8443, 1408749273091);
INSERT INTO `views` VALUES (2021, 2, 20, 88055127198, 11191, 1408749273092);
INSERT INTO `views` VALUES (2021, 3, 15, 63528248843, 9136, 1408749273093);
INSERT INTO `views` VALUES (2021, 4, 29, 19638162563, 14914, 1408749273094);
INSERT INTO `views` VALUES (2021, 3, 14, 50316313385, 27057, 1408749273095);
INSERT INTO `views` VALUES (2021, 4, 7, 70355448668, 25969, 1408749273096);
INSERT INTO `views` VALUES (2021, 3, 5, 19698905407, 15940, 1408749273097);
INSERT INTO `views` VALUES (2021, 3, 5, 20589416308, 7452, 1408749273098);
INSERT INTO `views` VALUES (2021, 4, 5, 24011067872, 10855, 1408749273099);
INSERT INTO `views` VALUES (2021, 1, 23, 29460773184, 9410, 1417339207680);
INSERT INTO `views` VALUES (2021, 2, 5, 54724056593, 22116, 1417339207681);
INSERT INTO `views` VALUES (2021, 2, 4, 59216005386, 29667, 1417339207682);
INSERT INTO `views` VALUES (2021, 1, 30, 59857955609, 18825, 1417339207683);
INSERT INTO `views` VALUES (2021, 1, 24, 74655205529, 46620, 1417339207684);
INSERT INTO `views` VALUES (2021, 3, 20, 62420623644, 9028, 1417339207685);
INSERT INTO `views` VALUES (2021, 5, 1, 91675976833, 29860, 1417339207686);
INSERT INTO `views` VALUES (2021, 3, 11, 51671516240, 20703, 1417339207687);
INSERT INTO `views` VALUES (2021, 5, 10, 35523134572, 20490, 1417339207688);
INSERT INTO `views` VALUES (2021, 4, 23, 55721254954, 33086, 1417339207689);
INSERT INTO `views` VALUES (2021, 1, 19, 41777880036, 17018, 1417339207690);
INSERT INTO `views` VALUES (2021, 3, 10, 22204023176, 14848, 1417339207691);
INSERT INTO `views` VALUES (2021, 3, 10, 39510147286, 14820, 1417339207692);
INSERT INTO `views` VALUES (2021, 4, 2, 57604977316, 7461, 1417339207693);
INSERT INTO `views` VALUES (2021, 2, 26, 22443710310, 7422, 1417339207694);
INSERT INTO `views` VALUES (2021, 3, 13, 26249934748, 2865, 1417339207695);
INSERT INTO `views` VALUES (2021, 4, 3, 34277632051, 46917, 1417339207696);
INSERT INTO `views` VALUES (2021, 2, 13, 3358327897, 5766, 1417339207697);
INSERT INTO `views` VALUES (2021, 1, 21, 54702511267, 19981, 1425929142272);
INSERT INTO `views` VALUES (2021, 1, 21, 24401613740, 10467, 1425929142273);
INSERT INTO `views` VALUES (2021, 3, 18, 37992650691, 27229, 1425929142274);
INSERT INTO `views` VALUES (2021, 1, 15, 57082766462, 8388, 1425929142275);
INSERT INTO `views` VALUES (2021, 4, 25, 45099860745, 36704, 1425929142276);
INSERT INTO `views` VALUES (2021, 2, 25, 26551839054, 11607, 1425929142277);
INSERT INTO `views` VALUES (2021, 4, 15, 41982715682, 9009, 1425929142278);
INSERT INTO `views` VALUES (2021, 3, 26, 38699120622, 9885, 1425929142279);
INSERT INTO `views` VALUES (2021, 3, 3, 28306042374, 8068, 1425929142280);
INSERT INTO `views` VALUES (2021, 3, 22, 39451832782, 13266, 1425929142281);
INSERT INTO `views` VALUES (2021, 4, 5, 16858414862, 5853, 1425929142282);
INSERT INTO `views` VALUES (2021, 5, 3, 24459617042, 2294, 1425929142283);
INSERT INTO `views` VALUES (2021, 2, 28, 37633119277, 2388, 1425929142284);
INSERT INTO `views` VALUES (2021, 2, 28, 56280353944, 9493, 1425929142285);
INSERT INTO `views` VALUES (2021, 2, 16, 30545825416, 4125, 1425929142286);
INSERT INTO `views` VALUES (2021, 2, 17, 37484479732, 5938, 1425929142287);
INSERT INTO `views` VALUES (2021, 4, 9, 22464113792, 46512, 1434519076864);
INSERT INTO `views` VALUES (2021, 4, 9, 59110395291, 7823, 1434519076865);
INSERT INTO `views` VALUES (2021, 2, 4, 25506224811, 22648, 1434519076866);
INSERT INTO `views` VALUES (2021, 1, 30, 50982171025, 16892, 1434519076867);
INSERT INTO `views` VALUES (2021, 1, 28, 91016593404, 20713, 1434519076868);
INSERT INTO `views` VALUES (2021, 1, 15, 39872384023, 9428, 1434519076869);
INSERT INTO `views` VALUES (2021, 1, 14, 56514683462, 1846, 1434519076870);
INSERT INTO `views` VALUES (2021, 3, 1, 20992466626, 20838, 1434519076871);
INSERT INTO `views` VALUES (2021, 2, 7, 18673179818, 20922, 1434519076872);
INSERT INTO `views` VALUES (2021, 1, 17, 127393284100, 6857, 1434519076873);
INSERT INTO `views` VALUES (2021, 3, 27, 83299283235, 2925, 1434519076874);
INSERT INTO `views` VALUES (2021, 4, 29, 24964540926, 10429, 1434519076875);
INSERT INTO `views` VALUES (2021, 3, 31, 10705236601, 1260, 1434519076876);
INSERT INTO `views` VALUES (2021, 3, 5, 7449968374, 1230, 1434519076877);
INSERT INTO `views` VALUES (2021, 2, 28, 21189868400, 7291, 1434519076878);
INSERT INTO `views` VALUES (2021, 2, 6, 61007708505, 22855, 1443109011456);
INSERT INTO `views` VALUES (2021, 3, 17, 39660830244, 19962, 1443109011457);
INSERT INTO `views` VALUES (2021, 4, 26, 112932176805, 25697, 1443109011458);
INSERT INTO `views` VALUES (2021, 5, 9, 65103273438, 22339, 1443109011459);
INSERT INTO `views` VALUES (2021, 3, 18, 26540956403, 24633, 1443109011460);
INSERT INTO `views` VALUES (2021, 1, 18, 58687751380, 3665, 1443109011461);
INSERT INTO `views` VALUES (2021, 1, 17, 70740664820, 8792, 1443109011462);
INSERT INTO `views` VALUES (2021, 3, 8, 29622624667, 37551, 1443109011463);
INSERT INTO `views` VALUES (2021, 4, 6, 55134475859, 9150, 1443109011464);
INSERT INTO `views` VALUES (2021, 3, 28, 87498288296, 6002, 1443109011465);
INSERT INTO `views` VALUES (2021, 2, 26, 71811505685, 11473, 1443109011466);
INSERT INTO `views` VALUES (2021, 4, 11, 18443992729, 2882, 1443109011467);
INSERT INTO `views` VALUES (2021, 3, 9, 52769320217, 18264, 1443109011468);
INSERT INTO `views` VALUES (2021, 4, 17, 44062840375, 11667, 1443109011469);
INSERT INTO `views` VALUES (2021, 2, 22, 42359292790, 5778, 1443109011470);
INSERT INTO `views` VALUES (2021, 4, 16, 26582626881, 14686, 1443109011471);
INSERT INTO `views` VALUES (2021, 3, 6, 54084876017, 11694, 1443109011472);
INSERT INTO `views` VALUES (2021, 4, 21, 17860520867, 11734, 1443109011473);
INSERT INTO `views` VALUES (2021, 3, 21, 54671522113, 16275, 1443109011474);
INSERT INTO `views` VALUES (2021, 3, 29, 27974818951, 11270, 1443109011475);
INSERT INTO `views` VALUES (2021, 2, 21, 42276454855, 11953, 1443109011476);
INSERT INTO `views` VALUES (2021, 4, 4, 35823427468, 14237, 1443109011477);
INSERT INTO `views` VALUES (2021, 5, 14, 18559529658, 17380, 1443109011478);
INSERT INTO `views` VALUES (2021, 3, 17, 23412211950, 8339, 1451698946048);
INSERT INTO `views` VALUES (2021, 5, 1, 7582747598, 9041, 1451698946049);
INSERT INTO `views` VALUES (2021, 3, 18, 35912953292, 16350, 1451698946050);
INSERT INTO `views` VALUES (2021, 4, 23, 52163947962, 17627, 1451698946051);
INSERT INTO `views` VALUES (2021, 2, 7, 43211449576, 13444, 1451698946052);
INSERT INTO `views` VALUES (2021, 3, 4, 37606551563, 20142, 1451698946053);
INSERT INTO `views` VALUES (2021, 3, 4, 43404058276, 13181, 1451698946054);
INSERT INTO `views` VALUES (2021, 3, 23, 32023753852, 30947, 1451698946055);
INSERT INTO `views` VALUES (2021, 4, 1, 19620294106, 7494, 1451698946056);
INSERT INTO `views` VALUES (2021, 3, 6, 59800462213, 9558, 1451698946057);
INSERT INTO `views` VALUES (2021, 4, 7, 45559919862, 11149, 1451698946058);
INSERT INTO `views` VALUES (2021, 1, 24, 94660812886, 22221, 1460288880640);
INSERT INTO `views` VALUES (2021, 4, 22, 42383656547, 12338, 1460288880641);
INSERT INTO `views` VALUES (2021, 1, 14, 30346918459, 8354, 1460288880642);
INSERT INTO `views` VALUES (2021, 5, 11, 7706984855, 1697, 1460288880643);
INSERT INTO `views` VALUES (2021, 4, 19, 19795813156, 18738, 1460288880644);
INSERT INTO `views` VALUES (2021, 5, 6, 11345216776, 12931, 1460288880645);
INSERT INTO `views` VALUES (2021, 2, 25, 50188597962, 17136, 1460288880646);
INSERT INTO `views` VALUES (2021, 4, 6, 23191749050, 6874, 1460288880647);
INSERT INTO `views` VALUES (2021, 2, 19, 63001046035, 12584, 1460288880648);
INSERT INTO `views` VALUES (2021, 2, 26, 40071008193, 12243, 1460288880649);
INSERT INTO `views` VALUES (2021, 3, 19, 30594465776, 13923, 1460288880650);
INSERT INTO `views` VALUES (2021, 4, 16, 36132082312, 322, 1460288880651);
INSERT INTO `views` VALUES (2021, 2, 21, 40162585015, 7448, 1460288880652);
INSERT INTO `views` VALUES (2021, 3, 7, 32662054628, 7630, 1460288880653);
INSERT INTO `views` VALUES (2021, 1, 30, 65590247305, 15963, 1468878815232);
INSERT INTO `views` VALUES (2021, 4, 25, 53635707685, 16910, 1468878815233);
INSERT INTO `views` VALUES (2021, 2, 3, 52414655543, 19421, 1468878815234);
INSERT INTO `views` VALUES (2021, 4, 1, 26223920114, 18509, 1468878815235);
INSERT INTO `views` VALUES (2021, 3, 16, 25986227919, 8758, 1468878815236);
INSERT INTO `views` VALUES (2021, 3, 27, 6649820447, 8370, 1468878815237);
INSERT INTO `views` VALUES (2021, 4, 13, 74298895376, 2237, 1468878815238);
INSERT INTO `views` VALUES (2021, 3, 2, 3128656641, 131, 1468878815239);
INSERT INTO `views` VALUES (2021, 2, 26, 68604036162, 19417, 1468878815240);
INSERT INTO `views` VALUES (2021, 3, 31, 28966074606, 5170, 1468878815241);
INSERT INTO `views` VALUES (2021, 5, 5, 18207659752, 1465, 1468878815242);
INSERT INTO `views` VALUES (2021, 3, 30, 38595865537, 9987, 1468878815243);
INSERT INTO `views` VALUES (2021, 2, 22, 62543898725, 14326, 1468878815244);
INSERT INTO `views` VALUES (2021, 3, 14, 60625711317, 7465, 1468878815245);
INSERT INTO `views` VALUES (2021, 4, 4, 65987364318, 2098, 1468878815246);
INSERT INTO `views` VALUES (2021, 2, 12, 9873722976, 4556, 1468878815247);
INSERT INTO `views` VALUES (2021, 2, 3, 79657294701, 11993, 1477468749824);
INSERT INTO `views` VALUES (2021, 2, 4, 34721797503, 28169, 1477468749825);
INSERT INTO `views` VALUES (2021, 1, 21, 64508480600, 21078, 1477468749826);
INSERT INTO `views` VALUES (2021, 5, 1, 71290636019, 16926, 1477468749827);
INSERT INTO `views` VALUES (2021, 3, 18, 15018166415, 12707, 1477468749828);
INSERT INTO `views` VALUES (2021, 4, 10, 75827217263, 11433, 1477468749829);
INSERT INTO `views` VALUES (2021, 3, 23, 6300829395, 15736, 1477468749830);
INSERT INTO `views` VALUES (2021, 4, 15, 75052859746, 17956, 1477468749831);
INSERT INTO `views` VALUES (2021, 3, 26, 32666563588, 10320, 1477468749832);
INSERT INTO `views` VALUES (2021, 3, 21, 61579989549, 10616, 1477468749833);
INSERT INTO `views` VALUES (2021, 4, 27, 15272033563, 10771, 1477468749834);
INSERT INTO `views` VALUES (2021, 4, 5, 53134528563, 3148, 1477468749835);
INSERT INTO `views` VALUES (2021, 2, 17, 45494890514, 3987, 1477468749836);
INSERT INTO `views` VALUES (2021, 2, 11, 40819596747, 3449, 1477468749837);
INSERT INTO `views` VALUES (2021, 1, 21, 60337792780, 25570, 1486058684416);
INSERT INTO `views` VALUES (2021, 3, 24, 28449710095, 20172, 1486058684417);
INSERT INTO `views` VALUES (2021, 3, 20, 12676855893, 56936, 1486058684418);
INSERT INTO `views` VALUES (2021, 4, 26, 44847809157, 57672, 1486058684419);
INSERT INTO `views` VALUES (2021, 1, 18, 83524223207, 13276, 1486058684420);
INSERT INTO `views` VALUES (2021, 5, 7, 64237826763, 7627, 1486058684421);
INSERT INTO `views` VALUES (2021, 5, 6, 46333028190, 3444, 1486058684422);
INSERT INTO `views` VALUES (2021, 2, 25, 28833104028, 7773, 1486058684423);
INSERT INTO `views` VALUES (2021, 2, 19, 57403999238, 14851, 1486058684424);
INSERT INTO `views` VALUES (2021, 3, 30, 21420062475, 13028, 1486058684425);
INSERT INTO `views` VALUES (2021, 4, 10, 95411301938, 23503, 1486058684426);
INSERT INTO `views` VALUES (2021, 3, 19, 32678682174, 9546, 1486058684427);
INSERT INTO `views` VALUES (2021, 2, 22, 37539273105, 76, 1486058684428);
INSERT INTO `views` VALUES (2021, 2, 21, 70392889890, 5450, 1486058684429);
INSERT INTO `views` VALUES (2021, 4, 28, 74195231443, 10076, 1486058684430);
INSERT INTO `views` VALUES (2021, 2, 8, 35609483347, 172, 1486058684431);
INSERT INTO `views` VALUES (2021, 2, 8, 34831131855, 12020, 1486058684432);
INSERT INTO `views` VALUES (2021, 4, 5, 25419415355, 9289, 1486058684433);
INSERT INTO `views` VALUES (2021, 4, 4, 19985574587, 2938, 1486058684434);
INSERT INTO `views` VALUES (2021, 2, 5, 43804446669, 23232, 1494648619008);
INSERT INTO `views` VALUES (2021, 4, 9, 31956810652, 43264, 1494648619009);
INSERT INTO `views` VALUES (2021, 2, 4, 31916047950, 22185, 1494648619010);
INSERT INTO `views` VALUES (2021, 1, 21, 60264622723, 18892, 1494648619011);
INSERT INTO `views` VALUES (2021, 1, 26, 94526069201, 305, 1494648619012);
INSERT INTO `views` VALUES (2021, 4, 22, 36372130394, 15622, 1494648619013);
INSERT INTO `views` VALUES (2021, 1, 20, 64509519678, 10072, 1494648619014);
INSERT INTO `views` VALUES (2021, 3, 8, 21862324874, 13568, 1494648619015);
INSERT INTO `views` VALUES (2021, 5, 12, 64216017010, 8807, 1494648619016);
INSERT INTO `views` VALUES (2021, 3, 30, 27276619137, 4986, 1494648619017);
INSERT INTO `views` VALUES (2021, 4, 16, 56270219507, 16469, 1494648619018);
INSERT INTO `views` VALUES (2021, 3, 6, 50771409870, 13127, 1494648619019);
INSERT INTO `views` VALUES (2021, 3, 7, 39049424369, 4565, 1494648619020);
INSERT INTO `views` VALUES (2021, 5, 14, 9752356697, 1241, 1494648619021);
INSERT INTO `views` VALUES (2021, 2, 5, 75749978580, 29006, 1503238553600);
INSERT INTO `views` VALUES (2021, 2, 6, 59853637954, 23696, 1503238553601);
INSERT INTO `views` VALUES (2021, 4, 9, 35925145311, 52037, 1503238553602);
INSERT INTO `views` VALUES (2021, 3, 1, 4316860094, 14366, 1503238553603);
INSERT INTO `views` VALUES (2021, 3, 10, 32506209674, 153, 1503238553604);
INSERT INTO `views` VALUES (2021, 3, 23, 18356988073, 13193, 1503238553605);
INSERT INTO `views` VALUES (2021, 3, 15, 65048154225, 15398, 1503238553606);
INSERT INTO `views` VALUES (2021, 3, 15, 46282078494, 24599, 1503238553607);
INSERT INTO `views` VALUES (2021, 4, 10, 19244223380, 4771, 1503238553608);
INSERT INTO `views` VALUES (2021, 3, 19, 33016736418, 12229, 1503238553609);
INSERT INTO `views` VALUES (2021, 3, 21, 46255624674, 14649, 1503238553610);
INSERT INTO `views` VALUES (2021, 4, 18, 63613123469, 7482, 1503238553611);
INSERT INTO `views` VALUES (2021, 5, 4, 14999812967, 3612, 1503238553612);
INSERT INTO `views` VALUES (2021, 2, 10, 36095213854, 5907, 1503238553613);
INSERT INTO `views` VALUES (2021, 2, 17, 51610957230, 11066, 1503238553614);
INSERT INTO `views` VALUES (2021, 2, 6, 59087155148, 36362, 1511828488192);
INSERT INTO `views` VALUES (2021, 5, 8, 72773682930, 15754, 1511828488193);
INSERT INTO `views` VALUES (2021, 5, 8, 53902013050, 15906, 1511828488194);
INSERT INTO `views` VALUES (2021, 2, 1, 28991051635, 10307, 1511828488195);
INSERT INTO `views` VALUES (2021, 2, 24, 28993454216, 14217, 1511828488196);
INSERT INTO `views` VALUES (2021, 5, 11, 51900429382, 13891, 1511828488197);
INSERT INTO `views` VALUES (2021, 5, 6, 13500651044, 13505, 1511828488198);
INSERT INTO `views` VALUES (2021, 3, 16, 36735725156, 19284, 1511828488199);
INSERT INTO `views` VALUES (2021, 3, 15, 23174791189, 11606, 1511828488200);
INSERT INTO `views` VALUES (2021, 4, 2, 40656236892, 23566, 1511828488201);
INSERT INTO `views` VALUES (2021, 5, 5, 38713171228, 1357, 1511828488202);
INSERT INTO `views` VALUES (2021, 3, 30, 60719586718, 17670, 1511828488203);
INSERT INTO `views` VALUES (2021, 3, 30, 93801519005, 3202, 1511828488204);
INSERT INTO `views` VALUES (2021, 4, 20, 24003744689, 6326, 1511828488205);
INSERT INTO `views` VALUES (2021, 4, 30, 21750276907, 11633, 1511828488206);
INSERT INTO `views` VALUES (2021, 4, 18, 52182745747, 113, 1511828488207);
INSERT INTO `views` VALUES (2021, 4, 18, 23475605455, 6638, 1511828488208);
INSERT INTO `views` VALUES (2021, 2, 21, 98714159558, 21641, 1511828488209);
INSERT INTO `views` VALUES (2021, 2, 14, 17746721823, 7044, 1511828488210);
INSERT INTO `views` VALUES (2021, 3, 17, 33338884410, 28147, 1520418422784);
INSERT INTO `views` VALUES (2021, 3, 17, 49547427076, 21713, 1520418422785);
INSERT INTO `views` VALUES (2021, 3, 11, 3492974174, 2103, 1520418422786);
INSERT INTO `views` VALUES (2021, 1, 16, 48886186280, 11517, 1520418422787);
INSERT INTO `views` VALUES (2021, 1, 29, 32667057265, 16853, 1520418422788);
INSERT INTO `views` VALUES (2021, 3, 10, 25648448945, 7690, 1520418422789);
INSERT INTO `views` VALUES (2021, 3, 8, 51097529039, 8076, 1520418422790);
INSERT INTO `views` VALUES (2021, 4, 29, 29126953590, 11249, 1520418422791);
INSERT INTO `views` VALUES (2021, 3, 2, 43722608326, 9840, 1520418422792);
INSERT INTO `views` VALUES (2021, 3, 19, 37288539206, 9721, 1520418422793);
INSERT INTO `views` VALUES (2021, 4, 24, 77425118254, 17140, 1520418422794);
INSERT INTO `views` VALUES (2021, 3, 14, 56829974792, 18966, 1520418422795);
INSERT INTO `views` VALUES (2021, 3, 21, 108863915782, 19187, 1520418422796);
INSERT INTO `views` VALUES (2021, 5, 4, 20949116753, 11015, 1520418422797);
INSERT INTO `views` VALUES (2021, 3, 13, 45369075588, 8780, 1520418422798);
INSERT INTO `views` VALUES (2021, 2, 2, 28432040753, 88806, 1529008357376);
INSERT INTO `views` VALUES (2021, 3, 18, 16791439916, 28012, 1529008357377);
INSERT INTO `views` VALUES (2021, 4, 25, 56140416444, 40399, 1529008357378);
INSERT INTO `views` VALUES (2021, 2, 3, 656942441, 1130, 1529008357379);
INSERT INTO `views` VALUES (2021, 3, 23, 776659335, 8149, 1529008357380);
INSERT INTO `views` VALUES (2021, 3, 13, 98864065511, 19895, 1529008357381);
INSERT INTO `views` VALUES (2021, 3, 8, 22936313161, 10395, 1529008357382);
INSERT INTO `views` VALUES (2021, 5, 6, 30332275941, 10038, 1529008357383);
INSERT INTO `views` VALUES (2021, 5, 12, 49629106390, 21285, 1529008357384);
INSERT INTO `views` VALUES (2021, 3, 31, 61211508190, 12625, 1529008357385);
INSERT INTO `views` VALUES (2021, 3, 5, 45108923711, 768, 1529008357386);
INSERT INTO `views` VALUES (2021, 2, 17, 41865942003, 5857, 1529008357387);
INSERT INTO `views` VALUES (2021, 1, 30, 51184475663, 18954, 1537598291968);
INSERT INTO `views` VALUES (2021, 3, 24, 40466208696, 8441, 1537598291969);
INSERT INTO `views` VALUES (2021, 5, 1, 24569164987, 6276, 1537598291970);
INSERT INTO `views` VALUES (2021, 3, 11, 13942317480, 11830, 1537598291971);
INSERT INTO `views` VALUES (2021, 4, 1, 43356042873, 11420, 1537598291972);
INSERT INTO `views` VALUES (2021, 5, 6, 27009534260, 15026, 1537598291973);
INSERT INTO `views` VALUES (2021, 3, 25, 103049280204, 21807, 1537598291974);
INSERT INTO `views` VALUES (2021, 3, 25, 63714003762, 20954, 1537598291975);
INSERT INTO `views` VALUES (2021, 3, 3, 60541166310, 16327, 1537598291976);
INSERT INTO `views` VALUES (2021, 2, 19, 41087421150, 20956, 1537598291977);
INSERT INTO `views` VALUES (2021, 3, 31, 19490393146, 3613, 1537598291978);
INSERT INTO `views` VALUES (2021, 4, 7, 36657411833, 8753, 1537598291979);
INSERT INTO `views` VALUES (2021, 3, 21, 38315359941, 17638, 1537598291980);
INSERT INTO `views` VALUES (2021, 4, 30, 3332430268, 2130, 1537598291981);
INSERT INTO `views` VALUES (2021, 4, 3, 33615117302, 11221, 1537598291982);
INSERT INTO `views` VALUES (2021, 2, 12, 7309848663, 9613, 1537598291983);
INSERT INTO `views` VALUES (2021, 2, 12, 13181372322, 4571, 1537598291984);
INSERT INTO `views` VALUES (2021, 2, 2, 34115779375, 25934, 1546188226560);
INSERT INTO `views` VALUES (2021, 4, 8, 38058566748, 31615, 1546188226561);
INSERT INTO `views` VALUES (2021, 1, 15, 67626582349, 19277, 1546188226562);
INSERT INTO `views` VALUES (2021, 1, 19, 68940139237, 9766, 1546188226563);
INSERT INTO `views` VALUES (2021, 3, 1, 14073901936, 12991, 1546188226564);
INSERT INTO `views` VALUES (2021, 5, 11, 15851459297, 5591, 1546188226565);
INSERT INTO `views` VALUES (2021, 4, 28, 12414556235, 7438, 1546188226566);
INSERT INTO `views` VALUES (2021, 3, 21, 49741807048, 8760, 1546188226567);
INSERT INTO `views` VALUES (2021, 5, 3, 31532143749, 13737, 1546188226568);
INSERT INTO `views` VALUES (2021, 2, 10, 44338044975, 4856, 1546188226569);
INSERT INTO `views` VALUES (2021, 3, 13, 36482501367, 12233, 1546188226570);
INSERT INTO `views` VALUES (2021, 2, 11, 28551546334, 4549, 1546188226571);
INSERT INTO `views` VALUES (2021, 1, 21, 14786705359, 29064, 1554778161152);
INSERT INTO `views` VALUES (2021, 1, 31, 69084203164, 24540, 1554778161153);
INSERT INTO `views` VALUES (2021, 1, 15, 34422376652, 15794, 1554778161154);
INSERT INTO `views` VALUES (2021, 5, 7, 61625019794, 29091, 1554778161155);
INSERT INTO `views` VALUES (2021, 2, 20, 93005629275, 12482, 1554778161156);
INSERT INTO `views` VALUES (2021, 4, 1, 90494293066, 17000, 1554778161157);
INSERT INTO `views` VALUES (2021, 1, 17, 46641440800, 318, 1554778161158);
INSERT INTO `views` VALUES (2021, 3, 19, 61205244768, 10647, 1554778161159);
INSERT INTO `views` VALUES (2021, 4, 16, 8769690940, 12390, 1554778161160);
INSERT INTO `views` VALUES (2021, 5, 2, 54237478405, 9549, 1554778161161);
INSERT INTO `views` VALUES (2021, 3, 7, 45783020845, 7437, 1554778161162);
INSERT INTO `views` VALUES (2021, 1, 22, 70406738928, 19700, 1563368095744);
INSERT INTO `views` VALUES (2021, 1, 22, 79504892014, 19970, 1563368095745);
INSERT INTO `views` VALUES (2021, 1, 29, 62018027658, 22611, 1563368095746);
INSERT INTO `views` VALUES (2021, 3, 23, 16805790668, 15807, 1563368095747);
INSERT INTO `views` VALUES (2021, 3, 8, 29625468906, 29419, 1563368095748);
INSERT INTO `views` VALUES (2021, 3, 27, 94620656698, 18031, 1563368095749);
INSERT INTO `views` VALUES (2021, 3, 26, 21393762753, 9802, 1563368095750);
INSERT INTO `views` VALUES (2021, 4, 2, 13312821516, 7971, 1563368095751);
INSERT INTO `views` VALUES (2021, 2, 23, 55021670772, 6649, 1563368095752);
INSERT INTO `views` VALUES (2021, 3, 10, 71049796982, 14411, 1563368095753);
INSERT INTO `views` VALUES (2021, 4, 16, 28151550919, 10262, 1563368095754);
INSERT INTO `views` VALUES (2021, 4, 5, 57027661314, 10431, 1563368095755);
INSERT INTO `views` VALUES (2021, 4, 3, 36374082906, 7081, 1563368095756);
INSERT INTO `views` VALUES (2021, 2, 6, 46766164127, 29087, 1571958030336);
INSERT INTO `views` VALUES (2021, 3, 18, 4893509284, 26851, 1571958030337);
INSERT INTO `views` VALUES (2021, 1, 18, 91630984966, 25930, 1571958030338);
INSERT INTO `views` VALUES (2021, 1, 18, 74463542531, 13326, 1571958030339);
INSERT INTO `views` VALUES (2021, 1, 25, 33934824211, 3757, 1571958030340);
INSERT INTO `views` VALUES (2021, 5, 11, 17507179098, 17551, 1571958030341);
INSERT INTO `views` VALUES (2021, 5, 11, 57827998452, 9401, 1571958030342);
INSERT INTO `views` VALUES (2021, 5, 7, 10230151638, 18219, 1571958030343);
INSERT INTO `views` VALUES (2021, 3, 25, 58520112114, 11324, 1571958030344);
INSERT INTO `views` VALUES (2021, 3, 2, 11812992915, 320, 1571958030345);
INSERT INTO `views` VALUES (2021, 2, 18, 6979565771, 2801, 1571958030346);
INSERT INTO `views` VALUES (2021, 2, 18, 4398760695, 9415, 1571958030347);
INSERT INTO `views` VALUES (2021, 2, 11, 6179777375, 9680, 1571958030348);
INSERT INTO `views` VALUES (2021, 2, 12, 27445746466, 8395, 1571958030349);
INSERT INTO `views` VALUES (2021, 2, 12, 17966440713, 2879, 1571958030350);
INSERT INTO `views` VALUES (2021, 1, 23, 67292934017, 9337, 1580547964928);
INSERT INTO `views` VALUES (2021, 2, 6, 44020747626, 20823, 1580547964929);
INSERT INTO `views` VALUES (2021, 2, 4, 46815006987, 17136, 1580547964930);
INSERT INTO `views` VALUES (2021, 1, 20, 37944282075, 35555, 1580547964931);
INSERT INTO `views` VALUES (2021, 1, 28, 86903755618, 22596, 1580547964932);
INSERT INTO `views` VALUES (2021, 3, 11, 7441329060, 36444, 1580547964933);
INSERT INTO `views` VALUES (2021, 3, 16, 32094828886, 12747, 1580547964934);
INSERT INTO `views` VALUES (2021, 2, 26, 21617657816, 2754, 1580547964935);
INSERT INTO `views` VALUES (2021, 4, 11, 25159102767, 6283, 1580547964936);
INSERT INTO `views` VALUES (2021, 5, 5, 17345776505, 14192, 1580547964937);
INSERT INTO `views` VALUES (2021, 2, 22, 50600299185, 7539, 1580547964938);
INSERT INTO `views` VALUES (2021, 2, 9, 44556634315, 21527, 1580547964939);
INSERT INTO `views` VALUES (2021, 2, 18, 32528105220, 12068, 1580547964940);
INSERT INTO `views` VALUES (2021, 2, 10, 13357583216, 1946, 1580547964941);
INSERT INTO `views` VALUES (2021, 4, 4, 25834485593, 2273, 1580547964942);
INSERT INTO `views` VALUES (2021, 2, 14, 39931025004, 9362, 1580547964943);
INSERT INTO `views` VALUES (2021, 2, 12, 3559885248, 2762, 1580547964944);
INSERT INTO `views` VALUES (2021, 1, 24, 118201208692, 13900, 1589137899520);
INSERT INTO `views` VALUES (2021, 3, 20, 39213330370, 9356, 1589137899521);
INSERT INTO `views` VALUES (2021, 5, 9, 35860713499, 24848, 1589137899522);
INSERT INTO `views` VALUES (2021, 3, 11, 9980164582, 10270, 1589137899523);
INSERT INTO `views` VALUES (2021, 4, 25, 52862077625, 11597, 1589137899524);
INSERT INTO `views` VALUES (2021, 3, 1, 37698355057, 9447, 1589137899525);
INSERT INTO `views` VALUES (2021, 3, 8, 28241139775, 12632, 1589137899526);
INSERT INTO `views` VALUES (2021, 5, 12, 9313225186, 10138, 1589137899527);
INSERT INTO `views` VALUES (2021, 4, 12, 10671719791, 2078, 1589137899528);
INSERT INTO `views` VALUES (2021, 3, 3, 18010115402, 7280, 1589137899529);
INSERT INTO `views` VALUES (2021, 3, 9, 69533218942, 19115, 1589137899530);
INSERT INTO `views` VALUES (2021, 4, 24, 32800308334, 6481, 1589137899531);
INSERT INTO `views` VALUES (2021, 4, 7, 52464384637, 18123, 1589137899532);
INSERT INTO `views` VALUES (2021, 3, 29, 46891319388, 5531, 1589137899533);
INSERT INTO `views` VALUES (2021, 3, 7, 40421030817, 5562, 1589137899534);
INSERT INTO `views` VALUES (2021, 2, 27, 17478441375, 6027, 1589137899535);
INSERT INTO `views` VALUES (2021, 2, 17, 59415397154, 5658, 1589137899536);
INSERT INTO `views` VALUES (2021, 2, 13, 10912045727, 2572, 1589137899537);
INSERT INTO `views` VALUES (2021, 1, 27, 54724667672, 18352, 1597727834112);
INSERT INTO `views` VALUES (2021, 1, 21, 66540959174, 19385, 1597727834113);
INSERT INTO `views` VALUES (2021, 3, 17, 5178322794, 12849, 1597727834114);
INSERT INTO `views` VALUES (2021, 1, 26, 78741567881, 25377, 1597727834115);
INSERT INTO `views` VALUES (2021, 4, 23, 59469464381, 11909, 1597727834116);
INSERT INTO `views` VALUES (2021, 4, 22, 41996038793, 12760, 1597727834117);
INSERT INTO `views` VALUES (2021, 3, 28, 53827822022, 6627, 1597727834118);
INSERT INTO `views` VALUES (2021, 4, 13, 107169051048, 20601, 1597727834119);
INSERT INTO `views` VALUES (2021, 4, 15, 65324444514, 18735, 1597727834120);
INSERT INTO `views` VALUES (2021, 3, 6, 45641166714, 11670, 1597727834121);
INSERT INTO `views` VALUES (2021, 4, 7, 22672445870, 5499, 1597727834122);
INSERT INTO `views` VALUES (2021, 3, 21, 97735925492, 913, 1597727834123);
INSERT INTO `views` VALUES (2021, 2, 9, 80107536727, 6186, 1597727834124);
INSERT INTO `views` VALUES (2021, 3, 13, 49301556683, 674, 1597727834125);
INSERT INTO `views` VALUES (2021, 2, 6, 61331745388, 27554, 1606317768704);
INSERT INTO `views` VALUES (2021, 1, 30, 31625420962, 14571, 1606317768705);
INSERT INTO `views` VALUES (2021, 1, 30, 52585846812, 24714, 1606317768706);
INSERT INTO `views` VALUES (2021, 1, 21, 58336538168, 18246, 1606317768707);
INSERT INTO `views` VALUES (2021, 1, 20, 29796428187, 24989, 1606317768708);
INSERT INTO `views` VALUES (2021, 1, 20, 37726564712, 32597, 1606317768709);
INSERT INTO `views` VALUES (2021, 3, 12, 58557749206, 23309, 1606317768710);
INSERT INTO `views` VALUES (2021, 4, 23, 43178823661, 7721, 1606317768711);
INSERT INTO `views` VALUES (2021, 4, 19, 67347520128, 14630, 1606317768712);
INSERT INTO `views` VALUES (2021, 3, 8, 17162332960, 14140, 1606317768713);
INSERT INTO `views` VALUES (2021, 3, 28, 17753076918, 6144, 1606317768714);
INSERT INTO `views` VALUES (2021, 3, 31, 48388612673, 26427, 1606317768715);
INSERT INTO `views` VALUES (2021, 2, 23, 26603096224, 9381, 1606317768716);
INSERT INTO `views` VALUES (2021, 5, 4, 8462080245, 2129, 1606317768717);
INSERT INTO `views` VALUES (2021, 4, 9, 75590703609, 19637, 1614907703296);
INSERT INTO `views` VALUES (2021, 1, 28, 66650830718, 22070, 1614907703297);
INSERT INTO `views` VALUES (2021, 3, 20, 53501977424, 15794, 1614907703298);
INSERT INTO `views` VALUES (2021, 1, 16, 48863905983, 12864, 1614907703299);
INSERT INTO `views` VALUES (2021, 1, 29, 21630638846, 16403, 1614907703300);
INSERT INTO `views` VALUES (2021, 2, 25, 23225621379, 922, 1614907703301);
INSERT INTO `views` VALUES (2021, 3, 29, 11256751604, 8147, 1614907703302);
INSERT INTO `views` VALUES (2021, 4, 2, 57400916556, 9754, 1614907703303);
INSERT INTO `views` VALUES (2021, 3, 19, 59143567547, 1734, 1614907703304);
INSERT INTO `views` VALUES (2021, 5, 13, 14931053367, 5784, 1614907703305);
INSERT INTO `views` VALUES (2021, 2, 17, 49418764637, 3033, 1614907703306);
INSERT INTO `views` VALUES (2021, 2, 14, 889390795, 1760, 1614907703307);
INSERT INTO `views` VALUES (2021, 5, 8, 29323000336, 8102, 1623497637888);
INSERT INTO `views` VALUES (2021, 4, 8, 11970815407, 1954, 1623497637889);
INSERT INTO `views` VALUES (2021, 2, 1, 23434495596, 16884, 1623497637890);
INSERT INTO `views` VALUES (2021, 1, 17, 88352129001, 12699, 1623497637891);
INSERT INTO `views` VALUES (2021, 2, 7, 66564238769, 17506, 1623497637892);
INSERT INTO `views` VALUES (2021, 3, 10, 24778170846, 16733, 1623497637893);
INSERT INTO `views` VALUES (2021, 3, 26, 72836813453, 31295, 1623497637894);
INSERT INTO `views` VALUES (2021, 3, 3, 41355322436, 16996, 1623497637895);
INSERT INTO `views` VALUES (2021, 3, 22, 26824235249, 3947, 1623497637896);
INSERT INTO `views` VALUES (2021, 4, 5, 51756988323, 11764, 1623497637897);
INSERT INTO `views` VALUES (2021, 2, 15, 18321035082, 8361, 1623497637898);
INSERT INTO `views` VALUES (2021, 4, 26, 42428599867, 16725, 1632087572480);
INSERT INTO `views` VALUES (2021, 3, 11, 12356205315, 14756, 1632087572481);
INSERT INTO `views` VALUES (2021, 4, 25, 35924067832, 7231, 1632087572482);
INSERT INTO `views` VALUES (2021, 4, 25, 53958435322, 19613, 1632087572483);
INSERT INTO `views` VALUES (2021, 3, 12, 40524325999, 4545, 1632087572484);
INSERT INTO `views` VALUES (2021, 2, 20, 37423037827, 7257, 1632087572485);
INSERT INTO `views` VALUES (2021, 4, 1, 22651537579, 21357, 1632087572486);
INSERT INTO `views` VALUES (2021, 2, 25, 26116481633, 25748, 1632087572487);
INSERT INTO `views` VALUES (2021, 1, 17, 82953320739, 914, 1632087572488);
INSERT INTO `views` VALUES (2021, 1, 17, 86171818909, 10232, 1632087572489);
INSERT INTO `views` VALUES (2021, 4, 2, 47369278831, 13845, 1632087572490);
INSERT INTO `views` VALUES (2021, 3, 30, 30772733803, 15308, 1632087572491);
INSERT INTO `views` VALUES (2021, 4, 10, 51492550995, 24872, 1632087572492);
INSERT INTO `views` VALUES (2021, 4, 27, 65460532439, 5782, 1632087572493);
INSERT INTO `views` VALUES (2021, 4, 27, 12559949686, 3369, 1632087572494);
INSERT INTO `views` VALUES (2021, 3, 13, 53508866136, 4222, 1632087572495);
INSERT INTO `views` VALUES (2021, 2, 21, 81179469657, 4267, 1632087572496);
INSERT INTO `views` VALUES (2021, 1, 27, 76271763389, 43972, 1640677507072);
INSERT INTO `views` VALUES (2021, 1, 28, 124899929438, 18807, 1640677507073);
INSERT INTO `views` VALUES (2021, 1, 28, 96562113875, 20314, 1640677507074);
INSERT INTO `views` VALUES (2021, 4, 27, 80127143231, 13510, 1640677507075);
INSERT INTO `views` VALUES (2021, 2, 7, 29745278629, 6291, 1640677507076);
INSERT INTO `views` VALUES (2021, 5, 7, 93843996691, 20356, 1640677507077);
INSERT INTO `views` VALUES (2021, 4, 11, 50552595190, 2277, 1640677507078);
INSERT INTO `views` VALUES (2021, 4, 22, 39400200537, 8090, 1640677507079);
INSERT INTO `views` VALUES (2021, 2, 18, 471, 7, 1640677507080);
INSERT INTO `views` VALUES (2021, 2, 28, 31684618064, 8407, 1640677507081);
INSERT INTO `views` VALUES (2021, 4, 3, 78569637512, 6057, 1640677507082);
INSERT INTO `views` VALUES (2021, 2, 14, 8480697378, 7817, 1640677507083);
INSERT INTO `views` VALUES (2021, 2, 14, 19268948837, 4888, 1640677507084);
INSERT INTO `views` VALUES (2021, 1, 27, 76861960293, 21286, 1649267441664);
INSERT INTO `views` VALUES (2021, 1, 31, 48727948926, 30979, 1649267441665);
INSERT INTO `views` VALUES (2021, 3, 17, 17162845050, 5570, 1649267441666);
INSERT INTO `views` VALUES (2021, 4, 8, 40794307095, 76895, 1649267441667);
INSERT INTO `views` VALUES (2021, 2, 24, 51130178261, 14854, 1649267441668);
INSERT INTO `views` VALUES (2021, 1, 14, 26068606275, 6536, 1649267441669);
INSERT INTO `views` VALUES (2021, 4, 6, 41174665476, 4502, 1649267441670);
INSERT INTO `views` VALUES (2021, 4, 2, 65582791593, 8634, 1649267441671);
INSERT INTO `views` VALUES (2021, 2, 26, 41563574379, 4061, 1649267441672);
INSERT INTO `views` VALUES (2021, 2, 26, 54459307509, 16036, 1649267441673);
INSERT INTO `views` VALUES (2021, 3, 30, 48464269106, 25357, 1649267441674);
INSERT INTO `views` VALUES (2021, 5, 14, 97505224769, 5377, 1649267441675);
INSERT INTO `views` VALUES (2021, 2, 10, 22581574453, 5520, 1649267441676);
INSERT INTO `views` VALUES (2021, 5, 13, 57896157386, 12640, 1649267441677);
INSERT INTO `views` VALUES (2021, 2, 11, 55027607423, 9561, 1649267441678);
INSERT INTO `views` VALUES (2021, 3, 13, 57535730485, 9466, 1649267441679);
INSERT INTO `views` VALUES (2021, 2, 27, 60877344224, 4510, 1649267441680);
INSERT INTO `views` VALUES (2021, 2, 16, 42231315422, 14082, 1649267441681);
INSERT INTO `views` VALUES (2021, 2, 13, 21202737675, 2779, 1649267441682);
INSERT INTO `views` VALUES (2021, 4, 26, 28389321803, 13834, 1657857376256);
INSERT INTO `views` VALUES (2021, 2, 3, 28221890859, 14408, 1657857376257);
INSERT INTO `views` VALUES (2021, 3, 23, 40189465058, 18882, 1657857376258);
INSERT INTO `views` VALUES (2021, 4, 1, 49420143787, 12576, 1657857376259);
INSERT INTO `views` VALUES (2021, 2, 25, 18016249145, 8368, 1657857376260);
INSERT INTO `views` VALUES (2021, 4, 6, 49738448459, 17813, 1657857376261);
INSERT INTO `views` VALUES (2021, 4, 29, 47238787680, 19147, 1657857376262);
INSERT INTO `views` VALUES (2021, 3, 30, 85036987522, 11709, 1657857376263);
INSERT INTO `views` VALUES (2021, 4, 17, 3864438756, 9, 1657857376264);
INSERT INTO `views` VALUES (2021, 2, 9, 63684001652, 8078, 1657857376265);
INSERT INTO `views` VALUES (2021, 2, 9, 55979968629, 13218, 1657857376266);
INSERT INTO `views` VALUES (2021, 5, 14, 7344634685, 4812, 1657857376267);
INSERT INTO `views` VALUES (2021, 2, 6, 28265639939, 22858, 1666447310848);
INSERT INTO `views` VALUES (2021, 1, 27, 44222825723, 38659, 1666447310849);
INSERT INTO `views` VALUES (2021, 2, 4, 37999368235, 21907, 1666447310850);
INSERT INTO `views` VALUES (2021, 1, 31, 27139538917, 10599, 1666447310851);
INSERT INTO `views` VALUES (2021, 3, 1, 33068683767, 24437, 1666447310852);
INSERT INTO `views` VALUES (2021, 3, 15, 107199362477, 14861, 1666447310853);
INSERT INTO `views` VALUES (2021, 3, 2, 23730084882, 9277, 1666447310854);
INSERT INTO `views` VALUES (2021, 2, 26, 61451086988, 19234, 1666447310855);
INSERT INTO `views` VALUES (2021, 2, 23, 56078369679, 15581, 1666447310856);
INSERT INTO `views` VALUES (2021, 4, 24, 55014800438, 21546, 1666447310857);
INSERT INTO `views` VALUES (2021, 4, 30, 6479361802, 3569, 1666447310858);
INSERT INTO `views` VALUES (2021, 3, 29, 14529795353, 6122, 1666447310859);
INSERT INTO `views` VALUES (2021, 5, 3, 23775188014, 8256, 1666447310860);
INSERT INTO `views` VALUES (2021, 2, 28, 23200562424, 129, 1666447310861);
INSERT INTO `views` VALUES (2021, 2, 21, 38815167870, 3920, 1666447310862);
INSERT INTO `views` VALUES (2021, 2, 12, 12131224955, 6168, 1666447310863);
INSERT INTO `views` VALUES (2021, 2, 2, 48722869591, 13544, 1675037245440);
INSERT INTO `views` VALUES (2021, 2, 6, 94418935304, 22935, 1675037245441);
INSERT INTO `views` VALUES (2021, 2, 4, 51638154386, 25695, 1675037245442);
INSERT INTO `views` VALUES (2021, 1, 22, 57795205168, 34195, 1675037245443);
INSERT INTO `views` VALUES (2021, 3, 17, 35158389345, 6529, 1675037245444);
INSERT INTO `views` VALUES (2021, 2, 1, 16380229360, 6371, 1675037245445);
INSERT INTO `views` VALUES (2021, 1, 26, 89979929161, 19045, 1675037245446);
INSERT INTO `views` VALUES (2021, 4, 22, 875567005, 1990, 1675037245447);
INSERT INTO `views` VALUES (2021, 1, 16, 38319255111, 10772, 1675037245448);
INSERT INTO `views` VALUES (2021, 1, 19, 52022636654, 19929, 1675037245449);
INSERT INTO `views` VALUES (2021, 3, 1, 27411145255, 15610, 1675037245450);
INSERT INTO `views` VALUES (2021, 2, 7, 45864775142, 17430, 1675037245451);
INSERT INTO `views` VALUES (2021, 2, 20, 20312563802, 2827, 1675037245452);
INSERT INTO `views` VALUES (2021, 3, 27, 50704795752, 11168, 1675037245453);
INSERT INTO `views` VALUES (2021, 4, 29, 22259972833, 10007, 1675037245454);
INSERT INTO `views` VALUES (2021, 3, 26, 22133441092, 14338, 1675037245455);
INSERT INTO `views` VALUES (2021, 3, 30, 21958237667, 9827, 1675037245456);
INSERT INTO `views` VALUES (2021, 2, 21, 44481913037, 10328, 1675037245457);
INSERT INTO `views` VALUES (2021, 3, 14, 47238074676, 7879, 1675037245458);
INSERT INTO `views` VALUES (2021, 3, 6, 29923978803, 1501, 1675037245459);
INSERT INTO `views` VALUES (2021, 4, 21, 48758521006, 3416, 1675037245460);
INSERT INTO `views` VALUES (2021, 2, 9, 15539525235, 962, 1675037245461);
INSERT INTO `views` VALUES (2021, 5, 2, 25865920887, 6271, 1675037245462);
INSERT INTO `views` VALUES (2021, 3, 13, 69577145178, 15270, 1675037245463);
INSERT INTO `views` VALUES (2021, 3, 7, 68123091470, 6724, 1675037245464);
INSERT INTO `views` VALUES (2021, 1, 23, 52275278609, 5954, 1683627180032);
INSERT INTO `views` VALUES (2021, 2, 5, 83042488653, 25327, 1683627180033);
INSERT INTO `views` VALUES (2021, 5, 8, 56692487872, 12447, 1683627180034);
INSERT INTO `views` VALUES (2021, 3, 20, 53967871067, 10887, 1683627180035);
INSERT INTO `views` VALUES (2021, 4, 26, 59748492224, 49013, 1683627180036);
INSERT INTO `views` VALUES (2021, 4, 23, 49609744118, 38948, 1683627180037);
INSERT INTO `views` VALUES (2021, 1, 16, 62835435963, 19520, 1683627180038);
INSERT INTO `views` VALUES (2021, 2, 7, 32261433934, 8859, 1683627180039);
INSERT INTO `views` VALUES (2021, 3, 4, 19435709765, 19898, 1683627180040);
INSERT INTO `views` VALUES (2021, 2, 4, 19624909910, 27391, 1683627180041);
INSERT INTO `views` VALUES (2021, 4, 1, 23994004910, 9939, 1683627180042);
INSERT INTO `views` VALUES (2021, 5, 6, 12197073909, 4321, 1683627180043);
INSERT INTO `views` VALUES (2021, 3, 2, 38875892521, 10352, 1683627180044);
INSERT INTO `views` VALUES (2021, 3, 3, 59389581327, 2402, 1683627180045);
INSERT INTO `views` VALUES (2021, 2, 19, 59465245642, 10525, 1683627180046);
INSERT INTO `views` VALUES (2021, 4, 29, 13998941112, 10304, 1683627180047);
INSERT INTO `views` VALUES (2021, 4, 12, 18030115985, 10596, 1683627180048);
INSERT INTO `views` VALUES (2021, 3, 30, 33246357360, 3223, 1683627180049);
INSERT INTO `views` VALUES (2021, 3, 29, 47591392293, 7089, 1683627180050);
INSERT INTO `views` VALUES (2021, 2, 12, 3081704724, 7364, 1683627180051);
INSERT INTO `views` VALUES (2021, 1, 27, 38853840656, 31796, 1692217114624);
INSERT INTO `views` VALUES (2021, 5, 8, 36152902956, 42609, 1692217114625);
INSERT INTO `views` VALUES (2021, 5, 1, 35170401444, 13020, 1692217114626);
INSERT INTO `views` VALUES (2021, 1, 31, 14984681471, 24342, 1692217114627);
INSERT INTO `views` VALUES (2021, 5, 9, 22969579186, 15898, 1692217114628);
INSERT INTO `views` VALUES (2021, 4, 24, 30462156691, 3028, 1692217114629);
INSERT INTO `views` VALUES (2021, 1, 16, 87575337145, 14159, 1692217114630);
INSERT INTO `views` VALUES (2021, 3, 23, 63007391854, 21341, 1692217114631);
INSERT INTO `views` VALUES (2021, 5, 12, 17981951578, 5337, 1692217114632);
INSERT INTO `views` VALUES (2021, 4, 24, 30839303851, 28104, 1692217114633);
INSERT INTO `views` VALUES (2021, 4, 20, 46066721880, 8197, 1692217114634);
INSERT INTO `views` VALUES (2021, 2, 18, 42975218282, 7662, 1692217114635);
INSERT INTO `views` VALUES (2021, 2, 28, 34752948995, 5142, 1692217114636);
INSERT INTO `views` VALUES (2021, 2, 21, 61572817225, 2008, 1692217114637);
INSERT INTO `views` VALUES (2021, 3, 17, 20298567283, 5818, 1700807049216);
INSERT INTO `views` VALUES (2021, 3, 11, 31945414032, 9224, 1700807049217);
INSERT INTO `views` VALUES (2021, 3, 4, 48733235073, 20391, 1700807049218);
INSERT INTO `views` VALUES (2021, 3, 4, 44364799889, 11582, 1700807049219);
INSERT INTO `views` VALUES (2021, 3, 12, 41736509786, 8339, 1700807049220);
INSERT INTO `views` VALUES (2021, 5, 6, 40863781926, 7990, 1700807049221);
INSERT INTO `views` VALUES (2021, 1, 17, 31023251158, 440, 1700807049222);
INSERT INTO `views` VALUES (2021, 3, 16, 30030662327, 26726, 1700807049223);
INSERT INTO `views` VALUES (2021, 4, 13, 34669252991, 332, 1700807049224);
INSERT INTO `views` VALUES (2021, 4, 11, 36727720350, 3639, 1700807049225);
INSERT INTO `views` VALUES (2021, 3, 31, 47247335406, 10648, 1700807049226);
INSERT INTO `views` VALUES (2021, 5, 5, 40727934404, 13469, 1700807049227);
INSERT INTO `views` VALUES (2021, 3, 30, 35808806931, 10832, 1700807049228);
INSERT INTO `views` VALUES (2021, 3, 9, 48088207302, 1691, 1700807049229);
INSERT INTO `views` VALUES (2021, 4, 10, 64028401050, 4954, 1700807049230);
INSERT INTO `views` VALUES (2021, 4, 24, 59416952505, 5135, 1700807049231);
INSERT INTO `views` VALUES (2021, 4, 27, 72181194874, 4416, 1700807049232);
INSERT INTO `views` VALUES (2021, 4, 3, 58376699265, 2670, 1700807049233);
INSERT INTO `views` VALUES (2021, 2, 27, 25548317052, 1928, 1700807049234);
INSERT INTO `views` VALUES (2021, 2, 14, 37535565572, 3846, 1700807049235);
INSERT INTO `views` VALUES (2021, 2, 14, 18493321928, 3641, 1700807049236);
INSERT INTO `views` VALUES (2021, 2, 3, 85898687724, 13855, 1709396983808);
INSERT INTO `views` VALUES (2021, 2, 2, 56364102343, 35631, 1709396983809);
INSERT INTO `views` VALUES (2021, 1, 26, 45608975499, 1749, 1709396983810);
INSERT INTO `views` VALUES (2021, 3, 20, 8319120051, 62492, 1709396983811);
INSERT INTO `views` VALUES (2021, 1, 16, 88798882876, 17979, 1709396983812);
INSERT INTO `views` VALUES (2021, 3, 4, 97463031501, 14843, 1709396983813);
INSERT INTO `views` VALUES (2021, 3, 28, 6672936193, 8141, 1709396983814);
INSERT INTO `views` VALUES (2021, 2, 23, 58312600578, 8374, 1709396983815);
INSERT INTO `views` VALUES (2021, 2, 23, 68250051436, 15473, 1709396983816);
INSERT INTO `views` VALUES (2021, 3, 3, 26196448203, 2327, 1709396983817);
INSERT INTO `views` VALUES (2021, 4, 10, 63944432538, 2596, 1709396983818);
INSERT INTO `views` VALUES (2021, 4, 24, 26606050566, 12937, 1709396983819);
INSERT INTO `views` VALUES (2021, 4, 17, 76228166669, 18290, 1709396983820);
INSERT INTO `views` VALUES (2021, 3, 22, 44070181855, 12140, 1709396983821);
INSERT INTO `views` VALUES (2021, 5, 13, 36179178762, 6047, 1709396983822);
INSERT INTO `views` VALUES (2021, 4, 20, 29122043201, 4997, 1709396983823);
INSERT INTO `views` VALUES (2021, 4, 5, 26310314898, 12025, 1709396983824);
INSERT INTO `views` VALUES (2021, 2, 18, 28637535434, 2824, 1709396983825);
INSERT INTO `views` VALUES (2021, 2, 27, 21284748052, 5856, 1709396983826);
INSERT INTO `views` VALUES (2021, 2, 13, 29640242090, 855, 1709396983827);
INSERT INTO `views` VALUES (2021, 2, 12, 14782388184, 3674, 1709396983828);

-- ----------------------------
-- Records of asname
-- ----------------------------
INSERT INTO `asname` VALUES ('Lanlian International Holding Group Limited', 12, 17179869184);
INSERT INTO `asname` VALUES ('Joe\'s Datacenter LLC', 2, 17179869185);
INSERT INTO `asname` VALUES ('CHINATELECOM Guangdong Province Shaoguan 5G Network', 35231, 25769803776);
INSERT INTO `asname` VALUES ('Elsevier Ltd', 3, 25769803777);
INSERT INTO `asname` VALUES ('GoDaddy.com LLC', 13, 34359738368);
INSERT INTO `asname` VALUES ('DDoSing Network', 185, 34359738369);
INSERT INTO `asname` VALUES ('Bezeq International-Ltd', 3, 42949672960);
INSERT INTO `asname` VALUES ('Wicam Corporation Ltd.', 2, 42949672961);
INSERT INTO `asname` VALUES ('euNetworks GmbH', 2, 51539607552);
INSERT INTO `asname` VALUES ('China Mobile Communicaitons Corporation', 340300, 60129542144);
INSERT INTO `asname` VALUES ('Beijing Autohome Imformation Technology Co. Ltd', 25063, 60129542145);
INSERT INTO `asname` VALUES ('LeaseWeb Asia Pacific Pte. Ltd.', 5445, 60129542146);
INSERT INTO `asname` VALUES ('Guangdong', 39584, 60129542147);
INSERT INTO `asname` VALUES ('Sony Network Communications Inc.', 2, 60129542148);
INSERT INTO `asname` VALUES ('ASN for TIANJIN Provincial Net of CT', 14256, 68719476736);
INSERT INTO `asname` VALUES ('SAWASNET Beijing Sawas Technology Co.LTD.', 1209, 68719476737);
INSERT INTO `asname` VALUES ('CHINATELECOM Guangdong province Dongguan 5G network', 4032, 77309411328);
INSERT INTO `asname` VALUES ('Hongkong Kwaifong Information Service Limited', 3, 77309411329);
INSERT INTO `asname` VALUES ('Servicio Y Equipo en Telefonia Internet Y TV S.A. de C.V.', 32, 85899345920);
INSERT INTO `asname` VALUES ('CNServers LLC', 790, 94489280512);
INSERT INTO `asname` VALUES ('Qwant SAS', 3, 103079215104);
INSERT INTO `asname` VALUES ('Tata Communications (America) Inc', 20, 103079215105);
INSERT INTO `asname` VALUES ('Maxnet Telecom Ltd', 7, 103079215106);
INSERT INTO `asname` VALUES ('Tencent Building Kejizhongyi Avenue', 4524, 111669149696);
INSERT INTO `asname` VALUES ('ITirana Sh.p.k.', 44, 111669149697);
INSERT INTO `asname` VALUES ('ABCDE Group Company Limited', 18, 128849018880);
INSERT INTO `asname` VALUES ('Beijing Capital Public Information Platform', 2, 137438953472);
INSERT INTO `asname` VALUES ('CHINANET Guangdong province Dongguan MAN network', 174635, 146028888064);
INSERT INTO `asname` VALUES ('Sprious LLC', 4, 146028888065);
INSERT INTO `asname` VALUES ('Surfshark Ltd.', 3, 154618822656);
INSERT INTO `asname` VALUES ('Luoyang Henan Province P.R.China.', 1, 154618822657);
INSERT INTO `asname` VALUES ('National Internet Backbone', 3, 163208757248);
INSERT INTO `asname` VALUES ('QuickPacket LLC', 3, 163208757249);
INSERT INTO `asname` VALUES ('Register S.p.A.', 2, 171798691840);
INSERT INTO `asname` VALUES ('Honeywell International Inc.', 39691, 180388626432);
INSERT INTO `asname` VALUES ('Namecheap Inc.', 85, 180388626433);
INSERT INTO `asname` VALUES ('Ningxia West Cloud Data Technology Co.Ltd.', 155, 180388626434);
INSERT INTO `asname` VALUES ('Huawei Clouds', 26037, 188978561024);
INSERT INTO `asname` VALUES ('Stacks Inc', 169, 188978561025);
INSERT INTO `asname` VALUES ('Free SAS', 4806, 197568495616);
INSERT INTO `asname` VALUES ('Qinghai Telecom', 255, 197568495617);
INSERT INTO `asname` VALUES ('Avago Technologies U.S. Inc.', 505, 197568495618);
INSERT INTO `asname` VALUES ('Efly Network Limited', 354, 197568495619);
INSERT INTO `asname` VALUES ('Gujarat Telelink Pvt Ltd', 8, 197568495620);
INSERT INTO `asname` VALUES ('APNIC', 11916225, 206158430208);
INSERT INTO `asname` VALUES ('Jinx Co. Limited', 20189, 206158430209);
INSERT INTO `asname` VALUES ('Guangzhou Landong Information Technology Co. Ltd', 4439, 206158430210);
INSERT INTO `asname` VALUES ('Fit Telecom Eireli', 3, 206158430211);
INSERT INTO `asname` VALUES ('China Networks Inter-Exchange', 871329, 214748364800);
INSERT INTO `asname` VALUES ('Tellcom Iletisim Hizmetleri A.S.', 3, 214748364801);
INSERT INTO `asname` VALUES ('JINHUA ZHEJIANG Province P.R.China.', 6125, 223338299392);
INSERT INTO `asname` VALUES ('Republican Unitary Telecommunication Enterprise Beltelecom', 736, 231928233984);
INSERT INTO `asname` VALUES ('Verein zur Foerderung eines Deutschen Forschungsnetzes e.V.', 6, 231928233985);
INSERT INTO `asname` VALUES ('PCCW Global Inc.', 156221, 240518168576);
INSERT INTO `asname` VALUES ('Singtel Fibre Broadband', 1, 249108103168);
INSERT INTO `asname` VALUES ('Taiwan Mobile Co. Ltd.', 13, 249108103169);
INSERT INTO `asname` VALUES ('Unspecified Beijing Shenzhou Greatwall Communication', 5, 257698037760);
INSERT INTO `asname` VALUES ('CU', 7684069, 266287972352);
INSERT INTO `asname` VALUES ('HGC Global Communications Limited', 19, 266287972353);
INSERT INTO `asname` VALUES ('Digital Energy Technologies Ltd.', 5, 266287972354);
INSERT INTO `asname` VALUES ('Computer Network Information Center', 62847, 274877906944);
INSERT INTO `asname` VALUES ('Cogent Communications', 570, 274877906945);
INSERT INTO `asname` VALUES ('Comcast Cable Communications LLC', 22, 283467841536);
INSERT INTO `asname` VALUES ('CT', 4465341, 292057776128);
INSERT INTO `asname` VALUES ('M247 Ltd', 9347, 292057776129);
INSERT INTO `asname` VALUES ('www.plexus.net', 2, 300647710720);
INSERT INTO `asname` VALUES ('TOT Public Company Limited', 2, 300647710721);
INSERT INTO `asname` VALUES ('Linode LLC', 5636, 309237645312);
INSERT INTO `asname` VALUES ('CloudFlare Inc', 10, 309237645313);
INSERT INTO `asname` VALUES ('Sun Network (Hong Kong) Limited - HongKong', 2, 326417514496);
INSERT INTO `asname` VALUES ('Quanzhou', 1, 326417514497);
INSERT INTO `asname` VALUES ('Seans Media Pvt Ltd', 7, 335007449088);
INSERT INTO `asname` VALUES ('China Unicom Guangzhou network', 172153, 343597383680);
INSERT INTO `asname` VALUES ('PJSC Rostelecom', 11, 343597383681);
INSERT INTO `asname` VALUES ('Atria Convergence Technologies Pvt. Ltd. Broadband Internet Service Provider INDIA', 3, 343597383682);
INSERT INTO `asname` VALUES ('China Unicom Guangdong IP Network', 532, 352187318272);
INSERT INTO `asname` VALUES ('Tianjin Mobile Communication Company Limited', 4018, 352187318273);
INSERT INTO `asname` VALUES ('DXTL Tseung Kwan O Service', 1, 352187318274);
INSERT INTO `asname` VALUES ('CHINANET Nanjing Jishan IDC network', 2, 360777252864);
INSERT INTO `asname` VALUES ('TE Data', 3197, 369367187456);
INSERT INTO `asname` VALUES ('NeroCloud LTD', 6, 369367187457);
INSERT INTO `asname` VALUES ('Netsec', 891, 369367187458);
INSERT INTO `asname` VALUES ('Huawei Technologies(UK)Co.Ltd', 1, 369367187459);
INSERT INTO `asname` VALUES ('Zenlayer Inc', 35, 377957122048);
INSERT INTO `asname` VALUES ('LLC Routnet', 8, 403726925824);
INSERT INTO `asname` VALUES ('QuadraNet Enterprises LLC', 469, 403726925825);
INSERT INTO `asname` VALUES ('InMotion Hosting Inc.', 6, 403726925826);
INSERT INTO `asname` VALUES ('UUNET Hong Kong Ltd.', 7, 412316860416);
INSERT INTO `asname` VALUES ('NPF SOFTVIDEO Ltd.', 1, 412316860417);
INSERT INTO `asname` VALUES ('SonderCloud Limited', 6, 412316860418);
INSERT INTO `asname` VALUES ('Hong Kong Telecom Global Data Centre', 10, 420906795008);
INSERT INTO `asname` VALUES ('PSINet Inc.', 2, 420906795009);
INSERT INTO `asname` VALUES ('CHINATELECOM Guangdong province Jieyang 5G network', 1585, 420906795010);
INSERT INTO `asname` VALUES ('Apple Inc.', 123, 429496729600);
INSERT INTO `asname` VALUES ('Qingdao Shandong Province P.R.China.', 2, 438086664192);
INSERT INTO `asname` VALUES ('CHINATELECOM JiangSu YangZhou IDC networkdescr: YangZhouJiangsu Province P.R.China.', 256, 446676598784);
INSERT INTO `asname` VALUES ('CHINATELECOM Guangdong province Chaozhou 5G network', 1522, 446676598785);
INSERT INTO `asname` VALUES ('Orange Espagne SA', 2, 446676598786);
INSERT INTO `asname` VALUES ('UCloud Information Technology (HK) Limited', 2463, 455266533376);
INSERT INTO `asname` VALUES ('LLC Digital Network', 4, 455266533377);
INSERT INTO `asname` VALUES ('Shanghai Mobile Communications Co. Ltd.', 500178, 463856467968);
INSERT INTO `asname` VALUES ('Optage Optage Inc.', 6, 463856467969);
INSERT INTO `asname` VALUES ('Nanjing Jiangsu Province P.R.China.', 6424, 481036337152);
INSERT INTO `asname` VALUES ('Eons Data Communications Limited', 46, 481036337153);
INSERT INTO `asname` VALUES ('ChinaTelecom Guangd', 65579, 481036337154);
INSERT INTO `asname` VALUES ('Synaptics Incorporated', 170723, 481036337155);
INSERT INTO `asname` VALUES ('M2012LIMITED-AS 2012 Limited / Netfront', 3, 481036337156);
INSERT INTO `asname` VALUES ('HKBN Enterprise Solutions HK Limited', 3, 489626271744);
INSERT INTO `asname` VALUES ('ChinaTelecom Guangdong province Shantou 5G network', 16, 506806140928);
INSERT INTO `asname` VALUES ('CUSN', 1423359, 515396075520);
INSERT INTO `asname` VALUES ('Yandex LLC', 133, 523986010112);
INSERT INTO `asname` VALUES ('OVH SAS', 5790, 541165879296);
INSERT INTO `asname` VALUES ('AS for Anlai', 3, 541165879297);
INSERT INTO `asname` VALUES ('CTGNET CTGNet', 33, 541165879298);
INSERT INTO `asname` VALUES ('Intel China Ltd', 150, 541165879299);
INSERT INTO `asname` VALUES ('Henan Mobile Communications Co. Ltd', 75673, 566935683072);
INSERT INTO `asname` VALUES ('China Unicom IP Network', 915928, 566935683073);
INSERT INTO `asname` VALUES ('Shandong Mobile Communication Company Limited', 72255, 592705486848);
INSERT INTO `asname` VALUES ('Softether Telecommunication Research Institute LLC', 5, 592705486849);
INSERT INTO `asname` VALUES ('Macquarie Telecom', 686, 592705486850);
INSERT INTO `asname` VALUES ('CRNET_BJ_IDC-CNNIC-AP China Tietong Telecommunication Corporation', 82557, 618475290624);
INSERT INTO `asname` VALUES ('Cypress Semiconductor', 13335, 618475290625);
INSERT INTO `asname` VALUES ('Beihai', 26341, 627065225216);
INSERT INTO `asname` VALUES ('Hetzner Online GmbH', 49, 627065225217);
INSERT INTO `asname` VALUES ('Skynet Ltd.', 4, 635655159808);
INSERT INTO `asname` VALUES ('NXP Semiconductors Netherlands B.V.', 2, 635655159809);
INSERT INTO `asname` VALUES ('Kbro Co. Ltd.', 3, 644245094400);
INSERT INTO `asname` VALUES ('Megapath Corporation', 9421, 652835028992);
INSERT INTO `asname` VALUES ('Evolutio Cloud Enabler S.A. Unipersonal', 2, 652835028993);
INSERT INTO `asname` VALUES ('CMCC', 1344556, 661424963584);
INSERT INTO `asname` VALUES ('Globe Telecoms', 1, 661424963585);
INSERT INTO `asname` VALUES ('Emirates Telecommunications Corporation', 29, 661424963586);
INSERT INTO `asname` VALUES ('Biterika Group LLC', 1, 661424963587);
INSERT INTO `asname` VALUES ('WebNX Inc.', 35, 670014898176);
INSERT INTO `asname` VALUES ('Speed Online', 95, 670014898177);
INSERT INTO `asname` VALUES ('CERNET2 IX at Shanghai Jiaotong University', 219, 687194767360);
INSERT INTO `asname` VALUES ('IDC China Telecommunications Corporation', 110160, 695784701952);
INSERT INTO `asname` VALUES ('Fiber Logic Inc.', 36, 695784701953);
INSERT INTO `asname` VALUES ('Amazon.com Inc.', 21982, 704374636544);
INSERT INTO `asname` VALUES ('SFR SA', 4, 704374636545);
INSERT INTO `asname` VALUES ('HEZHONG Beijing wisdom network technology Co. Ltd. polymeri', 5374, 712964571136);
INSERT INTO `asname` VALUES ('The Corporation for Financing & Promoting Technology', 1, 712964571137);
INSERT INTO `asname` VALUES ('Volkswagen (China) Investment Co. Ltd', 2, 712964571138);
INSERT INTO `asname` VALUES ('Vizag Broadcasting Company Pvt. Ltd', 13, 721554505728);
INSERT INTO `asname` VALUES ('Level 3 Parent LLC', 2, 730144440320);
INSERT INTO `asname` VALUES ('Host Europe GmbH', 2, 738734374912);
INSERT INTO `asname` VALUES ('JGNV6 National Institute of Information and Communications Technology', 4, 738734374913);
INSERT INTO `asname` VALUES ('Aruba S.p.A.', 6, 747324309504);
INSERT INTO `asname` VALUES ('Shenzhen Tencent Computer Systems Company Limited', 36155, 755914244096);
INSERT INTO `asname` VALUES ('IT7 Networks Inc', 46702, 764504178688);
INSERT INTO `asname` VALUES ('Shenzhen Topway Video Communication Co. Ltd', 29285, 764504178689);
INSERT INTO `asname` VALUES ('Kyivski Telekomunikatsiyni Merezhi LLC', 3, 764504178690);
INSERT INTO `asname` VALUES ('High Family Technology Co. Limited', 14, 764504178691);
INSERT INTO `asname` VALUES ('Hangzhou Alibaba Advertising Co. Ltd.', 449136, 773094113280);
INSERT INTO `asname` VALUES ('CHINANET Guangdong province Y', 12, 790273982464);
INSERT INTO `asname` VALUES ('Flat C 16/F Skyline Tower', 4, 790273982465);
INSERT INTO `asname` VALUES ('BGPNET Global ASN', 84, 798863917056);
INSERT INTO `asname` VALUES ('Bahnhof AB', 1, 798863917057);
INSERT INTO `asname` VALUES ('LLC Rosinfokom', 2, 807453851648);
INSERT INTO `asname` VALUES ('Owl Limited', 8, 807453851649);
INSERT INTO `asname` VALUES ('LeaseWeb USA Inc.', 2, 807453851650);
INSERT INTO `asname` VALUES ('NHN', 1, 824633720832);
INSERT INTO `asname` VALUES ('Techcrea Solutions SAS', 2, 824633720833);
INSERT INTO `asname` VALUES ('ColoCrossing', 2002, 833223655424);
INSERT INTO `asname` VALUES ('CHINATELECOM Guangdong province Zhaoqing 5G network', 12731, 833223655425);
INSERT INTO `asname` VALUES ('Qualcomm Inc', 7684, 858993459200);
INSERT INTO `asname` VALUES ('The Constant Company LLC', 93787, 867583393792);
INSERT INTO `asname` VALUES ('Hivelocity Inc.', 2, 867583393793);
INSERT INTO `asname` VALUES ('SoftLayer Technologies Inc.', 1689, 867583393794);
INSERT INTO `asname` VALUES ('Far Easttone Telecommunication Co. Ltd.', 1, 876173328384);
INSERT INTO `asname` VALUES ('IP Volume Inc', 2, 884763262976);
INSERT INTO `asname` VALUES ('Vocom International Telecommunications AP Area', 12, 893353197568);
INSERT INTO `asname` VALUES ('CHINATELECOM Hubei province Shengji 5G network', 308, 910533066752);
INSERT INTO `asname` VALUES ('Cox Communications Inc.', 108, 910533066753);
INSERT INTO `asname` VALUES ('CERNET2 IX at Huazhong University of Science and Technology', 9, 919123001344);
INSERT INTO `asname` VALUES ('Sakura Internet Inc.', 55, 927712935936);
INSERT INTO `asname` VALUES ('PT Telekomunikasi Indonesia', 11, 927712935937);
INSERT INTO `asname` VALUES ('ULan Network Limited', 26, 927712935938);
INSERT INTO `asname` VALUES ('CERNET2 IX at Shandong University', 2, 927712935939);
INSERT INTO `asname` VALUES ('OOO Network of Data-Centers Selectel', 9, 927712935940);
INSERT INTO `asname` VALUES ('ChinaNet Guangdong Province Network', 296697, 936302870528);
INSERT INTO `asname` VALUES ('Cloud Computing HK Limited', 6, 936302870529);
INSERT INTO `asname` VALUES ('XIAOZHIYUN1-AS-AP ICIDC Network', 523, 944892805120);
INSERT INTO `asname` VALUES ('Power Line Datacenter', 5, 944892805121);
INSERT INTO `asname` VALUES ('Ballou Internet Services AB', 1, 944892805122);
INSERT INTO `asname` VALUES ('Google LLC', 11988, 953482739712);
INSERT INTO `asname` VALUES ('HeiLongJiang Mobile Communication Company Limited', 3129, 953482739713);
INSERT INTO `asname` VALUES ('Beijing Sun Rise Technology CO. LTD', 64, 953482739714);
INSERT INTO `asname` VALUES ('HK Broadband Network Ltd.', 2295, 953482739715);
INSERT INTO `asname` VALUES ('No.288 Fu-chun Road', 31642, 962072674304);
INSERT INTO `asname` VALUES ('DataCamp Limited', 243, 962072674305);
INSERT INTO `asname` VALUES ('CHINANET Liaoning province Dalian MAN network', 91648, 970662608896);
INSERT INTO `asname` VALUES ('CHINANET Guangdong Province Guangzhou MAN Network', 666495, 979252543488);
INSERT INTO `asname` VALUES ('DigitalOcean LLC', 8641, 979252543489);
INSERT INTO `asname` VALUES ('GTHost', 2, 979252543490);
INSERT INTO `asname` VALUES ('CHINANET Jiangsu province Suzhou taihu IDC network', 275865, 987842478080);
INSERT INTO `asname` VALUES ('Abitcool(China) Inc.', 9008, 987842478081);
INSERT INTO `asname` VALUES ('China Telecom', 44012, 996432412672);
INSERT INTO `asname` VALUES ('Vodafone India Ltd.', 1, 996432412673);
INSERT INTO `asname` VALUES ('Hong Kong Broadband Network Ltd', 33, 1005022347264);
INSERT INTO `asname` VALUES ('UNICOM InnerMongolia Province Network', 6371, 1005022347265);
INSERT INTO `asname` VALUES ('China Unicom Shanghai Network', 817755, 1013612281856);
INSERT INTO `asname` VALUES ('CapitalOnline Data Service Co.Ltd', 17, 1013612281857);
INSERT INTO `asname` VALUES ('Virgin Media Limited', 1, 1013612281858);
INSERT INTO `asname` VALUES ('Humeng Technology International Co. Limited', 2, 1022202216448);
INSERT INTO `asname` VALUES ('Hurricane Electric LLC', 60928, 1039382085632);
INSERT INTO `asname` VALUES ('CHINANET Guangdong province Yue', 34204, 1039382085633);
INSERT INTO `asname` VALUES ('ASN for Liaoning Provincial Net of CT', 3, 1039382085634);
INSERT INTO `asname` VALUES ('CHINANET Jiangx province IDC network', 10, 1047972020224);
INSERT INTO `asname` VALUES ('Claro S.A.', 21, 1056561954816);
INSERT INTO `asname` VALUES ('CHINANET Guangdong Province Foshan MAN Network', 25165, 1065151889408);
INSERT INTO `asname` VALUES ('Oso Grande IP Services LLC', 5, 1065151889409);
INSERT INTO `asname` VALUES ('Towngas Telecommunications Fixed Network Ltd', 1, 1065151889410);
INSERT INTO `asname` VALUES ('Kirino LLC', 6919, 1073741824000);
INSERT INTO `asname` VALUES ('myLoc managed IT AG', 2, 1073741824001);
INSERT INTO `asname` VALUES ('China Mobile Group JiLin Communications Corporation', 26, 1073741824002);
INSERT INTO `asname` VALUES ('OJSC Comcor', 2, 1073741824003);
INSERT INTO `asname` VALUES ('China Tietong Shandong Net', 1, 1082331758592);
INSERT INTO `asname` VALUES ('Alibaba (US) Technology Co. Ltd.', 28001, 1090921693184);
INSERT INTO `asname` VALUES ('Telenor Norge AS', 5, 1090921693185);
INSERT INTO `asname` VALUES ('Yunify Technologies Inc.', 14, 1099511627776);
INSERT INTO `asname` VALUES ('Krypt Technologies', 13, 1099511627777);
INSERT INTO `asname` VALUES ('xTom', 21, 1108101562368);
INSERT INTO `asname` VALUES ('Asia Pacific Broadband Fixed Lines Co. Ltd.', 3, 1108101562369);
INSERT INTO `asname` VALUES ('CERNET2 IX at Xi\'an Jiaotong University', 6395, 1108101562370);
INSERT INTO `asname` VALUES ('Host Universal Pty Ltd', 3, 1108101562371);
INSERT INTO `asname` VALUES ('BAIDU Beijing Baidu Netcom Science and Technology Co. Ltd.', 5176, 1116691496960);
INSERT INTO `asname` VALUES ('Domain Names Registrar Reg.ru Ltd', 51, 1116691496961);
INSERT INTO `asname` VALUES ('WorldStream B.V.', 1, 1116691496962);
INSERT INTO `asname` VALUES ('xTom GmbH', 6532, 1151051235328);
INSERT INTO `asname` VALUES ('Unit A-E 13/F Golden Sun Centre', 7, 1151051235329);
INSERT INTO `asname` VALUES ('Tianhai Infotech', 59, 1151051235330);
INSERT INTO `asname` VALUES ('ZIYIN LIN TRADING AS NETLAB', 1, 1159641169920);
INSERT INTO `asname` VALUES ('ACT International Telecom Limited', 17, 1168231104512);
INSERT INTO `asname` VALUES ('SunnyVision Limited', 84, 1176821039104);
INSERT INTO `asname` VALUES ('CHINATELECOM Guangxi Nanning IDC networkdescr: NanningGuangxi Province P.R.China.', 1, 1185410973696);
INSERT INTO `asname` VALUES ('Wowrack.com', 238, 1194000908288);
INSERT INTO `asname` VALUES ('Cloud Computing Corporation', 14, 1194000908289);
INSERT INTO `asname` VALUES ('IOT Jiangsu network Chinatelecom P.R.China.', 39984, 1202590842880);
INSERT INTO `asname` VALUES ('Strong Technology LLC.', 2, 1202590842881);
INSERT INTO `asname` VALUES ('Multacom Corporation', 20, 1211180777472);
INSERT INTO `asname` VALUES ('LeaseWeb Netherlands B.V.', 19, 1211180777473);
INSERT INTO `asname` VALUES ('DediPath', 1, 1211180777474);
INSERT INTO `asname` VALUES ('Beijing Gu Xiang Information Technology Co. Ltd.', 1005, 1228360646656);
INSERT INTO `asname` VALUES ('CHINANET SiChuan Telecom Internet Data Center', 1285, 1228360646657);
INSERT INTO `asname` VALUES ('OceanBlue Cloud Technology Limited', 1, 1228360646658);
INSERT INTO `asname` VALUES ('CERNET2 IX at South China University of Technology', 5408, 1228360646659);
INSERT INTO `asname` VALUES ('CMPak Limited', 3, 1228360646660);
INSERT INTO `asname` VALUES ('Livecom Limited', 2, 1236950581248);
INSERT INTO `asname` VALUES ('CERNET2 IX at Southeast University', 6, 1245540515840);
INSERT INTO `asname` VALUES ('HostRoyale Technologies Pvt Ltd', 2, 1245540515841);
INSERT INTO `asname` VALUES ('Kaspersky Lab AO', 30, 1254130450432);
INSERT INTO `asname` VALUES ('Robert Bosch LLC', 4, 1254130450433);
INSERT INTO `asname` VALUES ('MICROSOFT-CORP-MSN-AS-BLOCK', 6462, 1262720385024);
INSERT INTO `asname` VALUES ('UNICOM AnHui province network', 17244, 1262720385025);
INSERT INTO `asname` VALUES ('CHINA169-CN CNCGROUP Old Jitong IP Network', 2205, 1262720385026);
INSERT INTO `asname` VALUES ('UUNET', 6, 1271310319616);
INSERT INTO `asname` VALUES ('Hostway LLC', 98, 1271310319617);
INSERT INTO `asname` VALUES ('IBM Deutschland GmbH', 2, 1271310319618);
INSERT INTO `asname` VALUES ('Shanghai Huajuan Information Technology Co. Ltd.', 9, 1279900254208);
INSERT INTO `asname` VALUES ('Korea Telecom', 2017, 1279900254209);
INSERT INTO `asname` VALUES ('AS33891 Netzbetrieb GmbH', 7, 1279900254210);
INSERT INTO `asname` VALUES ('HKT Limited', 1407, 1288490188800);
INSERT INTO `asname` VALUES ('ALEXANDER WAGBERG TRADING AS WBERG NETWORKS', 1, 1288490188801);
INSERT INTO `asname` VALUES ('Jiangxi Jiujiang IDC', 4, 1288490188802);
INSERT INTO `asname` VALUES ('HWCSNET Huawei Cloud Service data center', 77699, 1297080123392);
INSERT INTO `asname` VALUES ('DataCity', 2, 1297080123393);
INSERT INTO `asname` VALUES ('ARM Ltd', 1, 1297080123394);
INSERT INTO `asname` VALUES ('StarHub Ltd', 272, 1305670057984);
INSERT INTO `asname` VALUES ('Telegram Messenger INC', 1, 1305670057985);
INSERT INTO `asname` VALUES ('Semrush Cy Ltd', 208, 1314259992576);
INSERT INTO `asname` VALUES ('1&1 IONOS SE', 6, 1314259992577);
INSERT INTO `asname` VALUES ('Des Capital B.V.', 7, 1314259992578);
INSERT INTO `asname` VALUES ('SharkTech', 1, 1314259992579);
INSERT INTO `asname` VALUES ('Online S.A.S.', 94, 1322849927168);
INSERT INTO `asname` VALUES ('CERNET2 IX at University of Science and Technology of China', 11587, 1331439861760);
INSERT INTO `asname` VALUES ('Unified Layer', 30, 1331439861761);
INSERT INTO `asname` VALUES ('Qualcomm Inc.', 30255, 1340029796352);
INSERT INTO `asname` VALUES ('GSL Networks Pty Ltd', 2136, 1348619730944);
INSERT INTO `asname` VALUES ('NTT Communications Corporation', 3, 1348619730945);
INSERT INTO `asname` VALUES ('Colostore.com', 2, 1348619730946);
INSERT INTO `asname` VALUES ('PEG TECH Inc', 162, 1357209665536);
INSERT INTO `asname` VALUES ('Adista SAS', 1, 1357209665537);
INSERT INTO `asname` VALUES ('Yisu Cloud Ltd', 3, 1357209665538);
INSERT INTO `asname` VALUES ('Zeyond Limited', 3, 1365799600128);
INSERT INTO `asname` VALUES ('Net By Net Holding LLC', 2, 1365799600129);
INSERT INTO `asname` VALUES ('Digital United Inc.', 1820, 1374389534720);
INSERT INTO `asname` VALUES ('NTT America Inc.', 3280, 1374389534721);
INSERT INTO `asname` VALUES ('Link Connectivity Limited', 3589, 1374389534722);
INSERT INTO `asname` VALUES ('MEO - Servicos de Comunicacoes e Multimedia S.A.', 1, 1374389534723);
INSERT INTO `asname` VALUES ('CHINANET Guangdong provinc', 5839, 1391569403904);
INSERT INTO `asname` VALUES ('NTT PC Communications Inc.', 4, 1391569403905);
INSERT INTO `asname` VALUES ('Subrigo Corporation', 1756, 1400159338496);
INSERT INTO `asname` VALUES ('AS Number for CHINANET Jiangsu Province Backbone', 4016, 1408749273088);
INSERT INTO `asname` VALUES ('Hebei Mobile Communication Company Limited', 16163, 1417339207680);
INSERT INTO `asname` VALUES ('GitHub Inc.', 14, 1417339207681);
INSERT INTO `asname` VALUES ('Anchnet Asia Limited', 16623, 1425929142272);
INSERT INTO `asname` VALUES ('Zhengzhou Fastidc Technology Co. Ltd.', 11, 1434519076864);
INSERT INTO `asname` VALUES ('CUII China Unicom Industrial Internet Backbone', 44780, 1443109011456);
INSERT INTO `asname` VALUES ('No.293 Wanbao Avenue', 14323, 1443109011457);
INSERT INTO `asname` VALUES ('PDR', 3, 1443109011458);
INSERT INTO `asname` VALUES ('Majestic Hosting Solutions LLC', 4, 1443109011459);
INSERT INTO `asname` VALUES ('Orange S.A.', 1657, 1460288880640);
INSERT INTO `asname` VALUES ('China Telecom Next Generation Carrier Network', 14962, 1468878815232);
INSERT INTO `asname` VALUES ('BJKSCNET Beijing Kingsoft Cloud Internet Technology Co. Ltd', 30, 1477468749824);
INSERT INTO `asname` VALUES ('IOT Guangdong network Chinatelecom P.R.China.', 796, 1477468749825);
INSERT INTO `asname` VALUES ('SK Broadband Co Ltd', 9, 1486058684416);
INSERT INTO `asname` VALUES ('Contabo GmbH', 5, 1486058684417);
INSERT INTO `asname` VALUES ('Asia Pacific On-Line Service Inc.', 3, 1486058684418);
INSERT INTO `asname` VALUES ('Amarutu Technology Ltd', 16, 1503238553600);
INSERT INTO `asname` VALUES ('Network Data Center Host Inc.', 1, 1503238553601);
INSERT INTO `asname` VALUES ('Huawei IT Data Center in AP', 20396, 1511828488192);
INSERT INTO `asname` VALUES ('China Mobile Hong Kong Company Limited', 24, 1511828488193);
INSERT INTO `asname` VALUES ('Kaopu Cloud HK Limited', 4, 1520418422784);
INSERT INTO `asname` VALUES ('43/F AIA Tower 183 Electric Road North Point Hong Kong', 312, 1520418422785);
INSERT INTO `asname` VALUES ('MTS PJSC', 21, 1520418422786);
INSERT INTO `asname` VALUES ('Leibniz-Rechenzentrum', 1, 1529008357376);
INSERT INTO `asname` VALUES ('British Telecommunications PLC', 2, 1529008357377);
INSERT INTO `asname` VALUES ('New Century InfoComm Tech Co. Ltd.', 12, 1537598291968);
INSERT INTO `asname` VALUES ('PINGANCOM Shenzhen Ping An Communication Technology Co. Ltd', 29, 1537598291969);
INSERT INTO `asname` VALUES ('Gateway Online Access Limited', 73, 1537598291970);
INSERT INTO `asname` VALUES ('CHINATELECOM GUA', 5, 1546188226560);
INSERT INTO `asname` VALUES ('Zomro B.V.', 1, 1546188226561);
INSERT INTO `asname` VALUES ('Web2Objects LLC', 235, 1554778161152);
INSERT INTO `asname` VALUES ('Frantech Solutions', 16, 1554778161153);
INSERT INTO `asname` VALUES ('Brutele SC', 1, 1563368095744);
INSERT INTO `asname` VALUES ('GigeNET', 5, 1580547964928);
INSERT INTO `asname` VALUES ('Telekom Romania Communication S.A', 1, 1580547964929);
INSERT INTO `asname` VALUES ('MyRepublic Ltd.', 12, 1589137899520);
INSERT INTO `asname` VALUES ('Indosat Internet Network Provider', 1, 1589137899521);
INSERT INTO `asname` VALUES ('PE Pivovar Aleksej Nikolaevich', 1, 1589137899522);
INSERT INTO `asname` VALUES ('TransIP B.V.', 1, 1589137899523);
INSERT INTO `asname` VALUES ('Dedicated.com', 3, 1597727834112);
INSERT INTO `asname` VALUES ('Pegaso PCS S.A. de C.V.', 1, 1597727834113);
INSERT INTO `asname` VALUES ('VNPT Corp', 97, 1606317768704);
INSERT INTO `asname` VALUES ('GMOCL GMO GlobalSign Holdings K.K.', 3, 1606317768705);
INSERT INTO `asname` VALUES ('Xnnet LLC', 44, 1614907703296);
INSERT INTO `asname` VALUES ('Public Telecommunication Corporation', 3, 1614907703297);
INSERT INTO `asname` VALUES ('AT&T Services Inc.', 107, 1623497637888);
INSERT INTO `asname` VALUES ('CHINATELECOM JIANGSU province NANTONG MAN network', 4, 1623497637889);
INSERT INTO `asname` VALUES ('Google Fiber Inc.', 2060, 1623497637890);
INSERT INTO `asname` VALUES ('Oracle Corporation', 10494, 1632087572480);
INSERT INTO `asname` VALUES ('MCI Communications Services Inc. d/b/a Verizon Business', 15203, 1632087572481);
INSERT INTO `asname` VALUES ('Orange Polska Spolka Akcyjna', 2, 1632087572482);
INSERT INTO `asname` VALUES ('Beijing Guanghuan Xinwang Digital', 26, 1640677507072);
INSERT INTO `asname` VALUES ('CERNET2 regional IX at Shenzhen University', 14205, 1640677507073);
INSERT INTO `asname` VALUES ('Bharti Airtel Ltd. Telemedia Services', 4, 1640677507074);
INSERT INTO `asname` VALUES ('AS45671-NET-AU Wholesale Services Provider', 6049, 1649267441664);
INSERT INTO `asname` VALUES ('EXFLUX NETWORKS UK LTD', 1, 1649267441665);
INSERT INTO `asname` VALUES ('UCOM ARTERIA Networks Corporation', 2586, 1657857376256);
INSERT INTO `asname` VALUES ('CERNET2 IX at Jilin University', 23, 1657857376257);
INSERT INTO `asname` VALUES ('ShenZhen Century-One Limited', 2, 1666447310848);
INSERT INTO `asname` VALUES ('Cloudie Limited', 256, 1666447310849);
INSERT INTO `asname` VALUES ('Altibox AS', 5, 1666447310850);
INSERT INTO `asname` VALUES ('DXTNET Beijing Dian-Xin-Tong Network Technologies Co. Ltd.', 8, 1666447310851);
INSERT INTO `asname` VALUES ('JSC ER-Telecom Holding', 4, 1675037245440);
INSERT INTO `asname` VALUES ('TechMahindra Americas Inc.', 3, 1675037245441);
INSERT INTO `asname` VALUES ('GDMC', 2279230, 1683627180032);
INSERT INTO `asname` VALUES ('Telia Company AB', 2, 1700807049216);
INSERT INTO `asname` VALUES ('DMIT Cloud Services', 16463, 1709396983808);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 05连接池', 7, 'add_dbsetup');
INSERT INTO `auth_permission` VALUES (26, 'Can change 05连接池', 7, 'change_dbsetup');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 05连接池', 7, 'delete_dbsetup');
INSERT INTO `auth_permission` VALUES (28, 'Can view 05连接池', 7, 'view_dbsetup');
INSERT INTO `auth_permission` VALUES (29, 'Can add 缓存表', 8, 'add_dimensiontable');
INSERT INTO `auth_permission` VALUES (30, 'Can change 缓存表', 8, 'change_dimensiontable');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 缓存表', 8, 'delete_dimensiontable');
INSERT INTO `auth_permission` VALUES (32, 'Can view 缓存表', 8, 'view_dimensiontable');
INSERT INTO `auth_permission` VALUES (33, 'Can add 01仪表盘', 9, 'add_echartdashboardsetup_v2');
INSERT INTO `auth_permission` VALUES (34, 'Can change 01仪表盘', 9, 'change_echartdashboardsetup_v2');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 01仪表盘', 9, 'delete_echartdashboardsetup_v2');
INSERT INTO `auth_permission` VALUES (36, 'Can view 01仪表盘', 9, 'view_echartdashboardsetup_v2');
INSERT INTO `auth_permission` VALUES (37, 'Can add 00数据集', 10, 'add_echartdataset');
INSERT INTO `auth_permission` VALUES (38, 'Can change 00数据集', 10, 'change_echartdataset');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 00数据集', 10, 'delete_echartdataset');
INSERT INTO `auth_permission` VALUES (40, 'Can view 00数据集', 10, 'view_echartdataset');
INSERT INTO `auth_permission` VALUES (41, 'Can add 04图形', 11, 'add_echartformat');
INSERT INTO `auth_permission` VALUES (42, 'Can change 04图形', 11, 'change_echartformat');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 04图形', 11, 'delete_echartformat');
INSERT INTO `auth_permission` VALUES (44, 'Can view 04图形', 11, 'view_echartformat');
INSERT INTO `auth_permission` VALUES (45, 'Can add 03模版', 12, 'add_echarttemplateformat');
INSERT INTO `auth_permission` VALUES (46, 'Can change 03模版', 12, 'change_echarttemplateformat');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 03模版', 12, 'delete_echarttemplateformat');
INSERT INTO `auth_permission` VALUES (48, 'Can view 03模版', 12, 'view_echarttemplateformat');
INSERT INTO `auth_permission` VALUES (49, 'Can add 错误日志', 13, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (50, 'Can change 错误日志', 13, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 错误日志', 13, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (52, 'Can view 错误日志', 13, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (53, 'Can add 报表评论', 14, 'add_reportcomment');
INSERT INTO `auth_permission` VALUES (54, 'Can change 报表评论', 14, 'change_reportcomment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 报表评论', 14, 'delete_reportcomment');
INSERT INTO `auth_permission` VALUES (56, 'Can view 报表评论', 14, 'view_reportcomment');
INSERT INTO `auth_permission` VALUES (57, 'Can add 评论访问', 15, 'add_reportcommentread');
INSERT INTO `auth_permission` VALUES (58, 'Can change 评论访问', 15, 'change_reportcommentread');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 评论访问', 15, 'delete_reportcommentread');
INSERT INTO `auth_permission` VALUES (60, 'Can view 评论访问', 15, 'view_reportcommentread');
INSERT INTO `auth_permission` VALUES (61, 'Can add 访问记录', 16, 'add_visitlog');
INSERT INTO `auth_permission` VALUES (62, 'Can change 访问记录', 16, 'change_visitlog');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 访问记录', 16, 'delete_visitlog');
INSERT INTO `auth_permission` VALUES (64, 'Can view 访问记录', 16, 'view_visitlog');
INSERT INTO `auth_permission` VALUES (65, 'Can add 07项目', 17, 'add_projectlist');
INSERT INTO `auth_permission` VALUES (66, 'Can change 07项目', 17, 'change_projectlist');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 07项目', 17, 'delete_projectlist');
INSERT INTO `auth_permission` VALUES (68, 'Can view 07项目', 17, 'view_projectlist');
INSERT INTO `auth_permission` VALUES (69, 'Can add 06主题', 18, 'add_echarttheme');
INSERT INTO `auth_permission` VALUES (70, 'Can change 06主题', 18, 'change_echarttheme');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 06主题', 18, 'delete_echarttheme');
INSERT INTO `auth_permission` VALUES (72, 'Can view 06主题', 18, 'view_echarttheme');
INSERT INTO `auth_permission` VALUES (73, 'Can add 报表配置', 19, 'add_echartreportsetup');
INSERT INTO `auth_permission` VALUES (74, 'Can change 报表配置', 19, 'change_echartreportsetup');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 报表配置', 19, 'delete_echartreportsetup');
INSERT INTO `auth_permission` VALUES (76, 'Can view 报表配置', 19, 'view_echartreportsetup');
INSERT INTO `auth_permission` VALUES (77, 'Can add asname', 20, 'add_asname');
INSERT INTO `auth_permission` VALUES (78, 'Can change asname', 20, 'change_asname');
INSERT INTO `auth_permission` VALUES (79, 'Can delete asname', 20, 'delete_asname');
INSERT INTO `auth_permission` VALUES (80, 'Can view asname', 20, 'view_asname');
INSERT INTO `auth_permission` VALUES (81, 'Can add df', 21, 'add_df');
INSERT INTO `auth_permission` VALUES (82, 'Can change df', 21, 'change_df');
INSERT INTO `auth_permission` VALUES (83, 'Can delete df', 21, 'delete_df');
INSERT INTO `auth_permission` VALUES (84, 'Can view df', 21, 'view_df');
INSERT INTO `auth_permission` VALUES (85, 'Can add https', 22, 'add_https');
INSERT INTO `auth_permission` VALUES (86, 'Can change https', 22, 'change_https');
INSERT INTO `auth_permission` VALUES (87, 'Can delete https', 22, 'delete_https');
INSERT INTO `auth_permission` VALUES (88, 'Can view https', 22, 'view_https');
INSERT INTO `auth_permission` VALUES (89, 'Can add ip', 23, 'add_ip');
INSERT INTO `auth_permission` VALUES (90, 'Can change ip', 23, 'change_ip');
INSERT INTO `auth_permission` VALUES (91, 'Can delete ip', 23, 'delete_ip');
INSERT INTO `auth_permission` VALUES (92, 'Can view ip', 23, 'view_ip');
INSERT INTO `auth_permission` VALUES (93, 'Can add ip404', 24, 'add_ip404');
INSERT INTO `auth_permission` VALUES (94, 'Can change ip404', 24, 'change_ip404');
INSERT INTO `auth_permission` VALUES (95, 'Can delete ip404', 24, 'delete_ip404');
INSERT INTO `auth_permission` VALUES (96, 'Can view ip404', 24, 'view_ip404');
INSERT INTO `auth_permission` VALUES (97, 'Can add method', 25, 'add_method');
INSERT INTO `auth_permission` VALUES (98, 'Can change method', 25, 'change_method');
INSERT INTO `auth_permission` VALUES (99, 'Can delete method', 25, 'delete_method');
INSERT INTO `auth_permission` VALUES (100, 'Can view method', 25, 'view_method');
INSERT INTO `auth_permission` VALUES (101, 'Can add os', 26, 'add_os');
INSERT INTO `auth_permission` VALUES (102, 'Can change os', 26, 'change_os');
INSERT INTO `auth_permission` VALUES (103, 'Can delete os', 26, 'delete_os');
INSERT INTO `auth_permission` VALUES (104, 'Can view os', 26, 'view_os');
INSERT INTO `auth_permission` VALUES (105, 'Can add status', 27, 'add_status');
INSERT INTO `auth_permission` VALUES (106, 'Can change status', 27, 'change_status');
INSERT INTO `auth_permission` VALUES (107, 'Can delete status', 27, 'delete_status');
INSERT INTO `auth_permission` VALUES (108, 'Can view status', 27, 'view_status');
INSERT INTO `auth_permission` VALUES (109, 'Can add views', 28, 'add_views');
INSERT INTO `auth_permission` VALUES (110, 'Can change views', 28, 'change_views');
INSERT INTO `auth_permission` VALUES (111, 'Can delete views', 28, 'delete_views');
INSERT INTO `auth_permission` VALUES (112, 'Can view views', 28, 'view_views');

-- ----------------------------
-- Records of df
-- ----------------------------
INSERT INTO `df` VALUES ('117.183.25.43', '-', 2021, 2, 2, 3, 22, 25, 'GET', '/platform/packages/apps/Car/Notification/info/refs?service=git-upload-pack', 'HTTP/2.0', 200, 27004, 'application/x-git-upload-pack-advertisement', '-', 'Linux', 'https', 'Guangdong Mobile Communication Co.Ltd.', 'CN', '-', '-', '24.312580', '109.389160', 0);
INSERT INTO `df` VALUES ('222.95.121.112', '-', 2021, 2, 2, 3, 22, 25, 'POST', '/platform/external/objenesis/git-upload-pack', 'HTTP/2.0', 200, 451484, 'application/x-git-upload-pack-result', '-', 'Linux', 'https', 'Asia Pacific Network Information Centre', 'CN', '-', '-', '32.061670', '118.777780', 1);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 25, 'GET', '/platform/manifest/info/refs?service=git-upload-pack', 'HTTP/1.1', 200, 279707, 'application/x-git-upload-pack-advertisement', '-', 'Linux', 'https', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 2);
INSERT INTO `df` VALUES ('117.183.25.43', '-', 2021, 2, 2, 3, 22, 25, 'POST', '/platform/packages/apps/Car/Notification/git-upload-pack', 'HTTP/2.0', 200, 1709906, 'application/x-git-upload-pack-result', '-', 'Linux', 'https', 'Guangdong Mobile Communication Co.Ltd.', 'CN', '-', '-', '24.312580', '109.389160', 3);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 25, 'GET', '/platform/external/tagsoup/info/refs?service=git-upload-pack', 'HTTP/1.1', 301, 169, 'text/html', '-', 'Linux', 'http', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 4);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 25, 'GET', '/platform/hardware/qcom/audio/info/refs?service=git-upload-pack', 'HTTP/1.1', 301, 169, 'text/html', '-', 'Linux', 'http', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 5);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 25, 'GET', '/platform/prebuilts/abi-dumps/vndk/info/refs?service=git-upload-pack', 'HTTP/1.1', 301, 169, 'text/html', '-', 'Linux', 'http', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 6);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 25, 'GET', '/platform/packages/providers/TelephonyProvider/info/refs?service=git-upload-pack', 'HTTP/1.1', 301, 169, 'text/html', '-', 'Linux', 'http', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 7);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 26, 'GET', '/platform/frameworks/opt/timezonepicker/info/refs?service=git-upload-pack', 'HTTP/1.1', 301, 169, 'text/html', '-', 'Linux', 'http', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 8);
INSERT INTO `df` VALUES ('101.207.135.112', '-', 2021, 2, 2, 3, 22, 26, 'GET', '/platform/frameworks/opt/setupwizard/info/refs?service=git-upload-pack', 'HTTP/1.1', 301, 169, 'text/html', '-', 'Linux', 'http', 'China Unicom', 'CN', '-', '-', '30.666670', '104.066670', 9);

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'echart', 'dbsetup');
INSERT INTO `django_content_type` VALUES (8, 'echart', 'dimensiontable');
INSERT INTO `django_content_type` VALUES (9, 'echart', 'echartdashboardsetup_v2');
INSERT INTO `django_content_type` VALUES (10, 'echart', 'echartdataset');
INSERT INTO `django_content_type` VALUES (11, 'echart', 'echartformat');
INSERT INTO `django_content_type` VALUES (19, 'echart', 'echartreportsetup');
INSERT INTO `django_content_type` VALUES (12, 'echart', 'echarttemplateformat');
INSERT INTO `django_content_type` VALUES (18, 'echart', 'echarttheme');
INSERT INTO `django_content_type` VALUES (13, 'echart', 'errorlog');
INSERT INTO `django_content_type` VALUES (17, 'echart', 'projectlist');
INSERT INTO `django_content_type` VALUES (14, 'echart', 'reportcomment');
INSERT INTO `django_content_type` VALUES (15, 'echart', 'reportcommentread');
INSERT INTO `django_content_type` VALUES (16, 'echart', 'visitlog');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (20, 'testApp', 'asname');
INSERT INTO `django_content_type` VALUES (21, 'testApp', 'df');
INSERT INTO `django_content_type` VALUES (22, 'testApp', 'https');
INSERT INTO `django_content_type` VALUES (23, 'testApp', 'ip');
INSERT INTO `django_content_type` VALUES (24, 'testApp', 'ip404');
INSERT INTO `django_content_type` VALUES (25, 'testApp', 'method');
INSERT INTO `django_content_type` VALUES (26, 'testApp', 'os');
INSERT INTO `django_content_type` VALUES (27, 'testApp', 'status');
INSERT INTO `django_content_type` VALUES (28, 'testApp', 'views');

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-06-17 23:31:23.315423');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-06-17 23:31:23.494571');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-06-17 23:31:23.985334');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-06-17 23:31:24.146006');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-17 23:31:24.166378');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-06-17 23:31:24.267188');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-06-17 23:31:24.348349');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-06-17 23:31:24.440509');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-06-17 23:31:24.457770');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-06-17 23:31:24.532815');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-06-17 23:31:24.539759');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-17 23:31:24.556164');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-06-17 23:31:24.619857');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-17 23:31:24.705977');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-06-17 23:31:24.793756');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-06-17 23:31:24.812448');
INSERT INTO `django_migrations` VALUES (17, 'echart', '0001_initial', '2021-06-17 23:31:25.873182');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2021-06-17 23:31:27.692918');
INSERT INTO `django_migrations` VALUES (19, 'testApp', '0001_initial', '2021-06-17 23:31:27.770889');

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Records of https
-- ----------------------------
INSERT INTO `https` VALUES ('http', 6817233, 558345748480);
INSERT INTO `https` VALUES ('https', 31726765, 1700807049216);

SET FOREIGN_KEY_CHECKS = 1;
