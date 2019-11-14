package com.honghu.cloud.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.honghu.cloud.framework.service.core.web.BaseApiController;
import com.honghu.cloud.feign.ApiLabelFeignClient;

/**
 * @author felix
 */
@RestController
@RequestMapping(value = "/label")
public class LabelController extends BaseApiController implements ApiLabelFeignClient {

	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Value("${lable.message}")
	public String message;
	
	@RequestMapping(value = "/current", method = {RequestMethod.GET,RequestMethod.POST})
	public String current() {
		return message;
	}
}
