$(function () {
    let radius = 500
    let level = 4
    let arr = new Array()
    arr[0] = ["경일고등학교", 37.34750392238187, 126.80510066360843]
    arr[1] = ["신화장어", 37.348152315508955, 126.81579727113643]

    // 가산 디지털단지역 좌표
    // let gasan_latitude = 37.479647527408446
    // let gasan_longitude = 126.8820792032653

    let restaurantList = new Array()

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

    function getLocation() {
        if (navigator.geolocation) { // GPS를 지원하면
            navigator.geolocation.getCurrentPosition(function (position) {

                // 현재 위치 위도 경도를 가져옴
                let latitude = position.coords.latitude
                let longitude = position.coords.longitude
                showMap(latitude, longitude)
                // showMap(gasan_latitude,gasan_longitude)

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
    }


    function showMap(latitude, longitude) {
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
        // let myLocation = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>'

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
            position: markerPosition,
            image: markerImage, // 마커이미지 설정
        });


        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 현재 위치 텍스트 나타내기기
        let infoWindow = new kakao.maps.InfoWindow({
            position: markerPosition,
            content: myLocation
        })

        infoWindow.open(map, marker)

        // 반경 내에 있는 위치 마커표시
        let poly = new kakao.maps.Polyline({
            path: [new kakao.maps.LatLng(latitude, longitude), new kakao.maps.LatLng(arr[0][1], arr[0][2])]
        })

        var distance = poly.getLength()

        if (distance < radius) {
            alert('범위 안' + arr[0][0])
            marker = new kakao.maps.Marker({
                position: new kakao.maps.LatLng(arr[0][1], arr[0][2]),
                image: markerImage, // 마커이미지 설정
            });

            marker.setMap(map)

            infoWindow = new kakao.maps.InfoWindow({
                content: arr[0][0],
                removable: true
            })

            // 마커에 클릭이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'click', function () {
                // 마커 위에 인포윈도우를 표시합니다
                infoWindow.open(map, marker);
            });
        } else {
            alert('범위 밖')
        }

    }

    getLocation()


    // 되는지
    // 확인
    $('#select_kind').on('change', function () {
        $.ajax({
            type: 'post',
            url: "/getRestaurant",
            contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
            data: {
                'kind': $('#select_kind').val()
            },
            success: (data) =>{
                arr = data
                alert('데이터 받아오기 성공 : '+ data)
            },error:(err)=>{
                alert(err)
            }
        })
    })
})