package kosmo.orange.wtf.model.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor
@Getter
@Setter
public class ReviewVO {
    private int review_id;
    private int member_id;
    private int res_id;
    private float rating_avg;
    private int rating_taste;
    private int rating_service;
    private int rating_clean;
    private int rating_location;
    private String review_content;
    private String review_tag;
    private String pic_name;
    private int recommend_count;
    private int charge_count;
}
