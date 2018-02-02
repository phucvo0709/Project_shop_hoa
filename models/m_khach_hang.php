<?php
require_once("database.php");
class M_khach_hang extends database
{
  public function Them_khach_hang($ten_kh,$phai,$email,$dia_chi,$dien_thoai,$mat_khau){
    $sql="INSERT INTO  khach_hang values(?,?,?,?,?,?,?)";
    $this->setQuery($sql);
    $param=array(NULL,$ten_kh,$phai,$email,$dia_chi,$dien_thoai,md5($mat_khau));
    return $this->execute($param);
  }
  public function Doc_khach_hang_theo_email_pass($email,$mk)
  {
    $sql="select * from khach_hang where email=? and matKhau=?";
		$this->setQuery($sql);
		return $this->loadRow(array($email,md5($mk)));
  }
    public function Doc_khach_hang_theo_ma_kh($ma_kh)
  {
    $sql="select * from khach_hang where ma_khach_hang=?";
    $this->setQuery($sql);
    return $this->loadRow(array($ma_kh));
  }
   public function Sua_khach_hang($ten_kh,$phai,$dia_chi,$dien_thoai,$ma_kh)
	{
		$sql="UPDATE khach_hang set ten_khach_hang=?,phai=?,dia_chi=?,dien_thoai=? where ma_khach_hang=?";
		$this->setQuery($sql);
		$param=array($ten_kh,$phai,$dia_chi,$dien_thoai,$ma_kh);
    $this->execute($param);
    return $this->getLastId();
	}

}
?>
