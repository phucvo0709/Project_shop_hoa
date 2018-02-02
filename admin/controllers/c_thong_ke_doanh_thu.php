<?php
session_start();
include("kiem_tra_session.php");
include("kiem_tra_phan_quyen.php");

class C_thong_ke_doanh_thu
{
    function hien_thi_thong_ke_doanh_thu(){
        include("Smarty_admin.php");
        $smarty = new  Smarty_Admin();
        $view = "views/v_thong_ke_doanh_thu.tpl";
        $title = "Thống kê theo doanh thu";
        $smarty->assign("title",$title);
        $smarty->assign("view", $view);
        $smarty->display("layout.tpl");
    }
    function json_doanh_thu_theo_ngay(){
      include("models/m_thong_ke_doanh_thu.php");
      $m_thong_ke_doanh_thu = new M_thong_ke_doanh_thu();
      $doanh_thu_theo_ngay=$m_thong_ke_doanh_thu->theo_ngay();
      print json_encode($doanh_thu_theo_ngay, JSON_UNESCAPED_UNICODE);
    }
    function getStartAndEndDate($week, $year)
    {
        $time = strtotime("1 January $year", time());
        $day = date('w', $time);
        $time += ((7*$week)+1-$day)*24*3600;
        $return[0] = date('Y-n-j', $time);
        $return[0]=date("d/m", strtotime($return[0]));
        $time += 6*24*3600;
        $return[1] = date('Y-n-j', $time);
        $return[1]=date("d/m", strtotime($return[1]));
        return $return;
    }
    function json_doanh_thu_theo_tuan(){
      include("models/m_thong_ke_doanh_thu.php");
      $m_thong_ke_doanh_thu = new M_thong_ke_doanh_thu();
      $doanh_thu_theo_tuan=$m_thong_ke_doanh_thu->theo_tuan();
      $i=0;
      foreach ($doanh_thu_theo_tuan as $doanh_thu) {
        $ngaybd=$this->getStartAndEndDate($doanh_thu->tuan,date('Y'))[0];
        $ngaykt=$this->getStartAndEndDate($doanh_thu->tuan,date('Y'))[1];
        $mang[$i] = array('tongtt'=>$doanh_thu->tong_tt,'ngay_trong_tuan'=>"$ngaybd - $ngaykt");
        $i++;
      }
      print json_encode($mang, JSON_UNESCAPED_UNICODE);
    }
    function json_doanh_theo_theo_thang(){
      include("models/m_thong_ke_doanh_thu.php");
      $m_thong_ke_doanh_thu = new M_thong_ke_doanh_thu();
      $theo_thang=$m_thong_ke_doanh_thu->theo_thang();
      print json_encode($theo_thang, JSON_UNESCAPED_UNICODE);
    }
    public function json_theo_quy()
      {
        include("models/m_thong_ke_doanh_thu.php");
        $m_thong_ke_doanh_thu = new M_thong_ke_doanh_thu();
        $quy1=$m_thong_ke_doanh_thu->theo_quy_1();
        $quy2=$m_thong_ke_doanh_thu->theo_quy_2();
        $quy3=$m_thong_ke_doanh_thu->theo_quy_3();
        $quy4=$m_thong_ke_doanh_thu->theo_quy_4();

        $mang[0] = array('quy' => 1,'tong_tt'=>$quy1->tong_tt );
        $mang[1] = array('quy' => 2,'tong_tt'=>$quy2->tong_tt );
        $mang[2] = array('quy' => 3,'tong_tt'=>$quy3->tong_tt );
        $mang[3] = array('quy' => 4,'tong_tt'=>$quy4->tong_tt );
        print json_encode($mang, JSON_UNESCAPED_UNICODE);
      }
}
?>
