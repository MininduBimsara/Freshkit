<?php

    // if(!isset($_SERVER['HTTP_REFERER'])){
    //     //redirect them to your location
    //     header('location: http://localhost/Freshcery/index.php');
    //     exit;
    // }

    try {
        //host
        if(!defined('HOST')) define("HOST", "localhost");

        //dbname
        if(!defined('DBNAME')) define("DBNAME" , "freshkit");

        //user
        if(!defined('USER')) define("USER" , "root");

        //password
        if(!defined('PASS')) define("PASS" , "");

        $conn = new PDO("mysql:host=".HOST.";dbname=".DBNAME.";", USER, PASS);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
    } 
    catch (PDOException $e) {
        echo($e->getMessage());
    }

    // if ($conn == true) {
    //    echo "connected Successfully";
    // }
    // else{
    //     echo "error";
    // }

?>