$(function () {
    let weather_apiKey = 'd0dc31819b2d71ef08be28342cd15775'

    // 현재 시각
    let today = new Date()
    let hour = today.getHours()

    let weather = ''

    let night_list = new Array()
    night_list.push('res/img/background_img/chicken.jpg')
    night_list.push('res/img/background_img/jokbal.jpg')
    night_list.push('res/img/background_img/pizza.jpg')

    let morning_list = new Array()
    morning_list.push('res/img/background_img/sandwich.jpg')

    let lunch_list = new Array()
    lunch_list.push('res/img/background_img/ricenoodle.jpg')
    lunch_list.push('res/img/background_img/tang.jpg')
    lunch_list.push('res/img/background_img/kimchiStew.jpg')
    lunch_list.push('res/img/background_img/swings.jpg')

    let dinner_list = new Array()
    dinner_list.push('res/img/background_img/jeon.jpg')
    dinner_list.push('res/img/background_img/galbizzim.jpg')
    dinner_list.push('res/img/background_img/chicken.jpg')
    dinner_list.push('res/img/background_img/jokbal.jpg')
    dinner_list.push('res/img/background_img/pizza.jpg')

    let food_list = new Array()
    food_list.push('res/img/background_img/chicken.jpg')
    food_list.push('res/img/background_img/jokbal.jpg')
    food_list.push('res/img/background_img/pizza.jpg')
    food_list.push('res/img/background_img/sandwich.jpg')
    food_list.push('res/img/background_img/ricenoodle.jpg')
    food_list.push('res/img/background_img/kimchiStew.jpg')
    food_list.push('res/img/background_img/swings.jpg')
    food_list.push('res/img/background_img/jeon.jpg')
    food_list.push('res/img/background_img/galbizzim.jpg')

    // $('#select_kind').formSelect();

    // 저장된 세션값 가져오기
    // var user = window.sessionStorage.getItem("member");
    // var favor=sessionStorage.getItem("favor");
    // alert(favor);
    if (user != "") {
        $('#select_kind').on('change', function () {
            $('#kind_form').submit()
        })
    }else{
        show()
        $('#select_kind').on('change', function () {
            show()
        })

    }

    // 현 위치(좌표)
    function getLocation() {
        if (navigator.geolocation) { // GPS를 지원하면
            navigator.geolocation.getCurrentPosition(function (position) {

                // 현재 위치 위도 경도를 가져옴
                let latitude = position.coords.latitude
                let longitude = position.coords.longitude

                getWeather(latitude, longitude)

            }, error => {
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

    // 현재 날씨 얻어오기 (https://on1ystar.github.io/javascript/2021/01/24/JavaScript-4/)
    function getWeather(latitude, longitude) {
        // fetch --> hhtp Request or Resonse를 비동기 통신(https://chanhuiseok.github.io/posts/js-6/)
        fetch(
            'http://api.openweathermap.org/data/2.5/weather?lat=' + latitude + '&lon=' + longitude + '&appid=' + weather_apiKey
        ).then(response => {
            return response.json()
        }).then(json => {
            console.log('현재 시각 : ' + hour + ', ' + json.weather[0].main)
            setBackground(json)
        }).catch(error => {
            alert('날씨 정보 얻어오기 실패 : ' + error)
        })
    }

    // 날씨 및 현재 시간에 맞는 배경 설정
    function setBackground(data) {
        weather = data.weather[0].main

        if (hour >= 22 || hour <= 4) {  // 야식
            document.body.style.backgroundImage = 'url(' + night_list[Math.floor(Math.random() * night_list.length)] + ')'
        } else if (hour >= 7 && hour <= 11) {   // 아침
            document.body.style.backgroundImage = 'url('+'res/img/background_img/sandwich.jpg'+')'
        } else if (hour > 11 && hour <= 15) {   // 점심시간
            // 눈이나 비가 온다면
            if( weather == 'Drizzle' || weather == 'Rain' || weather =='Snow'){
                document.body.style.backgroundImage = 'url(' + lunch_list[Math.floor(Math.random() * 1)] + ')'
            }else{  // 오지 않는다면
                document.body.style.backgroundImage = 'url(' + lunch_list[Math.floor(Math.random() * lunch_list.length)] + ')'
            }
        } else if(hour >= 17 && hour <= 21){    // 저녁시간
            if( weather == 'Drizzle' || weather == 'Rain'){ // 비가 온다면 전만 배경
                document.body.style.backgroundImage = 'url('+'res/img/background_img/jeon.jpg'+')'
            }else{
                document.body.style.backgroundImage = 'url(' + dinner_list[Math.floor(Math.random() * dinner_list.length)] + ')'
            }
        }else{  // 이외의 시간
            document.body.style.backgroundImage = 'url(' + food_list[Math.floor(Math.random() * food_list.length)] + ')'
        }
    }

    getLocation()

})  // function() end

