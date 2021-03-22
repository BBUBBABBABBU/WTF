package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.QnaVO;
import kosmo.orange.wtf.service.impl.QnaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class QnaController {
    @Autowired
    HttpSession session;
    @Autowired
    QnaServiceImpl qnaService;


    // ******* 유저 qna 페이지
    @RequestMapping("/qna")
    public String Qna() {
        return "mypage/qna";
    }


    // ******* 유저 조회 / qna list 를 myqnalist 페이지에서 출력
    @RequestMapping("/myqnalist")
    public String MyqnaList(QnaVO vo, Model model) {
        MemberVO member = (MemberVO)session.getAttribute("member");

        vo.setMember_id(member.getMemberId());
        model.addAttribute("qnaList", qnaService.MyqnaList(vo));

        return "mypage/myqnalist";
    }


    // ******* 유저 myqna 글 상세 / 답변확인 페이지
    @RequestMapping("/myqnadetail")
    public String MyqnaDetail(QnaVO vo, Model model) {
        model.addAttribute("qna", qnaService.MyqnaDetail(vo));

        return "mypage/myqnadetail";
    }


    // ****** 유저 qna 입력
    @RequestMapping(value = "/insertQna")
    public String insertQna(QnaVO qnaVO) {
        int result = 0;
        result = qnaService.insertQna(qnaVO);
//        System.out.println(result);

        return "redirect:/myqnalist";
    }

    // ****** 유저 qna 문의 글 삭제
    @PostMapping(value = "/deleteQna")
    public String deleteQna(QnaVO vo) {
        qnaService.deleteQna(vo);
        return "redirect:/myqnalist";
    }


}
