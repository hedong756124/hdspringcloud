package com.honghu.cloud.modules.api.dao;

import org.apache.ibatis.annotations.Mapper;

import com.honghu.cloud.modules.api.entity.UserEntity;
import com.honghu.cloud.modules.sys.dao.BaseDao;

/**
 * 用户
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2017-03-23 15:22:06
 */
@Mapper
public interface UserDao extends BaseDao<UserEntity> {

    UserEntity queryByMobile(String mobile);
}
