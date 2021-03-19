
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
    <title>리뷰작성하기</title>
</head>
<style>
    @font-face {
        font-family: 'Cafe24Ohsquare';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
    body {
    font-family: 'Cafe24Ohsquare';
    background-image:url(${photo.rtr_pic_loc}) ;
    background-repeat: no-repeat;
    background-position:top;
    background-size: cover;
}
.container{

    width: 80%;
    height: 100%;
    background: white;
}
textarea{
    resize: none;
}
    text-muted{
        font-size: 9px;
    }

</style>
<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10 col-md-offset-1">
        <div id = "restaurant_info", name="${restaurantInfo.resId}">
            <h2>식당정보</h2>
            <h3 id="restaurant_name" >${restaurantInfo.resName}</h3>
            <div class="col-md-2">
            <img style="height: 100px; width: 100px; border-radius: 10%" src=${photo.rtr_pic_loc} >
            </div>
             <div class="col-md-10">
                 주소 : ${restaurantInfo.resAddr}
            <br/>
                평점 : ${restaurantInfo.resRating}<br/>
                 전화번호 : ${restaurantInfo.resTell}
             </div>
        </div>
    </div>
    <div class="reviewInsert col-md-offset-1 col-md-10 col-md-offset-1">
        <h1>리뷰작성</h1>
        <form method="post" id="reviewSave" action="/review/reviewSave" enctype="multipart/form-data" >
        <div>
            <input type="hidden" name="res_id" value=${restaurantInfo.resId} >
            <input type="file" id="input_imgs" value="" name="uploadFile" multiple/>
            <div>
               <div class="imgs_wrap">
               </div>
            </div >

            <h2>평점</h2>
            <div class="col-md-6">
            <h3>맛</h3>
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
            <h3>서비스</h3>
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
        </div>
        <div class="col-md-6" >
            <h3>위생</h3>
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
            <h3>접근성</h3>
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
        <div class="col-md-10">
            <textarea name="tag" placeholder="태그를 입력하세요" ></textarea>
            <br/>
            <textarea name="content" placeholder="리뷰를 입력하세요" rows="8" cols=70%></textarea>
            <input type="submit"  style="width: 100px; height: 30px;  font-size: 14px" value="리뷰 입력하기">
        </div>
    </form>
    </div>
</div>

</body>
<script type="text/javascript" src="/res/js/review/review.js"></script>
</html>
