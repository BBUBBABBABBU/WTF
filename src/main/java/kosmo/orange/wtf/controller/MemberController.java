package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.service.impl.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.beans.Transient;

@Controller
public class MemberController {


    @Autowired
    MemberServiceImpl memberService;
    @Autowired
    PasswordEncoder passwordEncoder;

    @RequestMapping("/join")
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



    @RequestMapping(value = "/signUp",method= RequestMethod.POST )
    public String signUp(MemberVO memberVO){
        System.out.println(memberVO.getBirthday());
        System.out.println(memberVO.getFavor());

        memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
          System.out.println(memberVO.getPassword());
        memberService.signUp(memberVO);
        return "member/Join";
    }


    @RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
    public String memberLogin(MemberVO memberVO){
        System.out.println(memberVO.getEmail());
        System.out.println(memberVO.getPassword());
        System.out.println("asdasdasdasdsad");
        int result =0;
        result=memberService.memberLogin(memberVO);
        System.out.println(result);
        return "Start";
    }

}
