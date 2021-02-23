$(function(){
    $(document).ready(function(){
        $('#select_menu').formSelect();
        $('#select_menu').change(()=>{
            alert($('#select_menu').val())

        })
    });
})

