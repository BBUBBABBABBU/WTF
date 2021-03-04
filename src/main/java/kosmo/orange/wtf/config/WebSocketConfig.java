package kosmo.orange.wtf.config;

import kosmo.orange.wtf.handler.WebSocketHandler;
import lombok.RequiredArgsConstructor;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.*;

@RequiredArgsConstructor
@Configuration
@EnableWebSocket    // Websocket 활성화
public class WebSocketConfig implements WebSocketConfigurer {
    private final WebSocketHandler webSocketHandler;

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {

        // setAllowedOrigins -> 도메인이 다른서버에서도 접속 가능하도록 설정
        registry.addHandler(webSocketHandler,"/ws/chat").setAllowedOrigins("*");
    }
}
