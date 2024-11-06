<div class="row">
    <div class="row formtitle mb">
        <h1>DAH SÁCH ĐƠN HÀNG</h1>
    </div>
    <form action="index.php?act=listbill" method="post">
        <input type="text" name="kyw" placeholder="Nhập mã đơn hàng">
        <input type="submit" value="GO" name="listok">
    </form>
    <div class="row formcontent">
        <div class="row mb10 formdssp">
            <table>
                <tr>
                    <th></th>
                    <th>Mã đơn hàng</th>
                    <th>Khách hàng</th>
                    <th>Số lượng hàng</th>
                    <th>Giá trị đơn hàng</th>
                    <th>Tình trạng</th>
                    <th>Ngày đặt hàng</th>
                    <th>thao tác</th>
                </tr>
                <?php 
                    foreach($listbill as $bill){
                        extract($bill);
                        $kh = $bill["bill_name"].'
                        <br>'.$bill["bill_email"].'
                        <br>'.$bill["bill_address"].'
                        <br>'.$bill["bill_tel"];
                        $ttdh = get_ttdh($bill["bill_status"]);
                        $countsp = loadall_cart_count($bill["id"]);
                        echo '<tr>
                                <td><input type="checkbox" name="" id=""></td>
                                <td>DAM-'.$bill['id'].'</td>
                                <td>'.$kh.'</td>
                                <td>'.$countsp.'</td>
                                <td><strong>'.$bill["total"].'.000</strong> vnđ</td>
                                <td>'.$ttdh.'</td>
                                <td>'.$bill["ngaydathang"].'</td>
                                <td><input type="button" value="Sửa"><input type="button" value="Xóa" onclick="return confirm(\'Bạn có chắc chắn không?\')"></td>
                            </tr>';
                    }
                ?>
                
            </table>
        </div>
        <div class="row mb10">
            <input type="button" value="Chọn tất cả">
            <input type="button" value="Bỏ chọn tất cả">
            <input type="button" value="Xóa các mục đã chọn" onclick="return confirm('Bạn có chắc chắn không?')">
            <a href="index.php?act=addsp"><input type="button" value="Nhập thêm"></a>
        </div>
    </div>
</div>