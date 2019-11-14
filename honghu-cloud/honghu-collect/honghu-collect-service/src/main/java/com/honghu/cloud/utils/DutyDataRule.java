package com.honghu.cloud.utils;

public enum DutyDataRule {
	//接口返回码，最后统一分类
	ORGDATA("ORG", "20100020,20100040"),
	PRIVATEDATA("PRIVATE", "20100030,20100050,20100060");
	private String key;
	private String value;
	private DutyDataRule(String key ,String value) {
		this.key = key;
		this.value = value;
	}
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}
	
	public void setValue(String value) {
		this.value = value;
	}
}
