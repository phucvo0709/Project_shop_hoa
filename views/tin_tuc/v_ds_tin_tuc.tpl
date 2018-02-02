<div class="col-main container-fluid noi_dung_tt">
    <div class="category-products">
        <ul class="products-grid row">
            {foreach $tin_tuc as $tin}
            <li class="item col-md-3">
                <div class="category-products-grid">
                    <div class="images-container">
                        <div class="product-hover">
                            <a href="tin-tuc/{makeURL($tin->TenTT)}-{$tin->MaTT}.html" title="{$tin->TenTT}" class="product-image">
                                <img class="img-responsive hinh_hoa" src="public/images/tin_tuc/{$tin->Hinh}"  alt="{$tin->TenTT}">
                            </a>
                        </div>
                        <h2 class="tt-name">
                        <a href="tin-tuc/{makeURL($tin->TenTT)}-{$tin->MaTT}.html" title="{$tin->TenTT}">{$tin->TenTT}</a>
                        </h2>
                        <div class="actions-no hover-box">
                            <div class="actions">
                                <div class="price-box">
                                    <a class="minimal-price-link">
                                        <span class="mua_online">Ngày đăng:</span>
                                        <span class="price" id="product-minimal-price-2678">{$tin->ThoiGian|date_format:'%d-%m-%Y'} </span>
                                    </a>
                                </div>
                            </div>
                    </div>
                    </div>
                </div>
            </li>
            {/foreach}
        </ul>
    </div>
    <div class="bsm_products_pagination" >

</div>
