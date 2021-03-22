package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.AdminMapper;
import kosmo.orange.wtf.model.vo.*;
import kosmo.orange.wtf.service.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
//public class AdminServiceImpl implements AdminService, UserDetailsService {

    @Autowired
    AdminMapper adminMapper;

    @Autowired
    PasswordEncoder passwordEncoder;


    // ************************************
    //  AdminEnterController 관련
    // ************************************

    /******************
     * 회원가입
     * + 비밀번호 암호화
     */
    @Override
    public int createAccount(AdminVO adminVO) {
        System.out.println("AdminServiceImpl.createAccount : " + adminVO);

        int account = 0;
        try {
            adminVO.setMgr_pass(passwordEncoder.encode(adminVO.getMgr_pass()));
            account = adminMapper.createAccount(adminVO);

        } catch (Exception e) {
            System.out.println("AdminServiceImpl.createAccount Error : " + e.toString());

        }

        return account;

    } // end of createAccount


    /************************
     * id(email) 중복 체크
     */
    @Override
    public int idCheck(String id) {
        System.out.println("AdminServiceImpl.idCheck : " + id);

        AdminVO adminVO = adminMapper.idCheck(id);

        int result = 1;

        if(adminVO == null){
            result = 0;
        }

        return result;

    } // end of idCheck


    /*************************************
     * id / name 확인 (비번찾기)
     * >> 쌤과 얘기하다보니 AJAX를 탈 이유가 없음
     */
//    @Override
//    public int pwCheck(String id, String name) {
//        System.out.println("AdminServiceImpl.pwCheck");
//
//        AdminVO adminVO = adminMapper.pwCheck(id, name);
//
//        int result = 1;
//
//        if(adminVO == null){
//            result = 0;
//        }
//
//        return result;
//
//    } // end of pwCheck


//adminDetail
   @Override
    public AdminVO adminDetail(AdminVO adminVO){
        AdminVO result= null;
        try {
            result = adminMapper.adminDetail(adminVO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }







    /****************
     * 로그인
     */
    @Override
    public AdminVO login(String id, String pass) {
        System.out.println("AdminServiceImpl.login - " + "id : " + id);

//        AdminVO adminVO = new AdminVO();
        List<AdminVO> managerList = adminMapper.login(id);
        System.out.println("AdminServiceImpl.login - managerList = " + managerList);

        AdminVO tempVO = managerList.get(0);
        System.out.println("AdminServiceImpl.login - adminVO = " + tempVO);


        return tempVO;

    } // end of login


    /*****************
     * otp DB에 저장
     */
    @Override
    public int otpSaveDB(AdminVO adminVO) {
        System.out.println("AdminServiceImpl.otpSaveDB");
        System.out.println("adminVO = " + adminVO);

        int result = adminMapper.otpSaveDB(adminVO);

        return result;

    } // end of otpSaveDB


    /******************
     * otp DB의 키 값과 입력돤 값 비교
     */
    @Override
    public String otpCheck(String id) {
        System.out.println("AdminServiceImpl.otpCheck");

        AdminVO adminVO = adminMapper.otpCheck(id);
        System.out.println("adminVO = " + adminVO);

        String result = adminVO.getMgr_key();
        System.out.println("result = " + result);

        return result;

    } // end of otpCheck


    /**********************
     * 대시보드의 전체 '회원' 수 (adminIndex)
     */
    @Override
    public int totalUserCount() {
        System.out.println("AdminServiceImpl.totalUserCount");

        int result = adminMapper.totalUserCount();
        System.out.println("result = " + result);

        return result;

    } // end of totalUserCount


    /**********************
     * 대시보드의 전체 '가게' 수 (adminIndex)
     */
    @Override
    public int totalStoreCount() {
        System.out.println("AdminServiceImpl.totalStoreCount");

        int result = adminMapper.totalStoreCount();
        System.out.println("result = " + result);

        return result;

    } // end of totalStoreCount


    /**********************
     * 대시보드의 전체 '리뷰' 수 (adminIndex)
     */
    @Override
    public int totalReviewCount() {
        System.out.println("AdminServiceImpl.totalReviewCount");

        int result = adminMapper.totalReviewCount();
        System.out.println("result = " + result);

        return result;

    } // end of totalReviewCount

    /**
     * 유저 리뷰 내용 가져오기
     */
    @Override
    public List<ReviewVO> reviewList() {
        try{
            return adminMapper.reviewList();
        }catch (Exception e){
            System.out.println("AdminServiceImpl reviewList() 관리자페이지 유저 리뷰 가져오기 실패 : " + e.toString());
        }
        return null;
    }


// ========================================================================
    // ************************************
    //  AdminIndexController 관련
    // ************************************

    /****************
     * 유저 목록 불러오기
     */
    @Override
    public List<MemberVO> memberList() {
        System.out.println("AdminServiceImpl.memberList");

        return adminMapper.memberList();

    } // end of memberList


    /*********************
     * 가게 목록 불러오기
     */
    @Override
    public List<RestaurantVO> storeList() {
        System.out.println("AdminServiceImpl.storeList");

        return adminMapper.storeList();

    } // end of storeList


    /****************************
     * 관리자 (manager) 리스트 불러오기
     */
    @Override
    public List<AdminVO> managerList() {
        System.out.println("AdminServiceImpl.managerList");

        return adminMapper.managerList();

    } // end of managerList


    /****************************
     * 관리자 게시판 리스트 불러오기 (익게)
     */
    @Override
    public List<AdminBoardVO> boardList() {
        System.out.println("AdminServiceImpl.boardList");

        return adminMapper.boardList();

    } // end of boardList


    /***************************
     * 스프링 시큐리티에 도전
     * 하다가 실패한 흔적임
     */
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//
//        AdminVO adminVO = findById(username);
//
//        if(adminVO == null) {
//            throw new UsernameNotFoundException(username);
//        }
//
//        return adminVO;
//    }
//
//    public AdminVO findById(String username) {
//        return (AdminVO) adminMapper.adminLogin(username);
//
//    }






    // ========================================================================
    // ************************************
    //  AdminManagerController 관련
    // ************************************

    /******************
     * 익명 게시판 글 상세보기
     */
    @Override
    public AdminBoardVO boardDetail(int board_id) {
        System.out.println("AdminServiceImpl.boardDetail");
        System.out.println("board_id = " + board_id);
        System.out.println("284");

        List<AdminBoardVO> tempVO = adminMapper.boardDetail(board_id);
        System.out.println("tempVO = " + tempVO.size());

        AdminBoardVO adminBoardVO = tempVO.get(0);
        System.out.println("AdminServiceImpl.boardDetail adminBoardVO = " + adminBoardVO);

        return adminBoardVO;

    } // end of boardDetail


    /***********************
     * 익명 게시판 글 저장
     */
    @Override
    public int saveArticle(AdminBoardVO adminBoardVO) {
        System.out.println("AdminServiceImpl.saveArticle");

        int result = adminMapper.saveArticle(adminBoardVO);
        System.out.println("AdminServiceImpl.saveArticle : result = " + result);

        return result;

    } // end of saveArticle


    /**************************************
     * ajax 를 통해 게시판 수정 및 삭제 할 때 pw 맞는지 확인
     */
    @Override
    public int boardPwCheck(AdminBoardVO adminBoardVO) {
        System.out.println("AdminServiceImpl.boardPwCheck");
        System.out.println("adminBoardVO = [" + adminBoardVO + "]");

        int result = adminMapper.boardPwCheck(adminBoardVO);
        System.out.println("AdminServiceImpl.boardPwCheck result = " + result);

        return result;

    } // end of boardPwCheck


    /****************************
     * 익명 게시판 수정 버튼 누르면 글 가져와서 수정 할 수 있도록 boardForm 에 세팅
     */
    @Override
    public AdminBoardVO boardUpdate(AdminBoardVO adminBoardVO) {
        System.out.println("AdminServiceImpl.boardUpdate");
        System.out.println("adminBoardVO = [" + adminBoardVO + "]");

        List<AdminBoardVO> adminBoardVOList = adminMapper.boardUpdate(adminBoardVO);
        System.out.println("adminBoardVOList 337line = " + adminBoardVOList.get(0).getBoard_title());

        AdminBoardVO tempVO = adminBoardVOList.get(0);

        return tempVO;

    } // end of boardUpdate


    /*********************
     * 익명 게시판 글 수정
     */
    @Override
    public int updateArticle(AdminBoardVO adminBoardVO) {
        System.out.println("AdminServiceImpl.updateArticle");

        int result = adminMapper.updateArticle(adminBoardVO);
        System.out.println("result = " + result);

        return result;

    } // end of updateArticle


    /**********************
     * 익명 게시판 글 삭제
     */
    @Override
    public int deleteArticle(int id) {
        System.out.println("AdminServiceImpl.deleteArticle");

        int result = adminMapper.deleteArticle(id);
        System.out.println("AdminServiceImpl.deleteArticle result = " + result);

        return result;

    } // end of deleteArticle


    /*********************
     * 게시판 조회수
     */
    @Override
    public int boardCount(int id) {
        System.out.println("AdminServiceImpl.boardCount");

        return adminMapper.boardCount(id);

    } // end of boardCount










}
