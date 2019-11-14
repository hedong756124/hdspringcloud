package com.honghu.cloud.datasources.annotation;

import java.lang.annotation.*;

/**
 * 多数据源注解
 * @author honghu cloud
 * @technology +QQ： 2170983087
 * @date 2017/9/16 22:16
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataSource {
    String name() default "";
}
