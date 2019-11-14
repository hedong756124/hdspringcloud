package com.honghu.cloud.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(name="demo-label",path="/label")
public interface ApiLabelFeignClient{

	@RequestMapping(value = "/current", method = RequestMethod.POST)
	public String current();
	
	
}
