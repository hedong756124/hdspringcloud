/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.service;
	
import com.baomidou.mybatisplus.service.IService;
import com.honghu.cloud.bean.Auction;
import com.honghu.cloud.common.vo.Page;

/**
 * I拍卖Service
 * @author wsp
 * @version 2018-04-25
 */
public interface IAuctionService extends IService<Auction> {

	/**
	 * 多维度信息分页查询
	 * @param page 分页参数
	 * @param auction 对象条件
	 * @return 信息列表
	 */
	public Page<Auction> list(Page<Auction> page, Auction auction);
	
}