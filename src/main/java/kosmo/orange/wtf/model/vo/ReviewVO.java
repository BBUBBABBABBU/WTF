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
    private String pic_loc;
    private int rec_count;
    private int charge_count;
    private String res_tell;
}
