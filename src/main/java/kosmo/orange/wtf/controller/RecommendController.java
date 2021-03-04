package kosmo.orange.wtf.controller;


import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.service.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class RecommendController {

    @Autowired
    private RecommendService recommendService;


    @RequestMapping("/recommend")
    public String recommend(Model model){
        System.out.println("추천 화면 출력");

        // 식당 정보 가져오기
        List<RecommendVO> res_allList = recommendService.res_all();
        model.addAttribute("res_allList",res_allList);

        // 식당 메인 사진 가져오기
        List<String> photoList = new ArrayList<>();
        for(int i=0; i< res_allList.size(); i++){
            List<PhotoVO> temp = recommendService.res_photo(res_allList.get(i));


            try {
                photoList.add((String) temp.get(0).getRtr_pic_loc());
                System.out.println((String) temp.get(0).getRtr_pic_loc());

            }catch (Exception e){
                System.out.println("사진 없음");
                photoList.add("/res/img/ing.jpg");

            }

        }

        model.addAttribute("photoList", photoList);


        return "recommend/recommend";


    }

    public String temp(Model model){

        return "";
    }


}
