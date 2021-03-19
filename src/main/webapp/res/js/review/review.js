var sel_files = [];

$(document).ready(function (){
    $("#input_imgs").on("change", handleImgsFilesSelect);
});


function handleImgsFilesSelect(e){
    sel_files = [];
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    var index=0;

    filesArr.forEach(function (f) {
        if(!f.type.match("image.*")){
            alert("사진파일만 업로드 가능합니다.")
            return;
        }
        sel_files.push(f)

        var reader = new FileReader();
        reader.onload = function(e){
            var html =  "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\""+e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
            $(".imgs_wrap").append(img_html);
            index++;
        }
        reader.readAsDataURL(f);
    });
}
function deleteImageAction(index){
    console.log("index : "+index );
    sel_files.splice(index, 1);

    var img_id = "#img_id_"+index;
    $(img_Id).remove();

    console.log(sel_files);
}





