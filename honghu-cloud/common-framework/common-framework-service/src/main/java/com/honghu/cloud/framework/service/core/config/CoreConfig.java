package com.honghu.cloud.framework.service.core.config;

import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@EnableHystrix
@EnableFeignClients(basePackages={"com.honghu.cloud.**.feign.**","com.honghu.cloud.**.api.**"})
@Import({DiscoveryClientConfig.class,ScheduledTaskConfig.class,SwaggerConfig.class,CacheConfig.class})
public class CoreConfig {

}
