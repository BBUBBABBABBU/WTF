package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;

public interface MemberService {


     int signUp(final MemberVO vo);
     MemberVO memberLogin( final MemberVO vo);
}
