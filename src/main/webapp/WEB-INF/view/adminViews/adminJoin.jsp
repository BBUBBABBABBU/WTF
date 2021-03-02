<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-02-25
  Time: 12:54
  To change this template use File | Settings | File Templates.
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
    <jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>

    <%--js--%>
    <jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">

        /***************************
         *  id 중복 체크
         *  https://xodgl2.tistory.com/22
         */
        $(function(){
            $('#email').blur(function(){

                alert("ajax");

                $.ajax({
                    type:"POST",
                    url:"idCheck",
                    data:{
                        "email":$('#email').val()
                    },
                    success:function(str){
                        alert(str);

                        if($.trim(str) == "ok"){
                            if($('#email').val() != ''){
                                alert("사용가능한 아이디입니다.");
                            }
                        }
                        else{
                            if($('#email').val() != ''){
                                alert("중복된 아이디입니다.");
                                $('#email').val('');
                                $('#email').focus();
                            }
                        }
                    }
                })
            })


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

                                <a class="text-center" href="/"> <h4>니가 이걸 먹을줄은 정말로 몰랐어</h4></a>

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
                                    <button class="btn login-form__btn submit w-100" id="join_account">create an account</button>
                                </form>
                                <p class="mt-5 login-form__footer">Have account <a href="/adminHome" class="text-primary">Sign Up </a> now</p>
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



</body>

</html>
