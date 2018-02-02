<?php
header('Content-Type: text/html; charset=UTF-8');
include("controllers/c_thong_ke_doanh_thu.php");
$c_thong_ke_doanh_thu = new c_thong_ke_doanh_thu();
$c_thong_ke_doanh_thu->json_doanh_thu_theo_tuan();
?>
