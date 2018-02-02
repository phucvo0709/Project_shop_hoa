function deleteAjax(id){
    swal({
        title: "Bạn có đồng ý xóa",
        text: "Sau khi đã bị xóa, bạn sẽ không thể khôi phục slider này!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((isConfirm) => {
        if (isConfirm) {
            $.ajax({
                type:'post',
                url:'models/delete_slider.php',
                data:{delete_id:id},
                success:function(data){
                    $('#delete'+id).hide('slow');
                }
            })
            swal("Slider đã xóa thành công", {
                icon: "success",
            });
        }
    });
}


    
    