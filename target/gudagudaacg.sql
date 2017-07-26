/*
Navicat MySQL Data Transfer

Source Server         : gudagudaACG
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : gudagudaacg

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-07-26 15:40:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contentmodel
-- ----------------------------
DROP TABLE IF EXISTS `contentmodel`;
CREATE TABLE `contentmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(20480) DEFAULT NULL,
  `keywords` varchar(255) NOT NULL,
  `quote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contentmodel
-- ----------------------------
INSERT INTO `contentmodel` VALUES ('1', '第一篇文章', '霍达', '2017-07-17 00:00:00', '哈哈哈哈', '测试', '1');
INSERT INTO `contentmodel` VALUES ('2', '今天我去上学校', '不迟到', '2017-07-07 00:00:00', '哈哈哈哈', '5', '');
INSERT INTO `contentmodel` VALUES ('3', '杆菌耗人钱财，玩人老婆，送人上天', '罪大恶极', '2017-07-18 00:00:00', '故事是通过可以说是Fate原点的文本游戏方式进行的。『命运 冠位指定』的故事是由包括原作者奈绪蘑菇在内的Fate系列作家阵容为本游戏全新撰写的，超过100万字超大量主线剧情。全7章的主线剧情会将人类史上的7个时代作为故事的舞台。同时登场的所有从者都有个人剧情。玩家可从中欣赏身为御主的您与从者的故事，或是从者们之间的故事。掌握着各从者剧情关键的，是身为御主的您与从者之间的羁绊。', '', '');
INSERT INTO `contentmodel` VALUES ('4', '4324324324', '1111', '1111-11-11 00:00:00', '234324', '234324', '234');
INSERT INTO `contentmodel` VALUES ('5', '测试文章1', '霍达', '2017-07-21 00:00:00', '故事是通过可以说是Fate原点的文本游戏方式进行的。『命运 冠位指定』的故事是由包括原作者奈绪蘑菇在内的Fate系列作家阵容为本游戏全新撰写的，超过100万字超大量主线剧情。全7章的主线剧情会将人类史上的7个时代作为故事的舞台。同时登场的所有从者都有个人剧情。玩家可从中欣赏身为御主的您与从者的故事，或是从者们之间的故事。掌握着各从者剧情关键的，是身为御主的您与从者之间的羁绊。', 'fate go', 'http://fgo.biligame.com/?channel=baidusem');
SET FOREIGN_KEY_CHECKS=1;
