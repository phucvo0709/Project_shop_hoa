<?php
session_start();
include("kiem_tra_session.php");
class C_hoa_don
{
    function hien_thi_hoa_don_chua_duyet(){
        //Model
        include("models/m_hoa_don.php");
        $m_hoa_don=new M_hoa_don();
        $doc_hoa_don=$m_hoa_don->xem_hoa_don_chua_duyet();
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_hoa_don.tpl";
        $title = "Danh sách hóa đơn chưa duyệt";
        $smarty->assign("doc_hoa_don",$doc_hoa_don);
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
     function hien_thi_hoa_don_da_duyet(){
        //Model
        include("models/m_hoa_don.php");
        $m_hoa_don=new M_hoa_don();
        $doc_hoa_don=$m_hoa_don->xem_hoa_don_da_duyet();
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_hoa_don.tpl";
        $title = "Danh sách hóa đơn đã duyệt";
        $smarty->assign("doc_hoa_don",$doc_hoa_don);
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    function ChiTiet(){
      if(isset($_GET['ma_hoa_don'])){
        $ma_hoa_don=$_GET['ma_hoa_don'];
        include("models/m_hoa_don.php");
        $m_hoa_don=new M_hoa_don();
        $doc_chi_tiet_hoa_don=$m_hoa_don->Chi_Tiet($ma_hoa_don);
        $doc_san_pham=$m_hoa_don->SanPhamTheoMaHoaDon($ma_hoa_don);
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_chi_tiet_hoa_don.tpl";
        $title = "Chi tiết hóa đơn";
        $smarty->assign("chi_tiet_hoa_don",$doc_chi_tiet_hoa_don);
        $smarty->assign("doc_san_pham",$doc_san_pham);
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
      }
    }
}
?>
