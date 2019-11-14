package com.honghu.cloud.utils;

import java.util.Random;
/**
 * 生成手机验证码工具类
 * @date 2016-08-24
 * @author zhouhaitao
 *
 */
public final class MobileVerificaCodeUtils {
	/**
	 * 生成手机验证码;
	 * @author zhouhaitao
	 * @date 2016-08-24
	 * @return
	 */
	public final static String genMobileVerificaCode() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();  // 定义一个验证码字符串变量
        for (int i = 0; i < 6; i++) {
            int code = random.nextInt(10);       // 随即生成一个0-9之间的整数
            sb.append(code);                     // 将生成的随机数拼成一个六位数验证码
        }
        return sb.toString();                    // 返回一个六位随机数验证码
    }
}
