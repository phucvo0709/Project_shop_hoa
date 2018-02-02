<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình Logo</th>
      <th>Chiều cao</th>
      <th>Độ rộng</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img src="../public/images/logo/{$doc_logo->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$doc_logo->ChieuCao}</td>
      <td>{$doc_logo->DoRong}</td>
      <td>
        <button type="button" class="btn btn-primary" onclick="getLogo()" id="update" data-toggle="modal" data-target="#edit" >Sửa</button>
      </td>
    </tr>
    {include file="views/logo/v_modal_sua_logo.tpl"}
  </tbody>
</table>
