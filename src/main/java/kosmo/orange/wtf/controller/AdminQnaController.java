package kosmo.orange.wtf.controller;


import kosmo.orange.wtf.model.vo.QnaVO;
import kosmo.orange.wtf.service.impl.AdminQnaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AdminQnaController {
    @Autowired
    AdminQnaServiceImpl adminQnaService;

    // ****** 관리자 유저 문의 리스트 조회
    @GetMapping("adminQnA")
    public String AdminQnaList(QnaVO vo, Model model) {

        System.out.println("adminqnalist 23 line 확인  : " + vo.getQna_id());
        List<QnaVO> result = adminQnaService.AdminQnaList();
        System.out.println(result.get(0).getQna_id());
        model.addAttribute("adminqnaList", result);


        return "adminViews/adminQnA";
    }


    // ****** 관리자 유저 문의 상세 보기
    @RequestMapping("/adminqnadetail")
    public String AdminQnaDetail(QnaVO vo, Model model){
        System.out.println("adminqnadetail 23 line 확인  : " + vo.getMember_id());
        model.addAttribute("adminqna", adminQnaService.AdminQnaDetail(vo));

        return "adminViews/adminQnADetail";
    }


    // ****** 관리자 유저 문의 답변 / 수정
    @PostMapping(value ="/updateQna")
    public String AdminQnaUpdate(QnaVO vo) {
        System.out.println("adminqnaupdate 45line 수정 : " + vo.getQna_id());
        adminQnaService.AdminQnaUpdate(vo);

        return "redirect:/adminQnA";

    }




}
