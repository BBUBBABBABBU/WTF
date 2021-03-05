package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.RestaurantMapper;
import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("restaurantService")
public class RestaurantServiceImpl implements RestaurantService {

    @Autowired
    RestaurantMapper restaurantMapper;

    @Override
    public RestaurantVO restaurantInfo(int resId) {
        try{
            return restaurantMapper.restaurantInfo(resId);
        }catch (Exception e){
            System.out.println("RestaurantImpl restaurantInfo() 20line 실패: " + e.toString());
            return null;
        }
    }

    @Override
    public List<MenuVO> restaurantMenu(int resId) {
        try{
            List<MenuVO> list =restaurantMapper.restaurantMenu(resId);
            return list;
        }catch (Exception e){
            System.out.println("RestaurantImpl restaurantMenu() 33line 실패 : " + e.toString());
            return null;
        }
    }

}
