<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_tin_tuc
{
    function hien_thi_tin_tuc(){
        //Model
        include("models/m_tin_tuc.php");
        $m_tin_tuc = new M_tin_tuc();
        $doc_tin_tuc = $m_tin_tuc->doc_tat_ca_tin_tuc();
        $doc_loai_tin = $m_tin_tuc->doc_loai_tin();
        $this->Sua();
        $this->Them();
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_tin_tuc.tpl";
        $title = "Danh sách tin tức";
        $smarty->assign("title",$title);
        $smarty->assign("doc_tin_tuc", $doc_tin_tuc);
        $smarty->assign("doc_loai_tin", $doc_loai_tin);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    public function Sua(){
      if(isset($_POST['btn_update'])){
          $m_tin_tuc = new M_tin_tuc();
          $maTT = $_POST['ma_tt'];
          $tenTT = $_POST['ten_tt'];
          $noiDung = $_POST['noi_dung'];
          $maLoaiTin = $_POST['loai_tin'];
          include("UploadFile.php");
          $hinh=UploadFile($m_tin_tuc->doc_tin_tuc_theo_ma($maTT)->Hinh,'tin_tuc');
          $xuat = $m_tin_tuc->doc_tin_tuc_theo_ma($maTT);
          $update = $m_tin_tuc->update_tin_tuc($tenTT,$noiDung,$hinh,$maLoaiTin,$maTT);
          if($update){
              $_SESSION['thongBaoThanhCong']="Cập nhật tin tức thành công";
          }
      }
    }
    public function Them(){
      if (isset($_POST["btn_add"]))
      {
        $m_tin_tuc = new M_tin_tuc();
        $tenTT = $_POST['ten_tt'];
        $noiDung = $_POST['noi_dung'];
        $loaiTin = $_POST['loai_tin'];
        include("UploadFile.php");
        $hinh=UploadFile('','tin_tuc');
        $them=$m_tin_tuc->them_tin_tuc($tenTT,$noiDung,$hinh,$loaiTin);
        if($them){
            $_SESSION['thongBaoThanhCong']="Thêm tin tức mới thành công";
        }
    }
  }
}
?>
