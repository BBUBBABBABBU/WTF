package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.QnaVO;

import java.util.List;

public interface QnaService {

    // 문의 글 입력
    int insertQna(QnaVO vo);

    // 유저 문의 글 목록 조회
    List<QnaVO> MyqnaList(QnaVO vo);

    // 유저 문의 상세 조회
    QnaVO MyqnaDetail(QnaVO vo);

//    유저 본인 문의 글 삭제
    void deleteQna(QnaVO vo);
}
