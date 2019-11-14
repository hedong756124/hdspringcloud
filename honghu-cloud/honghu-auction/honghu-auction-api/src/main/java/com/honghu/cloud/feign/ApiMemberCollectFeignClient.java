package com.honghu.cloud.feign;

import java.util.Map;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.honghu.cloud.dto.MemberCollectDto;

import feign.Param;

@FeignClient(name="honghu-collect-service" ,path="/memberCollect" )
public interface ApiMemberCollectFeignClient {

	
	/**
	 * 判断是否收藏
	 * @param dto
	 * @return
	 */
	@RequestMapping(value = "/auctionCollect", method = RequestMethod.POST)
	public Map<String, String> whetherCollec( @Param("dto")  MemberCollectDto dto);
	
}
