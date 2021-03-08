package kosmo.orange.wtf.model.vo;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Setter
@Getter
@NoArgsConstructor
public class AdminVO {

    private String mgr_name;
    private String mgr_id;
    private String mgr_pass;


}
