package kosmo.orange.wtf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecommendController {

 @RequestMapping("recommed/recommed")
 public String recommend(){
     return "recommed/recommed";
 }


}
