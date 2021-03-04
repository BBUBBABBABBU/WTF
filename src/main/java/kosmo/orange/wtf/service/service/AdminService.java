package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
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
     * 중복검사
     */
    public int idCheck(String id);


    /*********************
     * 관리자 페이지 로그인
     */
    public AdminVO adminLogin(String id, String pass);



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




}
