<?php
require_once("database.php");
class M_tin_tuc extends database
{
    public function doc_tat_ca_su_kien()
    {
        $sql = "select * from tin_tuc";
        $this->setQuery($sql);
        return $this->loadAllRows();
    }
    public function chi_tiet_tt($ma_tin)
    {
        $sql="select tt.*, lt.TenLoaiTin from tin_tuc tt INNER JOIN loai_tin lt ON lt.MaLoaiTin = tt.MaLoaiTin where tt.MaTT=?";
        $this->setQuery($sql);
        return $this->loadRow(array($ma_tin));
    }
    public function doc_tin_tuc_cung_loai($maLoaiTin, $ma_tin)
    {
        $sql = "select * from tin_tuc where MaLoaiTin = ? and MaTT != ? limit 0,8";
        $this->SetQuery($sql);
        return $this->loadAllRows(array($maLoaiTin, $ma_tin));
    }
}
