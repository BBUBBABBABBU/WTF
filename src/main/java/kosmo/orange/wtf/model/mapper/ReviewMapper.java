package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.ReviewVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ReviewMapper {

    // 리뷰작성하기
    int ReviewInsert(ReviewVO reviewVO) throws Exception;

    // 리뷰피드 불러오기
    List<ReviewVO> ReviewList(String member_id);

    //팔로우 팔로워 불러오기
    List<MemberVO> followList();

    //리뷰저장
    int ReviewSave(ReviewVO vo) throws Exception;

    //리뷰수정
    int ReviewUpdate(ReviewVO vo) throws Exception;

    //리뷰선택
    ReviewVO ReviewSel(int rev_id) throws  Exception;

    //가게 사진선택
    PhotoVO Photo(int res_id) throws Exception;
    //멤버 이름불러오기
    String memNickname(String mem_id) throws  Exception;
}
