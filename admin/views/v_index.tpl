
  {if $smarty.cookies.permission == 1 || $smarty.cookies.permission == 0} 
  {include file="views/index/v_don_hang.tpl"}
  <div class="container auto_refresh">
    <div class="card mb-3" id="chua_duyet"></div>
  {else}
   {include file="views/index/v_san_pham.tpl"}
    <div class="card mb-3" id="het_hang">
      {include file="views/index/v_ds_hoa_het_hang.tpl"}
    </div>
  {/if}
</div>
	<script src="public/js/ajax/ajax_update_hoa_don.js"></script>
  <script src="public/js/ajax/ajax_delete_hoa_don.js"></script>
