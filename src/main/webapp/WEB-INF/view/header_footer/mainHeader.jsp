<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_04
  Date: 2021-03-17
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-light custom-navbar">
    <div class="container" id = "header_container">
        <c:choose>
            <c:when test="${sessionScope.member ne null}">
                <a class="navbar-brand" href="/main?foodKind=${sessionScope.foodKind}"><section><h1 style="color: darksalmon">${sessionScope.member.nickname}</h1><h2>네가 이걸 먹을줄은 정말로 몰랐어</h2></section></a>
            </c:when>
            <c:otherwise>
                <a class="navbar-brand" href="/"><h1>네가 이걸 먹을줄은 정말로 몰랐어</h1></a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>
<div class="collapse navbar-collapse custom-navmenu show" id="main-navbar">
    <div class="container py-2 py-md-5">
        <div class="row align-items-start">
            <div class="col-md-9"></div>
            <div class="col-md-3">
                <ul class="custom-menu">
                    <li><a href="/mypage">마이페이지</a></li>
                    <li><a href="/recommend">상세추천</a></li>
                    <li><a href="/review/feed">피드</a></li>
                    <li><a href="/memberLogout">로그아웃</a></li>
                    <li><a href="/chat">채팅</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-light custom-navbar2">
    <div id="search_container" class="container">
        <form action="/restaurant/searchRestaurant" method="get">
            <input type="text" name="resKeyword" placeholder="검색" size='65' style="border-color: burlywood;">
            <input type="submit" class="btn btn-info" value="검색" style="background: #fcf9da; border-color: #fcf9da; color: black; font-family: 'Black Han Sans', sans-serif; font-size: x-large;">
        </form>
        <a href="#" class="burger active" data-toggle="collapse" data-target="#main-navbar">
            <span></span>
        </a>
    </div>
</nav>
