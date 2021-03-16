<%--
  Created by IntelliJ IDEA.
  User: kosmo_17
  Date: 2021-02-24
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>채팅</title>
</head>
<body>
<div class="chat_header">
    <span>FAQ 챗봇</span>
    <button type="button" id="close_chat_btn" class="close_btn">X</button>
</div>
<div id="divbox" class="chat_content"></div>
<form id="form" style="display: inline">
    <input type="text" name="input1" class="chat_input" id="input1" size="74" style="display: inline; width: 460px" />
    <input type="button" value="전송" id="btn_submit" class="send_btn" style="display: inline;width: 40px" />
</form>
</body>
</html>
