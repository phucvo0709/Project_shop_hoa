<?php
    class C_dang_xuat
    {
        public function trang_dang_xuat()
        {
            unset($_COOKIE['id']);
            unset($_COOKIE['hoTen']);
            unset($_COOKIE['taiKhoan']);
            if(isset($_COOKIE['checked'])){
                unset($_COOKIE['checked']);
                setcookie('checked', false, time() + 86400 * 3, '/');
            }
                
            header("location:dang_nhap.php");
        }
    }
