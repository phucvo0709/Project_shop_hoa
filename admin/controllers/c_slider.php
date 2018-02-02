<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_slider 
{
    function hien_thi_slider(){
        unset($_SESSION['thongBao']);
        unset($_SESSION['thongBaoThanhCong']);
        //Model
        include("models/m_slider.php");
        $m_slider = new M_slider();
        $doc_slider = $m_slider->doc_tat_ca_slider();
        $them_slider = $m_slider->them_slider();
        if(isset($_POST['btn_update'])){
            $id = $_POST['id'];
            $tieuDe = $_POST['tieu_de'];
            $duongDan = $_POST['duong_dan'];

             //update hinh
             $target_dir = "../public/images/slider/";
             $target_file = $target_dir . basename($_FILES["hinh"]["name"]);
             $uploadOk = 1;
             $hinh = "";
             $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
             $xuat = $m_slider->doc_slider_theo_id($id);
             if(!empty($_FILES['hinh']['name'])){
                 if($_FILES["hinh"]["size"] > 500000){
                     $_SESSION['thongBao'] = "File không được lớn hơn 5MB";
                     $uploadOk = 0;
                 }
                 if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                 && $imageFileType != "gif" ){
                     $_SESSION['thongBao'] = "Không phải file hình";
                     $uploadOk = 0;
                 }
                 if ($uploadOk == 0) {
                     $_SESSION['thongBao'] = "Upload ảnh bị lỗi";
                 }else{
                     if(move_uploaded_file($_FILES['hinh']['tmp_name'], $target_file)){
                         $hinh = $_FILES["hinh"]["name"];
                     }else{
                         $_SESSION['thongBao'] = "Lỗi upload file"; 
                     }
                 }
             }else{
                 $hinh = $xuat->Hinh;
                 $update = $m_slider->update_slider($tieuDe,$hinh,$duongDan,$id);
                 if($update){
                     $_SESSION['thongBaoThanhCong']="Cập nhật slider thành công";
                 }
             }
             if($hinh != ""){
                $update = $m_slider->update_slider($tieuDe,$hinh,$duongDan,$id);
                 if($update){
                     $_SESSION['thongBaoThanhCong']="Cập nhật slider thành công";
                 }
             }
        }
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_slider.tpl";
        $title = "Danh sách slider";
        $smarty->assign("title",$title);
        $smarty->assign("doc_slider",$doc_slider);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
}
?>