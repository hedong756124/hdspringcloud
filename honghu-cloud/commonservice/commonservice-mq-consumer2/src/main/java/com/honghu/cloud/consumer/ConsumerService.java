package com.honghu.cloud.consumer;

import org.springframework.cloud.stream.annotation.Output;
import org.springframework.messaging.SubscribableChannel;

public interface ConsumerService {
	
	@Output("HonghuInput")
	SubscribableChannel sendMessage();
}
