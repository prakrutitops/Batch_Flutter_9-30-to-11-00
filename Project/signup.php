<?php

    include('connect.php');
    
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $mobile = $_POST["mobile"];
    $pass = $_POST["password"];    
    $hobbies = $_POST["hobbies"];    
    $gender = $_POST["gender"];    
    $city = $_POST["city"];    
    

    if($fname=="" && $lname=="" && $email=="" && $mobile=="" && $pass=="" && $hobbies=="" && $gender=="" && $city=="")
    {
        echo '0';
    }
    else
    {
        $sql ="insert into morning_register (fname,lname,email,mobile,password,hobbies,gender,city) values ('$fname','$lname','$email','$mobile','$pass','$hobbies','$gender','$city')";
        mysqli_query($con,$sql);
    }
    
    mysqli_close($con);

?>