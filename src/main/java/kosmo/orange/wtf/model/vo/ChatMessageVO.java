package kosmo.orange.wtf.model.vo;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ChatMessageVO {

    // 메시지 타입 : 입장, 채팅
    public enum MessageType{
        ENTER, TALK
    }

    private MessageType type;
    private Long id;
    private String message;
    private LocalDateTime time;
    private ChatRoomVO chatRoomVO;
}
