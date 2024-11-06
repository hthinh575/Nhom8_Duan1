<div class="row mb">
                    <div class="boxtitle"><i class="fa-solid fa-user"></i>TÀI KHOẢN</div>
                    <div class="boxcontent formtk">
                        <?php
                            if(isset($_SESSION['user'])){
                                extract($_SESSION['user']);
                        ?>
                            <div class="row mb10">
                                Xin chào |
                                <i class="fa-solid fa-circle-user" style="color: #084e2d;"></i>
                                <?=$user?>
                            </div>
                            <div class="row mb10">
                                <li style="list-style: none;">
                                    <a href="index.php?act=mybill" >
                                        <i class="fa-solid fa-cart-shopping" style="font-size: 25px; text-align: center;"></i>Đơn hàng của tôi
                                    </a>
                                </li>
                                <li style="padding-left: 7px;"><a href="index.php?act=quenmk">Quên mật khẩu</a></li>
                                <li style="padding-left: 7px;"><a href="index.php?act=edit_taikhoan">Cập nhật tài khoản</a></li>
                                <?php if($role==1){ ?>
                                    <li style="padding-left: 7px;"><a href="admin/index.php">Đăng nhập Admin</a></li>
                                <?php }?>
                                <li style="padding-left: 7px;"><a href="index.php?act=thoat" onclick="return confirm('Bạn có chắc chắn không?')">Đăng xuất</a></li>
                            </div>
                        <?php
                            }else{                
                        ?>
                        <form action="index.php?act=dangnhap" method="post">
                            <div class="row mb10">
                                Tên đăng nhập<br>
                                <input type="text" name="user">
                            </div>
                            <div class="row mb10">
                                Mật khẩu<br>
                                <input type="password" name="pass">
                            </div>
                            <div class="row mb10">
                            <input type="checkbox" name=""> Ghi nhớ tài khoản?</div>
                            <div class="row mb10">
                                <input type="submit" value="Đăng nhập" name="dangnhap">
                            </div>
                        </form>
                        
                        <li><a href="index.php?act=quenmk">Quên mật khẩu</a></li>
                        <li><a href="index.php?act=dangky">Đăng ký thành viên</a></li>
                        <?php }?>
                    </div>
                </div>
                <div class="row mb">
                    <div class="boxtitle"><i class="fa-solid fa-bars"></i>DANH MỤC</div>
                    <div class="boxcontent2 menudoc">
                        <ul>
                            <?php
                                foreach($dsdm as $dm){
                                    extract($dm);
                                    $linkdm = "index.php?act=sanpham&iddm=".$id;
                                    echo '<li><a href="'.$linkdm.'">'.$name.'</a></li>';
                                }
                            ?>
                            <!-- <li><a href="#">Nước ép</a></li>
                            <li><a href="#">Sinh tố</a></li>
                            <li><a href="#">Bánh ngọt</a></li>
                            <li><a href="#">Trà</a></li>
                            <li><a href="#">Nước ép</a></li>
                            <li><a href="#">Sinh tố</a></li>
                            <li><a href="#">Bánh ngọt</a></li>
                            <li><a href="#">Trà</a></li> -->
                        </ul>
                    </div>
                    <div class="boxfooter searchbox">
                        <form action="index.php?act=sanpham" method="post">
                            <input type="text" name="kyw" placeholder="Từ khóa tìm kiếm">
                            <input type="submit" name="timkiem" value="Tìm kiếm">
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="boxtitle"><i class="fa-solid fa-star"></i>TOP 10 YÊU THÍCH</div>
                    <div class="row boxcontent">
                        <?php 
                            foreach($dstop10 as $sp){
                                extract($sp);
                                $linksp = "index.php?act=sanphamct&idsp=".$id;
                                $img = $img_path.$img;
                                echo '<div class="row mb10 top10">
                                        <a href="'.$linksp.'"><img src="'.$img.'" alt=""></a>
                                        <a href="'.$linksp.'">'.$name.'</a>
                                    </div>';
                            }
                        ?>
                        <!-- <div class="row mb10 top10">
                            <img src="images/phuclong1.png" alt="">
                            <a href="#">Nước ép cam</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="images/phuclong1.png" alt="">
                            <a href="#">Sinh tố bưởi</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="images/phuclong1.png" alt="">
                            <a href="#">Trà thảo mộc</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="images/phuclong1.png" alt="">
                            <a href="#">Nước ép xoài</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="images/phuclong1.png" alt="">
                            <a href="#">Sinh tố bơ</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="images/phuclong1.png" alt="">
                            <a href="#">Bánh ngọt Pháp</a>
                        </div> -->
                    </div>
                </div>