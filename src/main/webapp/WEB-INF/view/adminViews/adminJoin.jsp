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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">

        /***************************
         *  id 중복 체크
         *  https://xodgl2.tistory.com/22
         */
        $(function(){
            $('#email').blur(function(){
                $.ajax({
                    type:"POST",
                    url:"idCheck",
                    data:{
                        "email":$('#email').val()
                    },
                    success:function(str){
                        alert('> '+str);
                        check(str);

                    },
                    error:function (err) {
                        alert("아이디 중복체크 실패"+ err)
                    }
                })
            })


            function check(str) {
                if ($('#email').val() == "") {
                    alert("id 입력하셈");
                    return;
                }
                if(str === "ok"){
                    alert('ok');
                    if($('#email').val() != ''){
                        alert("사용가능한 아이디입니다.");
                        return;
                    }
                }
                if(str === "duplicate"){
                    alert('duplicate');
                    if($('#email').val() != ''){
                        alert("중복된 아이디입니다.");
                        $('#email').val('');
                        // $('#email').focus();
                    }
                }
            }



        /**************************
         * 비번확인
         * https://xodgl2.tistory.com/22
         */
            $('#pass2').blur(function(){
                if($('#pass').val() != $('#pass2').val()){
                    if($('#pass2').val()!=''){
                        alert("비밀번호가 일치하지 않습니다.");
                        $('#pass').val('');
                        $('#pass2').val('');
                        $('#pass').focus();
                    }
                }
            })


        /*****************************
         * 회원가입
         */

            $('#join_account').click(()=>{
                alert('ok')
                // var check_list = ['name', 'email', 'pass']
                //
                // for(var check in check_list){
                //     alert(check_list[check])
                //
                // }
                if($('#name').val() ==''){
                    alert('이름을 입력해주세요')
                    return;
                }

                $('#join_form').submit()

            })

        }) // end of 회원가입 form submit


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

                                <a class="text-center grgr" href="/">
                                    <h1>니가 이걸 먹을줄은 정말로 몰랐어</h1>
                                </a>

                                <form class="mt-5 mb-5 login-input" id ="join_form" action="createAccount" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control"  placeholder="Name" required name="mgr_name" id="name">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control"  placeholder="Email / Id" required name="mgr_id" id="email">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" required name="mgr_pass" id="pass">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password Confirm" required id="pass2">
                                    </div>
                                    <button class="btn login-form__btn submit w-100 grgr" id="join_account">
                                        <h4><a style="color: #fff;">함께하게 되어서 반가울줄은 몰랐어</a></h4>
                                    </button>
                                </form>

                                <p class="mt-5 login-form__footer grgr">
                                    <a href="/adminLogin" class="text-primary">아이디가 있었어???</a>
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
