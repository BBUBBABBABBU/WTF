package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.MainMapper;
import kosmo.orange.wtf.model.mapper.RestaurantMapper;
import kosmo.orange.wtf.model.vo.MenuVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
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
    @Autowired
    MainMapper mainMapper;

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

    @Override
    public List<RestaurantVO> searchRestaurant(String resKeyword) {
        try{
            List<RestaurantVO> restaurantList = restaurantMapper.searchRestaurant(resKeyword);

            for(int i = 0; i<restaurantList.size(); i++) {
                // mapper로부터 반환받은 식당명 처리
                if (restaurantList.get(i).getResName().length() > 8) {
                    String resName = restaurantList.get(i).getResName().substring(0, 8) + "...";
                    restaurantList.get(i).setResName(resName);
                }
                restaurantList.get(i).setResAddr(restaurantList.get(i).getResAddr().split(" ")[1]);

                // 식당 각각의 식당 사진을 리스트에 추가
                List<PhotoVO> photoList = mainMapper.res_photo(restaurantList.get(i));
                restaurantList.get(i).setRtr_pic_loc(photoList.get(0).getRtr_pic_loc());
            }
            return restaurantList;
        }catch (Exception e){
            System.out.println("RestaurantServiceImpl searchRestaurant 45line error : " +  e.toString());
            return null;
        }
    }
}
