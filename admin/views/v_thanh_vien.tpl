
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <div class="row">
            <div class="col col-6">
              <i class="fa fa-table"></i> Danh sách thành viên
            </div>
            <div class="col col-6">
              <a href="them_thanh_vien.php" class="btn btn-success float-right" target="_blank">Thêm thành viên mới</a>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="table-responsive">
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Tài khoản</th>
                  <th>Tên</th>
                  <th>Quyền</th>
                  <th>Hành động</th>
                </tr>
              </thead>
              <tbody>
              {foreach $thanh_viens as $thanh_vien}
                <tr id="delete{$thanh_vien->ID}">
                  <td>{$thanh_vien->TaiKhoan}</td>
                  <td>{$thanh_vien->HoTen}</td>
                  <td>
                    {if $thanh_vien->permission == 1}Admin
                    {elseif $thanh_vien->permission == 0}Quản lý đơn hàng
                    {else}Quản lý sản phẩm
                    {/if}</td>
                  <td>{if $thanh_vien->permission != 1}
                      <button type="button" class="btn btn-primary" onclick="getId({$thanh_vien->ID})" id="update{$thanh_vien->id}" data-toggle="modal" data-target="#edit{$thanh_vien->ID}" >Sửa</button>
                      <button type="button" onclick="deleteAjax({$thanh_vien->ID})" class="btn btn-danger">Xóa</button>
                      {else}
                      <button type="button" class="btn btn-primary" onclick="getId({$thanh_vien->ID})" id="update{$thanh_vien->id}" data-toggle="modal" data-target="#edit{$thanh_vien->ID}" >Sửa</button>
                      {/if}
                  </td>
                </tr>
                {* Modal edit *}
                <div class="modal fade" id="edit{$thanh_vien->ID}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document" style="max-width: 875px;">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Chi tiết{$thanh_vien->HoTen}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form method="POST">
                          <input type="hidden" name="id" value="{$thanh_vien->ID}">
                          <div class="form-group">
                            <label for="recipient-name" class="form-control-label">Tài khoản:</label>
                            <input type="text" class="form-control" name="tai_khoan" value="{$thanh_vien->TaiKhoan}" disabled>
                          </div>
                          <div class="form-group">
                            <label for="recipient-name" class="form-control-label">Quyền:</label>
                            <select class="form-control" name="permission">
                                <option {if $thanh_vien->permission == 1} selected="selected" {/if} value="1">Admin</option>
                                <option {if $thanh_vien->permission == 0} selected="selected" {/if}  value="0">QL Đơn Hàng</option>
                                <option {if $thanh_vien->permission == 2} selected="selected" {/if}  value="2">QL Sản Phẩm</option>
                            </select>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                            <button type="submit" class="btn btn-success" name="btn_update" id="checkUpdate{$hoa->MaHoa}">Cập nhật</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                {* end modal edit *}

              {/foreach}
              </tbody>
            </table>
          </div>
        </div>
  
    <script src="public/js/ajax/ajax_delete_thanh_vien.js"></script>
    {if isset($smarty.session.thongBao)}
      <script>swal("{$smarty.session.thongBao}");</script>
    {/if}
    {if isset($smarty.session.thongBaoThanhCong)}
      <script>
          swal({
            title: "Thành công!",
            text: "{$smarty.session.thongBaoThanhCong}!",
            icon: "success"
            }).then(function() {
                window.location = "thanh_vien.php";
            });
      </script>
    {/if}
