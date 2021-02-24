package kosmo.orange.wtf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class StartController {

    @GetMapping("/")
    public String start(){
        System.out.println("start");
        return "Start";
    }

    @GetMapping("/main")
    public String main(String kind){
        System.out.println("시작에서 받아온 종류 : " + kind);
        return "Main";
    }
}
