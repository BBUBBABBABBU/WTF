<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-02
  Time: 02:19
  To change this template use File | Settings | File Templates.
--%>
<%--
    QUIXLAB-MASTER > blank.html
    concept-master > influencer-finder.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>adminMemberList.jsp / 회원(member) 목록</title>

    <%--meta tag--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--concept-master > influencer-finder.html--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <%--QUIXLAB-MASTER > blank.html--%>
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--concept-master > influencer-finder.html--%>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/fonts/circular-std/style.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate3/assets/libs/css/style.css">
    <link rel="stylesheet"

          href="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        // alert('0')
        $(document).ready(function () {
            // alert('ready')
            $("div[class='row align-items-center']").click(function () {
                alert('click')
                location.href = "/memberDetail"
            })
        })
    </script>
</head>
<body>

<!--*******************
    Preloader start
********************-->
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"/>
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

        <!--요기부터 내용 입력 !!!!!!!!!!!!!!!-->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <%--            <div class="dashboard-wrapper">--%>
        <div class="influence-finder">
            <div class="container-fluid dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h3 class="mb-2">Influencer Finder </h3>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce
                                sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Influencer Finder
                                            Template
                                        </li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- search bar  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-body">
                                <form>
                                    <input class="form-control form-control-lg" type="search" placeholder="Search"
                                           aria-label="Search">
                                    <button class="btn btn-primary search-btn" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end search bar  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 col-12">
                        <!-- ============================================================== -->
                        <!-- card influencer one -->
                        <!-- ============================================================== -->
                        <div class="card">
                            <div class="card-body member">
                                <div class="row align-items-center" style="cursor: pointer;">
                                    <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="user-avatar float-xl-left pr-4 float-none">
                                            <img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/avatar-1.jpg"
                                                 alt="User Avatar" class="rounded-circle user-avatar-xl">
                                        </div>
                                        <div class="pl-xl-3">
                                            <div class="m-b-0">
                                                <div class="user-avatar-name d-inline-block">
                                                    <h2 class="font-24 m-b-10">Henry Barbara</h2>
                                                </div>
                                                <div class="rating-star d-inline-block pl-xl-2 mb-2 mb-xl-0">
                                                    <i class="fa fa-fw fa-star"></i>
                                                    <i class="fa fa-fw fa-star"></i>
                                                    <i class="fa fa-fw fa-star"></i>
                                                    <i class="fa fa-fw fa-star"></i>
                                                    <i class="fa fa-fw fa-star"></i>
                                                    <p class="d-inline-block text-dark">14 Reviews </p>
                                                </div>
                                            </div>
                                            <div class="user-avatar-address">
                                                <p class="mb-2"><i class="fa fa-map-marker-alt mr-2  text-primary"></i>Salt
                                                    Lake City, UT <span class="m-l-10">Male<span class="m-l-20">29 Year Old</span></span>
                                                </p>
                                                <div class="mt-3">
                                                    <a href="#" class="mr-1 badge badge-light">Fitness</a><a href="#"
                                                                                                             class="mr-1 badge badge-light">Life
                                                    Style</a><a href="#" class="mr-1 badge badge-light">Gym</a><a
                                                        href="#" class="badge badge-light">Crossfit</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="float-xl-right float-none mt-xl-0 mt-4">
                                            <a href="#" class="btn-wishlist m-r-10"><i class="far fa-star"></i></a>
                                            <a href="#" class="btn btn-secondary">Send Messages</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="border-top user-social-box">
                                <div class="user-social-media d-xl-inline-block "><span class="mr-2 twitter-color"> <i
                                        class="fab fa-twitter-square"></i></span><span>13,291</span></div>
                                <div class="user-social-media d-xl-inline-block"><span class="mr-2  pinterest-color"> <i
                                        class="fab fa-pinterest-square"></i></span><span>84,019</span></div>
                                <div class="user-social-media d-xl-inline-block"><span class="mr-2 instagram-color"> <i
                                        class="fab fa-instagram"></i></span><span>12,300</span></div>
                                <div class="user-social-media d-xl-inline-block"><span class="mr-2  facebook-color"> <i
                                        class="fab fa-facebook-square "></i></span><span>92,920</span></div>
                                <div class="user-social-media d-xl-inline-block"><span class="mr-2 medium-color"> <i
                                        class="fab fa-medium"></i></span><span>291</span></div>
                                <div class="user-social-media d-xl-inline-block"><span class="mr-2 youtube-color"> <i
                                        class="fab fa-youtube"></i></span><span>1291</span></div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end card influencer one -->
                        <!-- ============================================================== -->


                        <!-- ============================================================== -->
                        <!-- card influencer one -->
                        <!-- ============================================================== -->
                        <c:forEach var="memberVOList" items="${memberVOList}">
                            <div class="card">
                                <%--<a href="/memberDetail">--%>
                                    <div class="card-body">
                                        <div class="row align-items-center" style="cursor: pointer">
                                            <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <div class="user-avatar float-xl-left pr-4 float-none">
                                                    <img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/avatar-2.jpg"
                                                         alt="User Avatar" class="rounded-circle user-avatar-xl">
                                                </div>
                                                <div class="pl-xl-3">
                                                    <div class="m-b-0">
                                                        <div class="user-avatar-name d-inline-block">
                                                            <h2 class="font-24 m-b-10">${memberVOList.nickname}</h2>
                                                        </div>
                                                        <div class="rating-star d-inline-block pl-xl-2 mb-2 mb-xl-0">
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <p class="d-inline-block text-dark">14 Reviews </p>
                                                        </div>
                                                    </div>
                                                    <div class="user-avatar-address">
                                                        <p class="mb-2"><i
                                                                class="fa fa-map-marker-alt mr-2  text-primary"></i>Avenal,
                                                            CA, USA<span class="m-l-10">Female<span class="m-l-20">24 Year Old</span></span>
                                                        </p>
                                                        <div class="mt-3">
                                                            <a href="#" class="mr-1 badge badge-light">Fitness</a><a
                                                                href="#" class="mr-1 badge badge-light">Life Style</a><a
                                                                href="#" class="mr-1 badge badge-light">Gym</a><a
                                                                href="#" class="badge badge-light">Crossfit</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <div class="float-xl-right float-none mt-xl-0 mt-4">
                                                    <a href="" class="btn-wishlist m-r-10"><i class="far fa-star"></i></a>
                                                    <a href="memberDetail" class="btn btn-secondary">Send Messages</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border-top user-social-box">
                                        <div class="user-social-media d-xl-inline-block "><span
                                                class="mr-2 twitter-color"> <i class="fab fa-twitter-square"></i></span><span>13,291</span>
                                        </div>
                                        <div class="user-social-media d-xl-inline-block"><span
                                                class="mr-2  pinterest-color"> <i
                                                class="fab fa-pinterest-square"></i></span><span>84,019</span></div>
                                        <div class="user-social-media d-xl-inline-block"><span
                                                class="mr-2 instagram-color"> <i
                                                class="fab fa-instagram"></i></span><span>12,300</span></div>
                                        <div class="user-social-media d-xl-inline-block"><span
                                                class="mr-2  facebook-color"> <i
                                                class="fab fa-facebook-square "></i></span><span>92,920</span></div>
                                        <div class="user-social-media d-xl-inline-block"><span
                                                class="mr-2 medium-color"> <i
                                                class="fab fa-medium"></i></span><span>291</span></div>
                                        <div class="user-social-media d-xl-inline-block"><span
                                                class="mr-2 youtube-color"> <i class="fab fa-youtube"></i></span><span>1291</span>
                                        </div>
                                    </div>
                                <%--<a>--%>
                            </div>
                        </c:forEach>
                        <!-- ============================================================== -->
                        <!-- end card influencer one -->
                        <!-- ============================================================== -->


                        <!-- ============================================================== -->
                        <!-- end content -->
                        <!-- ============================================================== -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- influencer sidebar  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="font-16">Sorting By</h3>
                                <select class="form-control">
                                    <option>Followers</option>
                                    <option>Followers</option>
                                </select>
                            </div>
                            <div class="card-body border-top">
                                <h3 class="font-16">Influncer by Rating</h3>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio1" name="customRadio"
                                           class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio1"><i
                                            class="fas fa-star rating-color fa-xs"></i></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio2" name="customRadio"
                                           class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio2"><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs"></i></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio3" name="customRadio"
                                           class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio3"><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs"></i></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio4" name="customRadio"
                                           class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio4"><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs"></i></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio5" name="customRadio"
                                           class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio5"><i
                                            class="fas fa-star rating-color fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs fa-xs"></i><i
                                            class="fas fa-star rating-color fa-xs fa-xs"></i></label>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <h3 class="font-16">Social Media Platform</h3>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck10">
                                    <label class="custom-control-label" for="customCheck10">Facebook</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck11">
                                    <label class="custom-control-label" for="customCheck11">Instagram</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck12">
                                    <label class="custom-control-label" for="customCheck12">Pinterest</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck13">
                                    <label class="custom-control-label" for="customCheck13">Twitter</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck14">
                                    <label class="custom-control-label" for="customCheck14">Youtube</label>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <h3 class="font-16">Influncer Category</h3>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck15">
                                    <label class="custom-control-label" for="customCheck15">Business</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck16">
                                    <label class="custom-control-label" for="customCheck16">Lifestyle</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck17">
                                    <label class="custom-control-label" for="customCheck17">Fitness</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck18">
                                    <label class="custom-control-label" for="customCheck18">Sports</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck19">
                                    <label class="custom-control-label" for="customCheck19">Clothing</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck20">
                                    <label class="custom-control-label" for="customCheck20">Pets & Animals</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck21">
                                    <label class="custom-control-label" for="customCheck21">Beauty & Makeup</label>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <h3 class="font-16">Age Demographics</h3>
                                <select class="form-control">
                                    <option selected>Select the Age</option>
                                    <option value="20-30">20-30</option>
                                    <option value="30-40">30-40</option>
                                    <option value="40-50">40-50</option>
                                </select>
                            </div>
                            <div class="card-body border-top">
                                <a href="#" class="btn btn-secondary btn-lg btn-block">Submit</a>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end influencer sidebar  -->
                    <!-- ============================================================== -->
                </div>
            </div>

        </div>
        <%--            </div>--%>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->

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

<%--concept-master > influencer-finder.html--%>
<!-- Optional JavaScript -->
<!-- jquery 3.3.1 -->
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/jquery/jquery-3.3.1.min.js"></script>--%>
<!-- bootstap bundle js -->
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>--%>
<!-- slimscroll js -->
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/slimscroll/jquery.slimscroll.js"></script>--%>
<!-- main js -->
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/libs/js/main-js.js"></script>--%>


</body>
</html>
