package com.honghu.cloud.vo;


import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.ToString;

@ToString(exclude="password")
@Data
public class LoginBody extends CommonRequestHeader{
	private String userId;
	
	@NotEmpty(message="用户名不能为空")
	private String userName;
	
	@NotEmpty(message="密码不能为空")
	private String password;
	
	private String deviceType;
	
	private String deviceId;
	
}
