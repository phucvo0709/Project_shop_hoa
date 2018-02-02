<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Họ tên</th>
      <th>Email</th>
      <th>Tổng đơn hàng</th>
      <th>Đơn hàng gần nhất</th>
      <th>Tổng chi tiêu</th>
    </tr>
  </thead>
  <tbody>
  {foreach $ds_khach_hang as $khach_hang}
    <tr>
      <td>{$khach_hang->ten_khach_hang}</td>
      <td>{$khach_hang->email}</td>
      <td>{$khach_hang->don_hang}</td>
      <td><a href="chi_tiet_hoa_don.php?ma_hoa_don={$khach_hang->don_hang_gan_nhat}" title="Xem chi tiết đơn hàng" >{$khach_hang->don_hang_gan_nhat}</a></td>
      <td>{number_format($khach_hang->tong_chi_tieu)} đ</td>
    </tr>
  {/foreach}
  </tbody>
</table>
