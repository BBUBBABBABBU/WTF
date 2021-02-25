package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

    @RequestMapping("/Join")
    public String join(MemberVO memberVO){
        System.out.println("회원가입 페이지로");
        System.out.println(memberVO.getEmail());

        return "member/Join";
    }
    @PostMapping("/Info")
    public String info(MemberVO memberVO){
        System.out.println(memberVO.getEmail());
        System.out.println("회원정보");
        return "member/memberInfo";
    }
}
