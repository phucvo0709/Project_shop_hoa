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
                {if isset($smarty.get.loai_hoa)}
                <li class="category4">
                    <a class="ten_loai_hoa" title="{$ten_loai}">{$ten_loai}</a>
                </li>
                {/if}
            </ul>
        </div>
    </div>
</div>
