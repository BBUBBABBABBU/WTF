package kosmo.orange.wtf.controller.adminController;


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
        List<QnaVO> result = adminQnaService.AdminQnaList();
        model.addAttribute("adminqnaList", result);


        return "adminViews/adminQnA";
    }


    // ****** 관리자 유저 문의 상세 보기
    @RequestMapping("/adminqnadetail")
    public String AdminQnaDetail(QnaVO vo, Model model){
        model.addAttribute("adminqna", adminQnaService.AdminQnaDetail(vo));

        return "adminViews/adminQnADetail";
    }


    // ****** 관리자 유저 문의 답변 / 수정
    @PostMapping(value ="/updateQna")
    public String AdminQnaUpdate(QnaVO vo) {
        adminQnaService.AdminQnaUpdate(vo);

        return "redirect:/adminQnA";

    }




}
