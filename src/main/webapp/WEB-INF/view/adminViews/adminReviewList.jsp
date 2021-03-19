<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-02
  Time: 02:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminReviewList.jsp / 리뷰 전체 리스트</title>
    <%--meta tag--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">
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

                <div class="row page-titles mx-0">
                    <div class="col p-md-0">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
                        </ol>
                    </div>
                </div>
                <!-- row -->

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">유저 리뷰</h4>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered zero-configuration">
                                            <thead>
                                            <tr>
                                                <th>상호명</th>
                                                <th>유저명</th>
                                                <th>평점</th>
                                                <th>맛</th>
                                                <th>서비스</th>
                                                <th>위치</th>
                                                <th>청결</th>
                                                <th>리뷰 내용</th>
                                                <th>등록일</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <c:forEach var="reviewList" items="${reviewList}">

                                                <tr class="restaurant">
                                                    <td><a href="/storeDetail?resId=${reviewList.restaurantVO.resId}">${reviewList.restaurantVO.resName}</a> </td>
                                                    <td>${reviewList.memberVO.nickname}</td>
                                                    <td>${reviewList.avg}</td>
                                                    <td>${reviewList.taste}</td>
                                                    <td>${reviewList.service}</td>
                                                    <td>${reviewList.location}</td>
                                                    <td>${reviewList.clean}</td>
                                                    <td>${reviewList.content}</td>
                                                    <td>${reviewList.review_date}</td>
                                                </tr>

                                            </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #/ container -->

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

<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
</body>
</html>