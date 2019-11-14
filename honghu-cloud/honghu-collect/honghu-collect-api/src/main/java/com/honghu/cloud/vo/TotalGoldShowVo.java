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
public class TotalGoldShowVo extends CommonRequestHeader {

	
	@NotEmpty(message="金币用户id不能为空")
	private Long glUserId;
	
	private String addTimeBegin;
	private String addTimeEnd;
	
	//页
	private Integer page;
	//页大小
	private Integer size;
	
	private Integer offset;
	
	
	public void cal(){
		//offset=page*size;
		offset=(page-1)*size;	
	}

}
