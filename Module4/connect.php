<?php
    
    define('HOST','localhost');
    define('DB','id21811336_demo');
    define('USER','id21811336_dhvani');
    define('PASS','Tops@123456');
    
    $con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');
    
    if($con)
    {
        echo 'connected';
    }
    else
    {
        echo 'disconnected';
    }

?>