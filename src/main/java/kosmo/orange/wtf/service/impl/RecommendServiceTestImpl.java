package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.RecommendTestMapper;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.service.service.RecommendServiceTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("recommendTestService")
public class RecommendServiceTestImpl implements RecommendServiceTest {

    @Autowired
    RecommendTestMapper recommendTestMapper;

    @Override
    public List<RecommendVO> res_orderBy() {
        try{
            return recommendTestMapper.res_orderBy();
        }catch (Exception e){
            System.out.println("RecommendServiceTestImpl res_orderBy() error : " + e.toString());
            return null;
        }
    }
}
