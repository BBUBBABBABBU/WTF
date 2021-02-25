package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.RestaurantVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("mainMapper")
@Mapper
public interface MainMapper {
    List<RestaurantVO> checkRestaurant(String kind) throws Exception;
}
