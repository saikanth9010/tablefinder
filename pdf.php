  <?php

?>
<!DOCTYPE html>
<html>
  <head>
    <title>Project Presentation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <style>
      .pdf-container {
        width: 100%;
        height: 100vh;
      }
      .pdf-container embed {
        width: 100%;
        height: 100%;
      }
      /* img{
        height: 100px;
        width: 200px;
        border: 100px;
      } */
      /* body {
        background-image: url("https://www.jccf.ca/wp-content/uploads/2022/01/shutterstock_1450069133.jpg");
        background-repeat: no-repeat;
        background-size: cover;
         opacity: 0.5; 
      } */
    </style>
  </head>
  <body>
  <nav class="navbar bg-body-tertiary">
  <div class="container">
    <a class="navbar-brand" href="#">
      <img src="https://www.jccf.ca/wp-content/uploads/2022/01/shutterstock_1450069133.jpg" alt="Bootstrap" width="200px" height="100px">
    </a>
    <h1 class="navbar-toggler center">Project Presentation</h1>
    <!-- <a class="d-flex" href="#">
      <img src="pdfs/logo1.jpeg" alt="Bootstrap" width="200px" height="100px">
    </a> -->
    <a class="d-flex" href="#">
      <img src="pdfs/logo5.jpeg" alt="" width="200px" height="1px">
    </a>
  </div>
  

</nav>

    <!-- <img src="https://www.jccf.ca/wp-content/uploads/2022/01/shutterstock_1450069133.jpg" alt="senecacollege" > -->
    <!-- <h1 class="navbar-toggler">Project Presentation</h1> -->
    <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/1technosome.pdf\' type=\'application/pdf\' />';">Technosome Summary</button>
    <!-- <br> -->
    <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/2whatif.pdf\' type=\'application/pdf\' />';">What If Summary</button>
    <!-- <br> -->
    <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/3Planeat.pdf\' type=\'application/pdf\' />';">Planeat Summary</button>
    <!-- <br> -->
    <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/4techdivas.pdf\' type=\'application/pdf\' />';">Tech Divas Summary</button>
    <!-- <br> -->
    <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/5Softwarechasers.pdf\' type=\'application/pdf\' />';">Sofware Chasers Summary</button>
    <!-- <br> -->
    <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/6Mechatrons.pdf\' type=\'application/pdf\' />';">Mechatrons Summary</button>
    <!-- <br> -->
    <!-- <h1>Mechatrons</h1> -->
     <button class="btn btn-success" onclick="document.querySelector('.pdf-container').innerHTML = '<embed src=\'./pdfs/7Mending.pdf\' type=\'application/pdf\' />';">Mending Minds summary</button>
    <div class="pdf-container"></div>
  </body>
</html>
