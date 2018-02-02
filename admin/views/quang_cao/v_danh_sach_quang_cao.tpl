<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình</th>
      <th>Tên quảng cáo</th>
      <th>Đường dẫn</th>
      <th>Thời gian</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
  {foreach $doc_quang_cao as $quang_cao}
    <tr id="delete{$quang_cao->id}">
      <td width="175px" style="max-height: 200px;"><img src="../public/images/quang_cao/{$quang_cao->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$quang_cao->TieuDe}</td>
      <td>{$quang_cao->DuongDan}</td>
      <td>{$quang_cao->ThoiGian}</td>
      <td>
          <button type="button" class="btn btn-primary" onclick="getId({$quang_cao->id})" id="update{$quang_cao->id}" data-toggle="modal" data-target="#edit{$quang_cao->id}" >Sửa</button>
          <button type="button" onclick="deleteAjax({$quang_cao->id})" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
    {include file="views/quang_cao/v_modal_sua_quang_cao.tpl" }
  {/foreach}
  </tbody>
</table>
