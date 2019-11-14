package com.honghu.cloud;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;

import com.honghu.cloud.framework.service.core.ApplicationStarter;

@SpringBootApplication
@EnableCircuitBreaker
public class DemoClientApplication {

	public static void main(String[] args) {
		ApplicationStarter.run(DemoClientApplication.class, args);
	}
	
}
