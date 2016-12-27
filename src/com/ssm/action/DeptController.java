package com.ssm.action;

import com.ssm.domain.Dept;
import com.ssm.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Administrator on 2016/12/21.
 */
@Controller
@RequestMapping("/action/dept")
public class DeptController {

    @Autowired
    private DeptService deptService;

    @RequestMapping("/showAllDepts")
    public ModelAndView showAllDepts(){
        List<Dept> depts = deptService.findDeptsByCondition(null);
        return  new ModelAndView("/deptShow.jsp","depts",depts);
    }
}
