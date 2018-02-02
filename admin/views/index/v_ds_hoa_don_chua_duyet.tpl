 <div class="card-header">
    <i class="fa fa-table"></i> Danh sách hóa đơn chưa xử lý hôm nay</div>
  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>Mã đơn hàng</th>
            <th>Khách hàng</th>
            <th>Ngày đặt</th>
            <th>Tổng tiền</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
          {foreach $doc_hoa_don as $hoa_don}
          <tr id="delete{$hoa_don->ma_hoa_don}">
            <td>
              <a href="chi_tiet_hoa_don.php?ma_hoa_don={$hoa_don->ma_hoa_don}" title="Xem chi tiết đơn hàng" target="_blank">
                {$hoa_don->ma_hoa_don}
              </a>
            </td>
            <td>{$hoa_don->ten_khach_hang}</td>
            <td>{$hoa_don->ngay_dat|date_format:'%d-%m-%Y'}</td>
            <td>{number_format($hoa_don->tong_thanh_tien)} đ</td>
            <td>{$hoa_don->trang_thai}</td>
            <td>
                <button type="button" onclick="updateAjax({$hoa_don->ma_hoa_don})" class="btn btn-success">Xử lý</button>
                <button type="button" onclick="deleteAjax({$hoa_don->ma_hoa_don})" class="btn btn-danger">Xóa</button>
            </td>
          </tr>
          {/foreach}

        </tbody>
      </table>
    </div>
  </div>
