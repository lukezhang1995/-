<?php
    header("Content-Type:application/json;charset=UTF-8");
    //  获得startde 开始下标
    $startf=$_REQUEST['startf'];
    $conn = mysqli_connect('127.0.0.1','root','','qyer');
    $sql = "SET NAMES UTF8";
    mysqli_query($conn,$sql);

    $count = 6; //一次最多读取的行数

    $sql = "SELECT * FROM fqyer LIMIT $startf,$count";
    $result = mysqli_query($conn,$sql);

    $output = [];
    while(($row=mysqli_fetch_assoc($result))!==null){
    	$output[] = $row;
    }

    echo json_encode($output);
?>
