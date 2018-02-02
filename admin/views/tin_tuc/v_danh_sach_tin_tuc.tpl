<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình</th>
      <th>Tên tin tức</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
    {foreach $doc_tin_tuc as $tin_tuc}
    <tr id="delete{$tin_tuc->MaTT}">
      <td width="75px" ><img src="../public/images/tin_tuc/{$tin_tuc->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$tin_tuc->TenTT}</td>
      <td>
          <button type="button" class="btn btn-primary" onclick="getId({$tin_tuc->MaTT})" id="update{$tin_tuc->MaTT}" data-toggle="modal" data-target="#edit{$tin_tuc->MaTT}" >Sửa</button>
          <button type="button" onclick="deleteAjax({$tin_tuc->MaTT})" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
    {include file="views/tin_tuc/v_modal_sua_tin_tuc.tpl"}
    {/foreach}
  </tbody>
</table>
</div>
