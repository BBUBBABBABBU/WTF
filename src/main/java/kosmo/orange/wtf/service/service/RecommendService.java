package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;

import java.util.HashMap;
import java.util.List;

public interface RecommendService {

    //식당 id로 사진 가져오기
    public List<PhotoVO> res_photo(RecommendVO vo);

    //전체 식당 정보 가져오기
    public List<RecommendVO> res_all();

    public List<RecommendVO> res_orderBy(String cate);

    public List<RecommendVO> res_recomById(HashMap map);

    public List<RecommendVO> res_recomByIdorderBy(HashMap map);
}
