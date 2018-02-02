<?php
require_once("database.php");
class M_thong_ke_doanh_thu extends database
{
    function theo_san_pham(){
        $sql = "SELECT hoa.*,sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don inner join hoa on hoa.MaHoa=chi_tiet_hoa_don.MaHoa group by hoa.MaHoa";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    public function theo_ngay()
    {
        $sql="SELECT DATE_FORMAT(ngay_dat, '%d/%m/%Y') as ngay_dat,sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE MONTH(ngay_dat) = MONTH(CURRENT_DATE())
AND YEAR(ngay_dat) = YEAR(CURRENT_DATE()) group by day(ngay_dat)";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    public function theo_tuan()
    {
        $sql="SELECT week(ngay_dat)as tuan,sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE MONTH(ngay_dat) = MONTH(CURRENT_DATE())
AND YEAR(ngay_dat) = YEAR(CURRENT_DATE()) group by week(ngay_dat)";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function theo_thang(){
      $sql="SELECT month(ngay_dat)as thang,sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE YEAR(ngay_dat) = YEAR(CURRENT_DATE()) group by month(ngay_dat)";
      $this->setQuery($sql);
      return $this->loadAllRows();
    }
    function theo_quy_1(){
      $sql="SELECT sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE month(ngay_dat)=1 or month(ngay_dat)=2  or month(ngay_dat)=3 and year(ngay_dat)=YEAR(CURRENT_DATE())";
      $this->setQuery($sql);
      return $this->loadRow();
    }
    function theo_quy_2(){
      $sql="SELECT sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE month(ngay_dat)=4 or month(ngay_dat)=5  or month(ngay_dat)=6 and year(ngay_dat)=YEAR(CURRENT_DATE())";
      $this->setQuery($sql);
      return $this->loadRow();
    }
    function theo_quy_3(){
      $sql="SELECT sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE month(ngay_dat)=7 or month(ngay_dat)=8  or month(ngay_dat)=9 and year(ngay_dat)=YEAR(CURRENT_DATE())";
      $this->setQuery($sql);
      return $this->loadRow();
    }
    function theo_quy_4(){
      $sql="SELECT sum(tong_thanh_tien) as tong_tt FROM chi_tiet_hoa_don inner join hoa_don on hoa_don.ma_hoa_don=chi_tiet_hoa_don.ma_hoa_don WHERE month(ngay_dat)=10 or month(ngay_dat)=11  or month(ngay_dat)=12 and year(ngay_dat)=YEAR(CURRENT_DATE())";
      $this->setQuery($sql);
      return $this->loadRow();
    }

}

?>
