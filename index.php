<?php
//phpinfo();die;
session_start();
ob_start();
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$folder = dirname(__FILE__);
include_once('config.php');
include_once('__autoload.php');
$action = new action();
include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";
// $urlAnalytic = $action->showabc();    
include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";
include_once 'functions/phpmailer/class.smtp.php';
include_once 'functions/phpmailer/class.phpmailer.php';

// // LÀM RÕ NHỮNG THƯ VIỆN NÀY
// // include_once('lib/vi_en.php');
// // include_once('lib/nganLuong/NL_Checkoutv3.php');

// // LÀM RÕ Install Cart

// Install MultiLanguage
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";
// Install Friendly Url
include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";
// Configure Website
include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";

$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
$action = new action();
// $cart = new action_cart();
$menu = new action_menu();
$rowConfig = $action->getDetail('config','config_id',1);
?>

<!doctype html>
<html lang="en">
<head>
    <!-- start - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- cần cấu hình linh hoạt -->
    <meta name="description" content="<?= $meta_des ?>">
    <!-- cần cấu hình linh hoạt -->
    <meta name="keywords" content="<?= $meta_key ?>">
    <!-- cần cấu hình linh hoạt -->
    <title><?= $title ?></title>
    <!-- cần cấu hình linh hoạt -->
    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>
    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">
    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>
    <script src="/plugin/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="/css/style.css">
    <!-- end - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->


</head>

<body>
    <!--HEADER-->
    <?php include_once dirname(__FILE__).DIR_THEMES."header.php"; ?>

<!--CONTENT-->
<div class="gb-content">
<?php
    if (isset($_GET['page'])){
        
        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);    
        // echo $urlAnalytic;//die;
        switch ($urlAnalytic) {
        	case 'newscat_languages':
                include_once dirname(__FILE__).DIR_THEMES."newsCat.php"; break;
            case 'news_languages':               
                include_once dirname(__FILE__).DIR_THEMES."chitiet_tintuc.php"; break;
            case 'servicecat_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "dichvu.php";break;
            case 'service_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_dichvu.php";break;

    			
            case 'gioi-thieu':
            
                include_once dirname(__FILE__).DIR_THEMES."gioithieu.php"; break;

            case 'page_language':
                include_once dirname(__FILE__) . DIR_THEMES . "page.php";break;

            case 'tuyen-dung':
               
                include_once dirname(__FILE__).DIR_THEMES."tuyendung.php"; break;

            

            case 'chi-tiet-tuyen-dung':
               
                 include_once dirname(__FILE__).DIR_THEMES."chitiet_tuyendung.php"; break;

            

            

            case 'dichvu':
               
                 include_once dirname(__FILE__).DIR_THEMES."dichvu.php"; break;

            case 'chi-tiet-dich-vu':               
                 include_once dirname(__FILE__).DIR_THEMES."chitiet_dichvu.php"; break;

            

            case 'productcat_languages':              
                 include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'gio-hang':
               
                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;

             case 'thanh-toan':
           
                include_once dirname(__FILE__).DIR_THEMES."thanhtoan.php"; break;

             case 'xac-nhan-don-hang':
           
                include_once dirname(__FILE__).DIR_THEMES."xacnhandonhang.php"; break;

             case 'huy-don-hang':
           
                include_once dirname(__FILE__).DIR_THEMES."huydonhang.php"; break;

             case 'product_languages':
           
                include_once dirname(__FILE__).DIR_THEMES."chitiet_sanpham.php"; break;

             case 'lien-he-1':
           
                 include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

        }
    }
    else include_once dirname(__FILE__).DIR_THEMES."iconsbox.php";
    ?>
</div>



<!--FOOTER-->
<div class="gb-footer">
    <?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>
</div> 
<script type="text/javascript" src="/functions/language/lang.js"></script>
</body>

</html>