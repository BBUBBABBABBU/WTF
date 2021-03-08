package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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
//        System.out.println("시작에서 받아온 종류 : " + kind);
        List<RestaurantVO> restaurantList = mainService.checkRestaurant();
        List<String> photoList = new ArrayList<>();

        for(int i=0; i< restaurantList.size(); i++){
            List<PhotoVO> temp = mainService.res_photo(restaurantList.get(i));

            try {
                photoList.add((String) temp.get(0).getRtr_pic_loc());
//                System.out.println((String) temp.get(0).getRtr_pic_loc());

            }catch (Exception e){
//                System.out.println("사진 없음");
                photoList.add("/res/img/ing.jpg");

            }

        }

        model.addAttribute("restaurantList",restaurantList);
        model.addAttribute("photoList", photoList);

        return "recommend/Main";
    }

    //TODO 나중에 선택한 식단으로 골라서 보여줄것
    @PostMapping("/restaurantInfo")
    @ResponseBody
    public List<RestaurantVO> restaurantInfo(String kind,Model model){
//        List<RestaurantVO> restaurantList = mainService.checkRestaurant(kind);
        List<RestaurantVO> restaurantList = mainService.checkRestaurant();
        System.out.println("ajax 불림" + restaurantList.size());
//        for(RestaurantVO restaurantVO : restaurantList){
//            System.out.println(restaurantVO.getResName() + ", " + restaurantVO.getResRating());
//            System.out.println(restaurantVO.getResLatitude()+ ", " + restaurantVO.getResLongitude());
//        }

        return restaurantList;
    }
}
