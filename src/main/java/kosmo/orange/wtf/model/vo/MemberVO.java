package kosmo.orange.wtf.model.vo;

import lombok.Data;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@Data
public class MemberVO {
    private String memberId;
    private String email;
    private String password;
    private String nickname;
    private String birthday;
    private String gender;
    private String favor;
    private int point;
    private String registDate;
    private String exitCheck;
    private String exitDate;

}
