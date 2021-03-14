package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
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
public class StartController {

    @Autowired
    HttpSession httpSession;

    @Autowired
    MainServiceImpl mainService;

    @GetMapping("/")
    public String start() {
        System.out.println("start");
        return "Start";
    }

    /**
     * 시작페이지에서 메인페이지 호출
     */
    //TODO 음식종류 처리할것)
    @GetMapping("/main")
    public String main(Model model) {
        List<RestaurantVO> restaurantList = mainService.checkRestaurant();
        List<String> photoList = new ArrayList<>();

        for (int i = 0; i < restaurantList.size(); i++) {
            List<PhotoVO> temp = mainService.res_photo(restaurantList.get(i));

            try {
                photoList.add(temp.get(0).getRtr_pic_loc());

            } catch (Exception e) {
                photoList.add("/res/img/ing.jpg");
            }
        }

        model.addAttribute("restaurantList", restaurantList);
        model.addAttribute("photoList", photoList);

        return "recommend/Main";
    }

    /**
     * 메인페이지 지도에 필요한 정보를 리턴
     * @return
     */
    //TODO 나중에 선택한 식단으로 골라서 보여줄것
    @PostMapping("/restaurantMap")
    @ResponseBody
    public List<RestaurantVO> restaurantMap(String kind, Model model) {
//        List<RestaurantVO> restaurantList = mainService.checkRestaurant(kind);
        List<RestaurantVO> restaurantList = mainService.checkRestaurant();
        System.out.println("ajax 불림" + restaurantList.size());
//        for(RestaurantVO restaurantVO : restaurantList){
//            System.out.println(restaurantVO.getResName() + ", " + restaurantVO.getResRating());
//            System.out.println(restaurantVO.getResLatitude()+ ", " + restaurantVO.getResLongitude());
//        }

        return restaurantList;
    }

    /**
     * 위치 기반 식당 목록
     * @param restaurantVO
     * @return
     */
    //TODO 시작페이지에서 음식 종류 받아서 처리
    @PostMapping("/mainRecommend")
    @ResponseBody
    public List<RestaurantVO> mainRecommend(RestaurantVO restaurantVO, String kind, Model model) {
        List<RestaurantVO> restaurantList = mainService.mainRecommend(restaurantVO);
        List<PhotoVO> photoList;

        for(int i = 0; i<restaurantList.size(); i++){
            photoList = mainService.res_photo(restaurantList.get(i));
            for(PhotoVO photo : photoList){
                restaurantList.get(i).setRtr_pic_loc(photo.getRtr_pic_loc());
            }
        }

        return restaurantList;
    }
}
