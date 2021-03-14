package kosmo.orange.wtf.model.vo;

import lombok.Data;

@Data
public class QnaVO {
    private int qna_id;
    private String member_id;
    private String qna_date;
    private int anw_date;
    private String qna_title;
    private String qna_content;
    private String anw_check;
    private String anw_content;



}
