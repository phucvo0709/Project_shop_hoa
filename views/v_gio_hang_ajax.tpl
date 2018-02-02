{if isset($smarty.session.giohang)}
  <div class="cd-cart-container">
{else}
  <div class="cd-cart-container empty">
{/if}

	<a  class="cd-cart-trigger">
		Cart
		<ul class="count" id="count">
      {if isset($smarty.session.tong_gio_hang)}
			  <li>{$smarty.session.tong_gio_hang}</li>
			  <li>{$smarty.session.tong_gio_hang}</li>
      {else}
        <li>0</li>
        <li>0</li>
      {/if}
		</ul> <!-- .count -->
	</a>

	<div class="cd-cart">
		<div class="wrapper">
			<header>
				<h2>Giỏ Hàng</h2>
			</header>

			<div class="body">
				<ul id="listGioHang">
					<!-- products added to the cart will be inserted here using JavaScript -->
				</ul>
			</div>

			<footer class='footer_gio_hang'>
				<a href="khach-hang.html" alt="Xem giỏ hàng" class="checkout">
					<em>Đặt hàng - 
						<span id="tong_thanh_tien">
          		 0 đ
      			</span>
					</em>
				</a>
			</footer>
		</div>
	</div> <!-- .cd-cart -->
</div> <!-- cd-cart-container -->
