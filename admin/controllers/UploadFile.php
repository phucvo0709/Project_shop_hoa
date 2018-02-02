<?php
    function UploadFile($hinh_sua,$duong_dan){
        $target_dir = "../public/images/$duong_dan/";
        $target_file = $target_dir . basename($_FILES["hinh"]["name"]);
        $hinh = $_FILES["hinh"]["error"]==0?$_FILES["hinh"]["name"]:$hinh_sua;
        $imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
        if (!empty($hinh))
        {
            if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif")
            {
                $_SESSION['thongBao'] = "Không phải file hình";
            }
            else
            {
                move_uploaded_file($_FILES['hinh']['tmp_name'], $target_file);
            }
        }
        else {
          $_SESSION['thongBao'] = "Lỗi upload file";
        }
        return $hinh;
}
 ?>
