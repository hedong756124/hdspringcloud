/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.dao;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.honghu.cloud.bean.Auction;

/**
 * 拍卖DAO接口
 * @author wsp
 * @version 2018-04-25
 */
public interface AuctionDao extends BaseMapper<Auction> {
	/**
	 * 查询总数
	 * @param auction 多维度条件
	 * @return 总数
	 */
	public int getCount(Auction auction);

	/**
	 * 
	 * @param auction 多维度条件
	 * @param current 当前页
	 * @param size 每页显示条数
	 * @return 查询列表
	 */
	public List<Auction> getList(Auction auction);
	
	/**
	 *根据id修改对象属性
	 *@param auction
	 */
	public Integer updateAuction(Auction auction);
	
	/**
	 * 谁不可拍
	 * @param auctionMemberClaim
	 */
	public void deleteAuctionMemberClaim(Auction auction);
	
	
	/**
	 * 通过id获取
	 * @param auction
	 * @return
	 */
 	public Auction   selectOneById(String id);
 	
 	/**
 	 * 更新浏览次数
 	 * 
 	 * @param id
 	 */
 	public void  updateAuctionForBrowseNum(String id);
	
}