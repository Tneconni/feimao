-- this is the register sql file --
-- 2014-04-06 15：41 添加相应字段 在customer 表中--
ALTER TABLE `fm_customer` ADD `nick_name` VARCHAR(64) NOT NULL COMMENT'昵称';
ALTER TABLE `fm_customer` ADD `account` VARCHAR(64) NOT NULL  COMMENT'账号';
ALTER TABLE `fm_customer` ADD `payment_psd` VARCHAR(64) NOT NULL COMMENT'支付密码';

ALTER TABLE `fm_customer` ADD `wechat` VARCHAR(64) NOT NULL;
ALTER TABLE `fm_customer` ADD `salary` VARCHAR(64) NOT NULL;
ALTER TABLE `fm_customer` ADD `age` INT(3) NOT NULL;
ALTER TABLE `fm_customer` ADD `gender` INT(1) NOT NULL COMMENT '0:保密1：男，2：女';

-- 2014-04-06 15：41 修改公司名称 的长度 --
  ALTER TABLE `fm_address` CHANGE `company` `company` VARCHAR(64) NOT NULL;