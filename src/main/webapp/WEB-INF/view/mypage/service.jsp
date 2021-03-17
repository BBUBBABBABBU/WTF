<%--
  Created by IntelliJ IDEA.
  User: bigst
  Date: 2021-03-01
  Time: 오후 10:22
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>wtf 문의사항</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%--    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">--%>

    <link rel="stylesheet" href="/res/mypageTemplate/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/animate.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/magnific-popup.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/aos.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/ionicons.min.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/bootstrap-datepicker.css">
<%--    <link rel="stylesheet" href="/res/mypageTemplate/css/jquery.timepicker.css">--%>


    <link rel="stylesheet"  href="/res/mypageTemplate/css/flaticon.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/icomoon.css">
    <!-- <link rel="stylesheet"  href="your_website_domain/css_root/flaticon.css" >  -->

    <link rel="stylesheet" href="/res/mypageTemplate/css/style.css">

<%--faq js / css--%>
    <link rel="stylesheet" href="/res/mypageTemplate/faqchat/faq.css">
    <script src='http://code.jquery.com/jquery-1.11.3.min.js'></script>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
        .bread{
            font-family: 'Black Han Sans',sans-serif;
        }
        .colorlib-logo{
            font-family: 'Nanum Gothic', sans-serif;
        }
        /* .breadcrumbs{
            font-family: 'Nanum Gothic', sans-serif;
        } */
        

        .answer {
            display: none;
            padding-bottom: 5px;
            padding: 5px 0;
            text-align: left;
            background: #c4c4c4;
            border-radius: 12px;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 13px;


        }
        #faq-title {
            font-size: 25px;
        }
        .faq-content {
            border-bottom: 1px solid #e0e0e0;
        }
        .question {
            font-size: 15px;
            padding: 5px 0;
            cursor: pointer;
            border: none;
            outline: none;
            background: #00000008;
            width: 100%;
            text-align: left;
            border-radius: 12px;
            /* border-color: darkgray; */
            font-family: 'Jua', sans-serif;
        }
        .question:hover {
            color: #fcf9da;
        }
        [id$="-toggle"] {
            margin-right: 15px;
        }

    </style>

    <script type="text/javascript" src="/res/js/mypage/mypage.js/"></script>



</head>
<body>

<div id="colorlib-page">
    <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
    <aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
        <h1 id="colorlib-logo"><a href="/mypage"><span class="img" style="background-image: url(/res/mypageTemplate/images/id-card-4.png);"></span>[ 마이 페이지 ]</a></h1>
        <nav id="colorlib-main-menu" role="navigation">
            <ul>
                <%--<li class="colorlib-active"><a href="/mypage">홈</a></li>--%>
                <li><a href="mypage/myInfo">나의 정보</a></li>
                <li><a href="collection.html">내 업적 / 포인트</a></li>
                <li><a href="blog.html">내 피드 보기</a></li>
                <li><a href="contact.html">내 취향 수정</a></li>
                <li><a href="/service">문의사항</a></li>
                <li><a href="/main?foodKind="+${sessionScope.foodKind}>메인으로 가기</a></li>

            </ul>
        </nav>

    </aside> <!-- END COLORLIB-ASIDE -->
    <div id="colorlib-main">
        <section class="ftco-section ftco-bread">
            <div class="container">
                <div class="row no-gutters slider-text justify-content-center align-items-center">
                    <div class="col-md-8 ftco-animate">
                        <p class="breadcrumbs"><span class="mr-2"><a href="/mypage">마이 페이지</a></span> <span>문의사항</span></p>
                        <h1 class="bread">문의사항 (Q&A / FAQ)</h1>
                    </div>
                </div>
            </div>
        </section>



        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block">
                            <div class="d-flex justify-content-start">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-add:before"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">Q&A</h3>
                                <a href="/qna">개발자에게 문의 글 쓰기</a>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block">
                            <div class="d-flex justify-content-start">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-alarm:before"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">FAQs</h3>
                                <a class="prime">자주 묻는 질문</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block">
                            <div class="d-flex justify-content-start">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-alarm:before"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">CALL </h3>
                                <p id = "call_center">1 : 1 전화 문의 </p>
                                <%--<p>( Tel. 333 - 3333 )</p>--%>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block">
                            <div class="d-flex justify-content-start">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-alarm:before"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">MY(Q&A)</h3>
                                <a href="/myqnalist">내가 보낸 문의 사항</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- ------------------------------------------------------------------------------------------------------ -->



<!-- ------------------------------------------------- Faq ----------------------------------------------------- -->
        <div class="fabs">
            <div class="chat">
                <div class="chat_header">
                    <div class="chat_option">
                        <div class="header_img">

                            <img src="/res/mypageTemplate/images/045-question.png"/>
                        </div>
                        <span id="chat_head">FAQs</span> <br> <span class="agent">자주 묻는 질문</span> <span class="online">(Quick Q&A)</span>
                        <span id="chat_fullscreen_loader" class="chat_fullscreen_loader"><i class="fullscreen zmdi zmdi-window-maximize"></i></span>

                    </div>

                </div>
                <div class="chat_body chat_login">
                    <a id="chat_first_screen" class="fab"><i class="zmdi zmdi-arrow-right"></i></a>
                    <p>[ 'WTF' FAQ BOX ] </p>
                </div>


                <div id="chat_converse" class="chat_body">

                    <div class="chat_category">
                        <a id="chat_second_screen" class="fab"><i class="zmdi zmdi-arrow-left"></i></a>
                        <!-- <p>회원들이 가장 많이 묻는 질문은?</p> -->
                        <ul>
                            <li id="member"><a>회원관련</a></li>
                            <li id="rest"><a>맛집관련</a></li>

                            <!-- <li>other</li> -->
                        </ul>
                    </div>
                </div>



                <!-- 회원관련 (1)번쨰 <li>태그 -->
                <div id="chat_body" class="chat_conversion chat_converse">
                    <a id="chat_screen_no1" class="fab"><i class="zmdi zmdi-arrow-left"></i></a>

                    <div class="chat_avatar">
                        <button class="question" id="que-1"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-1-toggle"></span><span>'WTF'란 무엇인가요?</span></button>
                        <div class="answer" id="ans-1"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  코스모 73th 2조 교육생들이 만들고 있는중인 빅데이터 기반의 맛집 추천 프로젝트 입니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-2"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-2-toggle"></span><span>'WTF'가 왜 좋은가요?</span></button>
                        <div class="answer" id="ans-2"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  알고리즘 기반의 맛집 추천을 해줌으로서 보다 정확하게 회원님에게 맛집을 추천드리기 때문입니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-3"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-3-toggle"></span><span>'회원 탈퇴'를 하고 싶어요.</span></button>
                        <div class="answer" id="ans-3"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  '회원 정보수정'은 마이페이지에서 가능하나 '회원 탈퇴'를 원하신다면 저희 콜센터로 직접 연락 부탁드립니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-4"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-4-toggle"></span><span>'여기에 가입하면 좋은점은 뭐에요 ?</span></button>
                        <div class="answer" id="ans-4"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  맛집 추천과 더불어 포인트 및 업적 기능과 피드를 통하여 부가적인 재미와 소셜 서비스를 이용 하실 수 있습니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-5"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-5-toggle"></span><span>'유저 평점/리뷰'를 믿어도 되나요?</span></button>
                        <div class="answer" id="ans-5"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  네 맛집에서 직접 먹어본 평가를 취합한 평점과 리뷰임으로 신뢰 하셔도 됩니다 .</div>
                    </div>
                </div>












                <!-- 맛집관련 (2)번쨰 <li>태그 -->
                <div id="chat_form" class="chat_conversion chat_converse">
                    <a id="chat_screen_no2" class="fab"><i class="zmdi zmdi-arrow-left"></i></a>

                    <div class="chat_avatar">
                        <button class="question" id="que-6"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-6-toggle"></span><span>'맛집'이란 무엇인가요?</span></button>
                        <div class="answer" id="ans-6"> <img src="/res/mypageTemplate/images/028-headset.png"/>- 인기가 많고 맛있어서 유명한 음식점입니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-7"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-7-toggle"></span><span>'맛집'에 대한 정보가 충분한가요?</span></button>
                        <div class="answer" id="ans-7"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  매장 기본정보 및 평점, 리뷰 가 있음으로 충분합니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-8"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-8-toggle"></span><span>'맛집'이 가까운데로 추천되나요?</span></button>
                        <div class="answer" id="ans-8"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  처음 wtf 페이지 접속시에 내 gps 기능을 허용하면 내 위치 기준으로 근처 맛집의 데이터를 가져옵니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-9"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-9-toggle"></span><span>'취향 추천'은 정확한가요?'</span></button>
                        <div class="answer" id="ans-9"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  유저가 회원가입시 진행한 취향선택을 통한 정보가 저장되어 나와 비슷한 사람들이 간 맛집의 리뷰 및 평점을 통하여 추천됨으로 보다 정확한 맛집추천을 받을 수 있습니다.</div>
                    </div>

                    <div class="chat_avatar">
                        <button class="question" id="que-10"><img src="/res/mypageTemplate/images/045-question.png"/><span id="que-10-toggle"></span><span>'맛집'을 찾아갔는데 가게가 없어졌어요.. </span></button>
                        <div class="answer" id="ans-10"> <img src="/res/mypageTemplate/images/028-headset.png"/>-  매장 상세페이지에서 신고하기 기능을 클릭하여 통해 없어진 맛집 정보를 저희가 수집하여 웹 페이지를 수정하고 있습니다. </div>
                    </div>




                </div>




                <div class="fab_field">
                    <a id="fab_camera" class="fab"><i class="zmdi zmdi-camera"></i></a>
                    <a id="fab_send" class="fab"><i class="zmdi zmdi-mail-send"></i></a>
                    <textarea id="chatSend" name="chat_message" placeholder="Designed by 'WTF'" class="chat_field chat_message"></textarea>
                </div>
            </div>
            <a  id="prime_fab" class="prime fab"><i class="prime zmdi zmdi-comment-outline"></i></a>
        </div>




    </div><!-- END COLORLIB-MAIN -->
</div><!-- END COLORLIB-PAGE -->


<!-- faq 접기/펼치기 기능 -->
<script>

    const items = document.querySelectorAll('.question');

    function openCloseAnswer() {
        const answerId = this.id.replace('que', 'ans');

        if(document.getElementById(answerId).style.display === 'block') {
            document.getElementById(answerId).style.display = 'none';
            document.getElementById(this.id + '-toggle').textContent = '+';
        } else {
            document.getElementById(answerId).style.display = 'block';
            document.getElementById(this.id + '-toggle').textContent = '-';
        }
    }

    items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>



<!-- =================================================================================================== -->


<script src="/res/mypageTemplate/faqchat/chat.js"></script>





<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="/res/mypageTemplate/js/jquery.min.js"></script>
<script src="/res/mypageTemplate/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/res/mypageTemplate/js/popper.min.js"></script>
<script src="/res/mypageTemplate/js/bootstrap.min.js"></script>
<script src="/res/mypageTemplate/js/jquery.easing.1.3.js"></script>
<script src="/res/mypageTemplate/js/jquery.waypoints.min.js"></script>
<script src="/res/mypageTemplate/js/jquery.stellar.min.js"></script>
<script src="/res/mypageTemplate/js/owl.carousel.min.js"></script>
<script src="/res/mypageTemplate/js/jquery.magnific-popup.min.js"></script>
<script src="/res/mypageTemplate/js/aos.js"></script>
<script src="/res/mypageTemplate/js/jquery.animateNumber.min.js"></script>
<script src="/res/mypageTemplate/js/bootstrap-datepicker.js"></script>
<%--<script src="/res/mypageTemplate/js/jquery.timepicker.min.js"></script>--%>
<script src="/res/mypageTemplate/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="/res/mypageTemplate/js/google-map.js"></script>
<script src="/res/mypageTemplate/js/main.js"></script>

</body>
</html>