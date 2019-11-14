package com.honghu.cloud.modules.api.dao;

import org.apache.ibatis.annotations.Mapper;

import com.honghu.cloud.modules.api.entity.TokenEntity;
import com.honghu.cloud.modules.sys.dao.BaseDao;

/**
 * 用户Token
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2017-03-23 15:22:07
 */
@Mapper
public interface TokenDao extends BaseDao<TokenEntity> {
    
    TokenEntity queryByUserId(Long userId);

    TokenEntity queryByToken(String token);
	
}
