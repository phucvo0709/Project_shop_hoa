<?php
session_start();

class C_gio_hang
{
    public function them_gio_hang() 
    {
        if (isset($_POST['MaHoa']) && isset($_POST['sl'])) {
            include("models/m_hoa.php");
            $m_hoa=new M_hoa();
            $hoa=$m_hoa->doc_hoa_theo_ma($_POST['MaHoa']);
            if($_POST['sl'] > 10){
                echo 'loi';
                return;
            }elseif ($_POST['sl'] > $hoa->SoLuongSP) {
                echo "loi_sl_$hoa->SoLuongSP";
                return;
            }
            elseif (isset($_SESSION["giohang"])) {
                return $_SESSION['giohang']=$this->ton_tai_gio_hang($_SESSION["giohang"], $_POST['sl'], $_POST['MaHoa'],$hoa->SoLuongSP);
            }
            else{
                return $_SESSION["giohang"][$_POST['MaHoa']]=$_POST['sl'];    
            }
            }
    }
    public function ton_tai_gio_hang($gio_hang, $sl, $id, $slSP)
    {
        foreach ($gio_hang as $k=>$value) {
            if ($k == $id) {
                $value+=$sl;
                if($value > $slSP){
                    echo "loi_sl_$slSP";
                    break;
                }
                $gio_hang[$id]=$value;
                break;
            } else {
                $gio_hang[$id]=$sl;
            }
        }
        return $gio_hang;
    }
    public function hien_gio_hang()
    {
        if (isset($_POST['showcart'])) {
            include("models/m_hoa.php");
            $m_hoa=new M_hoa();
            $hoa=$m_hoa->doc_tat_ca_hoa();
            include("Smarty_shop_hoa.php");
            $smarty = new Smarty_Shop_Hoa();
            $smarty->assign('hoa', $hoa);
            $smarty->display("views/v_hien_thi_gio_hang.tpl");
        }
    }
    public function tang_giam_sl()
    {
        if (isset($_POST["mahoa"])) {
            include("models/m_hoa.php");
            $m_hoa=new M_hoa();
            $id=$_POST['mahoa'];
            $hoa=$m_hoa->doc_hoa_theo_ma($id);
            foreach ($_SESSION["giohang"] as $k=>$value) {
                if ($k == $id) {
                    if (isset($_POST['tang'])) {
                        $value++;
                        if($value > $hoa->SoLuongSP){
                            echo "loi_sl_$hoa->SoLuongSP";
                            return;
                        }elseif ($value > 10) {
                            echo "loi";
                            return;
                        }
                    } elseif (isset($_POST['giam'])) {
                        $value--;
                    }
                    $_SESSION["giohang"][$id]=$value;
                    $tong_tt=$hoa->GiaKhuyenMai*$value;
                    $mang=array('sl'=>$value,'tongTienTheoMaHoa'=>$tong_tt);
                }
            }
            echo json_encode($mang);
        }
    }
    public function xoa_gio_hang()
    {
        if (isset($_POST["mahoa"])) {
            $id=$_POST["mahoa"];
            unset($_SESSION["giohang"][$id]);
            if(count($_SESSION['giohang'])==0){
                unset($_SESSION['giohang']);
            }
        }
    }
    public function cap_nhap_tong_tt()
    {
        include("models/m_hoa.php");
        $m_hoa=new M_hoa();
        $hoa=$m_hoa->doc_tat_ca_hoa();
        $tong_tt=0;
        $tong_sl=0;
        foreach ($_SESSION["giohang"] as $k=>$value) {
            foreach ($hoa as $sp) {
                if ($k==$sp->MaHoa) {
                    $tong_tt+=$value*$sp->GiaKhuyenMai;
                    $tong_sl+=$value;
                }
            }
        }
        $_SESSION['tong_gio_hang']=$tong_sl;
        echo $_SESSION['tong_tt']=$tong_tt;
    }
}
