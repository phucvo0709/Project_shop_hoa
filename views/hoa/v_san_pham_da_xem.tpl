{if isset($smarty.session.makh)}  
    <ul class="products-grid row aos-all" id="transcroller-body">
        {$dem=0}
        {foreach $ds_lich_su as $hoa}
            <li class="item do_dai aos-item" >
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
                        <div class="actions-cart">
                        <div class="btnGioHang" onclick="addToCart({$hoa->MaHoa},1)">Thêm vào giỏ hàng</div>
                        </div>
                            {else}
                            <p class="notify"><button>Đã hết hàng</button></p>
                            {/if}
                    </div>
                </div>
            </div>
        </li>
        {/foreach}
    </ul>
</div>
<div class="bsm_products_pagination" >
    {for $i=1;$i<=$phan_trang;$i++}
        <span class="phan_trang" id="{$i}">  {$i}</span>
    {/for}
</div>
{else}
<div class="alert alert-warning">
    <strong>Rất tiếc!</strong> Hãy đăng nhập vảo tài khoản để xem.
</div>
{/if}
