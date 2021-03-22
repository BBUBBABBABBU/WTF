package kosmo.orange.wtf.controller;

import kosmo.orange.wtf.model.mapper.RestaurantMapper;
import kosmo.orange.wtf.model.vo.*;
import kosmo.orange.wtf.service.impl.RestaurantServiceImpl;
import kosmo.orange.wtf.service.impl.ReviewServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.Multipart;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/review")
public class ReviewController{

    @Autowired
    HttpSession httpSession;
    @Autowired
    RestaurantServiceImpl restaurantService;
    @Autowired
    ReviewServiceImpl reviewService;

    @GetMapping("/reviewinsert")
    public String Reviewinsert(RestaurantVO restaurantVO, Model model,String origin){
        System.out.println("ReviewtController ReviewInsert: " + restaurantVO.getResId());
        RestaurantVO restaurantInfo = restaurantService.restaurantInfo(restaurantVO.getResId());
        PhotoVO Photo = reviewService.Photo(restaurantVO.getResId());
        model.addAttribute("photo",Photo);
        model.addAttribute("restaurantInfo",restaurantInfo);
        System.out.println("ReviewtController 26line 사진불러오기" );
        System.out.println(origin);
        return "review/ReviewInsert";
    }

    @GetMapping("/feed")
    public String feedReview(Model model){
        MemberVO member = (MemberVO) httpSession.getAttribute("member");
        System.out.println("세션값 불러왔음 " + member.getMemberId());
       // 세션에 저장된 로그인값을 보냄 - 채팅할때 닉네임 자동입력을 위해서
        String nickname = member.getNickname();
        List<ReviewVO> reviewFeed = reviewService.ReviewList(member.getMemberId());
        List<RestaurantVO> resList = new ArrayList<RestaurantVO>();
        List<String> nickList  = new ArrayList<String>();
        for(int i=0;i<reviewFeed.size();i++){
            resList.add(i,restaurantService.restaurantInfo(Integer.parseInt(reviewFeed.get(i).getRes_id())));
            System.out.println(resList.get(i).getResName());
            nickList.add(i,reviewService.memNickname(reviewFeed.get(i).getMem_id()));
            System.out.println(nickList.get(i));
        }
        model.addAttribute("reviewList", reviewFeed);
        model.addAttribute("nickname", nickname);
        model.addAttribute("ResList", resList);
        model.addAttribute("nickList", nickList);
        System.out.println("ReviewController 리뷰 리스트 jsp 보내기");
    return "review/feed";
    }

    @RequestMapping("/reviewSave")
    public String reviewSave(MultipartFile[] uploadFile, ReviewVO reviewVO, int res_id){
        String Path = "D:/WTF/src/main/webapp";
        String uploadFolder = "/res/img/reivew_pic/";
        for(MultipartFile multipartFile : uploadFile){
            System.out.println("-----------------------");
            System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
            System.out.println("Upload File size" + multipartFile.getSize());
            File saveFile = new File(Path+uploadFolder, multipartFile.getOriginalFilename());
            try {
                multipartFile.transferTo(saveFile);
                if(reviewVO.getReview_pic1()==null) {
                    System.out.println(uploadFolder + multipartFile.getOriginalFilename());
                    reviewVO.setReview_pic1(uploadFolder + multipartFile.getOriginalFilename());
                }else if(reviewVO.getReview_pic2()==null) {
                    System.out.println(uploadFolder + multipartFile.getOriginalFilename());
                    reviewVO.setReview_pic2(uploadFolder + multipartFile.getOriginalFilename());
                }else if(reviewVO.getReview_pic3()==null) {
                    System.out.println(uploadFolder + multipartFile.getOriginalFilename());
                    reviewVO.setReview_pic3(uploadFolder + multipartFile.getOriginalFilename());
                }else if(reviewVO.getReview_pic4()==null) {
                    System.out.println(uploadFolder + multipartFile.getOriginalFilename());
                    reviewVO.setReview_pic4(uploadFolder + multipartFile.getOriginalFilename());
                }else if(reviewVO.getReview_pic5()==null) {
                    System.out.println(uploadFolder + multipartFile.getOriginalFilename());
                    reviewVO.setReview_pic5(uploadFolder + multipartFile.getOriginalFilename());
                }else{
                    System.out.println("");
                    break;
                }
            }catch(Exception e){
                System.out.println(e.getMessage());
            }
         }
        MemberVO member = (MemberVO) httpSession.getAttribute("member");
        RestaurantVO restaurant = restaurantService.restaurantInfo(res_id);
        reviewVO.setRes_tell(restaurant.getResTell());
        reviewVO.setMem_id(member.getMemberId());
        reviewVO.setAvg((float)(reviewVO.getTaste()+reviewVO.getClean()+reviewVO.getLocation()+reviewVO.getService())/8);
        reviewService.ReviewSave(reviewVO);

        // 더미데이터
//        String[] reviewContent = new String[10];
//        reviewContent[0] = "진짜 존맛탱 사장님도 친절하고 좋음";
//        reviewContent[1] = "그럭저럭 먹을만함";
//        reviewContent[2] = "서비스 불친절 맛만 있음";
//        reviewContent[3] = "그냥 딱 기대만큼의 맛, 접근성은 좋음";
//        reviewContent[4] = "... 그냥 말을 잃었다..";
//        reviewContent[5] = "하아.. 이걸 돈주고 먹어야하나 싶을정도로 처참하고 나의 선택을 후회중";
//        reviewContent[6] = "찾았다 인생맛집!!!!!!!";
//        reviewContent[7] = "리뷰를 쓰면 서비스를 준대서 쓰는데 딱히 뭘 써야할지 모르겠네 ㅎ";
//        reviewContent[8] = "그만쓰고싶어 리뷰좀.. ";
//        reviewContent[9] = "무난 그 자체";
//
//
//        for(int i = 0; i<10000; i++){
//            int memberId = (int)(Math.random()*13)+1; // 3 ~ 12
//            int resId = (int)(Math.random()*1213)+1;
//            reviewVO.setTaste((int)(Math.random()*10)+1);
//            reviewVO.setClean((int)(Math.random()*10)+1);
//            reviewVO.setLocation((int)(Math.random()*10)+1);
//            reviewVO.setService((int)(Math.random()*10)+1);
//            reviewVO.setAvg((float)(reviewVO.getTaste()+reviewVO.getClean()+reviewVO.getLocation()+reviewVO.getService())/8);
//            reviewVO.setContent(reviewContent[(int)(Math.random()*10)]);
//            RestaurantVO restaurantVO = restaurantService.restaurantInfo(resId);
//            reviewVO.setRes_id(String.valueOf(resId));
//
//            reviewVO.setMem_id(String.valueOf(memberId));
//            reviewVO.setRes_tell(restaurantVO.getResTell());
//            reviewService.ReviewSave(reviewVO);
//        }
        return "redirect:/restaurant/restaurantInfo?resId="+restaurant.getResId();
    }


    @RequestMapping("/reviewUpdate")
    public String reviewUpdate(ReviewVO reviewVO){
        System.out.println("ReviewController reviewUpdate" + reviewVO.getReview_id());
        reviewVO.setAvg((reviewVO.getTaste()+reviewVO.getClean()+reviewVO.getLocation()+reviewVO.getService())/8);
        reviewService.ReviewUpdate(reviewVO);

        return "recommend/Main";
    }
//
//    @GetMapping("/review/reviewselect")
//    public String ReviewSel(ReviewVO vo, Model model){
//        System.out.println("ReviewController 39line : " );
//        ReviewVO reviewInfo = reviewService.reviewInfo(ReviewV.getreview_id())
//        model.addAttribute()
//        return "review/feed";
//    }


    /**
     * 메인페이지 리뷰
     */
    @PostMapping("/mainReview")
    @ResponseBody
    public List<ReviewVO> mainReview(String foodKind){
        List<ReviewVO> reviewList = reviewService.mainReview(foodKind);

        return reviewList;
    }

    /**
     * 식당 상세페이지 해당 식당 리뷰 가져오기
     */
    @PostMapping("/restaurantInfoReview")
    @ResponseBody
    public List<ReviewVO> restaurantInfoReview(RestaurantVO restaurantVO){
        List<ReviewVO> reviewList = reviewService.restaurantInfoReview(restaurantVO);

        return reviewList;
    }

}
