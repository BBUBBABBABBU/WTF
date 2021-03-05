package kosmo.orange.wtf.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
public class RecommendVO {
    private String res_id;
    private String res_name;
    private String res_tell;
    private String res_addr;
    private String res_latitude;
    private String res_longitude;
    private String res_runtime;
    private String res_keyword;
    private String menu;
    private String price;
    private String rtr_pic_loc;
    private String res_rating;
    private String photo;
    private int review_count;
    private int like_count;


}
