package com.honghu.cloud.vo;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;

@Data
public class UserPwdChangeVo extends CommonRequestHeader{
	private String id;
    /**
     * 旧密码
     */
	@NotEmpty(message="旧密码不能为空")
	private String oldPassword;
	/**
	 * 新密码
	 */
	@NotEmpty(message="密码不能为空")
	private String newPassword;
	
	
	
}
