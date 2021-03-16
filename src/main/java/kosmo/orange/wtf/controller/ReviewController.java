package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.*;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
import kosmo.orange.wtf.service.impl.ReviewServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/review")
public class ReviewController{

    @Autowired
    HttpSession httpSession;
    @Autowired
    RestaurantServiceImpl restaurantService;
    @Autowired
    ReviewServiceImpl reviewService;


    @GetMapping("/reviewinsert")
    public String Reviewinsert(RestaurantVO restaurantVO, Model model,String origin){
        System.out.println("ReviewtController ReviewInsert: " + restaurantVO.getResId());
        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        PhotoVO Photo = reviewService.Photo(restaurantVO.getResId());

        model.addAttribute("photo",Photo);
        model.addAttribute("restaurantInfo",restaurantInfo);
        System.out.println("ReviewtController 26line 사진불러오기" );
        System.out.println(origin);
        return "review/ReviewInsert";
    }

    @GetMapping("/feed")
    public String feedReview(MemberVO memberVO, Model model){
        System.out.println("ReviewtController feedReview:"  + memberVO.getMemberId());
        List<ReviewVO> reviewFeed = reviewService.ReviewList(memberVO.getMemberId());
        String nickname = reviewService.memNickname(memberVO.getNickname());
        model.addAttribute("reviewList", reviewFeed);
        model.addAttribute("nickname", nickname);
        System.out.println("ReviewController 리뷰 리스트 jsp 보내기");
    return "review/feed";
    }

    @RequestMapping("/reviewSave")
    public String reviewSave(ReviewVO reviewVO){
        System.out.println("ReviewController reviewDB"+ reviewVO.getReview_id());
        reviewVO.setAvg((float)(reviewVO.getTaste()+reviewVO.getClean()+reviewVO.getLocation()+reviewVO.getService())/8);
        reviewService.ReviewSave(reviewVO);

        return "recommend/restaurantInfo?resId="+reviewVO.getRes_id();
    }


    @RequestMapping("/reviewUpdate")
    public String reviewUpdate(ReviewVO reviewVO){
        System.out.println("ReviewController reviewUpdate" + reviewVO.getReview_id());
        reviewVO.setAvg((reviewVO.getTaste()+reviewVO.getClean()+reviewVO.getLocation()+reviewVO.getService())/8);
        reviewService.ReviewUpdate(reviewVO);

        return "recommend/Main";
    }
//
//    @GetMapping("/review/reviewselect")
//    public String ReviewSel(ReviewVO vo, Model model){
//        System.out.println("ReviewController 39line : " );
//        ReviewVO reviewInfo = reviewService.reviewInfo(ReviewV.getreview_id())
//        model.addAttribute()
//        return "review/feed";
//    }

   //메세지를 위한 칸트롤러



}
