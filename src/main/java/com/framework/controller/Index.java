package com.framework.controller;
 
import java.util.Map;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class Index {
 
    private final static String SUCCESS = "success";
    private final static String INDEX = "index";
 
    @RequestMapping("/")
    public String index(Map<String, Object> map) {
        map.put("freemarker", "freemarker");
        map.put("integers", 123456);
        return "index.jsp";
    }
 
//    @RequestMapping("search")
//    public String search(SearchUtil searchUtil, Map<String, Object> map) {
//        map.put("searchUtil", searchUtil);
//        System.out.println(searchUtil);
//        return "search";
//    }
 
    @RequestMapping("ftl")
    public String ftl(Map<String, Object> map) {
 
        // 获取模板路径跳转
        map.put("freemarker", "freemarker");
        return "ftl.ftl";
    }
}