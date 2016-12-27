package com.ssm.action;

import com.ssm.domain.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/12/21.
 */
@Controller
public class NoInterceptor {
    @Autowired
    private UserService userService;

    @RequestMapping("/user/login")
    public String login(HttpSession session, String name, String pass){
        User user = userService.login(name, pass);
        session.setAttribute("user",user);
        return "redirect:/action/dept/showAllDepts.do";
    }

    @RequestMapping("/manager/openEmpLoginPage")
    public String openEmpLoginPage(){
        return "forward:/WEB-INF/manager/empLogin.jsp";
    }
}
