package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;

import java.util.List;

public interface MainService {
//    List<RestaurantVO> checkRestaurant(String kind);
    List<RestaurantVO> checkRestaurant();
    public List<PhotoVO> res_photo(RestaurantVO vo);
}
