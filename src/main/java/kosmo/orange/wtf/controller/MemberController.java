package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.service.impl.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class MemberController {


    @Autowired
    MemberServiceImpl memberService;
    @Autowired
    PasswordEncoder passwordEncoder;
    @Autowired
    HttpSession session;

    @RequestMapping("/join")
    public String join( MemberVO memberVO){
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
    public String signUp( final MemberVO memberVO){
        System.out.println(memberVO.getBirthday());
        System.out.println(memberVO.getFavor());

        memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
          System.out.println(memberVO.getPassword());
        memberService.signUp(memberVO);
        return "member/Join";
    }


    @RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
    public String memberLogin(final MemberVO memberVO){

        System.out.println("memberLogin() 61line : " + memberVO.getEmail());
        System.out.println(memberVO.getPassword());
        System.out.println("asdasdasdasdsad");


        MemberVO result=memberService.memberLogin(memberVO);

        session.setAttribute("member",result);
        boolean check = passwordEncoder.matches(memberVO.getPassword(), result.getPassword());
        MemberVO test=(MemberVO) session.getAttribute("member");
        System.out.println("1번"+test.getEmail());
        if (check) {
            System.out.println(result.getPassword());
            System.out.println(result.getBirthday());
            System.out.println(result.getEmail());
            System.out.println(result.getGender());

        }else {
            System.out.println("실패1");

        }
        if (check) return "Start";
        else return "member/Join";

    }

}
