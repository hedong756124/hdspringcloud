/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : honghu_system

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-05-18 12:20:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('HonghuScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('HonghuScheduler', 'TASK_2', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('HonghuScheduler', 'TASK_1', 'DEFAULT', null, 'com.honghu.cloud.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400B67B226A6F624964223A312C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A2274657374222C22706172616D73223A2272656E72656E222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A302C2272656D61726B223A22E69C89E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320312C20323031362031313A31363A343620504D227D7800);
INSERT INTO `qrtz_job_details` VALUES ('HonghuScheduler', 'TASK_2', 'DEFAULT', null, 'com.honghu.cloud.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400A47B226A6F624964223A322C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A227465737432222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A312C2272656D61726B223A22E697A0E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320332C203230313620323A35353A353620504D227D7800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('HonghuScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('HonghuScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('HonghuScheduler', 'LAPTOP-6TTHN8IT1524902887169', '1524904397544', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('HonghuScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1524906000000', '1524904200000', '5', 'WAITING', 'CRON', '1518952137000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400B67B226A6F624964223A312C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A2274657374222C22706172616D73223A22686F6E676875222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A302C2272656D61726B223A22E69C89E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320312C20323031362031313A31363A343620504D227D7800);
INSERT INTO `qrtz_triggers` VALUES ('HonghuScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', null, '1518953400000', '-1', '5', 'PAUSED', 'CRON', '1518952137000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400A47B226A6F624964223A322C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A227465737432222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A312C2272656D61726B223A22E697A0E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320332C203230313620323A35353A353620504D227D7800);

-- ----------------------------
-- Table structure for `schedule_job`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'test', 'honghu', '0 0/30 * * * ?', '0', '有参数测试', '2016-12-01 23:16:46');
INSERT INTO `schedule_job` VALUES ('2', 'testTask', 'test2', null, '0 0/30 * * * ?', '1', '无参数测试', '2016-12-03 14:55:56');

-- ----------------------------
-- Table structure for `schedule_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('66', '1', 'testTask', 'test', 'honghu', '0', null, '1041', '2018-04-03 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('67', '1', 'testTask', 'test', 'honghu', '0', null, '1017', '2018-04-04 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('68', '1', 'testTask', 'test', 'honghu', '0', null, '1013', '2018-04-04 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('69', '1', 'testTask', 'test', 'honghu', '0', null, '1023', '2018-04-04 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('70', '1', 'testTask', 'test', 'honghu', '0', null, '1007', '2018-04-04 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('71', '1', 'testTask', 'test', 'honghu', '0', null, '1003', '2018-04-04 11:31:05');
INSERT INTO `schedule_job_log` VALUES ('72', '1', 'testTask', 'test', 'honghu', '0', null, '1010', '2018-04-04 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('73', '1', 'testTask', 'test', 'honghu', '0', null, '1011', '2018-04-04 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('74', '1', 'testTask', 'test', 'honghu', '0', null, '1014', '2018-04-04 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('75', '1', 'testTask', 'test', 'honghu', '0', null, '1015', '2018-04-04 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('76', '1', 'testTask', 'test', 'honghu', '0', null, '1005', '2018-04-04 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('77', '1', 'testTask', 'test', 'honghu', '0', null, '1017', '2018-04-04 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('78', '1', 'testTask', 'test', 'honghu', '0', null, '1014', '2018-04-04 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('79', '1', 'testTask', 'test', 'honghu', '0', null, '1019', '2018-04-04 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('80', '1', 'testTask', 'test', 'honghu', '0', null, '1021', '2018-04-04 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('81', '1', 'testTask', 'test', 'honghu', '0', null, '1017', '2018-04-04 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('82', '1', 'testTask', 'test', 'honghu', '0', null, '1038', '2018-04-18 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('83', '1', 'testTask', 'test', 'honghu', '0', null, '1007', '2018-04-18 18:16:17');
INSERT INTO `schedule_job_log` VALUES ('84', '1', 'testTask', 'test', 'honghu', '0', null, '1010', '2018-04-18 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('85', '1', 'testTask', 'test', 'honghu', '0', null, '1007', '2018-04-18 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('86', '1', 'testTask', 'test', 'honghu', '0', null, '1010', '2018-04-18 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('87', '1', 'testTask', 'test', 'honghu', '0', null, '1009', '2018-04-18 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('88', '1', 'testTask', 'test', 'honghu', '0', null, '1013', '2018-04-18 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('89', '1', 'testTask', 'test', 'honghu', '0', null, '1011', '2018-04-18 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('90', '1', 'testTask', 'test', 'honghu', '0', null, '1018', '2018-04-18 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('91', '1', 'testTask', 'test', 'honghu', '0', null, '1042', '2018-04-28 16:30:00');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '深圳市明理信息科技', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '深圳分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '广州分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '3', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '销售部', '1', '0');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '立即执行任务', 'com.csvw.sx.modules.job.controller.ScheduleJobController.run()', '[2]', '54', '0:0:0:0:0:0:0:1', '2018-03-14 22:46:08');
INSERT INTO `sys_log` VALUES ('2', 'admin', '立即执行任务', 'com.csvw.sx.modules.job.controller.ScheduleJobController.run()', '[2]', '16', '0:0:0:0:0:0:0:1', '2018-03-14 22:46:20');
INSERT INTO `sys_log` VALUES ('3', 'admin', '保存菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"调度管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1}', '10', '0:0:0:0:0:0:0:1', '2018-03-24 23:13:04');
INSERT INTO `sys_log` VALUES ('4', 'admin', '保存菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":36,\"parentName\":\"调度管理\",\"name\":\"任务管理\",\"url\":\"modules/job/schedule.html\",\"type\":1,\"icon\":\"fa fa-tasks\",\"orderNum\":1}', '6', '0:0:0:0:0:0:0:1', '2018-03-24 23:15:17');
INSERT INTO `sys_log` VALUES ('5', 'admin', '删除菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.delete()', '37', '24', '0:0:0:0:0:0:0:1', '2018-03-24 23:42:34');
INSERT INTO `sys_log` VALUES ('6', 'admin', '删除菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.delete()', '36', '9', '0:0:0:0:0:0:0:1', '2018-03-24 23:42:37');
INSERT INTO `sys_log` VALUES ('7', 'admin', '保存菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"调度管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":0}', '6', '0:0:0:0:0:0:0:1', '2018-03-25 01:45:24');
INSERT INTO `sys_log` VALUES ('8', 'admin', '保存菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"系统日志管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":0}', '4', '0:0:0:0:0:0:0:1', '2018-03-25 01:46:28');
INSERT INTO `sys_log` VALUES ('9', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":6,\"parentId\":38,\"parentName\":\"调度管理\",\"name\":\"定时任务\",\"url\":\"modules/job/schedule.html\",\"type\":1,\"icon\":\"fa fa-tasks\",\"orderNum\":1}', '7', '0:0:0:0:0:0:0:1', '2018-03-25 01:46:48');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":29,\"parentId\":39,\"parentName\":\"系统日志管理\",\"name\":\"系统日志\",\"url\":\"modules/sys/log.html\",\"perms\":\"sys:log:list\",\"type\":1,\"icon\":\"fa fa-file-text-o\",\"orderNum\":7}', '6', '0:0:0:0:0:0:0:1', '2018-03-25 01:47:02');
INSERT INTO `sys_log` VALUES ('11', 'admin', '保存菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"系统监控\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":0}', '4', '0:0:0:0:0:0:0:1', '2018-03-25 01:47:25');
INSERT INTO `sys_log` VALUES ('12', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":5,\"parentId\":40,\"parentName\":\"系统监控\",\"name\":\"SQL监控\",\"url\":\"druid/sql.html\",\"type\":1,\"icon\":\"fa fa-bug\",\"orderNum\":4}', '5', '0:0:0:0:0:0:0:1', '2018-03-25 01:47:36');
INSERT INTO `sys_log` VALUES ('13', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":2,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"用户管理\",\"url\":\"modules/sys/user.html\",\"type\":1,\"icon\":\"fa fa-user\",\"orderNum\":1}', '7', '0:0:0:0:0:0:0:1', '2018-03-25 01:49:59');
INSERT INTO `sys_log` VALUES ('14', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":27,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"配置管理\",\"url\":\"modules/sys/config.html\",\"perms\":\"sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete\",\"type\":1,\"icon\":\"fa fa-sun-o\",\"orderNum\":6}', '5', '0:0:0:0:0:0:0:1', '2018-03-25 01:50:48');
INSERT INTO `sys_log` VALUES ('15', 'admin', '保存菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"文件管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":0}', '6', '0:0:0:0:0:0:0:1', '2018-03-25 01:51:00');
INSERT INTO `sys_log` VALUES ('16', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":30,\"parentId\":41,\"parentName\":\"文件管理\",\"name\":\"文件上传\",\"url\":\"modules/oss/oss.html\",\"perms\":\"sys:oss:all\",\"type\":1,\"icon\":\"fa fa-file-image-o\",\"orderNum\":6}', '4', '0:0:0:0:0:0:0:1', '2018-03-25 01:51:11');
INSERT INTO `sys_log` VALUES ('17', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":39,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"日志管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":0}', '5', '0:0:0:0:0:0:0:1', '2018-03-25 01:51:45');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改菜单', 'com.csvw.sx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":5,\"parentId\":40,\"parentName\":\"系统监控\",\"name\":\"连接池监控\",\"url\":\"druid/sql.html\",\"type\":1,\"icon\":\"fa fa-bug\",\"orderNum\":4}', '5', '0:0:0:0:0:0:0:1', '2018-03-25 01:52:29');
INSERT INTO `sys_log` VALUES ('19', 'admin', '修改用户', 'com.csvw.sx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":\"9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"2170983087@qq.com\",\"mobile\":\"15888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"深圳市明理信息科技\"}', '8', '0:0:0:0:0:0:0:1', '2018-03-25 01:57:26');
INSERT INTO `sys_log` VALUES ('20', 'admin', '保存角色', 'com.csvw.sx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"系统管理员\",\"remark\":\"总部系统管理员\",\"deptId\":1,\"deptName\":\"深圳市明理信息科技\",\"menuIdList\":[1,2,15,16,17,18,31,32,33,34,35,3,19,20,21,22,4,23,24,25,26,27,38,6,7,8,9,10,11,12,13,14,39,29,40,5,41,30],\"deptIdList\":[1,2,3,4,5],\"createTime\":\"Mar 25, 2018 2:12:30 AM\"}', '97', '0:0:0:0:0:0:0:1', '2018-03-25 02:12:31');
INSERT INTO `sys_log` VALUES ('21', 'admin', '保存用户', 'com.csvw.sx.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"cloud1\",\"password\":\"ff7c8db31621d23ae66e3ff38748275bb07e3a629e8e2587d268feca834544a4\",\"salt\":\"zyz0ZCNhU7re3lEpX7AA\",\"email\":\"2170983087@qq.com\",\"mobile\":\"15888888888\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Mar 25, 2018 2:13:23 AM\",\"deptId\":1,\"deptName\":\"深圳市明理信息科技\"}', '31', '0:0:0:0:0:0:0:1', '2018-03-25 02:13:23');
INSERT INTO `sys_log` VALUES ('22', 'admin', '保存用户', 'com.csvw.sx.modules.sys.controller.SysUserController.save()', '{\"userId\":3,\"username\":\"cloud2\",\"password\":\"62c72d7d1639e8d090a6ce865c132f0755eb4ea55ba3a076c037ad9c3d149cdf\",\"salt\":\"I0UNp63Fh3xRi8sItvRl\",\"email\":\"2170983087@qq.com\",\"mobile\":\"15888888888\",\"status\":0,\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Mar 25, 2018 2:13:57 AM\",\"deptId\":1,\"deptName\":\"深圳市明理信息科技\"}', '10', '0:0:0:0:0:0:0:1', '2018-03-25 02:13:57');
INSERT INTO `sys_log` VALUES ('23', 'admin', '保存角色', 'com.csvw.sx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":2,\"roleName\":\"HR\",\"remark\":\"总部HR\",\"deptId\":1,\"deptName\":\"深圳市明理信息科技\",\"menuIdList\":[38,6,7,8,9,10,11,12,13,14,39,29,40,5,41,30],\"deptIdList\":[1,2,3,4,5],\"createTime\":\"Mar 25, 2018 2:15:54 AM\"}', '13', '0:0:0:0:0:0:0:1', '2018-03-25 02:15:54');
INSERT INTO `sys_log` VALUES ('24', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":31,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"部门管理\",\"url\":\"modules/sys/dept.html\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":1}', '8', '0:0:0:0:0:0:0:1', '2018-03-29 23:09:17');
INSERT INTO `sys_log` VALUES ('25', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":3,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"角色管理\",\"url\":\"modules/sys/role.html\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":2}', '5', '0:0:0:0:0:0:0:1', '2018-03-29 23:09:38');
INSERT INTO `sys_log` VALUES ('26', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":4,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"菜单管理\",\"url\":\"modules/sys/menu.html\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":3}', '6', '0:0:0:0:0:0:0:1', '2018-03-29 23:09:55');
INSERT INTO `sys_log` VALUES ('27', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":27,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"配置管理\",\"url\":\"modules/sys/config.html\",\"perms\":\"sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":6}', '6', '0:0:0:0:0:0:0:1', '2018-03-29 23:10:07');
INSERT INTO `sys_log` VALUES ('28', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":6,\"parentId\":38,\"parentName\":\"调度管理\",\"name\":\"定时任务\",\"url\":\"modules/job/schedule.html\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":1}', '5', '0:0:0:0:0:0:0:1', '2018-03-29 23:10:17');
INSERT INTO `sys_log` VALUES ('29', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":29,\"parentId\":39,\"parentName\":\"日志管理\",\"name\":\"系统日志\",\"url\":\"modules/sys/log.html\",\"perms\":\"sys:log:list\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":7}', '4', '0:0:0:0:0:0:0:1', '2018-03-29 23:10:28');
INSERT INTO `sys_log` VALUES ('30', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":5,\"parentId\":40,\"parentName\":\"系统监控\",\"name\":\"连接池监控\",\"url\":\"druid/sql.html\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":4}', '4', '0:0:0:0:0:0:0:1', '2018-03-29 23:10:37');
INSERT INTO `sys_log` VALUES ('31', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":30,\"parentId\":41,\"parentName\":\"文件管理\",\"name\":\"文件上传\",\"url\":\"modules/oss/oss.html\",\"perms\":\"sys:oss:all\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":6}', '4', '0:0:0:0:0:0:0:1', '2018-03-29 23:10:48');
INSERT INTO `sys_log` VALUES ('32', 'admin', '保存菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"注册中心\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":0}', '4', '0:0:0:0:0:0:0:1', '2018-03-31 21:49:00');
INSERT INTO `sys_log` VALUES ('33', 'admin', '保存菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.save()', '{\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://localhost:8761/\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '6', '0:0:0:0:0:0:0:1', '2018-03-31 21:50:15');
INSERT INTO `sys_log` VALUES ('34', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"commonservice/eureka\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '13', '0:0:0:0:0:0:0:1', '2018-03-31 22:37:20');
INSERT INTO `sys_log` VALUES ('35', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"commonservice/eureka/list\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '13', '0:0:0:0:0:0:0:1', '2018-03-31 22:49:00');
INSERT INTO `sys_log` VALUES ('36', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"localhost:8761\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2018-04-01 10:55:49');
INSERT INTO `sys_log` VALUES ('37', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://localhost:8761/\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2018-04-01 10:58:06');
INSERT INTO `sys_log` VALUES ('38', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://minglisoft.cn\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '6', '0:0:0:0:0:0:0:1', '2018-04-01 11:00:25');
INSERT INTO `sys_log` VALUES ('39', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://jeesz.cn:8761\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '6', '0:0:0:0:0:0:0:1', '2018-04-01 11:01:23');
INSERT INTO `sys_log` VALUES ('40', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://jeesz.cn:8761/\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2018-04-01 11:02:36');
INSERT INTO `sys_log` VALUES ('41', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://127.0.0.1:8761/\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '7', '0:0:0:0:0:0:0:1', '2018-04-01 11:03:28');
INSERT INTO `sys_log` VALUES ('42', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://127.0.0.1:8761/sssss\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '8', '0:0:0:0:0:0:0:1', '2018-04-01 11:23:32');
INSERT INTO `sys_log` VALUES ('43', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":42,\"parentName\":\"注册中心\",\"name\":\"Eureka注册中心\",\"url\":\"http://localhost:8761/commonservice-eureka/\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":0}', '7', '0:0:0:0:0:0:0:1', '2018-04-01 11:26:23');
INSERT INTO `sys_log` VALUES ('44', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '43', '29', '0:0:0:0:0:0:0:1', '2018-04-01 11:32:56');
INSERT INTO `sys_log` VALUES ('45', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '42', '6', '0:0:0:0:0:0:0:1', '2018-04-01 11:33:01');
INSERT INTO `sys_log` VALUES ('46', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2018-04-03 19:17:58');
INSERT INTO `sys_log` VALUES ('47', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2018-04-03 19:18:11');
INSERT INTO `sys_log` VALUES ('48', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":30,\"parentId\":41,\"parentName\":\"文件管理\",\"name\":\"文件上传\",\"url\":\"modules/oss/oss.html\",\"perms\":\"\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":6}', '11', '0:0:0:0:0:0:0:1', '2018-04-03 19:18:40');
INSERT INTO `sys_log` VALUES ('49', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2018-04-03 19:18:46');
INSERT INTO `sys_log` VALUES ('50', 'admin', '修改菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.update()', '{\"menuId\":30,\"parentId\":41,\"parentName\":\"文件管理\",\"name\":\"文件上传\",\"url\":\"modules/oss/oss.html\",\"perms\":\"sys:oss:all\",\"type\":1,\"icon\":\"fa fa-cubes\",\"orderNum\":6}', '7', '0:0:0:0:0:0:0:1', '2018-04-03 19:18:53');
INSERT INTO `sys_log` VALUES ('51', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2018-04-03 19:20:00');
INSERT INTO `sys_log` VALUES ('52', 'admin', '删除菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2018-04-03 19:20:35');
INSERT INTO `sys_log` VALUES ('53', 'admin', '暂停定时任务', 'com.honghu.cloud.modules.job.controller.ScheduleJobController.pause()', '[1]', '57', '0:0:0:0:0:0:0:1', '2018-04-18 18:16:11');
INSERT INTO `sys_log` VALUES ('54', 'admin', '立即执行任务', 'com.honghu.cloud.modules.job.controller.ScheduleJobController.run()', '[1]', '20', '0:0:0:0:0:0:0:1', '2018-04-18 18:16:17');
INSERT INTO `sys_log` VALUES ('55', 'admin', '恢复定时任务', 'com.honghu.cloud.modules.job.controller.ScheduleJobController.resume()', '[1]', '15', '0:0:0:0:0:0:0:1', '2018-04-18 18:16:28');
INSERT INTO `sys_log` VALUES ('56', 'admin', '保存菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.save()', '{\"parentId\":40,\"parentName\":\"系统监控\",\"name\":\"eureka\",\"url\":\"http://localhost:8761/\",\"type\":1,\"orderNum\":0}', '9', '0:0:0:0:0:0:0:1', '2018-04-18 22:55:37');
INSERT INTO `sys_log` VALUES ('57', 'admin', '保存菜单', 'com.honghu.cloud.modules.sys.controller.SysMenuController.save()', '{\"parentId\":40,\"parentName\":\"系统监控\",\"name\":\"minglisoft\",\"url\":\"http://minglisoft.cn/\",\"type\":1,\"orderNum\":0}', '5', '0:0:0:0:0:0:0:1', '2018-04-18 22:56:00');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '用户管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-cubes', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-cubes', '3');
INSERT INTO `sys_menu` VALUES ('5', '40', '连接池监控', 'druid/sql.html', null, '1', 'fa fa-cubes', '4');
INSERT INTO `sys_menu` VALUES ('6', '38', '定时任务', 'modules/job/schedule.html', null, '1', 'fa fa-cubes', '1');
INSERT INTO `sys_menu` VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '配置管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-cubes', '6');
INSERT INTO `sys_menu` VALUES ('29', '39', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-cubes', '7');
INSERT INTO `sys_menu` VALUES ('31', '1', '部门管理', 'modules/sys/dept.html', null, '1', 'fa fa-cubes', '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('38', '0', '调度管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('39', '0', '日志管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('40', '0', '系统监控', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('41', '40', 'eureka', 'http://localhost:8761/', null, '1', null, '0');
INSERT INTO `sys_menu` VALUES ('42', '40', 'minglisoft', 'http://minglisoft.cn/', null, '1', null, '0');

-- ----------------------------
-- Table structure for `sys_oss`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '总部系统管理员', '1', '2018-03-25 02:12:31');
INSERT INTO `sys_role` VALUES ('2', 'HR', '总部HR', '1', '2018-03-25 02:15:54');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('1', '1', '1');
INSERT INTO `sys_role_dept` VALUES ('2', '1', '2');
INSERT INTO `sys_role_dept` VALUES ('3', '1', '3');
INSERT INTO `sys_role_dept` VALUES ('4', '1', '4');
INSERT INTO `sys_role_dept` VALUES ('5', '1', '5');
INSERT INTO `sys_role_dept` VALUES ('6', '2', '1');
INSERT INTO `sys_role_dept` VALUES ('7', '2', '2');
INSERT INTO `sys_role_dept` VALUES ('8', '2', '3');
INSERT INTO `sys_role_dept` VALUES ('9', '2', '4');
INSERT INTO `sys_role_dept` VALUES ('10', '2', '5');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('4', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('5', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('6', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('7', '1', '31');
INSERT INTO `sys_role_menu` VALUES ('8', '1', '32');
INSERT INTO `sys_role_menu` VALUES ('9', '1', '33');
INSERT INTO `sys_role_menu` VALUES ('10', '1', '34');
INSERT INTO `sys_role_menu` VALUES ('11', '1', '35');
INSERT INTO `sys_role_menu` VALUES ('12', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('13', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('14', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('15', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('16', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('17', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('18', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('19', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('20', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('21', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('22', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('23', '1', '38');
INSERT INTO `sys_role_menu` VALUES ('24', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('25', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('26', '1', '8');
INSERT INTO `sys_role_menu` VALUES ('27', '1', '9');
INSERT INTO `sys_role_menu` VALUES ('28', '1', '10');
INSERT INTO `sys_role_menu` VALUES ('29', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('30', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('31', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('32', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('33', '1', '39');
INSERT INTO `sys_role_menu` VALUES ('34', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('35', '1', '40');
INSERT INTO `sys_role_menu` VALUES ('36', '1', '5');
INSERT INTO `sys_role_menu` VALUES ('37', '1', '41');
INSERT INTO `sys_role_menu` VALUES ('38', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('39', '2', '38');
INSERT INTO `sys_role_menu` VALUES ('40', '2', '6');
INSERT INTO `sys_role_menu` VALUES ('41', '2', '7');
INSERT INTO `sys_role_menu` VALUES ('42', '2', '8');
INSERT INTO `sys_role_menu` VALUES ('43', '2', '9');
INSERT INTO `sys_role_menu` VALUES ('44', '2', '10');
INSERT INTO `sys_role_menu` VALUES ('45', '2', '11');
INSERT INTO `sys_role_menu` VALUES ('46', '2', '12');
INSERT INTO `sys_role_menu` VALUES ('47', '2', '13');
INSERT INTO `sys_role_menu` VALUES ('48', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('49', '2', '39');
INSERT INTO `sys_role_menu` VALUES ('50', '2', '29');
INSERT INTO `sys_role_menu` VALUES ('51', '2', '40');
INSERT INTO `sys_role_menu` VALUES ('52', '2', '5');
INSERT INTO `sys_role_menu` VALUES ('53', '2', '41');
INSERT INTO `sys_role_menu` VALUES ('54', '2', '30');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', '2170983087@qq.com', '15888888888', '1', '1', '2016-11-11 11:11:11');
INSERT INTO `sys_user` VALUES ('2', 'cloud1', 'ff7c8db31621d23ae66e3ff38748275bb07e3a629e8e2587d268feca834544a4', 'zyz0ZCNhU7re3lEpX7AA', '2170983087@qq.com', '15888888888', '1', '1', '2018-03-25 02:13:23');
INSERT INTO `sys_user` VALUES ('3', 'cloud2', '62c72d7d1639e8d090a6ce865c132f0755eb4ea55ba3a076c037ad9c3d149cdf', 'I0UNp63Fh3xRi8sItvRl', '2170983087@qq.com', '15888888888', '0', '1', '2018-03-25 02:13:57');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '2', '1');
INSERT INTO `sys_user_role` VALUES ('2', '3', '1');

-- ----------------------------
-- Table structure for `sys_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户Token';

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES ('1', 'ea5f4270a95c012d70e35319fca88371', '2018-04-29 04:10:50', '2018-04-28 16:10:50');

-- ----------------------------
-- Table structure for `t_auction`
-- ----------------------------
DROP TABLE IF EXISTS `t_auction`;
CREATE TABLE `t_auction` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `type` varchar(10) NOT NULL COMMENT '类型:0竞拍  ,1邀请',
  `name` varchar(200) NOT NULL COMMENT '发布者名称',
  `file_type` varchar(10) NOT NULL COMMENT '文件类型:1:图片 ,2:视频',
  `theme` varchar(100) NOT NULL COMMENT '主题',
  `address` varchar(100) NOT NULL COMMENT '约会地点',
  `status` varchar(10) NOT NULL COMMENT '0待审核  ,1未通过审核 ,2审核通过  ,3待付款 , 4已完成 ,5已取消',
  `price` double NOT NULL COMMENT '出价',
  `number` int(11) NOT NULL COMMENT '出价次数',
  `desc` varchar(500) NOT NULL COMMENT '详细描述',
  `coordinate_x` int(11) NOT NULL COMMENT '地点X',
  `coordinate_y` int(11) NOT NULL COMMENT '地点Y',
  `mid` varchar(64) NOT NULL COMMENT '发布者',
  `activity_start_date` datetime NOT NULL COMMENT '拍卖开始时间',
  `activity_end_date` datetime NOT NULL COMMENT '拍卖结束时间',
  `appointment_start_date` datetime NOT NULL COMMENT '赴约开始时间',
  `appointment_end_date` datetime NOT NULL COMMENT '赴约结束时间',
  `claim_sex` varchar(10) DEFAULT NULL COMMENT '性别要求:0 不限  ,1男  ,2女',
  `claim_participator_num` int(11) NOT NULL COMMENT '赴约人数要求',
  `start_price` double NOT NULL COMMENT '起拍价(竞拍)或估价（邀请）',
  `donate_percentage` double NOT NULL COMMENT '慈善捐赠比列:0-100',
  `win_user_id` varchar(64) DEFAULT NULL COMMENT '中标用户id',
  `win_price` double DEFAULT NULL COMMENT '中标价格',
  `browse_num` int(11) DEFAULT NULL COMMENT '围观次数',
  `collect_num` int(11) DEFAULT NULL COMMENT '收藏次数',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间/发布时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` varchar(10) NOT NULL COMMENT '删除标记:0不删除  1已删除',
  `url1` varchar(200) NOT NULL COMMENT '视频或图的url',
  `url2` varchar(200) DEFAULT NULL COMMENT '视频或图的url',
  `url3` varchar(200) DEFAULT NULL COMMENT '视频或图的url',
  `url4` varchar(200) DEFAULT NULL COMMENT '视频或图的url',
  `url5` varchar(200) DEFAULT NULL COMMENT '视频或图的url',
  `city` varchar(100) NOT NULL COMMENT '城市',
  `win_estimate` varchar(10) NOT NULL COMMENT '买方是否评价 0未评价，1已评价',
  `seller_estimate` varchar(10) NOT NULL COMMENT '拍方是否评论 0未评价，1已评价',
  `claim_cannot_fans_mids` varchar(1000) DEFAULT NULL COMMENT '谁不可竞拍:粉丝',
  `claim_cannot_other_mids` varchar(1000) DEFAULT NULL COMMENT '谁不可竞拍:其他',
  `claim_can_fans_mids` varchar(1000) DEFAULT NULL COMMENT '谁可竞拍:粉丝',
  `claim_can_other_mids` varchar(1000) DEFAULT NULL COMMENT '谁可竞拍:其他',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t_auction 拍卖';

-- ----------------------------
-- Records of t_auction
-- ----------------------------
INSERT INTO `t_auction` VALUES ('3a28ee790af24f28b5075867122aef9a', '0', '罗新文', '1', '流量监控', '深圳', '2', '188', '0', '图咯旅途', '23', '114', 'a1d577c8e7ed43139a8c2af756a4f068', '2018-05-17 18:40:35', '2018-05-18 18:40:39', '2018-05-19 18:40:45', '2018-05-20 18:40:48', '2', '12', '188', '0', null, null, null, null, '2018-05-16 11:10:08', null, null, '2018-05-16 11:10:08', '0', 'publish/868f530e032945c4bd4c5b6ec464b083.png', 'publish/a58dc4a1c3fd4f1c8058ef2ef42e8824.png', null, null, null, '深圳', '0', '0', null, null, null, null);
INSERT INTO `t_auction` VALUES ('401725cf962a42e081f0a1a4fef4c99a', '0', '罗新文', '1', '流量监控', '深圳', '2', '188', '0', '图咯旅途', '23', '114', 'a1d577c8e7ed43139a8c2af756a4f068', '2018-05-17 18:40:35', '2018-05-18 18:40:39', '2018-05-19 18:40:45', '2018-05-20 18:40:48', '2', '12', '188', '0', null, null, null, null, '2018-05-16 11:12:42', null, null, '2018-05-16 11:12:42', '0', 'publish/868f530e032945c4bd4c5b6ec464b083.png', 'publish/a58dc4a1c3fd4f1c8058ef2ef42e8824.png', null, null, null, '深圳', '0', '0', null, null, null, null);
INSERT INTO `t_auction` VALUES ('5f4b404cca95471986b38d0a79ec6fb6', '0', '都生日快乐啦', '1', '啦啦啦', '深圳', '2', '100', '0', '图来看看图', '23', '114', 'a1d577c8e7ed43139a8c2af756a4f068', '2018-05-17 19:15:55', '2018-05-18 19:15:58', '2018-05-17 19:16:03', '2018-05-18 19:16:06', '2', '12', '100', '0', null, null, null, null, '2018-05-16 11:19:45', null, null, '2018-05-16 11:19:45', '0', 'publish/6286d4cf5e9148b9a3074f4bf544fcb3.jpg', 'publish/03cd2048863241788ed97b7368a94d4f.jpg', null, null, null, '深圳', '0', '0', null, null, null, null);
INSERT INTO `t_auction` VALUES ('7a06d0859bdc4f2c8ff0cf1438d3bd52', '0', '罗新文', '1', '流量监控', '深圳', '2', '188', '0', '图咯旅途', '23', '114', 'a1d577c8e7ed43139a8c2af756a4f068', '2018-05-17 18:40:35', '2018-05-18 18:40:39', '2018-05-19 18:40:45', '2018-05-20 18:40:48', '2', '12', '188', '0', null, null, null, null, '2018-05-16 11:18:02', null, null, '2018-05-16 11:18:02', '0', 'publish/868f530e032945c4bd4c5b6ec464b083.png', 'publish/a58dc4a1c3fd4f1c8058ef2ef42e8824.png', null, null, null, '深圳', '0', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `t_member_collect`
-- ----------------------------
DROP TABLE IF EXISTS `t_member_collect`;
CREATE TABLE `t_member_collect` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `auction_id` varchar(64) NOT NULL COMMENT '拍品id',
  `mid` varchar(64) NOT NULL COMMENT '会员id',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `classify_collect_id` varchar(64) DEFAULT NULL COMMENT '收藏分类',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` varchar(10) NOT NULL COMMENT '删除标记:0不删除  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 收藏';

-- ----------------------------
-- Records of t_member_collect
-- ----------------------------
INSERT INTO `t_member_collect` VALUES ('4d96d8312c9645b98f6a7a709be3554d', '1', 'a1d577c8e7ed43139a8c2af756a4f068', '2018-05-15 19:51:04', null, null, null, '2018-05-15 19:51:04', '0');
INSERT INTO `t_member_collect` VALUES ('b0d67e846ee04fa28ca3b4a7f1321f55', '7a06d0859bdc4f2c8ff0cf1438d3bd52', '749a5a0156494f3db7ff55559ae3b2ad', '2018-05-16 17:17:19', null, null, null, '2018-05-16 17:17:19', '0');
INSERT INTO `t_member_collect` VALUES ('ea6846aa3cb9431e996e489d2c4fd94e', '5f4b404cca95471986b38d0a79ec6fb6', '749a5a0156494f3db7ff55559ae3b2ad', '2018-05-16 17:12:48', null, null, null, '2018-05-16 17:12:48', '0');

-- ----------------------------
-- Table structure for `tb_token`
-- ----------------------------
DROP TABLE IF EXISTS `tb_token`;
CREATE TABLE `tb_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Token';

-- ----------------------------
-- Records of tb_token
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');
