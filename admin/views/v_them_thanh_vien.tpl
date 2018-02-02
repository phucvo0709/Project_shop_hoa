<div class="container">
    <form method="POST">
    <div class="form-group">
        <label for="ten">Tên thành viên:</label>
        <input type="text" class="form-control" name="ten" placeholder="Nhập tên thành viên" required>
    </div>
    <div class="form-group">
        <label for="tai_khoan">Tài khoản:</label>
        <input type="text" class="form-control" name="tai_khoan" placeholder="Nhập tài khoản cần đặt" required>
    </div>
    <div class="form-group">
        <label for="mat_khau">Mật khẩu:</label>
        <input type="password" class="form-control" name="mat_khau" placeholder="Nhập mật khẩu cần đặt" required>    
    </div>
    <div class="form-group">
        <label for="recipient-name" class="form-control-label">Quyền:</label>
        <select class="form-control" name="permission">
            <option value="0">QL Dơn Hàng</option>
            <option value="1">Admin</option>
            <option value="2">QL Sản Phẩm</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary" name="btn_submit">Thêm thành viên</button>
    </form>
</div>
