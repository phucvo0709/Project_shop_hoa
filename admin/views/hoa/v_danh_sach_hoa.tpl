<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình</th>
      <th>Tên hoa</th>
      <th>Loại hoa</th>
      <th>Giá</th>
      <th>Giá KM</th>
      <th>SL</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
  {foreach $doc_hoa as $hoa}
    <tr id="delete{$hoa->MaHoa}">
      <td width="75px" ><img src="../public/images/hoa/{$hoa->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$hoa->TenHoa}</td>
      <td><a href="hoa.php?loai_hoa={$hoa->MaLoai}">{$hoa->TenLoai}</a></td>
      <td>{number_format($hoa->Gia)} đ</td>
      <td>{number_format($hoa->GiaKhuyenMai)} đ</td>
      <td>{$hoa->SoLuongSP}</td>
      <td>
          <button type="button" class="btn btn-primary" onclick="getId({$hoa->MaHoa})" id="update{$hoa->MaHoa}" data-toggle="modal" data-target="#edit{$hoa->MaHoa}" >Sửa</button>
          <button type="button" onclick="deleteAjax({$hoa->MaHoa})" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
{include file="views/hoa/v_modal_sua_hoa.tpl"}
  {/foreach}
  </tbody>
</table>
