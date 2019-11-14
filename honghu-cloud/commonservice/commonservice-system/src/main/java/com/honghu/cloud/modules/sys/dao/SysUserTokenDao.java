package com.honghu.cloud.modules.sys.dao;

import org.apache.ibatis.annotations.Mapper;

import com.honghu.cloud.modules.sys.entity.SysUserTokenEntity;

/**
 * 系统用户Token
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2017-03-23 15:22:07
 */
@Mapper
public interface SysUserTokenDao extends BaseDao<SysUserTokenEntity> {
    
    SysUserTokenEntity queryByUserId(Long userId);

    SysUserTokenEntity queryByToken(String token);
	
}
