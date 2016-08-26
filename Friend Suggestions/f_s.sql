/*
MySQL Data Transfer
Source Host: localhost
Source Database: f_s
Target Host: localhost
Target Database: f_s
Date: 10/9/2014 10:47:04 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for intr
-- ----------------------------
DROP TABLE IF EXISTS `intr`;
CREATE TABLE `intr` (
  `music` varchar(10) NOT NULL DEFAULT '',
  `sports` varchar(10) NOT NULL DEFAULT '',
  `tech` varchar(10) NOT NULL DEFAULT '',
  `r_books` varchar(10) NOT NULL DEFAULT '',
  `adv` varchar(10) NOT NULL DEFAULT '',
  `game` varchar(10) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `i_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(10) NOT NULL,
  PRIMARY KEY (`i_id`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user_details` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_details
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `e_id` varchar(50) NOT NULL,
  `u_name` varchar(50) NOT NULL DEFAULT '',
  `pass` varchar(32) NOT NULL,
  `dob` varchar(32) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `phno` varchar(15) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `intr` VALUES ('', '', '', '', '', '', '', '2', '1');
INSERT INTO `user_details` VALUES ('asd', 'asd', 'asd@yah.com', '1', '1', '15-7-2005', 'Female', '1', '102312', '', '', '', '');
