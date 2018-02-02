function deleteAjax(id){
    swal({
        title: "Bạn có đồng ý xóa hóa đơn này?",
        text: "Sau khi đã bị xóa, bạn sẽ không thể khôi phục hóa đơn này!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((isConfirm) => {
        if (isConfirm) {
            $.ajax({
                type:'post',
                url:'models/delete_hoa_don.php',
                data:{delete_id:id},
                success:function(data){
                    $('#delete'+id).hide('slow');
                }
            })
            swal("Xóa hóa đơn thành công", {
                icon: "success",
            });
        }
    });
}
