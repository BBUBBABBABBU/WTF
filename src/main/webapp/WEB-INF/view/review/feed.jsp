<%--
  Created by IntelliJ IDEA.
  User: kosmo_17
  Date: 2021-02-24
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/res/css/feed.css">
<link rel="stylesheet" href="/res/css/feedimg.css">


<head>
    <title>피드</title>
</head>
<body>
<header>
    <!--메인화면과 동일하게 헤더 구성-->
<nav class="navbar navbar-light custom-navbar">
    <div class="container">
        <a class="navbar-brand" href="/"><h1>네가 이걸 먹을줄은 정말 몰랐어</h1></a>
    </div>
</nav>
<nav class="navbar navbar-light custom-navbar">
    <div class="container">
        <form>
            <input type="text" placeholder="검색" size='50'>
            <button type="input" class="btn btn-info">검색</button>
        </form>
        <a href="#" class="burger" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
        </a>
    </div>
</nav>
<div class="collapse navbar-collapse custom-navmenu" id="main-navbar">
    <div class="container py-2 py-md-5">
        <div class="row align-items-start">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <ul class="custom-menu">
                    <li class="active"><a href="index.html">마이페이지</a></li>
                    <li><a href="about.html">피드</a></li>
                    <li><a href="services.html">로그아웃</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    -->
                </ul>
            </div>
        </div>

    </div>
</div>
</header>

<section class="blog_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="blog_left_sidebar">
                    <article class="blog_details">
                        <div class="blog_item_img">
                            <img class="profile-img img-circle"
                                 src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200722_231%2F1595418023591O4SrJ_JPEG%2Fupload_28b25e815f5d78422adfcb0f1d2805b7.jpg">작성자이름
                            <p>
                            <h3>식당</h3>
                            <h3>월,일</h3>
                            </p>
                            </div>
                            <!--img list-->
                            <img class="card-img img-rounded"
                                src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200722_231%2F1595418023591O4SrJ_JPEG%2Fupload_28b25e815f5d78422adfcb0f1d2805b7.jpg">
                            <img class="card-img img-rounded"
                                 src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200722_231%2F1595418023591O4SrJ_JPEG%2Fupload_28b25e815f5d78422adfcb0f1d2805b7.jpg">
                            <img class="card-img img-rounded"
                                 src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200722_231%2F1595418023591O4SrJ_JPEG%2Fupload_28b25e815f5d78422adfcb0f1d2805b7.jpg">
                        </div>
                        <ul class="blog_details">
                            <div class="container"></div>
                            <div class="col-md-3">맛 <span value="1">★☆☆☆☆</span></div>
                            <div class="col-md-3">위생<span value="1">★☆☆☆☆</span></div>
                            <div class="col-md-3">서비스<span value="1">★☆☆☆☆</span></div>
                            <div class="col-md-3">접근성<span value="1">★☆☆☆☆</span></div>
                        </ul>
                        <div class="blog_details">
                            <h5>식당 위치</h5>
                            <p>스시 먹고싶다</p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    푸터 넣을거? 동일하게
</footer>
</body>
</html>
