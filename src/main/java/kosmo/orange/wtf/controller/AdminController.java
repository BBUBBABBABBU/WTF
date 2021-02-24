package kosmo.orange.wtf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    /*
        메인 > 관리자 메인
     */
    @GetMapping("/adminHome")
    public String adminHome() {

        // 근데 로그인이 되어 있으면 잠금화면

        // 안되어있으면 로그인 화면

        return "adminViews/layout/adminBasic";
    }


}
