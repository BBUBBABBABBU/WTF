package kosmo.orange.wtf.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.lang.reflect.Parameter;

public class loginController {

    @GetMapping("/test")
    public String recommend(){
        System.out.println("성공");
        return "recommend/recommend";

    }
}
