<%--
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
    <title>MyPortfolio</title>
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
    <script type="text/javascript" src="/res/js/map.js"></script>

</head>
<body>
<br/>
<a href="recommend/recommend">추천 화면 가보자</a>

<nav class="navbar navbar-light custom-navbar">
    <div class="container">
        <form>
            <input type="text" placeholder="검색" size='50'>
            <button type="input" class="btn btn-info">검색</button>
        </form>
        <img src="">회원 이미지
        <a href="#" class="burger" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
        </a>
    </div>
</nav>
<div class="collapse navbar-collapse custom-navmenu" id="main-navbar">
    <div class="container py-2 py-md-5">
        <div class="row align-items-start">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <ul class="custom-menu">
                    <li class="active"><a href="index.html">마이페이지</a></li>
                    <li><a href="about.html">피드</a></li>
                    <li><a href="services.html">로그아웃</a></li>
                    <li><a href="contact.html">Contact</a></li> -->
                </ul>
            </div>
        </div>

    </div>
</div>

<main id="main">

    <div class="site-section site-portfolio">
        <div class="container">
            <div class="row mb-5 align-items-center">
                <div class="map_wrap col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                    <h2>현 위치(지도)</h2>
                    <div id="map" style="width: 1120px; height: 400px;"></div>
                    <div class="custom_zoomcontrol radius_border">
                        <span><button id="fiveM">500m</button></span>
                        <span><button id="thousandM">1000m</button></span>
                    </div>
                </div>
            </div>
            <br/><br/><br/><br/>

            시작페이지에서 받은 글 위주 추천
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
            <br/><br/><br/><br/>

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

            <div class="site-section site-portfolio">
                <div class="container">
                    <div class="row mb-5 align-items-center">
                        <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                            <h2>니가 이걸 먹을줄 알고 있었어2</h2>
                            <!--<p class="mb-0">Freelance Creative &amp; Professional Graphics Designer</p>-->
                        </div>
                        <div class=" col-md-12 col-lg-6 text-left text-lg-right " data-aos="fade-up" data-aos-delay="100">
                            <div id="filters" class="filters">
                                <a href="#" data-filter="*" class="active">추천순</a>
                                <a href="#" data-filter=".web">평점순</a>
                                <a href="#" data-filter=".design">리뷰순</a>
                                <!--<a href="#" data-filter=".branding">Branding</a>
                                <a href="#" data-filter=".photography">Photography</a>-->
                            </div>
                        </div>
                    </div>
                    <div class="owl-carousel testimonial-carousel">
                        <% for (int i = 0; i<12; i++){ %>
                        <%if(i%6==0){%>
                        <div class="testimonial-wrap">
                            <div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">
                                <%}%>
                                <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                                    <a href="work-single.html" class="item-wrap fancybox">
                                        <div class="work-info">
                                            <h3>Cocooil</h3>
                                            <span>Branding</span>
                                        </div>
                                        <img class="img-fluid" src="/res/img/img_3.jpg">
                                    </a>
                                    <table border="0">
                                        <tr>
                                            <td>상호명</td><td width = 120></td><td rowspan=3>별점</td>
                                        </tr>
                                        <tr>
                                            <td>위치</td>
                                        </tr>
                                        <tr>
                                            <td>좋아요와 리뷰 수</td>
                                        </tr>
                                    </table>
                                </div>
                                <%if(i%6==5){%>
                            </div>
                        </div>
                        <%}%>
                        <%}%>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>
    </div>


    <!-- <div class="site-section">
      <div class="container">
        <div class="row justify-content-center text-center mb-4">
          <div class="col-5">
            <h3 class="h3 heading">My Clients</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit explicabo inventore.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-4 col-sm-4 col-md-2">
            <a href="#" class="client-logo"><img src="img/logo-adobe.png" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-4 col-sm-4 col-md-2">
            <a href="#" class="client-logo"><img src="img/logo-uber.png" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-4 col-sm-4 col-md-2">
            <a href="#" class="client-logo"><img src="img/logo-apple.png" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-4 col-sm-4 col-md-2">
            <a href="#" class="client-logo"><img src="img/logo-netflix.png" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-4 col-sm-4 col-md-2">
            <a href="#" class="client-logo"><img src="img/logo-nike.png" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-4 col-sm-4 col-md-2">
            <a href="#" class="client-logo"><img src="img/logo-google.png" alt="Image" class="img-fluid"></a>
          </div>

        </div>
      </div>
    </div> -->


    <!-- <div class="site-section">
      <div class="container">
        <div class="row justify-content-center text-center mb-4">
          <div class="col-5">
            <h3 class="h3 heading">My Services</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit explicabo inventore.</p>
          </div>
        </div>
        <div class="row">

          <div class="col-12 col-sm-6 col-md-6 col-lg-3">
            <span class="la la-cube la-3x mb-4"></span>
            <h4 class="h4 mb-2">Web Design</h4>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit explicabo inventore.</p>
            <ul class="list-unstyled list-line">
              <li>Lorem ipsum dolor sit amet consectetur adipisicing</li>
              <li>Non pariatur nisi</li>
              <li>Magnam soluta quod</li>
              <li>Lorem ipsum dolor</li>
              <li>Cumque quae aliquam</li>
            </ul>
          </div>
          <div class="col-12 col-sm-6 col-md-6 col-lg-3">
            <span class="la la-mobile la-3x mb-4"></span>
            <h4 class="h4 mb-2">Mobile Applications</h4>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit explicabo inventore.</p>
            <ul class="list-unstyled list-line">
              <li>Lorem ipsum dolor sit amet consectetur adipisicing</li>
              <li>Non pariatur nisi</li>
              <li>Magnam soluta quod</li>
              <li>Lorem ipsum dolor</li>
              <li>Cumque quae aliquam</li>
            </ul>
          </div>
          <div class="col-12 col-sm-6 col-md-6 col-lg-3">
            <span class="la la-image la-3x mb-4"></span>
            <h4 class="h4 mb-2">Graphic Design</h4>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit explicabo inventore.</p>
            <ul class="list-unstyled list-line">
              <li>Lorem ipsum dolor sit amet consectetur adipisicing</li>
              <li>Non pariatur nisi</li>
              <li>Magnam soluta quod</li>
              <li>Lorem ipsum dolor</li>
              <li>Cumque quae aliquam</li>
            </ul>
          </div>
          <div class="col-12 col-sm-6 col-md-6 col-lg-3">
            <span class="la la-search la-3x mb-4"></span>
            <h4 class="h4 mb-2">SEO</h4>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit explicabo inventore.</p>
            <ul class="list-unstyled list-line">
              <li>Lorem ipsum dolor sit amet consectetur adipisicing</li>
              <li>Non pariatur nisi</li>
              <li>Magnam soluta quod</li>
              <li>Lorem ipsum dolor</li>
              <li>Cumque quae aliquam</li>
            </ul>
          </div>
        </div>
      </div>
    </div> -->

    <div class="site-section pt-0">
        <div class="container">

            <div class="owl-carousel testimonial-carousel">

                <div class="testimonial-wrap">
                    <div class="testimonial">
                        <img src="/res/img/person_1.jpg" alt="Image" class="img-fluid">
                        <blockquote>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt
                                ut officiis
                                explicabo inventore.</p>
                        </blockquote>
                        <p>&mdash; Jean Hicks</p>
                    </div>
                </div>

                <div class="testimonial-wrap">
                    <div class="testimonial">
                        <img src="/res/img/person_2.jpg" alt="Image" class="img-fluid">
                        <blockquote>
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
<script type="text/javascript" src="/res/js/map.js"></script>

</body>
</html>
