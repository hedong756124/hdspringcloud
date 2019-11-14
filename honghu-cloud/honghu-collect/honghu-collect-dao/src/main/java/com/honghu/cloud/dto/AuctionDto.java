/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

/**
 * 收藏Entity
 * @author zff
 * @version 2018-05-10
 */
@Data
public class AuctionDto{
	
	
	/**
	 * 拍品id
	 */
	private String id;
	
	/**
	 * 主题
	 */
	private String theme;
	
	/**
	 * 拍卖开始时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date activityStartDate;
	
	/**
	 * 拍卖结束时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date activityEndDate;
	
	/**
	 * 视频或图的url
	 */
	private String url1;
}