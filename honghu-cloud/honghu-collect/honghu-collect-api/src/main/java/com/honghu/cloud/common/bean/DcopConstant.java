package com.honghu.cloud.common.bean;

public class DcopConstant {
	static final public String SEMICOLON = ";";
	static final public String COMMA = ",";
	static final public String COLON = ":";
	static final public String SearchTypeCreateTime = "CreateTime";
	static final public String SearchTypeCreateTime_All = "All";
	static final public String SearchTypeCreateTime_WithinOneDay = "<=1";
	static final public String SearchTypeCreateTime_WithinThreeDays = "<=3";
	static final public String SearchTypeCreateTime_WithinSevenDays = "<=7";
	static final public String SearchTypeCreateTime_BeforeSevenDays = ">7";
	
	static final public String SearchTypeLeadsStatus = "LeadsStatus";
	static final public String SearchTypeLeadsStatus_All = "All";
	static final public String SearchTypeLeadsStatus_Created = "Created";
	static final public String SearchTypeLeadsStatus_UnProcessed = "UnProcessed";
	static final public String SearchTypeLeadsStatus_Invalid = "InValid";
	
//	static final public String DEFAULT_DATA_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ssz";
	static final public String DEFAULT_DATA_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZ";
	static final public String SaleConstantDutyId = "20100030";
	static final public String SaleConstantManagerDutyId = "20100020";
	
	static final public String SrcTypeId_Flow = "11010";
}
