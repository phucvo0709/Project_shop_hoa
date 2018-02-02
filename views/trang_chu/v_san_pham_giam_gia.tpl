<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 custom-product custom1">
  <div class= "zvwqfjykbn magicproduct mage-custom">
    <div class="block-title-tabs">
      <ul class="magictabs">
        <li class="item active loaded single">
          <span class ="title">Giảm giá nhiều nhất</span>
        </li>
      </ul>
    </div>
    <div class="content-products">
      <div class="mage-magictabs mc-saleproduct">
        <ul class="flexisel-content products-grid saleproduct zoomOut play">
          {foreach $san_pham_giam_gia as $giam_gia}
          <li data-aos="fade-up"data-aos-duration="600">
            <div class="per-product clearfix">
              <div class="images-container">
                <div class="product-hover">
                  <a href="san-pham/{$giam_gia->TenHoa_URL}-{$giam_gia->MaHoa}.html" title="{$giam_gia->TenHoa}" class="product-image">
                    <img class="img-responsive hinh_san_pham" src="public/images/hoa/{$giam_gia->Hinh}" alt="{$giam_gia->TenHoa}" />
                  </a>
                </div>
              </div>
              <div class="products-textlink product-featured-custom clearfix">
                <h2 class="product-name">
                  <a href="san-pham/{$giam_gia->TenHoa_URL}-{$giam_gia->MaHoa}.html" title="{$giam_gia->TenHoa}">{$giam_gia->TenHoa}</a>
                </h2>
                <div class="price-box">
                  <p class="old-price">
                    <span class="price-label">Giá mới:</span>
                    <span class="price" id="product-price-2107">
              {number_format($giam_gia->Gia)}  đ</span>
                  </p>
                  <a href="san-pham/{$giam_gia->TenHoa_URL}-{$giam_gia>MaHoa}.html" class="minimal-price-link">
                    <span class="label">Mua online:</span>
                    <span class="price" id="product-minimal-price-2107">
        {number_format($giam_gia->GiaKhuyenMai)}   đ   </span>
                  </a>
                </div>
                <div class="actions"></div>
              </div>
            </div>
          </li>
          {{/foreach}}

        </ul>
      </div>
    </div>
    <!-- MAP -->
    <!-- MAP -->
  </div>

</div>
