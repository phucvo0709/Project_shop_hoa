<?php
/* Smarty version 3.1.30, created on 2018-02-02 02:17:13
  from "/home/wikicach/public_html/shop_hoa/views/v_hoa.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a73ca29a18811_12756831',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a9bbc5d5a54f0300110d57f1f5047157c43d9f10' => 
    array (
      0 => '/home/wikicach/public_html/shop_hoa/views/v_hoa.tpl',
      1 => 1515420236,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/hoa/v_thanh_danh_muc.tpl' => 1,
    'file:views/hoa/v_tim_theo_loai_don_gia.tpl' => 1,
    'file:layouts/body/quang_cao.tpl' => 1,
    'file:views/v_gio_hang_ajax.tpl' => 1,
  ),
),false)) {
function content_5a73ca29a18811_12756831 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:views/hoa/v_thanh_danh_muc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  <div class="container">
    <div class="main">
          <div class="row">
              <?php $_smarty_tpl->_subTemplateRender("file:views/hoa/v_tim_theo_loai_don_gia.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

            <div class="col-main col-lg-9 col-md-9 col-sm-9 col-xs-12 content-color color f-right ds_hoa">
            </div>
          </div>
    </div>
      <?php $_smarty_tpl->_subTemplateRender("file:layouts/body/quang_cao.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  </div>
<?php $_smarty_tpl->_subTemplateRender("file:views/v_gio_hang_ajax.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php }
}
