<?php 
    $product_related2 = $action_product->getListProductRelate_byIdCat_hasLimit($row['productcat_id'], 5);//var_dump($product_related1);die;
?>
<div class="gb-sanphamlienquan-sidebar">
    <div class="sanpham-title">
        <h3>SẢN Phẩm liên quan</h3>
    </div>
    <?php 
    foreach ($product_related2 as $row) { 
        $action_product2 = new action_product(); 
        $rowLang2 = $action_product2->getProductLangDetail_byId($row['product_id'],$lang);
        $row2 = $action_product2->getProductDetail_byId($row['product_id'],$lang); 
    ?>
    <div class="vk-newlist-details-newlist1 vk-book-details">
        <div class="vk-best-seller-img">
            <a href="/<?= $rowLang2['friendly_url'] ?>"><img src="/images/<?= $row2['product_img'] ?>" alt="review" class="img-responsive"></a>
        </div>
        <div class="vk-best-seller-info">
            <h4><a href="/<?= $rowLang2['friendly_url'] ?>"><?= $rowLang2['lang_product_name'] ?></a></h4>
            <ul>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
            </ul>
            <div class="prices">
                <p class="percent-sale">-<?= $row2['product_price_sale'] ?>%</p>
                <p class="price-old-sale">
                    <span class="price-old">$ <?= number_format($row2['product_price']) ?></span>
                    <span class="price-sale">$ 25.00</span>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <?php } ?>
    <!-- <div class="vk-newlist-details-newlist1 vk-book-details">
        <div class="vk-best-seller-img">
            <a href=""><img src="images/shop/img.png" alt="review" class="img-responsive"></a>
        </div>
        <div class="vk-best-seller-info">
            <h4><a href="">Redufluxes</a></h4>
            <ul>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
            </ul>
            <div class="prices">
                <p class="percent-sale">-10%</p>
                <p class="price-old-sale">
                    <span class="price-old">$ 26.00</span>
                    <span class="price-sale">$ 25.00</span>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="vk-newlist-details-newlist1 vk-book-details">
        <div class="vk-best-seller-img">
            <a href=""><img src="images/shop/img-1.png" alt="review" class="img-responsive"></a>
        </div>
        <div class="vk-best-seller-info">
            <h4><a href="">Redufluxes</a></h4>
            <ul>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
            </ul>
            <div class="prices">
                <p class="percent-sale">-10%</p>
                <p class="price-old-sale">
                    <span class="price-old">$ 26.00</span>
                    <span class="price-sale">$ 25.00</span>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="vk-newlist-details-newlist1 vk-book-details">
        <div class="vk-best-seller-img">
            <a href=""><img src="images/shop/img-2.png" alt="review" class="img-responsive"></a>
        </div>
        <div class="vk-best-seller-info">
            <h4><a href="">Redufluxes</a></h4>
            <ul>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
            </ul>
            <div class="prices">
                <p class="percent-sale">-10%</p>
                <p class="price-old-sale">
                    <span class="price-old">$ 26.00</span>
                    <span class="price-sale">$ 25.00</span>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="vk-newlist-details-newlist1 vk-book-details">
        <div class="vk-best-seller-img">
            <a href=""><img src="images/shop/img-3.png" alt="review" class="img-responsive"></a>
        </div>
        <div class="vk-best-seller-info">
            <h4><a href="">Redufluxes</a></h4>
            <ul>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
            </ul>
            <div class="prices">
                <p class="percent-sale">-10%</p>
                <p class="price-old-sale">
                    <span class="price-old">$ 26.00</span>
                    <span class="price-sale">$ 25.00</span>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="vk-newlist-details-newlist1 vk-book-details">
        <div class="vk-best-seller-img">
            <a href=""><img src="images/shop/img-4.png" alt="review" class="img-responsive"></a>
        </div>
        <div class="vk-best-seller-info">
            <h4><a href="">Redufluxes</a></h4>
            <ul>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
            </ul>
            <div class="prices">
                <p class="percent-sale">-10%</p>
                <p class="price-old-sale">
                    <span class="price-old">$ 26.00</span>
                    <span class="price-sale">$ 25.00</span>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div> -->
</div>