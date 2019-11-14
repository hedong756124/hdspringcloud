/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.service;
	
import java.util.Map;

import com.baomidou.mybatisplus.service.IService;
import com.honghu.cloud.bean.MemberCollect;
import com.honghu.cloud.dto.MemberCollectDto;

/**
 * I收藏Service
 * @author wsp
 * @version 2018-04-25
 */
public interface IMemberCollectService extends IService<MemberCollect> {
	/**
	 * return collect result
	 * 
	 * @param dto
	 * @return
	 */
	public Map<String, String> checkCollect(MemberCollectDto dto);
}