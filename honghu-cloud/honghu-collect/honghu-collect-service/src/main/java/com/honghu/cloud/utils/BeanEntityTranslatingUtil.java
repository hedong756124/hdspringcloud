package com.honghu.cloud.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Timestamp;

public class BeanEntityTranslatingUtil {
//    private static final Logger log=LoggerFactory.getLogger(Dto2Entity.class);
// 使用多线程安全的Map来缓存BeanCopier，由于读操作远大于写，所以性能影响可以忽略

    /**
         ×通过常规反射形式
     * DTO对象转换为实体对象。如命名不规范或其他原因导致失败。
     * @param t 源转换的对象
     * @param e 目标转换的对象
     * 
     */
    public static <T,E> void transalte(T t,E e){
        Method[] tms=t.getClass().getDeclaredMethods();
        Method[] tes=e.getClass().getDeclaredMethods();
        for(Method m1:tms){
            if(m1.getName().startsWith("get")){
                String mNameSubfix=m1.getName().substring(3);
                String forName="set"+mNameSubfix;
                for(Method m2:tes){
                    if(m2.getName().equals(forName)){
                                            // 如果类型一致，或者m2的参数类型是m1的返回类型的父类或接口
                        boolean canContinue = m2.getParameterTypes()[0].isAssignableFrom(m1.getReturnType());
                        if (canContinue) {
                            try {
                                m2.invoke(e, m1.invoke(t));
                                break;
                            } catch (Exception e1) {
                                // TODO Auto-generated catch block
                                e1.printStackTrace();
                            }
                        }else{
                        	if(m2.getParameterTypes()[0].isInstance(Timestamp.class)&&m1.getReturnType().isInstance(String.class)){
                        		
                        	}
                        }
                    }
                }
            }
        }
    }
     

}