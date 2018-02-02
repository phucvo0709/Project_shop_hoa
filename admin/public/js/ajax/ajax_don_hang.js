if (($("#chua_duyet").length > 0)) {
    var mang = [];
    var data;
    function sl_hoa_don() {
        $.ajax({
            type: 'post',
            url: 'index.php',
            data: {
                hien_thi: true,
            },
            success: function (response) {
              mang = jQuery.parseJSON(response);
            },
        });
    }
    function hoa_don_chua_duyet() {
        $.ajax({
            type: 'post',
            url: 'ds_hoa_don_chua_duyet.php',
            data: {
                hien_thi: true,
            },
            success: function (response) {
                data = response;
            },
        });
    }
    setInterval(function () {
        sl_hoa_don();
        hoa_don_chua_duyet();
        $('#chua_duyet').html(data);
        $('#tong_dh_hom_nay').html(mang[1]);
        $('#tong_dh_chua_duyet_hom_nay').html(mang[0]);
    }, 1000);
}
