package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminIndexController {

    // ************************************
    //  index page 에서 각 메뉴로 이동하는
    //  페이지 이동 컨트롤러
    //  (정확히는 adminHeader.jsp 의 side bar (nav bar) 에서 이동
    // ************************************

    @Autowired
    AdminServiceImpl adminService;

    // ==================================
    // header / 우측 상단
    // ==================================

    /**************************
     * 관리자 계정 마이페이지
     * .. > adminMyPage.jsp
     */
    @GetMapping("myPage")
    public String myPage() {
        System.out.println("AdminIndexController.myPage");

        return "adminViews/adminMyPage";

    } // end of myPage


    /***********************
     * 화면 잠금
     * .. > adminLock.jsp
     */
    @GetMapping("pageLock")
    public String pageLock() {
        System.out.println("AdminIndexController.pageLock");

        return "adminViews/adminLock";

    } // end of pageLock


    /****************
     * 로그아웃
     * .. > adminLogin.jsp
     */
    @GetMapping("logout")
    public String logout() {
        System.out.println("AdminIndexController.logout");

        return "adminViews/adminLogin";

    } // end of logout






    // ==================================
    // nav bar / side bar
    // ==================================

    /************************
     * 홈 / 대시보드 페이지로 이동
     * .. > adminIndex.jsp
     */
    @GetMapping("index")
    public String index() {
        System.out.println("AdminIndexController.index");

        return "adminViews/adminIndex";

    } // end of index


    /******************
     * 유저 목록 이동
     * .. > adminMemberList.jsp
     */
    @GetMapping("memberList")
    public String memberList() {
        System.out.println("AdminIndexController.memberList");

        return "adminViews/adminMemberList";

    } // end of memberList


    /****************
     * QnA / FAQ 페이지 이동 ..... 은 애들 확인하고 만들기
     * 일단 QnA / FAQ 메뉴 나눠놓기는 함 > 페이지는 아직 안 만들었음
     */


    /****************
     * 가게 목록 페이지로 이동
     * .. > adminStoreList.jsp
     */
    @GetMapping("storeList")
    public String storeList() {
        System.out.println("AdminIndexController.storeList");

        return "adminViews/adminStoreList";

    } // end of storeList


    /*****************
     * 리뷰 관리 페이지로 이동
     * .. > adminReviewList.jsp
     */
    @GetMapping("reviewList")
    public String reviewList() {
        System.out.println("AdminIndexController.reviewList");

        return "adminViews/adminReviewList";

    } // end of reviewList


    /******************
     * 차트 : 차트는 많아서 ....... 일단 대기
     */


    /**************
     * 업적 세팅 페이지로 이동
     * .. > adminAchieveSetting.jsp
     */
    @GetMapping("achieveSetting")
    public String achieveSetting() {
        System.out.println("AdminIndexController.achievementSetting");

        return "adminViews/adminAchieveSetting";

    } // end of achieveSetting


    /*************************
     * 입맛?취향? 수정-등록-삭제 하는 페이지로 이동
     * .. > adminFlavorSetting.jsp
     */
    @GetMapping("flavorSetting")
    public String flavorSetting() {
        System.out.println("AdminIndexController.flavorSetting");

        return "adminViews/adminFlavorSetting";

    } // end of flavorSetting


    /***************************
     * 관리자 페이지로 이동
     * .. > adminManagerList2.jsp
     */
    @GetMapping("managerList")
    public String managerList() {
        System.out.println("AdminIndexController.adminMemberList");

        return "adminViews/adminManagerList";

    } // end of managerList


    /***************************************
     * 관리자 게시판 > 공지사항 게시판 이동
     * .. > Community > adminNotice.jsp
     */
    @GetMapping("notice")
    public String notice() {
        System.out.println("AdminIndexController.notice");

        return "adminViews/adminNotice";

    } // end of notice


    /***********************************
     * 관리자 게시판 > 익명게시판? 이동
     * .. > Community > adminBoard.jsp
     */
    @GetMapping("board")
    public String board() {
        System.out.println("AdminIndexController.board");

        return "adminViews/adminBoard";

    } // end of board









}
