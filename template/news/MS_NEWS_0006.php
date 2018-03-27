<?php 
 $news_related = $action_news->getListNewsRelate_byIdCat_hasLimit($row['newscat_id'], 3);
?>
<div class="gb-relate-post">
    <h2 class="title-blog">Relate post</h2>
    <div class="gb-relate-post-body">
        <div class="row">
        <?php 
        foreach ($news_related as $item) { 
            $action_news1 = new action_news(); 
            $rowLang1 = $action_news1->getNewsLangDetail_byId($item['news_id'],$lang);
            $row1 = $action_news1->getNewsDetail_byId($item['news_id'],$lang);
        ?>
            <div class="col-md-4">
                <div class="grid-item">
                    <!--===========================================-->
                    <div class="blog-grid-item">
                        <article class="post type-post">
                            <div class="content-inner">
                                <div class="uni-entry-top">
                                    <div class="thumbnail-img">
                                        <a href="/<?= $rowLang1['friendly_url'] ?>" title="">
                                            <img src="/images/<?= $row1['news_img'] ?>" alt="" title="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>

                                <div class="uni-entry-body">
                                    <div class="uni-entry-content">

                                        <header class="uni-entry-header">
                                            <h2 class="uni-entry-title">
                                                <a href="/<?= $rowLang1['friendly_url'] ?>" rel=""><?= $rowLang1['lang_news_name'] ?></a>
                                            </h2>
                                        </header>

                                        <div class="uni-entry-meta">
                                                                <span class="uni-author">
                                                                    <a href="/<?= $rowLang1['friendly_url'] ?>" rel="author"><i class="fa fa-calendar" aria-hidden="true"></i> <?= substr($row1['news_created_date'], 0, 10) ?></a>
                                                                </span>
                                        </div>
                                        <div class="uni-entry-summary">
                                            <p<?= $rowLang1['lang_news_des'] ?>
                                                <span class="readmore"><a href="/<?= $rowLang1['friendly_url'] ?>">[ Read More ]</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
            <?php } ?>
            <!-- <div class="col-md-4">
                <div class="grid-item"> -->
                    <!--===========================================-->
                    <!-- <div class="blog-grid-item">
                        <article class="post type-post">
                            <div class="content-inner">
                                <div class="uni-entry-top">
                                    <div class="thumbnail-img">
                                        <a href="" title="">
                                            <img src="images/best-seller/4.jpg" alt="" title="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>

                                <div class="uni-entry-body">
                                    <div class="uni-entry-content">

                                        <header class="uni-entry-header">
                                            <h2 class="uni-entry-title">
                                                <a href="" rel="">This is a standard post with image</a>
                                            </h2>
                                        </header>

                                        <div class="uni-entry-meta">
                                                                <span class="uni-author">
                                                                    <a href="" rel="author"><i class="fa fa-calendar" aria-hidden="true"></i> june 21, 2017</a>
                                                                </span>
                                        </div>
                                        <div class="uni-entry-summary">
                                            <p>Pellentesque habitant morbi tristique senectus et netus et
                                                malesuada fames ac turpis egestas. Vesti bulum tortor quam vitae...
                                                <span class="readmore"><a href="">[ Read More ]</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="grid-item"> -->
                    <!--===========================================-->
                   <!--  <div class="blog-grid-item">
                        <article class="post type-post">
                            <div class="content-inner">
                                <div class="uni-entry-top">
                                    <div class="thumbnail-img">
                                        <a href="" title="">
                                            <img src="images/best-seller/3.jpg" alt="" title="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>

                                <div class="uni-entry-body">
                                    <div class="uni-entry-content">

                                        <header class="uni-entry-header">
                                            <h2 class="uni-entry-title">
                                                <a href="" rel="">This is a standard post with image</a>
                                            </h2>
                                        </header>

                                        <div class="uni-entry-meta">
                                                                <span class="uni-author">
                                                                    <a href="" rel="author"><i class="fa fa-calendar" aria-hidden="true"></i> june 21, 2017</a>
                                                                </span>
                                        </div>
                                        <div class="uni-entry-summary">
                                            <p>Pellentesque habitant morbi tristique senectus et netus et
                                                malesuada fames ac turpis egestas. Vesti bulum tortor quam vitae...
                                                <span class="readmore"><a href="">[ Read More ]</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>