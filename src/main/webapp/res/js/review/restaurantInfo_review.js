$(function () {

    // 캐러셀 함수
    let siteOwlCarousel = function () {
        $('.testimonial-carousel').owlCarousel({
            center: true,
            items: 1,
            loop: true,
            margin: 0,
            autoplay: true,
            smartSpeed: 1000,
        });
    };


    $.ajax({
        type: 'post',
        url: '/review/restaurantInfoReview',
        contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
        data: {
            resId: $('#restaurant_info').attr('name')
        }, success: (reviewList) => {

            if(reviewList.length != 0){
                $('#review_div').remove()

                let review_div = $('<div id="#review_div" class="#review_div owl-carousel testimonial-carousel"></div>')
                $('#review_container').append(review_div)

                for (let i = 0; i < reviewList.length; i++) {
                    review_div.append($('<div id="review_wrap' + i + '" class = "testimonial-wrap">'))
                    $('#review_wrap' + i).append($('<div id="testimonial' + i + '" class="testimonial">'))

                    $('#testimonial' + i).append($('<blockquote>' +
                        '<p class="font_hans" style="font-size:45px">' + reviewList[i].content + '</p>' +
                        '</blockquote>' +
                        '<p class="" style="font-size: 18px">' + reviewList[i].memberVO.nickname + '</p>'))
                }

                siteOwlCarousel()
            }else{
                $('#review_div').remove()
                let review_div = $('<div id="#review_div" class="#review_div owl-carousel testimonial-carousel"></div>')
                review_div.append($('<p class="font_hans" style="font-size:45px">등록된 리뷰가 없습니다</p>'))
            }

        }, error: (error) => {
            console.log('식당 리뷰 못가져옴 ' + e.error())
        }
    })

})  // function(){} End