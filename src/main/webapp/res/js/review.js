var sel_files = [];

$(document).ready(function (){
    $("#input_imgs").on("change", handleImgsFilesSelect);
});

function handleImgsFilesSelect(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function (f) {
        if(!f.type.match("image.*")){
            alert("사진파일만 업로드 가능합니다.")
            return;
        }
        sel_files.push(f)

        var reader = new FileReader();

        reader.onload = function(e){
            var img_html = "<img src=\"" + e.target.result + "\" />";
            open()
            $(".imgs_wrap").append(img_html);
        }
        reader.readAsDataURL(f);
    });
}




