<?php
    if(isset($_POST['delete_id'])){
        $id = $_POST['delete_id'];
        include("database.php");
        $db = new database();
        $sql = "DELETE FROM quang_cao WHERE id =?";
        $db->setQuery($sql);
        return $db->execute(array($id));
    }
?>