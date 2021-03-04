package kosmo.orange.wtf.model.vo;

import lombok.Data;

@Data
public class ChatRoomJoinVO {
    private Long id;

    private MemberVO memberVO;

    private ChatRoomVO chatRoomVO;
}
