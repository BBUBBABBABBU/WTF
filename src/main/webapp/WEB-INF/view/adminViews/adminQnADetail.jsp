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

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

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





    <section class="ftco-section">
        <div class="container">

            <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">To.Developer ( 개발자에게 )</h3>
                <form action="/adminqnadetail" class="p-3 p-md-5 bg-light">

                    <div class="form-group">
                        <label for="id">Email(ID)</label>
                        <input type="input" class="form-control" id="id" name="member_id" value="${adminqna.member_id}" disabled>
                    </div>

                    <div class="form-group">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" id="title" name="qna_title"
                               value="${adminqna.qna_title}" disabled>
                    </div>

                    <div class="form-group">
                        <label for="content">문의 내용</label>
                        <textarea name="qna_content" id="content" cols="30" rows="10"
                                  class="form-control" disabled>${adminqna.qna_content} </textarea>
                    </div>
                </form>
            </div>

            <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">From.Developer ( 개발자 답변 )</h3>
                <form id="detail_form" action="updateQna?qna_id=${adminqna.qna_id}" method = "post" class="p-3 p-md-5 bg-light">

                    <div class="form-group">
                        <label for="reply">Reply ( 개발자 답변 )</label>
                        <textarea name="anw_content" id="reply" cols="30" rows="10"
                                  class="form-control" >${adminqna.anw_content} </textarea>
                    </div>
                    <div class="form-group">
                        <input id = "update_button" type="submit" value="개발자 답변 완료" class="btn py-3 px-4 btn-primary">
                    </div>
                </form>
            </div>
        </div><!-- END con -->
    </section>












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


