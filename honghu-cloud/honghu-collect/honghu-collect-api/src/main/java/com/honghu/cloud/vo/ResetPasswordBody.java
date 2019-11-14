package com.honghu.cloud.vo;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.ToString;

@Data
public class ResetPasswordBody extends CommonRequestHeader{
	
	@NotEmpty(message="手机号码不能为空")
	private String mobileNumber;
	
	@NotEmpty(message="短信验证码不能为空")
	private String smsCode;
	
	@NotEmpty(message="新密码不能为空")
	private String password;

	
}
