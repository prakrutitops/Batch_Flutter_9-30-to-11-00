<?php

    include('connect.php');
    
    $sql = "select * from ipl_team";
    
    $r = mysqli_query($con,$sql); 
    $response=array();
    
    while($data = mysqli_fetch_array($r))
    {
        $value["id"]= $data["id"];
        $value["t_name"]= $data["t_name"];
        $value["t_logo"]= $data["t_logo"];
        $value["t_captain"]= $data["t_captain"];
    
        
        array_push($response,$value);
       
        
    }
   echo json_encode($response);
    
    mysqli_close($con);
    
    

?>