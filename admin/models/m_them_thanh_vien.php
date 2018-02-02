<?php
class M_them_thanh_vien
{
    function data_dang_ky(){
    require_once("database.php");
	if (isset($_POST["btn_submit"])) {
		//lấy thông tin từ các form bằng phương thức POST
		$ten = $_POST["ten"];
		$taiKhoan = $_POST["tai_khoan"];
		$matKhau = $_POST["mat_khau"];
		$hasformat="$2y$10$";
        $salt="haimuoihaihaimuoihai22";
        $has_and_salt=$hasformat.$salt;
        $baoMatMatKhau = crypt($matKhau,$has_and_salt);
        $permission = $_POST["permission"];
		//Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
			$db=new database();
			if($this->validateTaiKhoan($taiKhoan)){
				echo "<script>
                alert('Tài khoản đã tồn tại');
                </script>";
			}else{
				$sql = "INSERT INTO admin(HoTen, TaiKhoan, MatKhau, permission) VALUES ('$ten', '$taiKhoan', '$baoMatMatKhau', $permission)";
				$db->setQuery($sql);
				$db->execute();
				if($db)
				{
				echo "<script>
				alert('Thêm thành viên thành công');
				window.location.href='thanh_vien.php';
				</script>";
				}
			}
		}
	}
	function validateTaiKhoan($taiKhoan){
        $dbTaiKhoan = new database();
        $sql = "SELECT TaiKhoan FROM admin WHERE TaiKhoan=?";
        $dbTaiKhoan->setQuery($sql);
        return $dbTaiKhoan->loadRow(array($taiKhoan));
    }
}

?>