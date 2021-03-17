<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-11
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%--meta tag--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--? > ?--%>

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <%--QUIXLAB-MASTER > blank.html--%>
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">
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
    <link href="/res/css/restaurant/restaurantInfo.css" rel="stylesheet">
    <link href="/res/css/font.css" rel="stylesheet">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b96f15cc4513bf115640f0b076a2ad9
"></script>
    <%--? > ?--%>

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

</head>
<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">



        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
        <!-- 여기부터 헤더 -->
        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
        <jsp:include page="/WEB-INF/view/adminViews/layout/adminHeader.jsp"/>
        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
        <!-- 여기까지 헤더 -->
        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->



        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <div class="site-section pb-0">
                <div class="container">
                    <div class="row align-items-stretch">
                        <div class="col-md-8" data-aos="fade-up">
                            <img id = "restaurant_img" src=${restaurantPhoto} alt="Image" class="img-fluid">
                        </div>
                        <div class="col-md-3 ml-auto" data-aos="fade-up" data-aos-delay="100">
                            <div class="sticky-content" id='restaurant_info' , name=${restaurantInfo.resId}>
                                <h3 id='restaurant_name' class="h3 font_hans" style="font-size: 25px">${restaurantInfo.resName}</h3>
                                <p class="mb-4"><span class="text-muted font_hans">평점 ${restaurantInfo.resRating}</span></p>

                                <div class="mb-5">
                                    <p class="font_hans">${restaurantInfo.resKeyword}</p><br/>
                                    <p class="font_hans" style="font-size: 25px">주소</p>
                                    <p id='restaurant_addr' class="font_hans">${restaurantInfo.resAddr}</p>
                                    <p id='restaurant_tel' class="font_hans">${restaurantInfo.resTell}</p>
                                </div>
                                <h4 class="h4 mb-3 font_hans" style="font-size: 25px">대표 메뉴</h4>
                                <ul class="list-unstyled list-line mb-5">
                                    <c:forEach var="restaurantMenu" items="${restaurantMenu}">
                                        <li class="font_hans">${restaurantMenu.menu} - ${restaurantMenu.price}</li>
                                    </c:forEach>
                                </ul>
                                <a  href="/review/reviewinsert?resId=${restaurantInfo.resId}&origin=${origin}" name="RestaurantVO" class="font_hans" >리뷰작성하기</a>
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
                            <br/>
                            <input type="hidden" id="marker_restaurantImg" value="${restaurantPhoto}"/>
                            <div id="restaurant_map" style="width: 1080px; height: 400px;"></div>
                            <div class="custom_zoomcontrol radius_border">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--요기부터 내용 입력 !!!!!!!!!!!!!!!-->

        </div>
        <!--**********************************
        Content body end
        ***********************************-->



        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->
        <!-- 여기부터 푸터 -->
        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->
        <jsp:include page="/WEB-INF/view/adminViews/layout/adminFooter.jsp"/>
        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->
        <!-- 여기까지 푸터 -->
        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->



    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->


    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

    <%--QUIXLAB-MASTER > blank.html--%>
    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/gleek.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/styleSwitcher.js"></script>
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

    <%--? > ?--%>


</body>

</html>
