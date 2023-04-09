<?php include 'template/header.php'; ?>
  <body>
    
    <?php include 'template/nav-bar.php'; ?>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/bg_3.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Welcome to the Restaurant</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/bg_5.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Table Reservation</h1> 
              <?php 
                        include 'dbCon.php';
                        $con = connect();
                        $sql = "SELECT * FROM `res_temp`;";
                        $result = $con->query($sql);
                        foreach ($result as $r) {
                      ?>
                      <div style="display: flex; height: 100px;">
                      <p style="width: 30%;"><?php //echo $r['id']; ?></p> <p style="flex: 1;width: 30%;"> <?php echo $r['name']; ?></p>
                      <p style="flex: 2;width: 30%;"> <?php echo $r['booking_table']; ?></p>
                        </div>
                      <?php } ?>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/bg_3.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Have you Reached the Restaurant Please scan the below QR and drop your unique code</h1> 
              <a href="www.qr-code-generator.com/"  style="cursor:default; " rel="nofollow">
              <img style="display: block; margin-left: auto; margin-right: auto; width: 35%;" src="https://chart.googleapis.com/chart?cht=qr&chl=https%3A%2F%2Ftablefinder.srkontham.ops345.ca%2Fcheckin.php&chs=180x180&choe=UTF-8&chld=L|2"></a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END slider -->
    <!-- <div class="saikanth">
      <p>saikanth reddy name</p>

    </div> -->

  <?php include 'template/script.php'; ?>
  
  <script src="dashboard/assets/vendor/jquery/jquery.js"></script>
  <script src="dashboard/assets/vendor/select2/select2.js"></script>
  <script src="dashboard/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
    
  </body>
</html>
<script>
window.setTimeout( function() {
  window.location.reload();
}, 30000);
</script>