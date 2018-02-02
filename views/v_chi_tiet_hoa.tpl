{include file="views/chi_tiet_hoa/v_thanh_danh_muc.tpl" }
<div class="container">
  <div class="product-view">
    <form method="post" action="gio_hang.php?MaHoa={$hoa->MaHoa}">
      <div class="row">
        <div class="col-md-5">
            <img class="img-responsive hinh_ct" src="public/images/hoa/{$hoa->Hinh}" alt="{$hoa->TenHoa}" title="{$hoa->TenHoa}">
        </div>
        <div class="product-shop col-md-7 col-sm-6 col-xs-12">
          <div class="product-shop-content">
            {include file="views/chi_tiet_hoa/v_chi_tiet_hoa.tpl"}
            {include file="views/chi_tiet_hoa/v_thong_tin_khac.tpl"}
            {include file="views/chi_tiet_hoa/v_thong_tin_hoa.tpl"}
          </div>
      </div>
    </div>
  </form>
</div>
  {include file="views/chi_tiet_hoa/v_san_pham_cung_loai.tpl"}
  {include file="views/chi_tiet_hoa/v_lich_su_xem.tpl"}
  {include file="layouts/body/quang_cao.tpl"}
</div>
{include file="views/v_gio_hang_ajax.tpl"}
