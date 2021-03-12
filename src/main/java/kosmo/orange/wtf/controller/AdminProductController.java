package kosmo.orange.wtf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminProductController {

    // ************************************
    //  index page 에서 PRODUCT 그룹 페이지들의
    //  내부동작? 에 관여하는 컨트롤러
    //  - Store List
    //  - Review List
    //  - Chart
    // ************************************

    @GetMapping("storeDetail")
    public String storeDetail() {
        System.out.println("AdminProductController.storeDetail");

        return "adminViews/adminStoreDetail";

    } // end of storeDetail





}
