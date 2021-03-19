package kosmo.orange.wtf.controller.adminController;

import kosmo.orange.wtf.model.vo.AdminBoardVO;
import kosmo.orange.wtf.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String boardDetail(@RequestParam("board_id") int board_id, Model model) {
        System.out.println("AdminManagerController.boardDetail");
        System.out.println("board_id = " + board_id);

////         페이지 더 안만들려고 세션을 만들어서 그 값으로 비교를 해보고자 했지 > 근데 실패함
//        session.setAttribute("page", "boardDetail");

        AdminBoardVO adminBoardVO = new AdminBoardVO();

        adminBoardVO = adminService.boardDetail(board_id);
        System.out.println("AdminManagerController.boardDetail adminBoardVO = " + adminBoardVO);

        model.addAttribute("adminBoardVO", adminBoardVO);

        return "adminViews/adminBoardDetail";

    } // end of boardDetail


    /*****************
     * 익명 게시판 글 등록 폼으로 이동
     * adminBoard.jsp > adminBoardForm.jsp
     */
    @GetMapping("boardEnter")
    public String boardEnter(Model model) {
        System.out.println("AdminManagerController.boardEnter");

        int id = 0;
        model.addAttribute("id", id);

        return "adminViews/adminBoardForm";

    } // end of boardEnter


    /*****************************
     * 글 상세에서 수정 or 삭제 버튼 누르면,
     * adminBoardDetail.jsp > 컨트롤러에서 수정인지 삭제인지 확인 후
     *
     * u : 수정이면, 값 받아서 > adminBoardForm.jsp
     * d : 삭제면, 삭제 처리 후 > adminBoard.jsp
     */
    @PostMapping("boardUpdate")
    public String boardUpdate(
            @RequestParam("sep")String sep, @RequestParam("board_id") int id, @RequestParam("board_pw") String pass,
            Model model) {
        System.out.println("AdminManagerController.boardUpdate");
        System.out.println("sep = [" + sep + "], id = [" + id + "], pw = [" + pass + "]");

        AdminBoardVO tempVO = new AdminBoardVO();
        AdminBoardVO adminBoardVO;
        String page = "";
        String message = "";

        // 수정이면 게시글을 보여줄건데,
        if(sep.equals("u")) {
            System.out.println("업뎃진행 ㄱ");

            tempVO.setBoard_id(id);
            tempVO.setBoard_pw(pass);

            adminBoardVO = adminService.boardUpdate(tempVO);
            System.out.println("boardUpdate 114line : " + adminBoardVO.getBoard_title());

//            model.addAttribute("sep", sep);
            model.addAttribute("adminBoardVO", adminBoardVO);
            page = "/adminViews/adminBoardForm";

        }
        if(sep.equals("d")) {
            System.out.println("삭제 ㄱ");

            int result = adminService.deleteArticle(id);
            System.out.println("AdminManagerController.boardUpdate result = " + result);

            message = "삭제 완료";

            if(result == 1) {
                page = "redirect:board";
                System.out.println("message = " + message);
            }
            else if(result == 0) {
                page = "redirect:boardDetail";
                message = "삭제가 안 됨";
            }
            else {
                page = "redirect:boardDetail";
                message = "뭔가 잘 못 됨 / 삭제에 문제가 생김";
            }

        }

        System.out.println("message = " + message);
        model.addAttribute("message", message);
        model.addAttribute("sep", sep);
        model.addAttribute("id", id);

        return page;

    } // end of boardUpdate


    /************************************
     * 수정 or 삭제 버튼 클릭했을 때 pw 가 맞는지 db 에서 확인
     * adminBoardDetail.jsp > ajax > adminBoardDetail.jsp
     */
    @PostMapping("boardPwCheck")
    @ResponseBody
    public int boardPwCheck(int id, String pw) {
        System.out.println("AdminManagerController.boardPwCheck");
        System.out.println("id = [" + id + "], pw = [" + pw + "]");

        AdminBoardVO adminBoardVO = new AdminBoardVO();
        adminBoardVO.setBoard_id(id);
        adminBoardVO.setBoard_pw(pw);

        int result = adminService.boardPwCheck(adminBoardVO);

        return result;

    } // end of boardPwCheck


    /******************
     * 게시판 글 저장 / 수정 / 삭제
     * adminBoardForm.jsp ..>
     *
     * 저장일 경우 >> redirect: adminBoard.jsp (리스트로)
     * 수정일 경우 >> (글 다시 보여주기)
     * 삭제일 경우 >> redirect: adminBoard.jsp (리스트로)
     */
    @PostMapping("boardAction")
    public String boardAction(Model model,
            @RequestParam("sep") String sep, @RequestParam("board_id") int id,
            @RequestParam("board_title") String title, @RequestParam("board_writer") String writer,
            @RequestParam("board_pw") String pw, @RequestParam("content") String content) {

        System.out.println("AdminManagerController.boardAction");
        System.out.println("sep = " + sep);
//        System.out.println("content.length() = " + content.length());
        System.out.println("sep = [" + sep + "], id = [" + id + "], title = [" + title + "], writer = [" + writer + "], pw = [" + pw + "], content = [" + content + "]");
//        System.out.println(content.getClass().getName());

        AdminBoardVO adminBoardVO = new AdminBoardVO();

        if(id != 0) {
            adminBoardVO.setBoard_id(id);
        }
        adminBoardVO.setBoard_title(title);
        adminBoardVO.setBoard_writer(writer);
        adminBoardVO.setBoard_pw(pw);
        adminBoardVO.setBoard_content(content);
        System.out.println("AdminManagerController.boardAction adminBoardVO = " + adminBoardVO);


        // i > 신규등록 / u > 수정 / d > 삭제
        int result = 0;
        String page = "redirect:boardAction";
        String message = "성공";

        if(sep.equals("i")) {
            result = adminService.saveArticle(adminBoardVO);
            System.out.println("AdminManagerController.boardAction i result = " + result);
            if(result==1){
                page = "redirect:board";
            }
            else if(result==0) {
                message = "등록 실패함";
            }
            else {
                message = "얘가 보이면 뭔가이상한건데?";
            }
        }
        if(sep.equals("u")){
            result = adminService.updateArticle(adminBoardVO);
            System.out.println("AdminManagerController.boardAction u result = " + result);

            if(result==1) {
                page = "redirect:boardDetail?board_id=" + (adminBoardVO.getBoard_id());
            }
            else if(result==0) {
                message = "수정 실패함";
            }
            else {
                message = "뭔가 잘 못 됨";
            }

        }


        model.addAttribute("message", message);
        System.out.println("message = " + message);


        return page;

    } // end of boardAction




}
