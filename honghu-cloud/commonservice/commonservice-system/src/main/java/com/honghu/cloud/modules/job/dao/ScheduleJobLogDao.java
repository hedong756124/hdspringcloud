package com.honghu.cloud.modules.job.dao;

import org.apache.ibatis.annotations.Mapper;

import com.honghu.cloud.modules.job.entity.ScheduleJobLogEntity;
import com.honghu.cloud.modules.sys.dao.BaseDao;

/**
 * 定时任务日志
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2016年12月1日 下午10:30:02
 */
@Mapper
public interface ScheduleJobLogDao extends BaseDao<ScheduleJobLogEntity> {
	
}
