package kosmo.orange.wtf.controller.main;

import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.MainServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 메인페이지의 정렬 컨트롤러
 */
@Controller
public class SortController {

    @Autowired
    MainServiceImpl mainService;
    @Autowired
    HttpSession httpSession;

    /**
     * 메인페이지 및 검색화면 정렬
     *
     */
    @PostMapping("/restaurantSort")
    @ResponseBody
    public List<RestaurantVO> restaurantSort(String choiceCategory){
        List<RestaurantVO> restaurantList = mainService.restaurantSort(choiceCategory);

        return restaurantList;
    }
}
