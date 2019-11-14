package com.honghu.cloud.vo;

import java.sql.Timestamp;

import org.hibernate.validator.constraints.NotEmpty;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;

@Data
public class UserFootMarkVo extends CommonRequestHeader{
    private Long footMarkId;
    
    private Long userId;
    
    
    private Long goodsId;
	
    private String deviceId;
    
	private Long id;
	
    private String createTime;
    
    private String updateTime;
    
}
