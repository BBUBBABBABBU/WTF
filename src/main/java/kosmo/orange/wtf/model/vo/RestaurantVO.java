package kosmo.orange.wtf.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
public class RestaurantVO {
    private String resName;
    private String resTell;
    private String resAddr;
    private String resLatitude;
    private String resLongitude;
    private String resRuntime;
    private String resKeyword;
    private long resRating;

}
