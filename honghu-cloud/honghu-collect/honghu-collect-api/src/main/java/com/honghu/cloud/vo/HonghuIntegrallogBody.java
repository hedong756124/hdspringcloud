/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.vo;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.honghu.cloud.common.bean.CommonRequestHeader;

import org.hibernate.validator.constraints.Length;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 积分日志Entity
 * @author zjf
 * @version 2017-09-20
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class HonghuIntegrallogBody extends CommonRequestHeader{
	
	private static final long serialVersionUID = 1L;
	private Long id;
	/**
	 * addtime
	 */
	private Integer count;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date addtime;
	
	/**
	 * deletestatus
	 */
	@Length(min=1, max=1, message="deletestatus长度必须介于 1 和 1 之间")
	private Boolean deletestatus;
	
	/**
	 * content
	 */
	private String content;
	
	/**
	 * integral
	 */
	@Length(min=1, max=11, message="integral长度必须介于 1 和 11 之间")
	private String integral;
	
	/**
	 * type
	 */
	@Length(min=0, max=255, message="type长度必须介于 0 和 255 之间")
	private String type;
	
	/**
	 * integral_user_id
	 */
	private Long integralUserId;
	
	/**
	 * operate_user_id
	 */
	private Long operateUserId;
	
	
	
	/**
	 * 当前页
	 */
	private int current;
	
	/**
	 * 每页显示条数
	 */
	private int size;
	
	/**
	 * 平时天数获得的积分
	 */
	private int baseInte;
	/**
	 * 第八天获得的额外积分
	 */
	private int plusInte;
}