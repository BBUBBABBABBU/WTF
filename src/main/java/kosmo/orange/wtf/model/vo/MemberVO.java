package kosmo.orange.wtf.model.vo;

import lombok.Data;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@Data

public class MemberVO {

    String email;
    String password;
}
