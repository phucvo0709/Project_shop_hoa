<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_thanh_vien
{
    public function trang_thanh_vien()
    {
        unset($_SESSION['thongBao']);
        unset($_SESSION['thongBaoThanhCong']);
        include("models/m_thanh_vien.php");
        $m_thanh_vien = new M_thanh_vien();
        $thanh_viens = $m_thanh_vien->doc_tat_ca_thanh_vien();

        if (isset($_POST['btn_update'])) {
          $id = $_POST['id'];
          $permission = $_POST['permission'];
          $update = $m_thanh_vien->update_thanh_vien($permission, $id);
          if ($update) {
              $_SESSION['thongBaoThanhCong']="Cập nhật thành viên thành công";
          }
        }
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_thanh_vien.tpl";
        $title = "Danh sách thành viên";
        $smarty->assign("title", $title);
        $smarty->assign("thanh_viens", $thanh_viens);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }


}
