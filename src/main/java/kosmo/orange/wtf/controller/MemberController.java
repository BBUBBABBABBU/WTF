package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.service.impl.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "member/Join";
    }


    @RequestMapping(value="/Info",method= RequestMethod.GET )
    public String info(HttpSession session) {
        return "member/memInfo";
    }


    @RequestMapping(value = "/idCheckLogin")
    @ResponseBody
    public String idcheckLogin(MemberVO memberVO) throws Exception{
        String message = "이미 사용중입니다";
        try {
          int  result = memberService.idcheckMember(memberVO.getEmail());
        if(result == 0) {
            message = "사용가능한 아이디입니다";
        }
        }catch (Exception e){

        }return message;
    }

    @RequestMapping(value = "/signUp",method= RequestMethod.POST )
    public String signUp(  MemberVO memberVO){
        memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
        memberService.signUp(memberVO);
        return "Start";
    }

    @RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
    public String memberLogin( MemberVO memberVO){
        MemberVO result=memberService.memberLogin(memberVO);
        System.out.println(result);
        if (result!=null) {
            session.setAttribute("status","success");
            session.setAttribute("member",result);
            boolean check = passwordEncoder.matches(memberVO.getPassword(), result.getPassword());
            if (check) {
                System.out.println("비밀번호 일치");
                session.setAttribute("status","success");
            }else {
                session.setAttribute("status","fail");
                System.out.println("비밀번호 불일치");
            }
            if (check) {
                MemberVO test=(MemberVO) session.getAttribute("member");
                return "Start";
            }
            else {
                return "Start";
            }
        }else{
            session.setAttribute("status","fail");
            return "Start";
        }
    }
}
