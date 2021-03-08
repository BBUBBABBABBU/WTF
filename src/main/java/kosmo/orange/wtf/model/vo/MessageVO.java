package kosmo.orange.wtf.model.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class MessageVO {
    private String Message;
    private String FromId;
    private String ToId;
    private String Time;
}
