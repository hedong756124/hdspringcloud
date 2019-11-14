package com.honghu.cloud.producer;

import org.springframework.cloud.stream.annotation.Output;
import org.springframework.messaging.SubscribableChannel;

public interface ProducerService {
	
	@Output("HonghuInput")
	SubscribableChannel sendMessage();
}
