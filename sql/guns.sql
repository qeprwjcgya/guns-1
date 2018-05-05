/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.150
 Source Server Type    : MySQL
 Source Server Version : 50554
 Source Host           : 192.168.0.150:3306
 Source Schema         : guns

 Target Server Type    : MySQL
 Target Server Version : 50554
 File Encoding         : 65001

 Date: 06/05/2018 04:05:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car_brand
-- ----------------------------
DROP TABLE IF EXISTS `car_brand`;
CREATE TABLE `car_brand`  (
  `id` int(20) NOT NULL,
  `parent_id` int(20) NOT NULL,
  `brand_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌名称',
  `brand_logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌logo',
  `brand_sort` int(11) DEFAULT 1 COMMENT '排序',
  `brand_level` int(11) DEFAULT 1 COMMENT '层级',
  `gmt_create` datetime DEFAULT NULL,
  `recommend` int(1) DEFAULT 2 COMMENT '推荐(1:推荐，2：否)',
  `first_word` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '首字母',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car_brand
-- ----------------------------
INSERT INTO `car_brand` VALUES (1, 0, 'DS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725776.png', 75, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (2, 0, 'GMC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725784.png', 76, 1, NULL, 2, 'G');
INSERT INTO `car_brand` VALUES (3, 0, 'MINI', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725804.png', 78, 1, NULL, 2, 'M');
INSERT INTO `car_brand` VALUES (4, 0, 'Smart', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725817.png', 81, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (5, 0, 'SPRINGO', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725813.png', 79, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (9, 0, '奥迪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725333.jpg', 31, 1, NULL, 2, 'A');
INSERT INTO `car_brand` VALUES (12, 0, '宝龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725359.jpg', 33, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (14, 0, '保斐利', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725947.png', 96, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (15, 0, '保时捷', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725130.jpg', 13, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (16, 0, '北汽', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725215.jpg', 19, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (20, 0, '比亚迪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725477.jpg', 45, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (22, 0, '别克', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725177.jpg', 17, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (23, 0, '宾利', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725365.jpg', 34, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (27, 0, '传祺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725931.png', 94, 1, NULL, 2, 'C');
INSERT INTO `car_brand` VALUES (29, 0, '大发', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725308.jpg', 28, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (32, 0, '大众', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725265.jpg', 27, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (33, 0, '道奇', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725660.jpg', 66, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (34, 0, '帝豪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725373.jpg', 35, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (35, 0, '东风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725021.jpg', 5, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (37, 0, '东风小康', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725870.png', 86, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (38, 0, '东南', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725858.png', 85, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (39, 0, '法拉利', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725541.jpg', 50, 1, NULL, 2, 'F');
INSERT INTO `car_brand` VALUES (41, 0, '丰田', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725033.jpg', 7, 1, NULL, 2, 'F');
INSERT INTO `car_brand` VALUES (42, 0, 'Scion', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725815.png', 80, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (47, 0, '光冈', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725949.png', 97, 1, NULL, 2, 'G');
INSERT INTO `car_brand` VALUES (55, 0, '华北', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726020.png', 103, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (56, 0, '华普', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726024.png', 104, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (57, 0, '华泰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726037.png', 105, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (62, 0, '吉利', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725238.jpg', 24, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (63, 0, 'Jeep', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724984.jpg', 1, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (67, 0, '捷豹', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725399.jpg', 41, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (69, 0, '卡尔森', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726049.png', 106, 1, NULL, 2, 'K');
INSERT INTO `car_brand` VALUES (71, 0, '凯迪拉克', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725153.jpg', 16, 1, NULL, 2, 'K');
INSERT INTO `car_brand` VALUES (73, 0, '克莱斯勒', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725953.png', 98, 1, NULL, 2, 'K');
INSERT INTO `car_brand` VALUES (74, 0, '兰博基尼', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725140.jpg', 14, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (75, 0, '劳伦士', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725999.png', 101, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (76, 0, '劳斯莱斯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725208.jpg', 18, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (77, 0, '雷克萨斯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725731.jpg', 72, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (80, 0, '力帆', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725981.png', 100, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (85, 0, '路虎', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725641.jpg', 64, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (87, 0, '马自达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725748.jpg', 74, 1, NULL, 2, 'M');
INSERT INTO `car_brand` VALUES (88, 0, '玛莎拉蒂', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725574.jpg', 52, 1, NULL, 2, 'M');
INSERT INTO `car_brand` VALUES (90, 0, 'MG', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725795.png', 77, 1, NULL, 2, 'M');
INSERT INTO `car_brand` VALUES (98, 0, '奇瑞', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725316.jpg', 30, 1, NULL, 2, 'Q');
INSERT INTO `car_brand` VALUES (101, 0, '全球鹰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725973.png', 99, 1, NULL, 2, 'Q');
INSERT INTO `car_brand` VALUES (102, 0, '日产', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725419.jpg', 44, 1, NULL, 2, 'R');
INSERT INTO `car_brand` VALUES (106, 0, '三菱', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725827.png', 83, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (108, 0, '世爵', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725856.png', 84, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (109, 0, '双环', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726052.png', 107, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (110, 0, '双龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726057.png', 108, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (117, 0, '万丰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725822.png', 82, 1, NULL, 2, 'W');
INSERT INTO `car_brand` VALUES (121, 0, '沃尔沃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725515.jpg', 49, 1, NULL, 2, 'W');
INSERT INTO `car_brand` VALUES (122, 0, '五菱', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725920.png', 93, 1, NULL, 2, 'W');
INSERT INTO `car_brand` VALUES (123, 0, '五十铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725915.png', 92, 1, NULL, 2, 'W');
INSERT INTO `car_brand` VALUES (128, 0, '新凯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725413.jpg', 43, 1, NULL, 2, 'X');
INSERT INTO `car_brand` VALUES (131, 0, '一汽', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725007.jpg', 4, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (132, 0, '佳星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725945.png', 95, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (133, 0, '英菲尼迪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725615.jpg', 60, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (134, 0, '英伦', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725601.jpg', 58, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (136, 0, '云雀', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725913.png', 91, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (137, 0, '长安', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725711.jpg', 70, 1, NULL, 2, 'C');
INSERT INTO `car_brand` VALUES (139, 0, '长城', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725683.jpg', 69, 1, NULL, 2, 'C');
INSERT INTO `car_brand` VALUES (141, 0, '中华', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725896.png', 89, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (142, 0, '中顺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725911.png', 90, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (143, 0, '中兴', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725883.png', 88, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (144, 0, '众泰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725097.jpg', 11, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (145, 1, '进口 DS3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725781.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (146, 1, '进口 DS4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725782.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (147, 1, '进口 DS5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725783.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (148, 2, '进口 Jimmy', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725788.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (149, 2, '进口 Sierra [西拉]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725792.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (150, 2, '进口 Acadia [阿卡迪亚]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725785.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (151, 2, '进口 Safari [旅行]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725789.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (152, 2, '进口 Savana [赛威]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725791.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (153, 2, '进口 Envoy [使节]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725787.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (154, 2, '进口 Canyon [峡谷]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725786.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (155, 2, '进口 Yukon [育空河]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725794.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (156, 3, '进口 Cabrio ', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725805.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (157, 3, '进口 Clubman', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725806.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (158, 3, '进口 Countryman', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725807.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (159, 3, '进口 Coupe', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725808.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (160, 3, '进口 Mini', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725809.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (161, 3, '进口 Paceman', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725811.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (162, 3, '进口 Roadster', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725812.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (163, 4, '进口 Crossblade', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725818.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (164, 4, '进口 Forfour', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725819.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (165, 4, '进口 Fortwo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725820.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (166, 4, '进口 Roadster', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725821.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (167, 5, '合资 SPRINGO', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725814.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (188, 9, '进口 80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725342.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (190, 9, '进口 A1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725343.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (191, 9, '进口 A2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725344.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (192, 9, '进口 A3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725345.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (193, 9, '进口 A4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725346.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (194, 9, '进口 A5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725347.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (195, 9, '进口 A6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725348.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (196, 9, '进口 A7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725349.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (197, 9, '进口 A8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725350.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (198, 9, '进口 Q3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725351.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (199, 9, '进口 Q5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725352.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (200, 9, '进口 Q7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725353.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (201, 9, '进口 R8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725354.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (202, 9, '进口 TT', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725355.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (203, 9, '合资 100', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725334.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (204, 9, '合资 200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725335.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (205, 9, '合资 A4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725337.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (206, 9, '合资 A6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725338.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (207, 9, '合资 Q3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725339.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (208, 9, '合资 Q5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725340.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (217, 12, '国产 霸道', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725364.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (218, 12, '国产 菱惠', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725361.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (219, 12, '国产 菱骏', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725362.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (220, 12, '国产 菱麒', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725363.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (221, 12, '国产 天马座', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725360.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (228, 16166, '进口 B7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724983.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (240, 14, '进口 La Joya', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725948.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (241, 15, '进口 911', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725131.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (242, 15, '进口 968', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725133.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (243, 15, '进口 Boxster [博克斯特]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725134.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (244, 15, '进口 Carrera GT [卡雷拉 GT]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725135.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (245, 15, '进口 Cayenne [卡宴]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725136.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (246, 15, '进口 Cayman [卡曼]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725137.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (247, 15, '进口 Panamera [帕纳美拉]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725139.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (248, 16167, '国产 E系列', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726007.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (249, 16, '国产 雷驰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725225.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (250, 16, '国产 陆霸', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725224.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (251, 16, '国产 陆铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725223.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (252, 16, '国产 骑士', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725226.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (253, 16, '国产 旋风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725222.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (254, 16, '国产 勇士', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725218.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (255, 16, '国产 域胜007', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725220.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (256, 16, '国产 战旗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725221.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (331, 20, '国产 E6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725478.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (332, 20, '国产 F0', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725479.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (333, 20, '国产 F3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725480.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (336, 20, '国产 F6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725481.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (338, 20, '国产 G3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725482.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (339, 20, '国产 G6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725484.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (340, 20, '国产 L3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725485.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (341, 20, '国产 M6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725486.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (342, 20, '国产 S6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725487.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (343, 20, '国产 S8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725489.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (344, 20, '国产 福莱尔', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725495.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (345, 20, '国产 思锐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725494.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (346, 20, '国产 速锐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725497.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (377, 22, '合资 GL8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725179.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (378, 22, '合资 昂科拉', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725187.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (379, 22, '合资 别克', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725182.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (380, 22, '合资 君威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725183.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (381, 22, '合资 君越', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725184.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (382, 22, '合资 凯越', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725181.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (383, 22, '合资 林荫大道', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725188.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (384, 22, '合资 荣御', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725190.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (385, 22, '合资 赛欧', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725191.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (386, 22, '合资 英朗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725189.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (387, 22, '进口 Electra', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725194.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (388, 22, '进口 LeSabre', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725197.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (389, 22, '进口 Lucerne', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725198.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (390, 22, '进口 Rainier', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725200.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (391, 22, '进口 Skylark [云雀]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725206.jpg', 28, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (392, 22, '进口 Terraza', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725207.jpg', 29, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (393, 22, '进口 Enclave [昂科雷]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725195.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (394, 22, '进口 Regal [皇朝]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725202.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (395, 22, '进口 Regal [君威]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725201.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (396, 22, '进口 Lacross [君越]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725196.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (397, 22, '进口 Rendezvous [朗迪]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725203.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (398, 22, '进口 Park Avenue [林荫大道]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725199.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (399, 22, '进口 Roadmaster [路霸]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725204.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (400, 22, '进口 Royaum [荣御]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725205.jpg', 27, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (401, 22, '进口 Century [世纪]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725193.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (402, 23, '进口 Brooklands', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725369.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (403, 23, '进口 Flying Spur [飞驰]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725371.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (404, 23, '进口 Mulsanne [慕尚]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725372.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (405, 23, '进口 Continental [欧陆]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725370.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (406, 23, '进口 Azure [雅骏]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725367.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (407, 23, '进口 Arnage [雅致]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725366.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (416, 27, '国产 GA5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725934.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (417, 27, '国产 传祺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725944.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (418, 27, '国产 GS5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725941.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (427, 131, '国产 森雅S80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725014.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (435, 32, '进口 CC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725288.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (436, 32, '进口 Eos', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725292.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (437, 32, '进口 FOX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725293.jpg', 27, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (438, 32, '进口 Golf [高尔夫]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725294.jpg', 28, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (439, 32, '进口 Multivan [迈特威]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725297.jpg', 31, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (441, 32, '进口 R36', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725301.jpg', 35, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (442, 32, '进口 Phaeton [辉腾]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725300.jpg', 34, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (443, 32, '进口 Beetle [甲壳虫]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725287.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (444, 32, '进口 Jetta [捷达]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725295.jpg', 29, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (445, 32, '进口 Caravelle [卡罗瓦雷]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725291.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (446, 32, '进口 Caddy [开迪]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725289.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (447, 32, '进口 Magotan [迈腾]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725296.jpg', 30, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (448, 32, '进口 Passat [帕萨特]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725299.jpg', 33, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (449, 32, '进口 Scirocco [尚酷]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725303.jpg', 37, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (450, 32, '进口 Tiguan [途欢]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725305.jpg', 39, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (451, 32, '进口 Touareg [途锐]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725306.jpg', 40, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (452, 32, '进口 Sharan [夏朗]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725304.jpg', 38, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (453, 32, '合资 POLO', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725274.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (454, 32, '合资 高尔', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725285.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (455, 32, '合资 朗行', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725278.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (456, 32, '合资 朗逸', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725279.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (457, 32, '合资 帕萨特', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725276.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (458, 32, '合资 桑塔纳', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725280.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (459, 32, '合资 途安', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725282.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (460, 32, '合资 途观', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725284.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (461, 32, '合资 CC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725266.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (462, 32, '合资 宝来', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725267.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (463, 32, '合资 高尔夫', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725273.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (464, 32, '合资 捷达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725269.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (465, 32, '合资 开迪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725268.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (466, 32, '合资 迈腾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725271.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (467, 32, '合资 速腾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725272.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (468, 33, '合资 凯领', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725661.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (469, 33, '进口 Challenger [挑战者]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725665.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (470, 33, '进口 Charger', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725666.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (471, 33, '进口 Dakota', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725667.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (475, 33, '进口 Magnum', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725671.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (476, 33, '进口 Ram [公羊]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725674.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (477, 33, '进口 Stealth [隐形]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725675.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (478, 33, '进口 Stratus[层云]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725676.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (479, 33, '进口 Avenger [锋哲]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725662.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (480, 33, '进口 Caravan [凯领]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725664.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (481, 33, '进口 Caliber [酷博]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725663.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (482, 33, '进口 Journey [酷威]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725670.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (483, 33, '进口 Viper [蝰蛇]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725677.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (484, 33, '进口 Neon [霓虹]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725672.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (485, 33, '进口 Durango [拓远者]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725668.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (486, 33, '进口 Intrepid [无畏]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725669.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (487, 33, '进口 Nitro [翼龙]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725673.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (488, 34, '国产 EC7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725374.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (489, 34, '国产 EC8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725375.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (490, 35, '国产 东风轿跑车', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725022.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (491, 35, '国产 俊风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725023.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (492, 35, '国产 小王子', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725024.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (493, 35, '国产 御风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725025.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (494, 16168, '国产 奥丁', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725879.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (495, 16168, '国产 锐骐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725882.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (496, 16168, '国产 帅客', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725880.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (497, 16168, '国产 御轩', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725881.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (501, 37, '国产 C系列', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725871.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (502, 37, '国产 K系列', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725872.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (503, 37, '国产 V系列', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725873.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (504, 38, '国产 V5菱致', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725862.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (505, 38, '国产 V6菱仕', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725863.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (506, 38, '国产 得利卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725866.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (507, 38, '国产 富利卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725864.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (508, 38, '国产 菱动', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725868.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (509, 38, '国产 菱利', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725867.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (510, 38, '国产 菱帅', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725869.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (511, 38, '国产 V3菱悦', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725861.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (512, 38, '国产 希旺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725865.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (513, 39, '进口 348', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725542.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (514, 39, '进口 360', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725543.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (515, 39, '进口 456', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725544.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (516, 39, '进口 458', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725545.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (517, 39, '进口 512', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725547.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (518, 39, '进口 550', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725548.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (519, 39, '进口 575', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725549.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (520, 39, '进口 599', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725550.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (521, 39, '进口 612', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725551.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (522, 39, '进口 California', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725552.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (523, 39, '进口 Enzo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725553.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (524, 39, '进口 F12 Berlinetta', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725554.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (525, 39, '进口 F355', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725555.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (526, 39, '进口 F430', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725556.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (527, 39, '进口 F50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725557.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (528, 39, '进口 FF', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725558.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (529, 39, '进口 FXX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725559.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (557, 41, '进口 86', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725047.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (558, 41, '进口 4Runner', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725046.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (559, 41, '进口 Aygo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725050.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (560, 41, '进口 Echo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725058.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (561, 41, '进口 FJ Cruiser [FJ酷路泽]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725059.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (562, 41, '进口 Land Cruiser [兰德酷路泽]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725065.jpg', 31, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (563, 41, '进口 Land Cruiser Prado [普拉多]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725064.jpg', 30, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (564, 41, '进口 Mark X [锐志]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725067.jpg', 33, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (565, 41, '进口 MR2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725066.jpg', 32, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (566, 41, '进口 Paseo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725069.jpg', 35, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (567, 41, '进口 RAV4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725072.jpg', 38, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (568, 41, '进口 Solara [速乐娜]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725075.jpg', 41, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (569, 41, '进口 Supra', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725076.jpg', 42, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (570, 41, '进口 T100', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725077.jpg', 43, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (571, 41, '进口 Tacoma [塔库玛]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725078.jpg', 44, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (572, 41, '进口 Tercel [雄鹰]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725079.jpg', 45, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (573, 41, '进口 Venza [威飒]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725081.jpg', 47, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (575, 41, '进口 Zelas [杰路驰]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725084.jpg', 50, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (576, 41, '进口 Alphard [埃尔法]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725048.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (577, 41, '进口 Corona [光冠]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725056.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (578, 41, '进口 Hiace [海狮]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725061.jpg', 27, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (579, 41, '进口 Highlander [汉兰达]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725062.jpg', 28, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (580, 41, '进口 Sequoia [红杉]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725073.jpg', 39, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (581, 41, '进口 Corolla [花冠]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725055.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (582, 41, '进口 Crown [皇冠]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725057.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (583, 41, '进口 Camry [佳美]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725051.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (585, 41, '进口 Coaster [考斯特]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725054.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (586, 41, '进口 Mega [美佳]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725068.jpg', 34, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (587, 41, '进口 Prius [普锐斯]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725071.jpg', 37, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (588, 41, '进口 Previa [普瑞维亚]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725070.jpg', 36, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (589, 41, '进口 Sienna [塞纳]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725074.jpg', 40, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (590, 41, '进口 Celica [赛利卡]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725052.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (591, 41, '进口 Century [世纪]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725053.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (592, 41, '进口 Tundra [坦途]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725080.jpg', 46, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (593, 41, '进口 Wish [小霸王]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725082.jpg', 48, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (594, 41, '进口 Yaris [雅力士]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725083.jpg', 49, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (595, 41, '进口 Avalon [亚洲龙]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725049.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (596, 41, '合资 汉兰达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725086.jpg', 52, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (597, 41, '合资 凯美瑞', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725085.jpg', 51, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (598, 41, '合资 雅力士', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725088.jpg', 54, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (599, 41, '合资 逸致', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725087.jpg', 53, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (600, 41, '合资 RAV4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725034.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (601, 41, '合资 花冠', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725043.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (602, 41, '合资 皇冠', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725042.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (603, 41, '合资 卡罗拉', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725036.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (604, 41, '合资 柯斯达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725040.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (605, 41, '合资 兰德酷路泽', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725035.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (606, 41, '合资 陆地巡洋舰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725045.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (607, 41, '合资 普拉多', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725038.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (608, 41, '合资 普锐斯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725039.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (609, 41, '合资 锐志', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725044.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (610, 41, '合资 特锐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725041.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (611, 41, '合资 威驰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725037.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (612, 42, '进口 Scion', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725816.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (668, 47, '进口 Orochi [大蛇]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725952.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (669, 47, '进口 Galue Convertible [嘉路]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725950.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (670, 47, '进口 Himiko [女王]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725951.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (709, 55, '国产 超赛', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726022.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (710, 55, '国产 腾狮', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726021.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (711, 55, '国产 醒狮', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726023.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (712, 56, '国产 M203', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726025.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (713, 56, '国产 飙风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726036.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (714, 56, '国产 海锋', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726034.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (715, 56, '国产 海景', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726031.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (716, 56, '国产 海尚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726029.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (717, 56, '国产 海炫', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726032.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (718, 56, '国产 海迅', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726033.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (719, 56, '国产 海域', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726028.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (720, 56, '国产 海悦', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726030.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (721, 56, '国产 杰士达美鹿', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726027.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (722, 56, '国产 飓风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726035.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (723, 56, '国产 朗风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726026.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (724, 57, '国产 B11', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726038.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (725, 57, '国产 宝利格', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726045.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (726, 57, '国产 路盛E70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726047.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (727, 57, '国产 圣达菲', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726044.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (728, 57, '国产 特拉卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726046.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (753, 62, '国产 豪情', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725251.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (754, 62, '国产 美人豹', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725248.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (755, 62, '国产 美日', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725249.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (756, 62, '国产 优利欧', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725242.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (757, 63, '合资 城市猎人', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724996.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (758, 63, '合资 大切诺基', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724997.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (759, 63, '合资 Jeep2500', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724993.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (760, 63, '合资 Jeep2700', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724994.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (761, 16, '合资 北京212', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725219.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (762, 63, '进口 Grand Cherokee [大切诺基]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724989.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (763, 63, '进口 Wrangler [牧马人]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724992.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (764, 63, '进口 Cherokee [切诺基]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724985.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (765, 63, '进口 Commander [指挥官]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724987.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (766, 63, '进口 Compass [指南者]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724988.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (767, 63, '进口 Patriot [自由客]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724991.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (768, 63, '进口 Liberty [自由人]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724990.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (769, 131, '国产 AV6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725008.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (770, 131, '国产 佳宝T系列', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725010.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (775, 131, '国产 佳宝V系列', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725011.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (777, 131, '国产 福星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725015.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (778, 131, '国产 佳宝', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725009.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (790, 67, '进口 F-Type', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725403.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (791, 67, '进口 S-Type', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725404.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (792, 67, '进口 XF', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725407.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (793, 67, '进口 XJ', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725408.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (794, 67, '进口 XK', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725409.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (795, 67, '进口 X-Type', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725405.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (807, 69, '进口 GL级', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726050.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (808, 69, '进口 S级', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726051.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (816, 71, '合资 CTS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725156.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (817, 71, '合资 SRX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725157.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (818, 71, '合资 XTS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725159.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (819, 71, '合资 赛威SLS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725160.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (820, 71, '进口 BLS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725162.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (821, 71, '进口 Brougham', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725163.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (822, 71, '进口 Catera', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725165.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (823, 71, '进口 CTS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725164.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (824, 71, '进口 DTS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725166.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (825, 71, '进口 Eldorado', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725168.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (828, 71, '进口 Seville [塞维利亚]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725173.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (829, 71, '进口 SRX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725171.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (830, 71, '进口 STS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725172.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (831, 71, '进口 Traverse', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725174.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (832, 71, '进口 XLR', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725175.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (833, 71, '进口 Yokon', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725176.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (834, 71, '进口 Deville [帝威]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725167.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (835, 71, '进口 Escalade [凯雷德]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725169.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (836, 71, '进口 Fleetwood [伍德]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725170.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (839, 73, '合资 300C', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725971.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (840, 73, '合资 铂锐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725972.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (841, 73, '合资 大捷龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725954.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (842, 73, '进口 200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725955.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (843, 73, '进口 300', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725956.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (845, 73, '进口 Aspen', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725957.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (847, 73, '进口 PT Cruiser [PT漫步者]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725966.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (848, 73, '进口 Neon [彩虹]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725964.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (849, 73, '进口 Grand Voager [大捷龙]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725961.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (850, 73, '进口 Imperial [帝王]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725963.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (851, 73, '进口 Crossfire [交叉火力]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725960.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (852, 73, '进口 Concorde [君王]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725959.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (853, 73, '进口 New Yorker [纽约客]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725965.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (854, 73, '进口 Sebring [赛百灵]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725968.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (855, 73, '进口 Pacifica [太平洋]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725967.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (856, 73, '进口 Sundance [太阳舞]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725969.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (857, 73, '进口 Cirrus [卷云]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725958.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (858, 74, '进口 Aventador [埃文塔多]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725141.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (859, 74, '进口 Murcielago [蝙蝠]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725144.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (860, 74, '进口 Gallardo [盖拉多]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725142.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (861, 74, '进口 Reventon [雷文顿]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725145.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (862, 75, '进口 CLS-Class [CLS级]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726000.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (863, 75, '进口 ML-Class [ML级]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726001.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (864, 75, '进口 S-Class [S级]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726002.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (865, 76, '进口 Ghost [古思特]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725210.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (866, 76, '进口 Phantom [幻影]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725211.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (867, 76, '进口 Silver spur [银刺]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725213.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (868, 76, '进口 Silver Spirit [银灵]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725212.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (869, 77, '进口 CT', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725732.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (870, 77, '进口 ES', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725733.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (871, 77, '进口 GS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725734.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (872, 77, '进口 GX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725735.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (873, 77, '进口 HS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725736.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (874, 77, '进口 IS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725737.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (875, 77, '进口 LF-A', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725739.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (876, 77, '进口 LS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725740.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (877, 77, '进口 LX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725741.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (878, 77, '进口 RX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725744.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (879, 77, '进口 SC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725745.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (895, 80, '国产 320', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725982.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (896, 80, '国产 520', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725984.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (897, 80, '国产 620', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725986.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (898, 80, '国产 720', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725988.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (899, 80, '国产 X60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725991.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (900, 80, '国产 丰顺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725993.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (901, 80, '国产 兴顺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725995.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (947, 85, '进口 Discovery [发现]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725647.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (948, 85, '进口 Range Rover [揽胜]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725652.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (949, 85, '进口 Freelander [神行者]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725648.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (950, 85, '进口 Defender [卫士]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725645.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (960, 87, '进口 CX-5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725760.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (961, 87, '进口 CX-7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725761.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (962, 87, '进口 CX-9', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725762.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (963, 87, '进口 Millenia', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725771.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (964, 87, '进口 MPV', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725763.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (965, 87, '进口 MX-5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725764.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (966, 87, '进口 MX-6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725765.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (967, 87, '进口 Navajo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725772.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (968, 87, '进口 RX-7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725773.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (969, 87, '进口 RX-8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725774.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (970, 87, '进口 Tribute', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725775.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (971, 87, '进口 Mazda2 [马自达2]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725766.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (972, 87, '进口 Mazda3 [马自达3]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725767.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (973, 87, '进口 323', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725756.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (974, 87, '进口 Mazda5 [马自达5]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725768.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (975, 87, '进口 Mazda6 [马自达6]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725769.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (976, 87, '进口 626', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725757.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (977, 87, '进口 Mazda8 [马自达8]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725770.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (978, 87, '进口 929', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725758.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (979, 87, '合资 马自达6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725751.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (980, 87, '合资 马自达8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725752.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (984, 88, '进口 3200GT', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725575.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (985, 88, '进口 Coupe', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725576.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (986, 88, '进口 GranCabrio', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725579.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (987, 88, '进口 GranSport', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725580.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (988, 88, '进口 GT', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725577.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (989, 88, '进口 MC12', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725582.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (991, 88, '进口 Quattroporte [总裁]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725583.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (996, 90, '国产 MG3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725799.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (997, 90, '国产 MG5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725800.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (998, 90, '国产 MG6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725801.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (999, 90, '国产 MG7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725802.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1000, 90, '国产 MGTF', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725803.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1039, 98, '国产 A1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725317.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1040, 98, '国产 A3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725318.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1041, 98, '国产 A5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725319.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1042, 98, '国产 E5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725321.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1043, 98, '国产 QQ', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725322.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1044, 98, '国产 V5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725323.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1045, 98, '国产 爱卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725328.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1046, 98, '国产 东方之子', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725326.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1047, 98, '国产 风云', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725331.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1048, 98, '国产 风云2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725332.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1049, 98, '国产 旗云', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725327.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1050, 98, '国产 瑞虎', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725329.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1087, 101, '国产 GC7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725974.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1088, 101, '国产 GX2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725975.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1089, 101, '国产 GX7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725976.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1090, 101, '国产 熊猫', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725978.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1091, 101, '国产 远景', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725980.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1092, 101, '国产 中国龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725977.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1093, 101, '国产 自由舰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725979.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1094, 102, '合资 骏逸', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725432.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1095, 102, '合资 蓝鸟', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725425.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1096, 102, '合资 骊威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725431.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1097, 102, '合资 楼兰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725423.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1098, 102, '合资 玛驰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725424.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1099, 102, '合资 奇骏', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725422.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1100, 102, '合资 骐达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725433.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1101, 102, '合资 天籁', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725421.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1102, 102, '合资 逍客', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725428.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1103, 102, '合资 轩逸', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725427.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1104, 102, '合资 阳光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725429.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1105, 102, '合资 颐达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725430.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1106, 102, '进口 300ZX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725434.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1107, 102, '进口 350Z', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725435.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1108, 102, '进口 370Z', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725436.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1109, 102, '进口 Almera', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725437.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1110, 102, '进口 Armada', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725439.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1111, 102, '进口 Axxess', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725440.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1112, 102, '进口 Cube', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725446.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1113, 102, '进口 Frontier', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725447.jpg', 27, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1114, 102, '进口 GT-R', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725449.jpg', 29, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1115, 102, '进口 March [玛驰]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725450.jpg', 30, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1116, 102, '进口 Micra', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725453.jpg', 33, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1117, 102, '进口 Murano [楼兰]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725454.jpg', 34, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1118, 102, '进口 Pulsar', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725459.jpg', 39, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1119, 102, '进口 Rogue [奇骏]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725461.jpg', 41, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1120, 102, '进口 Sentra [阳光]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725462.jpg', 42, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1121, 102, '进口 Silvia', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725463.jpg', 43, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1122, 102, '进口 Titan', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725467.jpg', 47, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1123, 102, '进口 Altima [奥蒂玛]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725438.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1124, 102, '进口 Civilian [碧莲]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725445.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1125, 102, '进口 Cefiro [风度]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725443.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1126, 102, '进口 Fuga [风雅]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725448.jpg', 28, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1127, 102, '进口 Cedric [公爵王]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725442.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1128, 102, '进口 Quest [贵士]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725460.jpg', 40, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1129, 102, '进口 Medalist [桂冠]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725452.jpg', 32, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1130, 102, '进口 Urvan [佳奔]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725468.jpg', 48, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1131, 102, '进口 Bluebird [蓝鸟]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725441.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1132, 102, '进口 Maxima [马克西马]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725451.jpg', 31, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1133, 102, '进口 Paladin [帕拉丁]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725456.jpg', 36, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1134, 102, '进口 X-Trail [奇骏]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725469.jpg', 49, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1135, 102, '进口 Tiida [骐达]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725466.jpg', 46, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1136, 102, '进口 NX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725455.jpg', 35, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1137, 102, '进口 Patrol [途乐]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725458.jpg', 38, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1138, 102, '进口 Cima [西玛]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725444.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1139, 102, '进口 Pathfinder [寻路者]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725457.jpg', 37, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1140, 102, '进口 Sunny [阳光]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725465.jpg', 45, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1141, 102, '合资 D22皮卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725470.jpg', 50, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1142, 102, '合资 NV200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725471.jpg', 51, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1143, 102, '合资 ZN6493多功能商务车', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725472.jpg', 52, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1144, 102, '合资 凯普斯达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725473.jpg', 53, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1145, 102, '合资 帕拉丁', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725474.jpg', 54, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1146, 102, '合资 帕拉骐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725475.jpg', 55, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1165, 106, '合资 欧蓝德', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725851.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1166, 106, '合资 帕杰罗速跑', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725850.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1167, 106, '合资 戈蓝', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725845.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1168, 106, '合资 君阁', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725844.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1169, 106, '合资 蓝瑟', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725848.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1170, 106, '合资 菱绅', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725847.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1171, 106, '合资 翼神', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725846.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1172, 106, '合资 ASX劲炫', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725852.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1173, 106, '合资 帕杰罗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725855.jpg', 27, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1174, 106, '进口 ASX [劲炫]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725828.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1175, 106, '进口 Diamante', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725829.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1176, 106, '进口 Endeavor', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725831.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1177, 106, '进口 Expo', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725832.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1178, 106, '进口 GTO', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725833.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1179, 106, '进口 Maven', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725838.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1180, 106, '进口 Mirage', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725839.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1181, 106, '进口 Galant [戈蓝]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725834.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1182, 106, '进口 Grandis [格蓝迪]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725835.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1183, 106, '进口 Lancer [蓝瑟]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725837.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1184, 106, '进口 Lancer Evolution [蓝瑟 翼豪陆神]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725836.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1185, 106, '进口 Outland [欧蓝德]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725840.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1186, 106, '进口 Pajero [帕杰罗]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725841.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1187, 106, '进口 Space [太空]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725843.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1188, 106, '进口 Sigma [西格玛]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725842.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1189, 106, '进口 Eclipse [伊柯丽斯]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725830.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1191, 108, '进口 C8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725857.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1192, 109, '国产 SCEO', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726053.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1193, 109, '国产 来宝', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726055.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1194, 109, '国产 来旺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726056.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1195, 109, '国产 小贵族', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726054.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1233, 117, '国产 速威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725826.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1234, 117, '国产 泰威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725825.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1235, 117, '国产 万丰皮卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725824.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1236, 117, '国产 万丰商务车', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725823.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1245, 121, '进口 240', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725520.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1247, 121, '进口 850', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725522.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1249, 121, '进口 960', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725524.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1250, 121, '进口 C30', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725525.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1251, 121, '进口 C70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725526.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1252, 121, '进口 S40', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725527.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1253, 121, '进口 S60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725528.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1254, 121, '进口 S70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725529.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1255, 121, '进口 S80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725530.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1256, 121, '进口 S90', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725531.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1257, 121, '进口 V40', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725532.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1258, 121, '进口 V60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725533.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1259, 121, '进口 V70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725534.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1260, 121, '进口 XC60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725536.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1261, 121, '进口 XC70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725537.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1262, 121, '进口 XC90', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725538.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1263, 121, '合资 S40', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725539.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1264, 121, '合资 S80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725540.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1265, 122, '国产 PN系列货车', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725921.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1266, 122, '国产 宏光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725924.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1267, 122, '国产 鸿途', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725930.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1268, 122, '国产 柳州五菱', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725928.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1269, 122, '国产 荣光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725929.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1270, 122, '国产 五菱之光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725922.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1271, 122, '国产 小旋风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725925.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1272, 122, '国产 兴旺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725923.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1273, 122, '国产 扬光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725927.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1274, 123, '进口 Trooper [突路霸]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725916.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1323, 128, '国产 都市之星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725418.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1324, 128, '国产 新凯靓星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725417.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1325, 128, '国产 新凯商务车', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725416.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1326, 128, '国产 新凯之星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725415.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1389, 131, '国产 威乐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725017.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1390, 131, '国产 威志', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725019.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1391, 131, '国产 威姿', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725018.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1392, 132, '国产 幸福使者', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725946.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1393, 133, '进口 EX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725619.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1394, 133, '进口 FX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725620.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1395, 133, '进口 G', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725621.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1396, 133, '进口 JX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725622.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1397, 133, '进口 M', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725623.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1398, 133, '进口 Q45', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725624.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1399, 133, '进口 QX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725628.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1400, 134, '合资 SC3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725602.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1401, 134, '合资 SC5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725603.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1402, 134, '合资 SC6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725604.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1403, 134, '合资 SC7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725605.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1404, 134, '合资 SX7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725606.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1405, 134, '合资 TX4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725607.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1406, 134, '合资 金刚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725608.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1407, 134, '合资 金鹰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725609.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1414, 136, '国产 云雀', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725914.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1415, 137, '国产 CS35', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725713.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1416, 137, '国产 CX20', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725717.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1417, 137, '国产 CX30', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725718.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1418, 137, '国产 奔奔', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725721.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1419, 137, '国产 杰勋', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725724.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1420, 137, '国产 睿骋', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725725.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1421, 137, '国产 逸动', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725727.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1422, 137, '国产 悦翔', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725723.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1423, 137, '国产 志翔', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725722.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1427, 139, '国产 大脚兽', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725700.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1428, 139, '国产 风骏', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725710.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1430, 139, '国产 哈弗H3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725692.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1431, 139, '国产 哈弗H5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725693.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1432, 139, '国产 哈弗H6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725694.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1433, 139, '国产 哈弗M1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725695.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1434, 139, '国产 哈弗M2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725696.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1435, 139, '国产 哈弗M4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725697.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1436, 139, '国产 哈弗派', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725698.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1437, 139, '国产 嘉誉', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725699.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1438, 139, '国产 金迪尔', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725708.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1439, 139, '国产 酷熊', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725707.jpg', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1440, 139, '国产 凌傲', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725690.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1441, 139, '国产 赛弗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725702.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1442, 139, '国产 赛骏', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725706.jpg', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1443, 139, '国产 赛酷', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725704.jpg', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1444, 139, '国产 赛铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725705.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1445, 139, '国产 赛影', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725703.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1446, 139, '国产 炫丽', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725701.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1447, 139, '国产 C20R', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725684.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1448, 139, '国产 C30', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725685.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1449, 139, '国产 C50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725686.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1450, 139, '国产 V80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725689.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1451, 139, '国产 长城精灵', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725709.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1454, 141, '国产 H230', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725898.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1455, 141, '国产 H320', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725900.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1456, 141, '国产 H330', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725901.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1457, 141, '国产 H530', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725902.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1458, 141, '国产 V5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725904.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1459, 141, '国产 骏捷', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725910.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1460, 141, '国产 酷宝', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725909.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1461, 141, '国产 中华', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725906.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1462, 141, '国产 尊驰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725908.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1463, 142, '国产 中顺世纪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725912.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1464, 143, '国产 驰野', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725895.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1465, 143, '国产 福星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725891.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1466, 143, '国产 老虎', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725892.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1467, 143, '国产 旗舰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725888.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1468, 143, '国产 田野', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725890.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1469, 143, '国产 万禧龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725886.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1470, 143, '国产 威虎', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725887.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1471, 143, '国产 无限', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725889.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1472, 144, '国产 008', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725098.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1473, 144, '国产 M300', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725101.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1474, 144, '国产 T200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725104.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1475, 144, '国产 V10', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725108.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1476, 144, '国产 Z200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725110.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1477, 144, '国产 Z300', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725111.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (1478, 144, '国产 江南TT', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725119.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16166, 0, 'Alpina', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724982.jpg', 0, 1, NULL, 2, 'A');
INSERT INTO `car_brand` VALUES (16167, 0, '北京', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726003.png', 102, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (16168, 0, '东风风度', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725875.png', 87, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (16169, 0, 'RUF', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725001.jpg', 2, 1, NULL, 2, 'R');
INSERT INTO `car_brand` VALUES (16170, 0, '中欧', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725029.jpg', 6, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (16171, 0, '九龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725093.jpg', 9, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (16172, 0, '依维柯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725122.jpg', 12, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (16173, 0, '华阳', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725227.jpg', 20, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (16174, 0, '卡威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725233.jpg', 23, 1, NULL, 2, 'K');
INSERT INTO `car_brand` VALUES (16175, 0, '启腾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725261.jpg', 26, 1, NULL, 2, 'Q');
INSERT INTO `car_brand` VALUES (16176, 0, '天马', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725310.jpg', 29, 1, NULL, 2, 'T');
INSERT INTO `car_brand` VALUES (16177, 0, '幻速', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725376.jpg', 36, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (16178, 0, '庆铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725385.jpg', 37, 1, NULL, 2, 'Q');
INSERT INTO `car_brand` VALUES (16179, 0, '庞蒂克', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725389.jpg', 38, 1, NULL, 2, 'P');
INSERT INTO `car_brand` VALUES (16180, 0, '恒天', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725391.jpg', 39, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (16181, 0, '扬子', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725393.jpg', 40, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (16182, 0, '江铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725505.jpg', 48, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (16184, 0, '罗孚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725590.jpg', 55, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (16185, 0, '美亚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725593.jpg', 56, 1, NULL, 2, 'M');
INSERT INTO `car_brand` VALUES (16186, 0, '腾势', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725598.jpg', 57, 1, NULL, 2, 'T');
INSERT INTO `car_brand` VALUES (16187, 0, '观致', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725636.jpg', 62, 1, NULL, 2, 'G');
INSERT INTO `car_brand` VALUES (16189, 0, '赛宝', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725639.jpg', 63, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (16190, 0, '迈凯伦', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725653.jpg', 65, 1, NULL, 2, 'M');
INSERT INTO `car_brand` VALUES (16191, 0, '金程', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725680.jpg', 68, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (16192, 0, '陕汽通家', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725728.jpg', 71, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (16905, 1, '合资 DS5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725779.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16906, 63, '进口 Cherokee [自由光]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724986.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16907, 63, '合资 切诺基', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724995.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16908, 16169, '进口 CTR', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725002.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16909, 16169, '进口 XL', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725003.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16910, 131, '国产 森雅M80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725012.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16911, 131, '国产 自由风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725016.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16912, 106, '合资 风迪思', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725849.jpg', 21, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16913, 106, '合资 帕杰罗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725853.jpg', 25, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16914, 35, '国产 猛士', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725026.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16915, 35, '国产 途逸', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725027.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16916, 35, '国产 风神水星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725028.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16917, 37, '国产 风光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725874.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16918, 16168, '国产 俊风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725878.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16919, 143, '国产 C3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725884.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16920, 143, '国产 长铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725893.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16921, 141, '国产 H220', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725897.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16922, 16170, '国产 尊致', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725030.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16923, 16170, '国产 尊逸', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725031.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16924, 16170, '国产 尊铂', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725032.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16925, 16171, '国产 九龙', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725094.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16926, 144, '国产 E20(知豆)', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725099.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16927, 144, '国产 T600', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725106.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16928, 144, '国产 Z100', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725109.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16929, 27, '国产 GA3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725932.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16930, 16172, '国产 依维柯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725123.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16931, 16172, '国产 宝迪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725124.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16932, 16172, '国产 康果', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725125.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16933, 16172, '国产 康驾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725126.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16934, 16172, '国产 得意', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725127.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16935, 16172, '国产 快运王', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725128.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16936, 16172, '国产 都灵V', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725129.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16937, 15, '进口 918', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725132.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16938, 15, '进口 Macan', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725138.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16939, 74, '进口 Huracan', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725143.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16940, 71, '进口 ATS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725161.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16941, 80, '国产 330', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725983.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16942, 80, '国产 530', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725985.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16943, 80, '国产 630', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725987.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16944, 80, '国产 福顺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725996.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16945, 76, '进口 Wraith [魅影]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725214.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16946, 16167, '国产 BJ40', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726005.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16947, 16, '国产 6460', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725216.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16948, 57, '国产 吉田', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726043.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16949, 16173, '国产 五菱', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725228.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16950, 16174, '国产 K1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725234.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16951, 62, '国产 SC3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725241.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16952, 62, '国产 远景', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725253.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16956, 16175, '国产 M70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725263.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16961, 32, '合资 朗境', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725277.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16962, 32, '进口 Caravelle [凯路威]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725290.jpg', 24, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16963, 32, '进口 POLO [波罗]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725298.jpg', 32, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16964, 29, '国产 森雅', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725309.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16966, 16176, '国产 海狮', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725311.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16967, 16176, '国产 英雄', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725312.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16968, 16176, '国产 风锐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725313.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16969, 16176, '国产 风驰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725314.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16970, 16176, '国产 骏驰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725315.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16971, 98, '国产 E3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725320.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16972, 98, '国产 艾瑞泽', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725330.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16977, 9, '合资 A3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725336.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16985, 16177, '国产 S2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725380.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16986, 16177, '国产 S3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725381.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16987, 16178, '国产 庆铃皮卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725387.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16988, 16178, '国产 竞技者', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725388.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16989, 16179, '进口 Trams-AM [火鸟]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725390.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16990, 16180, '国产 途腾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725392.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16991, 16181, '国产 金麒麟', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725394.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16992, 16181, '国产 长丰DUV', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725395.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16993, 16181, '国产 飞扬', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725396.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16994, 16181, '国产 飞扬皮卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725397.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16995, 16181, '国产 飞铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725398.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (16999, 102, '进口 Stanza [蓝鸟]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725464.png', 44, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17009, 20, '国产 秦', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725496.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17011, 16182, '国产 域虎', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725508.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17012, 16182, '国产 宝典', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725509.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17013, 16182, '国产 宝威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725510.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17014, 16182, '国产 江铃轻卡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725511.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17015, 16182, '国产 驭胜', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725513.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17016, 121, '合资 S60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725516.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17025, 88, '进口 Ghibli', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725578.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17040, 16184, '进口 75', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725591.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17041, 16184, '进口 TF', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725592.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17042, 16185, '国产 奇兵', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725594.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17043, 16185, '国产 奇骏', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725595.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17044, 16185, '国产 海狮', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725596.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17045, 16185, '国产 顺风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725597.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17046, 16186, '合资 腾势', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725599.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17047, 133, '进口 Q50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725625.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17048, 133, '进口 Q60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725626.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17049, 133, '进口 Q70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725627.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17050, 133, '进口 QX50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725630.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17051, 133, '进口 QX60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725631.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17052, 133, '进口 QX70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725632.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17053, 133, '进口 QX80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725633.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17059, 16187, '合资 观致3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725637.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17061, 16189, '国产 赛宝', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725640.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17063, 16190, '进口 12C', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725654.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17064, 16190, '进口 650S', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725658.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17066, 16191, '国产 赛风', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725681.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17067, 16191, '国产 金程之星', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725682.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17070, 139, '国产 M2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725687.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17071, 139, '国产 M4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725688.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17072, 139, '国产 哈弗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725691.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17073, 137, '国产 CS75', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725715.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17074, 137, '国产 致尚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725726.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17091, 16192, '国产 福家', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725729.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17092, 16192, '国产 龙锐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725730.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17096, 87, '合资 CX-5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725753.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17097, 87, '合资 马自达2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725754.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (17098, 87, '合资 马自达3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725755.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (47781, 62, '国产 海景', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725246.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (47792, 62, '国产 GX7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725240.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48101, 22, '合资 昂科威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725186.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48139, 20, '国产 S7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725488.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48178, 144, '国产 云100', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725116.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48220, 131, '国产 骏派', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725020.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48244, 80, '国产 X50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725990.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48293, 16190, '进口 540C', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725655.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48339, 39, '进口 488', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725546.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48364, 0, '凯翼', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725147.jpg', 15, 1, NULL, 2, 'K');
INSERT INTO `car_brand` VALUES (48365, 48364, '国产 C3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725148.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48414, 62, '国产 博瑞', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725243.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48506, 16, '国产 BW007', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725217.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48590, 41, '合资 雷凌', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725089.jpg', 55, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48597, 0, '猎豹', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725562.jpg', 51, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (48598, 48597, '国产 CS10', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725563.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (48646, 27, '国产 GS4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725940.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (55487, 16167, '国产 E150EV', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726008.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (55498, 16167, '国产 ES210', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726012.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (55503, 16167, '国产 EV200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726017.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (55508, 16167, '国产 EV160', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726016.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (55828, 20, '国产 G5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725483.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (57060, 0, '英致', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725610.jpg', 59, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (57061, 57060, '国产 G3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725613.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (57449, 133, '合资 Q50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725616.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (57454, 133, '合资 QX50', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725617.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (60892, 27, '国产 GA6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725935.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61106, 62, '国产 帝豪', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725245.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61137, 62, '国产 豪情SUV', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725252.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61148, 62, '国产 EC8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725239.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61154, 62, '国产 金刚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725258.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61645, 48597, '国产 飞腾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725571.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61666, 48597, '国产 CS7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725565.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61678, 48597, '国产 Q6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725569.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61684, 48597, '国产 奇兵', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725570.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61694, 48597, '国产 黑金刚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725573.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61715, 48597, '国产 CS6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725564.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61737, 48597, '国产 CT5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725567.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61771, 48597, '国产 骐菱', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725572.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (61836, 71, '合资 ATS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725154.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (62836, 62, '国产 自由舰', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725250.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (64185, 16177, '国产 H2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725377.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (65368, 16182, '国产 骐铃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725514.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (65599, 123, '合资 D-MAX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725917.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (65789, 80, '国产 乐途', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725994.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (66056, 85, '合资 揽胜', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725643.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (66452, 90, '国产 MG GT', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725797.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (66462, 90, '国产 MG GS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725796.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (66584, 87, '合资 CX-7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725750.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (66715, 1, '合资 DS 5LS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725778.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (66724, 1, '合资 DS6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725780.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (67225, 98, '国产 eQ', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725324.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (68916, 32, '合资 凌渡', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725275.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (69597, 121, '合资 XC90', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725519.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (69602, 121, '合资 XC60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725518.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (69891, 122, '国产 征程', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725926.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (69995, 128, '国产 凯胜', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725414.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (70208, 0, '华颂', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725229.jpg', 21, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (70209, 70208, '国产 华颂7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725230.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (70594, 16168, '国产 MX6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725877.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (70855, 141, '国产 中华豚', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725907.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (71188, 144, '国产 Z500', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725113.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (71336, 143, '国产 GX3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725885.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (72573, 39, '进口 LaFerrari', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725561.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (72949, 67, '进口 XE', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725406.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (73398, 85, '进口 Discovery Sport [发现神行]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725646.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (75714, 9, '进口 100', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725341.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (77724, 3, '进口 Mini 5-Door', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725810.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (82950, 2, '进口 Terrain', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725793.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (82979, 16190, '进口 625C', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725657.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (84746, 32, '进口 up!', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725307.jpg', 41, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (87260, 133, '进口 ESQ', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725618.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (88466, 77, '进口 RC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725743.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (88471, 77, '进口 NX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725742.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (90770, 121, '进口 740', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725521.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (90793, 121, '进口 940', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725523.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92218, 38, '国产 DX7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725860.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92279, 123, '合资 mu-X', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725918.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92340, 20, '国产 唐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725492.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92404, 22, '合资 威朗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725185.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92425, 62, '国产 熊猫', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725247.jpg', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92462, 80, '国产 820', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725989.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92512, 141, '国产 V3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725903.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92935, 16177, '国产 H3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725378.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (92964, 57060, '国产 737', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725612.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93023, 144, '国产 大迈X5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725117.jpg', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93028, 16174, '国产 W1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725236.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93050, 16175, '国产 EX80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725262.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93129, 23, '进口 Bentayga [添越]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725368.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93144, 20, '国产 宋', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725493.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93262, 85, '合资 发现神行', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725642.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93421, 63, '合资 自由光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725000.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93502, 16177, '国产 S6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725383.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93581, 16167, '国产 EU260', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726014.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (93631, 123, '合资 瑞迈', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725919.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94013, 144, '国产 芝麻E30', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725121.png', 23, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94044, 144, '国产 Z700', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725115.jpg', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94225, 144, '国产 SR7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725102.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94231, 71, '合资 CT6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725155.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94449, 41, '进口 Fortuner', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725060.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94500, 88, '进口 Levante', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725581.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94626, 62, '国产 博越', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725244.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94636, 57, '国产 iEV230', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726042.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94659, 16187, '合资 观致5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725638.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94693, 57060, '国产 727', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725611.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94754, 20, '国产 e5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725490.jpg', 12, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94885, 67, '进口 F-PACE', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725402.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94901, 16190, '进口 570', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725656.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94939, 16167, '国产 BJ80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726006.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94945, 20, '国产 元', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725491.jpg', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94954, 71, '合资 XT5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725158.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (94994, 27, '国产 GA8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725936.jpg', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95024, 137, '国产 CS15', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725712.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95057, 102, '合资 西玛', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725426.jpg', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95078, 1, '合资 DS 4S', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725777.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95094, 137, '国产 CX70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725719.jpg', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95099, 16167, '国产 EX200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726019.png', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95117, 0, '宝沃', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725356.jpg', 32, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (95118, 95117, '合资 BX7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725358.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95133, 131, '国产 森雅R7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725013.jpg', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95138, 144, '国产 E200', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725100.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95193, 39, '进口 GTC4Lusso', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725560.jpg', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95274, 80, '国产 迈威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725998.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95290, 0, '知豆', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725584.jpg', 53, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (95291, 95290, '国产 D2', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725586.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95298, 95290, '国产 D1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725585.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95329, 63, '合资 自由侠', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724999.jpg', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95495, 48364, '国产 X3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725151.png', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95537, 87, '合资 CX-4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725749.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95588, 57, '国产 XEV260', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726041.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95940, 57, '国产 路盛E80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726048.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (95945, 48364, '国产 V3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725150.jpg', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96001, 62, '国产 远景SUV', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725255.jpg', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96028, 0, '斯威', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725410.png', 42, 1, NULL, 2, 'S');
INSERT INTO `car_brand` VALUES (96029, 96028, '国产 X7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725412.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96034, 67, '合资 XF', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725401.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96048, 106, '合资 欧蓝德', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725854.jpg', 26, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96197, 0, '汉腾', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725502.jpg', 47, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (96198, 96197, '国产 X7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725504.jpg', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96327, 16167, '国产 BJ20', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726004.jpg', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96438, 16167, '国产 EU', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726013.jpg', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96564, 57060, '国产 G5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725614.jpg', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96606, 32, '合资 辉昂', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725281.jpg', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96622, 27, '国产 GS8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725943.jpg', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96651, 143, '国产 领主', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725894.jpg', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96746, 16177, '国产 H6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725379.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96759, 144, '国产 SR9', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725103.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96771, 16175, '国产 V60', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725264.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96801, 133, '进口 QX30', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725629.png', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96895, 16168, '国产 MX5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725876.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96957, 32, '合资 蔚领', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725270.png', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (96982, 38, '国产 DX3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725859.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97225, 32, '进口 Amarok', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725286.png', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97254, 121, '合资 S90', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725517.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97266, 63, '合资 指南者', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128724998.png', 13, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97309, 0, '比速', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725498.png', 46, 1, NULL, 2, 'B');
INSERT INTO `car_brand` VALUES (97310, 97309, '国产 T3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725500.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97343, 16167, '国产 EX', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726018.png', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97459, 16167, '国产 EV', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726015.png', 11, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97627, 97309, '国产 M3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725499.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97794, 16167, '国产 ES', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726011.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97880, 32, '进口 Routan', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725302.png', 36, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97970, 16167, '国产 EC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726009.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (97975, 48597, '国产 CT7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725568.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98364, 90, '国产 MG ZS', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725798.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98369, 144, '国产 Z560', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725114.png', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98393, 80, '国产 X80', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725992.png', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98411, 41, '进口 Hilux', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725063.png', 29, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98416, 80, '国产 轩朗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725997.png', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98422, 32, '合资 途昂', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725283.png', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98440, 95117, '合资 BX5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725357.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98491, 137, '国产 CS95', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725716.png', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98503, 16174, '国产 K150', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725235.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98553, 16177, '国产 S5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725382.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98567, 141, '国产 H3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725899.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98572, 98, '国产 eQ1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725325.png', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98602, 144, '国产 大迈X7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725118.png', 20, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98751, 76, '进口 Dawn [曜影]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725209.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98779, 48597, '国产 CS9', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725566.png', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98789, 144, '国产 芝麻', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725120.png', 22, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98802, 0, 'WEY', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725004.png', 3, 1, NULL, 2, 'W');
INSERT INTO `car_brand` VALUES (98803, 98802, '国产 VV7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725006.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98821, 16190, '进口 720S', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725659.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98846, 16167, '国产 EH', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726010.png', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98860, 22, '合资 VELITE', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725180.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (98974, 121, '进口 V90', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725535.png', 19, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99012, 16182, '国产 特顺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725512.png', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99019, 144, '国产 T700', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725107.png', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99028, 62, '国产 远景X1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725256.png', 17, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99041, 144, '国产 Z360', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725112.png', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99052, 137, '国产 凌轩', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725720.png', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99102, 16182, '国产 E160', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725506.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99113, 85, '进口 Range Rover Sport [揽胜运动版]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725650.png', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99120, 0, '之诺', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725090.png', 8, 1, NULL, 2, 'Z');
INSERT INTO `car_brand` VALUES (99121, 99120, '国产 60H', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725092.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99135, 16182, '国产 E200S', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725507.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99170, 57, '国产 EV160B', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726039.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99178, 97309, '国产 T5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725501.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99202, 99120, '合资 1E', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725091.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99213, 102, '合资 纳瓦拉', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725476.png', 56, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99333, 96028, '国产 X3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725411.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99363, 85, '合资 揽胜极光', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725644.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99516, 102, '合资 劲客', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725420.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99524, 137, '国产 CS55', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725714.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99569, 27, '国产 GE3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725937.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99595, 57, '国产 EV160R', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128726040.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99635, 85, '进口 Range Rover Evoque [揽胜极光]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725649.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99646, 27, '国产 GS3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725939.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99655, 144, '国产 T300', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725105.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99664, 62, '国产 远景X3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725257.png', 18, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99760, 73, '合资 300', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725970.png', 16, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99783, 27, '国产 GS7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725942.png', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (99954, 98802, '国产 VV5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725005.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100007, 73, '进口 Grand Voyager [大捷龙]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725962.png', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100124, 85, '进口 Range Rover Velar [揽胜星脉]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725651.png', 9, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100158, 16174, '国产 路易斯', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725237.png', 3, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100178, 48364, '国产 X5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725152.png', 4, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100442, 0, '云度', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725095.png', 10, 1, NULL, 2, 'Y');
INSERT INTO `car_brand` VALUES (100443, 100442, '国产 π1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725096.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100463, 22, '合资 GL6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725178.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100480, 96197, '国产 X5', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725503.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100639, 22, '合资 阅朗', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725192.png', 14, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100807, 0, '华骐', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725231.png', 22, 1, NULL, 2, 'H');
INSERT INTO `car_brand` VALUES (100808, 100807, '国产 300E', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725232.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100951, 87, '进口 CX-3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725759.png', 10, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (100987, 0, '领克', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725746.png', 73, 1, NULL, 2, 'L');
INSERT INTO `car_brand` VALUES (100988, 100987, '合资 领克01', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725747.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101048, 62, '国产 远景S1', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725254.png', 15, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101066, 16177, '国产 S7', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725384.png', 7, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101184, 48364, '国产 E3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725149.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101314, 95290, '国产 D3', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725587.png', 2, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101327, 67, '合资 XE', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725400.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101418, 27, '国产 GM8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725938.png', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101442, 2, '进口 Savana [商务之星]', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725790.png', 5, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101466, 141, '国产 V6', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725905.png', 8, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101493, 0, '蔚来', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725634.png', 61, 1, NULL, 2, 'W');
INSERT INTO `car_brand` VALUES (101494, 101493, '国产 ES8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725635.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101554, 16178, '国产 TAGA', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725386.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101579, 0, '祺智', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725588.png', 54, 1, NULL, 2, 'Q');
INSERT INTO `car_brand` VALUES (101580, 101579, '国产 祺智', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725589.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101601, 16186, '合资 腾势', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725600.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101631, 0, '君马', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725259.png', 25, 1, NULL, 2, 'J');
INSERT INTO `car_brand` VALUES (101632, 101631, '国产 S70', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725260.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101669, 77, '进口 LC', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725738.png', 6, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101716, 27, '国产 GA4', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725933.png', 1, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101732, 0, '道达', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725678.png', 67, 1, NULL, 2, 'D');
INSERT INTO `car_brand` VALUES (101733, 101732, '国产 V8', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725679.png', 0, 2, NULL, 2, '');
INSERT INTO `car_brand` VALUES (101895, 74, '进口 Urus', 'https://jmall.oss-cn-hangzhou.aliyuncs.com/car/41096872128725146.png', 5, 2, NULL, 2, '');

-- ----------------------------
-- Table structure for car_number_plates
-- ----------------------------
DROP TABLE IF EXISTS `car_number_plates`;
CREATE TABLE `car_number_plates`  (
  `id` int(11) NOT NULL,
  `name` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `fw` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car_number_plates
-- ----------------------------
INSERT INTO `car_number_plates` VALUES (2, '川', 0, 'C');
INSERT INTO `car_number_plates` VALUES (3, '川A', 2, 'C');
INSERT INTO `car_number_plates` VALUES (4, '川B', 2, 'C');
INSERT INTO `car_number_plates` VALUES (5, '川C', 2, 'C');
INSERT INTO `car_number_plates` VALUES (6, '川D', 2, 'C');
INSERT INTO `car_number_plates` VALUES (7, '川E', 2, 'C');
INSERT INTO `car_number_plates` VALUES (8, '川F', 2, 'C');
INSERT INTO `car_number_plates` VALUES (9, '川H', 2, 'C');
INSERT INTO `car_number_plates` VALUES (10, '川J', 2, 'C');
INSERT INTO `car_number_plates` VALUES (11, '川K', 2, 'C');
INSERT INTO `car_number_plates` VALUES (12, '川L', 2, 'C');
INSERT INTO `car_number_plates` VALUES (13, '川M', 2, 'C');
INSERT INTO `car_number_plates` VALUES (14, '川Q', 2, 'C');
INSERT INTO `car_number_plates` VALUES (15, '川R', 2, 'C');
INSERT INTO `car_number_plates` VALUES (16, '川S', 2, 'C');
INSERT INTO `car_number_plates` VALUES (17, '川T', 2, 'C');
INSERT INTO `car_number_plates` VALUES (18, '川U', 2, 'C');
INSERT INTO `car_number_plates` VALUES (19, '川V', 2, 'C');
INSERT INTO `car_number_plates` VALUES (20, '川W', 2, 'C');
INSERT INTO `car_number_plates` VALUES (21, '川X', 2, 'C');
INSERT INTO `car_number_plates` VALUES (22, '川Y', 2, 'C');
INSERT INTO `car_number_plates` VALUES (23, '川Z', 2, 'C');
INSERT INTO `car_number_plates` VALUES (24, '鄂', 0, 'E');
INSERT INTO `car_number_plates` VALUES (25, '鄂A', 24, 'E');
INSERT INTO `car_number_plates` VALUES (26, '鄂B', 24, 'E');
INSERT INTO `car_number_plates` VALUES (27, '鄂C', 24, 'E');
INSERT INTO `car_number_plates` VALUES (28, '鄂D', 24, 'E');
INSERT INTO `car_number_plates` VALUES (29, '鄂E', 24, 'E');
INSERT INTO `car_number_plates` VALUES (30, '鄂F', 24, 'E');
INSERT INTO `car_number_plates` VALUES (31, '鄂G', 24, 'E');
INSERT INTO `car_number_plates` VALUES (32, '鄂H', 24, 'E');
INSERT INTO `car_number_plates` VALUES (33, '鄂J', 24, 'E');
INSERT INTO `car_number_plates` VALUES (34, '鄂K', 24, 'E');
INSERT INTO `car_number_plates` VALUES (35, '鄂L', 24, 'E');
INSERT INTO `car_number_plates` VALUES (36, '鄂M', 24, 'E');
INSERT INTO `car_number_plates` VALUES (37, '鄂N', 24, 'E');
INSERT INTO `car_number_plates` VALUES (38, '鄂P', 24, 'E');
INSERT INTO `car_number_plates` VALUES (39, '鄂Q', 24, 'E');
INSERT INTO `car_number_plates` VALUES (40, '鄂R', 24, 'E');
INSERT INTO `car_number_plates` VALUES (41, '鄂S', 24, 'E');
INSERT INTO `car_number_plates` VALUES (42, '桂', 0, 'G');
INSERT INTO `car_number_plates` VALUES (43, '桂A', 42, 'G');
INSERT INTO `car_number_plates` VALUES (44, '桂B', 42, 'G');
INSERT INTO `car_number_plates` VALUES (45, '桂C', 42, 'G');
INSERT INTO `car_number_plates` VALUES (46, '桂D', 42, 'G');
INSERT INTO `car_number_plates` VALUES (47, '桂E', 42, 'G');
INSERT INTO `car_number_plates` VALUES (48, '桂F', 42, 'G');
INSERT INTO `car_number_plates` VALUES (49, '桂G', 42, 'G');
INSERT INTO `car_number_plates` VALUES (50, '桂H', 42, 'G');
INSERT INTO `car_number_plates` VALUES (51, '桂J', 42, 'G');
INSERT INTO `car_number_plates` VALUES (52, '桂K', 42, 'G');
INSERT INTO `car_number_plates` VALUES (53, '桂M', 42, 'G');
INSERT INTO `car_number_plates` VALUES (54, '桂L', 42, 'G');
INSERT INTO `car_number_plates` VALUES (55, '桂N', 42, 'G');
INSERT INTO `car_number_plates` VALUES (56, '桂P', 42, 'G');
INSERT INTO `car_number_plates` VALUES (57, '桂R', 42, 'G');
INSERT INTO `car_number_plates` VALUES (58, '甘', 0, 'G');
INSERT INTO `car_number_plates` VALUES (59, '甘A', 58, 'G');
INSERT INTO `car_number_plates` VALUES (60, '甘B', 58, 'G');
INSERT INTO `car_number_plates` VALUES (61, '甘C', 58, 'G');
INSERT INTO `car_number_plates` VALUES (62, '甘D', 58, 'G');
INSERT INTO `car_number_plates` VALUES (63, '甘E', 58, 'G');
INSERT INTO `car_number_plates` VALUES (64, '甘F', 58, 'G');
INSERT INTO `car_number_plates` VALUES (65, '甘G', 58, 'G');
INSERT INTO `car_number_plates` VALUES (66, '甘H', 58, 'G');
INSERT INTO `car_number_plates` VALUES (67, '甘J', 58, 'G');
INSERT INTO `car_number_plates` VALUES (68, '甘K', 58, 'G');
INSERT INTO `car_number_plates` VALUES (69, '甘L', 58, 'G');
INSERT INTO `car_number_plates` VALUES (70, '甘M', 58, 'G');
INSERT INTO `car_number_plates` VALUES (71, '甘N', 58, 'G');
INSERT INTO `car_number_plates` VALUES (72, '甘P', 58, 'G');
INSERT INTO `car_number_plates` VALUES (73, '贵', 0, 'G');
INSERT INTO `car_number_plates` VALUES (74, '贵A', 73, 'G');
INSERT INTO `car_number_plates` VALUES (75, '贵B', 73, 'G');
INSERT INTO `car_number_plates` VALUES (76, '贵C', 73, 'G');
INSERT INTO `car_number_plates` VALUES (77, '贵D', 73, 'G');
INSERT INTO `car_number_plates` VALUES (78, '贵E', 73, 'G');
INSERT INTO `car_number_plates` VALUES (79, '贵F', 73, 'G');
INSERT INTO `car_number_plates` VALUES (80, '贵G', 73, 'G');
INSERT INTO `car_number_plates` VALUES (81, '贵H', 73, 'G');
INSERT INTO `car_number_plates` VALUES (82, '贵J', 73, 'G');
INSERT INTO `car_number_plates` VALUES (83, '赣', 0, 'G');
INSERT INTO `car_number_plates` VALUES (84, '赣A', 83, 'G');
INSERT INTO `car_number_plates` VALUES (85, '赣B', 83, 'G');
INSERT INTO `car_number_plates` VALUES (86, '赣C', 83, 'G');
INSERT INTO `car_number_plates` VALUES (87, '赣D', 83, 'G');
INSERT INTO `car_number_plates` VALUES (88, '赣E', 83, 'G');
INSERT INTO `car_number_plates` VALUES (89, '赣F', 83, 'G');
INSERT INTO `car_number_plates` VALUES (90, '赣G', 83, 'G');
INSERT INTO `car_number_plates` VALUES (91, '赣H', 83, 'G');
INSERT INTO `car_number_plates` VALUES (92, '赣J', 83, 'G');
INSERT INTO `car_number_plates` VALUES (93, '赣K', 83, 'G');
INSERT INTO `car_number_plates` VALUES (94, '赣L', 83, 'G');
INSERT INTO `car_number_plates` VALUES (95, '赣M', 83, 'G');
INSERT INTO `car_number_plates` VALUES (96, '沪', 0, 'H');
INSERT INTO `car_number_plates` VALUES (97, '沪A', 96, 'H');
INSERT INTO `car_number_plates` VALUES (98, '沪B', 96, 'H');
INSERT INTO `car_number_plates` VALUES (99, '沪C', 96, 'H');
INSERT INTO `car_number_plates` VALUES (100, '沪D', 96, 'H');
INSERT INTO `car_number_plates` VALUES (101, '沪R', 96, 'H');
INSERT INTO `car_number_plates` VALUES (102, '沪E', 96, 'H');
INSERT INTO `car_number_plates` VALUES (103, '沪F', 96, 'H');
INSERT INTO `car_number_plates` VALUES (104, '沪G', 96, 'H');
INSERT INTO `car_number_plates` VALUES (105, '沪H', 96, 'H');
INSERT INTO `car_number_plates` VALUES (106, '沪J', 96, 'H');
INSERT INTO `car_number_plates` VALUES (107, '沪K', 96, 'H');
INSERT INTO `car_number_plates` VALUES (108, '沪L', 96, 'H');
INSERT INTO `car_number_plates` VALUES (109, '沪M', 96, 'H');
INSERT INTO `car_number_plates` VALUES (110, '沪N', 96, 'H');
INSERT INTO `car_number_plates` VALUES (111, '黑', 0, 'H');
INSERT INTO `car_number_plates` VALUES (112, '黑A', 111, 'H');
INSERT INTO `car_number_plates` VALUES (113, '黑B', 111, 'H');
INSERT INTO `car_number_plates` VALUES (114, '黑C', 111, 'H');
INSERT INTO `car_number_plates` VALUES (115, '黑D', 111, 'H');
INSERT INTO `car_number_plates` VALUES (116, '黑E', 111, 'H');
INSERT INTO `car_number_plates` VALUES (117, '黑F', 111, 'H');
INSERT INTO `car_number_plates` VALUES (118, '黑G', 111, 'H');
INSERT INTO `car_number_plates` VALUES (119, '黑H', 111, 'H');
INSERT INTO `car_number_plates` VALUES (120, '黑J', 111, 'H');
INSERT INTO `car_number_plates` VALUES (121, '黑K', 111, 'H');
INSERT INTO `car_number_plates` VALUES (122, '黑L', 111, 'H');
INSERT INTO `car_number_plates` VALUES (123, '黑M', 111, 'H');
INSERT INTO `car_number_plates` VALUES (124, '黑N', 111, 'H');
INSERT INTO `car_number_plates` VALUES (125, '黑P', 111, 'H');
INSERT INTO `car_number_plates` VALUES (126, '黑R', 111, 'H');
INSERT INTO `car_number_plates` VALUES (127, '京', 0, 'J');
INSERT INTO `car_number_plates` VALUES (128, '京A', 127, 'J');
INSERT INTO `car_number_plates` VALUES (129, '京B', 127, 'J');
INSERT INTO `car_number_plates` VALUES (130, '京C', 127, 'J');
INSERT INTO `car_number_plates` VALUES (131, '京E', 127, 'J');
INSERT INTO `car_number_plates` VALUES (132, '京F', 127, 'J');
INSERT INTO `car_number_plates` VALUES (133, '京G', 127, 'J');
INSERT INTO `car_number_plates` VALUES (134, '京O', 127, 'J');
INSERT INTO `car_number_plates` VALUES (135, '京H', 127, 'J');
INSERT INTO `car_number_plates` VALUES (136, '京J', 127, 'J');
INSERT INTO `car_number_plates` VALUES (137, '京K', 127, 'J');
INSERT INTO `car_number_plates` VALUES (138, '京L', 127, 'J');
INSERT INTO `car_number_plates` VALUES (139, '京M', 127, 'J');
INSERT INTO `car_number_plates` VALUES (140, '京N', 127, 'J');
INSERT INTO `car_number_plates` VALUES (141, '京Q', 127, 'J');
INSERT INTO `car_number_plates` VALUES (142, '京P', 127, 'J');
INSERT INTO `car_number_plates` VALUES (143, '京Y', 127, 'J');
INSERT INTO `car_number_plates` VALUES (144, '京V', 127, 'J');
INSERT INTO `car_number_plates` VALUES (145, '冀', 0, 'J');
INSERT INTO `car_number_plates` VALUES (146, '冀A', 145, 'J');
INSERT INTO `car_number_plates` VALUES (147, '冀B', 145, 'J');
INSERT INTO `car_number_plates` VALUES (148, '冀C', 145, 'J');
INSERT INTO `car_number_plates` VALUES (149, '冀D', 145, 'J');
INSERT INTO `car_number_plates` VALUES (150, '冀E', 145, 'J');
INSERT INTO `car_number_plates` VALUES (151, '冀F', 145, 'J');
INSERT INTO `car_number_plates` VALUES (152, '冀G', 145, 'J');
INSERT INTO `car_number_plates` VALUES (153, '冀H', 145, 'J');
INSERT INTO `car_number_plates` VALUES (154, '冀J', 145, 'J');
INSERT INTO `car_number_plates` VALUES (155, '冀R', 145, 'J');
INSERT INTO `car_number_plates` VALUES (156, '冀S', 145, 'J');
INSERT INTO `car_number_plates` VALUES (157, '冀T', 145, 'J');
INSERT INTO `car_number_plates` VALUES (158, '冀K', 145, 'J');
INSERT INTO `car_number_plates` VALUES (159, '冀L', 145, 'J');
INSERT INTO `car_number_plates` VALUES (160, '冀N', 145, 'J');
INSERT INTO `car_number_plates` VALUES (161, '冀P', 145, 'J');
INSERT INTO `car_number_plates` VALUES (162, '吉', 0, 'J');
INSERT INTO `car_number_plates` VALUES (163, '吉A', 162, 'J');
INSERT INTO `car_number_plates` VALUES (164, '吉B', 162, 'J');
INSERT INTO `car_number_plates` VALUES (165, '吉C', 162, 'J');
INSERT INTO `car_number_plates` VALUES (166, '吉D', 162, 'J');
INSERT INTO `car_number_plates` VALUES (167, '吉E', 162, 'J');
INSERT INTO `car_number_plates` VALUES (168, '吉F', 162, 'J');
INSERT INTO `car_number_plates` VALUES (169, '吉G', 162, 'J');
INSERT INTO `car_number_plates` VALUES (170, '吉H', 162, 'J');
INSERT INTO `car_number_plates` VALUES (171, '吉J', 162, 'J');
INSERT INTO `car_number_plates` VALUES (172, '晋', 0, 'J');
INSERT INTO `car_number_plates` VALUES (173, '晋A', 172, 'J');
INSERT INTO `car_number_plates` VALUES (174, '晋B', 172, 'J');
INSERT INTO `car_number_plates` VALUES (175, '晋C', 172, 'J');
INSERT INTO `car_number_plates` VALUES (176, '晋D', 172, 'J');
INSERT INTO `car_number_plates` VALUES (177, '晋E', 172, 'J');
INSERT INTO `car_number_plates` VALUES (178, '晋F', 172, 'J');
INSERT INTO `car_number_plates` VALUES (179, '晋G', 172, 'J');
INSERT INTO `car_number_plates` VALUES (180, '晋H', 172, 'J');
INSERT INTO `car_number_plates` VALUES (181, '晋J', 172, 'J');
INSERT INTO `car_number_plates` VALUES (182, '晋K', 172, 'J');
INSERT INTO `car_number_plates` VALUES (183, '晋L', 172, 'J');
INSERT INTO `car_number_plates` VALUES (184, '晋M', 172, 'J');
INSERT INTO `car_number_plates` VALUES (185, '津', 0, 'J');
INSERT INTO `car_number_plates` VALUES (186, '津A', 185, 'J');
INSERT INTO `car_number_plates` VALUES (187, '津B', 185, 'J');
INSERT INTO `car_number_plates` VALUES (188, '津C', 185, 'J');
INSERT INTO `car_number_plates` VALUES (189, '津E', 185, 'J');
INSERT INTO `car_number_plates` VALUES (190, '津D', 185, 'J');
INSERT INTO `car_number_plates` VALUES (191, '津F', 185, 'J');
INSERT INTO `car_number_plates` VALUES (192, '津G', 185, 'J');
INSERT INTO `car_number_plates` VALUES (193, '津H', 185, 'J');
INSERT INTO `car_number_plates` VALUES (194, '津J', 185, 'J');
INSERT INTO `car_number_plates` VALUES (195, '津K', 185, 'J');
INSERT INTO `car_number_plates` VALUES (196, '津L', 185, 'J');
INSERT INTO `car_number_plates` VALUES (197, '津O', 185, 'J');
INSERT INTO `car_number_plates` VALUES (198, '津M', 185, 'J');
INSERT INTO `car_number_plates` VALUES (199, '津N', 185, 'J');
INSERT INTO `car_number_plates` VALUES (200, '津P', 185, 'J');
INSERT INTO `car_number_plates` VALUES (201, '津Q', 185, 'J');
INSERT INTO `car_number_plates` VALUES (202, '津R', 185, 'J');
INSERT INTO `car_number_plates` VALUES (203, '辽', 0, 'L');
INSERT INTO `car_number_plates` VALUES (204, '辽A', 203, 'L');
INSERT INTO `car_number_plates` VALUES (205, '辽B', 203, 'L');
INSERT INTO `car_number_plates` VALUES (206, '辽C', 203, 'L');
INSERT INTO `car_number_plates` VALUES (207, '辽D', 203, 'L');
INSERT INTO `car_number_plates` VALUES (208, '辽E', 203, 'L');
INSERT INTO `car_number_plates` VALUES (209, '辽F', 203, 'L');
INSERT INTO `car_number_plates` VALUES (210, '辽G', 203, 'L');
INSERT INTO `car_number_plates` VALUES (211, '辽H', 203, 'L');
INSERT INTO `car_number_plates` VALUES (212, '辽J', 203, 'L');
INSERT INTO `car_number_plates` VALUES (213, '辽K', 203, 'L');
INSERT INTO `car_number_plates` VALUES (214, '辽L', 203, 'L');
INSERT INTO `car_number_plates` VALUES (215, '辽M', 203, 'L');
INSERT INTO `car_number_plates` VALUES (216, '辽N', 203, 'L');
INSERT INTO `car_number_plates` VALUES (217, '辽P', 203, 'L');
INSERT INTO `car_number_plates` VALUES (218, '辽V', 203, 'L');
INSERT INTO `car_number_plates` VALUES (219, '鲁', 0, 'L');
INSERT INTO `car_number_plates` VALUES (220, '鲁A', 219, 'L');
INSERT INTO `car_number_plates` VALUES (221, '鲁B', 219, 'L');
INSERT INTO `car_number_plates` VALUES (222, '鲁C', 219, 'L');
INSERT INTO `car_number_plates` VALUES (223, '鲁D', 219, 'L');
INSERT INTO `car_number_plates` VALUES (224, '鲁E', 219, 'L');
INSERT INTO `car_number_plates` VALUES (225, '鲁F', 219, 'L');
INSERT INTO `car_number_plates` VALUES (226, '鲁G', 219, 'L');
INSERT INTO `car_number_plates` VALUES (227, '鲁H', 219, 'L');
INSERT INTO `car_number_plates` VALUES (228, '鲁J', 219, 'L');
INSERT INTO `car_number_plates` VALUES (229, '鲁K', 219, 'L');
INSERT INTO `car_number_plates` VALUES (230, '鲁L', 219, 'L');
INSERT INTO `car_number_plates` VALUES (231, '鲁M', 219, 'L');
INSERT INTO `car_number_plates` VALUES (232, '鲁N', 219, 'L');
INSERT INTO `car_number_plates` VALUES (233, '鲁P', 219, 'L');
INSERT INTO `car_number_plates` VALUES (234, '鲁Q', 219, 'L');
INSERT INTO `car_number_plates` VALUES (235, '鲁R', 219, 'L');
INSERT INTO `car_number_plates` VALUES (236, '鲁S', 219, 'L');
INSERT INTO `car_number_plates` VALUES (237, '鲁U', 219, 'L');
INSERT INTO `car_number_plates` VALUES (238, '鲁V', 219, 'L');
INSERT INTO `car_number_plates` VALUES (239, '鲁Y', 219, 'L');
INSERT INTO `car_number_plates` VALUES (240, '蒙', 0, 'M');
INSERT INTO `car_number_plates` VALUES (241, '蒙A', 240, 'M');
INSERT INTO `car_number_plates` VALUES (242, '蒙B', 240, 'M');
INSERT INTO `car_number_plates` VALUES (243, '蒙C', 240, 'M');
INSERT INTO `car_number_plates` VALUES (244, '蒙D', 240, 'M');
INSERT INTO `car_number_plates` VALUES (245, '蒙E', 240, 'M');
INSERT INTO `car_number_plates` VALUES (246, '蒙F', 240, 'M');
INSERT INTO `car_number_plates` VALUES (247, '蒙G', 240, 'M');
INSERT INTO `car_number_plates` VALUES (248, '蒙H', 240, 'M');
INSERT INTO `car_number_plates` VALUES (249, '蒙J', 240, 'M');
INSERT INTO `car_number_plates` VALUES (250, '蒙K', 240, 'M');
INSERT INTO `car_number_plates` VALUES (251, '蒙L', 240, 'M');
INSERT INTO `car_number_plates` VALUES (252, '蒙M', 240, 'M');
INSERT INTO `car_number_plates` VALUES (253, '闽', 0, 'M');
INSERT INTO `car_number_plates` VALUES (254, '闽A', 253, 'M');
INSERT INTO `car_number_plates` VALUES (255, '闽B', 253, 'M');
INSERT INTO `car_number_plates` VALUES (256, '闽C', 253, 'M');
INSERT INTO `car_number_plates` VALUES (257, '闽D', 253, 'M');
INSERT INTO `car_number_plates` VALUES (258, '闽E', 253, 'M');
INSERT INTO `car_number_plates` VALUES (259, '闽F', 253, 'M');
INSERT INTO `car_number_plates` VALUES (260, '闽G', 253, 'M');
INSERT INTO `car_number_plates` VALUES (261, '闽H', 253, 'M');
INSERT INTO `car_number_plates` VALUES (262, '闽J', 253, 'M');
INSERT INTO `car_number_plates` VALUES (263, '闽K', 253, 'M');
INSERT INTO `car_number_plates` VALUES (264, '宁', 0, 'N');
INSERT INTO `car_number_plates` VALUES (265, '宁A', 264, 'N');
INSERT INTO `car_number_plates` VALUES (266, '宁B', 264, 'N');
INSERT INTO `car_number_plates` VALUES (267, '宁C', 264, 'N');
INSERT INTO `car_number_plates` VALUES (268, '宁D', 264, 'N');
INSERT INTO `car_number_plates` VALUES (269, '宁E', 264, 'N');
INSERT INTO `car_number_plates` VALUES (270, '琼', 0, 'Q');
INSERT INTO `car_number_plates` VALUES (271, '琼A', 270, 'Q');
INSERT INTO `car_number_plates` VALUES (272, '琼B', 270, 'Q');
INSERT INTO `car_number_plates` VALUES (273, '琼C', 270, 'Q');
INSERT INTO `car_number_plates` VALUES (274, '琼D', 270, 'Q');
INSERT INTO `car_number_plates` VALUES (275, '琼E', 270, 'Q');
INSERT INTO `car_number_plates` VALUES (276, '青', 0, 'Q');
INSERT INTO `car_number_plates` VALUES (277, '青A', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (278, '青B', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (279, '青C', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (280, '青D', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (281, '青E', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (282, '青F', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (283, '青G', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (284, '青H', 276, 'Q');
INSERT INTO `car_number_plates` VALUES (285, '苏', 0, 'S');
INSERT INTO `car_number_plates` VALUES (286, '苏A', 285, 'S');
INSERT INTO `car_number_plates` VALUES (287, '苏B', 285, 'S');
INSERT INTO `car_number_plates` VALUES (288, '苏C', 285, 'S');
INSERT INTO `car_number_plates` VALUES (289, '苏D', 285, 'S');
INSERT INTO `car_number_plates` VALUES (290, '苏E', 285, 'S');
INSERT INTO `car_number_plates` VALUES (291, '苏F', 285, 'S');
INSERT INTO `car_number_plates` VALUES (292, '苏G', 285, 'S');
INSERT INTO `car_number_plates` VALUES (293, '苏H', 285, 'S');
INSERT INTO `car_number_plates` VALUES (294, '苏J', 285, 'S');
INSERT INTO `car_number_plates` VALUES (295, '苏K', 285, 'S');
INSERT INTO `car_number_plates` VALUES (296, '苏L', 285, 'S');
INSERT INTO `car_number_plates` VALUES (297, '苏M', 285, 'S');
INSERT INTO `car_number_plates` VALUES (298, '苏N', 285, 'S');
INSERT INTO `car_number_plates` VALUES (299, '陕', 0, 'S');
INSERT INTO `car_number_plates` VALUES (300, '陕A', 299, 'S');
INSERT INTO `car_number_plates` VALUES (301, '陕B', 299, 'S');
INSERT INTO `car_number_plates` VALUES (302, '陕C', 299, 'S');
INSERT INTO `car_number_plates` VALUES (303, '陕D', 299, 'S');
INSERT INTO `car_number_plates` VALUES (304, '陕E', 299, 'S');
INSERT INTO `car_number_plates` VALUES (305, '陕F', 299, 'S');
INSERT INTO `car_number_plates` VALUES (306, '陕G', 299, 'S');
INSERT INTO `car_number_plates` VALUES (307, '陕H', 299, 'S');
INSERT INTO `car_number_plates` VALUES (308, '陕J', 299, 'S');
INSERT INTO `car_number_plates` VALUES (309, '陕K', 299, 'S');
INSERT INTO `car_number_plates` VALUES (310, '陕V', 299, 'S');
INSERT INTO `car_number_plates` VALUES (311, '陕U', 299, 'S');
INSERT INTO `car_number_plates` VALUES (312, '皖', 0, 'W');
INSERT INTO `car_number_plates` VALUES (313, '皖A', 312, 'W');
INSERT INTO `car_number_plates` VALUES (314, '皖B', 312, 'W');
INSERT INTO `car_number_plates` VALUES (315, '皖C', 312, 'W');
INSERT INTO `car_number_plates` VALUES (316, '皖D', 312, 'W');
INSERT INTO `car_number_plates` VALUES (317, '皖E', 312, 'W');
INSERT INTO `car_number_plates` VALUES (318, '皖F', 312, 'W');
INSERT INTO `car_number_plates` VALUES (319, '皖G', 312, 'W');
INSERT INTO `car_number_plates` VALUES (320, '皖H', 312, 'W');
INSERT INTO `car_number_plates` VALUES (321, '皖J', 312, 'W');
INSERT INTO `car_number_plates` VALUES (322, '皖K', 312, 'W');
INSERT INTO `car_number_plates` VALUES (323, '皖L', 312, 'W');
INSERT INTO `car_number_plates` VALUES (324, '皖M', 312, 'W');
INSERT INTO `car_number_plates` VALUES (325, '皖N', 312, 'W');
INSERT INTO `car_number_plates` VALUES (326, '皖P', 312, 'W');
INSERT INTO `car_number_plates` VALUES (327, '皖Q', 312, 'W');
INSERT INTO `car_number_plates` VALUES (328, '皖R', 312, 'W');
INSERT INTO `car_number_plates` VALUES (329, '皖S', 312, 'W');
INSERT INTO `car_number_plates` VALUES (330, '新', 0, 'X');
INSERT INTO `car_number_plates` VALUES (331, '新A', 330, 'X');
INSERT INTO `car_number_plates` VALUES (332, '新B', 330, 'X');
INSERT INTO `car_number_plates` VALUES (333, '新C', 330, 'X');
INSERT INTO `car_number_plates` VALUES (334, '新D', 330, 'X');
INSERT INTO `car_number_plates` VALUES (335, '新E', 330, 'X');
INSERT INTO `car_number_plates` VALUES (336, '新F', 330, 'X');
INSERT INTO `car_number_plates` VALUES (337, '新G', 330, 'X');
INSERT INTO `car_number_plates` VALUES (338, '新H', 330, 'X');
INSERT INTO `car_number_plates` VALUES (339, '新J', 330, 'X');
INSERT INTO `car_number_plates` VALUES (340, '新K', 330, 'X');
INSERT INTO `car_number_plates` VALUES (341, '新L', 330, 'X');
INSERT INTO `car_number_plates` VALUES (342, '新M', 330, 'X');
INSERT INTO `car_number_plates` VALUES (343, '新N', 330, 'X');
INSERT INTO `car_number_plates` VALUES (344, '新P', 330, 'X');
INSERT INTO `car_number_plates` VALUES (345, '新Q', 330, 'X');
INSERT INTO `car_number_plates` VALUES (346, '新R', 330, 'X');
INSERT INTO `car_number_plates` VALUES (347, '湘', 0, 'X');
INSERT INTO `car_number_plates` VALUES (348, '湘A', 347, 'X');
INSERT INTO `car_number_plates` VALUES (349, '湘B', 347, 'X');
INSERT INTO `car_number_plates` VALUES (350, '湘C', 347, 'X');
INSERT INTO `car_number_plates` VALUES (351, '湘D', 347, 'X');
INSERT INTO `car_number_plates` VALUES (352, '湘E', 347, 'X');
INSERT INTO `car_number_plates` VALUES (353, '湘F', 347, 'X');
INSERT INTO `car_number_plates` VALUES (354, '湘G', 347, 'X');
INSERT INTO `car_number_plates` VALUES (355, '湘H', 347, 'X');
INSERT INTO `car_number_plates` VALUES (356, '湘J', 347, 'X');
INSERT INTO `car_number_plates` VALUES (357, '湘K', 347, 'X');
INSERT INTO `car_number_plates` VALUES (358, '湘L', 347, 'X');
INSERT INTO `car_number_plates` VALUES (359, '湘M', 347, 'X');
INSERT INTO `car_number_plates` VALUES (360, '湘N', 347, 'X');
INSERT INTO `car_number_plates` VALUES (361, '湘U', 347, 'X');
INSERT INTO `car_number_plates` VALUES (362, '云', 0, 'Y');
INSERT INTO `car_number_plates` VALUES (363, '云A', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (364, '云B', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (365, '云C', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (366, '云D', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (367, '云E', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (368, '云F', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (369, '云G', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (370, '云H', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (371, '云J', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (372, '云K', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (373, '云L', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (374, '云M', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (375, '云N', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (376, '云P', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (377, '云Q', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (378, '云R', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (379, '云S', 362, 'Y');
INSERT INTO `car_number_plates` VALUES (380, '渝', 0, 'Y');
INSERT INTO `car_number_plates` VALUES (381, '渝A', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (382, '渝B', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (383, '渝C', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (384, '渝D', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (385, '渝F', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (386, '渝G', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (387, '渝H', 380, 'Y');
INSERT INTO `car_number_plates` VALUES (388, '粤', 0, 'Y');
INSERT INTO `car_number_plates` VALUES (389, '粤A', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (390, '粤B', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (391, '粤C', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (392, '粤D', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (393, '粤E', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (394, '粤F', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (395, '粤G', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (396, '粤H', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (397, '粤J', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (398, '粤K', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (399, '粤L', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (400, '粤M', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (401, '粤N', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (402, '粤P', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (403, '粤Q', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (404, '粤R', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (405, '粤S', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (406, '粤T', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (407, '粤U', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (408, '粤V', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (409, '粤W', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (410, '粤X', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (411, '粤Y', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (412, '粤Z', 388, 'Y');
INSERT INTO `car_number_plates` VALUES (413, '豫', 0, 'Y');
INSERT INTO `car_number_plates` VALUES (414, '豫A', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (415, '豫B', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (416, '豫C', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (417, '豫D', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (418, '豫E', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (419, '豫F', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (420, '豫G', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (421, '豫H', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (422, '豫J', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (423, '豫K', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (424, '豫L', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (425, '豫M', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (426, '豫N', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (427, '豫P', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (428, '豫Q', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (429, '豫R', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (430, '豫S', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (431, '豫U', 413, 'Y');
INSERT INTO `car_number_plates` VALUES (432, '浙', 0, 'Z');
INSERT INTO `car_number_plates` VALUES (433, '浙A', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (434, '浙B', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (435, '浙C', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (436, '浙D', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (437, '浙E', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (438, '浙F', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (439, '浙G', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (440, '浙H', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (441, '浙J', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (442, '浙K', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (443, '浙L', 432, 'Z');
INSERT INTO `car_number_plates` VALUES (444, '藏', 0, 'Z');
INSERT INTO `car_number_plates` VALUES (445, '藏A', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (446, '藏B', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (447, '藏C', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (448, '藏D', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (449, '藏E', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (450, '藏F', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (451, '藏G', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (452, '藏H', 444, 'Z');
INSERT INTO `car_number_plates` VALUES (453, '藏J', 444, 'Z');

-- ----------------------------
-- Table structure for car_order
-- ----------------------------
DROP TABLE IF EXISTS `car_order`;
CREATE TABLE `car_order`  (
  `id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `project_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目名称',
  `order_price` decimal(10, 2) DEFAULT NULL COMMENT '订单价格',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户名',
  `emp_id` bigint(11) DEFAULT NULL COMMENT '服务人员Id',
  `emp_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '服务人员',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `car_id` bigint(20) DEFAULT NULL COMMENT '车辆ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for car_project
-- ----------------------------
DROP TABLE IF EXISTS `car_project`;
CREATE TABLE `car_project`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  `latitude` double(10, 5) DEFAULT NULL COMMENT '纬度',
  `longitude` double(10, 5) DEFAULT NULL COMMENT '经度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (25, 2, 24, '[0],[24],', '开发部', '开发部', '', NULL, NULL, NULL);
INSERT INTO `dept` VALUES (26, 3, 24, '[0],[24],', '运营部', '运营部', '', NULL, NULL, NULL);
INSERT INTO `dept` VALUES (27, 4, 24, '[0],[24],', '战略部', '战略部', '', NULL, NULL, NULL);
INSERT INTO `dept` VALUES (34, 5, 1, NULL, '测试', '测试fullname', '测试tips', 1, NULL, NULL);
INSERT INTO `dept` VALUES (35, 5, 1, NULL, '测试', '测试fullname', '测试tips', 1, NULL, NULL);

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (29, 0, 0, '性别', NULL);
INSERT INTO `dict` VALUES (30, 1, 29, '男', NULL);
INSERT INTO `dict` VALUES (31, 2, 29, '女', NULL);
INSERT INTO `dict` VALUES (35, 0, 0, '账号状态', NULL);
INSERT INTO `dict` VALUES (36, 1, 35, '启用', NULL);
INSERT INTO `dict` VALUES (37, 2, 35, '冻结', NULL);
INSERT INTO `dict` VALUES (38, 3, 35, '已删除', NULL);
INSERT INTO `dict` VALUES (39, 0, 0, '这是一个字典测试', NULL);
INSERT INTO `dict` VALUES (40, 1, 39, '测试1', NULL);
INSERT INTO `dict` VALUES (41, 2, 39, '测试2', NULL);
INSERT INTO `dict` VALUES (42, 0, 0, '测试', NULL);
INSERT INTO `dict` VALUES (43, 1, 42, '测试1', NULL);
INSERT INTO `dict` VALUES (44, 2, 42, '测试2', NULL);

-- ----------------------------
-- Table structure for insurance_company
-- ----------------------------
DROP TABLE IF EXISTS `insurance_company`;
CREATE TABLE `insurance_company`  (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varbinary(15) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of insurance_company
-- ----------------------------
INSERT INTO `insurance_company` VALUES (1, '平安汽车保险', 0x3935353132, 1);
INSERT INTO `insurance_company` VALUES (2, '中国人保汽车保险', 0x3935353138, 2);
INSERT INTO `insurance_company` VALUES (3, '太平洋汽车保险', 0x3935353030, 3);
INSERT INTO `insurance_company` VALUES (4, '中华联合汽车保险', 0x3935353835, 4);
INSERT INTO `insurance_company` VALUES (5, '太平汽车保险', 0x3935353839, 5);
INSERT INTO `insurance_company` VALUES (6, '大地汽车保险', 0x3935353930, 6);
INSERT INTO `insurance_company` VALUES (7, '天安汽车保险', 0x3935353035, 7);
INSERT INTO `insurance_company` VALUES (8, '永安汽车保险', 0x3935353032, 8);
INSERT INTO `insurance_company` VALUES (9, '阳光汽车保险', 0x3935353130, 9);
INSERT INTO `insurance_company` VALUES (10, '安邦汽车保险', 0x3935353639, 10);
INSERT INTO `insurance_company` VALUES (11, '都邦汽车保险', 0x34303038383935353836, 11);
INSERT INTO `insurance_company` VALUES (12, '永诚汽车保险', 0x3935353532, 12);
INSERT INTO `insurance_company` VALUES (13, '华泰汽车保险', 0x34303036303935353039, 13);
INSERT INTO `insurance_company` VALUES (14, '渤海汽车保险', 0x34303036313136363636, 14);
INSERT INTO `insurance_company` VALUES (15, '大众保险', 0x3935353037, 15);
INSERT INTO `insurance_company` VALUES (16, '安盛天平汽车保险', 0x3935353530, 16);
INSERT INTO `insurance_company` VALUES (17, '民安汽车保险', 0x3935353036, 17);
INSERT INTO `insurance_company` VALUES (18, '华安汽车保险', 0x3935353536, 18);
INSERT INTO `insurance_company` VALUES (19, '安诚汽车保险', 0x34303030353030303030, 19);
INSERT INTO `insurance_company` VALUES (20, '中国人寿', 0x3935353139, 20);
INSERT INTO `insurance_company` VALUES (21, '中银保险', 0x34303036393935353636, 21);
INSERT INTO `insurance_company` VALUES (22, '长安责任保险', 0x3935353932, 22);
INSERT INTO `insurance_company` VALUES (23, '浙商财险', 0x34303038363636373737, 23);
INSERT INTO `insurance_company` VALUES (24, '鼎和财险', 0x34303038383838313336, 24);
INSERT INTO `insurance_company` VALUES (25, '紫金财险', 0x34303038323830303138, 25);
INSERT INTO `insurance_company` VALUES (26, '信达财险', 0x34303038363637373838, 26);
INSERT INTO `insurance_company` VALUES (27, '锦泰财产', 0x34303038363636353535, 27);
INSERT INTO `insurance_company` VALUES (28, '中煤财险', 0x34303036353336383838, 28);
INSERT INTO `insurance_company` VALUES (29, '英大泰和保险', 0x34303038383935353938, 29);
INSERT INTO `insurance_company` VALUES (30, '中意财险', 0x34303036303032373030, 30);
INSERT INTO `insurance_company` VALUES (31, '三星车险', 0x34303038333333303030, 31);
INSERT INTO `insurance_company` VALUES (32, '利宝车险', 0x34303038383832303038, 32);

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否执行成功',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '具体消息',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES (126, '退出日志', 1, '2017-06-04 10:21:55', '成功', NULL, '127.0.0.1');
INSERT INTO `login_log` VALUES (127, '登录日志', 1, '2017-06-04 10:21:59', '成功', NULL, '127.0.0.1');
INSERT INTO `login_log` VALUES (128, '退出日志', 1, '2017-06-04 10:22:59', '成功', NULL, '127.0.0.1');
INSERT INTO `login_log` VALUES (129, '登录日志', 1, '2017-06-04 10:23:01', '成功', NULL, '127.0.0.1');
INSERT INTO `login_log` VALUES (130, '登录失败日志', NULL, '2018-04-22 13:05:40', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (131, '登录失败日志', NULL, '2018-04-22 13:05:44', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (132, '登录失败日志', NULL, '2018-04-22 13:06:01', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (133, '登录失败日志', NULL, '2018-04-22 13:07:37', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (134, '登录失败日志', NULL, '2018-04-22 13:07:59', '成功', '账号:test,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (135, '登录日志', 1, '2018-04-22 13:09:58', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (136, '登录日志', 1, '2018-04-22 14:47:34', '成功', NULL, '192.168.200.126');
INSERT INTO `login_log` VALUES (137, '登录日志', 1, '2018-04-22 15:54:33', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES (138, '退出日志', 1, '2018-04-22 16:00:03', '成功', NULL, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (105, 'system', '0', '[0],', '系统管理', 'fa-user', '', 3, 1, 1, NULL, 1, 1);
INSERT INTO `menu` VALUES (106, 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', 1, 2, 1, NULL, 1, 0);
INSERT INTO `menu` VALUES (107, 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', NULL, '/mgr/add', 1, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (108, 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', NULL, '/mgr/edit', 2, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (109, 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', NULL, '/mgr/delete', 3, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (110, 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', NULL, '/mgr/reset', 4, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (111, 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', NULL, '/mgr/freeze', 5, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (112, 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', NULL, '/mgr/unfreeze', 6, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (113, 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', NULL, '/mgr/setRole', 7, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (114, 'role', 'system', '[0],[system],', '角色管理', NULL, '/role', 2, 2, 1, NULL, 1, 0);
INSERT INTO `menu` VALUES (115, 'role_add', 'role', '[0],[system],[role],', '添加角色', NULL, '/role/add', 1, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (116, 'role_edit', 'role', '[0],[system],[role],', '修改角色', NULL, '/role/edit', 2, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (117, 'role_remove', 'role', '[0],[system],[role],', '删除角色', NULL, '/role/remove', 3, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (118, 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', NULL, '/role/setAuthority', 4, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (119, 'menu', 'system', '[0],[system],', '菜单管理', NULL, '/menu', 4, 2, 1, NULL, 1, 0);
INSERT INTO `menu` VALUES (120, 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', NULL, '/menu/add', 1, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (121, 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', NULL, '/menu/edit', 2, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (122, 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', NULL, '/menu/remove', 3, 3, 0, NULL, 1, 0);
INSERT INTO `menu` VALUES (128, 'log', 'system', '[0],[system],', '业务日志', NULL, '/log', 6, 2, 1, NULL, 1, 0);
INSERT INTO `menu` VALUES (130, 'druid', 'system', '[0],[system],', '监控管理', NULL, '/druid', 7, 2, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (131, 'dept', 'system', '[0],[system],', '部门管理', NULL, '/dept', 3, 2, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (132, 'dict', 'system', '[0],[system],', '字典管理', NULL, '/dict', 4, 2, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (133, 'loginLog', 'system', '[0],[system],', '登录日志', NULL, '/loginLog', 6, 2, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (134, 'log_clean', 'log', '[0],[system],[log],', '清空日志', NULL, '/log/delLog', 3, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (135, 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', NULL, '/dept/add', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (136, 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', NULL, '/dept/update', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (137, 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', NULL, '/dept/delete', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (138, 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', NULL, '/dict/add', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (139, 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', NULL, '/dict/update', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (140, 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', NULL, '/dict/delete', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (141, 'notice', 'system', '[0],[system],', '通知管理', NULL, '/notice', 9, 2, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (142, 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', NULL, '/notice/add', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (143, 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', NULL, '/notice/update', 2, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (144, 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', NULL, '/notice/delete', 3, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (145, 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', 1, 1, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (148, 'code', 'system', '[0],[system],', '代码生成', 'fa-user', '/code', 10, 2, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (149, 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', 2, 1, 1, NULL, 1, NULL);
INSERT INTO `menu` VALUES (150, 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', 4, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (151, 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', 5, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (152, 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', 4, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (153, 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', 5, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (154, 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', 6, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (155, 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', 4, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (156, 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', 5, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (157, 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', 6, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (158, 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', 2, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (159, 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', 3, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (160, 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', 1, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (161, 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', 2, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (162, 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', 5, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (163, 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', 6, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (164, 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', 7, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (165, 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', 8, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (166, 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', 9, 3, 0, NULL, 1, NULL);
INSERT INTO `menu` VALUES (167, 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', 10, 3, 0, NULL, 1, NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (6, '世界', 10, '欢迎使用Guns管理系统', '2017-01-11 08:53:20', 1);
INSERT INTO `notice` VALUES (8, '你好', NULL, '你好', '2017-05-10 19:28:57', 1);

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log`  (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类名称',
  `method` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否成功',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 486 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES (480, '业务日志', '清空业务日志', 1, 'com.stylefeng.guns.modular.system.controller.LogController', 'delLog', '2017-06-03 23:04:22', '成功', '主键id=null');
INSERT INTO `operation_log` VALUES (481, '业务日志', '清空登录日志', 1, 'com.stylefeng.guns.modular.system.controller.LoginLogController', 'delLog', '2017-06-03 23:04:25', '成功', '主键id=null');
INSERT INTO `operation_log` VALUES (482, '业务日志', '修改菜单', 1, 'com.stylefeng.guns.modular.system.controller.MenuController', 'edit', '2017-06-04 10:22:58', '成功', '菜单名称=分配角色跳转;;;字段名称:url地址,旧值:/role/role_assign,新值:/mgr/role_assign');
INSERT INTO `operation_log` VALUES (483, '异常日志', '', 1, NULL, NULL, '2018-04-22 14:48:22', '失败', 'org.springframework.dao.RecoverableDataAccessException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 35,394 milliseconds ago.  The last packet sent successfully to the server was 6 milliseconds ago.\r\n### The error may exist in file [C:\\java\\workspace\\workspaceForIdea\\guns\\target\\classes\\com\\stylefeng\\guns\\common\\persistence\\dao\\MenuMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT         m1.id AS id,         m1.icon AS icon,         (         CASE         WHEN (m2.id = 0 OR m2.id IS NULL) THEN         0         ELSE         m2.id         END         ) AS parentId,         m1.NAME as name,         m1.url as url,         m1.levels as levels,         m1.ismenu as ismenu,         m1.num as num         FROM         menu m1         LEFT JOIN menu m2 ON m1.pcode = m2. CODE         INNER JOIN (         SELECT         ID         FROM         menu         WHERE         ID IN (         SELECT         menuid         FROM         relation rela         WHERE         rela.roleid IN          (               ?          )          )         ) m3 ON m1.id = m3.id         where m1.ismenu = 1         order by levels,num asc\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 35,394 milliseconds ago.  The last packet sent successfully to the server was 6 milliseconds ago.\n; SQL []; Communications link failure\n\nThe last packet successfully received from the server was 35,394 milliseconds ago.  The last packet sent successfully to the server was 6 milliseconds ago.; nested exception is com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 35,394 milliseconds ago.  The last packet sent successfully to the server was 6 milliseconds ago.\r\n	at org.springframework.jdbc.support.SQLExceptionSubclassTranslator.doTranslate(SQLExceptionSubclassTranslator.java:98)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:73)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:81)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:73)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:446)\r\n	at com.sun.proxy.TProxy90.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:230)\r\n	at org.apache.ibatis.binding.MapperMethod.executeForMany(MapperMethod.java:137)\r\n	at org.apache.ibatis.binding.MapperMethod.execute(MapperMethod.java:75)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:59)\r\n	at com.sun.proxy.TProxy96.getMenusByRoleIds(Unknown Source)\r\n	at com.stylefeng.guns.modular.system.controller.LoginController.index(LoginController.java:54)\r\n	at com.stylefeng.guns.modular.system.controller.LoginControllerTTFastClassBySpringCGLIBTTffd23625.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.GeneratedMethodAccessor112.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.controller.LoginControllerTTEnhancerBySpringCGLIBTT8083db6f.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:861)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.stylefeng.guns.core.util.xss.XssFilter.doFilter(XssFilter.java:22)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 35,394 milliseconds ago.  The last packet sent successfully to the server was 6 milliseconds ago.\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\r\n	at com.mysql.jdbc.SQLError.createCommunicationsException(SQLError.java:989)\r\n	at com.mysql.jdbc.MysqlIO.reuseAndReadPacket(MysqlIO.java:3559)\r\n	at com.mysql.jdbc.MysqlIO.reuseAndReadPacket(MysqlIO.java:3459)\r\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3900)\r\n	at com.mysql.jdbc.MysqlIO.sendCommand(MysqlIO.java:2527)\r\n	at com.mysql.jdbc.MysqlIO.sqlQueryDirect(MysqlIO.java:2680)\r\n	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2501)\r\n	at com.mysql.jdbc.PreparedStatement.executeInternal(PreparedStatement.java:1858)\r\n	at com.mysql.jdbc.PreparedStatement.execute(PreparedStatement.java:1197)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2931)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2929)\r\n	at com.alibaba.druid.wall.WallFilter.preparedStatement_execute(WallFilter.java:601)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2929)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2929)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:131)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:493)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.logging.jdbc.PreparedStatementLogger.invoke(PreparedStatementLogger.java:59)\r\n	at com.sun.proxy.TProxy161.execute(Unknown Source)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:63)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy159.query(Unknown Source)\r\n	at org.apache.ibatis.executor.SimpleExecutor.doQuery(SimpleExecutor.java:63)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:143)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.TProxy158.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:433)\r\n	... 98 more\r\nCaused by: java.io.EOFException: Can not read response from server. Expected to read 4 bytes, read 0 bytes before connection was unexpectedly lost.\r\n	at com.mysql.jdbc.MysqlIO.readFully(MysqlIO.java:3011)\r\n	at com.mysql.jdbc.MysqlIO.reuseAndReadPacket(MysqlIO.java:3469)\r\n	... 142 more\r\n');
INSERT INTO `operation_log` VALUES (484, '异常日志', '', 1, NULL, NULL, '2018-04-22 14:49:18', '失败', 'org.springframework.dao.RecoverableDataAccessException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 56,274 milliseconds ago.  The last packet sent successfully to the server was 0 milliseconds ago.\r\n### The error may exist in file [C:\\java\\workspace\\workspaceForIdea\\guns\\target\\classes\\com\\stylefeng\\guns\\common\\persistence\\dao\\MenuMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT         m1.id AS id,         m1.icon AS icon,         (         CASE         WHEN (m2.id = 0 OR m2.id IS NULL) THEN         0         ELSE         m2.id         END         ) AS parentId,         m1.NAME as name,         m1.url as url,         m1.levels as levels,         m1.ismenu as ismenu,         m1.num as num         FROM         menu m1         LEFT JOIN menu m2 ON m1.pcode = m2. CODE         INNER JOIN (         SELECT         ID         FROM         menu         WHERE         ID IN (         SELECT         menuid         FROM         relation rela         WHERE         rela.roleid IN          (               ?          )          )         ) m3 ON m1.id = m3.id         where m1.ismenu = 1         order by levels,num asc\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 56,274 milliseconds ago.  The last packet sent successfully to the server was 0 milliseconds ago.\n; SQL []; Communications link failure\n\nThe last packet successfully received from the server was 56,274 milliseconds ago.  The last packet sent successfully to the server was 0 milliseconds ago.; nested exception is com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 56,274 milliseconds ago.  The last packet sent successfully to the server was 0 milliseconds ago.\r\n	at org.springframework.jdbc.support.SQLExceptionSubclassTranslator.doTranslate(SQLExceptionSubclassTranslator.java:98)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:73)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:81)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:73)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:446)\r\n	at com.sun.proxy.TProxy90.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:230)\r\n	at org.apache.ibatis.binding.MapperMethod.executeForMany(MapperMethod.java:137)\r\n	at org.apache.ibatis.binding.MapperMethod.execute(MapperMethod.java:75)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:59)\r\n	at com.sun.proxy.TProxy96.getMenusByRoleIds(Unknown Source)\r\n	at com.stylefeng.guns.modular.system.controller.LoginController.index(LoginController.java:54)\r\n	at com.stylefeng.guns.modular.system.controller.LoginControllerTTFastClassBySpringCGLIBTTffd23625.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.GeneratedMethodAccessor112.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.controller.LoginControllerTTEnhancerBySpringCGLIBTT8083db6f.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:861)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.stylefeng.guns.core.util.xss.XssFilter.doFilter(XssFilter.java:22)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 56,274 milliseconds ago.  The last packet sent successfully to the server was 0 milliseconds ago.\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n	at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)\r\n	at com.mysql.jdbc.SQLError.createCommunicationsException(SQLError.java:989)\r\n	at com.mysql.jdbc.MysqlIO.reuseAndReadPacket(MysqlIO.java:3559)\r\n	at com.mysql.jdbc.MysqlIO.reuseAndReadPacket(MysqlIO.java:3459)\r\n	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3900)\r\n	at com.mysql.jdbc.MysqlIO.sendCommand(MysqlIO.java:2527)\r\n	at com.mysql.jdbc.MysqlIO.sqlQueryDirect(MysqlIO.java:2680)\r\n	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2501)\r\n	at com.mysql.jdbc.PreparedStatement.executeInternal(PreparedStatement.java:1858)\r\n	at com.mysql.jdbc.PreparedStatement.execute(PreparedStatement.java:1197)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2931)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2929)\r\n	at com.alibaba.druid.wall.WallFilter.preparedStatement_execute(WallFilter.java:601)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2929)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:2929)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:131)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:493)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.logging.jdbc.PreparedStatementLogger.invoke(PreparedStatementLogger.java:59)\r\n	at com.sun.proxy.TProxy161.execute(Unknown Source)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:63)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy159.query(Unknown Source)\r\n	at org.apache.ibatis.executor.SimpleExecutor.doQuery(SimpleExecutor.java:63)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at com.github.pagehelper.PageInterceptor.intercept(PageInterceptor.java:143)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:61)\r\n	at com.sun.proxy.TProxy158.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:433)\r\n	... 98 more\r\nCaused by: java.io.EOFException: Can not read response from server. Expected to read 4 bytes, read 0 bytes before connection was unexpectedly lost.\r\n	at com.mysql.jdbc.MysqlIO.readFully(MysqlIO.java:3011)\r\n	at com.mysql.jdbc.MysqlIO.reuseAndReadPacket(MysqlIO.java:3469)\r\n	... 142 more\r\n');
INSERT INTO `operation_log` VALUES (485, '异常日志', '', 1, NULL, NULL, '2018-04-22 15:10:32', '失败', 'java.lang.IllegalArgumentException: 请求参数非法，请核实!\r\n	at com.stylefeng.guns.wechat.controller.WechatController.authGet(WechatController.java:54)\r\n	at com.stylefeng.guns.wechat.controller.WechatControllerTTFastClassBySpringCGLIBTTcd4acd35.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.wechat.controller.WechatControllerTTEnhancerBySpringCGLIBTT5486b29f.authGet(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:861)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.stylefeng.guns.core.util.xss.XssFilter.doFilter(XssFilter.java:22)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n');

-- ----------------------------
-- Table structure for rcwl_car
-- ----------------------------
DROP TABLE IF EXISTS `rcwl_car`;
CREATE TABLE `rcwl_car`  (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `car_series` bigint(20) NOT NULL COMMENT '车系列',
  `car_type` bigint(20) DEFAULT NULL COMMENT '车型',
  `car_number_region` bigint(20) DEFAULT NULL COMMENT '牌照所属区域(渝A),ID',
  `car_number_start` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '牌照所属区域(渝A)',
  `car_number_end` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车牌六位',
  `car_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车主姓名',
  `car_insurance_time` datetime DEFAULT NULL COMMENT '投保时间',
  `car_insurance_company_id` bigint(20) DEFAULT NULL COMMENT '保险公司ID',
  `car_insurance_company` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保险公司',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建 时间',
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rcwl_user
-- ----------------------------
DROP TABLE IF EXISTS `rcwl_user`;
CREATE TABLE `rcwl_user`  (
  `id` bigint(20) NOT NULL,
  `user_nick_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `user_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_head_img_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空',
  `user_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户的唯一标识',
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `user_sex` int(10) UNSIGNED DEFAULT 0 COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户个人资料填写的省份',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '普通用户个人资料填写的城市',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '国家，如中国为CN',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modifyed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rcwl_user
-- ----------------------------
INSERT INTO `rcwl_user` VALUES (35467371456486804, '预见', NULL, 'http://thirdwx.qlogo.cn/mmopen/pKj0EaSicgZ2pjxMLCp4Yll60eJTZO3pgq3t97QKvg0VhgWbk5av1YTOHln9fWcHCmJ8RubsCDVy19YlMOpxrtU4y3cLicxPen/132', 'osYGJwejxrSeKhs1b305ZG7DFyxE', NULL, 1, '重庆', '两江新区', '中国', '2018-04-22 17:55:44', NULL);
INSERT INTO `rcwl_user` VALUES (35467371462222761, '预见', NULL, 'http://thirdwx.qlogo.cn/mmopen/pKj0EaSicgZ2pjxMLCp4Yll60eJTZO3pgq3t97QKvg0VhgWbk5av1YTOHln9fWcHCmJ8RubsCDVy19YlMOpxrtU4y3cLicxPen/132', 'osYGJwejxrSeKhs1b305ZG7DFyxE', NULL, 1, '重庆', '两江新区', '中国', '2018-04-22 19:31:20', NULL);
INSERT INTO `rcwl_user` VALUES (35467371463273610, '预见', NULL, 'http://thirdwx.qlogo.cn/mmopen/pKj0EaSicgZ2pjxMLCp4Yll60eJTZO3pgq3t97QKvg0VhgWbk5av1YTOHln9fWcHCmJ8RubsCDVy19YlMOpxrtU4y3cLicxPen/132', 'osYGJwejxrSeKhs1b305ZG7DFyxE', NULL, 1, '重庆', '两江新区', '中国', '2018-04-22 19:48:50', NULL);
INSERT INTO `rcwl_user` VALUES (35467371464120076, '预见', NULL, 'http://thirdwx.qlogo.cn/mmopen/pKj0EaSicgZ2pjxMLCp4Yll60eJTZO3pgq3t97QKvg0VhgWbk5av1YTOHln9fWcHCmJ8RubsCDVy19YlMOpxrtU4y3cLicxPen/132', 'osYGJwejxrSeKhs1b305ZG7DFyxE', NULL, 1, '重庆', '两江新区', '中国', '2018-04-22 20:02:57', NULL);
INSERT INTO `rcwl_user` VALUES (35467371464191469, '预见', NULL, 'http://thirdwx.qlogo.cn/mmopen/pKj0EaSicgZ2pjxMLCp4Yll60eJTZO3pgq3t97QKvg0VhgWbk5av1YTOHln9fWcHCmJ8RubsCDVy19YlMOpxrtU4y3cLicxPen/132', 'osYGJwejxrSeKhs1b305ZG7DFyxE', NULL, 1, '重庆', '两江新区', '中国', '2018-04-22 20:04:08', NULL);

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` int(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3679 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES (3377, 105, 5);
INSERT INTO `relation` VALUES (3378, 106, 5);
INSERT INTO `relation` VALUES (3379, 107, 5);
INSERT INTO `relation` VALUES (3380, 108, 5);
INSERT INTO `relation` VALUES (3381, 109, 5);
INSERT INTO `relation` VALUES (3382, 110, 5);
INSERT INTO `relation` VALUES (3383, 111, 5);
INSERT INTO `relation` VALUES (3384, 112, 5);
INSERT INTO `relation` VALUES (3385, 113, 5);
INSERT INTO `relation` VALUES (3386, 114, 5);
INSERT INTO `relation` VALUES (3387, 115, 5);
INSERT INTO `relation` VALUES (3388, 116, 5);
INSERT INTO `relation` VALUES (3389, 117, 5);
INSERT INTO `relation` VALUES (3390, 118, 5);
INSERT INTO `relation` VALUES (3391, 119, 5);
INSERT INTO `relation` VALUES (3392, 120, 5);
INSERT INTO `relation` VALUES (3393, 121, 5);
INSERT INTO `relation` VALUES (3394, 122, 5);
INSERT INTO `relation` VALUES (3395, 150, 5);
INSERT INTO `relation` VALUES (3396, 151, 5);
INSERT INTO `relation` VALUES (3624, 105, 1);
INSERT INTO `relation` VALUES (3625, 106, 1);
INSERT INTO `relation` VALUES (3626, 107, 1);
INSERT INTO `relation` VALUES (3627, 108, 1);
INSERT INTO `relation` VALUES (3628, 109, 1);
INSERT INTO `relation` VALUES (3629, 110, 1);
INSERT INTO `relation` VALUES (3630, 111, 1);
INSERT INTO `relation` VALUES (3631, 112, 1);
INSERT INTO `relation` VALUES (3632, 113, 1);
INSERT INTO `relation` VALUES (3633, 165, 1);
INSERT INTO `relation` VALUES (3634, 166, 1);
INSERT INTO `relation` VALUES (3635, 167, 1);
INSERT INTO `relation` VALUES (3636, 114, 1);
INSERT INTO `relation` VALUES (3637, 115, 1);
INSERT INTO `relation` VALUES (3638, 116, 1);
INSERT INTO `relation` VALUES (3639, 117, 1);
INSERT INTO `relation` VALUES (3640, 118, 1);
INSERT INTO `relation` VALUES (3641, 162, 1);
INSERT INTO `relation` VALUES (3642, 163, 1);
INSERT INTO `relation` VALUES (3643, 164, 1);
INSERT INTO `relation` VALUES (3644, 119, 1);
INSERT INTO `relation` VALUES (3645, 120, 1);
INSERT INTO `relation` VALUES (3646, 121, 1);
INSERT INTO `relation` VALUES (3647, 122, 1);
INSERT INTO `relation` VALUES (3648, 150, 1);
INSERT INTO `relation` VALUES (3649, 151, 1);
INSERT INTO `relation` VALUES (3650, 128, 1);
INSERT INTO `relation` VALUES (3651, 134, 1);
INSERT INTO `relation` VALUES (3652, 158, 1);
INSERT INTO `relation` VALUES (3653, 159, 1);
INSERT INTO `relation` VALUES (3654, 130, 1);
INSERT INTO `relation` VALUES (3655, 131, 1);
INSERT INTO `relation` VALUES (3656, 135, 1);
INSERT INTO `relation` VALUES (3657, 136, 1);
INSERT INTO `relation` VALUES (3658, 137, 1);
INSERT INTO `relation` VALUES (3659, 152, 1);
INSERT INTO `relation` VALUES (3660, 153, 1);
INSERT INTO `relation` VALUES (3661, 154, 1);
INSERT INTO `relation` VALUES (3662, 132, 1);
INSERT INTO `relation` VALUES (3663, 138, 1);
INSERT INTO `relation` VALUES (3664, 139, 1);
INSERT INTO `relation` VALUES (3665, 140, 1);
INSERT INTO `relation` VALUES (3666, 155, 1);
INSERT INTO `relation` VALUES (3667, 156, 1);
INSERT INTO `relation` VALUES (3668, 157, 1);
INSERT INTO `relation` VALUES (3669, 133, 1);
INSERT INTO `relation` VALUES (3670, 160, 1);
INSERT INTO `relation` VALUES (3671, 161, 1);
INSERT INTO `relation` VALUES (3672, 141, 1);
INSERT INTO `relation` VALUES (3673, 142, 1);
INSERT INTO `relation` VALUES (3674, 143, 1);
INSERT INTO `relation` VALUES (3675, 144, 1);
INSERT INTO `relation` VALUES (3676, 148, 1);
INSERT INTO `relation` VALUES (3677, 145, 1);
INSERT INTO `relation` VALUES (3678, 149, 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 1, 0, '超级管理员', 24, 'administrator', 1);
INSERT INTO `role` VALUES (5, 2, 1, '临时', 26, 'temp', NULL);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '123');
INSERT INTO `test` VALUES (22, '123');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `account` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', 2, 'sn93@qq.com', '18200000000', '1', 27, 1, '2016-01-29 08:49:53', 25);
INSERT INTO `user` VALUES (44, NULL, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', 1, 'abc@123.com', '', '5', 26, 1, '2017-05-16 20:33:37', NULL);

SET FOREIGN_KEY_CHECKS = 1;
