<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1925421851050773';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
  <!-- Navigation-->
  {block name="navbar_content"}{include file="layouts/content/navbar_content.tpl"}{/block}
    <div class="content-wrapper ">
          <!-- Breadcrumbs-->
        <ol class="breadcrumb print ">
          <li class="breadcrumb-item ">
            <a href=".">Trang quản lý</a>
          </li>
          <li class="breadcrumb-item active">{$title}</li>
        </ol>
        <div class="container-fluid">
            {if isset($view)}
                {include file="$view"}
            {/if}
        </div>
    </div>
  <!-- /.container-fluid-->
  <!-- /.content-wrapper-->
  {block name="footer_content"}{include file="layouts/content/footer_content.tpl"}{/block}
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fa fa-angle-up"></i>
  </a>
  <!-- Logout Modal-->
  {block name="logout_modal"}{include file="layouts/content/logout_modal.tpl"}{/block}