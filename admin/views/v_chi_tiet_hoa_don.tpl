<div class="card mb-3">
  <div class="card-header print">
    <i class="fa fa-table"></i> Chi tiết hóa đơn</div>
    <div class="card-body">
      <fieldset class="chi_tiet_hoa_don">
            <p>
              <label>Mã Đơn Hàng:</label> {$chi_tiet_hoa_don->ma_hoa_don}
              <label><span style="margin-left:50px">Ngày lập hóa đơn: </span></label>{$chi_tiet_hoa_don->ngay_dat|date_format:'%d-%m-%Y'}
            </p>
            <p>
              <label>Trị giá: </label> {number_format($chi_tiet_hoa_don->tong_thanh_tien)} đồng
            </p>
            <p>
              <label>Họ tên khách hàng: </label> {$chi_tiet_hoa_don->ten_khach_hang}
            </p>
            <p>
              <label>Địa chỉ: </label> {$chi_tiet_hoa_don->dia_chi}
              <label><span style="margin-left:20px">Điện thoại:</span></label> {$chi_tiet_hoa_don->dien_thoai}
              <label><span style="margin-left:20px">Email: </span></label> {$chi_tiet_hoa_don->email}
            </p>
            <p><input class="button print btn btn-success" type="button" value="In đơn hàng" name="btnIn" onclick="window.print()" /></p>
        </fieldset>
        <div class="clear"></div>
        <div class="tieu_de">
           <h1>Chi tiết hóa đơn</h1>
        </div>
  <table class="table table-bordered">
   <thead>
     <tr>
       <th>STT</th>
       <th>Sản phẩm</th>
       <th>Số lượng</th>
       <th>Đơn giá</th>
       <th>Thành tiền</th>
     </tr>
   </thead>
   <tbody>
     {$stt=0}
    {foreach $doc_san_pham as $sp}
      {$stt=$stt+1}
    <tr>
      <td>{$stt}</td>
      <td>{$sp->TenHoa}</td>
      <td>{$sp->so_luong}</td>
      <td>{number_format($sp->GiaKhuyenMai)} đ</td>
      <td>{number_format($sp->GiaKhuyenMai*$sp->so_luong)} đ</td>
    </tr>
    {/foreach}
   </tbody>
 </table>
 <div class="pagination"><h4>Tổng thành tiền: {number_format($chi_tiet_hoa_don->tong_thanh_tien)} đồng</h4> </div>
    </div>
  </div>
