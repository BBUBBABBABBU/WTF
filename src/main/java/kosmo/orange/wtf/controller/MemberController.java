package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @RequestMapping("/Join")
    public String join(MemberVO memberVO){
        System.out.println("회원가입 페이지로");
        System.out.println(memberVO.getEmail());

        return "member/Join";
    }
    @RequestMapping(value="/Info",method= RequestMethod.GET )
    public String info(HttpSession session){
//        System.out.println(ses);
        System.out.println("회원정보");
        return "member/memInfo";
    }
}
