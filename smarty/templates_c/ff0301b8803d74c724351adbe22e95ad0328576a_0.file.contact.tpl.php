<?php
/* Smarty version 3.1.30, created on 2018-02-02 02:17:13
  from "/home/wikicach/public_html/shop_hoa/smarty/templates/layouts/body/contact.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a73ca29a32614_92584765',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ff0301b8803d74c724351adbe22e95ad0328576a' => 
    array (
      0 => '/home/wikicach/public_html/shop_hoa/smarty/templates/layouts/body/contact.tpl',
      1 => 1515420236,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a73ca29a32614_92584765 (Smarty_Internal_Template $_smarty_tpl) {
?>
<section class="send-email">
    <div class="container">
        <div class="col-sm-9">
            <div class="col-sm-4 text-left">
                <span>Nhận tin khuyến mãi</span>
            </div>
            <div class="input-group col-sm-4">
                <input type="text" class="form-control" placeholder="Nhập email...">
                <span class="input-group-btn nopadd">
                    <button class="btn btn-default" type="button"><span class="fa fa-send-o"></span></button>
                </span>
            </div><!-- /input-group -->
        </div>
    </div>
</section>
    <div id="bsm_contact_and_map"><?php echo $_smarty_tpl->tpl_vars['google_map']->value;?>
</div>
<?php }
}
