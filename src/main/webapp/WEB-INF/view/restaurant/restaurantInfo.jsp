<%--
  Created by IntelliJ IDEA.
  User: kosmo_04
  Date: 2021-03-01
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Portfolio Item - MyPortfolio</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="/res/img/favicon.png" rel="icon">
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
    <link href="/res/css/main/map.css" rel="stylesheet">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b96f15cc4513bf115640f0b076a2ad9
"></script>
</head>
<body>

<nav class="navbar navbar-light custom-navbar">
    <div class="container">
        <a class="navbar-brand" href="/">네가 이걸 먹을줄은 정말 몰랐어</a>

        <a href="#" class="burger" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
        </a>

    </div>
</nav>
<div class="collapse navbar-collapse custom-navmenu" id="main-navbar">
    <div class="container py-2 py-md-5">
        <div class="row align-items-start">
            <div class="col-md-2">
                <ul class="custom-menu">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Me</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li class="active"><a href="works.html">Works</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="col-md-6 d-none d-md-block  mr-auto">
                <div class="tweet d-flex">
                    <span class="icofont-twitter text-white mt-2 mr-3"></span>
                    <div>
                        <p><em>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt
                            ut
                            officiis explicabo inventore. <br> <a href="#">t.co/v82jsk</a></em></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-none d-md-block">
                <h3>Hire Me</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut officiis
                    explicabo inventore. <br> <a href="#">myemail@gmail.com</a></p>
            </div>
        </div>

    </div>
</div>

<main id="main">
    <div class="site-section">
        <%--<div class="container">--%>
            <%--<div class="row mb-4 align-items-center">--%>
                <%--<!-- <div class="col-md-6" data-aos="fade-up">--%>

                  <%--<h2>Work Single Page</h2>--%>
                  <%--<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut officiis--%>
                    <%--explicabo inventore.</p>--%>

                <%--</div> -->--%>
            <%--</div>--%>
        <%--</div>--%>

        <div class="site-section pb-0">
            <div class="container">
                <div class="row align-items-stretch">
                    <div class="col-md-8" data-aos="fade-up">
                        <img src="/res/img/img_1_big.jpg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-md-3 ml-auto" data-aos="fade-up" data-aos-delay="100">
                        <div class="sticky-content" id = 'restaurant_info', name=${restaurantInfo.resId}>
                            <h3 id ='restaurant_name' class="h3">${restaurantInfo.resName}</h3>
                            <p class="mb-4"><span class="text-muted">평점 ${restaurantInfo.resRating}</span></p>

                            <div class="mb-5">
                                <p>${restaurantInfo.resKeyword}</p><br/>
                                <p>주소</p>
                                <p id = 'restaurant_addr'>${restaurantInfo.resAddr}</p>
                                <p id = 'restaurant_tel'>${restaurantInfo.resTell}</p>
                            </div>
                            <h4 class="h4 mb-3">대표 메뉴</h4>
                            <ul class="list-unstyled list-line mb-5">
                                <c:forEach var="restaurantMenu" items="${restaurantMenu}">
                                    <li>${restaurantMenu.menu} - ${restaurantMenu.price}</li>
                                </c:forEach>
                            </ul>

                            <!-- <p><a href="#" class="readmore">Visit Website</a></p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="site-section pb-0">
            <div class="container">
                <div class="row mb-5 align-items-center">
                    <div class="map_wrap col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                        <h2>현 위치(지도)</h2>
                        <div id="restaurant_map" style="width: 1110px; height: 400px;"></div>
                        <div class="custom_zoomcontrol radius_border">
                        </div>
                    </div>
                </div>

                <div class="row justify-content-center text-center mb-4">
                    <div class="col-5">
                        <h3 class="h3 heading">리뷰 사진들</h3>
                    </div>
                </div>

                <div class="row" data-aos="fade-up" data-aos-delay="200">
                    <div class="item web col-sm-6 col-md-4 col-lg-4 mb-4">
                        <a href="work-single.html" class="item-wrap fancybox">
                            <div class="work-info">
                                <h3>Boxed Water</h3>
                                <span>Web</span>
                            </div>
                            <img class="img-fluid" src="/res/img/img_1.jpg">
                        </a>
                    </div>
                    <div class="item photography col-sm-6 col-md-4 col-lg-4 mb-4">
                        <a href="work-single.html" class="item-wrap fancybox">
                            <div class="work-info">
                                <h3>Build Indoo</h3>
                                <span>Photography</span>
                            </div>
                            <img class="img-fluid" src="/res/img/img_2.jpg">
                        </a>
                    </div>
                    <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                        <a href="work-single.html" class="item-wrap fancybox">
                            <div class="work-info">
                                <h3>Cocooil</h3>
                                <span>Branding</span>
                            </div>
                            <img class="img-fluid" src="/res/img/img_3.jpg">
                        </a>
                    </div>
                    <div class="item design col-sm-6 col-md-4 col-lg-4 mb-4">
                        <a href="work-single.html" class="item-wrap fancybox">
                            <div class="work-info">
                                <h3>Nike Shoe</h3>
                                <span>Design</span>
                            </div>
                            <img class="img-fluid" src="/res/img/img_4.jpg">
                        </a>
                    </div>
                    <div class="item photography col-sm-6 col-md-4 col-lg-4 mb-4">
                        <a href="work-single.html" class="item-wrap fancybox">
                            <div class="work-info">
                                <h3>Kitchen Sink</h3>
                                <span>Photography</span>
                            </div>
                            <img class="img-fluid" src="/res/img/img_5.jpg">
                        </a>
                    </div>
                    <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                        <a href="work-single.html" class="item-wrap fancybox">
                            <div class="work-info">
                                <h3>Amazon</h3>
                                <span>brandingn</span>
                            </div>
                            <img class="img-fluid" src="/res/img/img_6.jpg">
                        </a>
                    </div>
                </div>
            </div>
        </div>


        <div class="site-section pb-0">
            <div class="container">
                <div class="row justify-content-center text-center mb-4">
                    <div class="col-5">
                        <h3 class="h3 heading">리뷰 글</h3>
                    </div>
                </div>
                <div class="owl-carousel testimonial-carousel">

                    <div class="testimonial-wrap">
                        <div class="testimonial">
                            <img src="/res/img/person_1.jpg" alt="Image" class="img-fluid">
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus
                                    incidunt ut
                                    officiis explicabo inventore.</p>
                            </blockquote>
                            <p>&mdash; Jean Hicks</p>
                        </div>
                    </div>

                    <div class="testimonial-wrap">
                        <div class="testimonial">
                            <img src="/res/img/person_2.jpg" alt="Image" class="img-fluid">
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus
                                    incidunt ut
                                    officiis explicabo inventore.</p>
                            </blockquote>
                            <p>&mdash; Chris Stanworth</p>
                        </div>
                    </div>

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
<script type="text/javascript" src="/res/js/restaurantMap.js"></script>

</body>
</html>
