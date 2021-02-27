package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.mapper.AdminMapper;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminEnterController {

    // ************************************
    //  로그인 / 로그아웃 / 회원가입 등
    //  계정 접속 관련 컨트롤러
    // ************************************


    @Autowired
    AdminServiceImpl adminService;


    /********************
        메인(start.jsp) > adminLogin.jsp or adminLoginConfirm.jsp
     */
    @GetMapping("/adminHome")
    public String adminHome() {

        // 근데 로그인이 되어 있으면 잠금화면

        // 안되어있으면 로그인 화면

        return "adminViews/adminLogin";
    }


    /********************
        회원가입
        adminLogin.jsp > adminJoin.jsp
    */
    @GetMapping("/signUp")
    public String adminJoin(AdminVO adminVO) {
        System.out.println("AdminEnterController.adminJoin: " + adminVO.getMgr_id());

        adminService.signUp(adminVO);

        return "adminViews/adminJoin";
    }


    /********************
        중복확인
        adminJoin.jsp > ajax
     */
    @PostMapping("/idCheck")
    public String idCheck(@RequestParam("email") String email) {
        System.out.println("AdminEnterController.idCheck :" + email);

        int result = adminService.idCheck(email);
        System.out.println("result : " + result);

        String str = "";
        if(result != 0){
            str = "dulpicate";
        }
        else{
            str = "ok";
        }

        return str;

    }


    /**************
        로그인
        adminLogin.jsp > adminIndex.jsp
     */
    @PostMapping("/login")
    public String adminLogin() {

        return "adminViews/adminIndex";
    }


}
