package com.ssm.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/12/22.
 */
@Controller
public class GoodsController {

    @RequestMapping("/goodsServlet/add")
    public void add(){
        System.out.println(1234);
        System.out.println(1234);
        System.out.println(1234);
    }
}
