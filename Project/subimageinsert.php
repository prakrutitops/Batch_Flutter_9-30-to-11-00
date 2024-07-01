<?php 
 include('connect.php');

    $upload_path = 'Images/';

    $upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/API/" . $upload_path;
	
    $name = $_REQUEST['profile_pic'];
    $category_name = $_REQUEST['c_id'];

    $fileinfo = pathinfo($_FILES["profile_pic"]["name"]);

    $extension = $fileinfo["extension"];

    $random = 'image_' . rand(1000,9999);

    $file_url = $upload_url . $random . '.' . $extension;

    $file_path = $upload_path . $random . '.'. $extension; 
    
    $profile_pic = "https://topstech8.000webhostapp.com/Morning_Batch/API/";
    
    move_uploaded_file($_FILES["profile_pic"]["tmp_name"],$file_path);
    
    $category_name_int = (int)$category_name;
    
    $insert = "INSERT INTO Category_Images (c_id,c_images) VALUES ('$category_name_int','$profile_pic$file_path')";
    $result=mysqli_query($con,$insert);
?>