<?php
/* Smarty version 3.1.30, created on 2018-02-02 02:17:13
  from "/home/wikicach/public_html/shop_hoa/views/hoa/v_thanh_danh_muc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a73ca29a1cb62_65204008',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cc4f560b9569b54f7f3564e3cc3907a4249bf753' => 
    array (
      0 => '/home/wikicach/public_html/shop_hoa/views/hoa/v_thanh_danh_muc.tpl',
      1 => 1515420236,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a73ca29a1cb62_65204008 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="container">
    <div class="breadcrumbs">
        <div class="container">
            <ul>
                <li class="home">
                    <a href="." title="Trở về trang chủ">Trang chủ</a>
                </li>
                <li class="category4">
                    <a href="danh-sach-hoa" title="">Danh sách hoa</a>
                </li>
                <?php if (isset($_GET['loai_hoa'])) {?>
                <li class="category4">
                    <a class="ten_loai_hoa" title="<?php echo $_smarty_tpl->tpl_vars['ten_loai']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['ten_loai']->value;?>
</a>
                </li>
                <?php }?>
            </ul>
        </div>
    </div>
</div>
<?php }
}
