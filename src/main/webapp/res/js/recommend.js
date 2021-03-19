$(function () {
    let res_allList = new Array()
    // caraousel 함수
    var siteOwlCarousel = function () {
        $('.testimonial-carousel').owlCarousel({
            center: true,
            items: 1,
            loop: true,
            margin: 0,
            autoplay: true,
            smartSpeed: 1000,
        });
    };
    // 정렬
    // $('.recommend_orderBy').click(() => {
    $('.recommend_orderBy').on("click", function () {
            var cate = $(this).attr('name')
            $.ajax({
                type: 'post',
                url: 'resOrdered',
                contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
                async: false,
                dataType: "json",
                data: {
                    cate: cate,
                    table : "res_recommend_matrix_decomposition"
                },
                success: (data) => {
                    var res_allList = data.res_allList;
                    photoList = data.photoList;
                    $('#recommend_div1').remove()
                    var recommend_div1 = $('<div id="recommend_div1" class="recommend_div owl-carousel testimonial-carousel"></div>')
                    $('.recommend_container1').append(recommend_div1)
                    for (var i = 0; i < 12; i++) {
                        // let content =$('<div>'+i+'</div>')
                        var content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
                            '<a id = "a_img" href="/restaurant/restaurantInfo?resId='+res_allList[i].res_id+'&origin=recom1" class="item-wrap fancybox">' +
                            '<div class="work-info">' +
                            '<h3>'+res_allList[i].res_keyword+'</h3>' +
                            '</div>' +
                            '<img class="res_img" width="400" height="300" src=' + photoList[i] + '>' +
                            '</a>' +
                            '<table border="0">' +
                            '<tr id="tr_name">' +
                            '<td class ="detail_des" width = "350">' + res_allList[i].res_name + '<span class="res_rating">' + res_allList[i].res_rating + '</span></td>' +
                            '</tr>' +
                            '<tr id="tr_location">' +
                            '<td class ="detail_des2" width = "350">' + res_allList[i].res_addr.split(" ")[1] + '</td>' +
                            '</tr>' +
                            '<tr id="tr_re">' +
                            '<td class ="detail_des2" width = "350">리뷰 : ' + res_allList[i].like_count + ' 리뷰 : ' + res_allList[i].review_count + '</td>' +
                            '</tr>' +
                            '</table>' +
                            '</div>')
                        if (i % 6 == 0) {
                            recommend_div1.append($('<div class = "t1_wrap' + i + ' testimonial-wrap">'))
                            if (i == 6) {
                                $('.t1_wrap' + i).append($('<div id="temp1' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            } else {
                                $('.t1_wrap' + i).append($('<div id="temp1' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            }
                        }
                        if (i < 6) {
                            $('#temp1' + 0).append(content)
                        } else {
                            $('#temp1' + 6).append(content)
                        }
                    } // for end
                    siteOwlCarousel()
                }, error:
                    (err) => {
                        alert('failed' + err)
                    }
            })  // ajax end
        }
    )

    // 정렬 2
    // $('.recommend_orderBy').click(() => {
    $('.recommend_orderBy2').on("click", function () {
            var cate = $(this).attr('name')
            $.ajax({
                type: 'post',
                url: 'resOrdered',
                contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
                async: false,
                dataType: "json",
                data: {
                    cate: cate,
                    table : "res_recommend_cosine_similarity"
                },
                success: (data) => {
                    res_allList = data.res_allList;
                    photoList = data.photoList;
                    $('#recommend_div2').remove()
                    let recommend_div2 = $('<div id="recommend_div2" class="recommend_div owl-carousel testimonial-carousel"></div>')
                    $('.recommend_container2').append(recommend_div2)
                    for (let i = 0; i < 12; i++) {
                        // let content =$('<div>'+i+'</div>')
                        let content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
                            '<a id = "a_img" href="/restaurant/restaurantInfo?resId='+res_allList[i].res_id+'&origin=recom2" class="item-wrap fancybox">' +
                            '<div class="work-info">' +
                            '<h3>'+res_allList[i].res_keyword+'</h3>' +
                            '</div>' +
                            '<img class="res_img" width="400" height="300" src=' + photoList[i] + '>' +
                            '</a>' +
                            '<table border="0">' +
                            '<tr id="tr_name">' +
                            '<td class ="detail_des" width = "350">' + res_allList[i].res_name + '<span class="res_rating">' + res_allList[i].res_rating + '</span></td>' +
                            '</tr>' +
                            '<tr id="tr_location">' +
                            '<td class ="detail_des2" width = "350">' + res_allList[i].res_addr.split(" ")[1] + '</td>' +
                            '</tr>' +
                            '<tr id="tr_re">' +
                            '<td class ="detail_des2" width = "350">리뷰 : ' + res_allList[i].like_count + ' 리뷰 : ' + res_allList[i].review_count + '</td>' +
                            '</tr>' +
                            '</table>' +
                            '</div>')
                        if (i % 6 == 0) {
                            recommend_div2.append($('<div class = "t2_wrap' + i + ' testimonial-wrap">'))
                            if (i == 6) {
                                $('.t2_wrap' + i).append($('<div id="temp2' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            } else {
                                $('.t2_wrap' + i).append($('<div id="temp2' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            }
                        }
                        if (i < 6) {
                            $('#temp2' + 0).append(content)
                        } else {
                            $('#temp2' + 6).append(content)
                        }
                    } // for end
                    siteOwlCarousel()
                }, error:
                    (err) => {
                        alert('failed' + err)
                    }
            })  // ajax end
        }
    )

    // 추천순 클릭
    // $('.recommend_orderBy').click(() => {
    $('.recommend_orderBy3').on("click", function () {
            var cate = $(this).attr('name')
            $.ajax({
                type: 'post',
                url: 'resOrdered',
                contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
                async: false,
                dataType: "json",
                data: {
                    cate: cate,
                    table : "res_recommend_svd"
                },
                success: (data) => {
                    res_allList = data.res_allList;
                    photoList = data.photoList;
                    $('#recommend_div3').remove()
                    let recommend_div3 = $('<div id="recommend_div3" class="recommend_div owl-carousel testimonial-carousel"></div>')
                    $('.recommend_container3').append(recommend_div3)
                    for (let i = 0; i < 12; i++) {
                        // let content =$('<div>'+i+'</div>')

                        let content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
                            '<a id = "a_img" href="/restaurant/restaurantInfo?resId='+res_allList[i].res_id+'&origin=recom3" class="item-wrap fancybox">' +
                            '<div class="work-info">' +
                            '<h3>'+res_allList[i].res_keyword+'</h3>' +
                            '</div>' +
                            '<img class="res_img" width="400" height="300" src=' + photoList[i] + '>' +
                            '</a>' +
                            '<table border="0">' +
                            '<tr id="tr_name">' +
                            '<td class ="detail_des" width = "350">' + res_allList[i].res_name + '<span class="res_rating">' + res_allList[i].res_rating + '</span></td>' +
                            '</tr>' +
                            '<tr id="tr_location">' +
                            '<td class ="detail_des2" width = "350">' + res_allList[i].res_addr.split(" ")[1] + '</td>' +
                            '</tr>' +
                            '<tr id="tr_re">' +
                            '<td class ="detail_des2" width = "350">리뷰 : ' + res_allList[i].like_count + ' 리뷰 : ' + res_allList[i].review_count + '</td>' +
                            '</tr>' +
                            '</table>' +
                            '</div>')
                        if (i % 6 == 0) {
                            recommend_div3.append($('<div class = "t3_wrap' + i + ' testimonial-wrap">'))
                            if (i == 6) {
                                $('.t3_wrap' + i).append($('<div id="temp3' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            } else {
                                $('.t3_wrap' + i).append($('<div id="temp3' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
                            }
                        }
                        if (i < 6) {
                            $('#temp3' + 0).append(content)
                        } else {
                            $('#temp3' + 6).append(content)
                        }
                    } // for end
                    siteOwlCarousel()
                }, error:
                    (err) => {
                        alert('failed' + err)
                    }
            })  // ajax end
        }
    )
}) //$(function()) end