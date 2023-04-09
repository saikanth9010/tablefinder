<!-- signin.php -->
<?php include 'template/header.php'; ?>
  <body>
    
    <?php include 'template/nav-bar.php'; ?>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel" style="height: 400px;">
      <div class="slider-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-10 col-sm-12 ftco-animate text-center" style="padding-bottom: 25%;">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.php">Home</a></span> <span>checkin</span></p>
              <h1 class="mb-3">CheckIn</h1>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <span class="subheading">CheckIn</span>
            <h2>Check In Our Site</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 dish-menu">

            <div class="nav nav-pills justify-content-center ftco-animate" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link py-3 px-4 active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true"><span class="flaticon-meat"></span> Check IN</a>
              
            </div>

            <div class="tab-content py-5" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="row">
                  <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                    <div class="menus d-flex ftco-animate" style="background: white;">
	                    <div class="row" style="width: 100%">
					        <div class="col-md-12">
					            <form action="" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
					                <input type="email" name="email" class="form-control" required="" placeholder="Your Email">
					              </div>
					              <div class="form-group">
					                <input type="text" name="code" class="form-control" required="" placeholder="Please Ener the Code">
					              </div>
					              
					              <div class="form-group">
					                <input type="submit" value="checkin" name="checkin" class="btn btn-primary py-3 px-5">
					              </div>
					            </form>
                      <!-- <p class="text-center">For Register <a href="register.php">Click Here.</a> </p> -->
					        </div>
					    </div>
	                </div>
                  </div>
                </div>
              </div><!-- END -->

            </div>
          </div>
        </div>
      </div>
    </section>

    <?php include 'template/script.php'; ?>


    
  </body>
</html>



<?php 
  if (isset($_POST['checkin'])) {
    
    $email = $_POST['email'];
  $code = $_POST['code'];
//   $res_id = $_GET['res_id'];
  


  include 'dbCon.php';
  $con = connect();

  $emailSQL = "SELECT * FROM booking_details WHERE email = '$email';";

  $codeSQL = "SELECT * FROM booking_details WHERE email = '$email' And unique_code = '$code';";

  

//   $bookingSQL = "SELECT * FROM restaurant_info WHERE email = '$email' And code = '$code';";

  $emailResult = $con->query($emailSQL);

  $codeResult = $con->query($codeSQL);
  
  

  foreach ($codeResult as $x){
    $result1 = $x['Number_of_people'];
    $name1 = $x['name'];
    $res_id =$x['res_id'];
    $checkinstatus = $x['checkinstatus'];
  }
  
    $TabelSQL = "SELECT * FROM table_details WHERE res_id = '$res_id';";
    $TabelResult = $con->query($TabelSQL);
  
  foreach($TabelResult as $y){
    $booked = $y['booked'];
  }

  
  if($checkinstatus == 0 ){
    // if($booked == 0){
  foreach ($TabelResult as $r){
        // $bookingchair = $r['chairs'];
        // $booking_status = 1;
        // $tableid = $r['table_id'];
        // $sql2 ="UPDATE `table_details` SET `booked`='1' WHERE res_id = '$res_id' AND table_id = '$tableid'";
        // $con->query($sql2);
        // $sql1 = "INSERT INTO `waiting_list`(`name`, `booking_table`, `booking_status`,`unique_code`) VALUES ('$name1','$tableid','$booking_status','$code')";
        // $con->query($sql1);
        // $sql3 = "UPDATE `booking_details` SET `checkinstatus`='1' WHERE unique_code = '$code' AND email = '$email'";
        // $con->query($sql3);
        // break;
    if($result1 >= $r['chairs'] && $r['booked'] == 0){
        $bookingchair = $r['chairs'];
        $booking_status = 1;
        $tableid = $r['table_id'];
        $sql2 ="UPDATE `table_details` SET `booked`='1' WHERE res_id = '$res_id' AND table_id = '$tableid'";
        $con->query($sql2);
        $sql1 = "INSERT INTO `res_temp`(`name`, `booking_table`, `booking_status`) VALUES ('$name1','$tableid','$booking_status')";
        $con->query($sql1);
        $sql3 = "UPDATE `booking_details` SET `checkinstatus`='1' WHERE unique_code = '$code' AND email = '$email'";
        $con->query($sql3);
        // $sql4 = "DELETE FROM `waiting_list` WHERE name = '$name1' AND unique_code = '$code'";
        // $con->query($sql1);
        break;
    } 
    else {
      echo '<script>alert("You are in Waiting list\nPlease wait")</script>';
      echo '<script>window.location="checkin.php"</script>';
      break;
    }
    // else{
        
    // }
  }
// }
// else{
//   echo '<script>alert("You are in Waiting list\nPlease wait")</script>';
//       echo '<script>window.location="checkin.php"</script>';
// }
  }
else{
        ?>'<script>alert("You have already checkedin, your code is '<?php echo $code ?>' ")</script>';
        <?php echo '<script>window.location="index.php"</script>';
}
// break;
//   }
//   break;
// }

  

  if ($emailResult->num_rows <= 0) {
    echo '<script>alert("This Email Does Not Exist.")</script>';
    echo '<script>window.location="checkin.php"</script>';
  }else if ($codeResult->num_rows <= 0) {
    echo '<script>alert("This Code is Incorrect.")</script>';
    echo '<script>window.location="checkin.php"</script>';
  }else{

    echo '<script>alert("Your Seat will be alloted please check in the screen at restaurant\n please save your code")</script>';
  }

  }
?>

<script>
window.setTimeout( function() {
  window.location.reload();
}, 30000);
</script>