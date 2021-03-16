package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("mainMapper")
@Mapper
public interface MainMapper {
//    List<RestaurantVO> checkRestaurant(String kind) throws Exception;
    List<RestaurantVO> checkRestaurant(String foodKind) throws Exception;
    //식당 사진
    List<PhotoVO> res_photo(RestaurantVO vo) throws Exception;

    List<RestaurantVO> mainRecommend(RestaurantVO restaurantVO) throws Exception;
}
