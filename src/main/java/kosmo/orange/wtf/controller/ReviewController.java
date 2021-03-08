package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.mapper.RestaurantMapper;
import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    RestaurantServiceImpl restaurantService;

    @Autowired
    HttpSession httpSession;

    @RequestMapping("/review")
    public String Review(){return "review/feed";}

    @GetMapping("/reviewinsert")
    public String Reviewinsert(RestaurantVO restaurantVO, Model model){
        System.out.println("ReviewtController 26line : " + restaurantVO.getResId());

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());

        model.addAttribute("restaurantInfo",restaurantInfo);


        return "review/Reviewinsert";
    }


}
