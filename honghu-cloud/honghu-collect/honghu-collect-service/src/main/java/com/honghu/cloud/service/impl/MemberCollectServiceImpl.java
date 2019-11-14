/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.honghu.cloud.bean.MemberCollect;
import com.honghu.cloud.dao.MemberCollectDao;
import com.honghu.cloud.dto.MemberCollectDto;
import com.honghu.cloud.service.IMemberCollectService;
import com.honghu.cloud.common.vo.Page;

/**
 * 收藏Service
 * @author wsp
 * @version 2018-04-25
 */
@Service
public class MemberCollectServiceImpl extends ServiceImpl<MemberCollectDao, MemberCollect> implements IMemberCollectService {
	@Override
	public Map<String, String> checkCollect(MemberCollectDto dto){
		Map<String, String> map = new HashMap<String, String>(); 
		if(dto!=null&&StringUtils.isNotEmpty(dto.getAuctionId())&&StringUtils.isNotEmpty(dto.getMid())){
			MemberCollect memberCollect = new MemberCollect();
			memberCollect.setAuctionId(dto.getAuctionId());
			memberCollect.setMid(dto.getMid());
			List<MemberCollect> list = baseMapper.getList(memberCollect);
			if(list.size()>0){//已收藏
				map.put("status", "1");
			}else {
				map.put("status", "0");
			}
		}else{
			map.put("status", "0");
		}
		return map;
	}

	
	
	
}