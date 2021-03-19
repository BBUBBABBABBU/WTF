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

    int temp=0;


    @GetMapping("/")
    public String start() {
        //로그인 실패시에만 실패 알림 창 뜨게 설정 한부분====================
        if (httpSession.getAttribute("status")=="fail" & temp==0){
            temp += 1;
        }else{
            httpSession.setAttribute("status","nothing");
            temp=0;
        }

        //====================================================================

        System.out.println("start");
        return "Start";
    }

    /**
     * 시작페이지에서 메인페이지 호출
     */
    //TODO 음식종류 처리할것)
    @GetMapping("/main")
    public String main(Model model, String foodKind) {
        List<RestaurantVO> restaurantList = mainService.checkRestaurant(foodKind);
        List<String> photoList = new ArrayList<>();

        System.out.println("main 41line :" + foodKind);

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
        model.addAttribute("foodKind", foodKind);
        httpSession.setAttribute("foodKind",foodKind);

        return "recommend/Main";
    }

    /**
     * 위치 기반 식당 목록
     * @param restaurantVO
     * @return
     */
    //TODO 시작페이지에서 음식 종류 받아서 처리
    @PostMapping("/mainRecommend")
    @ResponseBody
    public List<RestaurantVO> mainRecommend(RestaurantVO restaurantVO, String foodKind, Model model) {
        List<RestaurantVO> restaurantList;

        // foodKind의 값이 null인경우
        // 주소와 키워드를 가지고 해당하는 식당리스트 가져옴
        if (foodKind == null) {
            restaurantList = mainService.mainRecommend(restaurantVO);

            // 식당이 12개이상인 경우 12개만 리스트에 저장
            if (restaurantList.size() > 12) {
                restaurantList = restaurantList.subList(0, 12);
            }
        }else{ //키워드만 가지고 지도에 띄울 식당 가져오기
            System.out.println("mainRecommend 89line : " + foodKind);
            restaurantList = mainService.checkRestaurant(foodKind);
        }

        List<PhotoVO> photoList;

        for (int i = 0; i < restaurantList.size(); i++) {
            photoList = mainService.res_photo(restaurantList.get(i));
            for (PhotoVO photo : photoList) {
                restaurantList.get(i).setRtr_pic_loc(photo.getRtr_pic_loc());
            }
        }

        httpSession.setAttribute("userAddress",restaurantVO.getResAddr());

        return restaurantList;
    }
}
