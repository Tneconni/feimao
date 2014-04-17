-- 2014-04-06 22：55 添加字段 top_type 在product 表中--
ALTER TABLE fm_category ADD COLUMN top_type enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:模型库,1:打印商城';
