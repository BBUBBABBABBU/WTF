package kosmo.orange.wtf.model.vo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ChatRoomVO {
    private Long roomId;
    private List<ChatMessageVO> messageList = new ArrayList<>();

}
