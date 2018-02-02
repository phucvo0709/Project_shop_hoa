
<?php
session_start();
unset($_SESSION["status"]);
error_reporting(0);
class C_check_hoa_don
{
    public function hien_thi_trang_check_hoa_don()
    {
        include("c_data_contact.php");
        //Model
        include("models/m_check_hoa_don.php");
        $m_check_hoa_don = new M_check_hoa_don();
        if(isset($_POST['btn_search'])){
            if($_POST['search'] == ""){
                $_SESSION["status"] = "Vui lòng nhập số điện thoại để tìm hóa đơn";
            }else{
                $search = $_POST['search'];
                $hoa_dons = $m_check_hoa_don->tim_hoa_don($search);
                if(!$hoa_dons){
                    $_SESSION["status"] = "Không tìm thấy hóa đơn";
                }
            }
        }
        //View
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $title = "Kiểm tra hóa đơn";
        $smarty->assign('title', $title);
        $view = "views/v_check_hoa_don.tpl";
        include("c_smarty_info.php");
        //Smarty check hoa don
        $smarty->assign('hoa_dons', $hoa_dons);
        $smarty->display("gioi_thieu/layout.tpl");
    }
}
