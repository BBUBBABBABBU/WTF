$('#btn_submit').click(function () {
    send();
    });
$('#form').on('submit', function(e){
    e.preventDefault(); send();
    });
$('#close_chat_btn').on('click', function(){
    $('#chat_wrap').hide().empty();
    });
function send(){
    $('#divbox').append('<div class="msg_box send"><span>'+$('#input1').val()+'<span></div>');
    $("#divbox").scrollTop($("#divbox")[0].scrollHeight); console.log("serial"+$('form').serialize())

    $.ajax({
    url: 'http://127.0.0.1:8000/chat_service/', //챗봇 api url
    type: 'post', dataType: 'json',
    data: $('form').serialize(),
    success: function(data) {
        $('#reponse').html(data.reponse);
        $('#divbox').append('<div class="msg_box receive"><span>'+ data.response +'<span></div>');
        $("#divbox").scrollTop($("#divbox")[0].scrollHeight); } });
        $('#input1').val('');
    }
