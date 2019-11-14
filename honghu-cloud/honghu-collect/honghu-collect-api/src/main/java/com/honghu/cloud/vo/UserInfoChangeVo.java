package com.honghu.cloud.vo;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;


@Data
public class UserInfoChangeVo extends CommonRequestHeader{
	private String id;
	
    /**
     * 出生日期
     */
	private String birthday;
	/**
	 * 性别 
	 */
	private Integer sex;
	
	/**
	 * 用户名
	 */
	@NotEmpty(message="用户名不能为空")
	private String userName;
	
	/**
	 * 相片ID
	 */
	private Long photoId;
	/**
	 * 相片名称
	 */
	private String photoName;
	/**
	 * 相片所在路径
	 */
	private String photoPath;
	/**
	 * 区域ID
	 */
	private Long areaId;
	
	
}
