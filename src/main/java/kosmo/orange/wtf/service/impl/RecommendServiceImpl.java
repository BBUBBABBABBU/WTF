package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.RecommendMapper;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.RecommendVO;
import kosmo.orange.wtf.service.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service("recommendService")
public class RecommendServiceImpl implements RecommendService {

    @Autowired
    RecommendMapper recommendMapper;

    //식당 id 로 이미지 가져오기
    @Override
    public List<PhotoVO> res_photo(RecommendVO vo) {
        try {

            return recommendMapper.res_photo(vo);

        } catch (Exception e) {
            System.out.println("res_photo 에러 :" + e.toString());
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

    //식당 정보 정렬
    @Override
    public List<RecommendVO> res_orderBy(String cate) {
        try{
            //식당명 8자 넘을 경우 ... 처리
            List<RecommendVO> res_allList= recommendMapper.res_orderBy(cate);

            for(int i=0; i<res_allList.size(); i++){
                String name =res_allList.get(i).getRes_name();
                if (name.length()>8){
                    String temp=name.substring(0,7);
                    temp = temp+"...";
                    res_allList.get(i).setRes_name(temp);
                }

            }

            return res_allList;

        }catch (Exception e){
            System.out.println("res_orderBy 에러"+e.toString());
            return null;
        }
    }


    //member_id로 식당 추천 리스트 가져오기1
    @Override
    public List<RecommendVO> res_recomById(HashMap map) {
        try {
            return recommendMapper.res_recomById(map);

        }catch (Exception e){
            System.out.println("추천리스트 가져오기 실패"+e.toString());
            return null;
        }
    }

    //member_id로 식당 추천 리스트 가져오기1 정렬
    @Override
    public List<RecommendVO> res_recomByIdorderBy(HashMap map) {
        try{
            return recommendMapper.res_recomByIdorderBy(map);
        }catch (Exception e){
            System.out.println("추천 정렬 실패"+ e.toString());
            return null;

        }
    }
}
