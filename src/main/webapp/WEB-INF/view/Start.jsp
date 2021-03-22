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
    <title>네가 이걸 먹을줄은 정말 몰랐어</title>
    <!-- Favicons -->
    <link href="/res/img/WTF_logo.png" rel="icon">
    <link href="/res/img/apple-touch-icon.png" rel="apple-touch-icon">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">--%>
    <link rel="stylesheet" type="text/css" href="res/css/start.css">
    <link rel="stylesheet" type="text/css" href="res/css/login.css">
    <link rel="stylesheet" type="text/css" href="res/css/login2.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>--%>
    <script src="res/js/start.js" type="text/javascript"></script>

    <script src="res/js/login.js" type="text/javascript"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-9XSZH4656Q"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-9XSZH4656Q');
    </script>

    <script>
        var user=  "${sessionScope.member.getEmail()}";
        var userNick= "${sessionScope.member.getNickname()}";
        var status = "${sessionScope.status}";
        var signupEmail="${signupEmail}"

        if (signupEmail.length>10)
        {
            alert("회원가입이 완료되었습니다!")
        }
        if (status=="fail"){
            alert("아이디나 비밀번호가 틀렸습니다.")
        }
        else { sessionStorage.setItem("member",user);}
    </script>
</head>
<body>

<input type="hidden" id = "memberEmail" value="${sessionScope.member.email}"/>

<img id ='title01' class="image" src="res/img/background_img/title01.jpg"/>
<div id='select_div'>
    <form id="kind_form" action="/main" method="get">
        <select id="select_kind" name="foodKind">
            <option class="select_kind_list" value="" disabled selected><p id="none_selected">이걸</p></option>
            <option class="select_kind_list_1" value="한식">한식</option>
            <option class="select_kind_list_2" value="중식">중식</option>
            <option class="select_kind_list_3" value="양식">양식</option>
            <option class="select_kind_list_4" value="일식">일식</option>
            <option class="select_kind_list_5" value="분식">분식</option>
        </select>
    </form>
</div>
<img class="image" src="/res/img/background_img/title02.jpg"/><br/><br/>
<%--<a href="/adminLogin">관리자페이지로</a>--%>


<%--화면 가운데 로그인 창  --%>
<div class="loginBackground" id = "loginBackground"></div>








<div class="wrap" id="wrap">
    <div class="form-wrap">

        <div class="button-wrap" id="button-wrap">

            <div id="btn"></div><table>
            <tb><button type="button" class="togglebtn" id ='loginbtn' > &nbsp; 로그인</button></tb>
            </tb><button type="button" class="togglebtn" id ='registerbtn' > &nbsp;&nbsp;  회원가입  </button></tb>
        </table>
        </div>
        <div class="social-icons">
            <a onclick="conceal()" ><img src="res/img/x.png" style="width: 10px;left: 160px;top: -90px;position: relative;" ></a>
        </div>
        <form id="login" action="/memberLogin" class="input-group" method="post">
            <input type="email" name="email" id="loginEmail" class="input-field" placeholder="Email을 입력하세요" value="${signupEmail}" required>
            <input type="password" name="password" id="loginPassword" class="input-field" placeholder="Password를 입력하세요" required>
           <input type="hidden" name="kind" id="favor">
            <button type="submit" class="submit">로그인</button>
<%--            <button type="button" id="searchId" class="submit">아이디찾기</button>--%>
            <button type="button" id="searchPass" class="submit" onclick="searchByPass()">비밀번호찾기</button>
        </form>

        <form id="register" action="/session2Test" class="input-group">
            <a id="kakao-login-btn" onclick="kakaoLogin()"><img src="res/img/kakao.png" style="left: 41px;position: relative;top:-30px;" ></a>
            <img id="kakaoSignup" src="res/img/kakaoSignup.png" style= "left: 82px; top:-30px; ">
            <div id="naver_id_login" style="position: relative;left: 40px;"></div>
            <img id="naverSignup" src="res/img/naverSignup.png" style= "left: 82px;">
            <a id="normal" href="/Info"><img id="normalSignup" src="res/img/didntNo.png" style="position: relative;left: 40px; top:30px;"></a>
        </form>
    </div>
</div>



<%-- 비밀번호찾기--%>
<div class="wrap" id="passWrap" style="left: 0px; display: block; position: absolute; visibility: hidden;">
    <div class="form-wrap">
        <div class="button-wrap" id="button-wrap2">
            <div id="btn2" class="btn"></div><table>
            <tb><button type="button" class="togglebtn" id ='loginbtn2' >  &nbsp; 비밀번호 찾기</button></tb>
        </table>
        </div>
        <div class="social-icons">
            <a onclick="conceal()" ><img src="res/img/x.png" style="width: 10px;left: 160px;top: -90px;position: relative;" ></a>
        </div>
        <form id="login2" action="/memberLogin" class="input-group" method="post">
            <input type="email" name="email" id="loginEmail2" class="input-field2" placeholder="이메일을 입력하세요" required>
            <input type="text" name="birthday" id="loginPassword2" class="input-field2" placeholder="생일을 입력하세요(예 07/28)" required>
            <button type="button" id="passSearch" class="submit">이메일로 임시비밀번호 보내기</button>
            <button type="button" class="submit" id ="goToLogin" onclick="show()">로그인하기</button>
        </form>
    </div>
</div>

<%--비밀번호 찾기 ajax 이메일 발송 함수--%>
<script>
    $("#passSearch").click(function () {
        let userEmail = $("#loginEmail2").val();
        let userBirthday = $("#loginPassword2").val();

        $.ajax({
            type: "GET",
            url: "/check/findPw",
            data: {
                "userEmail": userEmail,
                "userBirthday": userBirthday
            },
            success: function (res) {
                if (res['check']) {
                            $.ajax({
                                type: "POST",
                                url: "/check/findPw/sendEmail",
                                data: {
                                    "userEmail": userEmail,
                                    "userBirthday": userBirthday
                                }
                            })
                        url: "/";
                        alert("입력하신 이메일로 임시 비밀번호가 전송되었습니다.")
                        $("#goToLogin").click()
                        $("#loginEmail").val($("#loginEmail2").val())
                        $("#loginEmail2").val("")

                } else {
                    alert("일치하는 정보가 없습니다!")
                }
            }
        })
    })
</script>
<script>
    loginForm=document.getElementById('wrap')
    loginBack=document.getElementById('loginBackground')
    passWrap=document.getElementById("passWrap")


    <%--    로그인,회원가입 가운데 창 보이게하는 함수--%>
    function show(){
        var kind = $('#select_kind').val();
        sessionStorage.setItem("favor",kind);
        $('#favor').attr("value",kind   );

        if (status!="success") {
            loginForm.style.visibility = "visible"
            loginForm.style.zIndex="10000"
            loginBack.style.visibility = "visible"
            loginForm.style.display = "block"
            loginBack.style.display = "block"
            passWrap.style.visibility = "visible"
        }
    }
    function conceal(){
        loginForm.style.display = "none"
        loginBack.style.display = "none"
        passWrap.style.display="none"
    }

    var passBtn =document.getElementById("searchPass");




    {function searchByPass() {
        loginForm.style.visibility = "hidden"
        passWrap.style.visibility = "visible"
        passWrap.style.display="block"
        loginForm.style.display = "none"
    }

    }






</script>



<%--카카오 로그인 사용하여 받은 값들을 회원정보로 넘겨주기--%>
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
                        // res.properties.nickname으로도 접근 가능
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
</body>
</html>