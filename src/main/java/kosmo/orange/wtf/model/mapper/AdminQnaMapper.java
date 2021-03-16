package kosmo.orange.wtf.model.mapper;
import kosmo.orange.wtf.model.vo.QnaVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface AdminQnaMapper {
    List<QnaVO> AdminQnaList() throws Exception;
    QnaVO AdminQnaDetail(QnaVO vo) throws Exception;
    void AdminQnaUpdate(QnaVO vo) throws  Exception;
}
