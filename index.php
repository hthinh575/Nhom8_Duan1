<?php 
    session_start();
    include "model/pdo.php";
    include "model/danhmuc.php";
    include "model/sanpham.php";
    include "model/taikhoan.php";
    include "model/cart.php";
    include "view/header.php";
    include "globel.php";

    if(!isset($_SESSION['mycart'])) $_SESSION['mycart']=[];

    $spnew = loadall_sanpham_home();
    $dsdm = loadall_danhmuc();
    $dstop10 = loadall_sanpham_top10();


    if((isset($_GET['act']))&&($_GET['act']!="")){
        $act = $_GET['act'];
        switch ($act){
            case 'sanpham':
                if(isset($_POST['kyw'])&&($_POST['kyw']!="")){
                    $kyw = $_POST['kyw'];
                }else{
                    $kyw = "";
                }
                if(isset($_GET['iddm'])&&($_GET['iddm']>0)){
                    $iddm = $_GET['iddm'];
                    
                }else{
                    $iddm = 0;
                }
                $dssp = loadall_sanpham($kyw, $iddm);
                $tendm = load_ten_dm($iddm);
                include "view/sanpham.php";
                break;
            case 'sanphamct':
                
                if(isset($_GET['idsp'])&&($_GET['idsp']>0)){
                    $id = $_GET['idsp'];
                    $onesp = loadone_sanpham($id);
                    extract($onesp);
                    $sp_cung_loai = load_sanpham_cungloai($id, $iddm);
                    include "view/sanphamct.php";
                }else{
                    include "view/home.php";
                }
                
                break;
            case 'dangky':
                if(isset($_POST['dangky'])&&($_POST['dangky'])){
                    $email = $_POST['email'];
                    $user = $_POST['user'];
                    $pass = $_POST['pass'];
                        
                    // Kiểm tra email
                    if (!filter_var($email, FILTER_VALIDATE_EMAIL) || !strpos($email, '@gmail.com')) {
                        $thongbao = "Email không hợp lệ. Vui lòng nhập email với đuôi @gmail.com!";
                    } 
                    // Kiểm tra tên người dùng
                    elseif (empty($user)) {
                        $thongbao = "Tên người dùng không được để trống!";
                    }
                    // Kiểm tra độ dài mật khẩu
                    elseif (strlen($pass) < 6) {
                        $thongbao = "Mật khẩu phải có ít nhất 6 ký tự!";
                    } 
                    // Nếu tất cả kiểm tra đều đạt
                    else {
                        insert_taikhoan($email, $user, $pass);
                        $thongbao = "Đã đăng ký thành công. Vui lòng đăng nhập!";
                    }
                }
                include "view/taikhoan/dangky.php";
                break;
            case 'dangnhap':
                if(isset($_POST['dangnhap'])&&($_POST['dangnhap'])){
                    $user = $_POST['user'];                        
                    $pass = $_POST['pass'];
                    $checkuser = checkuser($user, $pass);
                    if(is_array($checkuser)){  
                        $_SESSION['user'] = $checkuser;
                        //$thongbao = "Đăng nhập thành công!";
                        header('Location: index.php');            
                        
                    }else{
                        $thongbao = "Tài khoản không tồn tại. Vui lòng kiểm tra hoặc đăng ký!";
                    }
                }
                include "view/taikhoan/dangky.php";
                break;
            case 'edit_taikhoan':
                if(isset($_POST['capnhat'])&&($_POST['capnhat'])){
                    $user = $_POST['user'];                        
                    $pass = $_POST['pass'];
                    $email = $_POST['email'];
                    $address = $_POST['address'];
                    $tel = $_POST['tel'];
                    $id = $_POST['id'];

                    update_taikhoan($id, $user, $pass, $email, $address, $tel); 
                    $_SESSION['user'] = checkuser($user, $pass);
                    header('Location: index.php?act=edit_taikhoan');                
                }
                include "view/taikhoan/edit_taikhoan.php";
                break;
            case 'quenmk':
                if (isset($_POST['guiemail']) && $_POST['guiemail']) {
                    $email = $_POST['email'];
                
                    // Kiểm tra email hợp lệ và có đuôi @gmail.com
                    if (strpos($email, '@') === false || substr($email, -10) !== '@gmail.com') {
                        $thongbao = "Email không hợp lệ. Vui lòng nhập email với đuôi @gmail.com!";
                    } else {
                        $checkemail = checkemail($email);
                        if (is_array($checkemail)) {
                            $thongbao = "Mật khẩu của bạn là: " . $checkemail['pass'];
                        } else {
                            $thongbao = "Email không tồn tại!";
                        }
                    }
                }
                include "view/taikhoan/quenmk.php";
                break;
                
            case 'thoat':
                session_unset();
                header('Location: index.php');
                break;
            case 'addtocart':
                //add thông tin từ sp từ cái form addtocart đến session
                if(isset($_POST['addtocart'])&&($_POST['addtocart'])){
                    $id = $_POST['id'];
                    $name = $_POST['name'];
                    $img = $_POST['img'];
                    $price = $_POST['price'];
                    $soluong = 1;
                    $ttien = $soluong * $price;
                    $spadd = [$id,$name,$img,$price,$soluong,$ttien];
                    array_push($_SESSION['mycart'],$spadd);
                    
                }
                include "view/cart/viewcart.php";
                break;
            case 'delcart':
                if(isset($_GET['idcart'])){
                    array_splice($_SESSION['mycart'],$_GET['idcart'],1);
                    //array_splice(mảng, vị trí cần xóa, xóa bnh phần tử)
                }else{
                    $_SESSION['mycart'] = [];
                }
                // include "view/gioithieu.php";
                header('Location: index.php?act=viewcart');
                break;
            case 'viewcart':
                include "view/cart/viewcart.php";
                break;
            case 'bill':
                include "view/cart/bill.php";
                break;
            case 'billcomfirm':
                //tạo bill
                if(isset($_POST['dongydathang'])&&($_POST['dongydathang'])){
                    if(isset($_SESSION['user'])) $iduser=$_SESSION['user']['id'];
                    else $id=0;
                    $name = $_POST['name'];
                    $email = $_POST['email'];
                    $address = $_POST['address'];
                    $tel = $_POST['tel'];
                    $pttt = $_POST['pttt'];
                    $ngaydathang = date('h:i:sa d/m/y');
                    $tongdonhang = tongdonhang();

                    $idbill = insert_bill($iduser, $name, $email, $address, $tel, $pttt, $ngaydathang, $tongdonhang);

                    //insert into cart : $session['mycart'] & idbill
                    foreach($_SESSION['mycart'] as $cart){
                        insert_cart($_SESSION['user']['id'], $cart[0], $cart[2], $cart[1],$cart[3], $cart[4], $cart[5], $idbill);
                    }
                    //xóa session cart
                    $_SESSION['cart'] = [];

                }
                $bill = loadone_bill($idbill);
                $billct = loadall_cart($idbill);
                include "view/cart/billcomfirm.php";
                break;
            case 'mybill':
                $listbill = loadall_bill($_SESSION['user']['id']);
                include "view/cart/mybill.php";
                break;
            case 'gioithieu':
                include "view/gioithieu.php";
                break;
            case 'lienhe':
                include "view/lienhe.php";
                break;
            case 'gopy':
                include "view/gopy.php";
                break;
            case 'hoidap':
                include "view/hoidap.php";
                break;
            default:
                include "view/home.php";
                break;
            }
        }else{
            include "view/home.php";
    }
    include "view/footer.php";
?>