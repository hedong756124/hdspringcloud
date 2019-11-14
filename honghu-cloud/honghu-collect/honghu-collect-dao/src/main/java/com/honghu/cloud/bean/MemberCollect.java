/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.bean;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.honghu.cloud.dto.AuctionDto;

import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import lombok.Data;

/**
 * 收藏Entity
 * @author wsp
 * @version 2018-04-25
 */
@Data
@TableName("t_member_collect")
public class MemberCollect{
	
	private AuctionDto auction;		//拍品
	
	/**
	 * 主键
	 */
	@Length(min=1, max=64, message="主键长度必须介于 1 和 64 之间")
	@TableId(type = IdType.AUTO)
	@TableField("id")
	private String id;
	
	/**
	 * 拍品id
	 */
	@Length(min=1, max=64, message="拍品id长度必须介于 1 和 64 之间")
	@TableField("auction_id")
	private String auctionId;
	
	/**
	 * 用户id
	 */
	@Length(min=1, max=64, message="用户id长度必须介于 1 和 64 之间")
	@TableField("mid")
	private String mid;
	
	/**
	 * 创建时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="创建时间不能为空")
	@TableField("create_date")
	private Date createDate;
	
	/**
	 * 收藏分类
	 */
	@Length(min=0, max=64, message="收藏分类长度必须介于 0 和 64 之间")
	@TableField("classify_collect_id")
	private String classifyCollectId;
	
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
	private int size=10;
	
	/**
	 * 是否是新记录
	 */
	@TableField(exist = false)
	private boolean isNewRecord = false;

	public AuctionDto getAuction() {
		return auction;
	}

	public void setAuction(AuctionDto auction) {
		this.auction = auction;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(String auctionId) {
		this.auctionId = auctionId;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getClassifyCollectId() {
		return classifyCollectId;
	}

	public void setClassifyCollectId(String classifyCollectId) {
		this.classifyCollectId = classifyCollectId;
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