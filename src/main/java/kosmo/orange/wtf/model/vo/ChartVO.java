package kosmo.orange.wtf.model.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class ChartVO {
    private int count;
    private String subject;
    private String period;
    private float value;

}
