package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.MainMapper;
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
    public List<RestaurantVO> checkRestaurant() {
        System.out.println("MainServiceImpl 19line : ");
        try{
            return mainMapper.checkRestaurant();
        }catch (Exception e){
            System.out.println("checkRestaurant error : " + e.toString());
            return null;
        }
    }

}
