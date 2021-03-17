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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
        #searchFail_img{
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <%--<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b96f15cc4513bf115640f0b076a2ad9--%>
    <%--"></script>--%>
    <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b96f15cc4513bf115640f0b076a2ad9&libraries=services"></script>


</head>
<body>
<br/>
<nav class="navbar navbar-light custom-navbar">
    <div class="container" id="header_container">
        <c:choose>
            <c:when test="${sessionScope.member ne null}">
                <a class="navbar-brand" href="/main?foodKind=${sessionScope.foodKind}"><h1>네가 이걸 먹을줄은 정말 몰랐어</h1></a>
            </c:when>
            <c:otherwise>
                <a class="navbar-brand" href="/"><h1>네가 이걸 먹을줄은 정말 몰랐어</h1></a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>
<nav class="navbar navbar-light custom-navbar2">
    <div class="container">
        <form action="/restaurant/searchRestaurant" method="get">
            <input type="text" name="resKeyword" placeholder="검색" size='65'>
            <input type="submit" class="btn btn-info" value="검색">
        </form>
        <a href="#" class="burger" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
        </a>
    </div>
</nav>
<div class="collapse navbar-collapse custom-navmenu" id="main-navbar">
    <div class="container py-2 py-md-5">
        <div class="row align-items-start">
            <div class="col-md-9"></div>
            <div class="col-md-3">
                <ul class="custom-menu">
                    <ul class="custom-menu">
                        <li><a href="/mypage">마이페이지</a></li>
                        <li><a href="/recommend">상세추천</a></li>
                        <li><a href="/review/feed">피드</a></li>
                        <li><a href="/memberLogout">로그아웃</a></li>
                        <li><a href="/chat">채팅</a></li>
                    </ul>
                </ul>
            </div>
        </div>
    </div>
</div>

<main id="main">
    <%--선택 음식좋류를 넘겨줌--%>
    <input type="hidden" id="foodKind" value="${foodKind}">

    <div class="site-section site-portfolio">
        <div id='recommend_container' class="container">

            <br/><br/><br/>

            <div id="recommend_div" class="">

                <div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">
                    <c:if test="${fn:length(restaurantList)==0}">
                        <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                            <img src="/res/img/searchFail.jpg" id="searchFail_img">
                        </div>
                    </c:if>
                    <c:forEach var="restaurantList" items="${restaurantList}">
                        <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                            <a href='/restaurant/restaurantInfo?resId=${restaurantList.resId}'
                               id='restaurant_img' class="item-wrap fancybox"
                               name=${restaurantList.resId}>
                                <div class="work-info">
                                    <h3>Cocooil</h3>
                                    <span>Branding</span>
                                </div>
                                <img class="res_img" width="400" height="300" src=${restaurantList.rtr_pic_loc}>
                            </a>
                            <table border="0">
                                <tr>
                                    <td class='detail_des' width=350>${restaurantList.resName}<span
                                            class="res_rating">${restaurantList.resRating}</span></td>
                                </tr>
                                <tr>
                                    <td class='detail_des2'
                                        width=350>${restaurantList.resAddr}
                                    </td>
                                </tr>
                                <tr>
                                    <td class='detail_des2' width=350>추천 :${restaurantList.likeCount} 리뷰
                                        :${restaurantList.reviewCount}
                                    </td>
                                    <td></td>
                                </tr>

                            </table>
                        </div>
                    </c:forEach>
                </div>

                <br/><br/><br/>
            </div>
        </div>
    </div>

</main>

<footer class="footer" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <p class="mb-1">&copy; Copyright MyPortfolio. All Rights Reserved</p>
                <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=MyPortfolio
                    -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
            <div class="col-sm-6 social text-md-right">
                <a href="#"><span class="icofont-twitter"></span></a>
                <a href="#"><span class="icofont-facebook"></span></a>
                <a href="#"><span class="icofont-dribbble"></span></a>
                <a href="#"><span class="icofont-behance"></span></a>
            </div>
        </div>
    </div>
</footer>

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

</body>
</html>
