package kosmo.orange.wtf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ReviewController {

    @RequestMapping("/")
    public String Review(){return "ReviewInsert";}

    Map ratingOptions = new HashMap();
    
}
