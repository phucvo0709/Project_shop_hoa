<?php
session_start();
class C_gioi_thieu
{
    public function hien_thi_trang_gioi_thieu()
    {
        include("c_data_contact.php");
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $title = "Giới thiệu";
        $view = "views/v_gioi_thieu.tpl";
        include("c_smarty_info.php");
        $smarty->display("gioi_thieu/layout.tpl");
    }
}
