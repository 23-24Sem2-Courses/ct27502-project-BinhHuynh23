<?php
require_once '../bootstrap.php';
require_once 'function/format-money.php';

use CT275\Labs\Data;

$Data = new Data($PDO);
$Datas = $Data->all();

if (session_id() === '')
    session_start();

if (isset($_GET['name'])) {
    $name = $_GET['name'];
}

$sql = 'select * from hanghoa where TenHangHoa like "%' . $name . '%"';
$sql1 = 'select * from hanghoa ORDER BY RAND () limit 8';

$conn = new mysqli("localhost", "root", "", "CT275_btlon");
mysqli_set_charset($conn, "utf8");

$tong = 0;
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_array($result, 1)) {
    $tong++;
}

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


    <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="//cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="css/basic.css" rel=" stylesheet">
    <link href="css/font-awesome.min.css" rel=" stylesheet">
    <link href="css/animate.css" rel=" stylesheet">
    <style>
        body {

            font-family: 'Quicksand', sans-serif;
        }
    </style>
</head>

<body>
    <?php include('../partials/navbar.php') ?>
    <?php include('../partials/nav.php') ?>

    <!-- Breadcrumb -- START  -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb mb-1 p-2 pl-3">
            <li class="breadcrumb-item " aria-current="page">
                <a href="index.php">
                    <i class="fa fa-home" aria-hidden="true"></i>
                    Home
                </a>
            </li>
            <li class="breadcrumb-item " aria-current="page">
                <a href="search.php" class="active text-dark">
                    Tìm Kiếm
                </a>
            </li>
        </ol>
    </nav>
    <!-- Breadcrumb -- END -->

    <!-- List Product -- START -->
    <div class=" mb-1">
        <div class=" bg-dark rounded">
            <h5 class="ml-auto text-white px-0 pt-2">KẾT QUẢ TÌM KIẾM: <?= $tong ?> sản phẩm phù hợp</h5>
            <div class="row py-1 px-2">
                <?php
                if ($tong > 0 && $name != '') {
                    $result = mysqli_query($conn, $sql);
                    for ($i = 0; $i < $tong; $i++) {
                        $item = mysqli_fetch_array($result, 1);

                        echo '
                            <div class="col-12 col-sm-6 col-md-3 card p-0 hover-product" style="width: 18rem;">
                                <a href="product-detail.php?idhh=' . $item['IDHangHoa'] . '" class="a-product text-center">
                                    <img class="card-img-top mx-auto image-top-product object-fit-contain w-100 pt-4" src="img/img-product/thumbnail/' . $item['Thumbnail'] . '" alt="Card image cap">
                                    <hr class="mt-4" />
                                    <div class="card-body pt-0 mb-5">
                                        <div class="text-center">
                                            <span class="text-name-product p-0">
                                                ' . $item['TenHangHoa'] . '
                                            </span>
                                            <br />
                                            <p class="text-warning my-1">
                                                <i class="fa fa-star " aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                            </p>
                                            <small class="text-price-old text-muted">' . $item['Gia'] . '</small>
                                            <p class="text-price-new">' . $item['KhuyenMai'] . '</p>
                                        </div>
                                    </div>
                                </a>
                            </div>';
                    }
                } else {
                    echo '<div class="bg-white rounded p-2" style="min-height: 580px; width: 100%">
                            <h4 align="center" class="mt-4">Không tìm thấy sản phẩm phù hơp.</h4>
                            <hr />
                            <h5 class="text-primary"><b>Các Sản Phẩm Khác:</b></h5>
                            <div class="row py-1 px-2">
                            ';

                    $result = mysqli_query($conn, $sql1);
                    foreach ($result as $item) {
                        echo '
                                <div class="col-12 col-sm-6 col-md-3 card p-0 hover-product" style="width: 18rem;">
                                    <a href="product-detail.php?idhh=' . $item['IDHangHoa'] . '" class="a-product text-center">
                                        <img class="card-img-top mx-auto image-top-product object-fit-contain w-100 pt-4" src="img/img-product/thumbnail/' . $item['Thumbnail'] . '" alt="Card image cap">
                                        <hr class="mt-4" />
                                        <div class="card-body pt-0 mb-5">
                                            <div class="text-center">
                                                <span class="text-name-product p-0">
                                                    ' . $item['TenHangHoa'] . '
                                                </span>
                                                <br />
                                                <p class="text-warning my-1">
                                                    <i class="fa fa-star " aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                </p>
                                                <small class="text-price-old text-muted">' . $item['Gia'] . '</small>
                                                <p class="text-price-new">' . $item['KhuyenMai'] . '</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            ';
                    }


                    echo '</div>
                        </div>
                            ';
                }
                ?>
            </div>
        </div>
    </div>
    <!-- List Product -- END -->



    <?php include('../partials/footer.php') ?>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/checkInput.js"></script>
</body>

</html>