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


    /******************
     * 로그인
     */
    List<AdminVO> adminLogin(String id);


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
