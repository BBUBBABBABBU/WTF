package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.AdminMapper;
import kosmo.orange.wtf.model.vo.AdminBoardVO;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
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

    } // end of sotreList


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

    @Override
    public int saveArticle(AdminBoardVO adminBoardVO) {
        System.out.println("AdminServiceImpl.saveArticle");

        int result = adminMapper.saveArticle(adminBoardVO);
        System.out.println("AdminServiceImpl.saveArticle : result = " + result);

        return result;

    } // end of saveArticle


    @Override
    public void updateArticle() {
        System.out.println("AdminServiceImpl.updateArticle");

    } // end of updateArticle


    @Override
    public void deleteArticle() {
        System.out.println("AdminServiceImpl.deleteArticle");

    } // end of deleteArticle











}
