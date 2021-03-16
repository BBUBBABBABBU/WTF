<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-14
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>adminOtpInput.jsp / otp 입력하는 곳</title>

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

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">

        function keyUpdate() {
            alert("keyUpdate 함수 실행");

            var key = "${otpKey}";  // 생성된 otp
            var id = "${getId}";
            alert("생성된 otp : " + key + "// 세션의 id : " + id);

            $.ajax({
                type:"post",
                url:"otpSaveDB",
                data:{"id":id, "key":key},

                success:function (result) {
                    alert("썪쎼쓰 " + result);
                },
                error: function () {
                    alert("풰일");
                }
            });

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

    <h1>
        input ID : ${inputId} <br>
        get Id : ${getId} <br>
        get Name : ${getName} <br>
    </h1>

    <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
                                <a class="text-center grgr" href="/">
                                    <h1>니가 이걸 먹을줄은 정말로 몰랐어</h1>
                                    <h1>${alert}</h1>
                                </a>

                                <%--otp 코드 입력하는 form--%>
                                <form class="mt-5 mb-3 login-input" action="/adminHome" method="post">

                                    <%--otp 코드 입력하는 곳--%>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="otp code" required id="inputOtp" name="inputOtp">
                                    </div>

                                    <button class="btn login-form__btn submit w-100 grgr">
                                        <h4><a style="color: #fff">일하러 가자</a></h4>
                                    </button>

                                    <div class="bootstrap-modal">

                                        <p class="mt-5 login-form__footer grgr" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" style="cursor: pointer">
                                            <a class="text-primary" onclick="keyUpdate();">키가 없다면 이걸 누르자</a>
                                        </p>

                                        <%--모달 창--%>
                                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">

                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>

                                                    <div class="modal-body">
                                                        <form>

                                                            <div class="form-group">
                                                                <label for="recipient-name" class="col-form-label">Recipient:</label>
                                                                <input type="text" class="form-control" id="recipient-name" readonly>${otpKey}
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="message-text" class="col-form-label">Message:</label>
                                                                <textarea class="form-control" id="message-text" readonly></textarea>
                                                                <iframe src="${qrCode}" width="100%" height="350px"></iframe>
                                                            </div>

                                                        </form>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                    </div>


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
