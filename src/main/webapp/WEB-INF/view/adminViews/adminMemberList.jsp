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

    <style>

        #searchBar{
            max-width: 75%;

        }
        #searchBtn{
            top: -60px;
            left: 2000px;
            position: sticky;

        }
    </style>

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        // alert('0')
        <%--$(document).ready(function () {--%>
            <%--// alert('ready')--%>
            <%--$("div[id='row align-items-center']").click(function () {--%>
                <%--alert('click')--%>
                <%--location.href = "/memberDetail?email=${memberVOList.email}"--%>
            <%--})--%>
        <%--})--%>
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
                            <h3 class="mb-2">회원 정보</h3>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce
                                sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"></a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">
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

                    <!-- ============================================================== -->
                    <!-- search bar  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="searchBar">
                        <div class="card">
                            <div class="card-body">
                                <form>
                                    <input class="form-control form-control-lg" type="search" placeholder="검색어를 입력해주세요"
                                           aria-label="Search">
                                    <span><button class="btn btn-primary search-btn" type="submit" id="searchBtn">검색하기</button></span>
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



                        <!-- ============================================================== -->
                        <!-- card influencer one -->
                        <!-- ============================================================== -->
                        <c:forEach var="memberVOList" items="${memberVOList}">
                            <div class="card">
                                <%--<a href="/memberDetail">--%>
                                    <div class="card-body">



                                        <a href="/memberDetail?email=${memberVOList.email}">
                                        <div class="row align-items-center" id="row align-items-center" style="cursor: pointer" >

                                            <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12" >
                                                <div class="user-avatar float-xl-left pr-4 float-none">
                                                    <img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/avatar-2.jpg"
                                                         alt="User Avatar" class="rounded-circle user-avatar-xl">
                                                </div>
                                                <div class="pl-xl-3">
                                                    <div class="m-b-0">
                                                        <div class="user-avatar-name d-inline-block">
                                                            <h2 class="font-24 m-b-10">${memberVOList.email}</h2>
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
                                                                class="fa  mr-2  text-primary"></i>${memberVOList.nickname}
                                                            <span class="m-l-10">${memberVOList.gender}<span class="m-l-20">${memberVOList.birthday}</span><span>${memberVOList.favor}</span></span>
                                                        </p>
                                                        <div class="mt-3">
                                                            <p class="mr-1 badge badge-light"></p>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </a>
                                    <div class="border-top user-social-box">
                                        <div class="user-social-media d-xl-inline-block "><span
                                                class="mr-2 twitter-color"> </span><span></span>
                                        </div>
                                        <%--<div class="user-social-media d-xl-inline-block"><span--%>
                                                <%--class="mr-2  pinterest-color"> <i--%>
                                                <%--class="fab fa-pinterest-square"></i></span><span>84,019</span></div>--%>
                                        <%--<div class="user-social-media d-xl-inline-block"><span--%>
                                                <%--class="mr-2 instagram-color"> <i--%>
                                                <%--class="fab fa-instagram"></i></span><span>12,300</span></div>--%>
                                        <%--<div class="user-social-media d-xl-inline-block"><span--%>
                                                <%--class="mr-2  facebook-color"> <i--%>
                                                <%--class="fab fa-facebook-square "></i></span><span>92,920</span></div>--%>
                                        <%--<div class="user-social-media d-xl-inline-block"><span--%>
                                                <%--class="mr-2 medium-color"> <i--%>
                                                <%--class="fab fa-medium"></i></span><span>291</span></div>--%>
                                        <%--<div class="user-social-media d-xl-inline-block"><span--%>
                                                <%--class="mr-2 youtube-color"> <i class="fab fa-youtube"></i></span><span>1291</span>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>

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
