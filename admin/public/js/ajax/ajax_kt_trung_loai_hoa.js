function getId(id){
    $("#ten_loai"+id).keyup(function (e) {     
        var tenLoai = $(this).val(); 
        $.post('models/kt_trung_loai_hoa.php', {'tenLoai':tenLoai}, function(data) {
            $("#tenLoaiResult"+id).html(data);
            $("#tenLoaiResult"+id).css("color","red");
        });
    });	
}