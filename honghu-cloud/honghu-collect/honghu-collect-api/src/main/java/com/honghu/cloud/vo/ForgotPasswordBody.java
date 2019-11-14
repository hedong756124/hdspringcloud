package com.honghu.cloud.vo;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;

@Data
public class ForgotPasswordBody extends CommonRequestHeader{
	
	//@NonNull
	@Size(max=30, message = "用户ID长度超长!")
	@NotEmpty(message="用户ID不能为空")
	private String userId;
	

	//@NonNull
	@Pattern(regexp="^1[3,4,5,6,7,8,9]\\d{9}$",message="手机号格式不正确")
	@NotEmpty(message="手机号不为空")
	private String mobile;
	
}
