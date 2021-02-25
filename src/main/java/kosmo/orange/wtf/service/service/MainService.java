package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.RestaurantVO;

import java.util.List;

public interface MainService {
    List<RestaurantVO> checkRestaurant(String kind);
}
