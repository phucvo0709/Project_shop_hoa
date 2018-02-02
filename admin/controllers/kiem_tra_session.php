<?php
if (isset($_COOKIE['id'])==false) {
    header('Location: dang_xuat.php');
}
if(isset($_COOKIE['checked'])){
  //echo "<script>alert('sd')</script>";
    setcookie('checked', true, time() + (86400 * 3), '/');
    setcookie('id', $_COOKIE['id'] , time() + (86400 * 3), '/');
    setcookie('hoTen',$_COOKIE['hoTen'], time() + (86400 * 3), '/');
    setcookie('taiKhoan',$_COOKIE['taiKhoan'], time() + (86400 * 3), '/');
    setcookie('permission', $_COOKIE['permission'] , time() + (86400 * 3), '/');
}
