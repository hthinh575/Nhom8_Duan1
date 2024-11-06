<div class="row mb ">
    <div class="boxtrai mr">
        <div class="row">
            
        <div class="boxtitle"><i class="fa-brands fa-readme" style="margin-right: 10px"></i>SẢN PHẨM <strong><?=$tendm?></strong></div>
        <div class="row boxcontent">
            <?php 
                $i = 0;
                foreach ($dssp as $sp){
                    extract($sp);
                    $linksp = "index.php?act=sanphamct&idsp=".$id;
                    $hinh = $img_path.$img;
                    if(($i==2)||($i==5)||($i==8)||($i==11)||($i==14)||($i==17)||($i==20)||($i==23)||($i==26)||($i==29)||($i==32)||($i==35)||($i==38)||($i==41)||($i==44)||($i==47)||($i==50)){
                        $mr = "";
                    }else{
                        $mr = "mr";
                    }
                    echo '<div class="boxsp '.$mr.'">
                                <div class="row img"><a href="'.$linksp.'"><img src="'.$hinh.'" alt=""></a></div>                      
                                <p>'.$price.' vnđ</p>
                                <a href="'.$linksp.'">'.$name.'</a>
                            </div>';
                    $i+=1;
                }

            ?>
        </div>
    </div>
    
    
                
    </div>
    <div class="boxphai">
        <?php include "boxright.php";?>
    </div>
</div>