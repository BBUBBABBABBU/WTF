<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>


<html>
<head>
    <meta charset="utf-8">
    <title>로그인 / 회원가입 폼 템플릿</title>
    <link rel="stylesheet" type="text/css" href="/res/css/login.css">
    <link rel="stylesheet" type="text/css" href="/res/css/login2.css">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/res/js/login.js" type="text/javascript"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <style>
        #naver_id_login{

            background-image:url("/res/img/kakao.png") ;
            width: 30px;
           /*background-image: ;*/
            z-index: 100000;

        }


    </style>

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
지도 다시확인123123

<a href="/adminHome">관리자페이지로</a>

<a href="recommend/recommend"> 추천 화면 가기 </a>
<a href="/Join">회원가입 페이지</a>
<button type="button" id="hidden"  onclick=test1()> 버튼</button>






<%--화면 가운데 로그인 창  --%>
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
            <input type="email" name="email" class="input-field" placeholder="Email을 입력하세요" required>
            <input type="password" name="password" class="input-field" placeholder="Password를 입력하세요" required>
            <input type="checkbox" class="checkbox"><span>Remember Password</span>
            <button class="submit">Login</button>
        </form>
        <form id="register" action="" class="input-group">
            <a id="kakao-login-btn" onclick="kakaoLogin()"><img src="/res/img/kakao.png"></a>
            <input type="email" class="input-field" placeholder="Your Email" required>
            <input type="password" class="input-field" placeholder="Enter Password" required>
            <input type="checkbox" class="checkbox"><span>Terms and conditions</span>
            <button class="submit">REGISTER</button>
        </form>
    </div>
</div>
<%--</div>--%>


<script>
    loginForm=document.getElementById('wrap')
    loginBack=document.getElementById('loginBackground')
    function test1(){

        loginForm.style.visibility="visible"

        loginBack.style.visibility="visible"

    }



</script>



<script>
    window.Kakao.init("04282fd63dd03344508a3be888ff6297");

    //카카오 로그인 버튼을 생성합니다.

    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        image:"/res/img/kakao.png",
        success: function(authObj) { //authObj가 참일때, 자료를 성공적으로 보냈을때 출력되는 부분
            Kakao.API.request({

                url: '/v2/user/me',

                success: function(res) { //res가 참일때, 자료를 성공적으로 보냈을때 출력되는 부분

                    alert(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)

                    alert(res.kakao_account.email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
                    alert(res.kakao_account.gender);
                    alert(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근
                    alert(res.kakao_account.birthday);
                    // res.properties.nickname으로도 접근 가능 )
                    console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력


                    var kakaonickname = res.properties['nickname'];    //카카오톡 닉네임을 변수에 저장
                    var kakaoe_mail =   res.kakao_account.email;    //카카오톡 이메일을 변수에 저장함



                    //카카오톡의 닉네임과,mail을 url에 담아 같이 페이지를 이동한다.
                    window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/Info??kakaonickname="+kakaonickname+"&kakaoe_mail="+kakaoe_mail);

                }
            })
        },
        fail: function(error) { //에러 발생시 에러 메시지를 출력한다.
            alert(JSON.stringify(error));
        }
    });

    function kakaoLogin(){

        window.Kakao.Auth.login({
            scope: 'profile, account_email, gender, birthday',
            success : function(authObj){
                console.log(authObj);
                window.Kakao.API.request({
                    url:'/v2/user/me',
                    success: res=>{
                        alert(res.kakao_account.email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
                        alert(res.kakao_account.gender);
                        alert(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근
                        alert(res.kakao_account.birthday);
                        // res.properties.nickname으로도 접근 가능 )
                        console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력


                        var kakaonickname = res.properties['nickname'];    //카카오톡 닉네임을 변수에 저장
                        var kakaoe_mail =   res.kakao_account.email;    //카카오톡 이메일을 변수에 저장함



                        //카카오톡의 닉네임과,mail을 url에 담아 같이 페이지를 이동한다.
                        window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/Info??kakaonickname="+kakaonickname+"&kakaoe_mail="+kakaoe_mail);


                    }
                });
            }

        });
    }

</script>


<!-- 네이버아이디로로그인 버튼 노출 영역 -->

<div id="naver_id_login"><img src="/res/img/kakao.png">
<picture src=/res/img/kakao.png"></picture>< </div>

<!-- //네이버아이디로로그인 버튼 노출 영역 -->
<script type="text/javascript">
    var naver_id_login = new naver_id_login("xgIAqtm_DJEQkFLVejnq", "http://localhost:8080/Info");
    var state = naver_id_login.getUniqState();
    naver_id_login.setButton("white", 2,40);
    naver_id_login.setDomain("http://localhost:8080");
    naver_id_login.setState(state);
    naver_id_login.setPopup();
    naver_id_login.init_naver_id_login();
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        var email = naver_id_login.getProfileData('email');
        var nickname = naver_id_login.getProfileData('nickname');
        alert(naver_id_login.getProfileData('age'));
        alert(naver_id_login.getProfileData("gender"));
        alert(naver_id_login.getProfileData("birthday"));
        window.location.replace("http://" + window.location.hostname + ((location.port == "" || location.port == undefined) ? "" : ":" + location.port) + "/Info??kakaonickname=" + nickname + "&kakaoe_mail=" + email);
    }
</script>

<form name="Test" action="Info">
    <input type="text" name="s" value="">
    <button type="submit" name="anything_name" value="으아아아아ㅏㄱ">으아아아악</button>
</form>
</body>
</html>