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
    // 추천순 클릭
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
                    cate: cate
                },
                success: (data) => {
                    // alert(data)
                    // alert(data.res_allList)
                    // alert(data.photoList)
                    res_allList = data.res_allList;
                    photoList = data.photoList;
                    $('#recommend_div').remove()
                    let recommend_div = $('<div id="recommend_div" class="recommend_div owl-carousel testimonial-carousel"></div>')
                    $('#recommend_container').append(recommend_div)
                    for (let i = 0; i < 12; i++) {
                        // let content =$('<div>'+i+'</div>')
                        let content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
                            '<a id = "a_img" href="work-single.html" class="item-wrap fancybox">' +
                            '<div class="work-info">' +
                            '<h3>Cocooil</h3>' +
                            '<span>Branding</span>' +
                            '</div>' +
                            '<img class="res_img" width="400" height="300" src=' + photoList.get(i) + '>' +
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
                    siteOwlCarousel()
                }, error:
                    (err) => {
                        alert('failed' + err)
                    }
            })  // ajax end
        }
    )
    // $('.recommend_orderBy').click(() => {
    // $.ajax({
        //     type: 'post',
        //     url: 'resOrdered',
        //     contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
        //     async: false,
        //     data: {
        //         category: $('#recommend_order').attr('name')
        //     },
        //     success: (data) => {
        //         res_allList = data;
        //         $('#recommend_div').remove()
        //         let recommend_div = $('<div id="recommend_div" class="recommend_div owl-carousel testimonial-carousel"></div>')
        //         $('#recommend_container').append(recommend_div)
        //         for (let i = 0; i < 12; i++) {
        //             // let content =$('<div>'+i+'</div>')
        //             let content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
        //                 '<a id = "a_img" href="work-single.html" class="item-wrap fancybox">' +
        //                 '<div class="work-info">' +
        //                 '<h3>Cocooil</h3>' +
        //                 '<span>Branding</span>' +
        //                 '</div>' +
        //                 '<img class="res_img" width="400" height="300" src=' + res_allList[i].rtr_pic_loc + '>' +
        //                 '</a>' +
        //                 '<table border="0">' +
        //                 '<tr id="tr_name">' +
        //                 '<td class ="detail_des" width = "350">' + res_allList[i].res_name + '<span class="res_rating">' + res_allList[i].res_rating + '</span></td>' +
        //                 '</tr>' +
        //                 '<tr id="tr_location">' +
        //                 '<td class ="detail_des" width = "350">' + res_allList[i].res_addr.split(" ") + '</td>' +
        //                 '</tr>' +
        //                 '<tr id="tr_re">' +
        //                 '<td class ="detail_des" width = "350">리뷰 : ' + res_allList[i].like_count + ' 리뷰 : ' + res_allList[i].review_count + '</td>' +
        //                 '<td>' + i + '</td>' +
        //                 '</tr>' +
        //                 '</table>' +
        //                 '</div>')
        //             if (i % 6 == 0) {
        //                 recommend_div.append($('<div class = "t_wrap' + i + ' testimonial-wrap">'))
        //                 if (i == 6) {
        //                     $('.t_wrap' + i).append($('<div id="temp' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
        //                 } else {
        //                     $('.t_wrap' + i).append($('<div id="temp' + i + '" class="portfolio-grid row no-gutter " data-aos="fade-up" data-aos-delay="200">'))
        //                 }
        //             }
        //             if (i < 6) {
        //                 $('#temp' + 0).append(content)
        //             } else {
        //                 $('#temp' + 6).append(content)
        //             }
        //         } // for end
        //         siteOwlCarousel()
        //     }, error:
        //         (err) => {
        //             alert('failed' + err)
        //         }
        // })  // ajax end
    // })  // click() end
}) //$(function()) end