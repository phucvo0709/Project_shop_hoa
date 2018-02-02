function initMap() {
    "use strict";
    if ($('.bsm_style_pink_violet').length) {
        var bsm_pin_map = 'img/pin_icon2.png';
    } else {
        var bsm_pin_map = 'img/pin_icon.png';
    }
    var map_icon_location = {
        lat: 40.688869,
        lng: -73.865633
    };
    var map_icon_pin_icon = {
        url: bsm_pin_map,
        anchor: new google.maps.Point(0, 0),
        strokeWeight: 0,
        scaledSize: new google.maps.Size(86, 142)
    };
    var map = new google.maps.Map(document.getElementById('bsm_map_content'), {
        zoom: 13,
        center: {
            lat: 40.688869,
            lng: -73.865633
        },
        scrollwheel: false
    });
    var marker = new google.maps.Marker({
        position: map_icon_location,
        map: map,
        title: 'Hello World!',
        icon: map_icon_pin_icon
    });
}
(function ($) {
    "use strict";
    jQuery(document).ready(function () {

        /* CAROUSEL */
        var bsm_slider = new Swiper('#bsm_slider', {
            pagination: '#bsm_slider_pagination',
            paginationClickable: true,
            direction: 'horizontal',
            loop: true,
            nextButton: '.bsm_slider_next',
            prevButton: '.bsm_slider_prev',
            autoplay: false,
            speed: 2000,
            effect: 'slide'
        });
        var bsm_testimonials = new Swiper('#bsm_testimonials', {
            pagination: '#bsm_testimonials_pagination',
            paginationClickable: true,
            direction: 'horizontal',
            loop: true,
            autoplay: false,
            speed: 2000,
            effect: 'slide'
        });
        var bsm_new_products = new Swiper('#bsm_new_products', {
            pagination: '#bsm_new_products_pagination',
            spaceBetween: 30,
            slidesPerView: 4,
            paginationClickable: false,
            direction: 'horizontal',
            loop: true,
            nextButton: '.bsm_products_new_next',
            prevButton: '.bsm_products_new_prev',
            autoplay: true,
            speed: 2000,
            effect: 'slide',
            breakpoints: {
                991: {
                    slidesPerView: 3
                },
                767: {
                    slidesPerView: 3
                },
                480: {
                    slidesPerView: 1
                }
            }
        });
        var bsm_product_details = new Swiper('.bsm_product_details_carousel', {
            pagination: '.swiper-pagination',
            slidesPerView: 4,
            direction: 'horizontal',
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            breakpoints: {
                991: {
                    slidesPerView: 3
                },
                767: {
                    slidesPerView: 3
                },
                480: {
                    slidesPerView: 2
                }
            }
        });
        var bsm_product_details_first = new Swiper('#bsm_product_details_carousel_first', {
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            direction: 'horizontal'
        });
        var bsm_product_details_second = new Swiper('#bsm_product_details_carousel_second', {
            spaceBetween: 10,
            centeredSlides: true,
            direction: 'horizontal',
            slidesPerView: 'auto',
            slideToClickedSlide: true,
            breakpoints: {
                480: {
                    slidesPerView: 3
                }
            }
        });
        bsm_product_details_first.params.control = bsm_product_details_second;
        bsm_product_details_second.params.control = bsm_product_details_first;

        /* NAVIGATION MENU */
        var bsm_submenu = 'ul li.bsm_submenu i';
        $(bsm_submenu).on('click', function () {
            if ($(this).hasClass('submenu_open')) {
                $(bsm_submenu).removeClass('submenu_open');
                $(this).removeClass('submenu_open');
                $(this).parent().find('ul').removeClass('submenu_open');
            } else {
                $(bsm_submenu).removeClass('submenu_open');
                $(this).addClass('submenu_open');
                $(this).parent().find('ul').addClass('submenu_open');
            }
        });

        /* SCROLL TOP */
        var bsm_go_top = $('#bsm_go_top');
        bsm_go_top.on('click', function () {
            $("html, body").animate({scrollTop: 0}, 1500);
            return false;
        });

        /* SHOP LISTING PRODUCTS */
        var bsm_shop_listing_a = $('.bsm_listing_products_widget ul li a');
        var bsm_shop_listing_li = $('.bsm_listing_products_widget ul li');
        bsm_shop_listing_a.on('click', function (e) {
            e.preventDefault();
            bsm_shop_listing_li.removeClass('active');
            $(this).parent().addClass('active');
        });

        var bsm_filters_price = $('.range span');
        var bsm_range = $('.range');
        var bsm_range_width = $('.range').width();
        if (bsm_range.length) {
            document.body.addEventListener('change', function () {
                var bsm_max_price = $(".range div").first();
                var bsm_min_price = $(".range div").last();
                var bsm_distance = bsm_range_width - bsm_max_price.position().left;
                $(bsm_filters_price).css({
                    'margin-left': bsm_min_price.position().left + 'px',
                    'margin-right': bsm_distance + 'px'
                });
                bsm_min_price.html('<span>' + bsm_min_price.attr('data-value') + '</span>');
                bsm_max_price.html('<span>' + bsm_max_price.attr('data-value') + '</span>');
            });
        }

        var bsm_filters_price_label = $("#bsm_listing_products .bsm_listing_products_widget_price label input");
        bsm_filters_price_label.on('keyup', function (e) {
            if ($(this).val() !== '') {
                if (Math.floor($(this).val()) == $(this).val() && $.isNumeric($(this).val())) {
                    $(this).css({
                        'border-color': '#20b247'
                    });
                } else {
                    $(this).css({
                        'border-color': '#cf3045'
                    });
                }
            } else {
                $(this).css({
                    'border-color': '#725754'
                });
            }
        });

        var bsm_shop_listing_colors_label = $('#bsm_listing_products label');
        var bsm_shop_listing_colors_input = $('#bsm_listing_products input');
        bsm_shop_listing_colors_input.on('click', function () {
            if ($(this).is(':checked')) {
                bsm_shop_listing_colors_label.removeClass('active');
                $(this).parent().addClass('active');
            } else {
                $(this).parent().removeClass('active');
            }
        });

        var bsm_quantity_plus = $('.bsm_quantity_plus');
        var bsm_quantity_minus = $('.bsm_quantity_minus');
        bsm_quantity_plus.on('click', function (e) {
            e.preventDefault();
            var bsm_field_value = $(this).attr('data-field');
            var bsm_field_input = $('input[name=' + bsm_field_value + ']');
            var currentVal = parseInt(bsm_field_input.val());
            if (!isNaN(currentVal)) {
                bsm_field_input.val(currentVal + 1);
            } else {
                bsm_field_input.val(0);
            }
        });
        bsm_quantity_minus.on('click', function (e) {
            e.preventDefault();
            var bsm_field_value = $(this).attr('data-field');
            var bsm_field_input = $('input[name=' + bsm_field_value + ']');
            var currentVal = parseInt(bsm_field_input.val());
            if (!isNaN(currentVal) && currentVal > 0) {
                bsm_field_input.val(currentVal - 1);
            } else {
                bsm_field_input.val(0);
            }
        });

        if ($(window).width() < 768) {

            var bsm_header_mobile_container = $('#bsm_header_mobile');
            var bsm_header_mobile_nav_container = $('#bsm_header_mobile_nav');
            var bsm_header_nav_left_content = $('nav .bsm_header_nav_left');
            var bsm_header_nav_right_content = $('nav .bsm_header_nav_right');
            var bsm_header_logo = $('#bsm_header_navigation .col-md-2');

            var bsm_header_mobile_nav_open = $('.bsm_header_mobile_nav_button.fa-bars');
            var bsm_header_mobile_nav_close = $('.bsm_header_mobile_nav_button.fa-times');
            bsm_header_mobile_nav_open.on('click', function () {
                $(this).fadeOut();
                bsm_header_mobile_nav_close.fadeIn();
                bsm_header_mobile_nav_container.css({
                    'opacity': "1",
                    '-webkit-transform': "translateY(0)",
                    '-moz-transform': "translateY(0)",
                    '-ms-transform': "translateY(0)",
                    '-o-transform': "translateY(0)",
                    'transform': "translateY(0)",
                    'visibility': "visible",
                    'transition': "opacity 0.35s 0s, transform 0.35s 0s, visibility 0.35s 0.35s"
                });
            });
            bsm_header_mobile_nav_close.on('click', function () {
                $(this).fadeOut();
                bsm_header_mobile_nav_open.fadeIn();
                bsm_header_mobile_nav_container.css({
                    'opacity': "0",
                    '-webkit-transform': "translateY(-100%)",
                    '-moz-transform': "translateY(-100%)",
                    '-ms-transform': "translateY(-100%)",
                    '-o-transform': "translateY(-100%)",
                    'transform': "translateY(-100%)",
                    'visibility': "hidden",
                    'transition': "opacity 0.35s 0s, transform 0.35s 0s, visibility 0.35s 0.35s"
                });
            });

            var bsm_header_mobile_search_container = $('#bsm_header_mobile_search');
            var bsm_header_mobile_search_form_content = $('#bsm_header_top_bar ul li form');
            var bsm_header_mobile_search_form = $('#bsm_header_mobile_search form');
            var bsm_header_mobile_search_submit = $('#bsm_header_mobile_search label i');
            var bsm_header_mobile_search_button = $('.bsm_header_mobile_search_button');
            var bsm_header_mobile_search_close = $('#bsm_header_mobile_search .bsm_header_mobile_button_close');
            bsm_header_mobile_search_submit.on('click', function () {
                bsm_header_mobile_search_form.submit();
            });
            bsm_header_mobile_search_button.on('click', function () {
                bsm_header_mobile_search_container.addClass('active');
            });
            bsm_header_mobile_search_close.on('click', function () {
                bsm_header_mobile_search_container.removeClass('active');
            });

            var bsm_header_mobile_cart_container = $('#bsm_header_mobile_cart');
            var bsm_header_mobile_cart_content = $('.bsm_virtual_cart');
            var bsm_header_mobile_cart_button = $('.bsm_header_mobile_cart_button');
            var bsm_header_mobile_cart_close = $('#bsm_header_mobile_cart .bsm_header_mobile_button_close');
            bsm_header_mobile_cart_button.on('click', function () {
                bsm_header_mobile_cart_container.addClass('active');
            });
            bsm_header_mobile_cart_close.on('click', function () {
                bsm_header_mobile_cart_container.removeClass('active');
            });

            var bsm_header_mobile_filter_container = $('#bsm_header_mobile_filters');
            var bsm_header_mobile_filter_content = $('#bsm_listing_products .col-md-3 form');
            var bsm_header_mobile_filter_button = $('#bsm_header_mobile_filters_button');
            var bsm_header_mobile_filter_close = $('#bsm_header_mobile_filters .bsm_header_mobile_button_close');
            bsm_header_mobile_filter_button.on('click', function () {
                bsm_header_mobile_filter_container.addClass('active');
            });
            bsm_header_mobile_filter_close.on('click', function () {
                bsm_header_mobile_filter_container.removeClass('active');
            });

        }
    });
})(jQuery);


