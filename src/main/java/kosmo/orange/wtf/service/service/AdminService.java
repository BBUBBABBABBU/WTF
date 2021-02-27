package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.AdminVO;
import org.springframework.stereotype.Service;

@Service
public interface AdminService {

    /**************
     * 관리자 회원가입
     */
    public int signUp(AdminVO adminVO);


    /********************
     * 중복검사
     */
    public int idCheck(String id);


}
