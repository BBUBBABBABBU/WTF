package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.MemberMapper;
import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.service.service.MemberService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ws.mime.MimeMessage;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;
import java.util.Properties;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberMapper memberMapper;


    @Override
    public int signUp(final MemberVO vo) {
        int result = 0;
        try {
            System.out.println(vo.getPassword());
            result = memberMapper.signUp(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public MemberVO memberLogin(MemberVO vo) {
        MemberVO result = null;
        try {
            result = memberMapper.memberLogin(vo);
        } catch (Exception e) {
            System.out.println("memberLogin() + " + e.toString());
        }
        return result;
    }

    @Override
    public int idcheckMember(String email) throws Exception {
        int result = 0;
        MemberVO memberVO = memberMapper.idcheckMember(email);
        System.out.println(result + "impl");
        if (memberVO != null)
            result = 1;
        return result;

    }

    public boolean userEmailCheck(String userEmail, String userBirthday) {
        MemberVO member = null;
        try {
            System.out.println(userEmail);
            System.out.println(userBirthday);
            member = memberMapper.idcheckMember(userEmail);
            System.out.println(member.getBirthday());

        } catch (Exception e) {
            e.printStackTrace();
        }
        if (member != null && member.getBirthday().equals(userBirthday)) {
            return true;
        } else {
            return false;
        }
    }


    public MemberVO memberUpdate(MemberVO member) {
        int result =0;
        MemberVO resultVO=null;
        try {

            result = memberMapper.memberUpdate(member);

            if (result==1){
                 resultVO=memberMapper.memberLogin(member);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultVO;
    }

    @Override
    public void passwordChge(MemberVO memberVO) {
        try {
            memberMapper.passwordChge(memberVO);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
