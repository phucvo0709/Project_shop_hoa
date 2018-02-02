function chuyen_huong_gio_hang(MaHoa, sl_db) {
  if (sl_db == 0) {
    swal_het_hang();
  } else {
    $.ajax({
      type: 'get',
      url: 'gio_hang.php',
      data: {
        MaHoa: MaHoa
      },
      success: function(data) {
        var soluongMua = $('#session').attr('id');
        alert(soluongMua);
      }
    })
    swal_dat_hang(sl_gio_hang);
  }
}

function kt_sl_mua(MaHoa, sl_db) {
  var sl = document.getElementById("sl_" + MaHoa).value;
  alert(sl);
  if (sl >= 10) {
    swal_sl_lon_hon_10();
  }
  if (sl_gio_hang < sl_db) {
    swal_sl_khong_đu(sl_db);
  }
  if (sl_db == 0) {
    swal_het_hang();
  } else {
    $.ajax({
      type: 'get',
      url: 'gio_hang.php',
      data: {
        MaHoa: MaHoa,
        sl: sl
      },
      success: function(data) {

      }
    });
    swal_dat_hang(sl_gio_hang);
  }
}

function swal_dat_hang(sl_gio_hang) {
  sl_gio_hang++;
  document.getElementById("session").innerHTML = sl_gio_hang;
  swal("Bạn đã đặt hàng thành công", {
    buttons: {
      cancel: "Đặt hàng tiếp",
      catch: {
        text: "Xem giỏ hàng",
        value: "catch",
      },
    },
  }).then((value) => {
    switch (value) {
      case "catch":
        window.location = "gio-hang.html";
        break;
    }
  });
}

function swal_het_hang() {
  swal({
    title: "Rất tiếc!!!",
    text: "Sản phẩm đã hết hàng",
    icon: "warning",
    dangerMode: true,
  })
}

function swal_sl_khong_đu(sl_db) {
  swal({
    title: "Rất tiếc!!!",
    text: "Chỉ còn " + sl_db + " sản phẩm",
    icon: "warning",
    dangerMode: true,
  })
}

function swal_sl_lon_hon_10() {
  swal({
    title: "Rất tiếc!!!",
    text: "Số lượng đặt hàng lớn hơn qui định",
    icon: "warning",
    dangerMode: true,
  })
}
