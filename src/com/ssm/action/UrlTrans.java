package com.ssm.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UrlTrans {
    /**
     * 路径转发：/WEB-INF/manager/路径下的jsp不能直接访问，
     * 添加此处的转发处理可以访问到页面
     * 避免了下载界面的弊端，可以直接写jsp页面在本地，数据从数据库中读取即可
     * @param url index.jsp中中请求的地址
     * @return 返回forward:/WEB-INF/manager/下的页面
     */
    @RequestMapping("/url2Secrect")
    public String url2Secrect(String url){

        return "forward:/WEB-INF/manager/"+url;
    }
}
