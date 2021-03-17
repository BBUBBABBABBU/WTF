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


//    @RequestMapping("/{step}")
//    public String viewPage(@PathVariable String step) {
//       System.out.println("페이지변경:");
//        return "/" +step;
//    }

    // ******* 유저 qna 페이지
    @RequestMapping("/qna")
    public String Qna() {
        return "mypage/qna";
    }


    // ******* 유저 조회 / qna list 를 myqnalist 페이지에서 출력
    @RequestMapping("/myqnalist")
    public String MyqnaList(QnaVO vo, Model model) {
        MemberVO member = (MemberVO)session.getAttribute("member");
//        System.out.println("myqnalist 37line 요청 회원아이디 : " + member.getMemberId());

        vo.setMember_id(member.getMemberId());
//        System.out.println("회원 번호 vo.getMemberid 42line : " + vo.getMember_id());
//        System.out.println("회원 번호 member.getMemberid 42line : " + member.getMemberId());

        model.addAttribute("qnaList", qnaService.MyqnaList(vo));

        return "mypage/myqnalist";
    }


    // ******* 유저 myqna 글 상세 / 답변확인 페이지
    @RequestMapping("/myqnadetail")
    public String MyqnaDetail(QnaVO vo, Model model) {
        System.out.println("myqnadetail 요청 확인" + vo.getQna_id());
        model.addAttribute("qna", qnaService.MyqnaDetail(vo));

        return "mypage/myqnadetail";
    }


    // ****** 유저 qna 입력
    @RequestMapping(value = "/insertQna")
    public String insertQna(QnaVO qnaVO) {

        int result = 0;
        System.out.println("insertQna Controller" + qnaVO.getMember_id());
//    System.out.println(qnaVO.getQna_title());
//    System.out.println(qnaVO.getQna_content());
        result = qnaService.insertQna(qnaVO);
        System.out.println(result);

        return "redirect:/myqnalist";
    }

    // ****** 유저 qna 문의 글 삭제
    @PostMapping(value = "/deleteQna")
    public String deleteQna(QnaVO vo) {
        System.out.println("QnaController 75line 수정 : " + vo.getQna_id());
        qnaService.deleteQna(vo);
        return "redirect:/myqnalist";
    }


}
