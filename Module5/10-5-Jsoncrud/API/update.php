<?php
    include('connect.php');
 
    $id = $_POST['id'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    

    $result = "UPDATE student_details SET fname = '$fname',lname = '$lname',email = '$email' WHERE id= '$id'";

    if(mysqli_query($con,$result))
    {
        echo 'Record Updated Successfully';
    }
    else
    {
        echo 'Something went wrong';
    }
    
?>