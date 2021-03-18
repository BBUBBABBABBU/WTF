<%--
  Created by IntelliJ IDEA.
  User: bigst
  Date: 2021-03-01
  Time: 오후 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>wtf MY Q&A List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%--table--%>
    <link href="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">


    <!-- Favicons -->
    <link href="/res/img/WTF_logo.png" rel="icon">
    <link href="/res/img/apple-touch-icon.png" rel="apple-touch-icon">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

    <link rel="stylesheet" href="/res/mypageTemplate/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/animate.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/magnific-popup.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/aos.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/ionicons.min.css">

    <link rel="stylesheet" href="/res/mypageTemplate/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/jquery.timepicker.css">


    <link rel="stylesheet" href="/res/mypageTemplate/css/flaticon.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/icomoon.css">
    <link rel="stylesheet" href="/res/mypageTemplate/css/style.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');


        .bread{
            font-family: 'Black Han Sans',sans-serif;

        }

        .colorlib-logo {
            font-family: 'Nanum Gothic', sans-serif;
        }

        /* .breadcrumbs{
            font-family: 'Nanum Gothic', sans-serif;
        } */
        .jm-font {
            font-family: 'Noto Sans KR', sans-serif;
            color: black;
            font-size: 21px;
        }

        .tm-font {
            font-family: 'Noto Sans KR', sans-serif;
            color: black;
            font-size: 28px;
        }

        .em-font {
            font-family: 'Noto Sans KR', sans-serif;
            color: black;
            font-size: 22px;
        }
    </style>

</head>
<body>


<div id="colorlib-page">
    <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
    <aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">

        <h1 id="colorlib-logo"><a href="/mypage"><span class="img" style="background-image: url(/res/mypageTemplate/images/id-card-4.png);"></span>[ 마이 페이지 ]</a></h1>
        <nav id="colorlib-main-menu" role="navigation">
            <ul>
                <%--<li class="colorlib-active"><a href="/mypage">홈</a></li>--%>
                <li><a href="/main?foodKind=${sessionScope.foodKind}">메인으로</a></li>
                <li><a href="mypage/myInfo">나의 정보</a></li>
                <li><a href="collection.html">내 업적 / 포인트</a></li>
                <li><a href="blog.html">내 피드 보기</a></li>
                <li><a href="contact.html">내 취향 수정</a></li>
                <li><a href="/service">문의사항</a></li>
            </ul>
        </nav>

    </aside> <!-- END COLORLIB-ASIDE -->
    <div id="colorlib-main">
        <section class="ftco-section ftco-bread">
            <div class="container">
                <div class="row no-gutters slider-text justify-content-center align-items-center">
                    <div class="col-md-8 ftco-animate">

                        <p class="breadcrumbs"><span class="mr-2"><a href="/mypage">마이 페이지 / </a></span><span class="mr-2"><a href="/service">문의사항</a></span>

                            <!-- <span>문의사항</span></p> -->
                        <h1 class="bread">문의사항(Q&A)</h1>
                    </div>
                </div>
            </div>
        </section>


        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <%--<li class="breadcrumb-item"><a>나의 문의 게시글</a></li>--%>
                        <%--<li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>--%>
                    </ol>
                </div>
            </div>
            <!-- row -->

            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">My QnA</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                        <tr>
                                            <th>문의번호</th>
                                            <th>이메일</th>
                                            <th>제목</th>
                                            <th>등록일자</th>
                                            <th>답변여부</th>
                                            <%--<th>Salary</th>--%>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <%--<c:forEach items="${qnaList}" var="qna">--%>

                                            <%--<tr>--%>
                                                <%--<td>${qna.qna_id }</td>--%>

                                                <%--<td align="left"><a href="myqnadetail?qna_id=${qna.qna_id }">--%>
                                                        <%--${qna.member_id }</a></td>--%>
                                                <%--<td>${qna.qna_title} </td>--%>
                                                <%--<td>${qna.qna_date}</td>--%>
                                                <%--<td>${qna.anw_check}</td>--%>

                                            <%--</tr>--%>
                                        <%--</c:forEach>--%>


                                        <c:forEach items="${qnaList}" var="qna">

                                            <tr>
                                                <td>${qna.qna_id }</td>

                                                    <%--<td align="left"><a href="myqnadetail?qna_id=${qna.qna_id }">--%>
                                                    <%--${qna.member_id }</a></td>--%>
                                                <td align="left"><a href="myqnadetail?qna_title=${qna.qna_title}">
                                                        ${sessionScope.member.email}</a></td>
                                                <td>${qna.qna_title} </td>
                                                <td>${qna.qna_date}</td>
                                                <td>${qna.anw_check}</td>

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



    </div><!-- END COLORLIB-MAIN -->
</div><!-- END COLORLIB-PAGE -->

<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>

<%-- table--%>
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>



<script src="/res/mypageTemplate/js/jquery.min.js"></script>
<script src="/res/mypageTemplate/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/res/mypageTemplate/js/popper.min.js"></script>
<script src="/res/mypageTemplate/js/bootstrap.min.js"></script>
<script src="/res/mypageTemplate/js/jquery.easing.1.3.js"></script>
<script src="/res/mypageTemplate/js/jquery.waypoints.min.js"></script>
<script src="/res/mypageTemplate/js/jquery.stellar.min.js"></script>
<script src="/res/mypageTemplate/js/owl.carousel.min.js"></script>
<script src="/res/mypageTemplate/js/jquery.magnific-popup.min.js"></script>
<script src="/res/mypageTemplate/js/aos.js"></script>
<script src="/res/mypageTemplate/js/jquery.animateNumber.min.js"></script>
<script src="/res/mypageTemplate/js/bootstrap-datepicker.js"></script>
<script src="/res/mypageTemplate/js/jquery.timepicker.min.js"></script>
<script src="/res/mypageTemplate/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="/res/mypageTemplate/js/google-map.js"></script>
<script src="/res/mypageTemplate/js/main.js"></script>

</body>
</html>