<?php
    if(isset($_POST['delete_id'])){
        $id = $_POST['delete_id'];
        include("database.php");
        $db = new database();
        $sql = "DELETE FROM loai_hoa WHERE loai_hoa.MaLoai =?";
        $db->setQuery($sql);
        return $db->execute(array($id));
    }
?>