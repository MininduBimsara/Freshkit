<?php 

    if(!isset($_SERVER['HTTP_REFERER'])){
        //redirect them to your location
        header('location: http://localhost/Freshcery/index.php');
        exit;
    }

?>
<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>

<?php


    if(!isset($_SESSION['username'])){
        
     echo "<script> window.location.href ='".APPURL."'; </script>";
        
    }


    if(isset($_SESSION['user_id'])){
        $delete = $conn->prepare("DELETE FROM cart WHERE user_id = '$_SESSION[user_id]'");
        $delete->execute();
    }


?>


<div class="banner">
    <div class="jumbotron jumbotron-bg text-center rounded-0"
        style="background-image: url('<?php echo APPURL; ?>/assets/img/bg-header.jpg');">
        <div class="container">
            <h1 class="pt-5">
                Payment has been a success
            </h1>
            <p class="lead">
                Save time and leave the groceries to us.
            </p>
            <a href="<?php echo APPURL; ?>" class="btn btn-primary text-uppercase">Home</a>


        </div>
    </div>
</div>

<?php require "../includes/footer.php"; ?>