<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_them_thanh_vien
{
    public function hien_thi_them_thanh_vien()
    {
        //Model
        include("models/m_them_thanh_vien.php");
        $m_them_thanh_vien = new M_them_thanh_vien();
        $m_them_thanh_vien->data_dang_ky();
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_them_thanh_vien.tpl";
        $title = "Thêm thành viên";
        $smarty->assign("title", $title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
}
