<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-16
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

    <script>
        /* 추천별 리뷰 비율 보기*/
        var ratio = new Array();
        var count = new Array();
        <c:forEach items="${originRatio}" var="item1">

        ratio.push("${item1.subject}");

        count.push("${item1.count}");

        </c:forEach>

        var originRatio2=new Array();

        for(var i=0; i<ratio.length; i++){
            var json= new Object();
            json.y=ratio[i];
            json.item1=count[i];
            originRatio2.push(json);
        }

        /* 지역별 리뷰 비율 보기*/
        var addrSubject = new Array();
        var addrCount = new Array();
        <c:forEach items="${addrRatio}" var="item1">

        addrSubject.push("${item1.subject}");

        addrCount.push("${item1.count}");

        </c:forEach>

        var addrRatio=new Array();

        for(var i=0; i<addrSubject.length; i++){
            var json= new Object();
            json.subject=addrSubject[i];
            json.count=addrCount[i];
            addrRatio.push(json);
        }

        //리뷰 점수 비율 가져오기
        var pointRating = new Array();
        var pointCount = new Array();
        var pountPeriod = new Array();

        <C:forEach items ="${ratingRatio}" var="item1">

        pointRating.push("${item1.subject}");
        pointCount.push("${item1.count}")
        pountPeriod.push("${item1.period}")

        </C:forEach>

        var ratingRatio = new Array();

        for (var i=0; i<pointRating.length; i++){
            var json = new Object();
            json.period = pountPeriod[i];
            json.count = pointCount[i];
            json.rating = pointRating[i];
            ratingRatio.push(json);
        }

        //시간 대별 리뷰수
        var timeCount = new Array();
        var timePeriod = new Array();

        <C:forEach items = "${timeRatio}" var="item1">

        timeCount.push("${item1.count}");
        timePeriod.push("${item1.period}");

        </C:forEach>

        var timeRatio = new Array();

        for (var i = 0; i < timeCount.length; i++) {
            var json = new Object();
            json.period = timePeriod[i];
            json.count = timeCount[i];
            timeRatio.push(json);
        }



    </script>


</head>
<body>
    <input id = "originRatio" type="hidden" value=${originRatio}>


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
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">추천 별 리뷰 현황</h4>
                                <div id="morris-donut-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">지역별 리뷰 현황</h4>
                                <div id="morris-donut-chart2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">시간 대별 리뷰 수</h4>
                                <div id="extra-area-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">별점 별 리뷰 수</h4>
                                <div id="morris-bar-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Line Chart</h4>
                                <div id="morris-line-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Line Chart</h4>
                                <div id="morris-area-chart"></div>
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

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>

    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/gleek.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/styleSwitcher.js"></script>

    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/raphael/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/plugins-init/morris-init.js"></script>



</body>
</html>
