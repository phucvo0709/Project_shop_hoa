<div class="container">
    <form method="POST" action="doi_mat_khau.php">
    <div class="form-group">
        <label for="tai_khoan">Tài khoản:</label>
        <input type="text" class="form-control" name="tai_khoan" id="tai_khoan" value="{if isset($smarty.cookies.taiKhoan)}{$smarty.cookies.taiKhoan}{/if}" disabled>
    </div>
    <div class="form-group">
        <input type="password" class="form-control" name="mat_khau" id="mat_khau" placeholder="Nhập mật khẩu hiện tại">    
    </div>
    <div class="form-group">
        <input type="password" class="form-control" name="mat_khau_moi" id="mat_khau_moi"
        data-validation="strength" data-validation-strength="2" data-validation-error-msg="Mật khẩu bao gồm chữ và số và tối thiểu 8 ký tự"
        placeholder="Nhập mật khẩu mới">    
    </div>
    <div class="form-group">
        <input type="password" class="form-control" name="nl_mat_khau_moi" 
        data-validation="confirmation" data-validation-confirm="mat_khau_moi" data-validation-error-msg="Mật khẩu mới không trùng nhau" 
        placeholder="Nhập lại mật khẩu mới">
    </div>
    <button type="submit" class="btn btn-primary" name="btn_update">Đổi mật khẩu</button>
    </form>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
<script>
	$.validate({
		modules : 'location, date, security, file',
	});
	// Restrict presentation length
	$('#presentation').restrictLength( $('#pres-max-length') );
</script>