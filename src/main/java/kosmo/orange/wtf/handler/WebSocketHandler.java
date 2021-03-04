package kosmo.orange.wtf.handler;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class WebSocketHandler extends TextWebSocketHandler {

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String payload = message.getPayload();
        System.out.println("WebSocketHandler 14line : " + payload);
        TextMessage textMessage = new TextMessage("채팅서버 접속");

        // 서버로부터 클라이언트에게 메시지 보냄
        session.sendMessage(textMessage);
    }
}