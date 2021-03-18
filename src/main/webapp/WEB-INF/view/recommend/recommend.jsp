<%@ page import="kosmo.orange.wtf.model.vo.RecommendVO" %>
<%@ page import="java.util.List" %><%--
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

    <%--폰트 연결--%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&display=swap"
          rel="stylesheet">

    <%--제이 쿼리--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="/res/js/recommend.js"></script>


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-9XSZH4656Q"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-9XSZH4656Q');
    </script>

    <!-- =======================================================
      Template Name: MyPortfolio
      Template URL: https://bootstrapmade.com/myportfolio-bootstrap-portfolio-website-template/
      Author: BootstrapMade.com
      Author URL: https://bootstrapmade.com/
    ======================================================= -->
</head>
<body>
<jsp:include page="/WEB-INF/view/header_footer/mainHeader.jsp"/>


<main id="main">

    <div class="site-section site-portfolio">

        <div class="container recommend_container1">
            <div class="row mb-5 align-items-center">
                <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                    <h1>니가 이걸 먹을줄 알고 있었어</h1>
                    <!--<p class="mb-0">Freelance Creative &amp; Professional Graphics Designer</p>-->
                </div>

                <div class=" col-md-12 col-lg-6 text-left text-lg-right " data-aos="fade-up" data-aos-delay="100">
                    <div>
                        <span class="recommend_orderBy clickPointer" name="recom"> 추천순 </span>
                        <span class="recommend_orderBy clickPointer" name="rating"> 평점순 </span>
                        <span class="recommend_orderBy clickPointer" name="review"> 리뷰순 </span>



                        <!--<a href="#" data-filter=".branding">Branding</a>
                        <a href="#" data-filter=".photography">Photography</a>-->

                    </div>
                </div>
            </div>

            <div id='recommend_div1' class="owl-carousel testimonial-carousel">

                <% List<RecommendVO> res_allList = (List<RecommendVO>) request.getAttribute("res_allList");
                    List<String> photoList = (List<String>) request.getAttribute("photoList");
                    for (int i = 0; i < 12; i++) { %>

                <%if (i % 6 == 0) {%>

                <div class="testimonial-wrap">
                    <div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">
                        <%}%>

                        <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                            <a href="/restaurant/restaurantInfo?resId=<%=res_allList.get(i).getRes_id()%>&origin=recom1" class="item-wrap fancybox">
                                <div class="work-info">
                                    <h3><%=res_allList.get(i).getRes_keyword()%></h3>
                                </div>
                                <%--                                    <img width="400" height="400" class="img-fluid" src=<%=photoList.get(i)%>>--%>
                                <img class="res_img" width="400" height="300" src=<%=photoList.get(i)%>>
                            </a>
                            <table border="0">
                                <tr>
                                    <td class='detail_des' width=350><%=res_allList.get(i).getRes_name()%>
                                        <span class="res_rating"><%=res_allList.get(i).getRes_rating()%></span></td>
                                </tr>
                                <tr>
                                    <td class='detail_des2'
                                        width=350><%=res_allList.get(i).getRes_addr().split(" ")[1]%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='detail_des2' width=350>추천 :<%=res_allList.get(i).getLike_count()%>  리뷰
                                        :<%=res_allList.get(i).getReview_count()%>
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




        </div>

        <div class="container recommend_container2">
            <div class="row mb-5 align-items-center">
                <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                    <h1>니가 이걸 먹어 보면 어떨까</h1>
                    <!--<p class="mb-0">Freelance Creative &amp; Professional Graphics Designer</p>-->
                </div>

                <div class=" col-md-12 col-lg-6 text-left text-lg-right " data-aos="fade-up" data-aos-delay="100">
                    <div>
                        <span class="recommend_orderBy2 clickPointer" name="recom"> 추천순 </span>
                        <span class="recommend_orderBy2 clickPointer" name="rating"> 평점순 </span>
                        <span class="recommend_orderBy2 clickPointer" name="review"> 리뷰순 </span>


                        <!--<a href="#" data-filter=".branding">Branding</a>
                        <a href="#" data-filter=".photography">Photography</a>-->

                    </div>
                </div>
            </div>

            <div id='recommend_div2' class="owl-carousel testimonial-carousel">

                <% List<RecommendVO> res_allList2 = (List<RecommendVO>) request.getAttribute("res_allList2");
                    List<String> photoList2 = (List<String>) request.getAttribute("photoList2");
                    for (int i = 0; i < 12; i++) { %>

                <%if (i % 6 == 0) {%>

                <div class="testimonial-wrap">
                    <div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">
                        <%}%>

                        <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                            <a href="/restaurant/restaurantInfo?resId=<%=res_allList2.get(i).getRes_id()%>&origin=recom2"  class="item-wrap fancybox">
                                <div class="work-info">
                                    <h3><%=res_allList2.get(i).getRes_keyword()%></h3>
                                </div>
                                <%--                                    <img width="400" height="400" class="img-fluid" src=<%=photoList.get(i)%>>--%>
                                <img class="res_img" width="400" height="300" src=<%=photoList2.get(i)%>>
                            </a>
                            <table border="0">
                                <tr>
                                    <td class='detail_des' width=350><%=res_allList2.get(i).getRes_name()%>
                                        <span class="res_rating"><%=res_allList2.get(i).getRes_rating()%></span></td>
                                </tr>
                                <tr>
                                    <td class='detail_des2'
                                        width=350><%=res_allList2.get(i).getRes_addr().split(" ")[1]%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='detail_des2' width=350>추천 :<%=res_allList2.get(i).getLike_count()%>  리뷰
                                        :<%=res_allList2.get(i).getReview_count()%>
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

        </div>

        <div class="container recommend_container3">
            <div class="row mb-5 align-items-center">
                <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                    <h1>니가 이걸 안먹어 봤단 말이야?</h1>
                    <!--<p class="mb-0">Freelance Creative &amp; Professional Graphics Designer</p>-->
                </div>

                <div class=" col-md-12 col-lg-6 text-left text-lg-right " data-aos="fade-up" data-aos-delay="100">
                    <div>
                        <span class="recommend_orderBy3 clickPointer" name="recom"> 추천순 </span>
                        <span class="recommend_orderBy3 clickPointer" name="rating"> 평점순 </span>
                        <span class="recommend_orderBy3 clickPointer" name="review"> 리뷰순 </span>


                        <!--<a href="#" data-filter=".branding">Branding</a>
                        <a href="#" data-filter=".photography">Photography</a>-->

                    </div>
                </div>
            </div>

            <div id='recommend_div3' class="owl-carousel testimonial-carousel">

                <% List<RecommendVO> res_allList3 = (List<RecommendVO>) request.getAttribute("res_allList3");
                    List<String> photoList3 = (List<String>) request.getAttribute("photoList3");
                    for (int i = 0; i < 12; i++) { %>

                <%if (i % 6 == 0) {%>

                <div class="testimonial-wrap">
                    <div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">
                        <%}%>

                        <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                            <a href="/restaurant/restaurantInfo?resId=<%=res_allList3.get(i).getRes_id()%>&origin=recom3"  class="item-wrap fancybox">
                                <div class="work-info">
                                    <h3><%=res_allList3.get(i).getRes_keyword()%></h3>
                                </div>
                                <%--                                    <img width="400" height="400" class="img-fluid" src=<%=photoList.get(i)%>>--%>
                                <img class="res_img" width="400" height="300" src=<%=photoList3.get(i)%>>
                            </a>
                            <table border="0">
                                <tr>
                                    <td class='detail_des' width=350><%=res_allList3.get(i).getRes_name()%>
                                        <span class="res_rating"><%=res_allList3.get(i).getRes_rating()%></span></td>
                                </tr>
                                <tr>
                                    <td class='detail_des2'
                                        width=350><%=res_allList3.get(i).getRes_addr().split(" ")[1]%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='detail_des2' width=350>추천 :<%=res_allList3.get(i).getLike_count()%>  리뷰
                                        :<%=res_allList3.get(i).getReview_count()%>
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

 <%--   <div class="site-section pt-0">
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
    </div>--%>
</main>

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

<!-- Template JS File -->
<script src="/res/js/main.js"></script>


</body>
</html>
