<?php require "../layouts/header.php" ?>
<?php require "../../config/config.php" ?>
<?php 

    if(!isset($_SESSION['adminname'])){
        
     echo "<script> window.location.href ='".ADMINURL."/admins/login-admins.php'; </script>";
        
    }

    if(isset($_GET['id'])){
      
      $id = $_GET['id'];

    //   $select = $conn->query("SELECT * FROM orders WHERE id='$id'");
    //   $select->execute();

    //   $orders = $select->fetch(PDO::FETCH_OBJ);
      
      
    if (isset($_POST['submit'])) {
      
        if(empty($_POST['status'])){
            
          echo "<script>alert('one or more inputs are empty');</script>";
        }
        
        else{
                
            $status = $_POST['status'];

            $update = $conn->prepare("UPDATE orders SET status = :status WHERE id='$id'");
            
            $update->execute([
                ":status" => $status,
               
            ]);

            echo "<script> window.location.href = '".ADMINURL."/orders-admins/show-orders.php'; </script>";
            
            }
                      
           
        }
    
      
    }

?>
<div class="row">
    <div class="col">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title mb-5 d-inline ">Update Order Status</h5>
                <form method="POST" action="update-orders.php?id=<?php echo $id;  ?>">

                    <div class="form-group mt-4">
                        <select name="status" class="form-control" id="exampleFormControlSelect1">
                            <option>--Select Order Status--</option>
                            <option value="In progress">In progress</option>
                            <option value="Delivered">Delivered</option>

                        </select>
                    </div>

                    <!-- Submit button -->
                    <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">Update</button>


                </form>

            </div>
        </div>
    </div>
</div>
<?php require "../layouts/footer.php" ?>