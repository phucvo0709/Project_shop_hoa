{foreach $smarty.session.giohang as $gh}
    {foreach $hoa as $sp}
        {if $gh@key == $sp->MaHoa}
            <li class='product' id='delete{$sp->MaHoa}'>
                <div class='product-image'>
                    <img src='public/images/hoa/{$sp->Hinh}'>
                </div>
                <div class='product-details'>
                    <h3>{$sp->TenHoa}</h3>
                </div>
                <div class='actions'>
                    <a id='xoa_{$sp->MaHoa}' onclick="xoagiohang({$sp->MaHoa},{$gh},{$sp->GiaKhuyenMai*$gh})" class='delete-item'>Xóa</a>
                </div>
                {if $gh == 1}
                    <div class='thu_nho tru' id='tru_{$sp->MaHoa}' onclick='xoagiohang({$sp->MaHoa},{$gh},{$sp->GiaKhuyenMai*$gh})'>
                        <i class='fa fa-minus' aria-hidden='true'></i>
                    </div>
                {else}
                    <div class='thu_nho tru' id='tru_{$sp->MaHoa}' onclick='giam({$sp->MaHoa})'>
                        <i class='fa fa-minus' aria-hidden='true'></i>
                    </div>         
                {/if}
                <div class='so_luong khung' id='gio_hang{$sp->MaHoa}'>{$gh}</div>
                <div class='thu_nho cong' onclick='tang({$sp->MaHoa})'><i class='fa fa-plus' aria-hidden='true'></i></div>
                <div class='price' id='tong_{$sp->MaHoa}'>{number_format($sp->GiaKhuyenMai*$gh)} đ </div>
            </li>
        {/if}
    {/foreach}
{/foreach}