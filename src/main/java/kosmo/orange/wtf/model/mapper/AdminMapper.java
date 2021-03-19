package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

//@Repository("adminMapper")
@Mapper
public interface AdminMapper {

    /**********************
     * 회원가입
     */
    int createAccount(AdminVO adminVO) throws Exception;


    /**********************
     * 중복확인
     */
    AdminVO idCheck(String id);


    /***************************
     * id / name 확인 (비번찾기)
     * >> 쌤과 얘기하다보니 AJAX를 탈 이유가 없음
     */
//    AdminVO pwCheck(String id, String name);


    /******************
     * 로그인
     */
    List<AdminVO> login(String id);


    /***************
     * otp 키 값 DB에 업데이트
     */
    int otpSaveDB(AdminVO adminVO);


    /**************
     * db 의 otp 값과 입력된 otp 값 비교
     */
    AdminVO otpCheck(String id);


    /*********************
     * 비번 초기화 누르면 id / name 확인
     */
    AdminVO checkAccount(AdminVO adminVO);


    /****************************************
     * 비번 초기화 누르고 id / name 확인 되고 임시 pw 생긴거로 업뎃
     */
    int updatePw(AdminVO adminVO);


    /*******************
     * 대시보드의 전체 '회원' 수
     */
    int totalUserCount();


    /*******************
     * 대시보드의 전체 '가게' 수
     */
    int totalStoreCount();


    /*******************
     * 대시보드의 전체 '리뷰' 수
     */
    int totalReviewCount();

    /*******************
     * 리뷰리스트 리뷰내용 가져오기
     */
    List<ReviewVO> reviewList() throws Exception;


    // ==========================================================

    /********************
     * 유저 목록 불러오기
     */
    List<MemberVO> memberList();


    /***********************
     * 가게 목록 불러오기
     */
    List<RestaurantVO> storeList();


    /************************************
     * 관리자 (manager) 리스트 불러오기
     */
    List<AdminVO> managerList();


    /*******************
     * 관리자 익게 리스트 가져오기
     */
    List<AdminBoardVO> boardList();




    // ==========================================================

    /*****************
     * 익게 게시글 저장
     */
    int saveArticle(AdminBoardVO adminBoardVO);



    /******************************
     * 수정 및 삭제 할 때 입력한 pw가 맞는지 확인
     */
    int boardPwCheck(AdminBoardVO adminBoardVO);


    /****************************
     * 수정 버튼을 누르면 수정 할 수 있도록 게시글을 가져옵시다.
     */
    List<AdminBoardVO> boardUpdate(AdminBoardVO adminBoardVO);


    /***************
     * 익게 게시글 수정
     */
    int updateArticle(AdminBoardVO adminBoardVO);


    /************
     * 게시글 삭제
     */
    int deleteArticle(int id);


    /**************
     * 익게 게시글 불러오기
     */
    List<AdminBoardVO> boardDetail(int board_id);




}
