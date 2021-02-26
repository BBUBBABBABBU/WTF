package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface RecommendMapper {

    //식당 정보
    List<RecommendVO> res_all() throws Exception;


    //식당 사진
    List<PhotoVO> res_photo(RecommendVO vo) throws Exception;

}
