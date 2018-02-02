{* Modal add *}
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="max-width: 875px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm tin tức mới</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="tin_tuc.php" id="uploadForm" enctype="multipart/form-data">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Loại tin:</label>
            <select class="form-control" name="loai_tin">
                <option value="" disabled>Chọn loại tin tức</option>
                {foreach $doc_loai_tin as $loai_tin}
                  <option value="{$loai_tin->MaLoaiTin}">{$loai_tin->TenLoaiTin}</option>
                {/foreach}
            </select>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên tin tức:</label>
            <input type="text" class="form-control" name="ten_tt" value="" autocomplete="off" maxlength="100" required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Nội dung:</label>
            <textarea class="ckeditor form-control" type="text" name="noi_dung" required></textarea>
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
