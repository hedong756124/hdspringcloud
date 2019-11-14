package com.honghu.cloud.vo;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.ToString;

@ToString(exclude="newPassword")
@Data
public class ChangePasswordBody extends CommonRequestHeader{
	
	@NotEmpty(message="新密码不能为空")
	private String newPassword;
	
	@NotEmpty(message="旧密码不能为空")
	private String oldPassword;

	private String userId;
	
}
