      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <div class="row">
            <div class="col col-6">
              <i class="fa fa-table"></i> Danh sách thông tin
            </div>
            <div class="col col-6">
              <button type="button" class="btn btn-success float-right" data-toggle="modal" data-target="#add" >Thêm thông tin mới</button>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            {include file="views/thong_tin/v_danh_sach_thong_tin.tpl"}
          </div>
        </div>
        {include file="views/thong_tin/v_modal_them_thong_tin.tpl"}
    <script src="public/js/ajax/ajax_delete_thong_tin.js"></script>
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
                window.location = "thong_tin.php";
            });
      </script>
    {/if}
