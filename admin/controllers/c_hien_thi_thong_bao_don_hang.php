<?php
class C_hien_thi_thong_bao_don_hang
{
    public function hien_thi()
    {
        include("models/m_nav.php");
        $m_nav = new M_nav();
        $hien_thi_thong_bao = $m_nav->hien_thi_hoa_don();
        if(isset($_POST['hien_thi'])){
            if(count($hien_thi_thong_bao)==0){
                echo "<div class='chua_co_don_hang'> Chưa có đơn đặt hàng</div>";
                return;
            }              
            foreach ($hien_thi_thong_bao as $tb) {
                echo "<a class='dropdown-item' href='chi_tiet_hoa_don.php?ma_hoa_don=$tb->ma_hoa_don'>";
                echo "<strong>Đơn hàng số $tb->ma_hoa_don</strong>";
                echo "<span class='small float-right text-muted'>". date('H:i',strtotime($tb->ngay_dat)) ."</span>";
                echo "<div class='dropdown-message small'>Tổng số tiền là ".number_format($tb->tong_thanh_tien)." đ</div>";
                echo "</a>";
            }
        }
    }
}

