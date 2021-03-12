package kosmo.orange.wtf.controller;


import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.service.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.python.util.PythonInterpreter;
import org.python.core.PyObject;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class RecommendController {

    @Autowired
    private RecommendService recommendService;

    @Autowired
    HttpSession session;


    @RequestMapping("/recommend")
    public String recommend(Model model){
        System.out.println("추천 화면 출력");
        // member_id로 추천 리스트 가져오기
        MemberVO vo = (MemberVO) session.getAttribute("member");
        String member_id = "1";

        List<RecommendVO> res_allList;

        // 식당 정보 가져오기
        if (member_id!=null){
            String table ="res_recommend_test";
            HashMap map1 = new HashMap();
            map1.put("member_id",member_id);
            map1.put("table",table);
            res_allList = recommendService.res_recomById(map1);
            model.addAttribute("res_allList",res_allList);

        }else{

            res_allList = recommendService.res_all();
            model.addAttribute("res_allList",res_allList);

        }


        // 식당 메인 사진 가져오기
        List<String> photoList = new ArrayList<>();
        for(int i=0; i< res_allList.size(); i++){
            List<PhotoVO> temp = recommendService.res_photo(res_allList.get(i));

            try {
                photoList.add((String) temp.get(0).getRtr_pic_loc());
                System.out.println((String) temp.get(0).getRtr_pic_loc());

            }catch (Exception e){

//                System.out.println("사진 없음");
                photoList.add("/res/img/ing.jpg");

            }

        }
        model.addAttribute("photoList", photoList);

        

        // 추천 2번
        // 식당 정보 가져오기
        List<RecommendVO> res_allList2;
        if (member_id!=null){
            String table ="res_recommend_test2";

            HashMap map1 = new HashMap();
            map1.put("member_id",member_id);
            map1.put("table",table);

            res_allList2 = recommendService.res_recomById(map1);
            model.addAttribute("res_allList2",res_allList2);
            System.out.println(res_allList2.size());

        }else{

            res_allList2 = recommendService.res_all();
            model.addAttribute("res_allList2",res_allList2);

        }


        // 식당 메인 사진 가져오기
        List<String> photoList2 = new ArrayList<>();
        for(int i=0; i< res_allList2.size(); i++){
            List<PhotoVO> temp = recommendService.res_photo(res_allList2.get(i));
            System.out.println(photoList2.size());
            try {
                photoList2.add((String) temp.get(0).getRtr_pic_loc());
                System.out.println((String) temp.get(0).getRtr_pic_loc());

            }catch (Exception e){

//                System.out.println("사진 없음");
                photoList2.add("/res/img/ing.jpg");

            }

        }
        model.addAttribute("photoList2", photoList2);


        // 추천 3번
        // 식당 정보 가져오기
        List<RecommendVO> res_allList3;
        if (member_id!=null){
            String table ="res_recommend_test3";

            HashMap map1 = new HashMap();
            map1.put("member_id",member_id);
            map1.put("table",table);

            res_allList3 = recommendService.res_recomById(map1);
            model.addAttribute("res_allList3",res_allList3);
            System.out.println(res_allList3.size());

        }else{

            res_allList3 = recommendService.res_all();
            model.addAttribute("res_allList3",res_allList3);

        }


        // 식당 메인 사진 가져오기
        List<String> photoList3 = new ArrayList<>();
        for(int i=0; i< res_allList3.size(); i++){
            List<PhotoVO> temp = recommendService.res_photo(res_allList3.get(i));
            System.out.println(photoList3.size());
            try {
                photoList3.add((String) temp.get(0).getRtr_pic_loc());
                System.out.println((String) temp.get(0).getRtr_pic_loc());

            }catch (Exception e){

//                System.out.println("사진 없음");
                photoList3.add("/res/img/ing.jpg");

            }

        }
        model.addAttribute("photoList3", photoList3);


        return "recommend/recommend";


    }


    @PostMapping("/resOrdered")
    @ResponseBody
    public Map<String, Object> resOrdered(String cate, String table){
        //로그인한 사용자 번호 가져오기
        String member_id="1";


        //식당 정보 가져오기
        List<RecommendVO> res_allList;
        if (member_id!=null){
            System.out.println("개인화 추천 정렬 클릭 수정"+cate);
            HashMap map = new HashMap();
            map.put("member_id",member_id);
            map.put("cate", cate);
            map.put("table", table);
            res_allList = recommendService.res_recomByIdorderBy(map);

        }else {
            System.out.println("정렬 클릭"+cate);
            res_allList = recommendService.res_orderBy(cate);
        }


        // 식당 사진 가져오기
        List<String> photoList = new ArrayList<>();
        for(int i=0; i< res_allList.size(); i++) {
            System.out.println(res_allList.get(i).getRes_id());
            List<PhotoVO> temp = recommendService.res_photo(res_allList.get(i));

            try {
                photoList.add((String) temp.get(0).getRtr_pic_loc());
                System.out.println((String) temp.get(0).getRtr_pic_loc());

            } catch (Exception e) {
                System.out.println("사진 없음");
                photoList.add("/res/img/ing.jpg");

            }

        }

        Map<String, Object> result = new HashMap<String, Object>();

        result.put("res_allList",res_allList);
        result.put("photoList",photoList);
        System.out.println("RecommendController resOrdered 219 line 수정: " + result.get("photoList"));
        return result;


    }




    public String temp(Model model){

        return "";
    }



}
