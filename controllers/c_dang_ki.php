<?php
session_start();
class C_dang_ki
{
  public function dang_ki()
  {
    include("models/m_khach_hang.php");
    $m_khach_hang= new M_khach_hang();
    if(isset($_POST['dang_ki'])){
      $_SESSION['hoTen']=$hoten=$_POST['hoTen'];
      $phai=$_POST['phai'];
      $_SESSION['email']= $email=$_POST['email'];
      $dia_chi=$_POST['diaChi'];
      $dien_thoai=$_POST['dienThoai'];
      $mat_khau=$_POST['matKhau'];
      $kq=$m_khach_hang->Them_khach_hang($hoten, $phai,$email, $dia_chi, $dien_thoai,$mat_khau);
      if($kq){
         $_SESSION['makh']=$m_khach_hang->Doc_khach_hang_theo_email_pass($email,$mat_khau)->ma_khach_hang;
         if(isset($_SESSION['giohang'])){
            header('Location: khach-hang.html');
          }
          else{
            header('Location: .');
          }
      }
    }
      include("c_data_contact.php");
      include("Smarty_shop_hoa.php");
      $smarty = new Smarty_Shop_Hoa();
      $title = "Đăng Kí";
      $view = "views/v_dang_ki.tpl";
      include("c_smarty_info.php");
      $smarty->display("layout.tpl");
  }
}
