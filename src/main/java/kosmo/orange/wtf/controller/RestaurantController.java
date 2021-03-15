package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
import kosmo.orange.wtf.service.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

    @Autowired
    RestaurantServiceImpl restaurantService;
    @Autowired
    MainServiceImpl mainService;

    @Autowired
    HttpSession httpSession;

    @GetMapping("/restaurantInfo")
    public String restaurantInfo(RestaurantVO restaurantVO, Model model, String origin){
        System.out.println("RestaurantController 35line : " + restaurantVO.getResId());

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        System.out.println("RestaurantController restaurantInfo() 38line 이름 : " + restaurantInfo.getResName() + "주소 : "+ restaurantInfo.getResAddr());
        List<MenuVO> restaurantMenu = restaurantService.restaurantMenu(restaurantVO.getResId());
        List<PhotoVO> photoList = mainService.res_photo(restaurantInfo);
        String resstaurantPhoto = photoList.get(0).getRtr_pic_loc();
//        List<PhotoVO> photoList= mainService.res_photo(restaurantInfo);
//        for(PhotoVO photoVO : photoList){
//            System.out.println("사진 주소 확인 : " + photoVO.getRtr_pic_loc());
//        }
        System.out.println("식당정보 상세"+origin);
        model.addAttribute("origin", origin);
        model.addAttribute("restaurantInfo",restaurantInfo);
        model.addAttribute("restaurantMenu", restaurantMenu);
        model.addAttribute("resstaurantPhoto", resstaurantPhoto);
        return "restaurant/restaurantInfo";
    }

    @PostMapping("/restaurantLocation")
    @ResponseBody
    public List<String> restaurantLocation(RestaurantVO restaurantVO){
        System.out.println("RestaurantController 55line : " + restaurantVO.getResId());
        List<String> locationList = new ArrayList<>();

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        locationList.add(restaurantInfo.getResLatitude());
        locationList.add(restaurantInfo.getResLongitude());

        for(String loc : locationList){
            System.out.println("위치들 확인만 : " + loc);
        }

        return locationList;
    }
}
