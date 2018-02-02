    <div class="wrapper-page">
        <div class="wrap-body container">
            <div class="row content-row">
                <div class="wrap-content col-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="slider-area">
                    <!-- Slider -->
                        <div class="block-slider block-slider4">
                            <ul class="" id="bxslider-home4">
                                {foreach $doc_slider as $slider}
                                <li>
                                    <a href="{$slider->DuongDan}">
                                        <img src="public/images/slider/{$slider->Hinh}" alt="{$slider->TieuDe}"/>
                                    </a>
                                </li>
                                {/foreach}
                            </ul>
                        </div>
                    <!-- ./Slider -->
                    </div> <!-- End slider area -->
                </div>
            </div>
        </div>
    </div>