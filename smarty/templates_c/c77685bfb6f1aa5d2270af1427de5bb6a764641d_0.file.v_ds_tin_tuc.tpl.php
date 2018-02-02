<?php
/* Smarty version 3.1.30, created on 2018-02-02 02:17:44
  from "/home/wikicach/public_html/shop_hoa/views/tin_tuc/v_ds_tin_tuc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a73ca4835ceb1_93965248',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c77685bfb6f1aa5d2270af1427de5bb6a764641d' => 
    array (
      0 => '/home/wikicach/public_html/shop_hoa/views/tin_tuc/v_ds_tin_tuc.tpl',
      1 => 1516953218,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a73ca4835ceb1_93965248 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_date_format')) require_once '/home/wikicach/public_html/shop_hoa/smarty/libs/plugins/modifier.date_format.php';
?>
<div class="col-main container-fluid noi_dung_tt">
    <div class="category-products">
        <ul class="products-grid row">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tin_tuc']->value, 'tin');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['tin']->value) {
?>
            <li class="item col-md-3">
                <div class="category-products-grid">
                    <div class="images-container">
                        <div class="product-hover">
                            <a href="tin-tuc/<?php echo makeURL($_smarty_tpl->tpl_vars['tin']->value->TenTT);?>
-<?php echo $_smarty_tpl->tpl_vars['tin']->value->MaTT;?>
.html" title="<?php echo $_smarty_tpl->tpl_vars['tin']->value->TenTT;?>
" class="product-image">
                                <img class="img-responsive hinh_hoa" src="public/images/tin_tuc/<?php echo $_smarty_tpl->tpl_vars['tin']->value->Hinh;?>
"  alt="<?php echo $_smarty_tpl->tpl_vars['tin']->value->TenTT;?>
">
                            </a>
                        </div>
                        <h2 class="tt-name">
                        <a href="tin-tuc/<?php echo makeURL($_smarty_tpl->tpl_vars['tin']->value->TenTT);?>
-<?php echo $_smarty_tpl->tpl_vars['tin']->value->MaTT;?>
.html" title="<?php echo $_smarty_tpl->tpl_vars['tin']->value->TenTT;?>
"><?php echo $_smarty_tpl->tpl_vars['tin']->value->TenTT;?>
</a>
                        </h2>
                        <div class="actions-no hover-box">
                            <div class="actions">
                                <div class="price-box">
                                    <a class="minimal-price-link">
                                        <span class="mua_online">Ngày đăng:</span>
                                        <span class="price" id="product-minimal-price-2678"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['tin']->value->ThoiGian,'%d-%m-%Y');?>
 </span>
                                    </a>
                                </div>
                            </div>
                    </div>
                    </div>
                </div>
            </li>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

        </ul>
    </div>
    <div class="bsm_products_pagination" >

</div>
<?php }
}
