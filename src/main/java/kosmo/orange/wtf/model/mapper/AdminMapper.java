package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.AdminVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminMapper {

    /**********************
     * 회원가입
     */
    int signUp(AdminVO adminVO) throws Exception;


    /**********************
     * 중복확인
     */
    int idCheck(String id);



}
