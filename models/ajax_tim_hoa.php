<?php
if(isset($_POST['tenHoa'])) {
	$tenHoa = $_POST['tenHoa'];
	include("database.php");
	$db = new database();
	$sql = "SELECT * FROM hoa WHERE TenHoa LIKE '%$tenHoa%'";
	$db->setQuery($sql);
	$kq = $db->loadAllRows();
}
?>
<?php
if(!$kq){
	echo "Không tìm thấy";
}else{
	foreach($kq as $hoa){
		echo"
		<div class='ketQuaHoa'>
			<span><a href='san-pham/{$hoa->TenHoa_URL}-{$hoa->MaHoa}.html'>$hoa->TenHoa</a></span>
		</div>";
	}
}
?>