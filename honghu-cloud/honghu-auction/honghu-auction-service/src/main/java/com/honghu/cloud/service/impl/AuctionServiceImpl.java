/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.honghu.cloud.bean.Auction;
import com.honghu.cloud.dao.AuctionDao;
import com.honghu.cloud.service.IAuctionService;
import com.honghu.cloud.common.vo.Page;

/**
 * 拍卖Service
 * @author wsp
 * @version 2018-04-25
 */
@Service
public class AuctionServiceImpl extends ServiceImpl<AuctionDao, Auction> implements IAuctionService {

	/**
	 * 多维度信息分页查询
	 * @param page 分页参数
	 * @param auction 对象条件
	 * @return 信息列表
	 */
	@Override
	public Page<Auction> list(Page<Auction> page, Auction auction) {
		auction.setSize(page.getPageSize());
		auction.setStartIndex((page.getPageNo()-1)*page.getPageSize());
		List<Auction> list = baseMapper.getList(auction);
		int count = baseMapper.getCount(auction);
		page.setCount(count);
		page.setList(list);
		return page;
	}
	
}