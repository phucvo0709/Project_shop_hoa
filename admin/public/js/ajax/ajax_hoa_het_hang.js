
$('.so_luong').editable({
        type: "POST",
        mode:'inline',
        validate: function (value) {
            if ($.trim(value) == '') {
                return 'Nhập số lượng';
            }
            var expression = /^[0-9]+$/;
            if (!expression.test(value)) {
               return 'Chỉ nhập số!';
            }
        },
    });

