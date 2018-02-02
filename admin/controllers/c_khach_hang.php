<?php
session_start();
include("kiem_tra_session.php");
class C_khach_hang {
    function hien_thi_trang_khach_hang(){
        include("models/m_khach_hang.php");
        $m_khach_hang = new M_khach_hang();
        $ds_khach_hang=$m_khach_hang->doc_tat_ca_khach_hang();
        
        include("Smarty_admin.php");
        $smarty = new Smarty_Admin();
        $view = "views/v_khach_hang.tpl";
        $title = "Trang khách hàng";
        $smarty->assign("ds_khach_hang",$ds_khach_hang);
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
}
?>
