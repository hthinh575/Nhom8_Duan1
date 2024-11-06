<div class="row mb">
    <div class="boxtrai mr">
        <form action="index.php?act=billcomfirm" method="post">
            <div class="row mb">
                <div class="boxtitle">THÔNG TIN ĐẶT HÀNG</div>
                <div class="row boxcontent billform" style="display: flex;">
                    <table>
                        <?php 
                        
                            if(isset($_SESSION['user'])){
                                $name = $_SESSION['user']['user'];
                                $address = $_SESSION['user']['address'];
                                $email = $_SESSION['user']['email'];
                                $tel = $_SESSION['user']['tel'];
                            }else{
                                $name = "";
                                $address = "";
                                $email = "";
                                $tel = "";
                            }
                        
                        ?>
                        <tr>
                            <td style="font-weight: bold;">Người đặt hàng:</td>
                            <td><input type="text" name="name" value="<?=$name?>"></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Địa chỉ:</td>
                            <td><input type="text" name="address" value="<?=$address?>"></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Email:</td>
                            <td><input type="text" name="email" value="<?=$email?>"></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold;">Điện thoại:</td>
                            <td><input type="text" name="tel" value="<?=$tel?>"></td>
                        </tr>
                    </table>

                </div>
            </div>
            <div class="row mb">
                <div class="boxtitle">PHƯƠNG THỨC THANH TOÁN</div>
                <div class="row boxcontent" style="display: flex; justify-content: center; align-items: center;">
                    <table>
                        <tr>
                            <td style="font-size: 17px"><input type="radio" name="pttt" value="1" checked>Trả tiền khi nhận hàng</td>
                            <td style="font-size: 17px"><input type="radio" name="pttt" value="2">Chuyển khoản ngân hàng</td>
                            <td style="font-size: 17px"><input type="radio" name="pttt" value="3">Thanh toán online</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row mb">
                <div class="boxtitle">THÔNG TIN GIỎ HÀNG</div>
                <div class="row boxcontent cart">
                    <table>
                        
                        <?php 
                            viewcart(0);
                        ?>
                    </table>
                </div>
            </div>
            <div class="row mb bill">
                <input type="submit" value="ĐỒNG Ý ĐẶT HÀNG" name="dongydathang" style="margin-left: 20px">
            </div>
        </form>
    </div>
    <div class="boxphai">
        <?php 
            include "view/boxright.php";
        ?>
    </div>
</div>