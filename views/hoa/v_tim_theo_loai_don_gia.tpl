<div class="col-left sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12 left-color color f-left">
    <div class="anav-container">
        <div class="block block-anav">
            <ul class="magictabs">
                <li class="item active loaded single">
                    <span class="title">Tìm theo loại sản phẩm</span>
                </li>
            </ul>
            <ul class="nav-accordion left">
                <ul class="level0" style="display: block;">
                    {foreach $doc_loai_hoa as $loai_hoa}
                    <li>
                        <span class="maLoai" id="maloai_{$loai_hoa->MaLoai}">{$loai_hoa->TenLoai}</span>
                    </li>
                    {/foreach}
                </ul>
            </ul>
        </div>
        <div class="block block-layered-nav block-layered-nav--no-filters">
            <ul class="magictabs">
                <li class="item active loaded single">
                    <span class="title">Tìm theo giá</span>
                </li>
            </ul>
            <div class="block-content toggle-content1">
                <div id="narrow-by-list">
                    <dl class="narrow-by">
                        <dl class="narrow-by">
                            <dt class="odd">Giá bán</dt>
                            <dt class="toggle-tab mobile even" style="display:none"></dt>
                            <dd class="Giá bán toggle-content odd">
                                <ol>
                                     <li class="tim_theo_gia" id="0-500000">
                                        <span class="price">0&nbsp;₫ - </span>
                                        <span class="price">{number_format(500000)}&nbsp;₫</span>
                                     </li>
                                     <li class="tim_theo_gia" id="500000-1000000">
                                        <span class="price">{number_format(500000)}&nbsp;₫ - </span> 
                                        <span class="price">{number_format(1000000)}&nbsp;₫</span>
                                     </li>
                                 </ol>
                            </dd>
                            <dt class="odd gia_khac">Hoặc chọn giá khác</dt>
                                <div class="filter-panel">
                                    <p><input type="hidden" class="price_range" value="0,1000000" /></p>
                                </div>
                                <input class="nut_tim" type="button"  value="Tìm" />
                        </dl>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
