<div id="menu1" class="tab-pane fade in active">
    <div class="category-products">
        <ul class="products-grid row aos-all" id="aos-demo">
        {foreach $doc_hoa_moi as $hoa_moi}
            <li class="item hoa " data-aos="fade-up-right">
                <div class="category-products-grid">
                    <div class="images-container">
                        <div class="product-hover">
                            <a href="san-pham/{$hoa_moi->TenHoa_URL}-{$hoa_moi->MaHoa}.html" title="{$hoa_moi->TenHoa}" class="product-image">
                                <img class="img-responsive hinh_hoa" src="public/images/hoa/{$hoa_moi->Hinh}"  alt="{$hoa_moi->TenHoa}">
                            </a>
                        </div>
                        <h2 class="product-name">
                        <a href="san-pham/{$hoa_moi->TenHoa_URL}-{$hoa_moi->MaHoa}.html" title="{$hoa_moi->TenHoa}">{$hoa_moi->TenHoa}</a>
                        </h2>
                        <div class="actions-no hover-box">
                            <div class="actions">
                                <div class="price-box">
                                    <a class="minimal-price-link">
                                        <span class="mua_online">Mua online:</span>
                                        <span class="price" id="product-minimal-price-2678">{number_format({$hoa_moi->GiaKhuyenMai})} ₫</span>
                                    </a>
                                </div>
                            </div>
                            {if $hoa_moi->SoLuongSP > 0}
                                <div class="notify-dat-hang">
                                   <button onclick="addToCart({$hoa_moi->MaHoa},1)">Thêm vào giỏ hàng</button>
                                </div>
                            {else}
                                <div class="notify">
                                    <button>Đã hết hàng</button>
                                </div>
                            {/if}
                        </div>
                      </div>
                  </div>
            </li>
    {/foreach}
        </ul>
        <div class="cta">
            <button onclick="location.href='danh-sach-hoa'">Xem thêm hoa <i class="fa fa-angle-double-right" aria-hidden="true"></i></button>
        </div>
    </div>
</div>
