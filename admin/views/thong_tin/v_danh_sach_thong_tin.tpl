<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình</th>
      <th>Tên Thông Tin</th>
      <th>Đường dẫn</th>
      <th>Thời gian</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
  {foreach $doc_thong_tin as $thong_tin}
    <tr id="delete{$thong_tin->id}">
      <td width="175px" style="max-width: 175px; max-height: 200px;"><img src="../public/images/banner/{$thong_tin->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$thong_tin->TieuDe}</td>
      <td>{$thong_tin->DuongDan}</td>
      <td>{$thong_tin->ThoiGian}</td>
      <td>
          <button type="button" class="btn btn-primary" onclick="getId({$thong_tin->id})" id="update{$thong_tin->id}" data-toggle="modal" data-target="#edit{$thong_tin->id}" >Sửa</button>
          <button type="button" onclick="deleteAjax({$thong_tin->id})" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
    {include file="views/thong_tin/v_modal_sua_thong_tin.tpl"}
  {/foreach}
  </tbody>
</table>
