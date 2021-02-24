<%--
  Created by IntelliJ IDEA.
  User: kosmo_04
  Date: 2021-02-23
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="/res/css/start.css">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="/res/js/start.js" type="text/javascript"></script>
    <%--<script src="/res/js/map.js" type="text/javascript"></script>--%>

</head>
<body>
<img width="450" src="/res/img/WTF_logo.png">
<h2>네가</h2><br/>
<!--TODO 여기 선택부분 생각 -->
<div class="row">
    <div class="col s5"></div>
    <div class="input-field col s2">
        <form id="kind_form" action="/main" method="post">
            <select id="select_kind" name="kind" style="width: 300px;">
                <option value="" disabled selected>이걸</option>
                <option value="korean">한식</option>
                <option value="chinese">중식</option>
                <option value="western">양식</option>
                <option value="japanese">일식</option>
            </select>
        </form>
    </div>
</div>
<h2>먹을줄은 정말로 몰랐어</h2>

메인 , 추천
지도 다시확인

<a href="/adminHome">관리자페이지로</a>

<a href="recommend/recommend"> 추천 화면 가기 </a>


</body>
</html>
