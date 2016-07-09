CREATE DATABASE seckill;

use seckill;

CREATE TABLE seckill(
  `seckill_id` bigint not NULL auto_increment comment '商品库存id',
  `name` VARCHAR (120) not null comment '商品名称',
  `number` int not null comment '库存数量',
  `start_time` TIMESTAMP  not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP comment '秒杀开启时间',
  `end_time` TIMESTAMP  not null DEFAULT '0000-00-00 00:00:00' comment '秒杀结束时间',
  `create_time` TIMESTAMP  not null default CURRENT_TIMESTAMP comment '创建时间',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)  ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

INSERT  into seckill(name,number ,start_time,end_time) VALUES
('10000 iphone6s',100,'2016-05-01 00:00:00','2016-11-01 00:00:00'),
('10000 iphone5s',200,'2016-05-01 00:00:00','2016-11-01 04:00:00'),
('10000 iphone4s',300,'2016-05-01 00:00:00','2016-11-01 00:00:00'),
('10000 iphone3s',400,'2016-05-01 00:00:00','2016-11-11 00:00:00'),
('10000 iphone2s',500,'2016-05-01 00:00:00','2016-10-01 00:00:00');


CREATE TABLE success_killed(
`seckill_id` bigint not null comment '秒杀商品id',
`user_phone` bigint not null comment '用户手机号',
`state` tinyint not null DEFAULT -1 comment '状态标示:-1:无效; 0:成功; 1:已付款; 2:已发货',
`create_time` TIMESTAMP  not null comment '创建时间',
PRIMARY key(seckill_id,user_phone),
key idx_create_time(create_time )
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';
