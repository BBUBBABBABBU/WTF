package kosmo.orange.wtf.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

    @RequestMapping("/mypage")
    public String Mypage(){return "mypage/mypage";}

    @RequestMapping("/service")
    public String Service(){return "mypage/service";}

    @RequestMapping("/qna")
    public String Qna(){return "mypage/qna";}

    @RequestMapping("/myqnalist")
    public String MyqnaList(){return "mypage/myqnalist";}

    @RequestMapping("/myqnadetail")
    public String MyqnaDetail(){return "mypage/myqnadetail";}


}
