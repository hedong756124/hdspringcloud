package com.honghu.cloud.vo;

import java.util.Date;


import lombok.Data;

@Data
public class BuyerAddressVo {

	
	//主键
	private Long id;
	//添加时间
	private Date addTime;
	//删除状态
	private boolean deleteStatus;
	//地址信息
	private String areaInfo;
	//手机
	private String mobile;
	//电话
	private String telephone;
	//真实姓名
	private String trueName;
	//邮编
	private String zip;
	//地区
	private Long areaId;
	//用户
	private Long userId;
	//是否默认
	private int isdefault;
	//
	private String areaName;
	private String city;
	private String province;
	



}