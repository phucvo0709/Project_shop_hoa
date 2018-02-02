<?php
/* Smarty version 3.1.30, created on 2018-02-02 02:17:13
  from "/home/wikicach/public_html/shop_hoa/views/hoa/v_tim_theo_loai_don_gia.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a73ca29a27209_02649580',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7097b1645d9fa3fb4bda1741723604977b343d35' => 
    array (
      0 => '/home/wikicach/public_html/shop_hoa/views/hoa/v_tim_theo_loai_don_gia.tpl',
      1 => 1515684982,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a73ca29a27209_02649580 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="col-left sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12 left-color color f-left">
    <div class="anav-container">
        <div class="block block-anav">
            <ul class="magictabs">
                <li class="item active loaded single">
                    <span class="title">Tìm theo loại sản phẩm</span>
                </li>
            </ul>
            <ul class="nav-accordion left">
                <ul class="level0" style="display: block;">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['doc_loai_hoa']->value, 'loai_hoa');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['loai_hoa']->value) {
?>
                    <li>
                        <span class="maLoai" id="maloai_<?php echo $_smarty_tpl->tpl_vars['loai_hoa']->value->MaLoai;?>
"><?php echo $_smarty_tpl->tpl_vars['loai_hoa']->value->TenLoai;?>
</span>
                    </li>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                </ul>
            </ul>
        </div>
        <div class="block block-layered-nav block-layered-nav--no-filters">
            <ul class="magictabs">
                <li class="item active loaded single">
                    <span class="title">Tìm theo giá</span>
                </li>
            </ul>
            <div class="block-content toggle-content1">
                <div id="narrow-by-list">
                    <dl class="narrow-by">
                        <dl class="narrow-by">
                            <dt class="odd">Giá bán</dt>
                            <dt class="toggle-tab mobile even" style="display:none"></dt>
                            <dd class="Giá bán toggle-content odd">
                                <ol>
                                     <li class="tim_theo_gia" id="0-500000">
                                        <span class="price">0&nbsp;₫ - </span>
                                        <span class="price"><?php echo number_format(500000);?>
&nbsp;₫</span>
                                     </li>
                                     <li class="tim_theo_gia" id="500000-1000000">
                                        <span class="price"><?php echo number_format(500000);?>
&nbsp;₫ - </span> 
                                        <span class="price"><?php echo number_format(1000000);?>
&nbsp;₫</span>
                                     </li>
                                 </ol>
                            </dd>
                            <dt class="odd gia_khac">Hoặc chọn giá khác</dt>
                                <div class="filter-panel">
                                    <p><input type="hidden" class="price_range" value="0,1000000" /></p>
                                </div>
                                <input class="nut_tim" type="button"  value="Tìm" />
                        </dl>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<?php }
}
