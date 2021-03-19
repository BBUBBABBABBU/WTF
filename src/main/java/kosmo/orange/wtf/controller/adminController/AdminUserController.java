package kosmo.orange.wtf.controller.adminController;

import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AdminUserController {

    @Autowired
    AdminServiceImpl adminService;

    // ************************************
    //  USER 관련 컨트롤러
    // ************************************


//    @GetMapping("memberDetail")
//    public String memberDetail() {
//        System.out.println("AdminUserController.memberDetail");
//
//        return "adminViews/adminMemberDetail";
//
//    } // end of memberDetail


}
