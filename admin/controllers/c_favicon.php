<?php
session_start();
unset($_SESSION['success']);
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_favicon {
    function show_favicon(){
        //Model
        include("models/m_favicon.php");
        $m_favicon = new M_favicon();
        $favicon = $m_favicon->favicon();

        $favicon = $favicon->favicon;
        if(isset($_POST['btn_update'])){
            
            $target_dir = "../public/images/";
            $target_file = $target_dir . basename($_FILES["hinh"]["name"]);
            $uploadOk = 1;
            $hinh = "";
            $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
            if(!empty($_FILES['hinh']['name'])){
                if($_FILES["hinh"]["size"] > 500000){
                    echo "<script>
                    alert('File is not too 5MB');
                    </script>";
                    $uploadOk = 0;
                }
                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ){
                    echo "<script>
                    alert('Not an image file');
                    </script>";
                    $uploadOk = 0;
                }
                if ($uploadOk == 0) {
                    echo "<script>
                    alert('uploading a faulty image');
                    </script>";
                }else{
                    if(move_uploaded_file($_FILES['hinh']['tmp_name'], $target_file)){
                        $hinh = $_FILES["hinh"]["name"];
                    }else{
                        echo "<script>
                        alert('uploading a faulty image');
                        </script>";
                    }
                }
            }else{
                $hinh = $favicon;
                $update = $m_favicon->update_favicon($hinh);
                if($update){
                    $_SESSION['success']="Update Favicon success";
                }
            }
            if($hinh != ""){
                $update = $m_favicon->update_favicon($hinh);
                if($update){
                    $_SESSION['success']="Update Favicon success";
                }
            }
        }
        //Controller
        include("Smarty_admin.php");
        $smarty = new Smarty_Admin();
        $view = "views/v_favicon.tpl";
        $title = "Setting favicon website";
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->assign('favicon', $favicon);
        $smarty->display("layout.tpl");
    }
}
?>