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


    <!-- =======================================================
      Template Name: MyPortfolio
      Template URL: https://bootstrapmade.com/myportfolio-bootstrap-portfolio-website-template/
      Author: BootstrapMade.com
      Author URL: https://bootstrapmade.com/
    ======================================================= -->
</head>
<body>
<br/>
    <nav class="navbar navbar-light custom-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">MyPortfolio.</a>

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
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="about.html">About Me</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="works.html">Works</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-6 d-none d-md-block  mr-auto">
                    <div class="tweet d-flex">
                        <span class="icofont-twitter text-white mt-2 mr-3"></span>
                        <div>
                            <p><em>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut
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

        <div class="site-section site-portfolio">
            <div class="container">
                <div class="row mb-5 align-items-center">
                    <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                        <h2>니가 이걸 먹을줄 알고 있었어22</h2>
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
                                        <td>${res_allList[0].res_name}</td><td width = 120></td><td rowspan=3>별점</td>
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




        <!--    <div class="site-section">
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
            </div>-->


        <!--   <div class="site-section">
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
           </div>-->

        <div class="site-section pt-0">
            <div class="container">

                <div class="owl-carousel testimonial-carousel">


                    <div class="testimonial-wrap">
                        <div class="testimonial">
                            <img src="/res/img/person_1.jpg" alt="Image" class="img-fluid">
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut officiis
                                    explicabo inventore.</p>
                            </blockquote>
                            <p>&mdash; Jean Hicks</p>
                        </div>

                    </div>


                    <div class="testimonial-wrap">
                        <div class="testimonial">
                            <img src="/res/img/person_2.jpg" alt="Image" class="img-fluid">
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut officiis
                                    explicabo inventore.</p>
                            </blockquote>
                            <p>&mdash; Chris Stanworth</p>
                        </div>

                    </div>

                    <div class="testimonial-wrap">
                        <div class="testimonial">
                            <img src="/res/img/person_2.jpg" alt="Image" class="img-fluid">
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut officiis
                                    explicabo inventore.</p>
                            </blockquote>
                            <p>&mdash; Chris Stanworth</p>
                        </div>

                    </div>

                    <div class="testimonial-wrap">
                        <div class="testimonial">
                            <img src="/res/img/person_2.jpg" alt="Image" class="img-fluid">
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam necessitatibus incidunt ut officiis
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


</body>
</html>
