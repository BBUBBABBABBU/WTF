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
    <link rel="stylesheet" type="text/css" href="/res/css/login.css">
    <link rel="stylesheet" type="text/css" href="/res/css/login2.css">
    <script src="/res/js/login.js" type="text/javascript"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>


    <script>
        function normal(){
            window.
            window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port)+"/Info");
        }
        var user=  "${sessionScope.member.getEmail()}";
        var userNick= "${sessionScope.member.getNickname()}";
        var status = "${sessionScope.status}";

        if (status=="fail"){alert("아이디나 비밀번호가 틀렸습니다.")}
        else { sessionStorage.setItem("member",user);}

    </script>
</head>
<body>
<img id ='title01' class="image" src="/res/img/background_img/title01.jpg"/>
<div id='select_div'>
    <form id="kind_form" action="/main" method="get">
        <select id="select_kind" name="kind" onchange="test1()" >
            <option value="" disabled selected><p id="none_selected">이걸</p></option>
            <option value="korean" >한식</option>
            <option value="chinese">중식</option>
            <option value="western">양식</option>
            <option value="japanese">일식</option>
        </select>
    </form>
</div>
<img class="image" src="/res/img/background_img/title02.jpg"/><br/><br/>
<a href="/adminHome">관리자페이지로</a>
<a href="/recommend"> 추천 화면 가기 </a>
<a href="/join">회원가입 페이지</a>
<a href="/review">리뷰 피드</a>
<a href="/reviewinsert">리뷰작성</a>
<a href="/mypage">마이페이지</a>
<br/>
<a href="/userChat">채팅페이지 확인</a>
<<<<<<< HEAD
<button type="button" id="hidden"  onclick=test1()> 버튼</button>
<%--화면 가운데 로그인 창  --%>
<div class="loginBackground" id = "loginBackground"></div>
<div class="wrap" id="wrap">
    <div class="form-wrap">
        <div class="button-wrap" id="button-wrap">
            <div id="btn"></div><table>
            <tb><button type="button" class="togglebtn" id ='loginbtn' >  &nbsp; 로그인</button></tb>
            </tb><button type="button" class="togglebtn" id ='registerbtn' > &nbsp;  회원가입  </button></tb>
        </table>
        </div>
        <div class="social-icons">

        </div>
        <form id="login" action="/memberLogin" class="input-group" method="post">
            <input type="email" name="email" id="loginEmail" class="input-field" placeholder="Email을 입력하세요" required>
            <input type="password" name="password" id="loginPassword" class="input-field" placeholder="Password를 입력하세요" required>
            <button type="submit" class="submit">Login</button>
        </form>
        <form id="register" action="/session2Test" class="input-group">
            <a id="kakao-login-btn" onclick="kakaoLogin()"><img src="/res/img/kakao.png" style="left: 41px;position: relative;top:-30px;" ></a>
            <img id="kakaoSignup" src="/res/img/kakaoSignup.png" style= "left: 82px; top:-30px; ">
            <div id="naver_id_login" style="position: relative;left: 40px;"></div>
            <img id="naverSignup" src="/res/img/naverSignup.png" style= "left: 82px;">
            <a id="normal" href="/Info"><img id="normalSignup" src="/res/img/didntNo.png" style="position: relative;left: 40px; top:30px;"></a>
        </form>
    </div>
</div>
<script>
    loginForm=document.getElementById('wrap')
    loginBack=document.getElementById('loginBackground')
    <%--memSession=${sessionScope.member.getEmail()}--%>

    <%--    로그인,회원가입 가운데 창 보이게하는 함수--%>
    function test1(){
        // if (user.length ==0) {
        loginForm.style.visibility = "visible"
        loginBack.style.visibility = "visible"
        // }
    }
</script>
<script>

    function kakaoLogin(){
        window.Kakao.init("04282fd63dd03344508a3be888ff6297");
        window.Kakao.Auth.login({
            scope: 'profile, account_email, gender, birthday',
            success : function(authObj){
                console.log(authObj);
                window.Kakao.API.request({
                    url:'/v2/user/me',
                    success: res=>{
                        // res.properties.nickname으로도 접근 가능 )
                        console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력

                        var kakaonickname = res.properties['nickname'];    //카카오톡 닉네임을 변수에 저장
                        var kakaoe_mail =   res.kakao_account.email;    //카카오톡 이메일을 변수에 저장함
                        var gender =res.kakao_account.gender
                        var birthday=res.kakao_account.birthday
                        var age = res.kakao_account.age_range
                        //카카오톡의 닉네임과,mail을 url에 담아 같이 페이지를 이동한다.
                        location.href="/Info?nickname="+kakaonickname+"&email="+kakaoe_mail+"&gender="+gender+"&birthday="+birthday+"&age="+age;
                    }
                });
            }
        });
    }
</script>
<!-- //네이버아이디로로그인 버튼 노출 영역 -->
<script type="text/javascript">
    var naver_id_login = new naver_id_login("xgIAqtm_DJEQkFLVejnq", "http://localhost:8080/Info");
    var state = naver_id_login.getUniqState();
    naver_id_login.setPopup()
    naver_id_login.setButton("green", 1,40);
    naver_id_login.setDomain("http://localhost:8080");
    naver_id_login.setState(state);
    naver_id_login.setPopup();
    naver_id_login.init_naver_id_login();
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
</script>
=======
<a href="/recommendTest">추천화면 테스트</a>
>>>>>>> 4539df0b7f72d9346b0fdfe344ce17cd3e8b90d4
</body>
</html>