<?php
require_once("database.php");
class M_loai_hoa extends database
{
    function doc_tat_ca_loai_hoa(){
        $sql = "select * from loai_hoa";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function update_loai_hoa($tenLoai,$maLoai){
        $sql = "UPDATE loai_hoa SET TenLoai=? WHERE MaLoai=?";
        $this->setQuery($sql);
        return $this->execute(array($tenLoai,$maLoai));
    }
    function kiem_tra_loai_hoa($tenLoai){
        $sql = "SELECT TenLoai FROM loai_hoa WHERE TenLoai=?";
        $this->setQuery($sql);
        return $this->loadRow(array($tenLoai));
    }
}
?>