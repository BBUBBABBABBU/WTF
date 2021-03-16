<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-15
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>adminBoardDetail.jsp / 글 상세 보여주는 페이지</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/plugins/summernote/dist/summernote.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <script type="text/javascript">

        // 수정, 삭제
        function articleUpdate(param) {
            alert('ararticleUpdate + ' + param);

            // 입력 폼 확인 - 비번 입력 확인
            var frm = document.frm;
            if(!frm.board_pw.value){
                alert("비번 없음")
                form.board_pw.focus();
                return;
            }


            var con = "";

            // 수정
            if(param == 'u') {
                con = confirm("수정 ㄱ?");
                if(con){

                    $("#boardForm").attr("action", "/updateArticle");
                    $("#boardForm").submit();

                    // document.getElementById("sep").va = "u";
                    // $("#boardForm").submit();

                }
            }

            // 삭제
            if(param == 'd') {
                con = confirm("삭제 ㅇㅋ?");
                if(con) {
                    document.getElementById("sep").value = "d";
                    postForm();
                    $("#boardForm").attr()
                    submit();
                }
            }

        } // end of articleUpdate

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

                                <%--게시글 폼*********************--%>
                                <%--<div class="form-group">--%>
                                <form name="frm" method="post" id="boardForm" action="">
                                    <input type="hidden" name="sep" value="" id="sep">
                                    <c:set var="board_id" value="${adminBoardVO.board_id}"></c:set>
                                    <input type="hidden" name="board_id">
                                    <input type="text" class="form-control input-default" placeholder="제목" name="board_title" readonly value="${adminBoardVO.board_title}"><br>
                                    <%--</div>--%>
                                    <%--<div class="basic-form">--%>
                                    <%--<form>--%>
                                    <div class="row">
                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="닉네임" name="board_writer" readonly value="${adminBoardVO.board_writer}">
                                        </div>
                                        <div class="col">
                                            <input type="password" class="form-control" placeholder="비밀번호" name="board_pw">
                                        </div>
                                    </div><br>
                                    <%--</form>--%>
                                    <%--</div>--%>
                                    <textarea name="content" style="display: none;"></textarea>
                                    <div id="" class="">${adminBoardVO.board_content}</div><br>
                                </form>

                                <div class="outline-button">
                                    <button type="button" class="btn mb-1 btn-outline-primary" onclick="articleUpdate('u');" id="update">수정</button>
                                    <button type="button" class="btn mb-1 btn-outline-danger" onclick="articleUpdate('d');" id="delete">삭제</button>
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

    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/summernote/dist/summernote.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/summernote/dist/summernote-init.js"></script>


</body>
</html>

