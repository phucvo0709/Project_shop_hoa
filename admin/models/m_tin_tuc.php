<?php
require_once("database.php");
class M_tin_Tuc extends database
{
    function doc_tat_ca_tin_tuc(){
        unset($_SESSION['thongBao']);
        unset($_SESSION['thongBaoThanhCong']);
        $sql = "select tt.*, lt.TenLoaiTin from tin_tuc tt INNER JOIN loai_tin lt ON lt.MaLoaiTin = tt.MaLoaiTin ORDER BY tt.ThoiGian DESC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function update_tin_tuc($tenTT,$noiDung,$hinh,$maLoaiTin,$maTT){
        $sql = "UPDATE tin_tuc SET TenTT=?,NoiDung=?,Hinh=?,ThoiGian=now(),MaLoaiTin=? WHERE MaTT=?";
        $this->setQuery($sql);
        return $this->execute(array($tenTT,$noiDung,$hinh,$maLoaiTin,$maTT));
    }
    function doc_loai_tin(){
        $sql = "SELECT * FROM loai_tin";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function doc_tin_tuc_theo_ma($maTT){
        $sql = "SELECT * FROM tin_tuc WHERE MaTT=?";
        $this->setQuery($sql);
        return $this->loadRow(array($maTT));
    }
    public function them_tin_tuc($tenTT,$noiDung,$hinh,$loaiTin){
      $sql = "INSERT INTO tin_tuc(TenTT,NoiDung,Hinh,ThoiGian,MaLoaiTin) VALUES ('$tenTT', '$noiDung', '$hinh', now(), '$loaiTin')";
      $this->setQuery($sql);
      return $this->execute();
    }
}
?>
