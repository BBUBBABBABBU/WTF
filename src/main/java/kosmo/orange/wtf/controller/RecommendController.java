package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.service.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class RecommendController {

    @Autowired
    private RecommendService recommendService;

    @RequestMapping("recommend/recommend")
    public String recommend(Model model){
        System.out.println("추천 화면 출력");
        List<RecommendVO> res_allList = recommendService.res_all();
        System.out.println(res_allList.get(0).getRes_name());
        model.addAttribute("res_allList",res_allList);
        return "recommend/recommend";


    }


}
