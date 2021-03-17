let locationList = new Array();

$.ajax({
    type: 'post',
    url: "/restaurant/restaurantLocation",
    contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
    async: false,
    data: {
        'resId': $('#restaurant_info').attr('name')
    },
    success: (data) => {
        locationList = data
    }, error: (err) => {
        alert('restaurantMap.js ajax 실패 : ' + err)
    }
})

let mapContainer = document.getElementById('restaurant_map'), // 지도의 중심좌표
    mapOption = {
        center: new kakao.maps.LatLng(locationList[0], locationList[1]), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

let map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도에 마커를 표시합니다
let marker = new kakao.maps.Marker({
    map: map,
    position: new kakao.maps.LatLng(locationList[0], locationList[1])
});

// 커스텀 오버레이에 표시할 컨텐츠
let content = '<div class="wrap">' +
    '    <div class="info">' +
    '        <div class="title">' +
                $('#restaurant_name').text() +
    '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
    '        </div>' +
    '        <div class="body">' +
    '            <div class="img">' +
    '                <img src='+$('#marker_restaurantImg').val()+' width="73" height="70">' +
    '           </div>' +
    '            <div class="desc">' +
    '                <div class="ellipsis">'+ $('#restaurant_addr').text() +'</div>' +
    '                <div class="ellipsis">'+ $('#restaurant_tel').text() +'</div>' +
    '            </div>' +
    '        </div>' +
    '    </div>' +
    '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
let overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function () {
    overlay.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
function closeOverlay() {
    overlay.setMap(null);
}

