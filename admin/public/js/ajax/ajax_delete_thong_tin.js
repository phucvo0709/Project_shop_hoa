function deleteAjax(id){
    swal({
        title: "Bạn có đồng ý xóa",
        text: "Sau khi đã bị xóa, bạn sẽ không thể khôi phục thông tin này!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((isConfirm) => {
        if (isConfirm) {
            $.ajax({
                type:'post',
                url:'models/delete_thong_tin.php',
                data:{delete_id:id},
                success:function(data){
                    $('#delete'+id).hide('slow');
                }
            })
            swal("Thông tin đã xóa thành công", {
                icon: "success",
            });
        }
    });
}


    
    