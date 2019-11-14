/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.honghu.cloud.common.vo.Page;
import com.honghu.cloud.dto.MemberCollectDto;
import com.honghu.cloud.bean.MemberCollect;
import com.honghu.cloud.code.MemberCollectResponseCode;
import com.honghu.cloud.common.code.ResponseVO;
import com.honghu.cloud.service.IMemberCollectService;

import lombok.extern.slf4j.Slf4j;

/**
 * 收藏Controller
 * 
 * @author wsp
 * @version 2018-04-25
 */
@Slf4j
@RestController
@RequestMapping(value = "/memberCollect")
public class ApiMemberCollectController {

	@Autowired
	private IMemberCollectService memberCollectService;

	/**
	 * 判断是否收藏
	 * @param dto
	 * @return
	 */
	@RequestMapping(value = "/auctionCollect", method = RequestMethod.POST)
	public Map<String, String> whetherCollec(@RequestBody MemberCollectDto dto) {
		return  memberCollectService.checkCollect(dto);
	}
}