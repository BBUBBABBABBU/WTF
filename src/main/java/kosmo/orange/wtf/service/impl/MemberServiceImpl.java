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
    public int signUp(MemberVO vo) {
        int result= 0;
        try {
            System.out.println(vo.getPassword());
            result = memberMapper.signUp(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    @Override
    public int memberLogin(MemberVO vo){
        int result= 0;
        try {
            result =memberMapper.memberLogin(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
