/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.bean;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import lombok.Data;

/**
 * 拍卖Entity
 * @author wsp
 * @version 2018-04-25
 */
@Data
@TableName("t_auction")
public class Auction{
	
	/**
	 * 主键
	 */
	@Length(min=1, max=64, message="主键长度必须介于 1 和 64 之间")
	@TableId(type = IdType.AUTO)
	@TableField("id")
	private String id;
	
	/**
	 * 类型:0竞拍  ,1邀请
	 */
	@Length(min=1, max=10, message="类型:0竞拍  ,1邀请长度必须介于 1 和 10 之间")
	@TableField("type")
	private String type;
	
	/**
	 * 文件类型:1:图片 ,2:视频
	 */
	@Length(min=1, max=10, message="文件类型:1:图片 ,2:视频长度必须介于 1 和 10 之间")
	@TableField("file_type")
	private String fileType;
	
	/**
	 * 主题
	 */
	@Length(min=1, max=100, message="主题长度必须介于 1 和 100 之间")
	@TableField("theme")
	private String theme;
	
	/**
	 * 约会地点
	 */
	@Length(min=1, max=100, message="约会地点长度必须介于 1 和 100 之间")
	@TableField("address")
	private String address;
	
	/**
	 * 0待审核  ,1未通过审核 ,2审核通过  ,3待付款 , 4已完成 ,5已取消
	 */
	@Length(min=1, max=10, message="0待审核  ,1未通过审核 ,2审核通过  ,3待付款 , 4已完成 ,5已取消长度必须介于 1 和 10 之间")
	@TableField("status")
	private String status;
	
	/**
	 * 出价
	 */
	@TableField("price")
	private String price;
	
	/**
	 * 出价次数
	 */
	@Length(min=1, max=11, message="出价次数长度必须介于 1 和 11 之间")
	@TableField("number")
	private String number;
	
	/**
	 * 详细描述
	 */
	@Length(min=1, max=500, message="详细描述长度必须介于 1 和 500 之间")
	@TableField("desc")
	private String desc;
	
	/**
	 * 地点X
	 */
	@Length(min=1, max=11, message="地点X长度必须介于 1 和 11 之间")
	@TableField("coordinate_x")
	private String coordinateX;
	
	/**
	 * 地点Y
	 */
	@Length(min=1, max=11, message="地点Y长度必须介于 1 和 11 之间")
	@TableField("coordinate_y")
	private String coordinateY;
	
	/**
	 * 拍卖开始时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="拍卖开始时间不能为空")
	@TableField("activity_start_date")
	private Date activityStartDate;
	
	/**
	 * 拍卖结束时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="拍卖结束时间不能为空")
	@TableField("activity_end_date")
	private Date activityEndDate;
	
	/**
	 * 赴约开始时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="赴约开始时间不能为空")
	@TableField("appointment_start_date")
	private Date appointmentStartDate;
	
	/**
	 * 赴约结束时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="赴约结束时间不能为空")
	@TableField("appointment_end_date")
	private Date appointmentEndDate;
	
	/**
	 * 性别要求:0 不限  ,1男  ,2女
	 */
	@Length(min=1, max=10, message="性别要求:0 不限  ,1男  ,2女长度必须介于 1 和 10 之间")
	@TableField("claim_sex")
	private String claimSex;

	/**
	 * 起拍价(竞拍)或估价（邀请）
	 */
	@TableField("start_price")
	private String startPrice;
	
	/**
	 * 慈善捐赠比列:0-100
	 */
	@TableField("donate_percentage")
	private String donatePercentage;

	/**
	 * 中标用户id
	 */
	@Length(min=1, max=64, message="中标用户id长度必须介于 1 和 64 之间")
	@TableField("win_user_id")
	private String winUserId;
	
	/**
	 * 中标价格
	 */
	@TableField("win_price")
	private String winPrice;
	
	/**
	 * 围观次数
	 */
	@Length(min=1, max=11, message="围观次数长度必须介于 1 和 11 之间")
	@TableField("browse_num")
	private String browseNum;
	
	/**
	 * 收藏次数
	 */
	@Length(min=1, max=11, message="收藏次数长度必须介于 1 和 11 之间")
	@TableField("collect_num")
	private String collectNum;
	
	/**
	 * 创建时间/发布时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="创建时间/发布时间不能为空")
	@TableField("create_date")
	private Date createDate;
	
	/**
	 * 更新时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@TableField("update_date")
	private Date updateDate;
	
	/**
	 * 删除标记:0不删除  1已删除
	 */
	@Length(min=1, max=10, message="删除标记:0不删除  1已删除长度必须介于 1 和 10 之间")
	@TableField("del_flag")
	private String delFlag;
	
	/**
	 * 视频或图的url
	 */
	@Length(min=0, max=200, message="视频或图的url长度必须介于 0 和 200 之间")
	@TableField("url1")
	private String url1;
	
	/**
	 * 视频或图的url
	 */
	@Length(min=1, max=200, message="视频或图的url长度必须介于 1 和 200 之间")
	@TableField("url2")
	private String url2;
	
	/**
	 * 视频或图的url
	 */
	@Length(min=1, max=200, message="视频或图的url长度必须介于 1 和 200 之间")
	@TableField("url3")
	private String url3;
	
	/**
	 * 视频或图的url
	 */
	@Length(min=1, max=200, message="视频或图的url长度必须介于 1 和 200 之间")
	@TableField("url4")
	private String url4;
	
	/**
	 * 视频或图的url
	 */
	@Length(min=1, max=200, message="视频或图的url长度必须介于 1 和 200 之间")
	@TableField("url5")
	private String url5;
	
	
	
	/**
	 * 当前页
	 */
	@TableField(exist = false)
	private int current=1;
	
	/**
	 * 分页开始下标
	 */
	@TableField(exist = false)
	private int startIndex;
	
	/**
	 * 每页显示条数
	 */
	@TableField(exist = false)
	private int size;
	
	/**
	 * 是否是新记录
	 */
	@TableField(exist = false)
	private boolean isNewRecord = false;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getCoordinateX() {
		return coordinateX;
	}

	public void setCoordinateX(String coordinateX) {
		this.coordinateX = coordinateX;
	}

	public String getCoordinateY() {
		return coordinateY;
	}

	public void setCoordinateY(String coordinateY) {
		this.coordinateY = coordinateY;
	}

	public Date getActivityStartDate() {
		return activityStartDate;
	}

	public void setActivityStartDate(Date activityStartDate) {
		this.activityStartDate = activityStartDate;
	}

	public Date getActivityEndDate() {
		return activityEndDate;
	}

	public void setActivityEndDate(Date activityEndDate) {
		this.activityEndDate = activityEndDate;
	}

	public Date getAppointmentStartDate() {
		return appointmentStartDate;
	}

	public void setAppointmentStartDate(Date appointmentStartDate) {
		this.appointmentStartDate = appointmentStartDate;
	}

	public Date getAppointmentEndDate() {
		return appointmentEndDate;
	}

	public void setAppointmentEndDate(Date appointmentEndDate) {
		this.appointmentEndDate = appointmentEndDate;
	}

	public String getClaimSex() {
		return claimSex;
	}

	public void setClaimSex(String claimSex) {
		this.claimSex = claimSex;
	}

	public String getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(String startPrice) {
		this.startPrice = startPrice;
	}

	public String getDonatePercentage() {
		return donatePercentage;
	}

	public void setDonatePercentage(String donatePercentage) {
		this.donatePercentage = donatePercentage;
	}

	public String getWinUserId() {
		return winUserId;
	}

	public void setWinUserId(String winUserId) {
		this.winUserId = winUserId;
	}

	public String getWinPrice() {
		return winPrice;
	}

	public void setWinPrice(String winPrice) {
		this.winPrice = winPrice;
	}

	public String getBrowseNum() {
		return browseNum;
	}

	public void setBrowseNum(String browseNum) {
		this.browseNum = browseNum;
	}

	public String getCollectNum() {
		return collectNum;
	}

	public void setCollectNum(String collectNum) {
		this.collectNum = collectNum;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	public String getUrl1() {
		return url1;
	}

	public void setUrl1(String url1) {
		this.url1 = url1;
	}

	public String getUrl2() {
		return url2;
	}

	public void setUrl2(String url2) {
		this.url2 = url2;
	}

	public String getUrl3() {
		return url3;
	}

	public void setUrl3(String url3) {
		this.url3 = url3;
	}

	public String getUrl4() {
		return url4;
	}

	public void setUrl4(String url4) {
		this.url4 = url4;
	}

	public String getUrl5() {
		return url5;
	}

	public void setUrl5(String url5) {
		this.url5 = url5;
	}

	public int getCurrent() {
		return current;
	}

	public void setCurrent(int current) {
		this.current = current;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public boolean isNewRecord() {
		return isNewRecord;
	}

	public void setNewRecord(boolean isNewRecord) {
		this.isNewRecord = isNewRecord;
	}
}