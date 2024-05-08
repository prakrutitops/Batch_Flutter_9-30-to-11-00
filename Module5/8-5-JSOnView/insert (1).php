<?php

    include('connect.php');
    
    $name = $_POST["name"];
    $surname = $_POST["surname"];

    if($name=="" && $surname=="")
    {
        echo '0';
    }
    else
    {
        $sql ="insert into register (name,surname) values ('$name','$surname')";
        mysqli_query($con,$sql);
    }
    
    mysqli_close($con);

?>