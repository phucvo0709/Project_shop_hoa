<?php
require_once("database.php");
class M_thong_tin extends database
{
    function doc_tat_ca_thong_tin(){
        $sql = "select * from thong_tin ORDER BY ThoiGian DESC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function doc_thong_tin_theo_id($id){
        $sql = "SELECT * FROM thong_tin WHERE id=?";
        $this->setQuery($sql);
        return $this->loadRow(array($id));
    }
    function update_thong_tin($tieuDe,$hinh,$duongDan,$hanhDong,$id){
        $sql = "UPDATE thong_tin SET TieuDe=?,Hinh=?,DuongDan=?,HanhDong=?,ThoiGian=now() WHERE id=?";
        $this->setQuery($sql);
        return $this->execute(array($tieuDe,$hinh,$duongDan,$hanhDong,$id));
    }
    public function them_thong_tin($tieuDe,$hinh,$duongDan,$hanhDong){
      $sql = "INSERT INTO thong_tin(TieuDe,Hinh,DuongDan,HanhDong,ThoiGian) VALUES ('$tieuDe', '$hinh', '$duongDan','$hanhDong', now())";
      $this->setQuery($sql);
      $this->execute();
    }
}
?>
