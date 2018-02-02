<?php
/* Smarty version 3.1.30, created on 2018-02-02 02:17:44
  from "/home/wikicach/public_html/shop_hoa/views/v_tin_tuc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a73ca48340b17_43322483',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aff9b181e75d6fd556c884c47dd359df9351edd4' => 
    array (
      0 => '/home/wikicach/public_html/shop_hoa/views/v_tin_tuc.tpl',
      1 => 1517005307,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/tin_tuc/v_thanh_danh_muc.tpl' => 1,
    'file:views/tin_tuc/v_ds_tin_tuc.tpl' => 1,
  ),
),false)) {
function content_5a73ca48340b17_43322483 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="container">
    <?php $_smarty_tpl->_subTemplateRender("file:views/tin_tuc/v_thanh_danh_muc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

    <?php $_smarty_tpl->_subTemplateRender("file:views/tin_tuc/v_ds_tin_tuc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

</div>
<?php }
}
