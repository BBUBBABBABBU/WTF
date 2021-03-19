package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.ChartVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ChartMapper {
    List<ChartVO> originRatio() throws Exception;

    List<ChartVO> ratingRatio() throws Exception;

    List<ChartVO> addrRatioTop4() throws Exception;

    List<ChartVO> addrRatioEtc() throws Exception;

    List<ChartVO> timeRatio() throws Exception;

}
