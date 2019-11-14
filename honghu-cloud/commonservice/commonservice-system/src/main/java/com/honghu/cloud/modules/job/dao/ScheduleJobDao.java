package com.honghu.cloud.modules.job.dao;

import org.apache.ibatis.annotations.Mapper;

import com.honghu.cloud.modules.job.entity.ScheduleJobEntity;
import com.honghu.cloud.modules.sys.dao.BaseDao;

import java.util.Map;

/**
 * 定时任务
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2016年12月1日 下午10:29:57
 */
@Mapper
public interface ScheduleJobDao extends BaseDao<ScheduleJobEntity> {
	
	/**
	 * 批量更新状态
	 */
	int updateBatch(Map<String, Object> map);
}
