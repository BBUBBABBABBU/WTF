$(function(){
        $('#select_kind').formSelect();

        $('#select_kind').on('change', function(){
            alert($('#select_kind').val())
            $('#kind_form').submit()
        })
})

