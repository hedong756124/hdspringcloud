package com.honghu.cloud;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

import com.honghu.cloud.framework.service.core.ApplicationStarter;

@EnableFeignClients
@SpringBootApplication
public class CollectServiceApplication {
	public static void main(String[] args) {
		ApplicationStarter.run(CollectServiceApplication.class, args);
	}
}
