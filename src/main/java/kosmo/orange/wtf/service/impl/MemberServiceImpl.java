package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.MemberMapper;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.service.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberMapper memberMapper;

    @Override
    public int signUp(final MemberVO vo) {
        int result=0;
        try {
            System.out.println(vo.getPassword());
            result = memberMapper.signUp(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    @Override
    public MemberVO memberLogin( MemberVO vo){
        MemberVO result = null;
        try {
            result =memberMapper.memberLogin(vo);
        } catch (Exception e) {
            System.out.println("memberLogin() + " + e.toString());
        }
        return result;
    }

    @Override
    public int idcheckMember(String email) throws Exception {
        int result = 0;
        MemberVO memberVO = memberMapper.idcheckMember(email);
            System.out.println(result+"impl");
        if (memberVO != null)
            result=1;
            return result;

    }
}
