package kosmo.orange.wtf.service.impl;


import kosmo.orange.wtf.model.mapper.QnaMapper;
import kosmo.orange.wtf.model.vo.QnaVO;
import kosmo.orange.wtf.service.service.QnaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("QnaService")
public class QnaServiceImpl implements QnaService {

    @Autowired
    QnaMapper qnaMapper;

    @Override
    public int insertQna( QnaVO vo){
        int result = 0;
        try {
            System.out.println("Impl id :" + vo.getMember_id());
            result = qnaMapper.insertQna(vo);
        }catch (Exception e){
            System.out.println("insertQna Error");
        }
        return result;
    }

    @Override
    public List<QnaVO> MyqnaList(QnaVO vo){
        List<QnaVO> result = null;
        try {
            result = qnaMapper.MyqnaList(vo);
        } catch (Exception e) {
            System.out.println("MyqnaList Error");
        }
        return result;
    }


    @Override
    public QnaVO MyqnaDetail(QnaVO vo){
        QnaVO result = null;

        try {
            result = qnaMapper.MyqnaDetail(vo);
        } catch (Exception e) {
            System.out.println("MyqnaDetail Error");

        }

        return result;
    }

    @Override
    public void deleteQna(QnaVO vo) {

        try {
            qnaMapper.deleteQna(vo);
        } catch (Exception e) {
            System.out.println("deleteQna Error");

        }
    }



}
