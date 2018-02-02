function deleteAjax(id){
    swal({
        title: "Bạn có đồng ý xóa",
        text: "Sau khi đã bị xóa, bạn sẽ không thể khôi phục tin tức này!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((isConfirm) => {
        if (isConfirm) {
            $.ajax({
                type:'post',
                url:'models/delete_tin_tuc.php',
                data:{delete_id:id},
                success:function(data){
                    $('#delete'+id).hide('slow');
                }
            })
            swal("Tin tức đã xóa thành công", {
                icon: "success",
            });
        }
    });
}