/**
 * Copyright &copy; 2012-2017 <a href="http://minglisoft.cn">HongHu</a> All rights reserved.
 */
package com.honghu.cloud.dao;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.honghu.cloud.bean.MemberCollect;

/**
 * 收藏DAO接口
 * @author wsp
 * @version 2018-04-25
 */
public interface MemberCollectDao extends BaseMapper<MemberCollect> {
	/**
	 * 
	 * @param memberCollect 多维度条件
	 * @param current 当前页
	 * @param size 每页显示条数
	 * @return 查询列表
	 */
	public List<MemberCollect> getList(MemberCollect memberCollect);
}