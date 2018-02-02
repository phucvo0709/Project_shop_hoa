<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết Logo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="logo.php">
            <input type="hidden" name="id" value="{$doc_logo->idlogo}">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Chiều cao:</label>
            <input type="text" class="form-control" name="cao" value="{$doc_logo->ChieuCao}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Độ rộng:</label>
            <input type="text" class="form-control" name="rong" value="{$doc_logo->DoRong}" autocomplete="off">
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col col-3">
                <div class="input-file-container">
                  <input class="input-file" type="file" name="hinh" id="file{$doc_logo->idlogo}"/>
                  <label tabindex="0" for="my-file" class="input-file-trigger">Tải lên ảnh mới</label>
                </div>
                <p class="file-return"></p>
              </div>
              <div class="col col-3">
                  <img id="hienThi{$doc_logo->idlogo}" class="img-fluid" src="../public/images/logo/{$doc_logo->Hinh}"/>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success" name="btn_update_logo">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
