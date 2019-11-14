package com.honghu.cloud;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

import com.honghu.cloud.framework.service.core.ApplicationStarter;

@EnableFeignClients
@SpringBootApplication
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
public class AuctionServiceApplication {
	public static void main(String[] args) {
		ApplicationStarter.run(AuctionServiceApplication.class, args);
	}
}
