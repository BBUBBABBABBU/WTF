<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-02-24
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%--
    QUIXLAB-MASTER > page-login.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>adminLogin.jsp / 로그인 페이지</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"/>
    <script type="text/javascript">

        /***********
         * 로그인
         */
        function login(){
            $('#login').submit()
        }

    </script>

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


    <h1>dfgdfgdfgdfgdfgdfgdfgdf ${aaa}</h1>
    <!--*******************
        login start
    ********************-->
    <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">

                                <%--이름 클릭시 홈페이지로 이동--%>
                                <a class="text-center" href="/">
                                    <h2>니가 이걸 먹을줄은 정말로 몰랐어</h2>
                                </a>

                                <%--로그인 폼--%>
                                <form class="mt-5 mb-5 login-input" action="/login" id="login" method="post">
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Email" name="mgr_id">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" name="mgr_pass">
                                    </div>
                                    <button class="btn login-form__btn submit w-100" onclick="login();">Sign In</button>
<%--                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                                </form>

                                <%--회원가입 페이지로 이동--%>
                                <p class="mt-5 login-form__footer">Dont have account?
                                    <a href="/moveToSignUp" class="text-primary">Sign Up</a>
                                    now
                                </p>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--*******************
        login end
    ********************-->

    <!--**********************************
            Scripts
        ***********************************-->
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/gleek.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/styleSwitcher.js"></script>


</body>
</html>
