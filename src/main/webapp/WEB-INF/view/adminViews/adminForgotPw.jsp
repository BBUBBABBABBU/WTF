<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-01
  Time: 04:41
  To change this template use File | Settings | File Templates.
--%>
<%--
    QUIXLAB-MASTER > page-lock.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>adminForgotPw.jsp / 비번찾기 form</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">
    <style>
        @font-face {
            font-family: 'Cafe24Ssukssuk';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Ssukssuk.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .grgr * {
            font-family: 'Cafe24Ssukssuk', Sans-Serif;
        }
    </style>

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <%--<script type="text/javascript">--%>
        <%--$(function(){--%>
            <%--$("button[class='btn login-form__btn submit w-100']").click(function () {--%>
                <%--alert('ajax')--%>

                <%--$.ajax({--%>
                    <%--type:"POST",--%>
                    <%--url:"pwCheck"--%>
                    <%--data:{--%>
                        <%--"id":$('#mgr_id').val(),--%>
                        <%--"name":$('#mgr_name').val()--%>
                    <%--},--%>
                    <%--success:function(str){--%>
                        <%--alert(str)--%>

                        <%--if($.trim(str) == "ok"){}--%>
                    <%--}--%>
                <%--})--%>
            <%--})--%>
        <%--})--%>

    <%--</script>--%>


</head>
<body class="h-100">

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->



    <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
                                <a class="text-center grgr" href="/">
                                    <h1>니가 이걸 먹을줄은 정말로 몰랐어</h1>
                                </a>

                                <%--id랑 name 입력하는 form--%>
                                <form class="mt-5 mb-3 login-input" action="resetPw">

                                    <%--id--%>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="email(id)" required id="mgr_id" name="mgr_id">
                                    </div>

                                    <%--name--%>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="name" required id="mgr_name" name="mgr_name">
                                    </div>

                                    <button class="btn login-form__btn submit w-100 grgr">
                                        <h4><a style="color: #fff">메일로 비번 보내줄줄은 몰랐어</a></h4>
                                    </button>

                                    <p class="mt-5 login-form__footer grgr">
                                        <a href="/adminLogin" class="text-primary">비번 기억이 났다면 여기로</a>
                                    </p>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>




    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>


</body>
</html>
