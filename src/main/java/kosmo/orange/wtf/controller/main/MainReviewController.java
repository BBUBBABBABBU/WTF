package kosmo.orange.wtf.controller.main;

import kosmo.orange.wtf.model.vo.ReviewVO;
import kosmo.orange.wtf.service.impl.ReviewServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 메인 페이지 및 식당상세페이지에서 리뷰 호출
 */
@Controller
public class MainReviewController {

    @Autowired
    ReviewServiceImpl reviewService;

    @PostMapping("/mainReview")
    @ResponseBody
    public List<ReviewVO> mainReview(String foodKind){
        System.out.println("mainReview() 16line" + foodKind);
        List<ReviewVO> reviewList = reviewService.mainReview(foodKind);
        for (ReviewVO review : reviewList){
            System.out.println("mainReview 27line : " + review.getRestaurantVO().getResName());
        }
        return reviewList;
    }
}
