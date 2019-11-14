package com.honghu.cloud.modules.api.service;


import java.util.Map;

import com.honghu.cloud.modules.api.entity.TokenEntity;

/**
 * 用户Token
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2017-03-23 15:22:07
 */
public interface TokenService {

	TokenEntity queryByUserId(Long userId);

	TokenEntity queryByToken(String token);
	
	void save(TokenEntity token);
	
	void update(TokenEntity token);

	/**
	 * 生成token
	 * @param userId  用户ID
	 * @return        返回token相关信息
	 */
	Map<String, Object> createToken(long userId);

}
