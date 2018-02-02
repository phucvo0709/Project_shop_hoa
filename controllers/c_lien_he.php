
<?php
session_start();
class C_lien_he
{
    public function hien_thi_trang_lien_he()
    {
        include("c_data_contact.php");
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $title = "Liên hệ";
        $view = "views/v_lien_he.tpl";
        include("c_smarty_info.php");
        $smarty->display("gioi_thieu/layout.tpl");
    }
}
