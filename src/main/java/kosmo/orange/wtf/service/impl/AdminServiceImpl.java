package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.AdminMapper;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.service.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminMapper adminMapper;

    /******************
     * 회원가입
     */
    @Override
    public int signUp(AdminVO adminVO) {
        System.out.println("AdminServiceImpl.signUp :" + adminVO.getMgr_id());

        try {
            adminMapper.signUp(adminVO);
        } catch (Exception e) {
            System.out.println("AdminServiceImpl.signUp Error : " + e.toString());
        }

        return 0;
    }

    @Override
    public int idCheck(String id) {
        System.out.println("AdminServiceImpl.idCheck : " + id);

        adminMapper.idCheck(id);

        return 0;
    }
}
