package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StartController {

    @Autowired
    HttpSession httpSession;

    @Autowired
    MainServiceImpl mainService;

    @GetMapping("/")
    public String start(){
        System.out.println("start");
        return "Start";
    }

    @GetMapping("/main")
    public String main(String kind, Model model){
        System.out.println("시작에서 받아온 종류 : " + kind);
        List<RestaurantVO> restaurantList = mainService.checkRestaurant(kind);
//        for(RestaurantVO restaurantVO : restaurantList){
//            System.out.println(restaurantVO.getResName());
//        }
//        model.addAttribute("restaurantList", restaurantList);

        return "recommend/Main";
    }

    @PostMapping("/getRestaurant")
    @ResponseBody
    public List<RestaurantVO> getRestaurant(String kind){
        List<RestaurantVO> restaurantList = mainService.checkRestaurant(kind);
        for(RestaurantVO restaurantVO : restaurantList){
            System.out.println(restaurantVO.getResName());
        }
        return restaurantList;
    }
}
