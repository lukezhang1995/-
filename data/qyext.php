<?php
    header("Content-Type:application/json;charset=UTF-8");
    $starte=$_REQUEST['starte'];
    $conn = mysqli_connect('127.0.0.1','root','','qyer');
    $sql = "SET NAMES UTF8";
    mysqli_query($conn,$sql);

    //$start = 0;	//从哪一行开始读取
    $count = 8; //一次最多读取的行数

    $sql = "SELECT * FROM qyext LIMIT $starte,$count";
    $result = mysqli_query($conn,$sql);

    $output = [];
    while(($row=mysqli_fetch_assoc($result))!==null){
    	$output[] = $row;
    }

    echo json_encode($output);
?>