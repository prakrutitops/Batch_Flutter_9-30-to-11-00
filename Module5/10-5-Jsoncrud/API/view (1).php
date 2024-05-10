<?php

    include('connect.php');
    
    $sql = "select * from student_details";
    
    $r = mysqli_query($con,$sql); 
    $response=array();
    
    while($data = mysqli_fetch_array($r))
    {
        $value["id"]= $data["id"];
        $value["fname"]= $data["fname"];
        $value["lname"]= $data["lname"];
        $value["email"]= $data["email"];
    
        
        array_push($response,$value);
       
        
    }
   echo json_encode($response);
    
    mysqli_close($con);
    
    

?>