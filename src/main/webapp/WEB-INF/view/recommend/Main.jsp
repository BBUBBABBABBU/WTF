<%@ page import="kosmo.orange.wtf.model.vo.RecommendVO" %>
<%@ page import="java.util.List" %>
<%@ page import="kosmo.orange.wtf.model.vo.RestaurantVO" %><%--
  Created by IntelliJ IDEA.
  User: kosmo_04
  Date: 2021-02-22
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>네가 이걸 먹을줄은 정말 몰랐어</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="/res/img/WTF_logo.png" rel="icon">
    <link href="/res/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Inconsolata:400,700|Raleway:400,700&display=swap"
          rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/res/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="/res/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
    <link href="/res/vendor/aos/aos.css" rel="stylesheet">
    <link href="/res/vendor/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/res/css/style.css" rel="stylesheet">
    <link href="/res/css/main/main.css" rel="stylesheet">
    <link href="/res/css/font.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
    </style>

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b96f15cc4513bf115640f0b076a2ad9&libraries=services"></script>
    <script type="text/javascript" src="/res/js/review/mainReview.js"></script>
    <script type="text/javascript" src="/res/js/mainSort.js"></script>

</head>
<body>

<%--헤더 파일--%>
<jsp:include page="/WEB-INF/view/header_footer/mainHeader.jsp"/>

<main id="main">
    <%--선택 음식좋류를 넘겨줌--%>
    <input type="hidden" id="foodKind" value="${foodKind}">

    <div class="site-section site-portfolio">
        <div id='recommend_container' class="container">
            <div id="map_div" class="row mb-5 align-items-center">
                <div class="map_wrap col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                    <h2>내 위치</h2>
                    <div id="map" style="width: 1110px; height: 400px;"></div>
                    <div class="custom_zoomcontrol radius_border">
                        <span><button id="fiveM" class="radius_button" value="500">5분 거리</button></span>
                        <span><button id="thousandM" class="radius_button" value="1000">10분 거리</button></span>
                        <span><button id="twentyM" class="radius_button" value="2000">20분 거리</button></span>
                    </div>
                </div>
            </div>
            <div id="category" class="row mb-5 align-items-center">
                <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up"></div>
                <div  class=" col-md-12 col-lg-6 text-left text-lg-right " data-aos="fade-up"
                     data-aos-delay="100">
                    <div style="margin-right: 70px">
                        <span class="recommend_orderBy clickPointer font_hans" name="recommend_order"> 추천순 </span>
                        <span class="recommend_orderBy clickPointer font_hans" name="rating_order"> 평점순 </span>
                        <span class="recommend_orderBy clickPointer font_hans" name="review_order"> 리뷰순 </span>
                    </div>
                </div>
            </div>

            <div id="recommend_div" class="owl-carousel testimonial-carousel">

                <% List<RestaurantVO> restaurantList = (List<RestaurantVO>) request.getAttribute("restaurantList");
                    List<String> photoList = (List<String>) request.getAttribute("photoList");
                    for (int i = 0; i < 30; i++) { %>

                <%if (i % 6 == 0) {%>

                <div class="testimonial-wrap">
                    <div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">
                        <%}%>
                        <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                            <a href='/restaurant/restaurantInfo?resId=<%=restaurantList.get(i).getResId()%>'
                               id='restaurant_img' class="item-wrap fancybox"
                               name=<%=restaurantList.get(i).getResId()%>>
                                <div class="work-info">
                                    <h3>Cocooil</h3>
                                    <span>Branding</span>
                                </div>
                                <img class="res_img" width="400" height="300" src=<%=photoList.get(i)%>>
                                <%--<img class="res_img" width="400" height="300" src="/res/img/ing.jpg">--%>
                            </a>
                            <table border="0">
                                <tr>
                                    <td class='detail_des' width=350><%=restaurantList.get(i).getResName()%><span
                                            class="res_rating"><%=restaurantList.get(i).getResRating()%></span></td>
                                </tr>
                                <tr>
                                    <td class='detail_des2'
                                        width=350><%=restaurantList.get(i).getResAddr().split(" ")[1]%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='detail_des2' width=350>추천 :<%=restaurantList.get(i).getLikeCount()%>  리뷰
                                        :<%=restaurantList.get(i).getReviewCount()%>
                                    </td>
                                    <td></td>
                                </tr>

                            </table>
                        </div>
                        <%if (i % 6 == 5) {%>

                    </div>
                </div>
                <%}%>

                <%}%>
            </div>
            <br/><br/><br/>


            팔로워들 글
            <div id="portfolio-grid" class="row no-gutter" data-aos="fade-up" data-aos-delay="200">
                <div class="item web col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>상호 명</h3>
                            <span>키워드</span>
                        </div>
                        <img class="img-fluid" src="/res/img/img_1.jpg">
                    </a>
                    <p>상호명 평점</p>
                    <p>주소</p>
                </div>
                <div class="item photography col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Build Indoo</h3>
                            <span>Photography</span>
                        </div>
                        <img class="img-fluid" src="/res/img/img_2.jpg">
                    </a>
                    <p>상호명 평점</p>
                    <p>주소</p>
                </div>
                <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Cocooil</h3>
                            <span>Branding</span>
                        </div>
                        <img class="img-fluid" src="/res/img/img_3.jpg">
                    </a>
                    <p>상호명 평점</p>
                    <p>주소</p>
                </div>
                <div class="item design col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Nike Shoe</h3>
                            <span>Design</span>
                        </div>
                        <img class="img-fluid" src="/res/img/img_4.jpg">
                    </a>
                    <p>상호명 평점</p>
                    <p>주소</p>
                </div>
                <div class="item photography col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Kitchen Sink</h3>
                            <span>Photography</span>
                        </div>
                        <img class="img-fluid" src="/res/img/img_5.jpg">
                    </a>
                    <p>상호명 평점</p>
                    <p>주소</p>
                </div>
                <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Amazon</h3>
                            <span>brandingn</span>
                        </div>
                        <img class="img-fluid" src="/res/img/img_6.jpg">
                    </a>
                    <p>상호명 평점</p>
                    <p>주소</p>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section pt-0">
        <div id="review_container" class="container">
            <div id="review_div" class="owl-carousel testimonial-carousel">
                <div class="testimonial-wrap">
                    <div class="testimonial">
                        <blockquote>
                            <a href=""><h3>가게명</h3></a>
                            <h4>4.28</h4>
                            <p>내용 블라블라</p>
                        </blockquote>
                        <p>&mdash; 닉네임</p>
                    </div>
                </div>

                <div class="testimonial-wrap">
                    <div class="testimonial">
                        <blockquote>
                            <h3>가게명 평점</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt
                                ut officiis
                                explicabo inventore.</p>
                        </blockquote>
                        <p>&mdash; Chris Stanworth</p>
                    </div>
                </div>

            </div>

        </div>
    </div>
</main>

<%--푸터 파일--%>
<jsp:include page="/WEB-INF/view/header_footer/mainFooter.jsp"/>

<!-- Vendor JS Files -->
<script src="/res/vendor/jquery/jquery.min.js"></script>
<script src="/res/vendor/jquery/jquery-migrate.min.js"></script>
<script src="/res/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/res/vendor/easing/easing.min.js"></script>
<script src="/res/vendor/php-email-form/validate.js"></script>
<script src="/res/vendor/isotope/isotope.pkgd.min.js"></script>
<script src="/res/vendor/aos/aos.js"></script>
<script src="/res/vendor/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Main JS File -->
<script src="/res/js/main.js"></script>
<script type="text/javascript" src="/res/js/mainPage.js"></script>

</body>
</html>
