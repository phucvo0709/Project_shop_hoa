{* Modal edit *}
<div class="modal fade" id="edit{$loai_hoa->MaLoai}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết {$loai_hoa->TenLoai}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="loai_hoa.php">
          <input type="hidden" name="ma_loai" value="{$loai_hoa->MaLoai}">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên loại hoa:</label>
            <input type="text" class="form-control ten_loai" name="ten_loai" id="ten_loai{$loai_hoa->MaLoai}" value="{$loai_hoa->TenLoai}" autocomplete="off">
            <div id="tenLoaiResult{$loai_hoa->MaLoai}"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success" name="btn_update" id="checkUpdate{$loai_hoa->MaLoai}">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
{* end modal edit *}
