package com.honghu.cloud;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

import com.honghu.cloud.framework.service.core.ApplicationStarter;

@SpringBootApplication
@EnableCircuitBreaker
@EnableEurekaClient
public class DemoLabelApplication {

	public static void main(String[] args) {
		ApplicationStarter.run(DemoLabelApplication.class, args);
	}
	
}
