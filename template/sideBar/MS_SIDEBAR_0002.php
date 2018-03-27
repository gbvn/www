<?php 
    $list_newscat_all = $action_news->getListNewsCatAll($lang);//var_dump($list_newscat_all);die;
?>
<div class="uni-widget-category">
    <aside class="widget">
        <h3 class="widget-title">category</h3>
        <div class="uni-divider"></div>
        <div class="widget-content">
            <ul>
            <?php foreach ($list_newscat_all as $item) { ?>
                <li><a href="/<?= $item['friendly_url'] ?>"><i class="fa fa-angle-right" aria-hidden="true"></i> <?= $item['lang_newscat_name'] ?></a></li>
            <?php } ?>
                <!-- <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i> Lifestyle</a></li>
                <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i> Travel</a></li>
                <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i> Technology</a></li>
                <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i> Sport</a></li>
                <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i> Economy</a></li>
                <li><a href=""><i class="fa fa-angle-right" aria-hidden="true"></i>  Music</a></li> -->
            </ul>
        </div>
    </aside>
</div>