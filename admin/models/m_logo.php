<?php
require_once("database.php");
class M_logo extends database
{
    function doc_logo(){
        $sql = "select * from logo";
        $this->setQuery($sql);
        return $this->loadRow();
    }
    function update_logo($hinh){
        $sql = "UPDATE logo SET Hinh=? WHERE id = 1";
        $this->setQuery($sql);
        return $this->execute(array($hinh));
    }
}
?>
