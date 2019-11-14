/**
 * 
 */
package com.honghu.cloud.vo;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 用户注册
 * @author shaozhen
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class UserRequest extends CommonRequestHeader {

	
	
	private String userName;
	
	private String mobileNumber;
	
	@NotEmpty(message="密码不能为空")
	private String password;
	
	private String code;

}
