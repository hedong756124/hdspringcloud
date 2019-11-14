/**
 * 
 */
package com.honghu.cloud.vo;



import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 
 * @author shaozhen
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class GoldLogVo extends CommonRequestHeader {

	//@NotEmpty(message="金币信息不能为空")
	private String glContent;
	private Integer glCount;
	@NotEmpty(message="用户ID不能为空")
	private Long glUserId;
	private Integer glMoney;
	private Integer glType;
	private Integer count;

}
