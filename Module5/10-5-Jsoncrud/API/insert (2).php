<?php

    include('connect.php');
    
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    

    if($fname=="" && $lname=="" && $email=="")
    {
        echo '0';
    }
    else
    {
        $sql ="insert into student_details (fname,lname,email) values ('$fname','$lname','$email')";
        mysqli_query($con,$sql);
    }
    
    mysqli_close($con);

?>