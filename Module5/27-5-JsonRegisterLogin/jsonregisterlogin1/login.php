<?php
    include('connect.php');

    $email=$_REQUEST["email"];
    $pass=$_REQUEST["password"];
   

    $select="select * from register where email='$email' and password='$pass'";
    $result=mysqli_query($con,$select);

    $num=mysqli_num_rows($result);

    if($num>0)
    {
        $fetch=mysqli_fetch_object($result);
        echo json_encode(['code'=>200]);
    }
    else
    {
        echo "0";
    }
?>