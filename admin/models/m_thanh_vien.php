<?php
require_once("database.php");
class M_thanh_vien extends database
{
    function doc_tat_ca_thanh_vien(){
        $sql = "SELECT * FROM `admin` ORDER BY permission DESC";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    function update_thanh_vien($permission, $id){
        $sql = "UPDATE admin SET permission=? WHERE id=?";
        $this->setQuery($sql);
        return $this->execute(array($permission, $id));
    }
}
?>