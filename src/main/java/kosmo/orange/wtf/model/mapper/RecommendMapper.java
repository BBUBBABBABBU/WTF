package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.RecommendVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface RecommendMapper {
    List<RecommendVO> res_all();

}
