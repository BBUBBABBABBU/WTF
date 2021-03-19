package kosmo.orange.wtf.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class ReviewVO {
    private String Review_id;
    private String mem_id;
    private String res_id;
    private float avg;
    private int taste;
    private int service;
    private int clean;
    private int location;
    private String content;
    private String tag;
    private int rec_count;
    private int charge_count;
    private String res_tell;
    private String review_date;
    private String review_pic1;
    private String review_pic2;
    private String review_pic3;
    private String review_pic4;
    private String review_pic5;
    private MemberVO memberVO;
    private RestaurantVO restaurantVO;
}
