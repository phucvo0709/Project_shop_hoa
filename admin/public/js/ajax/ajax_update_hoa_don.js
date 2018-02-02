function updateAjax(id){
    swal({
        title: "Bạn đã muốn xác nhận đơn hàng?",
        text: "Bạn đã xem thông tin và quyết định xác nhận đơn đặt hàng!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((isConfirm) => {
        if (isConfirm) {
            $.ajax({
                type:'post',
                url:'models/update_hoa_don.php',
                data:{update_id:id},
                success:function(data){
                    swal({
                        title: "Xử lý hoàn tất!",
                        text: "Đơn hàng đã được xử lý!",
                        type: "success"
                    }).then(function () {
                    location.reload();
                    });
                }
            })
        }
    });
}
