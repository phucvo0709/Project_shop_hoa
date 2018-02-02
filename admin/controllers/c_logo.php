<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_logo
{
    function hien_thi_logo(){
        //Model
        unset($_SESSION['success']);
        include("models/m_logo.php");
        $m_logo = new M_logo();
        $logo = $m_logo->doc_logo();
        $hinh = $logo->hinh;
        if(isset($_POST['btn_update'])){

            //update hinh
            $target_dir = "../public/images/logo/";
            $target_file = $target_dir . basename($_FILES["hinh"]["name"]);
            $hinh = "";
            $uploadOk = 1;
            $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
            if(!empty($_FILES['hinh']['name'])){
                if($_FILES["hinh"]["size"] > 500000){
                    echo "<script>alert('File không được lớn hơn 5MB');</script>";
                    $uploadOk = 0;
                }
                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ){
                    echo "<script>alert('Không phải file hình ảnh');</script>";
                    $uploadOk = 0;
                }
                if ($uploadOk == 0) {
                    echo "<script>alert('Upload ảnh bị lỗi');</script>";
                }else{
                    if(move_uploaded_file($_FILES['hinh']['tmp_name'], $target_file)){
                        $hinh = $_FILES["hinh"]["name"];
                    }
                }
            }else{
                $hinh = $hinh;
                $update = $m_logo->update_logo($hinh);
                if($update){
                    $_SESSION['success']="Cập nhật logo thành công";
                }
            }
            if($hinh != ""){
                $update = $m_logo->update_logo($hinh);
                if($update){
                    $_SESSION['success']="Cập nhật logo thành công";
                }
            }

        }
        //Controller
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_logo.tpl";
        $title = "Cập nhật logo";
        $smarty->assign("title",$title);
        $smarty->assign("hinh", $hinh);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }

}
?>
