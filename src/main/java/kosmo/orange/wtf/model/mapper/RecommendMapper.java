package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
@Mapper
public interface RecommendMapper {

    //식당 정보
    List<RecommendVO> res_all() throws Exception;


    //식당 사진
    List<PhotoVO> res_photo(RecommendVO vo) throws Exception;


    //식당 추천 정렬
    List<RecommendVO> res_orderBy(String cate) throws Exception;

    //회원 번호 가져와서 개인화 추천1
    List<RecommendVO> res_recomById(HashMap map) throws Exception;

    //회원 번호 가져와서 개인화 추천을 정렬
    List<RecommendVO> res_recomByIdorderBy(HashMap<String, String> map ) throws Exception;

}
