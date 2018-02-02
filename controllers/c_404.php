
<?php
session_start();
error_reporting(0);
class C_404
{
    public function hien_thi_404_page()
    {
        include("c_data_contact.php");
        //Model

        //View
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $title = "404 Page";
        $smarty->assign('title', $title);
        $view = "views/v_404.tpl";
        include("c_smarty_info.php");
        $smarty->display("gioi_thieu/layout.tpl");
    }
}
