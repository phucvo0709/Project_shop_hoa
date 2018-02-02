<?php
require_once("database.php");
class M_seo extends database
{
    function seo(){
        $sql = "select title_website, description_website, keywords_website, logo from contact WHERE id = 1";
        $this->setQuery($sql);
        return $this->loadRow();
    }
    function update_seo($title_website,$description_website,$keywords_website, $hinh){
        $sql = "UPDATE `contact` SET `title_website`=?,`description_website`=?,`keywords_website`=?, `logo`=? WHERE id = 1";
        $this->setQuery($sql);
        return $this->execute(array($title_website,$description_website,$keywords_website, $hinh));
    }
}
?>
