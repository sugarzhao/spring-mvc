# S-framework
S-framework中使用的(based on spring mvc)框架，包括freeMarker 模板作为试图展现层，流行的mybatis 作为数据的持久化层，基于这个还添加的缓存e- cache 作为key -value的服务端缓存机制。方便上手使用。
# 1.试图完全基于freeMarker.
import javax.servlet.http.HttpServletRequest;
@Controller
public class SpringMvcController {
    @RequestMapping(value="/welcome",method={RequestMethod.GET})
    public ModelAndView getFirstPage(HttpServletRequest request) {
        //welcom就是视图的名称（welcom.ftl）
        ModelAndView mv = new ModelAndView("welcome");
        mv.addObject("name", "My First Spring Mvc");
        return mv;
    }
}

此处将name对象 添加到试图，ftl文件解析生成动态页面。利用freeMark的特性我们可以传递list 到页面解析。甚至更复杂的对象。

Hello ${name}


