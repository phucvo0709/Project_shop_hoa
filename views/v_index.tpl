{include file="views/trang_chu/v_slider.tpl" }
{include file="views/trang_chu/v_banner.tpl" }
<div class="container mau_hoa">
    <div class="magic-category clearfix">
        <div class="block-title-tabs clearfix">
            <ul class="magictabs">
                <li class="item active loaded">
                    <span class="title" data-toggle="tab" href="#menu1">Mẫu hoa mới</span>
                </li>
                <li class="item" >
                    <span class="title" data-toggle="tab" href="#menu2">Mẫu hoa bán chạy</span>
                </li>
                <li class="item">
                    <span class="title" data-toggle="tab" href="#menu3">Mẫu hoa giảm giá</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="tab-content">
        {include file="views/trang_chu/v_mau_hoa_moi.tpl" }
        {include file="views/trang_chu/v_mau_hoa_ban_chay.tpl" }
        {include file="views/trang_chu/v_mau_hoa_giam_gia.tpl" }
    </div>
</div>
{include file="layouts/body/quang_cao.tpl"}
<div class="container">
  <div class="cms-static-mix-custom-product block-custom-product">
  	<div class="container">
  		<div class="row">
  			{include file="views/trang_chu/v_san_pham_giam_gia.tpl" }
  			{include file="views/trang_chu/v_san_pham_noi_bat.tpl" }
  			{include file="views/trang_chu/v_san_pham_re_nhat.tpl" }
  		</div>
  	</div>
  </div>
</div>
{include file="views/v_gio_hang_ajax.tpl"}
