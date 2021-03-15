package kosmo.orange.wtf.model.mapper;

import kosmo.orange.wtf.model.vo.QnaVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface QnaMapper {
    int insertQna( QnaVO vo) throws Exception;
    List<QnaVO> MyqnaList(QnaVO vo) throws Exception;
    QnaVO MyqnaDetail(QnaVO vo) throws Exception;
    void deleteQna(QnaVO vo) throws Exception;

}
