package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.vo.AdminBoardVO;
import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class AdminManagerController {

    // ************************************
    //  index page 에서 MANAGER 그룹 페이지들의
    //  내부동작? 에 관여하는 컨트롤러
    //  - Manager List
    //  - Community
    // ************************************

    @Autowired
    AdminServiceImpl adminService;

    @Autowired
    HttpSession session;


    /**************
     * 매니저 상세
     * adminManagerList.jsp > adminManagerDetail.jsp
     */
    @GetMapping("managerDetail")
    public String managerDetail() {
        System.out.println("AdminManagerController.managerDetail");

        return "adminViews/adminManagerDetail";

    } // end of managerDetail


    /**********************
     * 익명 게시판 게시글 상세
     * adminBoard.jsp > adminBoardDetail.jsp
     */
    @GetMapping("boardDetail")
    public String boardDetail(@RequestParam("articleNo") String board_id) {
        System.out.println("AdminManagerController.boardDetail");
        System.out.println("board_id = " + board_id);

////         페이지 더 안만들려고 세션을 만들어서 그 값으로 비교를 해보고자 했지 > 근데 실패함
//        session.setAttribute("page", "boardDetail");

        adminService.boardList();



        return "adminViews/adminBoardDetail";

    } // end of boardDetail


    /*****************
     * 익명 게시판 글 등록 폼으로 이동
     * adminBoard.jsp > adminBoardForm.jsp
     */
    @GetMapping("boardEnter")
    public String boardEnter() {
        System.out.println("AdminManagerController.boardEnter");

        return "adminViews/adminBoardForm";

    } // end of boardEnter


    /******************
     * 게시판 글 저장 / 수정 / 삭제
     * adminBoardForm.jsp ..>
     *
     * 저장일 경우 >> redirect: adminBoard.jsp (리스트로)
     * 수정일 경우 >> (글 다시 보여주기)
     * 삭제일 경우 >> redirect: adminBoard.jsp (리스트로)
     */
    @PostMapping("boardAction")
    public String boardAction(
            @RequestParam("sep") String sep, @RequestParam("board_title") String title, @RequestParam("board_writer") String writer,
            @RequestParam("board_pw") String pw, @RequestParam("content") String content) {

        System.out.println("AdminManagerController.boardAction");
        System.out.println("sep = [" + sep + "], title = [" + title + "], writer = [" + writer + "], pw = [" + pw + "], content = [" + content + "]");
//        System.out.println(content.getClass().getName());

        AdminBoardVO adminBoardVO = new AdminBoardVO();

        adminBoardVO.setBoard_title(title);
        adminBoardVO.setBoard_writer(writer);
        adminBoardVO.setBoard_pw(pw);
        adminBoardVO.setBoard_content(content);
        System.out.println("adminBoardVO = " + adminBoardVO);


        // i > 신규등록 / u > 수정 / d > 삭제
        int result = 0;
        String page = "";

        if(sep.equals("i")) {
            result = adminService.saveArticle(adminBoardVO);
            System.out.println("AdminManagerController.boardAction result = " + result);
            if(result>0){
                page = "redirect:board";
            }
            else if(result==0) {
                page = "";
            }
        }
        if(sep.equals("u")){

        }




        return page;

    } // end of boardAction




}
