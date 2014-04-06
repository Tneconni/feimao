-- 2014-04-06 21：32 添加相应字段 在volume_class_description 表中--
CREATE TABLE `fm_volume_class_description` (
  `volume_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`volume_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
