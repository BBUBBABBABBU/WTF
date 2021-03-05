package kosmo.orange.wtf.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kosmo.orange.wtf.model.vo.ChatRoomVO;
import kosmo.orange.wtf.service.service.ChatService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.WebSocketSession;

import java.util.*;

@RequiredArgsConstructor
@Service("chatService")
public class ChatServiceImpl implements ChatService {

    private final ObjectMapper objectMapper;
    private Map<String, ChatRoomVO> chatRooms;

    @Override
    public void init() {
        chatRooms = new LinkedHashMap<>();
    }

    @Override
    public List<ChatRoomVO> chatRoomList() {
        return new ArrayList<>(chatRooms.values());
    }

    @Override
    public ChatRoomVO findChatRoom(String roomId) {
        return chatRooms.get(roomId);
    }

    @Override
    public ChatRoomVO createRoom(String nickname) {
        Long randomId = Long.parseLong(UUID.randomUUID().toString());
        ChatRoomVO chatRoom = new ChatRoomVO();
        chatRoom.setRoomId(randomId);
//        chatRooms.put(randomId, chatRoom);
        return chatRoom;
    }

    @Override
    public <T> void sendMessage(WebSocketSession webSocketSession, T message) {

    }
}
