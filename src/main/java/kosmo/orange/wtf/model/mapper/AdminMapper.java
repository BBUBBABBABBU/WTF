package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
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
    List<AdminVO> adminLogin(String id);


    /*********************
     * 비번 초기화 누르면 id / name 확인
     */
    AdminVO checkAccount(AdminVO adminVO);


    /****************************************
     * 비번 초기화 누르고 id / name 확인 되고 임시 pw 생긴거로 업뎃
     */
    int updatePw(AdminVO adminVO);


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
}
