package com.ssm.interceptor;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/21.
 */
public class LogInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
//        Logger logger = Logger.getLogger(LogInterceptor.class);
//        FileReader fr=null;
//
//        String temp = null;
//        try {
//            File file=new File("info.txt");//路径需要自己指定,此处默认为tomcat下  可以在配置信息处设置打印位置
//            if (!file.exists())           //private Logger logger = Logger.getLogger(要打印的类名.class);
//                file.createNewFile();    //        logger.info(要打印的数据);
//            fr=new FileReader(file);
//            temp = httpServletRequest.getSession().getAttribute("user")
//                    + "   " + new Date().toString()+"   "+o.toString();
//            logger.info(temp);
//        } catch (FileNotFoundException e) {
//            logger.error("file  not found",e);
//            try {
//                fr.close();
//            }catch (IOException e1){
//                logger.error("file not found",e1);
//            }
//        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
