$(function(){
    $('#recommend_order').click(()=>{
        alert($('#recommend_order').attr('name'))
        $.ajax({
            type:'post',
            url:'resOrdered',
            contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
            data:{
                category : $('#recommend_order').attr('name')
            },
            success:(data) =>{
                let res_allList = new Array();
                res_allList = data;
                for(let i = 0; i<res_allList.length; i++){
                    console.log(res_allList[i].res_name)
                }
            }, error:(err)=>{
                alert('failed')
            }
        })
    })


}) //$(function()) end