<header class="row">
    <div id="bsm_header_mobile">
        <i class="bsm_header_mobile_nav_button fa fa-bars" aria-hidden="true"></i>
        <i class="bsm_header_mobile_nav_button fa fa-times" aria-hidden="true"></i>
        <i class="bsm_header_mobile_search_button fa fa-search" aria-hidden="true"></i>
    </div>
    <div class="col-md-2 bsm_logo">
        <a href=".">
            {$logo->hinh}
            <img src="http://marry.vn/wp-content/uploads/users/335244/2014/10/12/logo-600x416-pixel.png" alt="" style="width: 160px;height: 68px;">
        </a>
    </div>
    <nav id="bsm_header_mobile_nav"><ul class="bsm_header_nav_left">
            <li ><a href=".">Trang chủ</a></li>
            <li><a href="gioi_thieu.php">Giới thiệu</a></li>
            <li><a href="danh-sach-hoa">Hoa tươi</a></li>
        </ul>
        <ul class="bsm_header_nav_left">
            <li><a href="tin_tuc.php">Tin Tức</a></li>
            <li><a href="check_hoa_don.php">Check hóa đơn</a></li>
            <li><a href="lien-he.html">Liên hệ</a></li>
        </ul>
    </nav>
    <div id="bsm_header_mobile_search">
        <i class="bsm_header_mobile_button_close fa fa-times" aria-hidden="true"></i>
        <form method="post">
            <label>
                <input placeholder="Tìm kiếm" name="bsm_header_search" type="text">
                <i class="fa fa-search" aria-hidden="true"></i>
            </label>
        </form>
    </div>
    <div id="bsm_header_mobile_cart">
        <i class="bsm_header_mobile_button_close fa fa-times" aria-hidden="true"></i>
        <div class="bsm_virtual_cart">
            <a href="gio-hang.html" class="bsm_virtual_cart_content">
                <img src="public/images/shopping-circle-blue-512.png"/>
                <p id="sl_gio_hang">
                {if isset($smarty.session.tong_gio_hang)}
                  {$smarty.session.tong_gio_hang}
                  {else}
                  0
                {/if}
                </p>
            </a>
        </div>
    </div>
    <div id="bsm_footer_mobile" style="background-color: #C9D35D;">
        <span class="bsm_header_mobile_cart_button">
            <svg  width="25px" height="22px">
            <image  x="0px" y="0px" width="25px" height="22px"  xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAWCAQAAACftv89AAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAHdElNRQfhBBsAOw64XtbmAAABVklEQVQ4y42SsUtCURSHv+cTo6WUhiIbHIPaGhqEhhqacstF+jOCoK09GlpsEiSIKGiIwKFoKQqlUXhDDS4KQRY0RGr+GnrveS2Te+5wD/fe757zO+c4OqTDHh6f2Jru1VFX+5pXTNgsNKFteZJelLZFEJrWiaSsHRIBoM4l4NhJifr7OLBOnMi/YBeHBDGegnBbsrV81Pgnz9XQjDJscMSOidxxOhRZBQ6oR4yj0aHAHCt4PEIEW1skxQXP/UhnCOCwBFzT7hXZAWZIMTKwyB/MsoxHFSAo8qZFeXflCoVRbjhjDHAGRBHC4Z1jvgAcWesPrNeXOGskeOD2z5s0C7xyzpsRVWhKBbUl1ZT5NbkZ1SS1VdCUOfwoF4osK2oAUZXDm5w5/DAZppHENZJySYa+/yZAKjR8r0TLQFqUfK9BpV+Lq6yqaqoYZKyeyqKaqir70xXxDSYyPGVHpLjxAAAAAElFTkSuQmCC" />
            </svg>
        </span>
        <a class="bsm_header_mobile_phone" href="tel:+40721777777">
            <i class="fa fa-phone" aria-hidden="true"></i>
        </a>
    </div>
    <div id="bsm_header_top_bar">
        <div class="container">
            <div class="col-md-6 col-sm-8">
                <ul>
                    <li><a href="tel:012345678">Gọi ngay: +841789008221</a></li>
                    <li>
                        <form method="post">
                            <label>
                                <input type="text" placeholder="Nhập từ khóa" name="bsm_header_search">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </label>
                        </form>
                    </li>
                </ul>
            </div>
            <div class="col-md-6 col-sm-4">
                <div class="bsm_virtual_cart">
                    <a href="gio-hang.html" class="bsm_virtual_cart_content">
                        <img src="public/images/shopping-circle-blue-512.png" class="hinh_gio_hang"/>
                        <p class="sl_gio_hang">{if isset($smarty.session.tong_gio_hang)>0}
                          <span class="tong_sl" id="session">
                          {$smarty.session.tong_gio_hang}</span>
                          {else}
                          <span class="tong_sl">0</span>
                        {/if}</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div id="bsm_header_navigation" class="container">
        <div class="col-md-5">
            <nav>
                <ul class="bsm_header_nav_left">
                    <li ><a href=".">Trang chủ</a></li>
                    <li><a href="gioi_thieu.php">Giới thiệu</a></li>
                    <li><a href="danh-sach-hoa">Hoa tươi</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-md-2">
            <a href=".">
              {$logo->hinh}
            <img src="http://marry.vn/wp-content/uploads/users/335244/2014/10/12/logo-600x416-pixel.png" alt="" style="width: 165px;height: 130px;">
        </a>
        </div>
        <div class="col-md-5">
            <nav>
                <ul class="bsm_header_nav_left">
                    <li><a href="tin_tuc.php">Tin Tức</a></li>
                    <li><a href="check_hoa_don.php">Check hóa đơn</a></li>
                    <li><a href="lien-he.html">Liên hệ</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
