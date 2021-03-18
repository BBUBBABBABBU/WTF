<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-02-28
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>adminJoinConfirm.jsp / 회원 가입 성공 여부만 확인. 팝업으로 열림</title>
</head>
<body>


    <%--회원 가입 성공 여부 확인--%>
    <c:choose>

        <c:when test="${result eq 0}">
            <script type="text/javascript">
                alert("회원 가입 실패");
                location.href = "signUp"
            </script>
        </c:when>

        <c:when test="${result ne 0}">
            <script type="text/javascript">
                alert("회원 가입 성공")
                location.href = "adminLogin"
            </script>
        </c:when>

    </c:choose>


<%--    <c:if test="${result !=0}">--%>
<%--        <script type="text/javascript">--%>
<%--            alert("계정 등록이 완료되었습니다.");--%>
<%--            location.href="adminHome";--%>
<%--        </script>--%>
<%--    </c:if>--%>

<%--    <c:if test="${result == 0}">--%>
<%--        <script type="text/javascript">--%>
<%--            alert("등록실패!");--%>
<%--            location.href="signUp";--%>
<%--        </script>--%>
<%--    </c:if>--%>


</body>
</html>

