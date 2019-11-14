package com.honghu.cloud.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
//@Component("smsconfig")
public class SmsProperties {

	//@Value("${sms.AccessId}")
	private  String AccessId;
	//@Value("${sms.AccessKey}")
	private  String AccessKey;
	//@Value("${sms.MNSEndpoint}")
	private  String MNSEndpoint;
	//@Value("${sms.SMSSignName}")
	private  String SMSSignName;
	//@Value("${sms.CloudTopic}")
	private  String CloudTopic;
	
}
	
