<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Tên loại hoa</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
  {foreach $doc_loai_hoa as $loai_hoa}
    <tr id="delete{$loai_hoa->MaLoai}">
      <td>{$loai_hoa->TenLoai}</td>
      <td>
        <button type="button" class="btn btn-primary" onclick="getId({$loai_hoa->MaLoai})" id="update{$loai_hoa->MaLoai}" data-toggle="modal" data-target="#edit{$loai_hoa->MaLoai}" >Sửa</button>
        <button type="button" onclick="deleteAjax({$loai_hoa->MaLoai})" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
    {include file="views/loai_hoa/v_modal_sua_loai_hoa.tpl"}
  {/foreach}
  </tbody>
</table>
