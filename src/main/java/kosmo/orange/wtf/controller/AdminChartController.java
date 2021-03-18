package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.ChartVO;
import kosmo.orange.wtf.service.service.ChartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AdminChartController {

    @Autowired
    ChartService chartService;



    @GetMapping("/chart-morris")
    public String morris_chart(Model model){

        //리뷰 근원 비율 가져오기
        List<ChartVO> originRatio = chartService.originRatio();
        model.addAttribute("originRatio",originRatio);
        System.out.println(originRatio.get(0).getSubject());


        //리뷰 점수 비율 가져오기
        List<ChartVO> ratingRatio = chartService.ratingRatio();
        model.addAttribute("ratingRatio", ratingRatio);
        System.out.println("리뷰 점수 가져오기"+(String)ratingRatio.get(0).getSubject());

        //리뷰 지역별 가져오기
        List<ChartVO> addrRatio = chartService.addrRatio();
        model.addAttribute("addrRatio", addrRatio);
        System.out.println(addrRatio.get(4).getSubject());


        //시간 대별 리뷰수
        List<ChartVO> timeRatio = chartService.timeRatio();
        model.addAttribute("timeRatio", timeRatio);
        System.out.println(timeRatio.get(0).getCount());



        return "adminViews/chart/chart-morris";


    }




}
