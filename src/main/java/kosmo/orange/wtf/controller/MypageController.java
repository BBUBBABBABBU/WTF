package kosmo.orange.wtf.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {


    @RequestMapping("/mypage")
    public String Mypage(){return "mypage/mypage";}

    @RequestMapping("/service")
    public String Service(){return "mypage/service";}

}



