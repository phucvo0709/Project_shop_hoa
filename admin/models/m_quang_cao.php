<?php
require_once("database.php");
class M_quang_Cao extends database
{
    function doc_tat_ca_quang_cao(){
        $sql = "select * from quang_cao ORDER BY ThoiGian DESC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function doc_quang_cao_theo_id($id){
        $sql = "SELECT * FROM quang_cao WHERE id=?";
        $this->setQuery($sql);
        return $this->loadRow(array($id));
    }
    function update_quang_cao($tieuDe,$hinh,$duongDan,$id){
        $sql = "UPDATE quang_cao SET TieuDe=?,Hinh=?,DuongDan=?,ThoiGian=now() WHERE id=?";
        $this->setQuery($sql);
        return $this->execute(array($tieuDe,$hinh,$duongDan,$id));
    }
    public function them_quang_cao($tieuDe,$hinh,$duongDan){
      $sql = "INSERT INTO quang_cao(TieuDe,Hinh,DuongDan,ThoiGian) VALUES ('$tieuDe', '$hinh', '$duongDan', now())";
      $this->setQuery($sql);
      return $this->execute();
    }
}
?>
