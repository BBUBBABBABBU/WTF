<%@ page import="java.util.List" %>
<%@ page import="kosmo.orange.wtf.model.vo.ReviewVO" %>
<%@ page import="kosmo.orange.wtf.model.vo.RestaurantVO" %>
<%@ page import="kosmo.orange.wtf.model.vo.PhotoVO" %>
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

<!-- Favicons -->
<link href="/res/img/WTF_logo.png" rel="icon">
<link href="/res/img/apple-touch-icon.png" rel="apple-touch-icon">

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
            <c:choose>
                <c:when test="${sessionScope.member ne null}">
                    <a class="navbar-brand" href="/main?foodKind=${sessionScope.foodKind}"><h1>네가 이걸 먹을줄은 정말 몰랐어</h1></a>
                </c:when>
                <c:otherwise>
                    <a class="navbar-brand" href="/"><h1>네가 이걸 먹을줄은 정말 몰랐어</h1></a>
                </c:otherwise>
            </c:choose>
        </div>
    </nav>
    <nav class="navbar navbar-light custom-navbar2">
        <div class="container">
            <form>
                <input type="text" placeholder="검색" size='50'>
                <button>검색</button>
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
                 <%List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");
                 List<PhotoVO> photoList = (List<PhotoVO>)request.getAttribute("PhotoList");
                List<RestaurantVO> resList = (List<RestaurantVO>)request.getAttribute("ResList");
                List<String> nickList = (List<String>)request.getAttribute("nickList");

                for (int i = 0 ;i<reviewList.size(); i++){
                    int taste = reviewList.get(i).getTaste()*10;
                    int clean = reviewList.get(i).getClean()*10;
                    int service = reviewList.get(i).getService()*10;
                    int location = reviewList.get(i).getLocation()*10;
                    System.out.println(taste);
                 %>
                <article>
                    <div class="chat-container" style="border-radius: 5%;">
                        <div class="left-padding">
                             <div style="width: 100%;">
                                <h1>리뷰 입력한 이미지 캐러셀?</h1>
                             </div>
                            <div class="review_img">

                                <%--<img class="review_img"  src="/res/img/img_1.jpg">--%>
                                <div>
                                     <li> <%=nickList.get(i) %> </li>
                                     <div class="star-section col-md-3">
                                          <h2>맛</h2>
                                            <span class="star-rating">
                                             <span style="width:<%=taste%>%"></span>
                                             </span>
                                     </div>
                                     <div class="star-section col-md-3">
                                        <h2>위생</h2>
                                         <span class="star-rating">
                                             <span style="width:<%=clean%>%"></span>
                                         </span>
                                     </div>
                                     <div class="star-section col-md-3">
                                        <h2>서비스</h2>
                                         <span class="star-rating">
                                             <span style="width:<%=service%>%"></span>
                                             </span>
                                     </div>
                                     <div class="star-section col-md-3">
                                        <h2>접근성</h2>
                                             <span class="star-rating">
                                             <span  style="width:<%=location%>%"></span>
                                             </span>
                                      </div>
                         </div>
                         <div >
                           <p><%=reviewList.get(i).getContent()%></p>
                         </div>
                         <h3>가게정보</h3>
                        <div >
                            <span><img  style="width: 100%; border-radius: 10% " src="<%=photoList.get(i).getRtr_pic_loc()%>"></span>
                            <span><%=resList.get(i).getResName()%> :  </span>
                            <span><%=reviewList.get(i).getRes_tell()%></span>
                        </div>
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
                            <div class="chat-container1">
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
