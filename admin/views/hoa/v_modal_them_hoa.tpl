{* Modal add *}
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="max-width: 875px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm sản phẩm mới</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="hoa.php" id="uploadForm" enctype="multipart/form-data">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Loại hoa:</label>
            <select class="form-control" name="loai_hoa">
                {foreach $doc_loai_hoa as $loai_hoa}
                  <option value="{$loai_hoa->MaLoai}">{$loai_hoa->TenLoai}</option>
                {/foreach}
            </select>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên hoa:</label>
            <input type="text" class="form-control" name="ten_hoa" autocomplete="off" maxlength="50" required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Giá:</label>
            <input type="text" class="form-control" id="price" name="gia" autocomplete="off" required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Giá Khuyến Mãi:</label>
            <input type="text" class="form-control" id="gia_khuyen_mai" name="GiaKhuyenMai" autocomplete="off" required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Số lượng:</label>
            <input type="text" class="form-control" id="soluong" name="sl" autocomplete="off" required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Thành phần:</label>
            <textarea class="form-control" type="text" name="thanh_phan" ></textarea>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Nội dung:</label>
            <textarea class="form-control" type="text" name="noi_dung"></textarea>
          </div>
          <div class="form-group">
              <div class="row">
                <div class="col col-3">
                  <div class="input-file-container">
                    <input class="input-file" id="file" name="hinh" type="file" required>
                    <label tabindex="0" for="my-file" class="input-file-trigger">Tải lên ảnh mới</label>
                  </div>
                  <p class="file-return"></p>
                </div>
                <div class="col col-3">
                    <img id="hienThi" class="img-fluid" src=""/>
                </div>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success" name="btn_add">Thêm</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
{* end modal add *}
