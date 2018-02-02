
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <div class="row">
            <div class="col col-6">
              <i class="fa fa-table"></i> Danh sách tin tức
            </div>
            <div class="col col-6">
              <button type="button" class="btn btn-success float-right" data-toggle="modal" data-target="#add" >Thêm tin tức</button>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="table-responsive">
          {include file="views/tin_tuc/v_danh_sach_tin_tuc.tpl" }
        </div>
          {include file="views/tin_tuc/v_modal_them_tin_tuc.tpl" }
            <script src="public/js/ajax/ajax_delete_tin_tuc.js"></script>
            <script src="public/js/input_file.js"></script>
            <script src="public/js/script_hien_thi_anh_add.js"></script>
            <script src="public/js/script_hien_thi_anh.js"></script>
            {if isset($smarty.session.thongBao)}
              <script>swal("{$smarty.session.thongBao}");</script>
            {/if}
            {if isset($smarty.session.thongBaoThanhCong)}
              <script>
                  swal({
                    title: "Thành công!",
                    text: "{$smarty.session.thongBaoThanhCong}!",
                    icon: "success"
                    }).then(function() {
                        $.ajax({
                          success: function() {
                              window.location = "tin_tuc.php";
                          }
                        });
                    });
              </script>
            {/if}
