<?php
if(isset($_POST['tenLoai'])){
    $tenLoai = $_POST["tenLoai"];
    include("m_loai_hoa.php");
    $m_loai_hoa = new M_loai_hoa();
    $kiem_tra = $m_loai_hoa->kiem_tra_loai_hoa($tenLoai);
    if($kiem_tra){
        die("Trùng loại hoa");
    }
}
?>