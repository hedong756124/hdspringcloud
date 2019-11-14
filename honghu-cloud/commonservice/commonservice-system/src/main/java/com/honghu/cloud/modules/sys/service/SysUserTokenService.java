package com.honghu.cloud.modules.sys.service;

import com.honghu.cloud.common.utils.R;
import com.honghu.cloud.modules.sys.entity.SysUserTokenEntity;

/**
 * 用户Token
 * 
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2017-03-23 15:22:07
 */
public interface SysUserTokenService {

	SysUserTokenEntity queryByUserId(Long userId);

	SysUserTokenEntity queryByToken(String token);
	
	void save(SysUserTokenEntity token);
	
	void update(SysUserTokenEntity token);

	/**
	 * 生成token
	 * @param userId  用户ID
	 */
	R createToken(long userId);

}
