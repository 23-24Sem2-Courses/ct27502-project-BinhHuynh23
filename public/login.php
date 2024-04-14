<?php
session_start();

use CT275\Labs\Data;

require_once '../bootstrap.php';
$Data = new Data($PDO);
$Datas = $Data->selectKhachHang();

// $Data = new Data($PDO);
if (isset($_POST['login'])) {
    $email      = $_POST['email'];
    $matkhau    = $_POST['matkhau'];
    $url = $_SERVER['HTTP_REFERER'];
    $checkLogin = 0;

    foreach ($Datas as $Data) {
        if ($email == 'admin@example.com' && $matkhau == '1234') {
            $_SESSION['user'] = 'admin';
            echo '<script>if(confirm("Đăng nhập thành công vào admin"))';
            header("Location: admin.php");
            exit;
        }
        if ($Data->Email == $email && $Data->MatKhau == $matkhau) {
            $_SESSION['user'] = $Data->HoTenKH;
            echo '<script>if(confirm("Đăng nhập thành công"))';
            echo "{document.location = '$url'};</script>";
            $checkLogin = 1;
        }
    }
    if ($checkLogin == 0) {
        echo '<script>alert("Sai tài khoản hoặc mật khẩu! Đăng nhập thất bại!")</script>';
        echo "<script>document.location = '$url'</script>";
    }
}
