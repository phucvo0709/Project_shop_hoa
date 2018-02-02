<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");
class C_hoa
{
    public function hien_thi_hoa()
    {
        unset($_SESSION['thongBao']);
        unset($_SESSION['thongBaoThanhCong']);
        include("models/m_hoa.php");
        $m_hoa = new M_hoa();
        $doc_hoa = $m_hoa->doc_tat_ca_hoa();
        include("models/m_loai_hoa.php");
        $m_loai_hoa = new M_loai_hoa();
        $doc_loai_hoa = $m_loai_hoa->doc_tat_ca_loai_hoa();
        $this->ThemHoa();
        $this->SuaHoa();
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_hoa.tpl";
        $title = "Danh sách hoa";
        $smarty->assign("title", $title);
        $smarty->assign("doc_hoa", $doc_hoa);
        $smarty->assign("doc_loai_hoa", $doc_loai_hoa);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    public function ThemHoa(){
      if (isset($_POST["btn_add"]))
      {
          $m_hoa = new M_hoa();
          $tenHoa = $_POST['ten_hoa'];
          $gia=str_replace(",","",$_POST['gia']);
          $gia_khuyen_mai=str_replace(",","", $_POST['GiaKhuyenMai']);
          $sl=$_POST['sl'];
          $thanhPhan = $_POST['thanh_phan'];
          $noiDung = $_POST['noi_dung'];
          $maLoai = $_POST['loai_hoa'];
          include("UploadFile.php");
          $hinh=UploadFile("",'hoa');
          include("URL.php");
          $tenHoa_URL=makeURL($tenHoa);
          $them = $m_hoa->them_hoa($tenHoa,$tenHoa_URL, $gia,$gia_khuyen_mai,$thanhPhan, $noiDung, $hinh, $maLoai,$sl);
          if ($them) {
              $_SESSION['thongBaoThanhCong']="Thêm sản phẩm thành công";
          }
      }
    }
    public function SuaHoa(){
      if (isset($_POST['btn_update'])) {
          $m_hoa = new M_hoa();
          $maHoa = $_POST['ma_hoa'];
          $tenHoa = $_POST['ten_hoa'];
          $tenHoa_URL = $_POST['ten_hoa_url'];
          $gia = $_POST['gia'];
          $sl=$_POST['sl'];
          $gia_km = $_POST['gia_khuyen_mai'];
          $thanhPhan = $_POST['thanh_phan'];
          $noiDung = $_POST['noi_dung'];
          $maLoai = $_POST['loai_hoa'];
          include("UploadFile.php");
          $hinh=UploadFile($m_hoa->doc_hoa_theo_ma($maHoa)->Hinh,'hoa');
          $update = $m_hoa->update_hoa($tenHoa,$tenHoa_URL, $gia,$gia_km, $thanhPhan, $noiDung, $hinh, $maLoai,$sl, $maHoa);
          if ($update) {
              $_SESSION['thongBaoThanhCong']="Cập nhật sản phẩm thành công";
          }
        }
    }

}
