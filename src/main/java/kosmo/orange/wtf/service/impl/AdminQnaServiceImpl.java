package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.AdminQnaMapper;
import kosmo.orange.wtf.model.vo.QnaVO;
import kosmo.orange.wtf.service.service.AdminQnaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("AdminQnaService")
public class AdminQnaServiceImpl implements AdminQnaService {

    @Autowired
    AdminQnaMapper adminqnaMapper;

    @Override
    public List<QnaVO> AdminQnaList(){
        List<QnaVO> result = null;
        int i =0;
        try {
            result = adminqnaMapper.AdminQnaList();
//          값 확인
//            for (i=0; i<result.size();i++){
//                System.out.println(result.get(i).getQna_id());
//            }
        } catch (Exception e) {
            System.out.println("AdminQnaList_Impl Error");
        }
        return result;
    }

    @Override
    public QnaVO AdminQnaDetail(QnaVO vo){
        QnaVO result = null;

        try {
            result = adminqnaMapper.AdminQnaDetail(vo);
        } catch (Exception e) {
            System.out.println("AdminQnaDetail_Impl Error");
        }

        return result;
    }

    @Override
    public void AdminQnaUpdate(QnaVO vo) {

        try {
            adminqnaMapper.AdminQnaUpdate(vo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
