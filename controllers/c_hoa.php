<?php
session_start();
class C_hoa
{
    public function hien_thi_trang_hoa()
    {
        include("c_data_contact.php");
        include("models/m_hoa.php");
        $m_hoa = new M_hoa();
        $doc_loai_hoa = $m_hoa->doc_loai_hoa();
        include("URL.php");
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $title = "Danh sách hoa";
        $view = "views/v_hoa.tpl";
        include("c_smarty_info.php");
        $smarty->assign('doc_loai_hoa', $doc_loai_hoa);
        $smarty->display("layout.tpl");
    }
    public function san_pham_da_xem()
    {
        include("c_data_contact.php");
        include("URL.php");
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $title = "Sản phẩm đã xem";
        $view = "views/v_san_pham_da_xem.tpl";
        include("c_smarty_info.php");
        $smarty->display("layout.tpl");
    }
}
