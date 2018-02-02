<?php
require_once("database.php");
class M_dang_nhap extends database
{
    public function dang_nhap(){
        if(isset($_POST["btn_dang_nhap"]))
		{
			$taiKhoan=$_POST["tai_khoan"];
            $matKhau=$_POST["mat_khau"];
			$this->kt_dang_nhap($taiKhoan,$matKhau);
		}
    }
    public function kt_dang_nhap($taiKhoan, $matKhau){
        $hasformat="$2y$10$";
        $salt="haimuoihaihaimuoihai22";
        $has_and_salt=$hasformat.$salt;
        $baoMatMatKhau = crypt($matKhau,$has_and_salt);
        $sql="select * from admin where TaiKhoan=? and MatKhau=?";
		$this->setQuery($sql);
        return $this->loadRow(array($taiKhoan,$baoMatMatKhau));
    }
}
?>