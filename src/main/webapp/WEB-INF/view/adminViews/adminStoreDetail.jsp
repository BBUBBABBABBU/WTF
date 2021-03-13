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

    <%--? > ?--%>


</body>

</html>
