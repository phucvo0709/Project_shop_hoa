<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_thong_tin
{
    function hien_thi_thong_tin(){
        unset($_SESSION['thongBao']);
        unset($_SESSION['thongBaoThanhCong']);
        //Model
        include("models/m_thong_tin.php");
        $m_thong_tin = new M_thong_tin();
        $doc_thong_tin=$m_thong_tin->doc_tat_ca_thong_tin();
        $this->SuaThongTin();
        $this->ThemThongTin();
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_thong_tin.tpl";
        $title = "Danh sách thông tin";
        $smarty->assign("title",$title);
        $smarty->assign("doc_thong_tin",$doc_thong_tin);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    public function SuaThongTin(){
      if(isset($_POST['btn_update_thong_tin'])){
          $m_thong_tin = new M_thong_tin();
          $id = $_POST['id'];
          $tieuDe = $_POST['tieu_de'];
          $duongDan = $_POST['duong_dan'];
          $hanhDong = $_POST['hanh_dong'];
          include("UploadFile.php");
          $hinh=UploadFile($m_thong_tin->doc_thong_tin_theo_id($id)->Hinh,'banner');
          $update = $m_thong_tin->update_thong_tin($tieuDe,$hinh,$duongDan,$hanhDong,$id);
          if($update){
              $_SESSION['thongBaoThanhCong']="Cập nhật thông tin thành công";
          }
        }
    }
    public function ThemThongTin(){
      if (isset($_POST["btn_add"]))
      {
        $m_thong_tin = new M_thong_tin();
        $tieuDe = $_POST['tieu_de'];
        $duongDan = $_POST['duong_dan'];
        $hanhDong = $_POST['hanh_dong'];
        include("UploadFile.php");
        $hinh=UploadFile("",'banner');
        $them=$m_thong_tin->them_thong_tin($tieuDe,$hinh,$duongDan,$hanhDong);
        if($them){
          $_SESSION['thongBaoThanhCong']="Thêm thông tin thành công";
          }
      }
    }
}
?>
