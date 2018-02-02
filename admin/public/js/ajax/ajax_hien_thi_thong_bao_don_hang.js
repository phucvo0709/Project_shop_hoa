$('#messagesDropdown').click(function () {
    $.ajax({
        type: 'post',
        url: 'hien_thi_thong_bao_don_hang.php',
        data: {
            hien_thi: true,
        },
        success: function (response) {
            document.getElementById('hien_thi').innerHTML = response;
        },
    });
})