package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.RecommendMapper;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.service.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("recommendService")
public class RecommendServiceImpl implements RecommendService {

    @Autowired
    RecommendMapper recommendMapper;

    //식당 id 로 이미지 가져오기
    @Override
    public List<PhotoVO> res_photo(RecommendVO vo) {
        try{
            return recommendMapper.res_photo(vo);

        }catch (Exception e){

            System.out.println("res_photo 에러 :"+e.toString());
            return null;
        }
    }

    //전체 식당 정보 가져오기
    @Override
    public List<RecommendVO> res_all() {
        try{
            return recommendMapper.res_all();

        }catch (Exception e){
            System.out.println("res_all 에러 :"+e.toString());
            return null;

        }
    }
}
