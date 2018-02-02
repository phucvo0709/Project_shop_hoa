<div class="container">
  <ul class="magictabs">
        <li class="item active loaded single">
            <span class="title cung_loai">Sản phẩm cùng loại</span>
        </li>
  </ul>
  <div class="category-products">
    <ul class="products-grid row">
      {$i=0}
      {$j=0}
      {foreach $hoa_cung_loai as $hoa}
        <li class="item" data-aos="flip-left" data-aos-duration="300"  data-aos-delay="{$i}">
          {$j=$j+1}
          {$i=$j*300}
            <div class="category-products-grid">
                <div class="images-container">
                    <div class="product-hover cp_img">
                        <a href="san-pham/{$hoa->TenHoa_URL}-{$hoa->MaHoa}.html" title="{$hoa->TenHoa}" class="product-image">
                            <img class="img-responsive hinh_hoa" src="public/images/hoa/{$hoa->Hinh}"  alt="{$hoa->TenHoa}">
                        </a>
                    </div>

                    <h2 class="product-name">
                    <a href="san-pham/{$hoa->TenHoa_URL}-{$hoa->MaHoa}.html" title="{$hoa->TenHoa}">{$hoa->TenHoa}</a>
                    </h2>
                    <div class="actions-no hover-box">
                        <div class="actions">
                            <div class="price-box">
                                <a class="minimal-price-link">
                                    <span class="mua_online">Mua online:</span>
                                    <span class="price" id="product-minimal-price-2678">{number_format({$hoa->GiaKhuyenMai})} ₫</span>
                                </a>
                            </div>
                        </div>
                          {if $hoa->SoLuongSP > 0}
                            <div class="notify-dat-hang">
                                <button onclick="addToCart({$hoa->MaHoa},1)">Thêm vào giỏ hàng</button>
                            </div>
                          {else}
                            <div class="notify"><button>Đã hết hàng</button></div>
                          {/if}
                    </div>
                </div>
            </div>
        </li>
        {/foreach}
    </ul>
  </div>
</div>
