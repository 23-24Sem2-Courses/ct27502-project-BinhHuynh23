<?php
require_once '../bootstrap.php';
require_once 'function/format-money.php';

use CT275\Labs\Data;

$Data = new Data($PDO);

// Khởi động session
session_start();

// Xử lý yêu cầu thêm sản phẩm
if (isset($_POST['add_product'])) {
    // Kiểm tra dữ liệu đầu vào
    if (empty($_POST['product_name']) || empty($_POST['product_number']) || empty($_POST['product_price']) || empty($_POST['product_discount']) || empty($_POST['product_thumbnail']) || empty($_POST['product_id']) || empty($_POST['product_note'])) {
        echo '<script>alert("Vui lòng nhập đầy đủ thông tin sản phẩm!")</script>';
    } else {
        // Lấy thông tin sản phẩm từ form
        $productName = $_POST['product_name'];
        $productNumber = $_POST['product_number'];
        $productPrice = $_POST['product_price'];
        $productDiscount = $_POST['product_discount'];
        $productThumbnail = $_POST['product_thumbnail'];
        $productid = $_POST['product_id'];
        $productnote = $_POST['product_note'];

        // Thêm sản phẩm vào cơ sở dữ liệu
        $result = $Data->addProduct($productName, $productNumber, $productPrice, $productDiscount, $productThumbnail, $productid, $productnote);

        if ($result) {
            echo '<script>alert("Thêm sản phẩm thành công!")</script>';
        } else {
            echo '<script>alert("Thêm sản phẩm thất bại!")</script>';
        }
    }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TB Phone - admin</title>

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
    <script>
        function confirmDelete() {
            return confirm("Bạn có chắc chắn muốn xóa sản phẩm này?");
        }
    </script>
</head>

<body>
    <!-- Header và navigation của trang admin -->

    <div class="container">
        <h2 class="d-flex justify-content-center">Quản lý hàng hóa</h2>
        <h3>Thêm sản phẩm</h3>
        <!-- Biểu mẫu thêm sản phẩm -->
        <form method="POST">
            <input type="text" name="product_name" placeholder="Tên sản phẩm">
            <input type="text" name="product_price" placeholder="Giá">
            <input type="text" name="product_discount" placeholder="Giá khuyến mãi">
            <input type="number" name="product_id" placeholder="Nhập loại id hàng">
            <input type="text" name="product_note" placeholder="Nhập mô tả">
            <input type="number" name="product_number" placeholder="Nhập số lượng">
            <input type="file" name="product_thumbnail">
            <br>
            <button type="submit" name="add_product">Thêm sản phẩm</button>
        </form>

        <br>

        <!-- Hiển thị danh sách sản phẩm -->
        <h3>Danh sách sản phẩm</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Giá khuyến mãi</th>
                    <th>Số lượng</th>
                    <th>Loại hàng hóa</th>
                    <th>Mô tả</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Truy vấn cơ sở dữ liệu để lấy danh sách sản phẩm
                $products = $Data->all();

                // Hiển thị thông tin của từng sản phẩm
                foreach ($products as $product) {
                    echo '<tr>';
                    echo '<td>' . $product->getIDHangHoa() . '</td>';
                    echo '<td><img src="img/img-product/thumbnail/' . $product->Thumbnail . '" alt="' . $product->TenHangHoa . '" style="max-width: 100px;"></td>';
                    echo '<td>' . $product->TenHangHoa . '</td>';
                    echo '<td>' . $product->Gia . '</td>';
                    echo '<td>' . $product->KhuyenMai . '</td>';
                    echo '<td>' . $product->SoLuong . '</td>';
                    echo '<td>' . $product->IDLoaiHangHoa . '</td>';
                    echo '<td>' . $product->MoTa . '</td>';
                    echo '<td>';
                    echo '<a href="edit.php?id=' . $product->getIDHangHoa() . '">Sửa</a>';
                    echo '<br>';
                    echo '<a href="delete.php?id=' . $product->getIDHangHoa() . '" onclick="return confirmDelete()">Xóa</a>';
                    echo '</td>';
                    echo '</tr>';
                }
                ?>
            </tbody>
        </table>


    </div>



</body>

</html>