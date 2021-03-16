<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-02
  Time: 02:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    String num = request.getParameter("num");
%>

<html>
<head>

    <title>adminBoard.jsp / 관리자 게시판 > 익명 게시판? 페이지</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            alert("ready?")

            // 글 번호
            $("tr.board").click(function () {
                alert('click board function');

                var articleNo = $(this).children().first().text();

                alert(articleNo);
                location.href = "/boardDetail?board_id="+articleNo;

            });


            // 글 목록 등록일 순으로 정렬시키기 (지연함수 사용)
            setTimeout(function() {

                $('.sooort').removeClass('sorting_asc')
                $('.sooort').addClass('sorting');

                $('.down').addClass('sorting_desc');
                $('.down').removeClass('sorting');

            }, 500);

        });

    </script>

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
                                <h4 class="card-title">Data Table</h4>
                                <button type="button" class="btn mb-1 btn-outline-primary" onclick="location.href='boardEnter'">등록</button>

                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                        <tr>
                                            <th class="sooort">글번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th class="down">등록일</th>
                                            <th>최종수정일</th>
                                            <th>조회수</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                        </tr>

                                        <c:forEach var="adminBoardVOList" items="${adminBoardVOList}">

                                            <%--<a href="/boardDetail?board_id=${adminBoardVOList.board_id}">--%>
                                                <tr class="board" style="cursor: pointer;">
                                                    <td>${adminBoardVOList.board_id}</td>
                                                    <td>${adminBoardVOList.board_title}</td>
                                                    <td>${adminBoardVOList.board_writer}</td>
                                                    <td>${fn:substring(adminBoardVOList.board_enterdate, 0, 19)}</td>
                                                    <td>${fn:substring(adminBoardVOList.board_modifydate, 0, 19)}</td>
                                                    <td>${adminBoardVOList.board_viewcount}</td>
                                                </tr>
                                            <%--</a/>--%>

                                        </c:forEach>

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                        </tfoot>
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
