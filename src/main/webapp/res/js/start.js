$(function(){
        $('#select_kind').formSelect();

        $('#select_kind').on('change', function(){
            $('#kind_form').submit()
        })
})

