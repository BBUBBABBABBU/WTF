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
            <h3>고객정보</h3>
        </div>
        <div>
            <form id="myForm" name="myForm" action="../member/update_mypage.do" method="post">
                <!-- <%--                <p>--%>
<%--                    <label>ID</label>--%>
<%--                    <input class="w3-input" type="text" id="id" name="id" readonly value="${ member.id }">--%>
<%--                </p>--%> -->
                <div class="i" name="div1">
                    <p>
                        <label>이메일</label>
                        <input class="w3-input" type="text" id="email" name="email" value="" required>
                    </p>
                    <br />
                    <input type="hidden" name="id" >
                    <p>
                        <label>생년월일</label>
                        <input class="w3-input" id="old_pw" name="old_pw" type="password" required>
                    </p>
                    <p>
                        <label>성별</label>
                        <input class="w3-input" id="pw" name="pw" type="password" required>
                    </p>
                    <p>
                        <label>당신의 취향</label>
                        <input class="w3-input" type="password" id="pw2" type="password" required>
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
    alert(naver_id_login.oauthParams.access_token);
    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        var email=naver_id_login.getProfileData('email');
        var nickname=naver_id_login.getProfileData('nickname');
        alert(naver_id_login.getProfileData('age'));
        alert(naver_id_login.getProfileData("gender"));
        alert(naver_id_login.getProfileData("birthday"));
        window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/Info??kakaonickname="+nickname+"&kakaoe_mail="+email);
    }
    var uid = getParameterByName('kakaonickname');
    var age = getParameterByName('kakaoe_mail');
    alert(uid)
    $("#email").attr('value',uid);


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
