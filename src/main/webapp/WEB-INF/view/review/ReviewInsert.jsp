<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kosmo_17
  Date: 2021-02-23
  Time: 오후 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/res/css/review.css">
    <script type="text/javascript" src="/res/js/review.js"></script>
    <title>리뷰작성하기</title>
</head>
<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10 col-md-offset-1">
        <h1>리뷰작성</h1>
        <div id = "restaurant_info", name="${restaurantInfo.resId}">
            <h3>식당정보</h3>
            <h3 id="restaurant_name" >${restaurantInfo.resName}</h3>
            <p class="mb-4"><span class="text-muted"> 주소 : ${restaurantInfo.resAddr}</span></p>
            <p class="mb-4"><span class="text-muted"> 평점 : ${restaurantInfo.resRating}</span></p>
        </div>
    </div>
    <form method="POST" name="review" >
        <div class="col-md-offset-1 col-md-10 col-md-offset-1">

            <input type="file" id="input_imgs" value="" name="upload[]" multiple/>

            <div>
                <div class="imgs_wrap">

                </div>
            </div>
            <h3>평점</h3>
            <label>맛</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="star" >
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star" >
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star" >
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star">
                    <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
                </label>
            </div>
            <label>서비스</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 0.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star1">
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
            </div>
        </div>
        <div class="col-md-offset-1 col-md-10 col-md-offset-1">
            <label>위생</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star2">
                    <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
                </label>
            </div>
            <label>접급성</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="star3">
                    <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
                </label>
            </div>
        </div>

        <div class="col-md-offset-1 col-md-10 col-md-offset-1">
            <textarea placeholder="리뷰를 입력하세요" rows="8" cols="118%"></textarea>
        </div>
        <input type="submit" class="col-md-offset-9" value="리뷰 입력하기" >
    </form>

</div>

</body>
</html>
