package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.ChartMapper;
import kosmo.orange.wtf.model.vo.ChartVO;
import kosmo.orange.wtf.service.service.ChartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("chartService")
public class ChartServiceImpl implements ChartService {

    @Autowired
    ChartMapper chartMapper;

    //리뷰 비율 가져오기
    @Override
    public List<ChartVO> originRatio() {
        try {
            List<ChartVO> temp =chartMapper.originRatio();

            for(int i =0; i < temp.size(); i++){
                String origin=temp.get(i).getSubject();
                System.out.println(origin);
                if(origin.equals("recom1")){
                    temp.get(i).setSubject("행열분해");
                }else if(origin.equals("recom2")){
                    temp.get(i).setSubject("코사인 유사도");
                }else if(origin.equals("recom3")){
                    temp.get(i).setSubject("SVD 모델");
                }

            }


            return temp;
        }catch (Exception e){
            System.out.println("originRatio 에러"+e.toString());
            return null;
        }

    }

    //평점 비율 가져오기
    @Override
    public List<ChartVO> ratingRatio() {
        try{
            List<ChartVO> temp = chartMapper.ratingRatio();

            return chartMapper.ratingRatio();
        }catch (Exception e){
            System.out.println("ratingRatio error" + e.toString());
            return null;
        }
    }

    //리뷰 지역별 가져오기
    @Override
    public List<ChartVO> addrRatio() {
        try{
            List<ChartVO> addrRatio =chartMapper.addrRatioTop4();
            List<ChartVO> etc = chartMapper.addrRatioEtc();
            etc.get(0).setSubject("기타");

            addrRatio.add(4,etc.get(0));
            System.out.println(addrRatio.get(4).getSubject());

            return addrRatio;

        }catch (Exception e){
            System.out.println("addrRatio Error"+e.toString());

            return null;
        }

    }

    //시간대별 리뷰수
    @Override
    public List<ChartVO> timeRatio() {
        try{
            return chartMapper.timeRatio();

        }catch (Exception e){
            System.out.println("timeRatio error"+e.toString());
            return null;
        }
    }

    //추천 성과 지표
    @Override
    public List<ChartVO> efficiency() {
        try{
            List<ChartVO> efficiency = chartMapper.plusEfficiency();
            List<ChartVO> minus = chartMapper.minusEfficiency();

            for (int i=0; i<minus.size(); i++){
                efficiency.add(minus.get(i));

            }

            return efficiency;

        }catch (Exception e){
            System.out.println("efficiency error"+e.toString());
            return null;
        }

    }

}
