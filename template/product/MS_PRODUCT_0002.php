<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];

        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,9,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,9,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';//var_dump($rows);die;
?>  
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>
<div class="uni-shop-siderbar-right">

    <?php include_once DIR_SEARCH.'MS_SEARCH_0004.php' ;?>


    <!-- .product item -->
    <div class="category-product uni-product-wapper">
        <input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
        <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
        <div class="row">
            <?php 
            foreach ($rows['data'] as $row) {
                $action_product1 = new action_product(); 
                $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
            ?>
            <div class="col-md-4 col-sm-6">
                <div class="product-item">
                    <ul class="category-product">
                        <li>
                            <div class="wrapper">
                                <div class="feature-image">
                                    <a href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>"><img class="wp-post-image img-responsive" src="/images/<?= $row1['product_img'] ?>" alt=""></a>
                                    <?php include DIR_PRODUCT."MS_PRODUCT_0009.php";?>
                                </div>
                                <!-- .feature-image -->

                                <div class="stats">
                                    <div class="box-title">
                                        <h2 class="title-product">
                                            <a href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>" class="product_name"><?= $rowLang1[$nameColLangProductName_productLanguage] ?></a>
                                        </h2>
                                        <!-- .title-product -->
                                    </div>
                                    <!-- .box-title -->
                                    <div class="price-add-cart">
                                       
                                        <?php include DIR_PRODUCT."MS_PRODUCT_0008.php";?>

                                        <?php include DIR_PRODUCT."MS_PRODUCT_0007.php";?>
                                        
                                        <?php include DIR_CART."MS_CART_0008.php";?>
                                        
                                        <div class="clearfix"></div>
                                    </div>
                                    <!-- .box-price -->
                                </div>
                                <!-- .stats -->
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
    <!-- <div><?= $rows['paging'] ?></div> -->


    <!--PAGINATION-->
    <?php include_once DIR_PAGINATION.'MS_PAGINATION_0001.php';?>

    <div class="clearfix"></div>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           // document.getElementById("demo").innerHTML = this.responseText;
           // alert(this.responseText);
           // alert('thanh cong.');
           window.location.href = "/gio-hang";
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>