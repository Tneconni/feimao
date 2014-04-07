-- 2014-04-06 21：32 添加相应字段 在volume_class 表中--
CREATE TABLE `fm_volume_class` (
  `volume_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`volume_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8