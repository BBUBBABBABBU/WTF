package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("restaurantMapper")
@Mapper
public interface RestaurantMapper {
    RestaurantVO restaurantInfo(int resId) throws Exception;
    List<MenuVO> restaurantMenu(int resId) throws Exception;
    List<RestaurantVO> searchRestaurant(String resKeyword) throws  Exception;
}
