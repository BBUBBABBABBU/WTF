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
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

    <link rel="stylesheet" href="/res/mypageTemplate/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/animate.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/magnific-popup.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/aos.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/ionicons.min.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/jquery.timepicker.css">


    <link rel="stylesheet"  href="/res/mypageTemplate/css/flaticon.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/icomoon.css">
    <!-- <link rel="stylesheet"  href="your_website_domain/css_root/flaticon.css" >  -->

    <link rel="stylesheet" href="/res/mypageTemplate/css/style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
        .bread{
            font-family: 'Nanum Gothic', sans-serif;
        }
        .colorlib-logo{
            font-family: 'Nanum Gothic', sans-serif;
        }
        /* .breadcrumbs{
            font-family: 'Nanum Gothic', sans-serif;
        } */

    </style>
</head>
<body>

<div id="colorlib-page">
    <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
    <aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
        <h1 id="colorlib-logo"><a href="/mypage"><span class="img" style="background-image: url(/res/mypageTemplate/images/small_logo.png);"></span>[ My Page ]</a></h1>
        <nav id="colorlib-main-menu" role="navigation">
            <ul>
                <li class="colorlib-active"><a href="/mypage">홈</a></li>
                <li><a href="about.html">나의 정보</a></li>
                <li><a href="collection.html">내 업적 / 포인트</a></li>
                <li><a href="blog.html">내 피드 보기</a></li>
                <li><a href="contact.html">내 취향 수정</a></li>
                <li><a href="/service">문의사항</a></li>
            </ul>
        </nav>

    </aside> <!-- END COLORLIB-ASIDE -->
    <div id="colorlib-main">
        <section class="ftco-section ftco-bread">
            <div class="container">
                <div class="row no-gutters slider-text justify-content-center align-items-center">
                    <div class="col-md-8 ftco-animate">
                        <p class="breadcrumbs"><span class="mr-2"><a href="/mypage">마이 페이지 > </a></span> <span>문의사항</span></p>
                        <h1 class="bread">문의사항(Q&A / FAQ)</h1>
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
                                <p>자주 묻는 질문</p>
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
                                <p>1 : 1 전화 문의 </p>
                                <p>( Tel. 333 - 3333 )</p>
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
                    <!--
                                  <div class="col-md-4 d-flex align-sel Searchf-stretch ftco-animate">
                                    <div class="media block-6 services py-4 d-block">
                                      <div class="d-flex justify-content-start">
                                          <div class="icon d-flex align-items-center justify-content-center">
                                              <span class="flaticon-alarm:before"></span>
                                          </div>
                                      </div>
                                      <div class="media-body p-2 mt-2">
                                        <h3 class="heading mb-3">Polaroid Pictures</h3>
                                        <p>A small river named Duden flows by their place and supplies.</p>
                                      </div>
                                    </div>
                                  </div> -->
                    <!--
                                  <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                    <div class="media block-6 services py-4 d-block">
                                      <div class="d-flex justify-content-start">
                                          <div class="icon d-flex align-items-center justify-content-center">
                                              <span class="flaticon-film"></span>
                                      </div>
                                  </div>
                                  <div class="media-body p-2 mt-2">
                                    <h3 class="heading mb-3">Old Fill Roll</h3>
                                    <p>A small river named Duden flows by their place and supplies.</p>
                                  </div>
                                </div>-->
                </div>
            </div>
        </section>

        <!-- ------------------------------------------------------------------------------------------------------ -->



    </div><!-- END COLORLIB-MAIN -->
</div><!-- END COLORLIB-PAGE -->

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
<script src="/res/mypageTemplate/js/jquery.timepicker.min.js"></script>
<script src="/res/mypageTemplate/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="/res/mypageTemplate/js/google-map.js"></script>
<script src="/res/mypageTemplate/js/main.js"></script>

</body>
</html>