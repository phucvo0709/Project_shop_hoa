<?php
require_once("database.php");
class M_index extends database
{
    function doc_tat_ca_hoa(){
        $sql = "select * from hoa ORDER BY hoa.ThoiGian DESC limit 0,8";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function doc_hoa_giam_gia(){
      $sql="SELECT * FROM `hoa` ORDER BY Gia-GiaKhuyenMai DESC LIMIT 8 ";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function doc_hoa_ban_chay(){
      $sql="SELECT hoa.*,sum(so_luong) as sl from hoa inner join chi_tiet_hoa_don on hoa.MaHoa = chi_tiet_hoa_don.MaHoa
    inner join hoa_don on chi_tiet_hoa_don.ma_hoa_don=hoa_don.ma_hoa_don group by hoa.MaHoa
order by sl desc limit 8";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function doc_hoa_moi(){
      $sql="SELECT * FROM hoa order by MaHoa desc limit 8; ";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function san_pham_giam_gia(){
      $sql="SELECT * FROM `hoa` ORDER BY Gia-GiaKhuyenMai DESC LIMIT 3";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function san_pham_noi_bat(){
      $sql="SELECT hoa.*,sum(so_luong) as sl from hoa inner join chi_tiet_hoa_don on hoa.MaHoa = chi_tiet_hoa_don.MaHoa
    inner join hoa_don on chi_tiet_hoa_don.ma_hoa_don=hoa_don.ma_hoa_don group by hoa.MaHoa
order by sl desc limit 3";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function san_pham_re_nhat(){
      $sql="SELECT * FROM `hoa` ORDER BY GiaKhuyenMai LIMIT 3";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function doc_slider(){
      $sql="SELECT * FROM `slider` ORDER BY ThoiGian LIMIT 3";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function doc_thong_tin(){
      $sql="SELECT * FROM `thong_tin` ORDER BY ThoiGian LIMIT 3";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
}
?>
