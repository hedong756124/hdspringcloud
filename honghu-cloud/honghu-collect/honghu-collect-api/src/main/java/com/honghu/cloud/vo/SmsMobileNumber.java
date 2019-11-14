/**
 * 
 */
package com.honghu.cloud.vo;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 用户验证码系统VO
 * @author shaozhen
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class SmsMobileNumber extends CommonRequestHeader {

	
	
	@NotEmpty(message="手机号码不能为空")
	private String mobileNumber;
	
	private String type;

}
