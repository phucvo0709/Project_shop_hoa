<?php
session_start();
unset($_SESSION['success']);
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_seo {
    function show_seo(){
        //Model
        include("models/m_seo.php");
        $m_seo = new M_seo();
        $seo = $m_seo->seo();
        $title_website = $seo->title_website;
        $description_website = $seo->description_website;
        $keywords_website = $seo->keywords_website;
        $logo = $seo->logo;
        if(isset($_POST['btn_update'])){
            $title_website = $_POST['title_website'];
            $description_website = $_POST['description_website'];
            $keywords_website = $_POST['keywords_website'];

            $target_dir = "../public/img/";
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
                $hinh = $logo;
                $update = $m_seo->update_seo($title_website,$description_website,$keywords_website, $hinh);
                if($update){
                    $_SESSION['success']="Cập nhật thành công";
                }
            }
            if($hinh != ""){
                $update = $m_seo->update_seo($title_website,$description_website,$keywords_website, $hinh);
                if($update){
                    $_SESSION['success']="Cập nhật thành công";
                }
            }
        }
        //Controller
        include("Smarty_admin.php");
        $smarty = new Smarty_Admin();
        $view = "views/v_seo.tpl";
        $title = "Seo Admin";
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->assign('title_website', $title_website);
        $smarty->assign('description_website', $description_website);
        $smarty->assign('keywords_website', $keywords_website);
        $smarty->assign('logo', $logo);
        $smarty->display("layout.tpl");
    }
}
?>