{* Modal edit *}
<div class="modal fade" id="edit{$quang_cao->id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="max-width: 875px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết {$quang_cao->TieuDe}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" id="uploadForm{$quang_cao->id}" action="quang_cao.php" enctype="multipart/form-data">
          <input type="hidden" name="id" value="{$quang_cao->id}">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên quảng cáo:</label>
            <input type="text" class="form-control" name="tieu_de" value="{$quang_cao->TieuDe}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Đường dẫn:</label>
            <input type="text" class="form-control" name="duong_dan" value="{$quang_cao->DuongDan}" autocomplete="off">
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col col-3">
                <div class="input-file-container">
                  <input class="input-file" type="file" name="hinh" id="file{$quang_cao->id}"/>
                  <label tabindex="0" for="my-file" class="input-file-trigger">Tải lên ảnh mới</label>
                </div>
                <p class="file-return"></p>
              </div>
              <div class="col col-3">
                  <img id="hienThi{$quang_cao->id}" class="img-fluid" src="../public/images/quang_cao/{$quang_cao->Hinh}"/>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success" name="btn_update_quang_cao" id="checkUpdate{$quang_cao->id}">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
{* end modal edit *}
