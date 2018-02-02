
  phantrang(1);
  phantrangSPdaxem(1);
  
  var maloai = 0;
  var price_range = -1;

  function phantrang(page) {
    $.ajax({
      type: 'post',
      url: 'ajax_danh_sach_hoa.php',
      data: {
        page: page,
      },
      success: function(data) {
        hienthi(data, page);
      },
    });
  }

function phantrangSPdaxem(trang) {
    $.ajax({
      type: 'post',
      url: 'ajax_san_pham_da_xem.php',
      data: {
        page: trang,
      },
      success: function (data) {
        hienthiSP(data, trang);
      },
    });
  }

  function doctheoMaLoai(maloai, page) {
    $.ajax({
      type: 'post',
      url: 'ajax_danh_sach_hoa.php',
      data: {
        maloai: maloai,
        page: page,
      },
      success: function(data) {
        hienthi(data, page);
      },
    });
  }

  function doctheoMaLoaiGia(maloai, price_range , page) {
    $.ajax({
      type: 'post',
      url: 'ajax_danh_sach_hoa.php',
      data: {
        maloaigia: maloai,
        loaigia: price_range,
        page: page,
      },
      success: function(data) {
        hienthi(data, page);
      },
    });
  }

  function doctheoGia(price_range,page) {
    $.ajax({
      type: 'POST',
      url: 'ajax_danh_sach_hoa.php',
      data: {
        price_range: price_range,
        page: page,
      },
      success: function (data) {
        hienthi(data, page);
      }
    });
  }

  function hienthi(data, page) {
    $('.ds_hoa').html(data);
    $('#' + page).addClass('active');
  }
  function hienthiSP(data, trang) {
    $('#san_pham_da_xem').html(data);
    $('#' + trang).addClass('active');
  }

  //click vào giá
  $(document).on('click', '.tim_theo_gia', function () {
    var chuoiGia = $(this).attr('id');
    price_range = chuoiGia.replace('-',',');
    if (maloai != 0) {
      doctheoMaLoaiGia(maloai, price_range, 1);
    } else {
      doctheoGia(price_range, 1);
    }
  });

  //click vào nút tìm
  $(document).on('click', '.nut_tim', function () {
    price_range = $('.price_range').val();
    if(maloai != 0){
      doctheoMaLoaiGia(maloai, price_range, 1);
    } else{
      doctheoGia(price_range, 1);
    }
  });

  //click vao link phan trang
  $(document).on('click', '.pagination_link', function() {
    var page = $(this).attr('id');
    if (maloai != 0 && price_range != -1 ) {
      doctheoMaLoaiGia(maloai, price_range, page);
    } else if (maloai != 0) {
      doctheoMaLoai(maloai, page);
    } else if (price_range != -1) {
      doctheoGia(price_range, page);
    }else{
      phantrang(page);
    }
    $('html, body').animate({
      scrollTop: 250,
    }, 'fast');
  });
  //CLICK VAO phan trang san pham da xem
//click vao link phan trang
$(document).on('click', '.phan_trang', function () {
    var trang = $(this).attr('id');
  phantrangSPdaxem(trang);
    $('html, body').animate({
      scrollTop: 250,
    }, 'fast');
  });
  //ma loai
  $(document).on('click', '.maLoai', function() {
    var chuoiMaLoai = $(this).attr('id');
    maloai = chuoiMaLoai.replace('maloai_', '');
    if (price_range != -1) {
      doctheoMaLoaiGia(maloai, price_range, 1);
    } else {
      doctheoMaLoai(maloai, 1);
    }
    $('html, body').animate({
      scrollTop: 250,
    }, 'fast');
  });
