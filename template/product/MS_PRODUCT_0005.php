
<div class="prices">
    <p class="percent-sale">-<?= $row['product_price_sale'] ?>%</p>
    <span class="price-old">$ <?= number_format($row['product_price']) ?></span>
    <span class="price-sale">$ <?= number_format($row['product_price']-($row['product_price']*($row['product_price_sale']/100))) ?></span>
</div>