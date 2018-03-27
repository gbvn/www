<?php 
    $product_related1 = $action_product->getListProductRelate_byIdCat_hasLimit($row['productcat_id'], 3);//var_dump($product_related1);die;
?>
<div class="gb-sanphamlienquan">

    <div class="title">
        <h3>SẢN PHẨM LIÊN QUAN</h3>
    </div>

    <div class="row">
        <?php 
        foreach ($product_related1 as $row) { 
            $action_product1 = new action_product(); 
            $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
            $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
        ?>
        <div class="col-md-4">
            <div class="product-item">
                <ul class="category-product">
                    <li>
                        <div class="wrapper">
                            <div class="feature-image">
                                <a href="/<?= $rowLang1['friendly_url'] ?>"><img class="wp-post-image img-responsive" src="/images/<?= $row1['product_img'] ?>" alt="<?= $rowLang1['lang_product_name'] ?>"></a>
                            </div>
                            <!-- .feature-image -->

                            <div class="stats">
                                <div class="box-title">
                                    <h2 class="title-product">
                                        <a href="/<?= $rowLang1['friendly_url'] ?>" class="product_name"><?= $rowLang1['lang_product_name'] ?></a>
                                    </h2>
                                    <!-- .title-product -->
                                </div>
                                <!-- .box-title -->
                                <div class="price-add-cart">
                                    <div class="vote-star">
                                        <ul>
                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                            <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                        </ul>
                                    </div>
                                    <div class="box-price">
                                        <span class="price-sale">$ <?= number_format($row1['product_price']) ?></span>
                                    </div>

                                    <div class="box-add">
                                        <a href="">Add to cart</a>
                                    </div>
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