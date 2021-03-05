package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.AdminVO;
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
    PasswordEncoder passwordEncoder;

    @Autowired
    HttpSession session;


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
    @GetMapping("/signUp")
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


}
