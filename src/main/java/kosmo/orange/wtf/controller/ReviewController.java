package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.model.vo.ReviewVO;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    HttpSession httpSession;
    @Autowired
    RestaurantServiceImpl restaurantService;

    @GetMapping("/reviewinsert")
    public String Reviewinsert(RestaurantVO restaurantVO, Model model){
        System.out.println("ReviewtController 26line 수정: " + restaurantVO.getResId());

        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());

        model.addAttribute("restaurantInfo",restaurantInfo);


     return "review/ReviewInsert";
    }
//
//    @GetMapping("/review/reviewselect")
//    public String ReviewSel(ReviewVO vo, Model model){
//        System.out.println("ReviewController 39line : " );
//        ReviewVO reviewInfo = reviewService.reviewInfo(ReviewV.getreview_id())
//        model.addAttribute()
//        return "review/feed";
//    }


}
