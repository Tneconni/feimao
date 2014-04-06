-- --
DROP TABLE IF EXISTS `fm_customer_group`;

CREATE TABLE `fm_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

insert  into `fm_customer_group`(`customer_group_id`,`approval`,`company_id_display`,`company_id_required`,`tax_id_display`,`tax_id_required`,`sort_order`) values (1,0,1,0,0,1,1),(3,0,0,0,0,0,2),(4,0,0,0,0,0,3),(5,0,0,0,0,0,4);


DROP TABLE IF EXISTS `fm_customer_group_description`;

CREATE TABLE `fm_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

insert  into `fm_customer_group_description`(`customer_group_id`,`language_id`,`name`,`description`) values (1,2,'普通用户','test'),(3,2,'学生用户',''),(3,1,'student',''),(4,2,'专业用户',''),(4,1,'career',''),(5,2,'工业用户','industry'),(5,1,'industry','industry'),(1,1,'Default','test');
