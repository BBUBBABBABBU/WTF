<%@ page import="java.util.List" %>
<%@ page import="kosmo.orange.wtf.model.vo.ReviewVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_17
  Date: 2021-02-24
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7b96f15cc4513bf115640f0b076a2ad9&libraries=services"></script>
<link href="https://fonts.googleapis.com/css?family=Inconsolata:400,700|Raleway:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/res/css/feed.css">
<link rel="stylesheet" href="/res/css/feedimg.css">
<link href="/res/css/style.css" rel="stylesheet">
<link href="/res/css/main/main.css" rel="stylesheet">
<link rel="stylesheet" href="/res/css/cahtting.css" />

<style>
    @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
</style>

<head>
    <title>피드</title>
</head>
<body>
<br/>
    <!--메인화면과 동일하게 헤더 구성-->
    <nav class="navbar navbar-light custom-navbar">
        <div class="container" id = "header_container">
            <a class="navbar-brand" href="/"><h1>네가 이걸 먹을줄은 정말 몰랐어</h1></a>
        </div>
    </nav>
    <nav class="navbar navbar-light custom-navbar2">
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
                <div class="col-md-9"></div>
                <div class="col-md-3">
                    <ul class="custom-menu">
                        <li class="active"><a href="/mypage">마이페이지</a></li>
                        <li><a href="/recommend">상세추천</a></li>
                        <li><a href="about.html">피드</a></li>
                        <li><a href="/chat">채팅</a></li>
                        <li><a href="/memberLogout">로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

<!--Main_Feed_Start -->
<main id = main>

<section class="blog_area section-padding">
    <div class="container">
        <div class="col-md-8">
            <div class="blog_left_sidebar">
                 <% List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");
                 for (int i = 0 ;i<reviewList.size(); i++){ %>
                <article>
                        <div class="blog_item_img">
                            <div>
                                <img class="profile-img img-circle"
                                     src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200722_231%2F1595418023591O4SrJ_JPEG%2Fupload_28b25e815f5d78422adfcb0f1d2805b7.jpg">
                                <span><%=reviewList.get(i).getRes_id()%> : </span>
                                <span><%=reviewList.get(i).getRes_tell()%></span>
                                <li> <%=reviewList.get(i).getMem_id()%> </li>
                            </div>
                        </div>
                             <ul class="blog_details">
                                 <div class="container">
                                     <div class="col-md-2">
                                          <h4>맛</h4>
                                           <li ><%=reviewList.get(i).getTaste()%></li>
                                     </div>
                                     <div class="col-md-2">
                                        <h4>위생</h4>
                                         <li ><%=reviewList.get(i).getClean()%></li>
                                     </div>
                                     <div class="col-md-2">
                                        <h4>서비스</h4>
                                        <li ><%=reviewList.get(i).getService()%></li>
                                     </div>
                                     <div class="col-md-2">
                                        <h4>접근성</h4>
                                        <li ><%=reviewList.get(i).getLocation()%></li>
                                      </div>
                                 </div>
                             </ul>
                             <div class="blog_details">
                                  <p><%=reviewList.get(i).getContent()%></p>
                             </div>
                 </article>
                <%}%>
            </div>
        </div>
        <!-- Main_Feed_End-->
        <!--Right_Sidebar_start-->
        <div class="col-md-4">
            <div class="blog_right_sidebar">
                 <div class="blog_item_img">
                        <div id="username-page">
                            <div class="username-page-container">
                             <form id="usernameForm" name="usernameForm">
                                <input type="hidden" id="name" placeholder="Username" autocomplete="off" class="form-control" value="${nickname}"/>
                            <div class="form-group">
                                <button id="chatStart" type="submit" class="accent username-submit">채팅 시작하기</button>
                            </div>
                            </form>
                        </div>
                 </div>
                <div id="chat-page" class="hidden">
                            <div class="chat-container">
                                <div class="chat-header">
                                    <h4>채팅</h4>
                                </div>
                                <div class="connecting">
                                    연결중...
                                </div>
                                <ul id="messageArea">
                                </ul>
                                <form id="messageForm" name="messageForm">
                                    <div class="form-group">
                                        <div class="input-group clearfix">
                                            <input type="text" id="message" placeholder="Type a message..." autocomplete="off" class="form-control"/>
                                            <button type="submit" class="primary">보내기</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>

</section>
</main>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript" src="/res/js/chatting.js"></script>
</html>
