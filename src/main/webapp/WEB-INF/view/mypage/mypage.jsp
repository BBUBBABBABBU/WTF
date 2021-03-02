<%--
  Created by IntelliJ IDEA.
  User: bigst
  Date: 2021-03-01
  Time: 오후 7:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>wtf 마이 페이지</title>
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


    <link rel="stylesheet" href="/res/mypageTemplate/css/flaticon.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/icomoon.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/style.css">


    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
        .big-letter{
            font-family: 'Nanum Gothic', sans-serif;
        }
        .mb-4{
            font-family: 'Nanum Gothic', sans-serif;
        }
        .colorlib-logo{
            font-family: 'Nanum Gothic', sans-serif;
        }
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
        <section class="ftco-section-no-padding bg-light">
            <div class="hero-wrap">
                <div class="overlay"></div>
                <div class="d-flex align-items-center js-fullheight">
                    <div class="author-image text img d-flex">
                        <section class="home-slider js-fullheight owl-carousel">
                            <div class="slider-item js-fullheight" style="background-image: url(/res/mypageTemplate/images/beaf_logo.png);">
                            </div>

                            <div class="slider-item js-fullheight" style="background-image:url(/res/mypageTemplate/images/korea_soup.png);">
                            </div>
                        </section>
                    </div>
                    <div class="author-info text p-3 p-md-5">
                        <div class="desc">
                            <span class="subheading">뭐 먹을지 모를때는?</span>
                            <h1 class="big-letter"># 맛집 추천 </h1>
                            <h1 class="mb-4"> '니가 이걸 먹을줄은 <span>정말로 몰랐어'</span></h1>
                            <p class="mb-4">나의 입맛에 딱 맞는 맛집 추천 어플</p>
                            <!-- <h3 class="signature h1">Louie Smith</h3> -->
                            <ul class="ftco-social mt-3">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>



    </div><!-- END COLORLIB-MAIN -->
</div> <!-- END COLORLIB-PAGE -->

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