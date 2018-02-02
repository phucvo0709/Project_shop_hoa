function deleteAjax(id){
    swal({
        title: "Bạn có đồng ý xóa thành viên này",
        text: "Sau khi đã bị xóa, bạn sẽ không thể khôi phục thành viên này!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((isConfirm) => {
        if (isConfirm) {
            $.ajax({
                type:'post',
                url:'models/delete_thanh_vien.php',
                data:{delete_id:id},
                success:function(data){
                    $('#delete'+id).hide('slow');
                }
            })
            swal("Thành viên đã xóa thành công", {
                icon: "success",
            });
        }
    });
}
