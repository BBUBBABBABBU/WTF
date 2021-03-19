$(function () {

    $.ajax({
        type: 'post',
        url: '/review/mainReview',
        data: {
            'foodKind': $('#foodKind').val()
        },
        contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
        success: (reviewList) => {
            $('#review_div').remove()

            let review_div = $('<div id="#review_div" class="#review_div owl-carousel testimonial-carousel"></div>')
            $('#review_container').append(review_div)
            for (let i = 0; i < reviewList.length; i++) {
                review_div.append($('<div id="review_wrap' + i + '" class = "testimonial-wrap">'))
                $('#review_wrap' + i).append($('<div id="testimonial' + i + '" class="testimonial">'))

                $('#testimonial'+i).append($('<blockquote>' +
                    '<p class="font_hans" style="font-size:45px">' + reviewList[i].content + '</p>' +
                    '<a href="/restaurant/restaurantInfo?resId=' + reviewList[i].restaurantVO.resId + '"' +
                    '<p class="font_hans" style="font-size: 25px" >' + reviewList[i].restaurantVO.resName + '</p></a>' +
                    '</blockquote>' +
                    '<p class="" style="font-size: 18px">' + reviewList[i].memberVO.nickname + '</p>'))
            }
        }, fail: (err) => {
            alert("리뷰를 못가져옴" + err)
        }
    })


}) // function(){} End
