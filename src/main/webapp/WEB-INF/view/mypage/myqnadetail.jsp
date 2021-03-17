<%--
  Created by IntelliJ IDEA.
  User: bigst
  Date: 2021-03-01
  Time: 오후 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>wtf MY Q&A Detail</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

    </style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="/res/js/mypage/mypage.js/"></script>

</head>
<body>


<div id="colorlib-page">
    <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
    <aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
        <h1 id="colorlib-logo"><a href="/mypage"><span class="img" style="background-image: url(/res/mypageTemplate/images/id-card-4.png);"></span>[ 마이 페이지 ]</a></h1>
        <nav id="colorlib-main-menu" role="navigation">
            <ul>
                <%--<li class="colorlib-active"><a href="/mypage">홈</a></li>--%>
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
                        <p class="breadcrumbs"><span class="mr-2"><a href="/mypage">마이 페이지 / </a></span>문의 상세<span
                                class="mr-2"><a href="/service">문의사항</a></span>
                            <!-- <span>문의사항</span></p> -->
                        <h1 class="bread">문의사항(MY Q&A Detail)</h1>
                    </div>
                </div>
            </div>
        </section>

        <!-- 문의 사항 작성 부분 -->

        <section class="ftco-section">
            <div class="container">

                <div class="comment-form-wrap pt-5">
                    <h3 class="mb-5">To.Developer ( 개발자에게 )</h3>
                    <form action="/myqnadetail" class="p-3 p-md-5 bg-light">

                        <div class="form-group">
                            <label for="id">Email(ID)</label>
                            <input type="input" class="form-control" id="id" name="member_id" value="${sessionScope.member.email}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="title">제목</label>
                            <input type="text" class="form-control" id="title" name="qna_title"
                                   value="${qna.qna_title}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="content">문의 내용</label>
                            <textarea name="qna_content" id="content" cols="30" rows="10"
                                      class="form-control" disabled>${qna.qna_content} </textarea>
                        </div>
                    </form>
                </div>

                <div class="comment-form-wrap pt-5">
                    <h3 class="mb-5">From.Developer ( 개발자 답변 )</h3>
                    <form id="detail_form" action="deleteQna?qna_id=${qna.qna_id}" method = "post" class="p-3 p-md-5 bg-light">

                        <div class="form-group">
                            <label for="reply">Reply ( 개발자 답변 )</label>
                            <textarea name="anw_content" id="reply" cols="30" rows="10"
                                      class="form-control" disabled>${qna.anw_content} </textarea>
                        </div>
                        <div class="form-group">
                            <input id = "delete_button" type="submit" value="문의 글 삭제" class="btn py-3 px-4 btn-primary">
                        </div>
                    </form>
                </div>
            </div><!-- END con -->
        </section>


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