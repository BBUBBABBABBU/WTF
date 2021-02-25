<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>로그인 / 회원가입 폼 템플릿</title>
    <link rel="stylesheet" type="text/css" href="/res/css/login.css">
    <link rel="stylesheet" type="text/css" href="/res/css/login2.css">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/res/js/login.js" type="text/javascript"></script>

</head>
<body><img width="450" src="/res/img/WTF_logo.png">
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
<a href="/Join">회원가입 페이지</a>
<button type="button" id="hidden"  onclick=test1()> 버튼</button>







<div class="loginBackground" id = "loginBackground"></div>

<div class="wrap" id="wrap">
    <div class="form-wrap">
        <div class="button-wrap">
            <div id="btn"></div>
            <button type="button" class="togglebtn" id ='loginbtn' >로그인</button>
            <button type="button" class="togglebtn" id ='registerbtn' >회원가입</button>
        </div>
        <div class="social-icons">
            <img src="/res/img/fb.png" alt="facebook">
            <img src="/res/img/tw.png" alt="twitter">
            <img src="/res/img/gl.png" alt="google">
        </div>
        <form id="login" action="/Info" class="input-group" method="post">
            <input type="text" name="email" class="input-field" placeholder="Email을 입력하세요" required>
            <input type="password" name="password" class="input-field" placeholder="Password를 입력하세요" required>
            <input type="checkbox" class="checkbox"><span>Remember Password</span>
            <button class="submit">Login</button>
        </form>
        <form id="register" action="" class="input-group">
            <input type="text" class="input-field" placeholder="User name or Email" required>
            <input type="email" class="input-field" placeholder="Your Email" required>
            <input type="password" class="input-field" placeholder="Enter Password" required>
            <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
            <button class="submit">REGISTER</button>
        </form>
    </div>
</div>


</body>
<script>
    loginForm=document.getElementById('wrap')
    loginBack=document.getElementById('loginBackground')
    function test1(){
        // tes.style.transition="all 3s"
        // // tes.style.transform = " rotate(45deg)"
        loginForm.style.visibility="visible"
        // tes.style.alignItems="center"
        // tes.style.justifyContent= "center"
        loginBack.style.visibility="visible"
        // tes.style.minHeight= "100vh"
    }



</script>


</html>