<div class="row">
    <div class="row mb">
        <div class="boxtrai mr">
            <div class="row mb">
                <div class="boxtitle">CẢM ƠN</div>
                <div class="row boxcontent" style="display: flex; justify-content: center; align-items: center;">
                    <h2 style="font-size: 20px">Cảm ơn quý khách đã đặt hàng!</h2>
                </div>
            </div>
            <?php 
                if(isset($bill)&&(is_array($bill))){
                    extract($bill);
                }

            ?>
            <div class="row mb">
                <div class="boxtitle">THÔNG TIN ĐƠN HÀNG</div>
                <div class="row boxcontent thongtindonhang" style="font-weight: bold; text-align: center; display: flex; flex-direction: column; justify-content: center; align-items: center;">
                    <ul style="list-style-type: none; padding: 0; margin: 0;">
                        <li style="font-size: 17px; margin-bottom: 3px;">- Mã đơn hàng: DAM-<?=$bill['id'];?></li> 
                        <li style="font-size: 17px; margin-bottom: 3px;">- Ngày đặt hàng: <?=$bill['ngaydathang'];?></li> 
                        <li style="font-size: 17px; margin-bottom: 3px;">- Tổng đơn hàng: <?=$bill['total'];?></li> 
                        <li style="font-size: 17px; margin-bottom: 3px;">- Phương thức thanh toán: <?=$bill['bill_pttt'];?></li>
                    </ul>
                </div>
            </div>
            <div class="row mb">
                <div class="boxtitle">THÔNG TIN ĐẶT HÀNG</div>
                <div class="row boxcontent billform" style="display: flex">
                    <table style="font-size: 17px; border-collapse: separate; border-spacing: 0 10px;">
                        <tr>
                            <td style="font-weight: bold;">Người đặt hàng: </td>
                            <td><?=$bill['bill_name'];?></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Địa chỉ: </td>
                            <td><?=$bill['bill_address'];?></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Email: </td>
                            <td><?=$bill['bill_email'];?></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Số điện thoại: </td>
                            <td><?=$bill['bill_tel'];?></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row mb">
                <div class="boxtitle">CHI TIẾT GIỎ HÀNG</div>
                <div class="row boxcontent cart">
                    <table>
                        
                        <?php 
                            bill_chi_tiet($billct);
                        ?>
                    </table>
                </div>
            </div> 
        </div>
        <div class="boxphai">
            <?php 
                include "view/boxright.php";
            ?>
        </div>
</div>
</div>