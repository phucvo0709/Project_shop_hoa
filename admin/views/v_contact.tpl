<div class="container">
    <form method="POST">
    <div class="form-group">
        <label for="phone_number">Phone Number:</label>
        <input type="text" class="form-control" name="phone_number" maxlength="20" value="{$phone_number}">
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" name="email" maxlength="50" value="{$email}">    
    </div>
    <div class="form-group">
        <label for="address">Address:</label>
        <input type="text" class="form-control" name="address" maxlength="100" value="{$address}">    
    </div>
    <div class="form-group">
        <label for="google_map">Google Map:</label>
        <textarea class="form-control" type="text" name="google_map">{$google_map}</textarea>   
        <p>Copy iframe share in <a href="https://www.google.com/maps">Google Maps</a></p>  
    </div>
    <button type="submit" class="btn btn-primary" name="btn_update">Cập nhật liên hệ</button>
    </form>
</div>
    <script src="public/js/input_file.js"></script> 
    <script src="public/js/script_hien_thi_anh_add.js"></script>
    <script src="public/js/script_hien_thi_anh.js"></script>
    {if isset($smarty.session.success)}
      <script>
          swal({
            title: "Cập nhật thành công!",
            text: "{$smarty.session.success}!",
            type: "success"
            }).then(function() {
                window.location = "contact.php";
            });
      </script>
    {/if}