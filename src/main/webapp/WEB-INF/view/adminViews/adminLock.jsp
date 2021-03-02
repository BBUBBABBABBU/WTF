<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-01
  Time: 04:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>adminLoginLock.jsp / 관리자에서 외부화면 다녀온 뒤 잠금 화면. 또는 별도 설정하는 잠금화면</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>

    <%--js--%>
    <jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>

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
                                <a class="text-center" href="index.html"> <h2>니가 정말</h2></a>
                                <form class="mt-5 mb-3 login-input">
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" required>
                                    </div>
                                    <button class="btn login-form__btn submit w-100">Unlock</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</body>
</html>
