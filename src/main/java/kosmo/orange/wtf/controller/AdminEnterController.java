package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.AdminMailVO;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.service.impl.AdminMailService;
import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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
    @GetMapping("/adminHome")
    public String adminHome(Model model) {
        System.out.println("AdminEnterController.adminHome : " + model);

        // 근데 로그인이 되어 있으면 잠금화면



        // 안되어있으면 로그인 화면
//        int aa = 3;
//        model.addAttribute("aaa", aa);

        String page = "adminLogin";

        return "adminViews/" + page;

    } // end of adminHome


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
     * adminLogin.jsp > adminIndex.jsp
     */
    @PostMapping("/login")
    public String adminLogin(@RequestParam("mgr_id") String id, @RequestParam("mgr_pass") String pass, Model model) {
        System.out.println("AdminEnterController.adminLogin - " + "id : " + id + "/ pass : " + pass);

        AdminVO tempVO = adminService.adminLogin(id, pass);
        System.out.println("AdminEnterController.adminLogin - tempVO : " + tempVO);

        String page = "";
        boolean flag = passwordEncoder.matches(pass, tempVO.getMgr_pass());

        if(tempVO != null){
            if(flag){
                session.setAttribute("name", tempVO.getMgr_name());
                session.setAttribute("id", tempVO.getMgr_id());

                System.out.println(session.getAttribute("name"));

                page = "adminIndex";
            }
            else{
                page = "adminLogin";
            }
        }
        else {
            page = "adminLogin";
        }

        System.out.println("AdminEnterController.adminLogin - flag : " + flag);
        System.out.println("AdminEnterController.adminLogin - page : " + page);
        System.out.println("AdminEnterController.adminLogin - session = " + session);

        return "adminViews/" + page;

    } // end of adminLogin


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


}
