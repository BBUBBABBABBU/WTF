<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_17
  Date: 2021-02-23
  Time: 오후 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<head>
    <title>리뷰작성하기</title>
</head>
<body>
<div class="container">
    <div class>
        <h2>리뷰를 작성해주세요</h2>
        <form method="post">
        <div class="row">
            <div class="col-sm-1">
                <label>맛</label>
                <div class="startRadio">
                    <label class="starRadio__box">
                        <input type="radio" name="star" >
                        <span class="starRadio_img"><span class="blind">별 1개</span></span>
                    </label>
                    <label class="starRadio__box">
                        <input type="radio" name="star" >
                        <span class="starRadio_img"><span class="blind">별 2개</span></span>
                    </label>
                    <label class="starRadio__box">
                        <input type="radio" name="star" >
                        <span class="starRadio_img"><span class="blind">별 3개</span></span>
                    </label>
                    <label class="starRadio__box">
                        <input type="radio" name="star">
                        <span class="starRadio_img"><span class="blind">별 4개</span></span>
                    </label>
                    <label class="starRadio__box">
                        <input type="radio" name="star">
                        <span class="starRadio_img"><span class="blind">별 5개</span></span>
                    </label>

                </div>
            </div>
            <div class="col-sm-1">
                <label>서비스</label>
                <select>
                    <option value="1">★☆☆☆☆</option>
                    <option value="2">★★☆☆☆</option>
                    <option value="3">★★★☆☆</option>
                    <option value="4">★★★★☆</option>
                    <option value="5">★★★★★</option>
                </select>
            </div>
            <div class="col-sm">
                <label>접근성</label>
                <select>
                    <option value="1">★☆☆☆☆</option>
                    <option value="2">★★☆☆☆</option>
                    <option value="3">★★★☆☆</option>
                    <option value="4">★★★★☆</option>
                    <option value="5">★★★★★</option>
                </select>
            </div>
            <div class="col-sm">
                <label>위생</label>
                <select>
                    <option value="1">★☆☆☆☆</option>
                    <option value="2">★★☆☆☆</option>
                    <option value="3">★★★☆☆</option>
                    <option value="4">★★★★☆</option>
                    <option value="5">★★★★★</option>
                </select>
            </div>
        </div>
        <input type="submit" value="리뷰입력">
        </form>
        <textarea placeholder="리뷰를 입력해주세요" rows="5" cols="50"></textarea>
    </div>
</div>
</body>
</html>
