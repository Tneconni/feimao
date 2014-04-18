-- 2014-04-06 21：32 添加相应字段 在product 表中--
ALTER TABLE fm_product ADD COLUMN volume DECIMAL(15);
ALTER TABLE fm_product ADD COLUMN volume_class_id INT(11);
-- 2014-04-06 22：55 添加相应字段 在product 表中--
ALTER TABLE fm_product ADD COLUMN 3d_object VARCHAR(255);
-- 2014-04-17 22：55 添加相应字段 在product 表中--
ALTER TABLE fm_product ADD COLUMN `type` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:模型库,1:打印商城';
-- 2014-04-18 22：55 添加相应字段 在product 表中--
ALTER TABLE fm_product ADD COLUMN visible tinyint(1) NOT NULL DEFAULT 1;
--- 2014-04-18 22：55  example 用户上传模型 ---
INSERT INTO fm_product SET product_id = 1000, model = '用户上传模型', image = 'data/demo/uploadmodel.jpg', visible = 0, quantity = 1000, stock_status_id = 5, `status` = 1;
INSERT INTO fm_product_description SET product_id = 1000, language_id = 1, `name` = '用户上船模型';
INSERT INTO fm_product_description SET product_id = 1000, language_id = 2, `name` = '用户上船模型';
INSERT INTO fm_product_to_store SET product_id = 1000, store_id = 0;
