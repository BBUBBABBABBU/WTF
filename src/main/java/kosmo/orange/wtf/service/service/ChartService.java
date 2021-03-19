package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.mapper.ChartMapper;
import kosmo.orange.wtf.model.vo.ChartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ChartService {
    List<ChartVO> originRatio();

    List<ChartVO> ratingRatio();

    List<ChartVO> addrRatio();

    List<ChartVO> timeRatio();

}

