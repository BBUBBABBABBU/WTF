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
<script>
    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }


</script>
<script>
    function chkPW(){

        var pw = $("#pw").val();
        var num = pw.search(/[0-9]/g);
        var eng = pw.search(/[a-z]/ig);
        var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

        if(pw.length < 8 || pw.length > 20){

            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            $("#pw").val("");
            return false;
        }else if(pw.search(/\s/) != -1){
            $("#pw").val("");
            $("#pw").focus();
            alert("비밀번호는 공백 없이 입력해주세요.");

            return false;
        }else if(num < 0 || eng < 0 || spe < 0 ){

            alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
            $("#pw").val("");
            $("#pw").focus();
            return false;
        }else {
            console.log("통과");
            return true;
        }

    }
    function checkPassword() {
        //비밀번호가 입력되었는지 확인하기

        //비밀번호와 비밀번호 확인이 맞지 않다면..
        if ( $("#pwCheck").val() != $("#pw").val()) {
            alert("비밀번호가 일치하지 않습니다.");
            $("#pwCheck").val("");
            return false;
        }else alert("비밀번호가 일치합니다.");
        return true; //확인이 완료되었을 때
    }
</script>
<html>

<head>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <title>Title</title>
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
    </style>

</head>
<body>

<div class="w3-content w3-container w3-margin-top">
    <div class="w3-container w3-card-4">
        <div class="w3-center w3-large w3-margin-top">
            <h3>회원가입</h3>
        </div>
        <div>
            <form id="myForm" name="myForm" action="signUp" method="post">
                <!-- <%--                <p>--%>
<%--                    <label>ID</label>--%>
<%--                    <input class="w3-input" type="text" id="id" name="id" readonly value="${ member.id }">--%>
<%--                </p>--%> -->
                <div class="i" name="div1">
                    <p>
                        <label>이메일</label>
                        <input class="w3-input" type="email" id="email" name="email" value="" required>
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
                        <label>생년월일</label>
                        <input class="w3-input" id="birthday" name="birthday" type="text" value="" required>
                    </p>
                    <p>
                        <label>성별</label>
                        <input class="w3-input" id="gender" name="gender" type="text" value="" required>
                    </p>
                    <p>
                        <label>당신의 취향</label>
                        <input class="w3-input" type="prefer" id="prefer" type="text" required>
                    </p>
                </div>
                <p class="w3-center">
                    <button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">개인정보 수정</button>
                </p>
            </form>
        </div>
    </div>
</div>
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


        window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/Info?nickname="+nickname+"&email="+email+"&gender="+gender+"&birthday="+birthday);
    }
    var uId = getParameterByName('nickname');
    var uEmail = getParameterByName('email');
    var uGender = getParameterByName('gender');
    if (uGender=="male"){
        uGender="M"
    }
    var ubirthday = getParameterByName('birthday');
    if (ubirthday.includes("-")){
       ubirthday=ubirthday.replace("-","")
    }
    $("#email").attr('value',uEmail);
    $("#nickname").attr('value',uId);
    $("#birthday").attr('value',ubirthday);
    $("#gender").attr('value',uGender);



</script>


<%--<%--%>
<%--    String clientId = "xgIAqtm_DJEQkFLVejnq";//애플리케이션 클라이언트 아이디값";--%>
<%--    String clientSecret = "QYYtd4NJPP";//애플리케이션 클라이언트 시크릿값";--%>
<%--    String code = request.getParameter("code");--%>
<%--    String state = request.getParameter("state");--%>
<%--    String redirectURI = URLEncoder.encode("http://8080/Info", "UTF-8");--%>
<%--    String apiURL;--%>
<%--    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";--%>
<%--    apiURL += "client_id=" + clientId;--%>
<%--    apiURL += "&client_secret=" + clientSecret;--%>
<%--    apiURL += "&redirect_uri=" + redirectURI;--%>
<%--    apiURL += "&code=" + code;--%>
<%--    apiURL += "&state=" + state;--%>
<%--    String access_token = "AAAAOmGdaXaRt5diTjbtW1aVB1z8oVeiJAB1p8eKs8CwWTcXrSvwocdKLiAgMgRrCCew3p-MfPpVKSNwxCSE9CM51y0";--%>
<%--    String refresh_token = "r3uplD5IsoL8gdlip8CnAUWePUsegUxTh4GtzkC3GFYTjxN5PzF62p4DipyEmrCLMvCEgip1ipipZe7ILOVJTcWxsipaqaiiVOUxtvcSytiiTRrmtqJanQmiidLnfqkYa06FxTj7v";--%>
<%--    System.out.println("apiURL="+apiURL);--%>
<%--    try {--%>
<%--        URL url = new URL(apiURL);--%>
<%--        HttpURLConnection con = (HttpURLConnection)url.openConnection();--%>
<%--        con.setRequestMethod("GET");--%>
<%--        int responseCode = con.getResponseCode();--%>
<%--        BufferedReader br;--%>
<%--        System.out.print("responseCode="+responseCode);--%>
<%--        if(responseCode==200) { // 정상 호출--%>
<%--            br = new BufferedReader(new InputStreamReader(con.getInputStream()));--%>
<%--        } else {  // 에러 발생--%>
<%--            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));--%>
<%--        }--%>
<%--        String inputLine;--%>
<%--        StringBuffer res = new StringBuffer();--%>
<%--        while ((inputLine = br.readLine()) != null) {--%>
<%--            res.append(inputLine);--%>
<%--        }--%>
<%--        br.close();--%>
<%--        if(responseCode==200) {--%>
<%--            System.out.println(res.toString());--%>
<%--        }--%>
<%--    } catch (Exception e) {--%>
<%--        System.out.println(e);--%>
<%--    }--%>
<%--%>--%>
</body>

</html>
