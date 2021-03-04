package kosmo.orange.wtf.service.service;

import kosmo.orange.wtf.model.vo.ChatRoomVO;
import org.springframework.web.socket.WebSocketSession;

import java.util.List;

public interface ChatService {
    void init();
    List<ChatRoomVO> chatRoomList();
    ChatRoomVO findChatRoom(String roomId);
    ChatRoomVO createRoom(String nickname);
    <T> void sendMessage(WebSocketSession webSocketSession, T message);
}
