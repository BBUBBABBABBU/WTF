package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
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
    HttpSession httpSession;

    @GetMapping("/restaurantInfo")
    public String restaurantInfo(RestaurantVO restaurantVO, Model model){
        System.out.println("RestaurantController 15line : " + restaurantVO.getResId());

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        System.out.println("RestaurantController restaurantInfo() 25line 이름 : " + restaurantInfo.getResName() + "주소 : "+ restaurantInfo.getResAddr());
        List<MenuVO> restaurantMenu = restaurantService.restaurantMenu(restaurantVO.getResId());

        model.addAttribute("restaurantInfo",restaurantInfo);
        model.addAttribute("restaurantMenu", restaurantMenu);

        return "restaurant/restaurantInfo";
    }

    @PostMapping("/restaurantLocation")
    @ResponseBody
    public List<String> restaurantLocation(RestaurantVO restaurantVO){
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
