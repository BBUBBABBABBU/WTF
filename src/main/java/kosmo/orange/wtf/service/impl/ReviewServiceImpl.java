package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.RestaurantMapper;
import kosmo.orange.wtf.model.mapper.ReviewMapper;
import kosmo.orange.wtf.model.vo.PhotoVO;
import kosmo.orange.wtf.model.vo.ReviewVO;
import kosmo.orange.wtf.service.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {
    @Autowired
    ReviewMapper reviewMapper;
        // 리뷰저장
    @Override
    public int ReviewSave(ReviewVO vo){
        int result=0;
        try{
            System.out.println("리뷰저장");
            result = reviewMapper.ReviewSave(vo);
        }catch (Exception e){
            System.out.println("리뷰저장오류" + e.toString());
        }

        return result;
    }
    // 리뷰수정
    @Override
    public int ReviewUpdate(ReviewVO vo) {
        int result=0;
        try {
            System.out.println("리뷰수정");
            result = reviewMapper.ReviewUpdate(vo);
        }catch (Exception e){
            System.out.println("리뷰수정오류" + e.toString());
        }
        return result;
    }
    //리뷰선택
    @Override
    public ReviewVO ReviewSel(int rev_id) {
        ReviewVO result=null;
        try {
            System.out.println("리뷰선택");
            result = reviewMapper.ReviewSel(rev_id);
        }catch (Exception e){
            System.out.println("리뷰선택오류" + e.toString());
        }
        return result;
    }
    //피드 리뷰 뷸러오기
    // ": member_id 이용해서 해당 member id 가 팔로우 하는 사람의 모든 리뷰 가져오기
    @Override
    public List<ReviewVO> ReviewList(String member_id) {
        try{
            System.out.println("피드 리뷰리스트");
            List<ReviewVO> result = reviewMapper.ReviewLIst(member_id);
            return result;
        }catch (Exception e){
            System.out.println("ReviewServiceImpl ReviewList 실패 ");
            return null;
        }

    }
    // 닉네임 가져오기
    // : 채팅에 사용할 이름 가져오기

    @Override
    public String memNickname(String mem_id){
        try {
            String nickname = reviewMapper.memNickname(mem_id);
            return nickname;
        }catch (Exception e){
            System.out.println("ReviewServiceImpl memNickname 실패");
            return "이상한이름" ;
        }
    }
// 리뷰작성화면 가게 사진 불러오기
    @Override
    public PhotoVO Photo(int res_id) {
        try{
            return reviewMapper.Photo(res_id);
        }catch (Exception e) {
            return null;
        }
    }

    @Override
    public ReviewVO ReviewInsert(int rev_id) {
        return null;
    }

    @Override
    public ReviewVO ReviewInfo(int rev_id) {
        return null;
    }


}


