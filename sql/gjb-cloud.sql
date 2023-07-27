/*
SQLyog v10.2 
MySQL - 8.0.11 : Database - gjb-cloud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gjb-cloud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `gjb-cloud`;

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'sys_config','参数配置表',NULL,NULL,'SysConfig','crud','com.ruoyi.system','system','config','参数配置','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(2,'sys_dict_data','字典数据表',NULL,NULL,'SysDictData','crud','com.ruoyi.system','system','data','字典数据','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(3,'sys_dict_type','字典类型表',NULL,NULL,'SysDictType','crud','com.ruoyi.system','system','type','字典类型','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(4,'sys_job','定时任务调度表',NULL,NULL,'SysJob','crud','com.ruoyi.system','system','job','定时任务调度','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(5,'sys_job_log','定时任务调度日志表',NULL,NULL,'SysJobLog','crud','com.ruoyi.system','system','log','定时任务调度日志','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(6,'sys_logininfor','系统访问记录',NULL,NULL,'SysLogininfor','crud','com.ruoyi.system','system','logininfor','系统访问记录','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(7,'sys_notice','通知公告表',NULL,NULL,'SysNotice','crud','com.ruoyi.system','system','notice','通知公告','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(8,'sys_oper_log','操作日志记录',NULL,NULL,'SysOperLog','crud','com.ruoyi.system','system','log','操作日志记录','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(9,'sys_role_dept','角色和部门关联表',NULL,NULL,'SysRoleDept','crud','com.ruoyi.system','system','dept','角色和部门关联','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(10,'sys_user_post','用户与岗位关联表',NULL,NULL,'SysUserPost','crud','com.ruoyi.system','system','post','用户与岗位关联','ruoyi','0','/',NULL,'admin','2023-05-26 03:31:39','',NULL,NULL),(11,'sys_dept','部门表',NULL,NULL,'SysDept','crud','com.gjb.system','system','dept','部门','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL),(12,'sys_menu','菜单权限表',NULL,NULL,'SysMenu','crud','com.gjb.system','system','menu','菜单权限','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL),(13,'sys_post','岗位信息表',NULL,NULL,'SysPost','crud','com.gjb.system','system','post','岗位信息','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL),(14,'sys_role','角色信息表',NULL,NULL,'SysRole','crud','com.gjb.system','system','role','角色信息','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL),(15,'sys_role_menu','角色和菜单关联表',NULL,NULL,'SysRoleMenu','crud','com.gjb.system','system','menu','角色和菜单关联','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL),(16,'sys_user','用户信息表',NULL,NULL,'SysUser','crud','com.gjb.system','system','user','用户信息','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL),(17,'sys_user_role','用户和角色关联表',NULL,NULL,'SysUserRole','crud','com.gjb.system','system','role','用户和角色关联','gjb','0','/',NULL,'admin','2023-05-26 04:23:10','',NULL,NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (1,'1','config_id','参数主键','int(5)','Integer','configId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(2,'1','config_name','参数名称','varchar(100)','String','configName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2023-05-26 03:31:39','',NULL),(3,'1','config_key','参数键名','varchar(100)','String','configKey','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-05-26 03:31:39','',NULL),(4,'1','config_value','参数键值','varchar(500)','String','configValue','0','0',NULL,'1','1','1','1','EQ','textarea','',4,'admin','2023-05-26 03:31:39','',NULL),(5,'1','config_type','系统内置（Y是 N否）','char(1)','String','configType','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2023-05-26 03:31:39','',NULL),(6,'1','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2023-05-26 03:31:39','',NULL),(7,'1','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2023-05-26 03:31:39','',NULL),(8,'1','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2023-05-26 03:31:39','',NULL),(9,'1','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2023-05-26 03:31:39','',NULL),(10,'1','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2023-05-26 03:31:39','',NULL),(11,'2','dict_code','字典编码','bigint(20)','Long','dictCode','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(12,'2','dict_sort','字典排序','int(4)','Integer','dictSort','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2023-05-26 03:31:39','',NULL),(13,'2','dict_label','字典标签','varchar(100)','String','dictLabel','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-05-26 03:31:39','',NULL),(14,'2','dict_value','字典键值','varchar(100)','String','dictValue','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2023-05-26 03:31:39','',NULL),(15,'2','dict_type','字典类型','varchar(100)','String','dictType','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2023-05-26 03:31:39','',NULL),(16,'2','css_class','样式属性（其他样式扩展）','varchar(100)','String','cssClass','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-05-26 03:31:39','',NULL),(17,'2','list_class','表格回显样式','varchar(100)','String','listClass','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-05-26 03:31:39','',NULL),(18,'2','is_default','是否默认（Y是 N否）','char(1)','String','isDefault','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2023-05-26 03:31:39','',NULL),(19,'2','status','状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',9,'admin','2023-05-26 03:31:39','',NULL),(20,'2','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2023-05-26 03:31:39','',NULL),(21,'2','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',11,'admin','2023-05-26 03:31:39','',NULL),(22,'2','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',12,'admin','2023-05-26 03:31:39','',NULL),(23,'2','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',13,'admin','2023-05-26 03:31:39','',NULL),(24,'2','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',14,'admin','2023-05-26 03:31:39','',NULL),(25,'3','dict_id','字典主键','bigint(20)','Long','dictId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(26,'3','dict_name','字典名称','varchar(100)','String','dictName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2023-05-26 03:31:39','',NULL),(27,'3','dict_type','字典类型','varchar(100)','String','dictType','0','0',NULL,'1','1','1','1','EQ','select','',3,'admin','2023-05-26 03:31:39','',NULL),(28,'3','status','状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',4,'admin','2023-05-26 03:31:39','',NULL),(29,'3','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',5,'admin','2023-05-26 03:31:39','',NULL),(30,'3','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',6,'admin','2023-05-26 03:31:39','',NULL),(31,'3','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',7,'admin','2023-05-26 03:31:39','',NULL),(32,'3','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',8,'admin','2023-05-26 03:31:39','',NULL),(33,'3','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',9,'admin','2023-05-26 03:31:39','',NULL),(34,'4','job_id','任务ID','bigint(20)','Long','jobId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(35,'4','job_name','任务名称','varchar(64)','String','jobName','1','0',NULL,'1',NULL,NULL,NULL,'LIKE','input','',2,'admin','2023-05-26 03:31:39','',NULL),(36,'4','job_group','任务组名','varchar(64)','String','jobGroup','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',3,'admin','2023-05-26 03:31:39','',NULL),(37,'4','invoke_target','调用目标字符串','varchar(500)','String','invokeTarget','0','0','1','1','1','1','1','EQ','textarea','',4,'admin','2023-05-26 03:31:39','',NULL),(38,'4','cron_expression','cron执行表达式','varchar(255)','String','cronExpression','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-05-26 03:31:39','',NULL),(39,'4','misfire_policy','计划执行错误策略（1立即执行 2执行一次 3放弃执行）','varchar(20)','String','misfirePolicy','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-05-26 03:31:39','',NULL),(40,'4','concurrent','是否并发执行（0允许 1禁止）','char(1)','String','concurrent','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-05-26 03:31:39','',NULL),(41,'4','status','状态（0正常 1暂停）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',8,'admin','2023-05-26 03:31:39','',NULL),(42,'4','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',9,'admin','2023-05-26 03:31:39','',NULL),(43,'4','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',10,'admin','2023-05-26 03:31:39','',NULL),(44,'4','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',11,'admin','2023-05-26 03:31:39','',NULL),(45,'4','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',12,'admin','2023-05-26 03:31:39','',NULL),(46,'4','remark','备注信息','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',13,'admin','2023-05-26 03:31:39','',NULL),(47,'5','job_log_id','任务日志ID','bigint(20)','Long','jobLogId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(48,'5','job_name','任务名称','varchar(64)','String','jobName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-05-26 03:31:39','',NULL),(49,'5','job_group','任务组名','varchar(64)','String','jobGroup','0','0','1','1','1','1','1','EQ','input','',3,'admin','2023-05-26 03:31:39','',NULL),(50,'5','invoke_target','调用目标字符串','varchar(500)','String','invokeTarget','0','0','1','1','1','1','1','EQ','textarea','',4,'admin','2023-05-26 03:31:39','',NULL),(51,'5','job_message','日志信息','varchar(500)','String','jobMessage','0','0',NULL,'1','1','1','1','EQ','textarea','',5,'admin','2023-05-26 03:31:39','',NULL),(52,'5','status','执行状态（0正常 1失败）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',6,'admin','2023-05-26 03:31:39','',NULL),(53,'5','exception_info','异常信息','varchar(2000)','String','exceptionInfo','0','0',NULL,'1','1','1','1','EQ','textarea','',7,'admin','2023-05-26 03:31:39','',NULL),(54,'5','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2023-05-26 03:31:39','',NULL),(55,'6','info_id','访问ID','bigint(20)','Long','infoId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(56,'6','user_name','用户账号','varchar(50)','String','userName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2023-05-26 03:31:39','',NULL),(57,'6','ipaddr','登录IP地址','varchar(128)','String','ipaddr','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-05-26 03:31:39','',NULL),(58,'6','status','登录状态（0成功 1失败）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',4,'admin','2023-05-26 03:31:39','',NULL),(59,'6','msg','提示信息','varchar(255)','String','msg','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-05-26 03:31:39','',NULL),(60,'6','access_time','访问时间','datetime','Date','accessTime','0','0',NULL,'1','1','1','1','EQ','datetime','',6,'admin','2023-05-26 03:31:39','',NULL),(61,'7','notice_id','公告ID','int(4)','Integer','noticeId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(62,'7','notice_title','公告标题','varchar(50)','String','noticeTitle','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-05-26 03:31:39','',NULL),(63,'7','notice_type','公告类型（1通知 2公告）','char(1)','String','noticeType','0','0','1','1','1','1','1','EQ','select','',3,'admin','2023-05-26 03:31:39','',NULL),(64,'7','notice_content','公告内容','longblob','String','noticeContent','0','0',NULL,'1','1','1','1','EQ','editor','',4,'admin','2023-05-26 03:31:39','',NULL),(65,'7','status','公告状态（0正常 1关闭）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',5,'admin','2023-05-26 03:31:39','',NULL),(66,'7','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2023-05-26 03:31:39','',NULL),(67,'7','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2023-05-26 03:31:39','',NULL),(68,'7','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2023-05-26 03:31:39','',NULL),(69,'7','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2023-05-26 03:31:39','',NULL),(70,'7','remark','备注','varchar(255)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','input','',10,'admin','2023-05-26 03:31:39','',NULL),(71,'8','oper_id','日志主键','bigint(20)','Long','operId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(72,'8','title','模块标题','varchar(50)','String','title','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2023-05-26 03:31:39','',NULL),(73,'8','business_type','业务类型（0其它 1新增 2修改 3删除）','int(2)','Integer','businessType','0','0',NULL,'1','1','1','1','EQ','select','',3,'admin','2023-05-26 03:31:39','',NULL),(74,'8','method','方法名称','varchar(100)','String','method','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2023-05-26 03:31:39','',NULL),(75,'8','request_method','请求方式','varchar(10)','String','requestMethod','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-05-26 03:31:39','',NULL),(76,'8','operator_type','操作类别（0其它 1后台用户 2手机端用户）','int(1)','Integer','operatorType','0','0',NULL,'1','1','1','1','EQ','select','',6,'admin','2023-05-26 03:31:39','',NULL),(77,'8','oper_name','操作人员','varchar(50)','String','operName','0','0',NULL,'1','1','1','1','LIKE','input','',7,'admin','2023-05-26 03:31:39','',NULL),(78,'8','dept_name','部门名称','varchar(50)','String','deptName','0','0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2023-05-26 03:31:39','',NULL),(79,'8','oper_url','请求URL','varchar(255)','String','operUrl','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2023-05-26 03:31:39','',NULL),(80,'8','oper_ip','主机地址','varchar(128)','String','operIp','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2023-05-26 03:31:39','',NULL),(81,'8','oper_location','操作地点','varchar(255)','String','operLocation','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2023-05-26 03:31:39','',NULL),(82,'8','oper_param','请求参数','varchar(2000)','String','operParam','0','0',NULL,'1','1','1','1','EQ','textarea','',12,'admin','2023-05-26 03:31:39','',NULL),(83,'8','json_result','返回参数','varchar(2000)','String','jsonResult','0','0',NULL,'1','1','1','1','EQ','textarea','',13,'admin','2023-05-26 03:31:39','',NULL),(84,'8','status','操作状态（0正常 1异常）','int(1)','Integer','status','0','0',NULL,'1','1','1','1','EQ','radio','',14,'admin','2023-05-26 03:31:39','',NULL),(85,'8','error_msg','错误消息','varchar(2000)','String','errorMsg','0','0',NULL,'1','1','1','1','EQ','textarea','',15,'admin','2023-05-26 03:31:39','',NULL),(86,'8','oper_time','操作时间','datetime','Date','operTime','0','0',NULL,'1','1','1','1','EQ','datetime','',16,'admin','2023-05-26 03:31:39','',NULL),(87,'8','cost_time','消耗时间','bigint(20)','Long','costTime','0','0',NULL,'1','1','1','1','EQ','input','',17,'admin','2023-05-26 03:31:39','',NULL),(88,'9','role_id','角色ID','bigint(20)','Long','roleId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(89,'9','dept_id','部门ID','bigint(20)','Long','deptId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2023-05-26 03:31:39','',NULL),(90,'10','user_id','用户ID','bigint(20)','Long','userId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 03:31:39','',NULL),(91,'10','post_id','岗位ID','bigint(20)','Long','postId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2023-05-26 03:31:39','',NULL),(92,'11','dept_id','部门id','bigint(20)','Long','deptId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(93,'11','parent_id','父部门id','bigint(20)','Long','parentId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2023-05-26 04:23:10','',NULL),(94,'11','ancestors','祖级列表','varchar(50)','String','ancestors','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-05-26 04:23:10','',NULL),(95,'11','dept_name','部门名称','varchar(30)','String','deptName','0','0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2023-05-26 04:23:10','',NULL),(96,'11','order_num','显示顺序','int(4)','Integer','orderNum','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-05-26 04:23:10','',NULL),(97,'11','leader','负责人','varchar(20)','String','leader','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-05-26 04:23:10','',NULL),(98,'11','phone','联系电话','varchar(11)','String','phone','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-05-26 04:23:10','',NULL),(99,'11','email','邮箱','varchar(50)','String','email','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2023-05-26 04:23:10','',NULL),(100,'11','status','部门状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',9,'admin','2023-05-26 04:23:10','',NULL),(101,'11','del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2023-05-26 04:23:10','',NULL),(102,'11','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',11,'admin','2023-05-26 04:23:10','',NULL),(103,'11','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',12,'admin','2023-05-26 04:23:10','',NULL),(104,'11','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',13,'admin','2023-05-26 04:23:10','',NULL),(105,'11','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',14,'admin','2023-05-26 04:23:10','',NULL),(106,'12','menu_id','菜单ID','bigint(20)','Long','menuId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(107,'12','menu_name','菜单名称','varchar(50)','String','menuName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-05-26 04:23:10','',NULL),(108,'12','parent_id','父菜单ID','bigint(20)','Long','parentId','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-05-26 04:23:10','',NULL),(109,'12','order_num','显示顺序','int(4)','Integer','orderNum','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2023-05-26 04:23:10','',NULL),(110,'12','path','路由地址','varchar(200)','String','path','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-05-26 04:23:10','',NULL),(111,'12','component','组件路径','varchar(255)','String','component','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-05-26 04:23:10','',NULL),(112,'12','query','路由参数','varchar(255)','String','query','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-05-26 04:23:10','',NULL),(113,'12','is_frame','是否为外链（0是 1否）','int(1)','Integer','isFrame','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2023-05-26 04:23:10','',NULL),(114,'12','is_cache','是否缓存（0缓存 1不缓存）','int(1)','Integer','isCache','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2023-05-26 04:23:10','',NULL),(115,'12','menu_type','菜单类型（M目录 C菜单 F按钮）','char(1)','String','menuType','0','0',NULL,'1','1','1','1','EQ','select','',10,'admin','2023-05-26 04:23:10','',NULL),(116,'12','visible','菜单状态（0显示 1隐藏）','char(1)','String','visible','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2023-05-26 04:23:10','',NULL),(117,'12','status','菜单状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',12,'admin','2023-05-26 04:23:10','',NULL),(118,'12','perms','权限标识','varchar(100)','String','perms','0','0',NULL,'1','1','1','1','EQ','input','',13,'admin','2023-05-26 04:23:10','',NULL),(119,'12','icon','菜单图标','varchar(100)','String','icon','0','0',NULL,'1','1','1','1','EQ','input','',14,'admin','2023-05-26 04:23:10','',NULL),(120,'12','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',15,'admin','2023-05-26 04:23:10','',NULL),(121,'12','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',16,'admin','2023-05-26 04:23:10','',NULL),(122,'12','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',17,'admin','2023-05-26 04:23:10','',NULL),(123,'12','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',18,'admin','2023-05-26 04:23:10','',NULL),(124,'12','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',19,'admin','2023-05-26 04:23:10','',NULL),(125,'13','post_id','岗位ID','bigint(20)','Long','postId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(126,'13','post_code','岗位编码','varchar(64)','String','postCode','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-05-26 04:23:10','',NULL),(127,'13','post_name','岗位名称','varchar(50)','String','postName','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2023-05-26 04:23:10','',NULL),(128,'13','post_sort','显示顺序','int(4)','Integer','postSort','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-05-26 04:23:10','',NULL),(129,'13','status','状态（0正常 1停用）','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',5,'admin','2023-05-26 04:23:10','',NULL),(130,'13','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2023-05-26 04:23:10','',NULL),(131,'13','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2023-05-26 04:23:10','',NULL),(132,'13','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2023-05-26 04:23:10','',NULL),(133,'13','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2023-05-26 04:23:10','',NULL),(134,'13','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2023-05-26 04:23:10','',NULL),(135,'14','role_id','角色ID','bigint(20)','Long','roleId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(136,'14','role_name','角色名称','varchar(30)','String','roleName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-05-26 04:23:10','',NULL),(137,'14','role_key','角色权限字符串','varchar(100)','String','roleKey','0','0','1','1','1','1','1','EQ','input','',3,'admin','2023-05-26 04:23:10','',NULL),(138,'14','role_sort','显示顺序','int(4)','Integer','roleSort','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-05-26 04:23:10','',NULL),(139,'14','data_scope','数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）','char(1)','String','dataScope','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2023-05-26 04:23:10','',NULL),(140,'14','menu_check_strictly','菜单树选择项是否关联显示','tinyint(1)','Integer','menuCheckStrictly','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-05-26 04:23:10','',NULL),(141,'14','dept_check_strictly','部门树选择项是否关联显示','tinyint(1)','Integer','deptCheckStrictly','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-05-26 04:23:10','',NULL),(142,'14','status','角色状态（0正常 1停用）','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',8,'admin','2023-05-26 04:23:10','',NULL),(143,'14','del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',9,'admin','2023-05-26 04:23:10','',NULL),(144,'14','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2023-05-26 04:23:10','',NULL),(145,'14','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',11,'admin','2023-05-26 04:23:10','',NULL),(146,'14','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',12,'admin','2023-05-26 04:23:10','',NULL),(147,'14','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',13,'admin','2023-05-26 04:23:10','',NULL),(148,'14','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',14,'admin','2023-05-26 04:23:10','',NULL),(149,'15','role_id','角色ID','bigint(20)','Long','roleId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(150,'15','menu_id','菜单ID','bigint(20)','Long','menuId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2023-05-26 04:23:10','',NULL),(151,'16','user_id','用户ID','bigint(20)','Long','userId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(152,'16','dept_id','部门ID','bigint(20)','Long','deptId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2023-05-26 04:23:10','',NULL),(153,'16','user_name','用户账号','varchar(30)','String','userName','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2023-05-26 04:23:10','',NULL),(154,'16','nick_name','用户昵称','varchar(30)','String','nickName','0','0','1','1','1','1','1','LIKE','input','',4,'admin','2023-05-26 04:23:10','',NULL),(155,'16','user_type','用户类型（00系统用户）','varchar(2)','String','userType','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2023-05-26 04:23:10','',NULL),(156,'16','email','用户邮箱','varchar(50)','String','email','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-05-26 04:23:10','',NULL),(157,'16','phonenumber','手机号码','varchar(11)','String','phonenumber','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-05-26 04:23:10','',NULL),(158,'16','sex','用户性别（0男 1女 2未知）','char(1)','String','sex','0','0',NULL,'1','1','1','1','EQ','select','',8,'admin','2023-05-26 04:23:10','',NULL),(159,'16','avatar','头像地址','varchar(100)','String','avatar','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2023-05-26 04:23:10','',NULL),(160,'16','password','密码','varchar(100)','String','password','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2023-05-26 04:23:10','',NULL),(161,'16','status','帐号状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',11,'admin','2023-05-26 04:23:10','',NULL),(162,'16','del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',12,'admin','2023-05-26 04:23:10','',NULL),(163,'16','login_ip','最后登录IP','varchar(128)','String','loginIp','0','0',NULL,'1','1','1','1','EQ','input','',13,'admin','2023-05-26 04:23:10','',NULL),(164,'16','login_date','最后登录时间','datetime','Date','loginDate','0','0',NULL,'1','1','1','1','EQ','datetime','',14,'admin','2023-05-26 04:23:10','',NULL),(165,'16','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',15,'admin','2023-05-26 04:23:10','',NULL),(166,'16','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',16,'admin','2023-05-26 04:23:10','',NULL),(167,'16','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',17,'admin','2023-05-26 04:23:10','',NULL),(168,'16','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',18,'admin','2023-05-26 04:23:10','',NULL),(169,'16','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',19,'admin','2023-05-26 04:23:10','',NULL),(170,'17','user_id','用户ID','bigint(20)','Long','userId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-26 04:23:10','',NULL),(171,'17','role_id','角色ID','bigint(20)','Long','roleId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2023-05-26 04:23:10','',NULL);

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-05-19 01:57:20','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-05-19 01:57:21','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-05-19 01:57:21','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2023-05-19 01:57:21','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-05-19 01:57:21','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-05-19 01:57:08','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-05-19 01:57:19','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-05-19 01:57:19','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-05-19 01:57:19','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-05-19 01:57:19','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-05-19 01:57:19','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-05-19 01:57:19','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-05-19 01:57:19','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-05-19 01:57:19','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-05-19 01:57:19','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-05-19 01:57:19','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-05-19 01:57:19','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-05-19 01:57:19','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-05-19 01:57:19','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-05-19 01:57:19','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-05-19 01:57:19','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-05-19 01:57:19','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-05-19 01:57:19','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-05-19 01:57:19','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-05-19 01:57:19','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-05-19 01:57:19','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-05-19 01:57:19','',NULL,'停用状态');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'用户性别','sys_user_sex','0','admin','2023-05-19 01:57:18','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2023-05-19 01:57:18','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2023-05-19 01:57:18','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2023-05-19 01:57:18','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2023-05-19 01:57:18','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2023-05-19 01:57:18','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2023-05-19 01:57:18','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2023-05-19 01:57:18','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2023-05-19 01:57:18','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2023-05-19 01:57:18','',NULL,'登录状态列表');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-05-19 01:57:23','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-05-19 01:57:23','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-05-19 01:57:23','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示信息',
  `access_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`access_time`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`status`,`msg`,`access_time`) values (100,'admin','127.0.0.1','0','登录成功','2023-05-19 02:11:01'),(101,'admin','127.0.0.1','0','退出成功','2023-05-19 06:13:09'),(102,'ry','127.0.0.1','0','登录成功','2023-05-19 06:13:17'),(103,'ry','127.0.0.1','0','退出成功','2023-05-19 06:39:13'),(104,'admin','127.0.0.1','0','登录成功','2023-05-19 06:39:21'),(105,'admin','127.0.0.1','0','退出成功','2023-05-19 06:39:22'),(106,'admin','127.0.0.1','0','登录成功','2023-05-19 06:39:28'),(107,'admin','127.0.0.1','0','退出成功','2023-05-19 06:39:29'),(108,'admin','127.0.0.1','0','登录成功','2023-05-19 06:39:39'),(109,'admin','127.0.0.1','0','退出成功','2023-05-19 06:39:39'),(110,'admin','127.0.0.1','0','登录成功','2023-05-19 06:44:31'),(111,'admin','127.0.0.1','0','退出成功','2023-05-19 06:44:33'),(112,'admin','127.0.0.1','0','登录成功','2023-05-19 06:45:03'),(113,'admin','127.0.0.1','0','退出成功','2023-05-19 06:45:03'),(114,'admin','127.0.0.1','0','登录成功','2023-05-19 06:45:24'),(115,'admin','127.0.0.1','0','退出成功','2023-05-19 06:45:24'),(116,'admin','127.0.0.1','0','登录成功','2023-05-19 06:46:09'),(117,'admin','127.0.0.1','0','退出成功','2023-05-19 06:46:10'),(118,'admin','127.0.0.1','0','登录成功','2023-05-19 06:50:45'),(119,'admin','127.0.0.1','0','退出成功','2023-05-19 08:02:26'),(120,'admin','127.0.0.1','0','登录成功','2023-05-19 08:02:32'),(121,'admin','127.0.0.1','0','退出成功','2023-05-22 01:06:43'),(122,'admin','127.0.0.1','0','登录成功','2023-05-22 01:06:50'),(123,'ry','127.0.0.1','0','退出成功','2023-05-26 03:30:56'),(124,'admin','127.0.0.1','0','登录成功','2023-05-26 03:31:03'),(125,'admin','127.0.0.1','0','退出成功','2023-05-26 04:22:46'),(126,'admin','127.0.0.1','0','登录成功','2023-05-26 04:22:51');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2023-05-19 01:57:10','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2023-05-19 01:57:10','',NULL,'系统监控目录'),(3,'系统工具',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2023-05-19 01:57:10','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,'',0,0,'M','0','0','','guide','admin','2023-05-19 01:57:10','',NULL,'若依官网地址'),(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2023-05-19 01:57:10','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2023-05-19 01:57:10','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2023-05-19 01:57:10','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2023-05-19 01:57:10','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2023-05-19 01:57:10','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2023-05-19 01:57:10','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2023-05-19 01:57:10','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2023-05-19 01:57:10','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2023-05-19 01:57:10','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2023-05-19 01:57:10','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2023-05-19 01:57:10','',NULL,'定时任务菜单'),(111,'Sentinel控制台',2,3,'http://localhost:8718','','',0,0,'C','0','0','monitor:sentinel:list','sentinel','admin','2023-05-19 01:57:10','',NULL,'流量控制菜单'),(112,'Nacos控制台',2,4,'http://192.168.0.56:8848/nacos','','',0,0,'C','0','0','monitor:nacos:list','nacos','admin','2023-05-19 01:57:10','admin','2023-05-22 01:07:50','服务治理菜单'),(113,'Admin控制台',2,5,'http://localhost:9100/login','','',0,0,'C','0','0','monitor:server:list','server','admin','2023-05-19 01:57:10','',NULL,'服务监控菜单'),(114,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2023-05-19 01:57:10','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2023-05-19 01:57:10','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'http://localhost:8080/swagger-ui/index.html','','',0,0,'C','0','0','tool:swagger:list','swagger','admin','2023-05-19 01:57:10','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','system/operlog/index','',1,0,'C','0','0','system:operlog:list','form','admin','2023-05-19 01:57:10','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','system/logininfor/index','',1,0,'C','0','0','system:logininfor:list','logininfor','admin','2023-05-19 01:57:10','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2023-05-19 01:57:10','',NULL,''),(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2023-05-19 01:57:10','',NULL,''),(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','system:operlog:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','system:operlog:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','system:operlog:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','system:logininfor:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','system:logininfor:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','system:logininfor:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','system:logininfor:unlock','#','admin','2023-05-19 01:57:10','',NULL,''),(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2023-05-19 01:57:10','',NULL,''),(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2023-05-19 01:57:10','',NULL,''),(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2023-05-19 01:57:10','',NULL,''),(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2023-05-19 01:57:10','',NULL,''),(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2023-05-19 01:57:10','',NULL,''),(1055,'生成查询',115,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2023-05-19 01:57:10','',NULL,''),(1056,'生成修改',115,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2023-05-19 01:57:10','',NULL,''),(1057,'生成删除',115,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2023-05-19 01:57:10','',NULL,''),(1058,'导入代码',115,2,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2023-05-19 01:57:10','',NULL,''),(1059,'预览代码',115,4,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2023-05-19 01:57:10','',NULL,''),(1060,'生成代码',115,5,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2023-05-19 01:57:10','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2023-05-19 01:57:25','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2023-05-19 01:57:25','',NULL,'管理员');

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`,`cost_time`) values (100,'菜单管理',2,'com.ruoyi.system.controller.SysMenuController.edit()','PUT',1,'admin',NULL,'/menu','127.0.0.1','','{\"children\":[],\"component\":\"\",\"createTime\":\"2023-05-19 01:57:10\",\"icon\":\"nacos\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":112,\"menuName\":\"Nacos控制台\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2,\"path\":\"http://192.168.0.56:8848/nacos\",\"perms\":\"monitor:nacos:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-22 01:07:51',263),(101,'代码生成',6,'com.ruoyi.gen.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/gen/importTable','127.0.0.1','','{\"tables\":\"sys_notice,sys_job_log,sys_job,sys_logininfor,sys_config,sys_dict_data,sys_dict_type,sys_oper_log,sys_user_post,sys_role_dept\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-26 03:31:40',426),(102,'代码生成',6,'com.gjb.gen.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/gen/importTable','127.0.0.1','','{\"tables\":\"sys_user_role,sys_user,sys_role_menu,sys_role,sys_post,sys_menu,sys_dept\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-26 04:23:10',293),(103,'代码生成',8,'com.gjb.gen.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/gen/batchGenCode','127.0.0.1','','{\"tables\":\"sys_role\"}',NULL,0,NULL,'2023-05-26 04:30:00',162);

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'ceo','董事长',1,'0','admin','2023-05-19 01:57:09','',NULL,''),(2,'se','项目经理',2,'0','admin','2023-05-19 01:57:09','',NULL,''),(3,'hr','人力资源',3,'0','admin','2023-05-19 01:57:09','',NULL,''),(4,'user','普通员工',4,'0','admin','2023-05-19 01:57:09','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2023-05-19 01:57:09','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2023-05-19 01:57:09','',NULL,'普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,100),(2,101),(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-05-19 01:57:09','admin','2023-05-19 01:57:09','',NULL,'管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-05-19 01:57:09','admin','2023-05-19 01:57:09','',NULL,'测试员');

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1),(2,2);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(2,2);

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `test` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
