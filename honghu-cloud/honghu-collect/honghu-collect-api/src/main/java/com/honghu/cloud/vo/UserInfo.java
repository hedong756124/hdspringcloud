package com.honghu.cloud.vo;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;

@Data
public class UserInfo extends CommonRequestHeader{

	private String userId;	
	private String orgId;	
	private String roleId;	
	private String dutyId;

    private String pwd;
    private String name;
    private String gender;
    private String image;
    private String mobile;
    private String telephone;
    private String wechat;
    private String email;
    private String status;
    private String createUser;
    private String createTime;
    private String updateTime;
    private String remark;
    private String orgCityId;
    private String orgProvinceId;


}