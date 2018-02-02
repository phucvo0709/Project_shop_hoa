 <div class="card-header">
    <i class="fa fa-table"></i> Danh sách hoa hết hàng</div>
  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
    <tr>
      <th>Hình</th>
      <th>Tên hoa</th>
      <th>Số Lượng</th>
    </tr>
  </thead>
  <tbody id="ds_hoa_het_hang">
    {foreach $dshoa as $hoa}
    <tr id="delete{$hoa->MaHoa}">
      <td width="75px" ><img src="../public/images/hoa/{$hoa->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$hoa->TenHoa}</td>
      <td data-name="so_luong"  data-type="text"  class="so_luong" data-url="sua_sl_hoa.php" data-pk="{$hoa->MaHoa}">{$hoa->SoLuongSP}</td>
    </tr>
  {/foreach}
  </tbody>
      </table>
    </div>
  </div>
