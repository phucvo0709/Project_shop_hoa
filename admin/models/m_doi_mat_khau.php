<?php
require_once("database.php");
class M_doi_mat_khau extends database
{
    function doi_mat_khau($matKhauMoi,$id,$matKhau){
        $sql = "UPDATE admin SET MatKhau = ? WHERE ID= ? and MatKhau = ?";
        $this->setQuery($sql);
        return $this->execute(array($matKhauMoi,$id,$matKhau));
    }
    function kiem_tra_mat_khau_cu($id, $matKhau){
        $sql ="SELECT MatKhau FROM admin WHERE ID=? and MatKhau=?";
        $this->setQuery($sql);
        return $this->loadRow(array($id,$matKhau));
    }
}
?>