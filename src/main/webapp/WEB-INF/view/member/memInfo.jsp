<%--
  Created by IntelliJ IDEA.
  User: Kim
  Date: 2021-02-25
  Time: 오전 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
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

    </style>
</head>
<body>
<div class="w3-content w3-container w3-margin-top">
    <div class="w3-container w3-card-4">
        <div class="w3-center w3-large w3-margin-top">
            <h3>My Page</h3>
        </div>
        <div>
            <form id="myForm" action="../member/update_mypage.do" method="post">
                <!-- <%--                <p>--%>
<%--                    <label>ID</label>--%>
<%--                    <input class="w3-input" type="text" id="id" name="id" readonly value="${ member.id }">--%>
<%--                </p>--%> -->
                <div class="i">
                    <p>
                        <label>Email</label>
                        <input class="w3-input" type="text" id="email" name="email" value="" required>
                    </p>
                    <br />
                    <input type="hidden" name="id" value="${ member.id }">
                    <p>
                        <label>BirthDay</label>
                        <input class="w3-input" id="old_pw" name="old_pw" type="password" required>
                    </p>
                    <p>
                        <label>Gender</label>
                        <input class="w3-input" id="pw" name="pw" type="password" required>
                    </p>
                    <p>
                        <label>preference</label>
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
</body>
</html>
