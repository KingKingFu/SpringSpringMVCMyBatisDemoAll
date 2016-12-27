package com.ssm.interceptor;

import com.ssm.domain.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 登录拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {
    /**
     进入 Handler方法之前执行
     用于身份认证、身份授权
     比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        User user = (User) httpServletRequest.getSession().getAttribute("user");
        if(user == null) {//未获取到user账号验证信息时  转发到登录界面
            httpServletRequest.getRequestDispatcher("/userLogin.jsp").forward(httpServletRequest,httpServletResponse);
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
