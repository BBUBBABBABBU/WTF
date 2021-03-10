package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.ReviewMapper;
import kosmo.orange.wtf.model.vo.ReviewVO;
import kosmo.orange.wtf.service.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {
    @Autowired
    ReviewMapper reviewMapper;

    @Override
    public ReviewVO ReviewInfo(int rev_id) {
        return null;
    }

    @Override
    public ReviewVO ReviewInsert(int rev_id) {
        return null;
    }


}


