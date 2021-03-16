package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.MainMapper;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("mainService")
public class MainServiceImpl implements MainService {

    @Autowired
    MainMapper mainMapper;

//    @Override
//    public List<RestaurantVO> checkRestaurant(String kind) {
//        System.out.println("MainServiceImpl 19line : " + kind);
//        try{
//            return mainMapper.checkRestaurant(kind);
//        }catch (Exception e){
//            System.out.println("checkRestaurant error : " + e.toString());
//            return null;
//        }
//    }

    @Override
    public List<RestaurantVO> checkRestaurant(String foodKind) {
        try{
            return mainMapper.checkRestaurant(foodKind);
        }catch (Exception e){
            System.out.println("checkRestaurant error : " + e.toString());
            return null;
        }
    }

    //식당 id 로 이미지 가져오기
    @Override
    public List<PhotoVO> res_photo(RestaurantVO vo) {
        try{
            return mainMapper.res_photo(vo);

        }catch (Exception e){

            System.out.println("res_photo 에러 :"+e.toString());
            return null;
        }
    }

    @Override
    public List<RestaurantVO> mainRecommend(RestaurantVO restaurantVO) {
        try{
            return mainMapper.mainRecommend(restaurantVO);
        }catch (Exception e){
            System.out.println("MainServiceImpl mainRecommend error : " + e.toString());
            return null;
        }
    }
}
