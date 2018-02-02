{* thanh danh mục *}
<div class="container">
    <div class="breadcrumbs">
        <div class="container">
            <ul>
                <li class="home">
                    <a href="." title="Trở về trang chủ">Trang chủ</a>
                    </li>
                <li class="category22">
                    <a href="" title="{$tin_tuc->TenLoaiTin}">{$tin_tuc->TenLoaiTin}</a>
                </li>
                <li class="category22">
                    <strong>{$tin_tuc->TenTT}</strong>
                </li>
            </ul>
        </div>
    </div>
</div>
{* end thanh danh mục *}
  <div class="container">
    <div class="main">
          <div class="row">
              <div class="container">
                {* left *}
                <div class="col-left sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12 left-color color f-left hidden-xs">
                    <div class="anav-container">
                        <div class="block block-anav">
                            <ul class="magictabs">
                                <li class="item active loaded single">
                                    <span class="title">Tin tức liên quan</span>
                                </li>
                            </ul>
                            {foreach $tin_cung_loai as $tt}
                            <div class="thumbnail">
                                <a href="{makeURL($tt->TenTT)}-{$tt->MaTT}.html" target="_blank">
                                <img src="public/images/tin_tuc/{$tt->Hinh}" alt="{$tt->TenTT}" style="width:100%">
                                <div class="caption">
                                    <p>{$tt->TenTT}</p>
                                </div>
                                </a>
                            </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
                {* end left *}
                {* right *}
                <div class="col-main col-lg-9 col-md-9 col-sm-9 col-xs-12 content-color color f-right chi_tiet_tt">
                    <h1 class="ten_tt">{$tin_tuc->TenTT}</h1>
                    <h5 class="ngay_dang"><b>Ngày đăng:</b> {$tin_tuc->ThoiGian}</h5>
                    <p>{$tin_tuc->NoiDung}</p>
                </div>
                {* end right *}
          </div>
    </div>
      {include file="layouts/body/quang_cao.tpl"}
  </div>
