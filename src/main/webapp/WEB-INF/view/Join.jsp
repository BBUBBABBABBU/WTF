<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>로그인 / 회원가입 폼 템플릿</title>
    <link rel="stylesheet" type="text/css" href="/res/css/login.css">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/res/js/js.js" type="text/javascript"></script>



    <style>
        div.test {
            width: 2000px;
            height:1334px;
            padding: 40px;
            background-image: url( "/res/img/background.jpg" );
            opacity: 0.5;
        }
        div.wrap {
            opacity: 1.0;
        }
        p {
            padding: 30px;
            font-size: 50px;
            font-weight: bold;
            text-align: center;
            background-color: #ffffff;
            background-color: rgba( 255, 255, 255, 0.5 );
        }
    </style>

</head>
<body>








<div class="test">
<div class="wrap">
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
        <form id="login" action="/test" class="input-group" method="get">
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
</div>


</body>



<%--<script>--%>
<%--    // var x = document.getElementById("login");--%>
<%--    // var y = document.getElementById("register");--%>
<%--    // var z = document.getElementById("btn");--%>
<%--    //--%>
<%--    //--%>
<%--    // function login(){--%>
<%--    //     x.style.left = "50px";--%>
<%--    //     y.style.left = "450px";--%>
<%--    //     z.style.left = "0";--%>
<%--    // }--%>
<%--    //--%>
<%--    // function register(){--%>
<%--    //     x.style.left = "-400px";--%>
<%--    //     y.style.left = "50px";--%>
<%--    //     z.style.left = "110px";--%>
<%--    // }--%>
<%--</script>--%>
</body>

</html>