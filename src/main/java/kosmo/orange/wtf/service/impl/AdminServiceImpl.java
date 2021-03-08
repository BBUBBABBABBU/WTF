package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.AdminMapper;
import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;
import kosmo.orange.wtf.service.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
//public class AdminServiceImpl implements AdminService, UserDetailsService {

    @Autowired
    AdminMapper adminMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    /******************
     * 회원가입
     * + 비밀번호 암호화
     */
    @Override
    public int createAccount(AdminVO adminVO) {
        System.out.println("AdminServiceImpl.createAccount : " + adminVO);

        int account = 0;
        try {
            adminVO.setMgr_pass(passwordEncoder.encode(adminVO.getMgr_pass()));
            account = adminMapper.createAccount(adminVO);

        } catch (Exception e) {
            System.out.println("AdminServiceImpl.createAccount Error : " + e.toString());

        }

        return account;

    } // end of createAccount


    /************************
     * id(email) 중복 체크
     */
    @Override
    public int idCheck(String id) {
        System.out.println("AdminServiceImpl.idCheck : " + id);

        AdminVO adminVO = adminMapper.idCheck(id);

        int result = 1;

        if(adminVO == null){
            result = 0;
        }

        return result;

    } // end of idCheck


    /****************
     * 로그인
     */
    @Override
    public AdminVO adminLogin(String id, String pass) {
        System.out.println("AdminServiceImpl.adminLogin - " + "id : " + id);

//        AdminVO adminVO = new AdminVO();
        List<AdminVO> managerList = adminMapper.adminLogin(id);
        System.out.println("AdminServiceImpl.adminLogin - managerList = " + managerList);

        AdminVO tempVO = managerList.get(0);
        System.out.println("AdminServiceImpl.adminLogin - adminVO = " + tempVO);


        return tempVO;

    } // end of adminLogin



    // ============================================

    /****************
     * 유저 목록 불러오기
     */
    @Override
    public List<MemberVO> memberList() {
        System.out.println("AdminServiceImpl.memberList");

        return adminMapper.memberList();

    } // end of memberList


    /*********************
     * 가게 목록 불러오기
     */
    @Override
    public List<RestaurantVO> storeList() {
        System.out.println("AdminServiceImpl.storeList");

        return adminMapper.storeList();

    } // end of sotreList


    /****************************
     * 관리자 (manager) 리스트 불러오기
     */
    @Override
    public List<AdminVO> managerList() {
        System.out.println("AdminServiceImpl.managerList");

        return adminMapper.managerList();

    } // end of managerList


//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//
//        AdminVO adminVO = findById(username);
//
//        if(adminVO == null) {
//            throw new UsernameNotFoundException(username);
//        }
//
//        return adminVO;
//    }
//
//    public AdminVO findById(String username) {
//        return (AdminVO) adminMapper.adminLogin(username);
//
//    }

}
