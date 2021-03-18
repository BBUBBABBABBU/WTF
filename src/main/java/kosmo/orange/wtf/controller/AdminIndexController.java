package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.AdminBoardVO;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import kosmo.orange.wtf.service.impl.MemberServiceImpl;
import kosmo.orange.wtf.service.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminIndexController {

    // ************************************
    //  index page 에서 각 메뉴로 이동하는
    //  페이지 이동 컨트롤러
    //  (정확히는 adminHeader.jsp 의 side bar (nav bar) 에서 이동
    // ************************************
    @Autowired
    MemberServiceImpl memberService;
    @Autowired
    AdminServiceImpl adminService;

    @Autowired
    HttpSession session;

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
    @RequestMapping("adminLogout")
    public String adminLogout() {
        System.out.println("AdminIndexController.adminLogout");

        session.removeAttribute("name");
        session.removeAttribute("id");

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
     * .. > adminMemberList.jsp
     */
    @GetMapping("memberList")
    public String memberList(Model model) {
        System.out.println("AdminIndexController.memberList");

        List<MemberVO> memberVOList = adminService.memberList();
        System.out.println("memberVOList.size() = " + memberVOList.size());

        model.addAttribute("memberVOList", memberVOList);

        return "adminViews/adminMemberList";

    } // end of memberList


    /****************
     * QnA / FAQ 페이지 이동 ..... 은 애들 확인하고 만들기
     * 일단 QnA / FAQ 메뉴 나눠놓기는 함 > 페이지는 아직 안 만들었음
     */
//    @GetMapping("adminQnA")
//    public String adminQnA() {
//        System.out.println("AdminIndexController.adminQnA");
//
//        return "adminViews/adminQnA";
//    }


    /****************
     * 가게 목록 페이지로 이동
     * .. > adminStoreList.jsp
     */
    @GetMapping("storeList")
    public String storeList(Model model) {
        System.out.println("AdminIndexController.storeList");

        List<RestaurantVO> restaurantVOList = adminService.storeList();
        System.out.println("restaurantVOList.size() = " + restaurantVOList.size());

        model.addAttribute("restaurantVOList", restaurantVOList);

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


    /***************************a
     * 관리자 페이지로 이동
     * .. > adminManagerList2.jsp
     */
    @GetMapping("managerList")
    public String managerList(Model model) {
        System.out.println("AdminIndexController.adminMemberList");

        List<AdminVO> adminVOList = adminService.managerList();
        System.out.println("adminVOList = " + adminVOList);

        model.addAttribute("adminVOList", adminVOList);

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
    public String board(Model model) {
        System.out.println("AdminIndexController.board");

        List<AdminBoardVO> adminBoardVOList = adminService.boardList();
        System.out.println("adminBoardVOList.size() = " + adminBoardVOList.size());

        model.addAttribute("adminBoardVOList", adminBoardVOList);

        return "adminViews/adminBoard";

    } // end of board

    @RequestMapping("/memberDetail")
    public String memberDetail(MemberVO member, Model model){
        System.out.println("member:"+member.getEmail());

        MemberVO result=(MemberVO) memberService.memberLogin(member);
        model.addAttribute("member",result);

        return "adminViews/adminMemberDetail";
    }



}
