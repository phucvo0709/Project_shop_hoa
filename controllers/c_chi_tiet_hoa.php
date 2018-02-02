<?php
session_start();
class C_chi_tiet_hoa
{
    public function hien_thi_trang_chi_tiet_hoa()
    {
        include("c_data_contact.php");
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
        }
        include("models/m_chi_tiet_hoa.php");
        $m_chi_tiet_hoa = new M_chi_tiet_hoa();
        $hoa = $m_chi_tiet_hoa->doc_theo_ma_hoa($id);
        $maLoai = $hoa->MaLoai;
        $hoa_cung_loai = $m_chi_tiet_hoa->doc_hoa_cung_loai($maLoai, $id);
        if(isset($_SESSION['makh'])){
           $ds_lich_su=$this->TheoMaKH($id);
        }else{
            $ds_lich_su=$this->TheoSession($hoa,$id);
        }
        include("Smarty_shop_hoa.php");
        $smarty = new Smarty_Shop_Hoa();
        $view = "views/v_chi_tiet_hoa.tpl";
        $title = $hoa->TenHoa;
        include("URL.php");
        include("c_smarty_info.php");
        $smarty->assign('hoa', $hoa);
        $smarty->assign('hoa_cung_loai', $hoa_cung_loai);
        $smarty->assign('ds_lich_su', $ds_lich_su);
        $smarty->display("layout.tpl");
    }
    private function TheoMaKH($id)
    {
        $ma_kh=$_SESSION['makh'];
        include("models/m_lich_su.php");
        $m_lich_su = new M_lich_su();
        $ds_lich_su=$m_lich_su->xem_tat_ca($ma_kh);
        $hoa_dau=reset($ds_lich_su);
        if($hoa_dau->ma_hoa != $id){
            $this->XoaNeuGiongID_MaKH($id, $ds_lich_su);
            $m_lich_su->them($id,$ma_kh);
        }
        $ds_lich_su=$m_lich_su->xem($ma_kh);
        return $ds_lich_su;
    }
    private function TheoSession($hoa,$id){
        if(empty($_SESSION['ds_lich_su'])){
            $_SESSION['ds_lich_su']=[$hoa];
        }else{
            array_push($_SESSION['ds_lich_su'],$hoa);
            $this->XoaNeuGiongID_SESSION($id);
            if(count($_SESSION['ds_lich_su'])>6){
                  array_shift($_SESSION['ds_lich_su']);
            }
        }
        $ds_lich_su=$_SESSION['ds_lich_su'];
        array_pop($ds_lich_su);    
        $ds_lich_su=array_reverse($ds_lich_su); 
        return $ds_lich_su;
    }
    private function XoaNeuGiongID_SESSION($id){
        for($i=0;$i<count($_SESSION['ds_lich_su'])-1;$i++) {
                if($_SESSION['ds_lich_su'][$i]->MaHoa == $id){
                    array_splice($_SESSION['ds_lich_su'], $i,1);
                    break;
            }
        }
    }
    private function XoaNeuGiongID_MaKH($id, $ds_lich_su){
        foreach ($ds_lich_su as $item) {
            if($item->ma_hoa == $id){
                $m_lich_su->xoa($id,$ma_kh);
                break;
            }
        }
    }
}
