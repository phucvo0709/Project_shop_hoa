<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình</th>
      <th>Tên Slider</th>
      <th>Thời gian</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
  {foreach $doc_slider as $slider}
    <tr id="delete{$slider->id}">
      <td width="175px" style="max-height: 200px;"><img src="../public/images/slider/{$slider->Hinh}" class="img-fluid" alt="Responsive image"></td>
      <td>{$slider->TieuDe}</td>
      <td>{$slider->ThoiGian}</td>
      <td>
          <button type="button" class="btn btn-primary" onclick="getId({$slider->id})" id="update{$slider->id}" data-toggle="modal" data-target="#edit{$slider->id}" >Sửa</button>
          <button type="button" onclick="deleteAjax({$slider->id})" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
    {include file="views/slider/v_modal_sua_slider.tpl" }
  {/foreach}
  </tbody>
</table>
