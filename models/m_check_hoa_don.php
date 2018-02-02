<?php
require_once("database.php");
class M_check_hoa_don extends database
{
    function tim_hoa_don($search){
        $sql = "select hd.*, kh.ten_khach_hang, kh.dien_thoai, ct.so_luong, ct.MaHoa, h.TenHoa, h.TenHoa_URL FROM hoa_don hd INNER JOIN khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang INNER JOIN chi_tiet_hoa_don ct ON ct.ma_hoa_don = hd.ma_hoa_don INNER JOIN hoa h ON h.MaHoa = ct.MaHoa WHERE kh.dien_thoai LIKE '%$search%' ORDER BY hd.ngay_dat";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
}
