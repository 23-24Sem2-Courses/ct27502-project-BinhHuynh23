<?php
require_once '../bootstrap.php';
require_once 'function/format-money.php';

use CT275\Labs\Data;

$Data = new Data($PDO);
$Datas = $Data->all();

if (session_id() === '')
    session_start();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TB Phone</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link href="css/basic.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
        }
    </style>
</head>

<body>
    <?php include('../partials/navbar.php') ?>
    <?php include('../partials/nav.php') ?>
    <?php include('../partials/slider.php') ?>
    <!-- List Product -- START -->

    <div class="row">
        <div class="col-12">
            <div class="bg-dark p-2 rounded-top">
                <h5 class="m-0 p-0 text-white text-center text-md-left">Danh Sách Sản Phẩm</h5>
            </div>
        </div>
    </div>


    <div id="show_list_product" class=" mb-1 px-md-3 py-1">
        <div class=" bg-change rounded px-4 px-md-2 py-0">
            <div class="row padding-change">
                <?php foreach ($Datas as $Data) : ?>
                    <div class="col-12 col-sm-6 col-md-3 card p-0 hover-product rounded" style="width: 18rem;">
                        <a class="a-product text-center" href="product-detail.php?idhh=<?php echo $Data->getIDHangHoa() ?>">
                            <img class="card-img-top mx-auto image-top-product object-fit-contain w-100 pt-4" src="img/img-product/thumbnail/<?php echo $Data->Thumbnail ?>" alt="Card image cap">
                            <hr class="mt-4" />
                            <div class="card-body pt-0 mb-5">
                                <div class="text-center">
                                    <span class="text-name-product py-0 px-2">
                                        <?php echo $Data->TenHangHoa; ?>
                                    </span>
                                    <br />
                                    <p class="text-warning my-1">
                                        <i class="fa fa-star " aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                    </p>
                                    <small class="text-price-old text-muted">
                                        <?php echo money_format($Data->Gia)  ?>
                                    </small>
                                    <p class="text-price-new">
                                        <?php echo money_format($Data->KhuyenMai)  ?>
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
    <!-- List Product -- END -->



    <?php include('../partials/footer.php') ?>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/checkInput.js"></script>
</body>

</html>