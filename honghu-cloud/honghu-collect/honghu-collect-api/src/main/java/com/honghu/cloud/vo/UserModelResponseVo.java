/**
 * 
 */
package com.honghu.cloud.vo;

import java.io.Serializable;

import lombok.Data;

/**
 * @author jackyhu
 *
 */
@Data
public class UserModelResponseVo implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String orgId;
	private String pwd;
	private String name;
	private String gender;
	private String image;
	private String dutyId;
	private String mobile;
	private String telephone;
	private String wechat;
	private String email;
	private String status;
	private String createUser;
	private String createTime;
	private String updateTime;
	private String remark;
	private String orgName;
	private String orgAddress;
	private String orgProvinceId;
	private String orgCityId;
	
}
