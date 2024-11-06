<div class="row mb ">
            <div class="boxtrai mr">
                <div class="row">
                    <div class="banner mb">
                        <!-- Slideshow container -->
                        <div class="slideshow-container">

                        <!-- Full-width images with number and caption text -->
                        <div class="mySlides fade">
                        <!-- <div class="numbertext">1 / 3</div> -->
                        <img src="view/images/banner8.jpg" style="width:100%">
                        <!-- <div class="text">Caption Text</div> -->
                        </div>

                        <div class="mySlides fade">
                        <!-- <div class="numbertext">2 / 3</div> -->
                        <img src="view/images/banner2.jpg" style="width:100%">
                        <!-- <div class="text">Caption Two</div> -->
                        </div>

                        <div class="mySlides fade">
                        <!-- <div class="numbertext">3 / 3</div> -->
                        <img src="view/images/banner3.jpg" style="width:100%">
                        <!-- <div class="text">Caption Three</div> -->
                        </div>

                        <div class="mySlides fade">
                        <!-- <div class="numbertext">4 / 3</div> -->
                        <img src="view/images/banner6.jpg" style="width:100%">
                        <!-- <div class="text">Caption Three</div> -->
                        </div>

                        <div class="mySlides fade">
                        <!-- <div class="numbertext">4 / 3</div> -->
                        <img src="view/images/banner10.jpg" style="width:100%">
                        <!-- <div class="text">Caption Three</div> -->
                        </div>

                        <div class="mySlides fade">
                        <!-- <div class="numbertext">4 / 3</div> -->
                        <img src="view/images/banner9.jpg" style="width:100%">
                        <!-- <div class="text">Caption Three</div> -->
                        </div>

                        <!-- Next and previous buttons -->
                        <!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a> -->
                        </div>
                        <br>

                        <!-- The dots/circles -->
                        <div style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
                        <span class="dot" onclick="currentSlide(4)"></span>
                        <span class="dot" onclick="currentSlide(5)"></span>
                        <span class="dot" onclick="currentSlide(6)"></span>
                        </div>
                        <div style="margin-top: 10px; font-size: 25px; font-weight: bold; color: #084e2d;"><i class="fa-solid fa-caret-down" style="margin-right: 5px; font-size: 25px;"></i>SẢN PHẨM MỚI NHẤT</div>
                    </div>
                </div>
                <div class="row">
                    <?php
                        $i = 0;
                        foreach ($spnew as $sp){
                            extract($sp);
                            $linksp = "index.php?act=sanphamct&idsp=".$id;
                            $hinh = $img_path.$img;
                            if(($i==2)||($i==5)||($i==8)){
                                $mr = "";
                            }else{
                                $mr = "mr";
                            }
                            echo '<div class="boxsp '.$mr.'">
                                        <div class="row img"><a href="'.$linksp.'"><img src="'.$hinh.'" alt=""></a></div>                      
                                        <p>'.$price.' vnđ</p>
                                        <a href="'.$linksp.'">'.$name.'</a>
                                        <div class="row btnaddtocart">
                                            <form action="index.php?act=addtocart" method="post">
                                                <input type="hidden" name="id" value="'.$id.'">
                                                <input type="hidden" name="name" value="'.$name.'">
                                                <input type="hidden" name="img" value="'.$img.'">
                                                <input type="hidden" name="price" value="'.$price.'">
                                                <input type="submit" name="addtocart" value="Thêm vào giỏ hàng" class="btn-add-to-cart">
                                            </form>
                                        </div>
                                    </div>';
                            $i+=1;
                        }
                    ?>
                    <!-- <div class="boxsp mr">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div>
                    <div class="boxsp">
                        <div class="row img"><img src="images/phuclong1.png" alt=""></div>                      
                        <p>$30</p>
                        <a href="#">Phúc long 1</a>
                    </div> -->
                </div>
            </div>
            <div class="boxphai">
                <?php include "boxright.php";?>
            </div>
        </div>