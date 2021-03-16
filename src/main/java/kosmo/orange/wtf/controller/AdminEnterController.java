package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.AdminMailVO;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.service.impl.AdminMailService;
import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

import static kosmo.orange.wtf.otp.GoogleOTP.checkCode;
import static kosmo.orange.wtf.otp.GoogleOTP.generate;

@Controller
public class AdminEnterController {

    // ************************************
    //  로그인 / 로그아웃 / 회원가입 등
    //  계정 접속 관련 컨트롤러
    // ************************************

    @Autowired
    AdminServiceImpl adminService;

    @Autowired
    AdminMailService adminMailService;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    HttpSession session;

    /****************************
     * start.jsp > layout/adminBasic.jsp
     * page test controller
     *
     * jsp / css 적용 테스트 용도
     */
    @GetMapping("/adminTest")
    public String adminTest() {
        return "adminViews/layout/adminBasic";

    } // end of adminTest



    /***************************
     * 메인에서 관리자 페이지 접속
     * start.jsp >
     * > 세션에 로그인 기록이 있는 경우 : adminLogin.jsp
     * or > 없는 경우 : adminLoginConfirm.jsp
     */
    @GetMapping("/adminLogin")
    public String adminLogin(Model model , HttpServletRequest request) {
        System.out.println("AdminEnterController.adminLogin : " + model);

        String email1 =  "buiop11";
       // String email1 = request.getParameter("email");

        // OTP TEST
        HashMap<String, String> map = generate(email1, "naver.com");
        String otpkey = map.get("encodedKey");
        String url = map.get("url");
        System.out.println("Generated Key : " + otpkey);
        System.out.println("QR CODE : " + url);

        //생성된 OTP 패스워드 인증 부분
//        Scanner scan = new Scanner(System.in);
//        System.out.print("Input OTP Code : ");
//        boolean check = checkCode(scan.next(), otpkey);
//        System.out.println(check);

        // 모델로 보냅니당
        model.addAttribute("otpkey",otpkey);
        model.addAttribute("url",url);


        // 근데 로그인이 되어 있으면 잠금화면



        // 안되어있으면 로그인 화면
//        int aa = 3;
//        model.addAttribute("aaa", aa);

        String page = "adminLogin";

        return "adminViews/" + page;

    } // end of adminLogin


    /********************
     * 회원가입 페이지로 이동
     * adminLogin.jsp > adminJoin.jsp
     */
    @GetMapping("/moveToSignUp")
    public String moveToSignUp() {
        System.out.println("AdminEnterController.moveToSignUp");

        return "adminViews/adminJoin";

    } // end of moveToSignUp


    /************************
     * 회원가입 (DB에 넣기)
     * adminJoin.jsp > DB > adminJoinConfirm.jsp (DB input> success : adminHome.jsp / fail : adminJoin.jsp)
     */
    @PostMapping("/createAccount")
    public String createAccount(AdminVO adminVO, Model model) {
        System.out.println("AdminEnterController.createAccount : " + adminVO);

        int account = 0;
        account = adminService.createAccount(adminVO);

        model.addAttribute("result", account);

        return "adminViews/adminJoinConfirm";

    } // end of createAccount


    /********************
     * 중복확인
     * adminJoin.jsp > ajax > adminJoin.jsp
     */
    @PostMapping("/idCheck")
    @ResponseBody // ajax
    public String idCheck(@RequestParam("email") String email) {
        System.out.println("AdminEnterController.idCheck :" + email);

        int result = adminService.idCheck(email);
        System.out.println("result : " + result);

        String str = "";
        if(result != 0){
            str = "duplicate";
        }
        else{
            str = "ok";
        }

        return str;

    }  // end of idCheck


    /*********************
     * id / name 확인 (비번찾기)
     * adminForgotPw.jsp > ajax > adminForgotPw.jsp
     * >> 쌤과 얘기하다보니 AJAX를 탈 이유가 없음
     */
//    @PostMapping("pwCheck")
//    @ResponseBody // ajax
//    public String pwCheck(@RequestParam("mgr_id") String id, @RequestParam("mgr_name") String name) {
//        System.out.println("AdminEnterController.pwCheck");
//
//        int result = adminService.pwCheck(id, name);
//        System.out.println("result = " + result);
//
//        String str = "";
//        if(result == 1){
//            str = "ok";
//        }
//        else {
//            str = "id / name 다시 확인";
//        }
//
//        return str;
//
//    } // end of pwCheck


    /**************
     * 로그인
     * adminLogin.jsp > adminOtpInput.jsp
     */
    @PostMapping("/login")
    public String login(@RequestParam("mgr_id") String id, @RequestParam("mgr_pass") String pass, Model model) {
        System.out.println("AdminEnterController.login - " + "id : " + id + "/ pass : " + pass);

        AdminVO tempVO = adminService.login(id, pass);
        System.out.println("AdminEnterController.login - tempVO : " + tempVO);

        boolean flag = passwordEncoder.matches(pass, tempVO.getMgr_pass());

        String page = "";
        String alert = "";

        if(tempVO != null){
            if(flag){
                session.setAttribute("name", tempVO.getMgr_name());
                session.setAttribute("id", tempVO.getMgr_id());

                System.out.println(session.getAttribute("name"));

                model.addAttribute("inputId", id);
                model.addAttribute("getId", session.getAttribute("id"));
                model.addAttribute("getName", session.getAttribute("name"));

                // otp
                String email = (String) session.getAttribute("id");
                System.out.println("email = " + email);

                String[] result = email.split("@");
                System.out.println("result = " + result);

                String userName = result[0];
                String hostName = result[1];
                System.out.println("userName = " + userName + " // hostName = " + hostName);

                // OTP TEST
                HashMap<String, String> map = generate(userName, hostName);

                // 키 값
                String otpKey = map.get("encodedKey");
                System.out.println("otpKey = " + otpKey);

                // 키 값의 QR 코드
                String qrCode = map.get("url");
                System.out.println("qrCode = " + qrCode);

                model.addAttribute("otpKey", otpKey);
                model.addAttribute("qrCode", qrCode);


                page = "adminOtpInput";
            }
            else{
                alert = "비번이 틀린듯";
                model.addAttribute("alert", alert);
                page = "adminLogin";
            }
        }
        else {
            alert = "id가 없나봄";
            model.addAttribute("alert", alert);
            page = "adminLogin";
        }

        System.out.println("AdminEnterController.login - flag : " + flag);
        System.out.println("AdminEnterController.login - page : " + page);
        System.out.println("AdminEnterController.login - session = " + session);

        return "adminViews/" + page;

    } // end of login


    /*******************
     * 키 값 DB 저장
     * adminOtpInput.jsp > ajax > adminOtpInput.jsp
     */
    @PostMapping("/otpSaveDB")
    @ResponseBody
    public int otpSaveDB(@RequestParam Map<String, Object> map){
        System.out.println("AdminEnterController.otpSaveDB");
        System.out.println("map = " + map);

        String id = (String) map.get("id");
        String key = (String) map.get("key");

        AdminVO adminVO = new AdminVO();

        adminVO.setMgr_id(id);
        adminVO.setMgr_key(key);

        int result = adminService.otpSaveDB(adminVO);

        return result;

    } // end of otpSaveDB


    /******************
     * otp 입력
     * adminOtpInput.jsp > adminIndex.jsp
     */
    @PostMapping("/adminHome")
    public String otpCheck(@RequestParam("inputOtp") String inputOtp, Model model) {
        System.out.println("AdminEnterController.otpCheck");

        // DB에 저장되어 있는 레알 otp 를 가져오자
        String id = (String) session.getAttribute("id");
        System.out.println("id = " + id);
        String realOtp = adminService.otpCheck(id);
        System.out.println("inputOtp = " + inputOtp);
        System.out.println("realOtp = " + realOtp);

        boolean flag = checkCode(inputOtp, realOtp);
        System.out.println("flag = " + flag);

        String page = "";
        String alert = "";

        if(flag) {

            // 대시보드 상단 내용
            int userCount = adminService.totalUserCount();
            int storeCount = adminService.totalStoreCount();
            int reviewCount = adminService.totalReviewCount();
            System.out.println("userCount = " + userCount);
            System.out.println("storeCount = " + storeCount);
            System.out.println("reviewCount = " + reviewCount);

            model.addAttribute("user", userCount);
            model.addAttribute("store", storeCount);
            model.addAttribute("review", reviewCount);

            page = "adminIndex";

        }
        else {
            alert = "otp 다시 보셈";
            model.addAttribute("alert", alert);
            page = "adminOtpInput";
        }



        return "adminViews/" + page;


    }


    /****************
     * 비번찾기
     * adminLogin.jsp > adminForgotPw.jsp
     */
    @GetMapping("/findPw")
    public String findPw() {
        System.out.println("AdminEnterController.findPw");

        return "adminViews/adminForgotPw";

    } // end of findPw


    /*******************
     * 비번초기화
     * (얘는 AdminMailService.java 연결)
     * adminForgotPw.jsp > DB -->
     * success > adminLogin.jsp
     * fail > adminForgotPw.jsp
     *
     * checkAccount > DB의 id(email)와 name 확인
     * updatePw > DB의 id와 name이 확인되면 새로 생성된 임시 pw(uuid)로 DB에 업뎃
     */
    @GetMapping("resetPw")
    public String resetPw(@RequestParam("mgr_id") String id, @RequestParam("mgr_name") String name) {
        System.out.println("AdminEnterController.resetPw 224line : " +  name);
        System.out.println("id = [" + id + "], name = [" + name + "]");

        int result = adminMailService.checkAccount(id, name);
        String page = "";

        // 만약 결과가 있으면(id / name 이 맞으면)
        if(result == 1){

            // 비번을 생성해서
            String uuid = adminMailService.pwMake();
            System.out.println("uuid = " + uuid);

            // 메일 세팅
            AdminMailVO mailVO = adminMailService.mailSetting(id, name, uuid);
            System.out.println("mailVO = " + mailVO);

            // 임시 비번 DB에 업뎃
            int updateResult = adminMailService.updatePw(uuid, id);
            System.out.println("updateResult = " + updateResult);

            // 멜발
            adminMailService.mailSend(mailVO);

            page = "adminLogin";

        }
        else {
            page = "adminForgotPw";

        }

        return "adminViews/" + page;

    } // end of resetPw


    /********************
     * Google OTP 로그인
     */
    @RequestMapping("/otpProcess")
    @ResponseBody
    public String otpProcess(@RequestParam Map<String, Object> param) {

        String result="";

        String inputOtp = (String) param.get("otp");                 // 입력값
        String realOtp = (String) param.get("otpKey");  // 원래 otp값
        //String otp2 = request.getParameter("ddd");
        System.out.println("받아와지나 확인 " + inputOtp);
        System.out.println("받아와지나 확인 " + realOtp);


         boolean check = checkCode(inputOtp, realOtp);
         System.out.println(check);

        if(check){
             result="값이 맞아여!!";
        }else{
            result="값이 틀렸어!!!!!";
        }


        return result;
    }



}
