function getId(id){
    function filePreview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#uploadForm'+id+ 'img').remove();
                $('#hienThi'+id).attr("src", e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#file"+id).change(function () {
    filePreview(this);
    });   
}
