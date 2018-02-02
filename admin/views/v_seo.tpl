<div class="container">
    <form method="POST" enctype="multipart/form-data">
    <div class="form-group">
        <label for="title_website">Title Website:</label>
        <input type="text" class="form-control" name="title_website" maxlength="255" value="{$title_website}">    
    </div>
    <div class="form-group">
        <label for="description_website">Description Website:</label>
        <input type="text" class="form-control" name="description_website" maxlength="255" value="{$description_website}">    
    </div>
    <div class="form-group">
        <label for="keywords_website">Keywords Website:</label>
        <input type="text" class="form-control" name="keywords_website" maxlength="255" value="{$keywords_website}">    
    </div>
    <div class="form-group">
        <label for="hinh" style="margin-bottom: 10px">Logo Website:</label>
        <div class="row">
            <div class="col col-4">
            <div class="input-file-container">  
                <input class="input-file" type="file" name="hinh" id="file"/>
                <label tabindex="0" for="my-file" class="input-file-trigger">Tải ảnh mới</label>
                <p class="file-return"></p>
            </div>
            </div>
            <div class="col col-3">
                <img id="hienThi" class="img-fluid" src="../public/images/logo/{$logo}"/>
                <p>Logo default: 130 x 49</p>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary" name="btn_update">Cập nhật</button>
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
                window.location = "seo.php";
            });
      </script>
    {/if}