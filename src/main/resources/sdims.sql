/*
Navicat MySQL Data Transfer

Source Server         : 39.105.32.246
Source Server Version : 50729
Source Host           : 39.105.32.246:3306
Source Database       : sdims

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-08-04 20:49:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sd_base_employee
-- ----------------------------
DROP TABLE IF EXISTS `sd_base_employee`;
CREATE TABLE `sd_base_employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(1) DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='员工';

-- ----------------------------
-- Records of sd_base_employee
-- ----------------------------
INSERT INTO `sd_base_employee` VALUES ('1', '张显', 'PS001', '412326199507304817', '15839033953', '1', '黄科大', 'nullpoint@163.com', '系统管理员', '2020-03-15 18:27:03');
INSERT INTO `sd_base_employee` VALUES ('2', '刘安', 'PS002', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '库存管理员', '2020-03-15 16:53:40');
INSERT INTO `sd_base_employee` VALUES ('3', '刘文旭', 'PS003', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '采购员', '2020-03-15 16:53:40');
INSERT INTO `sd_base_employee` VALUES ('4', '王俊伟', 'PS004', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '销售员', '2020-03-15 16:53:40');
INSERT INTO `sd_base_employee` VALUES ('5', '纪俊浩', 'PS005', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '订单审核员', '2020-03-15 16:53:40');
INSERT INTO `sd_base_employee` VALUES ('6', '付晨刚', 'PS006', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '库存管理员', '2020-03-15 16:20:40');
INSERT INTO `sd_base_employee` VALUES ('7', '张士伟', 'PS007', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '采购员', '2020-03-15 00:18:48');
INSERT INTO `sd_base_employee` VALUES ('8', '郭安然', 'PS008', '412326199507304817', '15839033953', '0', '黄科大', '809676295@qq.com', '销售员', '2020-03-15 00:18:49');
INSERT INTO `sd_base_employee` VALUES ('9', '孙伟林', 'PS009', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '订单审核员', '2020-03-15 00:18:50');
INSERT INTO `sd_base_employee` VALUES ('10', '郭晴', 'PS010', '412326199507304817', '15839033953', '0', '黄科大', '809676295@qq.com', '库存管理员', '2020-03-15 00:18:51');
INSERT INTO `sd_base_employee` VALUES ('11', '胡胜凯', 'PS011', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '采购员', '2020-03-15 00:18:52');
INSERT INTO `sd_base_employee` VALUES ('12', '范文慧', 'PS012', '412326199507304817', '15839033953', '0', '黄科大', '809676295@qq.com', '销售员', '2020-03-15 00:18:53');
INSERT INTO `sd_base_employee` VALUES ('13', '龚世永', 'PS013', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '订单审核员', '2020-03-15 00:18:54');
INSERT INTO `sd_base_employee` VALUES ('14', '冯亚茹', 'PS014', '412326199507304817', '15839033953', '0', '黄科大', '809676295@qq.com', '库存管理员', '2020-03-15 00:18:55');
INSERT INTO `sd_base_employee` VALUES ('15', '吴晗', 'PS015', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '采购员', '2020-03-15 00:18:56');
INSERT INTO `sd_base_employee` VALUES ('16', '王文静', 'PS016', '412326199507304817', '15839033953', '0', '黄科大', '809676295@qq.com', '销售员', '2020-03-15 00:18:57');
INSERT INTO `sd_base_employee` VALUES ('17', '李康飞', 'PS017', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '订单审核员', '2020-03-15 00:19:58');
INSERT INTO `sd_base_employee` VALUES ('18', '郭艳洳', 'PS018', '412326199507304817', '15839033953', '0', '黄科大', '809676295@qq.com', '库存管理员', '2020-03-15 21:50:59');
INSERT INTO `sd_base_employee` VALUES ('19', '陈华兵', 'PS019', '412326199507304817', '15839033953', '1', '黄科大', '809676295@qq.com', '采购员', '2020-03-15 16:01:00');

-- ----------------------------
-- Table structure for sd_base_goods
-- ----------------------------
DROP TABLE IF EXISTS `sd_base_goods`;
CREATE TABLE `sd_base_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `standard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='商品';

-- ----------------------------
-- Records of sd_base_goods
-- ----------------------------
INSERT INTO `sd_base_goods` VALUES ('1', 'HUAWEI P40', '2601010188309', 'ANA-AN00', '华为', '8GB+128GB', '金属+玻璃', '998', '1288', '库存充足', '2020-04-10 15:15:52', 'A');
INSERT INTO `sd_base_goods` VALUES ('2', '华为P30 Pro', '2601010102603', 'VOG-AL00', '华为', '8GB+128GB', '金属+玻璃', '988', '1288', '库存充足', '2020-03-15 00:10:37', 'B');
INSERT INTO `sd_base_goods` VALUES ('3', 'HUAWEI Mate 30 5G', '2601010158607', 'TAS-AN00', '华为', '8GB+128GB', '金属+玻璃', '988', '1288', '库存充足', '2020-03-15 15:02:49', 'C');
INSERT INTO `sd_base_goods` VALUES ('4', '荣耀V30 5G', '2601010170305', 'OXF-AN00', '华为荣耀', '6GB+128GB', '金属+玻璃', '988', '1288', '库存充足', '2020-03-15 00:15:13', 'D');
INSERT INTO `sd_base_goods` VALUES ('5', '荣耀20 PRO', '2601010116501', 'OXF-AN00', '华为', '8GB+128GB', '金属+玻璃', '988', '1288', '库存充足', '2020-03-15 00:16:06', 'E');
INSERT INTO `sd_base_goods` VALUES ('6', 'HUAWEI nova 5 Pro', '2601010118002', 'SEA-AL10', '华为', '8GB+128GB', '金属+玻璃', '988', '1288', '库存充足', '2020-03-15 00:17:07', 'F');
INSERT INTO `sd_base_goods` VALUES ('7', '荣耀V30 PRO', '2601010170602', 'OXF-AN10', '华为', '8GB+128GB', '金属+玻璃', '1188', '1588', '库存充足', '2020-03-15 00:17:13', 'G');
INSERT INTO `sd_base_goods` VALUES ('8', 'HUAWEI P40 Pro 5G', '2601010188703', 'ELS-AN00', '华为', '8GB+128GB', '金属+玻璃', '1188', '1588', '库存充足', '2020-04-12 15:17:43', 'F');
INSERT INTO `sd_base_goods` VALUES ('9', 'HUAWEI nova 7 5G', '2601010208704', 'JEF-AN00', '华为', '8GB+128GB', '金属+玻璃', '1188', '1588', '库存充足', '2020-05-02 15:20:36', 'G');
INSERT INTO `sd_base_goods` VALUES ('10', 'HUAWEI MatePad', '2701010023201', 'BAH3-W09', '华为', '8GB+128GB', '金属+玻璃', '1188', '1588', '库存充足', '2020-05-08 15:22:00', 'H');
INSERT INTO `sd_base_goods` VALUES ('11', '小米10', '110120130', 'ELV-110', '小米', '8G+128G', '金属+玻璃', '2000', '3999', '小米', '2020-05-12 16:02:08', 'J');

-- ----------------------------
-- Table structure for sd_base_repo
-- ----------------------------
DROP TABLE IF EXISTS `sd_base_repo`;
CREATE TABLE `sd_base_repo` (
  `repo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repo_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updater` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`repo_id`),
  KEY `repo_employee_FK_idx` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='仓库';

-- ----------------------------
-- Records of sd_base_repo
-- ----------------------------
INSERT INTO `sd_base_repo` VALUES ('1', '郑州市仓库', 'R001', '郑州市二七区', '库存充足', 'admin', '2020-03-15 14:20:13', '2');
INSERT INTO `sd_base_repo` VALUES ('2', '商丘市仓库', 'R002', '商丘市城区', '库存充足', 'admin', '2020-03-15 00:16:59', '6');
INSERT INTO `sd_base_repo` VALUES ('3', '杭州市仓库', 'R003', '杭州市滨江区', '库存充足', 'admin', '2020-05-12 15:25:40', '3');
INSERT INTO `sd_base_repo` VALUES ('4', '上海市仓库', 'R004', '上海市长宁区', '库存充足', 'admin', '2020-05-12 15:25:57', '4');
INSERT INTO `sd_base_repo` VALUES ('6', '广州仓库', 'R006', '广州市白云区', '库存充足', 'admin', '2020-05-12 16:08:40', '13');

-- ----------------------------
-- Table structure for sd_purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `sd_purchase_order`;
CREATE TABLE `sd_purchase_order` (
  `porder_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `repo_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `unit_price` decimal(20,3) DEFAULT NULL,
  `total_price` decimal(20,3) DEFAULT NULL,
  `order_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_state` int(1) DEFAULT '0',
  `check_result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `stock_state` int(1) DEFAULT '0',
  `stock_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_time` datetime DEFAULT NULL,
  PRIMARY KEY (`porder_id`),
  KEY `porder_goods_FK_idx` (`goods_id`),
  KEY `porder_supplier_FK_idx` (`supplier_id`),
  KEY `porder_repo_FK_idx` (`repo_id`),
  CONSTRAINT `porder_goods_FK` FOREIGN KEY (`goods_id`) REFERENCES `sd_base_goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `porder_supplier_FK` FOREIGN KEY (`supplier_id`) REFERENCES `sd_purchase_supplier` (`supplier_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='采购单';

-- ----------------------------
-- Records of sd_purchase_order
-- ----------------------------
INSERT INTO `sd_purchase_order` VALUES ('1', '2', '1', '1', '胜利供应商', '202003052255790', '60', '998.000', '59880.000', '采购50件', '2020-04-15 11:39:17', 'xiaocai', '1', '审核通过', '张显', '2020-05-16 15:43:36', '1', '张显', '2020-05-16 15:43:47');
INSERT INTO `sd_purchase_order` VALUES ('5', '2', '2', '4', '通达供应商', '202004052255790', '60', '998.000', '59880.000', '采购60件', '2020-04-18 22:57:05', 'xiaocai', '0', '待审核', '张显', '2020-05-16 15:44:48', '0', '刘安', '2019-03-07 20:09:12');
INSERT INTO `sd_purchase_order` VALUES ('8', '2', '1', '3', '胜利供应商', '202004061054077', '50', '998.000', '49900.000', '采购50件', '2020-05-13 10:25:17', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-03-08 21:04:04', '0', '刘安', '2019-03-08 21:04:04');
INSERT INTO `sd_purchase_order` VALUES ('9', '2', '3', '3', '张老大供销商', '202004082182309', '50', '998.000', '49900.000', '采购50件', '2020-05-14 21:38:44', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-03-09 15:45:30', '0', '刘安', '2019-03-09 15:45:30');
INSERT INTO `sd_purchase_order` VALUES ('10', '2', '3', '3', '张老大供销商', '202004122272641', '50', '998.000', '49900.000', '采购50件', '2020-03-15 22:15:55', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-03-12 22:33:36', '0', '刘安', '2019-03-12 22:33:36');
INSERT INTO `sd_purchase_order` VALUES ('11', '3', '3', '3', '张老大供销商', '202004161326831', '50', '998.000', '49900.000', '采购50件', '2020-02-11 13:27:59', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-03-17 19:10:30', '0', '刘安', '2019-03-17 19:10:30');
INSERT INTO `sd_purchase_order` VALUES ('12', '4', '3', '3', '张老大供销商', '202004161390930', '50', '998.000', '49900.000', '采购50件', '2020-02-12 13:29:26', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-03-17 19:10:46', '0', '刘安', '2019-03-17 19:10:46');
INSERT INTO `sd_purchase_order` VALUES ('13', '5', '3', '3', '张老大供销商', '202004161319029', '50', '998.000', '49900.000', '采购50件', '2020-02-12 13:30:40', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-04-17 18:49:52', '0', '刘安', '2019-04-17 18:49:52');
INSERT INTO `sd_purchase_order` VALUES ('14', '2', '2', '4', '通达供应商', '202004161377056', '200', '998.000', '199600.000', '采购200件', '2020-02-13 13:40:43', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-04-16 13:41:33', '0', '刘安', '2019-04-16 13:41:33');
INSERT INTO `sd_purchase_order` VALUES ('15', '2', '3', '5', '张老大供销商', '202004161314517', '200', '998.000', '199600.000', '采购200件', '2020-02-20 13:43:28', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-04-16 13:44:05', '0', '刘安', '2019-04-16 13:44:05');
INSERT INTO `sd_purchase_order` VALUES ('16', '7', '2', '1', '通达供应商', '202004172152979', '100', '998.000', '99800.000', '采购100件', '2020-03-15 21:49:14', 'xiaocai', '0', '审核通过', '纪俊浩', '2019-04-17 21:50:21', '0', '刘安', '2019-04-17 21:51:00');

-- ----------------------------
-- Table structure for sd_purchase_supplier
-- ----------------------------
DROP TABLE IF EXISTS `sd_purchase_supplier`;
CREATE TABLE `sd_purchase_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `link_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updater` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='供应商';

-- ----------------------------
-- Records of sd_purchase_supplier
-- ----------------------------
INSERT INTO `sd_purchase_supplier` VALUES ('1', '胜利供应商', '刘雷', '18438650098', '上海市浦东新区新向路115号', '很好', 'xiaocai', '2020-03-15 16:53:40');
INSERT INTO `sd_purchase_supplier` VALUES ('2', '通达供销商', '刘雷', '123456789', '郑州通达公司', '很好1', '', '2020-03-15 22:43:55');
INSERT INTO `sd_purchase_supplier` VALUES ('3', '张老大迪供销商', '刘雷', '123456789', '郑州通达公司', '很好', null, '2020-03-15 13:15:29');
INSERT INTO `sd_purchase_supplier` VALUES ('4', '真是好供销商', '刘雷', '123456789', '郑州通达公司', '很好', null, '2020-03-15 13:15:55');
INSERT INTO `sd_purchase_supplier` VALUES ('5', '真是棒供销商', '刘雷', '123456789', '郑州通达公司', '很棒', '', '2020-03-15 13:49:54');
INSERT INTO `sd_purchase_supplier` VALUES ('6', '真是强供销商', '刘雷', '123456789', '郑州通达公司', '很好', null, '2020-03-15 13:16:32');

-- ----------------------------
-- Table structure for sd_sale_customer
-- ----------------------------
DROP TABLE IF EXISTS `sd_sale_customer`;
CREATE TABLE `sd_sale_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `link_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updater` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='客户';

-- ----------------------------
-- Records of sd_sale_customer
-- ----------------------------
INSERT INTO `sd_sale_customer` VALUES ('1', '伊滨李村零售商', '张文波', '18438611223', '李村生活超市对面', '零售商', 'xiaoxiao', '2020-03-15 22:21:29');
INSERT INTO `sd_sale_customer` VALUES ('2', '伊滨赵村零售商', '关桐', '456123789', '赵村生活超市对面', '零售商', 'xiaoxiao', '2020-03-15 10:44:52');
INSERT INTO `sd_sale_customer` VALUES ('3', '伊滨刘村零售商', '刘雷', '18438650098', '刘村生活超市对面', '批发商', 'xiaoxiao', '2020-03-15 22:51:57');
INSERT INTO `sd_sale_customer` VALUES ('4', '伊滨徐村零售商', '鹏辉', '18438650098', '徐村生活超市对面', '批发商', 'xiaoxiao', '2020-03-15 12:14:37');
INSERT INTO `sd_sale_customer` VALUES ('5', '伊滨张村零售商', '文波', '18438650098', '张村生活超市对面', '批发商', 'xiaoxiao', '2020-03-15 12:15:31');
INSERT INTO `sd_sale_customer` VALUES ('6', '伊滨解村零售商', '增光', '18438650098', '解村生活超市对面', '零售商', 'xiaoxiao', '2020-03-15 14:46:50');

-- ----------------------------
-- Table structure for sd_sale_order
-- ----------------------------
DROP TABLE IF EXISTS `sd_sale_order`;
CREATE TABLE `sd_sale_order` (
  `sorder_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `repo_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `unit_price` decimal(20,3) DEFAULT NULL,
  `total_price` decimal(20,3) DEFAULT NULL,
  `order_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_state` int(1) DEFAULT NULL,
  `check_result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `stock_state` int(1) DEFAULT '0',
  `stock_man` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_time` datetime DEFAULT NULL,
  PRIMARY KEY (`sorder_id`),
  KEY `sorder_goods_FK_idx` (`goods_id`),
  KEY `sorder_customer_FK_idx` (`customer_id`),
  KEY `sorder_repo_FK_idx` (`repo_id`),
  CONSTRAINT `sorder_customer_FK` FOREIGN KEY (`customer_id`) REFERENCES `sd_sale_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sorder_goods_FK` FOREIGN KEY (`goods_id`) REFERENCES `sd_base_goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='销售单';

-- ----------------------------
-- Records of sd_sale_order
-- ----------------------------
INSERT INTO `sd_sale_order` VALUES ('1', '2', '1', '1', '伊滨李村零售商', '202004061779679', '50', '1288.000', '64400.000', '销售50件', '2020-01-04 17:19:13', 'xiaoxiao', '1', '审核通过', '张显', '2020-05-16 15:44:17', '1', '张显', '2020-05-16 15:44:27');
INSERT INTO `sd_sale_order` VALUES ('2', '2', '3', '3', '伊滨刘村零售商', '202004061779664', '20', '1288.000', '25760.000', '出售20件', '2020-03-15 17:38:36', 'xiaoxiao', '0', '审核通过', '张显', '2020-05-13 21:31:23', '0', '张显', '2020-05-13 21:31:31');
INSERT INTO `sd_sale_order` VALUES ('3', '2', '3', '3', '伊滨刘村零售商', '202004061986076', '10', '1288.000', '12880.000', '销售10件', '2020-01-06 17:38:36', 'xiaoxiao', '0', '审核通过', '纪俊浩', '2020-02-16 13:40:09', '0', '刘安', '2020-02-16 13:40:09');
INSERT INTO `sd_sale_order` VALUES ('4', '2', '1', '4', '伊滨李村零售商', '202004061983176', '5', '1288.000', '6440.000', '销售5件', '2020-02-06 19:38:39', 'xiaoxiao', '0', '审核通过', '纪俊浩', '2020-02-16 13:41:48', '0', '刘安', '2020-02-16 13:41:48');
INSERT INTO `sd_sale_order` VALUES ('6', '2', '2', '5', '伊滨赵村零售商', '202004061928198', '2', '1288.000', '2576.000', '销售2件', '2020-03-06 19:39:36', 'xiaoxiao', '0', '审核通过', '纪俊浩', '2020-03-12 13:44:17', '0', '刘安', '2020-03-16 13:44:17');
INSERT INTO `sd_sale_order` VALUES ('7', '2', '2', '1', '伊滨赵村零售商', '202004122286068', '20', '1288.000', '25760.000', '销售20件', '2020-03-06 19:39:59', 'xiaoxiao', '0', '审核通过', '纪俊浩', '2020-03-12 22:35:02', '0', '刘安', '2020-03-12 22:35:02');

-- ----------------------------
-- Table structure for sd_stock
-- ----------------------------
DROP TABLE IF EXISTS `sd_stock`;
CREATE TABLE `sd_stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `repo_id` int(11) NOT NULL,
  `total_count` int(11) DEFAULT NULL,
  `sale_count` int(11) DEFAULT NULL COMMENT '销量',
  `buy_price` decimal(20,3) DEFAULT NULL,
  `sale_price` decimal(20,3) DEFAULT NULL,
  `total_buy_price` decimal(20,3) DEFAULT NULL COMMENT '库存总成本',
  `total_sale_price` decimal(20,3) DEFAULT NULL COMMENT '库存总值',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `sfds_idx` (`repo_id`),
  KEY `stock_goods_FK_idx` (`goods_id`),
  CONSTRAINT `stock_goods_FK` FOREIGN KEY (`goods_id`) REFERENCES `sd_base_goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='库存';

-- ----------------------------
-- Records of sd_stock
-- ----------------------------
INSERT INTO `sd_stock` VALUES ('2', '2', '1', '2240', '270', '998.000', '1288.000', '2235520.000', '2885120.000', '2020-05-16 15:44:27');
INSERT INTO `sd_stock` VALUES ('3', '3', '1', '2000', '50', '998.000', '1288.000', '1996000.000', '2576000.000', '2019-04-05 15:44:46');
INSERT INTO `sd_stock` VALUES ('4', '4', '1', '2000', '50', '998.000', '1288.000', '1996000.000', '2576000.000', '2019-04-05 15:44:46');
INSERT INTO `sd_stock` VALUES ('5', '5', '1', '2000', '50', '998.000', '1288.000', '1996000.000', '2576000.000', '2019-04-05 15:44:46');
INSERT INTO `sd_stock` VALUES ('6', '6', '1', '2000', '50', '998.000', '1288.000', '1996000.000', '2576000.000', '2019-04-05 15:44:46');
INSERT INTO `sd_stock` VALUES ('8', '2', '3', '200', '70', '998.000', '1288.000', '199600.000', '257600.000', '2020-05-13 21:31:31');
INSERT INTO `sd_stock` VALUES ('9', '2', '4', '200', '5', '998.000', '1288.000', '199600.000', '257600.000', '2019-04-16 13:41:48');
INSERT INTO `sd_stock` VALUES ('10', '2', '5', '200', '2', '998.000', '1288.000', '199600.000', '257600.000', '2019-04-16 13:44:17');
INSERT INTO `sd_stock` VALUES ('11', '5', '3', '50', '0', '998.000', '1288.000', '49900.000', '64400.000', '2019-04-17 18:49:52');
INSERT INTO `sd_stock` VALUES ('12', '3', '3', '50', '0', '998.000', '1288.000', '49900.000', '64400.000', '2019-04-17 19:10:30');
INSERT INTO `sd_stock` VALUES ('13', '4', '3', '50', '0', '998.000', '1288.000', '49900.000', '64400.000', '2019-04-17 19:10:46');
INSERT INTO `sd_stock` VALUES ('14', '7', '1', '100', '0', '998.000', '1588.000', '99800.000', '158800.000', '2019-04-17 21:51:00');

-- ----------------------------
-- Table structure for sd_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sd_sys_role`;
CREATE TABLE `sd_sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `role_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sd_sys_role
-- ----------------------------
INSERT INTO `sd_sys_role` VALUES ('1', '系统管理员', '2019-03-14 16:53:40', '全部权限（数据统计）');
INSERT INTO `sd_sys_role` VALUES ('2', '库存管理员', '2019-03-14 16:53:40', '出库审核，入库审核');
INSERT INTO `sd_sys_role` VALUES ('3', '采购员', '2019-03-14 16:53:40', '供应商管理，采购订单');
INSERT INTO `sd_sys_role` VALUES ('4', '销售员', '2019-03-14 16:53:40', '客户管理，销售订单');
INSERT INTO `sd_sys_role` VALUES ('5', '订单审核员', '2019-03-14 16:53:40', '销售单审核，采购单审核');

-- ----------------------------
-- Table structure for sd_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sd_sys_user`;
CREATE TABLE `sd_sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `state` int(1) DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `User_Employee_FK_idx` (`employee_id`),
  KEY `user_role_FK_idx` (`state`),
  CONSTRAINT `user_employee_FK` FOREIGN KEY (`employee_id`) REFERENCES `sd_base_employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_role_FK` FOREIGN KEY (`state`) REFERENCES `sd_sys_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户';

-- ----------------------------
-- Records of sd_sys_user
-- ----------------------------
INSERT INTO `sd_sys_user` VALUES ('1', 'admin', 'q6s2q505q69sl25eq5b92qss9b665005', '系统管理员', '1', '2020-03-15 02:32:43', '1');
INSERT INTO `sd_sys_user` VALUES ('2', 'tom', 'q6s2q505q69sl25eq5b92qss9b665005', '库存管理员', '2', '2020-03-15 02:26:51', '2');
INSERT INTO `sd_sys_user` VALUES ('3', 'xiaocai', 'q6s2q505q69sl25eq5b92qss9b665005', '采购员', '3', '2020-03-15 02:31:28', '3');
INSERT INTO `sd_sys_user` VALUES ('4', 'xiaoxiao', 'q6s2q505q69sl25eq5b92qss9b665005', '销售员', '4', '2020-03-15 02:31:54', '4');
INSERT INTO `sd_sys_user` VALUES ('5', 'xiaodan', 'q6s2q505q69sl25eq5b92qss9b665005', '订单审核员', '5', '2020-03-15 02:32:18', '5');
INSERT INTO `sd_sys_user` VALUES ('6', 'xiaoku2', 's6esl9550b5b0ysbbs505q6s2992565s', '库存管理员', '6', '2020-05-16 10:03:04', '2');
