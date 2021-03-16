<%--
  Created by IntelliJ IDEA.
  User: Kim
  Date: 2021-02-25
  Time: 오전 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String nick=request.getParameter("kakaonickname");
System.out.println(nick);%>
<link rel="stylesheet" type="text/css" href="res/css/memInfo.css">
<script>
    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
</script>

<html>
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <style >
        .w3-center{ border-radius: 20px;
            width: 300px;
            align-items: center;
        }
        .w3-input{width: 350px;}
        .i{position: relative;
            left: 30%;
            display: inline-block;
            /* text-align: center; */
            align-self: center;
            align-content: center;
            object-position: center;
            align-items: center;
        }
        div.w3-container {
            border-radius: 30px;
        }
        p.w3-center button.w3-button w3-block w3-black w3-ripple w3-margin-top w3-round{
            background-color: #E8BE24;
        }
        p.w3-center #joinBtn{
            background-color: #FFCD12;
            border-radius: 4px;
            display: block;
            width: 100%;
            transition: opacity 0s;
            padding: 8px 16px;
            vertical-align: middle;
            overflow: hidden;
            text-decoration: none;
            color: white;
            border: none;
        }
        p.w3-center #joinBtn:hover{
            background-color:#EAEAEA ;
        }
        p.w3-center #joinBtn{
        }
        form#myForm p.w3-center     .w3-button:hover{
            background-color: #E8BE24;
        }
        #myForm{
        }

    </style>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <title>Title</title>

    <script>
        $(function(){




            $('#joinBtn').click(function () {
                    $("#email").attr("disabled", false);
                    $("#birthday").attr("disabled", false);
                    $("#gender").attr("disabled", false);
                }
            )


            $('#email').keyup(function(){
                if ($('#email').val() !=null)
                $.ajax({
                    type : 'POST', // 전송방식
                    //async : true,  //비동기통신
                    url : 'idCheckLogin', // **** 요청(request)
                    // contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
                    data : {'email': $('#email').val()},
                    success : function(result){
                        $('#idCheckResult').text(result);

                    },
                    error : function(err){
                        console.log(err);
                    }
                });

            })

        })

        //아이디 중복일 때 회원가입 버튼 막는 함수
        function duple() {
            if ($("#idCheckResult").text()=="이미 사용중입니다"){
                alert("현재 입력하신 아이디는 중복되는 아이디입니다.")

                $("#joinBtn").attr("type","button");

            } else {
                $("#joinBtn").attr("type", "submit");
                alert("회원가입이 완료되었습니다.")

            }
            }

    </script>

    <script>
        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        };

        function test() {
            var ubirthday =   $("#birthday").val();


            if (ubirthday.includes("-")) {
                ubirthday = ubirthday.replace("-", "/");
                $("#birthday").val(ubirthday);
            } else {
                ubirthday = ubirthday.replace(/(.{2})/g, "$1/");
                $("#birthday").val(ubirthday.slice(0, -1));
            }
        };
    </script>
    <script>
        function chkBirthDay(){
        }
        function chkPW(){

            var pw = $("#pw").val();
            var num = pw.search(/[0-9]/g);
            var eng = pw.search(/[a-z]/ig);
            var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

            if(pw.length < 8 || pw.length > 20){

                alert("8자리 ~ 20자리 이내로 입력해주세요.");
                $("#pw").val("");
                $("#pwCheck").focus();

            }else if(pw.search(/\s/) != -1){
                alert("비밀번호는 공백 없이 입력해주세요.");
                $("#pw").val("");
                $("#pw").focus();

            }else if(num < 0 || eng < 0 || spe < 0 ){
                alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
                $("#pw").val("");
                $("#pw").focus();
            }else {
                console.log("통과");
                return true;
            }

        }
        function checkPassword() {
            //비밀번호가 입력되었는지 확인하기

            //비밀번호와 비밀번호 확인이 맞지 않다면..
            if ( $("#pwCheck").val() != $("#pw").val() & $("#pwCheck").val().length !=0) {
                alert("비밀번호가 일치하지 않습니다.");
                $("#pwCheck").val("");
                $("#pwCheck").focus();
                return false;
            }else if ($("#pwCheck").val() == $("#pw").val() & $("#pwCheck").val().length !=0)
                alert("비밀번호가 일치합니다.");

            return true; //확인이 완료되었을 때

        }

    </script>


</head>
<body>

<div class="w3-content w3-container w3-margin-top">
    <div class="w3-container w3-card-4">
        <div class="w3-center w3-large w3-margin-top">
            <h3 id="h3tag">회원가입</h3>
        </div>
        <div>
            <form id="myForm" name="myForm"  action="signUp" method="post" >
                <!-- <%--                <p>--%>
<%--                    <label>ID</label>--%>
<%--                    <input class="w3-input" type="text" id="id" name="id" readonly value="${ member.id }">--%>
<%--                </p>--%> -->
                <div class="i" name="div1">
                    <p>
                        <label>이메일</label>
                        <input class="w3-input" type="email" id="email" name="email" value=""  required><span id="idCheckResult" style="width:150px;color:#b1b1c0"></span>

                    </p>
                    <p>
                        <label>닉네임</label>
                        <input class="w3-input" id="nickname" name="nickname" type="text"  value="" required>
                    </p>
                    <p>
                        <label>비밀번호</label>
                        <input class="w3-input" id="pw" name="pw" type="password" onfocusout="chkPW()" value="" required>
                    </p>
                    <p>
                        <label>비밀번호확인</label>
                        <input class="w3-input" id="pwCheck" name="password" type="password" onfocusout="checkPassword()" required>
                    </p>
                    <input type="hidden" name="id" >
                    <p>
                        <label>생년월일 (예시> 0728 )</label>
                        <input class="w3-input" id="birthday" name="birthday" type="text" value="" onfocusout="birthChange()" required>
                    </p>
                    <p>
                        <label>성별</label>

                        <select name="gender" id="gender" >
                            <option value="남성">남성</option>
                            <option value="여성">여성</option>
                        </select>

                    </p>
                    <p id="favorPtag">
                        <label>당신의 취향</label>
                        <input type="radio" name="favor" value="한식">한식
                        <input type="radio" name="favor" value="중식">중식
                        <input type="radio" name="favor" value="양식">양식
                        <input type="radio" name="favor" value="일식">일식
                        <input type="radio" name="favor" value="분식">분식
                        <input type="radio" name="favor" value="디저트">디저트
<%--                        <input class="w3-input" type="prefer" id="prefer" type="text" required>--%>
                    </p>
                    <div><span id="favorResult"></span></div>
                </div>
                <p class="w3-center">
                    <button type="button" id="joinBtn" onclick="duple()"  >회원가입</button>
                </p>
            </form>
        </div>
    </div>
</div>
<script>
<%--일반 회원가입에서 생년월일 유효성--%>
    function birthChange(){
        var ubirthday = $("#birthday").val();
        if (ubirthday.length < 5 ){
            if (ubirthday.includes("-")){
                ubirthday=(ubirthday.replace("-","/"))
            }else {
                ubirthday=(ubirthday.replace(/(.{2})/g,"$1/").slice(0,-1))
            }
            $("#birthday").val(ubirthday)
        }else {
            {$("#birthday").val("")
                $("#birthday").focus()}
                alert("4자 이하로 입력해주세요")
        }
    }
</script>
<script type="text/javascript">

    var naver_id_login = new naver_id_login("xgIAqtm_DJEQkFLVejnq", "http://localhost:8080/Info");
    // 접근 토큰 값 출력

    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        var email=naver_id_login.getProfileData('email');
        var nickname=naver_id_login.getProfileData('nickname');
        var gender=naver_id_login.getProfileData('gender');
        var birthday=naver_id_login.getProfileData('birthday');
        var age=naver_id_login.getProfileData('age');
        location.href="/Info?nickname="+nickname+"&email="+email+"&gender="+gender+"&birthday="+birthday+"&age="+age;

        // window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/Info?nickname="+nickname+"&email="+email+"&gender="+gender+"&birthday="+birthday+"&age="+age);
    }
    var uId = getParameterByName('nickname');
    var uEmail = getParameterByName('email');
    var uGender = getParameterByName('gender');
    var uAge = getParameterByName('age');
    if (uGender=="male"){
        uGender="남성"
    }else uGender ="여성"

    var ubirthday = getParameterByName('birthday');
    if (ubirthday.includes("-")){
       ubirthday=ubirthday.replace("-","/")
    }else {
        ubirthday=ubirthday.replace(/(.{2})/g,"$1/").slice(0,-1)
    }



    if (uEmail.length!=0) {
        $("#email").attr('value', uEmail);
        $("#email").attr("disabled",true);
        $("#nickname").attr('value', uId);
        $("#birthday").attr('value',ubirthday);
        $("#birthday").attr("disabled",true);
        $("#gender").attr('value', uGender);
        $("#gender").attr("disabled",true);
        $("#password").attr('value', uAge);



    }

</script>



</body>

</html>
