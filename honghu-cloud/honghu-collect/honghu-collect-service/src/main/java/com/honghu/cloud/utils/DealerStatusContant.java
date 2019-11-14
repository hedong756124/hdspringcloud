package com.honghu.cloud.utils;

public enum DealerStatusContant {
	//接口返回码，最后统一分类
	UNPROCESS("10510", "UnProcessed"),
	CREATED("10520", "Created"),
	INVALID("10530", "InValid");

	private String key;
	private String value;
	private DealerStatusContant(String key ,String value) {
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
