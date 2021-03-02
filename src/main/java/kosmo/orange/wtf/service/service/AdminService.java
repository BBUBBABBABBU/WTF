package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.AdminVO;
import org.springframework.stereotype.Service;

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
     * 중복검사
     */
    public int idCheck(String id);


    /*********************
     * 관리자 페이지 로그인
     */
    public AdminVO adminLogin(String id, String pass);



    // ===========================================================
    // ************************************
    //  AdminIndexController 관련
    // ************************************

    /*******************
     *
     */



}
