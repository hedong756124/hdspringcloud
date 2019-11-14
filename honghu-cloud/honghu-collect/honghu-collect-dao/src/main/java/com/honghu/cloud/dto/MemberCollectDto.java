/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.dto;

import lombok.Data;

/**
 * 收藏Entity
 * @author zff
 * @version 2018-05-10
 */
@Data
public class MemberCollectDto{
	
	/**
	 * 会员id
	 */
	private String mid;
	
	/**
	 * 拍品id
	 */
	private String auctionId;

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(String auctionId) {
		this.auctionId = auctionId;
	}
}