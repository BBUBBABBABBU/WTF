package kosmo.orange.wtf.controller.main;

import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
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
    MainServiceImpl mainService;

    @Autowired
    HttpSession httpSession;

    /**
     * 검색기능
     * @return
     */
    @GetMapping("/searchRestaurant")
    public String searchRestaurant(String resKeyword,Model model){
        List<RestaurantVO> restaurantList = restaurantService.searchRestaurant(resKeyword);

        model.addAttribute("restaurantList", restaurantList);
        httpSession.setAttribute("resKeyword", resKeyword);

        return "restaurant/searchRestaurant";
    }

    /**
     * 식당 상세정보
     */
    @GetMapping("/restaurantInfo")
    public String restaurantInfo(RestaurantVO restaurantVO, Model model, String origin){

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        List<MenuVO> restaurantMenu = restaurantService.restaurantMenu(restaurantVO.getResId());
        List<PhotoVO> photoList = mainService.res_photo(restaurantInfo);
        String restaurantPhoto = photoList.get(0).getRtr_pic_loc();

        model.addAttribute("origin", origin);
        model.addAttribute("restaurantInfo",restaurantInfo);
        model.addAttribute("restaurantMenu", restaurantMenu);
        model.addAttribute("restaurantPhoto", restaurantPhoto);
        return "restaurant/restaurantInfo";
    }

    /**
     * 해당 식당의 좌표값을 얻어옴
     */
    @PostMapping("/restaurantLocation")
    @ResponseBody
    public List<String> restaurantLocation(RestaurantVO restaurantVO){
        System.out.println("RestaurantController 55line : " + restaurantVO.getResId());
        List<String> locationList = new ArrayList<>();

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        locationList.add(restaurantInfo.getResLatitude());
        locationList.add(restaurantInfo.getResLongitude());

        return locationList;
    }
}
