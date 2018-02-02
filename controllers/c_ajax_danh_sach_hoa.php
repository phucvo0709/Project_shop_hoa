<?php
session_start();
class C_ajax_danh_sach_hoa
{
    public function ds_hoa()
    {
        include("models/m_hoa.php");
        $m_hoa = new M_hoa();
        $doc_hoa = $m_hoa->doc_tat_ca_hoa();
        $page=$_POST['page'];
        if (isset($_POST['maloai'])) {
            $ma_loai=$_POST['maloai'];
            $doc_hoa = $m_hoa->doc_ds_loai_hoa($ma_loai);
         }
         elseif (isset($_POST['price_range'])) {
            $priceRange=$_POST['price_range'];
            $priceRangeArr = explode(',', $priceRange);
            $doc_hoa =$m_hoa->doc_theo_gia($priceRangeArr[0], $priceRangeArr[1]);
        } 
        elseif (isset($_POST['maloaigia']) && isset($_POST['loaigia'])) {
            $ma_loai=$_POST['maloaigia'];
            $gia=$_POST['loaigia'];
            $gia = explode(',', $gia);
            $doc_hoa=$m_hoa->doc_theo_ma_loai_gia($ma_loai, $gia[0], $gia[1]);
        }
        $limit=9;
        $tong=count($doc_hoa);
        $vt=($page-1)*$limit;
        if (isset($_POST['maloai'])) {
            $doc_hoa = $m_hoa->doc_ds_loai_hoa($ma_loai, $vt, $limit);
        }
        elseif (isset($_POST['price_range'])) {
             $doc_hoa=$m_hoa->doc_theo_gia($priceRangeArr[0], $priceRangeArr[1], $vt, $limit);
        }
        elseif (isset($_POST['maloaigia']) && isset($_POST['loaigia'])) {
            $doc_hoa=$m_hoa->doc_theo_ma_loai_gia($ma_loai, $gia[0], $gia[1], $vt, $limit);
        } else {
            $doc_hoa = $m_hoa->doc_tat_ca_hoa($vt, $limit);
        }
        $phan_trang=ceil($tong/$limit);
        include("URL.php");
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $smarty->assign('doc_hoa', $doc_hoa);
        $smarty->assign('phan_trang', $phan_trang);
        $smarty->display("views/hoa/v_danh_sach_hoa.tpl");
    }
    public function sp_da_xem()
    {
        include("models/m_lich_su.php");
        $m_lich_su = new M_lich_su();
        $ds_lich_su=[];
        $page=$_POST['page'];
        if(isset($_SESSION['makh'])){
            $ma_kh=$_SESSION['makh'];
            $ds_lich_su=$m_lich_su->xem_tat_ca($ma_kh);
        }
        $limit=12;
        $tong=count($ds_lich_su);
        $vt=($page-1)*$limit;
        if (isset($_SESSION['makh'])) {
            $ds_lich_su = $m_lich_su->xem_tat_ca($ma_kh, $vt, $limit);
        }
        $phan_trang=ceil($tong/$limit);       
        include("URL.php");
         include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $smarty->assign('ds_lich_su', $ds_lich_su);
        $smarty->assign('phan_trang', $phan_trang);
        $smarty->display("views/hoa/v_san_pham_da_xem.tpl");
    }
}
