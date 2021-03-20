<%@ page import="kosmo.orange.wtf.model.vo.QnaVO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-08
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>

    <title>adminQnA.jsp</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">


    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
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
                            <h4 class="card-title">유저 QnA 관리</h4>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration">
                                    <thead>
                                    <tr>
                                        <th>문의번호</th>
                                        <th>회원번호</th>
                                        <th>제목</th>
                                        <th>등록일자</th>
                                        <th>답변여부</th>
                                        <%--<th>Salary</th>--%>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <%--adninQnaController로 연결--%>
                                    <c:forEach items="${adminqnaList}" var="admin_qna_list">

                                        <tr>
                                            <td><a href="adminqnadetail?qna_id=${admin_qna_list.qna_id }">
                                                    ${admin_qna_list.qna_id }</a></td>
                                            <td><a href="adminqnadetail?qna_id=${admin_qna_list.qna_id }">
                                                    ${admin_qna_list.member_id }</a></td>

                                            <td><a href="adminqnadetail?qna_id=${admin_qna_list.qna_id }">
                                                    ${admin_qna_list.qna_title}</a></td>

                                            <td><a href="adminqnadetail?qna_id=${admin_qna_list.qna_id }">
                                                    ${admin_qna_list.qna_date}</a></td>

                                            <td><a href="adminqnadetail?qna_id=${admin_qna_list.qna_id }">
                                                    ${admin_qna_list.anw_check}</a></td>

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
<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>

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


