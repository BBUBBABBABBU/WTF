<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-02
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%--
    QUIXLAB-MASTER > blank.html
    tinydash-master > light > contacts-grid.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>adminManagerList.jsp / 관리자(manager) 목록 (contact)</title>

    <%--meta tag--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--tinydash-master > light > contacts-grid.html--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--tinydash-master > light > contacts-grid.html--%>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
          rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/app-light.css"
          id="lightTheme">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/app-dark.css" id="darkTheme"
          disabled>

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        // alert('0')
        $(document).ready(function () {
            // alert('ready')
            $("div[class='card-body text-center']").click(function () {
                alert('click')
                location.href = "/managerDetail"
            })
        })

    </script>


</head>
<body class="vertical  light  ">


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
        <div class="wrapper">


            <%--                <main role="main" class="main-content">--%>
            <main role="main">

                <div class="container-fluid">
                    <div class="row justify-content-center">

                        <c:forEach var="adminVOList" items="${adminVOList}">

                            <div class="col-md-3">
                                    <%--                                            <a href="/managerDetail">--%>
                                <div class="card shadow mb-4">
                                    <a href="/managerDetail?mgr_id=${adminVOList.mgr_id}">
                                        <div class="card-body text-center" style="cursor: pointer">
                                            <div class="avatar avatar-lg mt-4">
                                                <img src="${pageContext.request.contextPath}/res/mypageTemplate/images/user-3.png"
                                                     alt="..." class="avatar-img rounded-circle"
                                                     style="top: -30px;position: relative;">
                                            </div>
                                            <div class="card-text my-2">
                                                <strong class="card-title my-0">${adminVOList.mgr_name}</strong>
                                                <p class="small text-muted mb-0">${adminVOList.mgr_id}</p>
                                                    <%--<p class="small"><span class="badge badge-light text-muted">${adminVOList.mgr_pass}</span></p>--%>
                                            </div>
                                        </div> <!-- ./card-text -->
                                    </a>

                                        <%--                                                <a href="/managerDetail">--%>


                                        <%--@@@@@@@@@@@@@@@ 필요 X @@@@@@@@@@@@@@@@@--%>
                                    <div class="card-footer">
                                        <div class="row align-items-center justify-content-between">
                                            <div class="col-auto">
                                                <small>
                                                    <span class="dot dot-lg bg-success mr-1"></span> 관리자
                                                </small>
                                            </div>

                                        </div>
                                    </div> <!-- /.card-footer -->
                                </div>
                            </div>
                            <!-- .col -->

                        </c:forEach>

                        <div class="col-md-9">
                        </div> <!-- .col -->
                    </div> <!-- .row -->
                    <nav aria-label="Table Paging" class="my-3">
                        <ul class="pagination justify-content-end mb-0">
                            <li class="page-item"><a class="page-link" href="#">이전</a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">다음</a></li>
                        </ul>
                    </nav>
                </div> <!-- .col-12 -->
        </div> <!-- .row -->
    </div> <!-- .container-fluid -->

    </main> <!-- main -->
</div> <!-- .wrapper -->

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

<!--**********************************
    Scripts
***********************************-->
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/styleSwitcher.js"></script>



</body>

</html>

