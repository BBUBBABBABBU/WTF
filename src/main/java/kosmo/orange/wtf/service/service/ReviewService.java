package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.model.vo.ReviewVO;

import java.util.List;

public interface ReviewService {


    List<ReviewVO> ReviewList(String rev_id);
    PhotoVO Photo(int res_id);
    int ReviewSave(ReviewVO vo);
    int ReviewUpdate(ReviewVO vo);
    String memNickname(String mem_id);
    ReviewVO ReviewSel(int rev_id);
    ReviewVO ReviewInfo(int rev_id);
    ReviewVO ReviewInsert(int rev_id);

}
