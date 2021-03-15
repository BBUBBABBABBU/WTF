package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberMailVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import kosmo.orange.wtf.service.impl.MemberServiceImpl;
import kosmo.orange.wtf.service.impl.SendEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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


    @RequestMapping("/mypage/{step}")
    public String Step(@PathVariable String step){
        System.out.println("스텝");
    return "mypage/"+step;
    }

    @RequestMapping("/pwdChange")
    public String pwdChange( MemberVO memberVO){
        memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
        memberService.passwordChge(memberVO);




        return "mypage/myInfo";
    }




    @RequestMapping("/modifyInfo")
    public String memberUpdate(MemberVO member, Model model){

        MemberVO mem= (MemberVO) session.getAttribute("member");
        member.setEmail(mem.getEmail());

        MemberVO result=null;
//        MemberVO memSession= (MemberVO) session.getAttribute("member");
//        model.addAttribute("member",result);
        result=memberService.memberUpdate(member);
//        session.setAttribute("member",result);

        model.addAttribute("member",result);
        return "mypage/myInfo";}


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
    public String memberLogin( String kind,MemberVO memberVO, Model model){
        MemberVO result=memberService.memberLogin(memberVO);


            model.addAttribute("kind",kind);
            if (result!=null) {
                session.setAttribute("status","success");
                session.setAttribute("member",result);
                model.addAttribute("member",result);
            boolean check = passwordEncoder.matches(memberVO.getPassword(), result.getPassword());
                System.out.println(memberVO.getPassword()+"/"+result.getPassword());
            if (check) {
                System.out.println("비밀번호 일치");
                session.setAttribute("status","success");
            }else {
                session.setAttribute("status","fail");
                System.out.println("비밀번호 불일치");
            }
            if (check) {
                List<RestaurantVO> restaurantList = mainService.checkRestaurant();
                List<String> photoList = new ArrayList<>();
                for(int i=0; i< restaurantList.size(); i++){
                    List<PhotoVO> temp = mainService.res_photo(restaurantList.get(i));
                    try {
                        photoList.add((String) temp.get(0).getRtr_pic_loc());


                    }catch (Exception e){

                        photoList.add("/res/img/ing.jpg");

                    }

                }
                model.addAttribute("restaurantList",restaurantList);
                model.addAttribute("photoList", photoList);
//                MemberVO test=(MemberVO) session.getAttribute("member");
                System.out.println("확인4");
                return "redirect: /";
            }
            else {
                return "redirect: /";
            }
        }else{
            session.setAttribute("status","fail");
            return "redirect: /";
        }
    }




    //Email과 name의 일치여부를 check하는 컨트롤러
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

    //등록된 이메일로 임시비밀번호를 발송하고 발송된 임시비밀번호로 사용자의 pw를 변경하는 컨트롤러
    @PostMapping("/check/findPw/sendEmail")
    @ResponseBody
    public  void sendEmail(String userEmail, String userBirthday){

        MemberMailVO dto = sendEmailService.createMailAndChangePassword(userEmail, userBirthday);
        System.out.println(dto.getMessage());
        sendEmailService.mailSend(dto);

    }




}
