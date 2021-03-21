<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-15
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>adminBoardForm.jsp / 게시판에 글 등록하는 폼</title>

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
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            // alert('adminBoardForm.jsp');
            alert('글번호 : ' + ${id});
            // alert('sep : ' + $('#sep').val());
        });


            // 입력 폼 확인 - 글 신규 등록 (저장버튼 클릭시)
        function formCheck(param) {
            // alert('formCheck param + ' + param);

            var frm = document.frm;

            if(!frm.board_title.value) {
                alert("제목 없음");
                form.board_title.focus();
                return;
            }
            if(!frm.board_writer.value) {
                alert("작성자 없음");
                form.board_writer.focus();
                return;
            }
            if(!frm.board_pw.value) {
                alert("비번 없음");
                form.board_pw.focus();
                return;
            }
            // if(!frm.board_content.value) {
            //     alert("내용 없음");
            //     form.board_content.focus();
            //     return;
            // }

            document.getElementById("sep").value = "i";
            postForm();
            frm.submit();

        } // end of formCheck



        // 수정, 삭제
        function articleUpdate(param) {
            // alert('ararticleUpdate + ' + param);

            var frm = document.frm;

            if(!frm.board_title.value) {
                alert("제목 없음");
                form.board_title.focus();
                return;
            }
            if(!frm.board_writer.value) {
                alert("작성자 없음");
                form.board_writer.focus();
                return;
            }
            if(!frm.board_pw.value) {
                alert("비번 없음");
                form.board_pw.focus();
                return;
            }

            var con = "";

            // 수정
            if(param == 'u') {
                con = confirm("수정 ㄱ?");
                if(con){
                    <%--alert('board_id = ' + ${id});--%>
                    document.getElementById("article_id").value = "${id}";
                    document.getElementById("sep").value = "u";
                    postForm();
                    $("#boardForm").submit();
                }
            }

            // 삭제
            if(param == 'd') {
                con = confirm("삭제 ㅇㅋ?");
                if(con) {
                    document.getElementById("sep").value = "d";
                    postForm();
                    $("#boardForm").submit();
                }
            }

        } // end of articleUpdate


        // Form 보내기
        function postForm() {
            // alert('postForm');

            $('textarea[name="content"]').val($('#summernote').summernote('code'));

        } // end of postForm


        // 목록 이동
        function list() {
            location.href = "/board";
        }



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
                                <form name="frm" method="post" id="boardForm" action="/boardAction">

                                    <input type="hidden" name="board_id" value="0" id="article_id">
                                    <input type="hidden" name="sep" value="${sep}" id="sep">

                                    ${message}
                                    <input type="text" class="form-control input-default" placeholder="제목" name="board_title" id="board_title" value="${adminBoardVO.board_title}"><br>
                                <%--</div>--%>
                                <%--<div class="basic-form">--%>
                                    <%--<form>--%>
                                        <div class="row">
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="닉네임" name="board_writer" id="board_writer" value="${adminBoardVO.board_writer}">
                                            </div>
                                            <div class="col">
                                                <input type="password" class="form-control" placeholder="비밀번호" name="board_pw">
                                            </div>
                                        </div><br>
                                    <%--</form>--%>
                                <%--</div>--%>
                                    <textarea name="content" style="display: none;"></textarea>
                                    <div id="summernote" class="summernote">${adminBoardVO.board_content}</div><br>
                                </form>

                                <div class="outline-button">

                                    <button type="button" class="btn mb-1 btn-outline-dark" onclick="list();">목록</button>

                                    <c:set var="b_id" value="${id}"></c:set>
                                    <c:choose>

                                        <%--게시글 id 값이 없으면 저장 버튼--%>

                                        <c:when test="${b_id eq 0}">
                                            <button type="button" class="btn mb-1 btn-outline-success" onclick="formCheck('i');" id="save">저장</button>
                                        </c:when>

                                        <%--id 값이 있으면 수정/삭제 버튼--%>
                                        <c:otherwise>
                                            <button type="button" class="btn mb-1 btn-outline-primary" onclick="articleUpdate('u');" id="update">수정</button>
                                            <%--<button type="button" class="btn mb-1 btn-outline-danger" onclick="articleUpdate('d');" id="delete">삭제</button>--%>
                                        </c:otherwise>


                                    </c:choose>
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
