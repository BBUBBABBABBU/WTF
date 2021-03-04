package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.ChatRoomVO;
import kosmo.orange.wtf.model.vo.MemberVO;

import java.util.List;

public interface ChatMapper {
    List<ChatRoomVO> chatRoomList(MemberVO memberVO);
}
