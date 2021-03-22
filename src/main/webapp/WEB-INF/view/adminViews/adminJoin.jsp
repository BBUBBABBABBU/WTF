<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-02-25
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%--
    QUIXLAB-MASTER > page-register.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminJoin.jsp / 회원가입 form</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/css/adminEnter.css" rel="stylesheet">
    <%--<style>--%>
        <%--&lt;%&ndash;title&ndash;%&gt;--%>
        <%--@font-face {--%>
            <%--font-family: 'SDSamliphopangche_Outline';--%>
            <%--src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff') format('woff');--%>
            <%--font-weight: normal;--%>
            <%--font-style: normal;--%>
        <%--}--%>
        <%--.titleFont * {--%>
            <%--font-family: 'SDSamliphopangche_Outline', Sans-Serif;--%>
        <%--}--%>

        <%--&lt;%&ndash;body&ndash;%&gt;--%>
        <%--@font-face {--%>
            <%--font-family: 'RIDIBatang';--%>
            <%--src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');--%>
            <%--font-weight: normal;--%>
            <%--font-style: normal;--%>
        <%--}--%>
        <%--.bodyFont * {--%>
            <%--font-family: 'RIDIBatang', Sans-Serif;--%>
        <%--}--%>

    <%--</style>--%>

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function(){

            /*********************
             * id 중복 체크
             */
            $('#email').blur(function(){
                $.ajax({
                    type:"POST",
                    url:"idCheck",
                    data:{
                        "email":$('#email').val()
                    },
                    success:function(result){
                        if($.trim(result)=="ok"){
                            if($('#id').val()!=''){
                                $('#idDupleCheck').text("사용할 수 있는 ID(email)입니다.");
                            }
                            else if($('#id').val()==''){
                                $('#idDupleCheck').text("ID(email)를 입력해주세요");
                            }
                        }else{
                            if($('#id').val()!=''){
                                alert("중복된 아이디입니다.");
                                $('#id').val('');
                                $('#id').focus();
                            }
                        }
                    }
                })
            })

        });







        $(function(){
            alert('test');


            $('#email').blur(function(){
                $.ajax({
                    type:"POST",
                    url:"idCheck",
                    data:{
                        "email":$('#email').val()
                    },
                    success:function(str){
                        // alert('>'+str);
                        $('#idDupleCheck').text('');
                        onlyIdCheck();

                    },
                    error:function (err) {
                        alert("아이디 중복체크 실패"+ err);
                    }
                })
            });




            // 입력 안 했으면 span 으로 알림 (기본)
            if($('#name').val() ==''){
                // alert('이름을 입력해주세요');
                $('#nameCheck').text("이름을 입력해주세요");
            }
            // if
            if($('#email').val() == "") {
                // alert("id 입력하라고");
                $('#idDupleCheck').text("ID(email)를 입력해주세요");
            }
            if($('#email').val() == "") {
                // alert("id 입력하라고");
                $('#passCheck').text("ID(email)를 입력해주세요");
            }
            if($('#email').val() == "") {
                // alert("id 입력하라고");
                $('#passCheck').text("ID(email)를 입력해주세요");

        });

        /***************************
         *  id 중복 체크
         *  https://xodgl2.tistory.com/22
         */
        $(function(){

        }) // end of 회원가입 form submit


    </script>

</head>

<body class="h-100 titleFont">

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



    <!--*******************
        회원가입 폼 start
    ********************-->
    <div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">

                                <a class="text-center titleFont" href="/">
                                    <h1>네가<br>이걸 먹을줄은<br>정말로 몰랐어</h1>
                                </a>

                                <form class="mt-5 mb-5 login-input bodyFont" id ="join_form" action="createAccount" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control"  placeholder="이름" required name="mgr_name" id="name">
                                        <span id="nameCheck"></span>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control"  placeholder="이-메일 (아이디)" required name="mgr_id" id="email">
                                        <span id="idDupleCheck"></span>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="비밀번호" required name="mgr_pass" id="pass">
                                        <span id="passCheck"></span>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="비밀번호 확인" required id="pass2">
                                        <span id="pass2Check"></span>
                                    </div>
                                    <button class="btn login-form__btn submit w-100 grgr" id="join_account">
                                        <h4><a style="color: #fff;">함께하게 되어서 반가워</a></h4>
                                    </button>

                                    <%--<div style="text-align:center"><br>회원 가입 후 관리자 인증이 완료되면 로그인 하실 수 있습니당</div>--%>
                                </form>

                                <p class="mt-5 login-form__footer">
                                    <a href="/adminLogin" class="text-primary"><h4>아이디가 있다면 로그인 화면으로</h4></a>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!--*******************
        회원가입 폼 end
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
