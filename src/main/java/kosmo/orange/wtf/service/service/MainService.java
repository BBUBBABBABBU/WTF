package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface MainService {
//    List<RestaurantVO> checkRestaurant(String kind);
    List<RestaurantVO> checkRestaurant(String foodKind);
    List<PhotoVO> res_photo(RestaurantVO vo);
    List<RestaurantVO> mainRecommend(RestaurantVO restaurantVO);

    List<RestaurantVO> restaurantSort(String choiceCategory);
}
