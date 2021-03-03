package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.MemberVO;
import kosmo.orange.wtf.model.vo.RestaurantVO;

public interface MemberService {


     int signUp(MemberVO vo);
     int memberLogin(MemberVO vo);
}
