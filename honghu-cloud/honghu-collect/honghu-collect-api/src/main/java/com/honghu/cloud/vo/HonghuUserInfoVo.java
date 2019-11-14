package com.honghu.cloud.vo;

import java.math.BigDecimal;

import com.honghu.cloud.common.bean.CommonRequestHeader;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class HonghuUserInfoVo extends CommonRequestHeader{
	
	private String id;
    /**
     * 添加时间
     */
	private String addTime;
    /**
     * 删除状态
     */
	private Boolean deleteStatus;
    /**
     * MSN
     */
	private String MSN;
    /**
     * QQ
     */
	private String QQ;
    /**
     * 旺旺号码
     */
	private String WW;
    /**
     * 所在地址
     */
	private String address;
    /**
     * 可用余额
     */
	private BigDecimal availableBalance;
    /**
     * 出生日期
     */
	private String birthday;
    /**
     * 电子邮箱
     */
	private String email;
    /**
     * 冻结余额
     */
	private BigDecimal freezeBlance;
    /**
     * 金币
     */
	private Integer gold;
    /**
     * 积分
     */
	private Integer integral;
    /**
     * 上次登陆时间
     */
	private String lastLoginDate;
    /**
     * 上次登录的IP地址
     */
	private String lastLoginIp;
	/**
	 * 登录次数
	 */
	private Integer loginCount;
	/**
	 * 登陆日期
	 */
	private String loginDate;
	/**
	 * 登录IP
	 */
	private String loginIp;
	/**
	 * 手机号码
	 */
	private String mobile;
	/**
	 * 旧密码
	 */
	private String oldPassword;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 报表
	 */
	private Integer report;
	/**
	 * 性别 
	 */
	private Integer sex;
	/**
	 * 状态
	 */
	private Integer status;
	/**
	 * 电话号码
	 */
	private String telephone;
	/**
	 * 真实姓名
	 */
	private String trueName;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 角色名
	 */
	private String userRole;
	/**
	 * 信用
	 */
	private Integer userCredit;
	/**
	 * 相片ID
	 */
	private Long photoId;
	/**
	 * 相片地址
	 */
	private String photoPath;
	/**
	 * 店铺ID
	 */
	private Long storeId;
	/**
	 * QQ的OpenId
	 */
	private String qqOpenid;
	/**
	 * sina的OpenId
	 */
	private String sinaOpenid;
	/**
	 * 店铺快捷菜单
	 */
	private String storeQuickMenu;
	/**
	 * 上级的QQ号码
	 */
	private Long parentId;
	/**
	 * 年
	 */
	private Integer years;
	/**
	 * 区域ID
	 */
	private Long areaId;
	/**
	 * 区域详细地址
	 */
	/**
     * level 2
     */
	private String areaName;
    /**
     * level 1
     */
	private String city;
    /**
     * level 0
     */
	private String province;
	
	/**
	 * 足迹总数
	 */
	private Integer footMarkCount;
	
	/**
	 * 昵称
	 */
	private String nickName;
	
	/**
	 * 待付款的订单数量
	 */
	private Integer waitOrderCount;
	
	/**
	 * 等待发货的订单数量
	 */
	private Integer waitThrowGoodsCount;
	
	/**
	 * 等待接受的订单数量
	 */
	private Integer waitCatchGoodsCount;
	
	/**
	 * 等待评论的订单数量
	 */
	private Integer waitCommentOrderCount;
}
