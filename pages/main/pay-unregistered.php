<?php
session_start();

use Carbon\Carbon;

require '../../vendor/autoload.php';
include '../../admin/config/config.php';

$now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

if (isset($_POST['order'])) {
    $hoten = mysqli_real_escape_string($mysqli, $_POST['ten']);
    $diachi = mysqli_real_escape_string($mysqli, $_POST['diachi']);
    $email = mysqli_real_escape_string($mysqli, $_POST['email']);
    $sdt = mysqli_real_escape_string($mysqli, $_POST['sdt']);
    $noidung = mysqli_real_escape_string($mysqli, $_POST['noidung']);
    $code_order = rand(0, 9999);

    // Insert unregistered cart
    $insert_cart_unregistered = "
        INSERT INTO tbl_cart_unregistered (tenkh, diachi, sdt, email, noidung, code_cart, cart_status, cart_date) 
        VALUES (?, ?, ?, ?, ?, ?, 1, ?)
    ";
    $stmt = $mysqli->prepare($insert_cart_unregistered);
    $stmt->bind_param('sssssis', $hoten, $diachi, $sdt, $email, $noidung, $code_order, $now);
    $cart_query_unregistered = $stmt->execute();

    if ($cart_query_unregistered) {
        // Insert order details
        foreach ($_SESSION['cart'] as $item) {
            $id_sanpham = $item['id'];
            $soluong = $item['soluong'];

            $insert_order_details = "
                INSERT INTO tbl_cart_details (id_sp, code_cart, soluongmua) 
                VALUES (?, ?, ?)
            ";
            $details_stmt = $mysqli->prepare($insert_order_details);
            $details_stmt->bind_param('isi', $id_sanpham, $code_order, $soluong);
            $details_stmt->execute();
        }
    }

    // Clear cart
    unset($_SESSION['cart']);
    header('Location: ../../index.php?quanly=camon');
    exit();
}
?>
