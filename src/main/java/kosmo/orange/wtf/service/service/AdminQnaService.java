package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.QnaVO;
import java.util.List;

public interface AdminQnaService {

    // 유저 qnaList admin 조회
   List<QnaVO> AdminQnaList();


    // 유저 qna admin 상세 조회
    QnaVO AdminQnaDetail(QnaVO vo);

    // 유저 qna admin 관리자 답변
    void AdminQnaUpdate(QnaVO vo);

}
