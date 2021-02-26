package kosmo.orange.wtf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ReviewController {

    @Autowired
    HttpSession httpSession;

    @RequestMapping("/")
    public String Review(){return "ReviewInsert";}


}
