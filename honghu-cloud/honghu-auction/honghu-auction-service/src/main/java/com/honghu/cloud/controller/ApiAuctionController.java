/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.controller;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.honghu.cloud.bean.Auction;
import com.honghu.cloud.code.AuctionResponseCode;
import com.honghu.cloud.common.code.ResponseVO;
import com.honghu.cloud.common.vo.Page;
import com.honghu.cloud.dto.MemberCollectDto;
import com.honghu.cloud.feign.ApiMemberCollectFeignClient;
import com.honghu.cloud.service.IAuctionService;

import lombok.extern.slf4j.Slf4j;

/**
 * 拍卖Controller
 * 
 * @author wsp
 * @version 2018-04-25
 */
@Slf4j
@RestController
@RequestMapping(value = "/auction")
public class ApiAuctionController {

	@Autowired
	private IAuctionService auctionService;

	@Autowired
	private ApiMemberCollectFeignClient apiMemberCollectFeignClient;

	/**
	 * 根据id查询对应的数据信息
	 * 
	 * @param id
	 *            唯一标识
	 * @return id对应的数据信息
	 */
	@RequestMapping(path = "/get", method = RequestMethod.GET)
	public ResponseVO get(@RequestParam(required = false) String id) {
		Map<String, String> collectMapper = apiMemberCollectFeignClient.whetherCollec(new MemberCollectDto());
		if (StringUtils.isNotBlank(id)) {
			Auction entity = auctionService.selectById(id);

			return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_RETURN_CODE_SUCCESS,
					collectMapper);
		}
		return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_CODE_REQ_CANNOT_EMPTY,
				new Auction());
	}

	/**
	 * 多维度信息分页查询
	 * 
	 * @param auction
	 *            前台封装的参数对象
	 * @return ResponseVO结果
	 */
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public ResponseVO list(@RequestBody Auction auction) {

		Page<Auction> page = auctionService.list(new Page<Auction>(auction.getCurrent(), auction.getSize()), auction);
		return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_RETURN_CODE_SUCCESS, page);
	}

	/**
	 * 添加数据
	 * 
	 * @param auction
	 *            前台封装的参数对象
	 * @return ResponseVO结果
	 */
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ResponseVO insert(@RequestBody Auction auction) {
		boolean result = auctionService.insert(auction);
		if (result) {
			return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_RETURN_CODE_SUCCESS,
					auction.getId());
		}
		return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_CODE_FAILURE, auction.getId());
	}

	/**
	 * 根据id更新数据
	 * 
	 * @param auction
	 *            前台封装的参数对象
	 * @return ResponseVO结果
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ResponseVO updateById(@RequestBody Auction auction) {
		boolean result = auctionService.updateById(auction);
		if (result) {
			return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_RETURN_CODE_SUCCESS,
					auction.getId());
		}
		return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_CODE_FAILURE, auction.getId());
	}

	/**
	 * 根据id删除数据
	 * 
	 * @param id
	 *            数据id
	 * @return ResponseVO结果
	 */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public ResponseVO deleteById(@PathVariable(value = "id") String id) {
		boolean result = auctionService.deleteById(id);
		if (result) {
			return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_RETURN_CODE_SUCCESS, id);
		}
		return AuctionResponseCode.buildEnumResponseVO(AuctionResponseCode.RESPONSE_CODE_FAILURE, id);
	}

}