package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.RecommendMapper;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecommedServiceImpl implements RecommendService {

    @Autowired
    RecommendMapper recommendMapper;

    @Override
    public List<RecommendVO> res_all() {
        List<RecommendVO> res_allList =recommendMapper.res_all();
        return res_allList;
    }
}
