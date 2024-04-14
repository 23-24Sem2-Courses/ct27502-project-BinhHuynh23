<?php
require_once '../bootstrap.php';
require_once 'function/format-money.php';

use CT275\Labs\Data;

$Data = new Data($PDO);

session_start();

// Kiểm tra xem ID sản phẩm đã được truyền qua tham số URL hay không
if (!isset($_GET['id'])) {
    echo '<script>alert("Không tìm thấy ID sản phẩm!");</script>';
    exit;
}

$id = $_GET['id'];

// Xử lý yêu cầu chỉnh sửa thông tin sản phẩm
if (isset($_POST['edit_product'])) {
    // Lấy thông tin sản phẩm từ form
    $productName = $_POST['product_name'];
    $productPrice = $_POST['product_price'];
    $productDiscount = $_POST['product_discount'];
    $productid = $_POST['product_id'];
    $productnote = $_POST['product_note'];
    $productimg = $_POST['product_img'];

    // Thực hiện cập nhật thông tin sản phẩm trong cơ sở dữ liệu
    $result = $Data->updateProduct($id, $productName, $productPrice, $productDiscount, $productid, $productnote, $productimg);

    if ($result) {
        echo '<script>alert("Cập nhật thông tin sản phẩm thành công!");</script>';
        // Sau khi cập nhật, chuyển hướng về trang danh sách sản phẩm
        echo '<script>window.location.href = "admin.php";</script>';
        exit; // Kết thúc kịch bản sau khi chuyển hướng
    } else {
        echo '<script>alert("Cập nhật thông tin sản phẩm thất bại!");</script>';
    }
}

// Lấy thông tin sản phẩm từ cơ sở dữ liệu để hiển thị trên biểu mẫu
$product = $Data->selectOne($id);

// Kiểm tra xem sản phẩm có tồn tại không
if (!$product) {
    echo '<script>alert("Không tìm thấy sản phẩm!");</script>';
    exit; // Kết thúc kịch bản nếu không tìm thấy sản phẩm
}

$product = $product[0];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sửa sản phẩm</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <h2 class="text-center">Sửa sản phẩm</h2>
        <!-- Biểu mẫu chỉnh sửa sản phẩm -->
        <form method="POST">
            <div class="form-group">
                <label for="product_name">Tên sản phẩm:</label>
                <input type="text" class="form-control" id="product_name" name="product_name" value="<?php echo $product->TenHangHoa; ?>" required>
            </div>
            <div class="form-group">
                <label for="product_price">Giá:</label>
                <input type="text" class="form-control" id="product_price" name="product_price" value="<?php echo $product->Gia; ?>" required>
            </div>
            <div class="form-group">
                <label for="product_discount">Giá khuyến mãi:</label>
                <input type="text" class="form-control" id="product_discount" name="product_discount" value="<?php echo $product->KhuyenMai; ?>">
            </div>
            <div class="form-group">
                <label for="product_id">Loại id hàng:</label>
                <input type="number" class="form-control" id="product_id" name="product_id" value="<?php echo $product->IDLoaiHangHoa; ?>" required>
            </div>
            <div class="form-group">
                <label for="product_note">Mô tả:</label>
                <textarea class="form-control" id="product_note" name="product_note" rows="5"><?php echo $product->MoTa; ?></textarea>
            </div>
            <div class="form-group">
                <label for="product_img">Hình ảnh:</label>
                <?php echo '<img src="img/img-product/thumbnail/' . $product->Thumbnail . '" alt="' . $product->TenHangHoa . '" style="max-width: 100px;">' ?>
                <input type="file" name="product_img" id="product_img">
            </div>
            <input type="hidden" name="product_id" value="<?php echo $product->IDLoaiHangHoa; ?>">
            <button type="submit" name="edit_product" class="btn btn-primary">Lưu</button>
        </form>
    </div>
</body>

</html>