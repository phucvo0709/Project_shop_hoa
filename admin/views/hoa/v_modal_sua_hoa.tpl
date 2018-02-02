{* Modal edit *}
<div class="modal fade" id="edit{$hoa->MaHoa}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="max-width: 875px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết {$hoa->TenHoa}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" id="uploadForm{$hoa->MaHoa}" action="hoa.php" enctype="multipart/form-data">
          <input type="hidden" name="ma_hoa" value="{$hoa->MaHoa}">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Loại hoa:</label>
            <select class="form-control" name="loai_hoa">
                <option value="{$hoa->MaLoai}">{$hoa->TenLoai}</option>
                {foreach $doc_loai_hoa as $loai_hoa}
                  <option value="{$loai_hoa->MaLoai}">{$loai_hoa->TenLoai}</option>
                {/foreach}
            </select>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên hoa:</label>
            <input type="text" class="form-control" name="ten_hoa" value="{$hoa->TenHoa}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên URL:</label>
            <input type="text" class="form-control" name="ten_hoa_url" value="{$hoa->TenHoa_URL}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Giá:</label>
            <input type="number" class="form-control" name="gia" value="{$hoa->Gia}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Số lượng:</label>
            <input type="number" class="form-control" name="sl" value="{$hoa->SoLuongSP}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Giá khuyến mãi:</label>
            <input type="number" class="form-control" name="gia_khuyen_mai" value="{$hoa->GiaKhuyenMai}" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Thành phần:</label>
            <textarea class="form-control" type="text" name="thanh_phan">{$hoa->ThanhPhan}</textarea>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Nội dung:</label>
            <textarea class="form-control" type="text" name="noi_dung">{$hoa->NoiDung}</textarea>
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col col-3">
                <div class="input-file-container">
                  <input class="input-file" type="file" name="hinh" id="file{$hoa->MaHoa}"/>
                  <label tabindex="0" for="my-file" class="input-file-trigger">Tải lên ảnh mới</label>
                </div>
                <p class="file-return"></p>
              </div>
              <div class="col col-3">
                  <img id="hienThi{$hoa->MaHoa}" class="img-fluid" src="../public/images/hoa/{$hoa->Hinh}"/>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success" name="btn_update" id="checkUpdate{$hoa->MaHoa}">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
{* end modal edit *}
