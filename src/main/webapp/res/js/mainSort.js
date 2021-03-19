$(function () {

    $('.recommend_orderBy').on('click', function () {
        $.ajax({
            type: 'post',
            url: '/restaurantSort',
            data: {
                choiceCategory: $(this).attr('name')
            },
            success: (restaurantList) => {
                $('#recommend_div').remove()
                // 메인화면에서 정렬
                if (restaurantList != null && $(this).attr('name').indexOf("search") == -1) {
                    let recommend_div = $('<div id="recommend_div" class="recommend_div owl-carousel testimonial-carousel"></div>')

                    // #recommend_container의 맨앞에 추가 후 map_div 바로 뒤로 자리 옮김
                    $('#recommend_container').prepend(recommend_div)
                    // $('#recommend_div').insertAfter($('#map_div'))
                    $('#recommend_div').insertAfter($('#category'))

                    for (let i = 0; i < restaurantList.length; i++) {
                        // 식당의 이름이 8자가 넘었을 경우 처리
                        if (restaurantList[i].resName.length > 8) {
                            restaurantList[i].resName = restaurantList[i].resName.substring(0, 7) + '...'
                        }

                        let content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
                            '<a id = "a_img" href="/restaurant/restaurantInfo?resId=' + restaurantList[i].resId + '" class="item-wrap fancybox">' +
                            '<div class="work-info">' +
                            '<h3>' + restaurantList[i].resKeyword + '</h3>' +
                            '</div>' +
                            '<img class="res_img" width="400" height="300" src=' + restaurantList[i].rtr_pic_loc + '>' +
                            '</a>' +
                            '<table border="0">' +
                            '<tr id="tr_name">' +
                            '<td class ="detail_des" width = "350"><a class="restaurant_name" href="/restaurant/restaurantInfo?resId=' + restaurantList[i].resId + '">' + restaurantList[i].resName + '</a><span class="res_rating">' + restaurantList[i].resRating + '</span></td>' +
                            '</tr>' +
                            '<tr id="tr_location">' +
                            '<td class ="detail_des2" width = "350">' + restaurantList[i].resAddr.split(" ")[1] + '</td>' +
                            '</tr>' +
                            '<tr id="tr_re">' +
                            '<td class ="detail_des2" width = "350">추천 : ' + restaurantList[i].likeCount + ' 리뷰 : ' + restaurantList[i].reviewCount + '</td>' +
                            '</tr>' +
                            '</table>' +
                            '</div><br/>')

                        if (i % 6 == 0) {
                            recommend_div.append($('<div class = "t_wrap' + i + ' testimonial-wrap">'))
                            if (i == 6) {
                                $('.t_wrap' + i).append($('<div id="temp' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            } else {
                                $('.t_wrap' + i).append($('<div id="temp' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            }
                        }

                        if (i < 6) {
                            $('#temp' + 0).append(content)
                        } else {
                            $('#temp' + 6).append(content)
                        }

                    } // for end
                    siteOwlCarousel();
                } else {  // 검색화면 정렬
                    let recommend_div = $('<div id="recommend_div"></div>')
                    $('#recommend_container').append(recommend_div)

                    $('#recommend_div').append($('<div id="portfolio-grid" class="row no-gutter " data-aos="fade-up" data-aos-delay="200">'))

                    for (let i = 0; i < restaurantList.length; i++) {
                        // 식당의 이름이 8자가 넘었을 경우 처리
                        if (restaurantList[i].resName.length > 8) {
                            restaurantList[i].resName = restaurantList[i].resName.substring(0, 7) + '...'
                        }

                        $('#portfolio-grid').append($('<div id="item'+i+'" class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">'))
                        $('#item'+i).append($('<a href="/restaurant/restaurantInfo?resId=' + restaurantList[i].resId + '"' +
                            ' id="restaurant_img" class="item-wrap fancybox"' +
                            ' name="' + restaurantList[i].resName + '">' +
                            '<div class="work-info">' +
                            '<h3>' + restaurantList[i].resKeyword + '</h3>' +
                            '</div>' +
                            '<img class="res_img" width="400" height="300" src=' + restaurantList[i].rtr_pic_loc + '>' +
                            '</a>' +
                            '<table border="0">' +
                            '<tr id="tr_name">' +
                            '<td class ="detail_des" width = "350"><a class="restaurant_name" href="/restaurant/restaurantInfo?resId=' + restaurantList[i].resId + '">' + restaurantList[i].resName + '</a><span class="res_rating">' + restaurantList[i].resRating + '</span></td>' +
                            '</tr>' +
                            '<tr id="tr_location">' +
                            '<td class ="detail_des2" width = "350">' + restaurantList[i].resAddr.split(" ")[1] + '</td>' +
                            '</tr>' +
                            '<tr id="tr_re">' +
                            '<td class ="detail_des2" width = "350">추천 : ' + restaurantList[i].likeCount + ' 리뷰 : ' + restaurantList[i].reviewCount + '</td>' +
                            '</tr>' +
                            '</table>'))
                    }
                }
            },
            error: (err) => {
                console.log('식당 정렬 실패 : ' + err)
            }
        })
    })
})