let radius = 500
let level = 4
let arr = new Array()

arr[0] = ["경일고등학교", 37.34750392238187, 126.80510066360843]
arr[1] = ["신화장어", 37.348152315508955, 126.81579727113643]

let restaurantList = new Array()
let location_list = new Array()
let res_info = ''

// 가산 디지털단지역 좌표
let gasan_latitude = 37.479647527408446
let gasan_longitude = 126.8820792032653

// 반경 500m 버튼 클릭
$('#fiveM').click(() => {
    radius = 500
    level = 4
    getLocation();
})

// 반경 1000m 버튼 클릭
$('#thousandM').click(() => {
    radius = 1000
    level = 5
    getLocation();
})

// 캐러셀 함수
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

// 식당 데이터 가져옴
$.ajax({
    type: 'post',
    url: "/mainRecommend",
    contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
    async: false,
    data: {
        'foodKind': $('#foodKind').val()
    },
    success: (data) => {
        restaurantList = data
    }, error: (err) => {
        alert('ajax 실패 : ' + err)
    }
})  // ajax End

// 현 위치(좌표)
function getLocation() {
    if (navigator.geolocation) { // GPS를 지원하면
        navigator.geolocation.getCurrentPosition(function (position) {

            // 현재 위치 위도 경도를 가져옴
            let latitude = position.coords.latitude + 0.00069374332828
            let longitude = position.coords.longitude - 0.00484117914359
            // showMap(latitude, longitude)

            showRestaurant(gasan_latitude, gasan_longitude)

        }, function (error) {
            console.error(error);
        }, {
            enableHighAccuracy: false,
            maximumAge: 0,
            timeout: Infinity
        });
    } else {
        alert('GPS를 지원하지 않습니다');
    }
} // getLocation() End

// 지도 및 식당들을 보여줌
function showRestaurant(latitude, longitude) {

    let container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    let options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(latitude, longitude), //지도의 중심좌표.
        level: level //지도의 레벨(확대, 축소 정도)
    };

    let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    let imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다
        imageSize = new kakao.maps.Size(30, 39), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
    let markerPosition = new kakao.maps.LatLng(latitude, longitude); // 마커가 표시될 위치입니다
    let myLocation = '<div style="padding:5px;">내 위치</div>'


    // 현재 위치 기반 반경 설정
    let circle = new daum.maps.Circle({
        map: map,
        center: markerPosition,
        radius: radius,
        strokeWeight: 2,
        strokeColor: '#FF00FF',
        strokeOpacity: 0.8,
        strokeStyle: 'dashed',
        fillColor: '#D3D5BF',
        fillOpacity: 0.5
    })

    // 마커를 생성합니다
    let marker = new kakao.maps.Marker({
        map: map,
        position: markerPosition,
        image: markerImage, // 마커이미지 설정
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    // marker.setMap(map);

    // 현재 위치 텍스트 나타내기기
    let infoWindow = new kakao.maps.InfoWindow({
        position: markerPosition,
        content: myLocation,
        removable: true
    })

    // infoWindow.open(map, marker)


    // 레스토랑 위치들
    for (let i = 0; i < restaurantList.length; i++) {

        location_list.push(new kakao.maps.LatLng(restaurantList[i].resLatitude, restaurantList[i].resLongitude))

        // 반경 내에 있는 위치 마커표시
        let poly = new kakao.maps.Polyline({
            path: [new kakao.maps.LatLng(latitude, longitude), location_list[i]]
        })

        var distance = poly.getLength()
        res_info = restaurantList[i].resName + ' ' + Math.floor(distance) + 'm'

        if (distance < radius) {
            let marker2 = new kakao.maps.Marker({
                map: map,
                position: location_list[i],
            });

            // TODO 커스텀 오버레이 확인
            let overlay = new kakao.maps.CustomOverlay({
                // content: res_info,
                position: location_list[i]
            })

            let wrap = document.createElement('div')
            wrap.className = 'wrap'

            let info = document.createElement('div')
            info.className = 'info'

            let a_restaurantInfo = document.createElement('a')
            a_restaurantInfo.href = '/restaurant/restaurantInfo?resId='+restaurantList[i].resId

            let title = document.createElement('div')
            title.className = 'title'
            title.innerHTML = restaurantList[i].resName

            let close = document.createElement('div')
            close.className = 'close'
            close.onclick = function () {
                overlay.setMap(null)
            }

            let body = document.createElement('div')
            body.className = 'body'

            let div_img = document.createElement('div')
            div_img.className = 'img'

            let img = document.createElement('img')
            img.id = 'marker_restaurantImg'
            img.src = restaurantList[i].rtr_pic_loc


            let desc = document.createElement('div')
            desc.className = 'desc'

            let ellipsis1 = document.createElement('div')
            ellipsis1.className = 'ellipsis'
            ellipsis1.innerHTML = restaurantList[i].resAddr

            let ellipsis2 = document.createElement('div')
            ellipsis2.className = 'ellipsis'
            ellipsis2.innerHTML = Math.floor(distance) + 'm'

            div_img.appendChild(img)
            desc.appendChild(ellipsis1)
            desc.appendChild(ellipsis2)
            body.appendChild(div_img)
            body.appendChild(desc)
            title.appendChild(close)
            info.appendChild(title)
            info.appendChild(a_restaurantInfo)
            a_restaurantInfo.appendChild(body)
            wrap.appendChild(info)


            // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
            kakao.maps.event.addListener(marker2, 'click', function () {
                overlay.setContent(wrap)
                overlay.setMap(map);
            });

        } // if End
    } // for End

    // 주소 좌표간 변환 서비스 객체 생성
    // https://apis.map.kakao.com/web/documentation/
    let geocoder = new kakao.maps.services.Geocoder()
    let coord = new kakao.maps.LatLng(latitude, longitude)
    let callback = function (result, status) {
        if (status === kakao.maps.services.Status.OK) {
            
            // 현재 위치의 주소 ㅇㅇ구 확인
            console.log(result[0]['address'].region_2depth_name);

            // 식당리스트 표시
            $.ajax({
                type: 'post',
                url: '/mainRecommend',
                contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
                data: {
                    'resKeyword': $('#foodKind').val(),
                    'resAddr': result[0]['address'].region_2depth_name
                },
                success: (res_allList) => {

                    if(res_allList != null){
                        $('#recommend_div').remove()

                        let recommend_div = $('<div id="recommend_div" class="recommend_div owl-carousel testimonial-carousel"></div>')
                        
                        // #recommend_container의 맨앞에 추가 후 map_div 바로 뒤로 자리 옮김
                        $('#recommend_container').prepend(recommend_div)
                        $('#recommend_div').insertAfter($('#map_div'))

                        for (let i = 0; i < res_allList.length; i++) {

                            // 식당의 이름이 8자가 넘었을 경우 처리
                            if(res_allList[i].resName.length > 8){
                                res_allList[i].resName = res_allList[i].resName.substring(0,7)+'...'
                            }

                            let content = $('<div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">' +
                                '<a id = "a_img" href="/restaurant/restaurantInfo?resId='+res_allList[i].resId+'" class="item-wrap fancybox">' +
                                '<div class="work-info">' +
                                '<h3>Cocooil</h3>' +
                                '<span>Branding</span>' +
                                '</div>' +
                                '<img class="res_img" width="400" height="300" src=' + res_allList[i].rtr_pic_loc + '>' +
                                '</a>' +
                                '<table border="0">' +
                                '<tr id="tr_name">' +
                                '<td class ="detail_des" width = "350">' + res_allList[i].resName + '<span class="res_rating">' + res_allList[i].resRating + '</span></td>' +
                                '</tr>' +
                                '<tr id="tr_location">' +
                                '<td class ="detail_des2" width = "350">' + res_allList[i].resAddr.split(" ")[1] + '</td>' +
                                '</tr>' +
                                '<tr id="tr_re">' +
                                '<td class ="detail_des2" width = "350">리뷰 : ' + res_allList[i].likeCount + ' 리뷰 : ' + res_allList[i].reviewCount + '</td>' +
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
                    }

                }, error: (error) => {
                    alert('메인페이지 식당정보 가져오기 실패 : ' + error)
                    console.log('메인페이지 식당정보 가져오기 실패 : ' + error)
                }
            })
        }
    };
    geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
} // showMap End

getLocation()
