<?php
session_start();
include("kiem_tra_session.php");
class C_doi_mat_khau
{
    public function trang_doi_mat_khau()
    {
        //Model
        include("models/m_doi_mat_khau.php");
        $m_doi_mat_khau = new M_doi_mat_khau();
        if (isset($_POST["btn_update"])) {
            $id = $_COOKIE['id'];
            $taiKhoan = $_COOKIE['taiKhoan'];
            $matKhau = $this->ma_hoa_mat_khau($_POST['mat_khau']);
            $matKhauMoi =  $this->ma_hoa_mat_khau($_POST['mat_khau_moi']);
            $ktmk = $m_doi_mat_khau->kiem_tra_mat_khau_cu($id, $matKhau);
            if (!$ktmk) {
                echo "<script>
                window.alert('$matKhau')
                </script>";
            } else {
                $dmk = $m_doi_mat_khau->doi_mat_khau($matKhauMoi, $id, $matKhau);
                echo "<script>
                window.alert('Đổi thành công vui lòng đăng nhập lại')
                window.location.href='dang_xuat.php'
                </script>";
            }
        }
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_doi_mat_khau.tpl";
        $title = "Đổi mật khẩu";
        $smarty->assign("title", $title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    public function ma_hoa_mat_khau($ma_hoa)
    {
        $hasformat="$2y$10$";
        $salt="haimuoihaihaimuoihai22";
        $has_and_salt=$hasformat.$salt;
        return $ma_hoa_mk = crypt($ma_hoa, $has_and_salt);
    }
}
