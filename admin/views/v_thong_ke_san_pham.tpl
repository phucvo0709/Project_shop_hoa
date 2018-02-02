  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
      <tr>
        <th>Mã hoa</th>
        <th>Tên hoa</th>
        <th>Hình</th>
        <th>Giá KM</th>
        <th>SL Hoa</th>
        <th>Tổng doanh thu</th>
      </tr>
    </thead>
    <tbody>
    {foreach $theo_sp as $hoa}
      <tr>
        <td>{$hoa->MaHoa}</td>
        <td>{$hoa->TenHoa}</td>
          <td width="75px" ><img src="../public/images/hoa/{$hoa->Hinh}" class="img-fluid" alt="Responsive image"></td>
        <td>{number_format($hoa->GiaKhuyenMai)} đ</td>
        <td>{$hoa->SoLuongSP}</td>
        <td>{number_format($hoa->tong_tt)} đ</td>
      </tr>
    {/foreach}
    </tbody>
  </table>