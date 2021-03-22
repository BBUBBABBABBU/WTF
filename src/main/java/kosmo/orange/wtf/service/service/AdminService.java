package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AdminService {

    // ************************************
    //  AdminEnterController 관련
    // ************************************

    /**************
     * 관리자 회원가입
     */
    public int createAccount(AdminVO adminVO);


    /********************
     * id 중복검사
     */
    public int idCheck(String id);


    /*************************************
     * id / name 확인 (비번 찾기 위해)
     * >> 쌤과 얘기하다보니 AJAX를 탈 이유가 없음
     */
//    public int pwCheck(String id, String name);


    /*****************
     * otp key 값을 DB에 업뎃
     */
    public int otpSaveDB(AdminVO adminVO);


    /*******************
     * 계정에 등록된 otp 키 값이랑 입력한 otp 코드랑 비교
     */
    public String otpCheck(String id);


/**************************
adminDetail
 */
    public AdminVO adminDetail(AdminVO adminVO);




    /*********************
     * 관리자 페이지 로그인
     */
    public AdminVO login(String id, String pass);


    /**********************
     * 대시보드의 전체 '회원' 수
     */
    public int totalUserCount();


    /*****************
     * 대시보드의 전체 '가게' 수
     */
    public int totalStoreCount();


    /*******************
     * 대시보드의 전체 '리뷰' 수
     */
    public int totalReviewCount();
    List<ReviewVO> reviewList();



    // ========================================================================
    // ************************************
    //  AdminIndexController 관련
    // ************************************

    /************************
     * 유저 목록 불러오기
     */
    public List<MemberVO> memberList();


    /******************
     * 가게 목록 불러오기
     */
    public List<RestaurantVO> storeList();


    /*******************
     * 관리자페이지 리스트 불러오기
     */
    public List<AdminVO> managerList();


    /********************
     * 관리자페이지 익명 게시판 불러오기
     */
    public List<AdminBoardVO> boardList();









    // ========================================================================
    // ************************************
    //  AdminManagerController 관련
    // ************************************

    /*********************
     * 게시판 글 상세 보기
     */
    public AdminBoardVO boardDetail(int board_id);


    /****************
     * 익명 게시판에 신규 게시글 등록 (저장)
     */
    public int saveArticle(AdminBoardVO adminBoardVO);


    /************************
     * 수정이나 삭제 할건데, ajax 로 pw 확인을 합시다.
     */
    public int boardPwCheck(AdminBoardVO adminBoardVO);


    /*******************************************************************************************
     * 저장되어 있는 글에서 비번 입력 후 수정 버튼 눌렀을 때, 게시글 vo 가지고 boardForm 으로 수정하러 ㄱㄱ
     */
    AdminBoardVO boardUpdate(AdminBoardVO adminBoardVO);


    /*****************
     * 익명 게시판의 기존 게시글 수정
     */
    public int updateArticle(AdminBoardVO adminBoardVO);


    /*****************
     * 익명 게시판의 기존 게시글 삭제
     */
    public int deleteArticle(int id);


    /*******************
     * 게시판 조회수 +1
     */
    public int boardCount(int id);





}
