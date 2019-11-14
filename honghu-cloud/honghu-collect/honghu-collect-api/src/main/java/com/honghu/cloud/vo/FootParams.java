package com.honghu.cloud.vo;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;

@Data
public class FootParams extends CommonRequestHeader{
	private String userId;
	private String deviceId;
}
