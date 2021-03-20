package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberMailVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import kosmo.orange.wtf.service.impl.MemberServiceImpl;
import kosmo.orange.wtf.service.impl.SendEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class MemberController {
    @Autowired
    MemberServiceImpl memberService;
    @Autowired
    PasswordEncoder passwordEncoder;
    @Autowired
    HttpSession session;
    @Autowired
    MainServiceImpl mainService;
    @Autowired
    SendEmailService sendEmailService;


    public String passwordTemp(String pw){
        pw=passwordEncoder.encode(pw);
        return pw;
    }

    //mypage 안에 있는 페이지 매핑 없이 가도록.
    @RequestMapping("/mypage/{step}")
    public String Step(@PathVariable String step){
    return "mypage/"+step;
    }



    //비밀번호 교체시 컨트롤러
    @RequestMapping("/pwdChange")
    public String pwdChange( MemberVO memberVO, String currentPassword , Model model){
        MemberVO member=(MemberVO) session.getAttribute("member");
        MemberVO result=memberService.memberLogin(member);
        //암호화된 db 결과값과 현재 비밀번호를 대조해 맞는지 확인해줌.
        boolean check = passwordEncoder.matches( currentPassword, result.getPassword());
        if (check){
            memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
            model.addAttribute("passChge","success");
            memberService.passwordChge(memberVO);
        }
        else {
            model.addAttribute("passChge","failed");
        }
        return "mypage/myInfo";
    }


    //정보 변경 눌렀을 시
    @RequestMapping("/modifyInfo")
    public String memberUpdate(MemberVO member, Model model){
        MemberVO mem= (MemberVO) session.getAttribute("member");
        member.setEmail(mem.getEmail());
        MemberVO result=null;
        result=memberService.memberUpdate(member);
       model.addAttribute("member",result);
        return "mypage/myInfo";}

//    //
//    @RequestMapping("/join")
//    public String join( MemberVO memberVO){
//        return "member/Join";
//    }

    //회원가입창
    @RequestMapping(value="/Info",method= RequestMethod.GET )
    public String info() {
        return "member/memInfo";
    }



    //회원가입(memInfo) 에서 ajax 중간에 불리는 함수.(아이디 중복체크 버튼 클릭시)
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

    //회원가입 완료 버튼 클릭시
    @RequestMapping(value = "/signUp",method= RequestMethod.POST)
    public String signUp(  MemberVO memberVO, Model model ){
        memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
        memberService.signUp(memberVO);
        model.addAttribute("signupEmail",memberVO.getEmail());
        session.setAttribute("status","signUp");
        return "Start";
    }



    //로그인 시 ,
    @RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
    public String memberLogin(String foodKind,MemberVO memberVO, Model model){
        MemberVO result=memberService.memberLogin(memberVO);
            model.addAttribute("foodKind",foodKind);
            if (result!=null) {
            boolean check = passwordEncoder.matches(memberVO.getPassword(), result.getPassword());
            if (check) {
                System.out.println("비밀번호 일치");
                session.setAttribute("status","success");
                session.setAttribute("member",result);
                model.addAttribute("member",result);
            }else {
                session.setAttribute("status","fail");
                System.out.println("비밀번호 불일치");
            }
//            if (check) {
//                return "redirect: /";
//            }
//            else {
//                return "redirect: /";
//            }
                return "redirect: /";
        }else{
            session.setAttribute("status","fail");
            return "redirect: /";
        }
    }



//비밀번호 찾기
    //Email과 생일 일치여부를 체크하는 컨트롤러

    @GetMapping("/check/findPw")
    @ResponseBody
    public
    Map<String, Boolean> pw_find(String userEmail, String userBirthday){
        Map<String,Boolean> json = new HashMap<>();
        boolean pwFindCheck = memberService.userEmailCheck(userEmail,userBirthday);

        System.out.println(pwFindCheck);
        json.put("check", pwFindCheck);
        return json;
    }


//비밀번호 찾기
    //등록된 이메일로 임시비밀번호를 발송하고 발송된 임시비밀번호로 사용자의 pw를 변경하는 컨트롤러
    @PostMapping("/check/findPw/sendEmail")
    @ResponseBody
    public  void sendEmail(String userEmail, String userBirthday) {

        MemberMailVO dto = sendEmailService.createMailAndChangePassword(userEmail, userBirthday);
        System.out.println(dto.getMessage());
        sendEmailService.mailSend(dto);

    }

    //로그아웃
    @RequestMapping("memberLogout")
    public String memberLogout(){
        System.out.println("로그아웃");
        session.removeAttribute("member");
        session.removeAttribute("status");
        return "redirect: /";
    }


}
