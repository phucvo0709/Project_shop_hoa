<?php
require_once("database.php");
class M_favicon extends database
{
    function favicon(){
        $sql = "select favicon from contact WHERE id = 1";
        $this->setQuery($sql);
        return $this->loadRow();
    }
    function update_favicon($hinh){
        $sql = "UPDATE `contact` SET `favicon`=? WHERE id = 1";
        $this->setQuery($sql);
        return $this->execute(array($hinh));
    }
}
?>
