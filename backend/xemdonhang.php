<?php
include "connect.php";
$iduser = $_POST['iduser'];

$query = 'SELECT * FROM `donhang` WHERE `iduser`= ' .$iduser;
$data = mysqli_query($conn, $query);
$result = array();
while ($row = mysqli_fetch_assoc($data)) {
    
    $truyvan = 'SELECT * FROM `chitietdonhang` WHERE `iddonhang`= ' .$iduser;
    $data1 = mysqli_query($conn, $truyvan);

    $result[] = ($row);
}
if (!empty($result)) {
    $arr = [
        'success' => true,
        'message' => "thanh cong",
        'result' => $result
    ];
} else {
    $arr = [
        'success' => false,
        'message' => "that bai",
        'result' => $result
    ];
}
print_r(json_encode($arr));
?>