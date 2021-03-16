package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;

import java.util.List;

public interface RestaurantService {

    RestaurantVO restaurantInfo(int resId);
    List<MenuVO> restaurantMenu(int resId);
    List<RestaurantVO> searchRestaurant(String resKeyword);
}
