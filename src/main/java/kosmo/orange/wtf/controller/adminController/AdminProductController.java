package kosmo.orange.wtf.controller.adminController;

import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AdminProductController {

    // ************************************
    //  index page 에서 PRODUCT 그룹 페이지들의
    //  내부동작? 에 관여하는 컨트롤러
    //  - Store List
    //  - Review List
    //  - Chart
    // ************************************
    @Autowired
    RestaurantServiceImpl restaurantService;
    @Autowired
    MainServiceImpl mainService;

    @GetMapping("storeDetail")
    public String storeDetail(RestaurantVO restaurantVO, Model model) {
        System.out.println("AdminProductController.storeDetail");
        System.out.println("RestaurantController 35line : " + restaurantVO.getResId());

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        System.out.println("RestaurantController restaurantInfo() 38line 이름 : " + restaurantInfo.getResName() + "주소 : "+ restaurantInfo.getResAddr());
        List<MenuVO> restaurantMenu = restaurantService.restaurantMenu(restaurantVO.getResId());
        List<PhotoVO> photoList = mainService.res_photo(restaurantInfo);
        String restaurantPhoto = photoList.get(0).getRtr_pic_loc();
//        List<PhotoVO> photoList= mainService.res_photo(restaurantInfo);
//        for(PhotoVO photoVO : photoList){
//            System.out.println("사진 주소 확인 : " + photoVO.getRtr_pic_loc());
//        }
        model.addAttribute("restaurantInfo",restaurantInfo);
        model.addAttribute("restaurantMenu", restaurantMenu);
        model.addAttribute("restaurantPhoto", restaurantPhoto);
        return "adminViews/adminStoreDetail";

    } // end of storeDetail





}
