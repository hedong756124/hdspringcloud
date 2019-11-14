package com.honghu.cloud.common.bean;

import lombok.Data;

@Data
public class CommonRequestHeader {

	private String appId;
	private String appType;
	private String seqNo;
	private String reqTime;
	private String token;
}
