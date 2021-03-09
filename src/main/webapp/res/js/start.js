$(function () {
    let background_arr = new Array()
    background_arr.push('/res/img/background_img/back_img1.jpg')
    background_arr.push('/res/img/background_img/back_img2.jpg')
    background_arr.push('/res/img/background_img/back_img3.jpg')
    background_arr.push('/res/img/background_img/back_img4.jpg')
    background_arr.push('/res/img/background_img/back_img5.jpg')
    background_arr.push('/res/img/background_img/back_img6.jpg')


    // 배경화면 랜덤으로 나타내기
    document.body.style.backgroundImage = 'url(' + background_arr[Math.floor(Math.random()*background_arr.length)]+')'

    $('#select_kind').formSelect();

    var user=window.sessionStorage.getItem("member");
    // var favor=sessionStorage.getItem("favor");
    // alert(favor);
    if (user!=""){
    $('#select_kind').on('change', function () {
        $('#kind_form').submit()
    })}
})

