<?php
require_once '../bootstrap.php';

use CT275\Labs\Data;

$Data = new Data($PDO);

// Kiểm tra xem ID sản phẩm được truyền từ URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Thực hiện xóa sản phẩm từ cơ sở dữ liệu
    $result = $Data->deleteProduct($id);

    if ($result) {
        // Nếu xóa thành công, chuyển hướng người dùng đến trang danh sách sản phẩm
        header("Location: admin.php");
        exit();
    } else {
        // Nếu xóa thất bại, hiển thị thông báo lỗi
        echo '<script>alert("Xóa sản phẩm thất bại!")</script>';
    }
}
