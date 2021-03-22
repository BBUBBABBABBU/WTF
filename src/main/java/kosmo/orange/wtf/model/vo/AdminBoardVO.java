package kosmo.orange.wtf.model.vo;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Setter
@Getter
@NoArgsConstructor
public class AdminBoardVO {

    private int board_id;
    private String board_pw;
    private String board_title;
    private String board_content;
    private String board_writer;
    private String board_enterdate;
    private String board_modifydate;
    private int board_viewcount;


}
