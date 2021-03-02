package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.AdminVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
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



}
