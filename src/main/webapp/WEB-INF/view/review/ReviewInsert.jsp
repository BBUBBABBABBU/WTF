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
            <img style="height: 100px; width: 100px; border-radius: 10%" src=${photo.rtr_pic_loc} >
            <p class="mb-4"><span class="text-muted"> 주소 : ${restaurantInfo.resAddr}</span></p>
            <p class="mb-4"><span class="text-muted"> 평점 : ${restaurantInfo.resRating}</span></p>
        </div>
    </div>
    <form method="POST" id="reviewSave" action="reviewSave"  >
        <div class="col-md-offset-1 col-md-10 col-md-offset-1">
            <input type="hidden" name="res_id" value=${restaurantInfo.resId} >
            <input type="file" id="input_imgs" value="" name="pic_loc" multiple/>
            <div>
                <div class="imgs_wrap">

                </div>
            </div>
            <h3>평점</h3>
            <label>맛</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=1>
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=2>
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=3>
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=4>
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=5>
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=6>
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=7>
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=8>
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=9>
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="taste" value=10>
                    <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
                </label>
            </div>
            <label>서비스</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="service" value=1>
                    <span class="startRadio__img"><span class="blind">별 0.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=2>
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=3>
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=4>
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=5>
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=6>
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=7>
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=8>
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=9>
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="service" value=10>
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
            </div>
        </div>
        <div class="col-md-offset-1 col-md-10 col-md-offset-1">
            <label>위생</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=1>
                    <span class="startRadio__img"><span class="blind">별 0.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=2>
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=3>
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=4>
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=5 >
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=6>
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=7>
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=8>
                    <span class="startRadio__img"><span class="blind">별 4.</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=9>
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="clean" value=10>
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
            </div>
            <label>접급성</label>
            <div class="startRadio">
                <label class="startRadio__box">
                    <input type="radio" name="location" value=1>
                    <span class="startRadio__img"><span class="blind">별 0.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=2>
                    <span class="startRadio__img"><span class="blind">별 1개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=3>
                    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=4>
                    <span class="startRadio__img"><span class="blind">별 2개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=5>
                    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=6>
                    <span class="startRadio__img"><span class="blind">별 3개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=7>
                    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=8>
                    <span class="startRadio__img"><span class="blind">별 4개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=9>
                    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                </label>
                <label class="startRadio__box">
                    <input type="radio" name="location" value=10>
                    <span class="startRadio__img"><span class="blind">별 5개</span></span>
                </label>
            </div>
        </div>

        <div class="col-md-offset-1 col-md-10 col-md-offset-1">
            <textarea name="tag" placeholder="태그를 입력하세요" rows="1" cols="50%"></textarea>
            <textarea name="content" placeholder="리뷰를 입력하세요" rows="8" cols=100 %></textarea>
        </div>
        <div class="col-md-offset-1 col-md-10 col-md-offset-1" style="float: right">
            <input type="submit" class="col-md-offset-9 " value="리뷰 입력하기">
        </div>
    </form>

</div>

</body>
</html>
