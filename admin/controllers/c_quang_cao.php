<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_quang_cao
{
    function hien_thi_quang_cao(){
        unset($_SESSION['thongBao']);
        unset($_SESSION['thongBaoThanhCong']);
        //Model
        include("models/m_quang_cao.php");
        $m_quang_cao = new M_quang_cao();
        $doc_quang_cao = $m_quang_cao->doc_tat_ca_quang_cao();
        $this->ThemQuangCao();
        $this->SuaQuangCao();
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_quang_cao.tpl";
        $title = "Danh sách quảng cáo";
        $smarty->assign("title",$title);
        $smarty->assign("doc_quang_cao",$doc_quang_cao);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    public function ThemQuangCao(){
      if (isset($_POST["btn_add"]))
      {
        $m_quang_cao = new M_quang_cao();
        $tieuDe = $_POST['tieu_de'];
        $duongDan = $_POST['duong_dan'];
        include("UploadFile.php");
        $hinh=UploadFile("",'quang_cao');
        $them=$m_quang_cao->them_quang_cao($tieuDe,$hinh,$duongDan);
        if ($them) {
            $_SESSION['thongBaoThanhCong']="Thêm quảng cáo thành công";
        }
      }
    }
    public function SuaQuangCao(){
      if(isset($_POST['btn_update_quang_cao'])){
          $m_quang_cao = new M_quang_cao();
          $id = $_POST['id'];
          $tieuDe = $_POST['tieu_de'];
          $duongDan = $_POST['duong_dan'];
          include("UploadFile.php");
          $hinh=UploadFile($m_quang_cao->doc_quang_cao_theo_id($id)->Hinh,'quang_cao');
          $update = $m_quang_cao->update_quang_cao($tieuDe,$hinh,$duongDan,$id);
          if ($update)
          {
              $_SESSION['thongBaoThanhCong']="Cập nhật quảng cáo thành công";
          }
      }
    }
}
?>
