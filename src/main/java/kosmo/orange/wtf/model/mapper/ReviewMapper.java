package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.ReviewVO;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface ReviewMapper {

    // 리뷰작성하기
    int ReviewInsert(ReviewVO reviewVO) throws Exception;

    // 리뷰피드 불러오기
    List<ReviewVO> ReviewLIst();

    //팔로우 팔로워 불러오기
    List<MemberVO> followList();

    //

    //
    //

}
