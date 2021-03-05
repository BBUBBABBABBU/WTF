package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.RecommendVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecommendTestMapper {
    List<RecommendVO> res_orderBy() throws Exception;
}
