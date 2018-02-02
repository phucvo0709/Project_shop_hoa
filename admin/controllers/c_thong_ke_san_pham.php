<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_thong_ke_san_pham
{
    function hien_thi_thong_ke_san_pham(){
        include("models/m_thong_ke_doanh_thu.php");
        $m_thong_ke_doanh_thu = new M_thong_ke_doanh_thu();
        $theo_sp=$m_thong_ke_doanh_thu->theo_san_pham();
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_thong_ke_san_pham.tpl";
        $title = "Thống kê sản phẩm";
        $smarty->assign("theo_sp",$theo_sp);
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
 
}
?>
