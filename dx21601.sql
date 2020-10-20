/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : dx21601

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 20/10/2020 00:48:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drom
-- ----------------------------
DROP TABLE IF EXISTS `drom`;
CREATE TABLE `drom`  (
  `d_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_sum` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drom
-- ----------------------------
INSERT INTO `drom` VALUES ('9#129', 1);
INSERT INTO `drom` VALUES ('9#201', 4);
INSERT INTO `drom` VALUES ('9#202', 4);
INSERT INTO `drom` VALUES ('9#203', 4);
INSERT INTO `drom` VALUES ('9#205', 3);
INSERT INTO `drom` VALUES ('9#206', 3);
INSERT INTO `drom` VALUES ('9#207', 1);

-- ----------------------------
-- Table structure for hours
-- ----------------------------
DROP TABLE IF EXISTS `hours`;
CREATE TABLE `hours`  (
  `h_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_sid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_shengfen` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_xiangxi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_jingdu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_weidu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`h_sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hours
-- ----------------------------
INSERT INTO `hours` VALUES ('邹犇犇', '201500824', '安徽省', '亳州市', '蒙城县', NULL, NULL);
INSERT INTO `hours` VALUES ('陈梦阳', '201600396', '河北省', '定州市', '转路镇清辛庄', '114.95232', '38.651173');
INSERT INTO `hours` VALUES ('付阳东', '201600398', '甘肃省', '白银市', '白银区四龙路', '104.154867', '36.54137');
INSERT INTO `hours` VALUES ('侯泽玉', '201600399', '吉林省', '通化市', '金厂镇金世佳园', '125.96197', '41.68059');
INSERT INTO `hours` VALUES ('胡森', '201600400', '湖北省', '黄冈市', '红安县城关镇', '114.632738', '31.294641');
INSERT INTO `hours` VALUES ('贾洲洲', '201600401', '甘肃省', '庆阳市', '庆城县庆城镇霍家寺自然村', '107.970905', '35.979746');
INSERT INTO `hours` VALUES ('姜致远', '201600402', '湖北省', '黄冈市', '英山县温泉镇', '115.68178', '30.747676');
INSERT INTO `hours` VALUES ('柯莹', '201600403', '湖北省', '黄石市', '阳新县', '115.219871', '29.840392');
INSERT INTO `hours` VALUES ('雷雅琴', '201600404', '湖北省', '荆门市', '沙洋县后港镇安坪村', '112.427075', '30.618981');
INSERT INTO `hours` VALUES ('黎思源', '201600405', '重庆市', '大足区', '龙岗街道龙岗中路', '105.728195', '29.712688');
INSERT INTO `hours` VALUES ('李娟', '201600406', '湖北省', '咸宁市', '嘉鱼县潘家湾镇潘家湾村', '114.101409', '30.081135');
INSERT INTO `hours` VALUES ('李凯歌', '201600407', '河南省', '周口市', '川汇区许湾乡李庄', '114.656813', '33.654479');
INSERT INTO `hours` VALUES ('李香', '201600408', '新疆维吾尔自治区', '博乐市', '塔斯尔哈布拉格', '82.058387', '44.860299');
INSERT INTO `hours` VALUES ('刘晨', '201600409', '天津', '天津市', NULL, NULL, NULL);
INSERT INTO `hours` VALUES ('刘兴雯', '201600410', '青海省', '西宁市', '大通县桥头镇', '101.694915', '36.934871');
INSERT INTO `hours` VALUES ('刘叶', '201600411', '湖北省', '潜江市', NULL, NULL, NULL);
INSERT INTO `hours` VALUES ('罗安民', '201600412', '宁夏省', '石嘴山市', '大武口区星海镇', '106.376128', '39.026658');
INSERT INTO `hours` VALUES ('吕文超', '201600413', '湖北省', '孝感市', '大悟县黄站镇张寨村', '114.512045', '31.585684');
INSERT INTO `hours` VALUES ('欧阳文东', '201600414', '湖北省', '孝感市', '欧河村', '113.964079', '31.27769');
INSERT INTO `hours` VALUES ('彭车梅', '201600415', '贵州省', '毕节市', '燕子口镇一心村', '105.417205', '27.53286');
INSERT INTO `hours` VALUES ('曲贞江', '201600416', '山东省', '威海市', '文登区香水路', '122.062444', '37.200517');
INSERT INTO `hours` VALUES ('孙晓雪', '201600417', '新疆维吾尔自治区', '喀什地区', '麦盖提县扎拉特镇', '77.654316', '38.910783');
INSERT INTO `hours` VALUES ('王荟奥', '201600418', '湖北省', '孝感市', '安陆市王义贞镇吉庙', '113.393619', '31.313793');
INSERT INTO `hours` VALUES ('王一鸣', '201600419', '河南省', '郑州市', '中牟县', '114.001697', '34.722416');
INSERT INTO `hours` VALUES ('王雨恒', '201600420', '湖北省', '黄冈市', '浠水县里店铺村', '115.292777', '30.371271');
INSERT INTO `hours` VALUES ('谢冬旭', '201600424', '黑龙江省', '齐齐哈尔市', '依安县先锋乡海城村', '125.11176', '48.013402');
INSERT INTO `hours` VALUES ('熊喆', '201600425', '湖北省', '天门市', '竟陵镇江河村', '113.145755', '30.663568');
INSERT INTO `hours` VALUES ('杨唐州', '201600426', '贵州省', '凯里市', '雷山县西江镇大龙村', '108.182078', '26.499191');
INSERT INTO `hours` VALUES ('叶恩亮', '201600427', '湖北省', '恩施市', '白杨坪镇', '109.64955', '30.506318');
INSERT INTO `hours` VALUES ('张泽宇', '201600429', '湖北省', '武汉市', '江岸区兴业路', '114.310247', '30.648657');
INSERT INTO `hours` VALUES ('杜李慧', '201605297', '湖北省', '松滋市', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `s_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_sid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_number` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_birthday` date NULL DEFAULT NULL,
  `s_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123456',
  `s_sushehao` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`s_sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('邹犇犇', '201500824', '男', '13335674321', NULL, '123456', '9#129');
INSERT INTO `student` VALUES ('陈梦阳', '201600396', '女', '15832208751', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('付阳东', '201600398', '男', '18971051217', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('侯泽玉', '201600399', '男', '17671446823', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('胡森', '201600400', '男', '17786423216', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('贾洲洲', '201600401', '男', '17786528340', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('姜致远', '201600402', '男', '17771312696', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('柯莹', '201600403', '女', '17371273135', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('雷雅琴', '201600404', '女', '17386072664', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('黎思源', '201600405', '男', '17671449579', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('李娟', '201600406', '女', '18140514185', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('李凯歌', '201600407', '男', '17671443256', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('李香', '201600408', '女', '17371273373', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('刘晨', '201600409', '男', '15107196600', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('刘兴雯', '201600410', '女', '17371273272', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('刘叶', '201600411', '男', '17612765649', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('罗安民', '201600412', '男', '17771457186', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('吕文超', '201600413', '男', '18671246386', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('欧阳文东', '201600414', '男', '17671452317', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('彭车梅', '201600415', '女', '18212568344', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('曲贞江', '201600416', '男', '15688719459', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('孙晓雪', '201600417', '女', '15387127513', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('王荟奥', '201600418', '男', '17762591706', NULL, '123456', '9#205');
INSERT INTO `student` VALUES ('王一鸣', '201600419', '女', '15387127595', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('王雨恒', '201600420', '男', '17607147220', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('谢冬旭', '201600424', '男', '17671449514', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('熊喆', '201600425', '女', '15926040435', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('杨唐州', '201600426', '男', '17371273702', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('叶恩亮', '201600427', '男', '17671440805', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('张泽宇', '201600429', '男', '13487081454', NULL, '123456', NULL);
INSERT INTO `student` VALUES ('杜李慧', '201605297', '女', '13797532477', NULL, '123456', NULL);

SET FOREIGN_KEY_CHECKS = 1;
