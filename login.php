<?php
require "koneksi.php";
if($_SERVER['REQUEST_METHOD'] == "POST"){
    $response = array();
    $npm = $_POST['npm'];
    $password = ($_POST['password']);
    
    $cek = "SELECT * FROM gabungan WHERE npm='$npm' and password='$password'";
    $result = mysqli_fetch_array(mysqli_query($con, $cek));
    if(isset($result)){
        $response['value'] = 1;
        $response['message'] = 'Login Berhasil';
        echo json_encode($response);
    } else{
            $response['value'] = 0;
            $response['message'] = "login gagal";
            echo json_encode($response);
        }
    }
?>