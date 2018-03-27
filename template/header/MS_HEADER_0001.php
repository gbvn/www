

<header>
    <div class="gb-top-header">
        <div class="container">
            <ul>
                <li>
                    <?php include_once DIR_LANGUAGE."MS_LANGUAGE_0001.php";?>
                </li>
                <li>
                    <?php include_once DIR_CART."MS_CART_0001.php";?>
                </li>
            </ul>
        </div>
    </div>
    <div class="gb-header sticky-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="gb-logo">
                        <h1><a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a></h1>
                    </div>
                </div>
                <div class="col-md-10">
                    <!--MENU TEXT-->
                    <?php include_once DIR_MENU."MS_MENU_0001.php";?>
                </div>
            </div>
        </div>
    </div>
</header>