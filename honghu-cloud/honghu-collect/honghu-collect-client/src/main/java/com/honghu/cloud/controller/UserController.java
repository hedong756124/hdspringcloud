package com.honghu.cloud.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.honghu.cloud.framework.service.core.web.BaseApiController;
import com.honghu.cloud.feign.ApiLabelFeignClient;

@RestController
@RequestMapping(value = "/client/label")
public class UserController extends BaseApiController{

	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private ApiLabelFeignClient labelClient;
	
	@RequestMapping(value = "/current", method = RequestMethod.POST )
	public String label() {
		return labelClient.current();
	}
}
