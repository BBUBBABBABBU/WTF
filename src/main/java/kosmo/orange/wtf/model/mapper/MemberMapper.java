package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.AdminVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MemberMapper {

    int signUp( MemberVO vo) throws Exception;
    MemberVO memberLogin(  MemberVO vo) throws Exception;
    MemberVO idcheckMember(String email) throws  Exception;
//    MemberVO findUserByUserId(String userEmail) throws Exception;
    int updateUserPassword(MemberVO member) throws Exception;
    int memberUpdate(MemberVO memberVO) throws  Exception;

    void passwordChge(MemberVO memberVO) throws Exception;
}

