<div class="row mb">
    <div class="boxtrai mr">
    <div class="row mb">

        <div class="boxtitle"><i class="fa-solid fa-cart-shopping" style="margin-right: 10px"></i>GIỎ HÀNG</div>
        <div class="row boxcontent cart">
            <table>
                

                <?php 
                    viewcart(1);
                ?>
                <!-- <tr>
                    <td>1</td>
                    <td><img src="" alt=""></td>
                    <td>cc</td>
                    <td>s</td>
                    <td>100 vnd</td>
                    <td>100vcd</td>
                    <td><input type="button" value="Xóa"></td>
                </tr> -->
            </table>
        </div>
    </div>
    <div class="row mb bill">
        <a href="index.php?act=bill"><input type="button" value="TIẾP TỤC ĐẶT HÀNG" style="margin-left: 20px"></a> 
        <a href="index.php?act=delcart"><input type="button" value="XÓA GIỎ HÀNG" onclick="return confirm('Bạn có chắc chắn không?')"></a>
    </div>
    </div>
    <div class="boxphai">
        <?php include "view/boxright.php"; ?>
    </div>
</div>