<?php include '../template/header.php'; ?>
<!-- <?php
session_start(); 
?> -->
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Daily UI #031 - File Upload</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,600|Varela+Round" rel="stylesheet"><link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.0.10/css/all.css'><link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="wrapper">
  <div class="container">
    <h1>Upload a file</h1>
    <div class="upload-container">
      <div class="border-container">
        <div class="icons fa-4x">
          <i class="fas fa-file-image" data-fa-transform="shrink-3 down-2 left-6 rotate--45"></i>
          <i class="fas fa-file-alt" data-fa-transform="shrink-2 up-4"></i>
          <i class="fas fa-file-pdf" data-fa-transform="shrink-3 down-2 right-6 rotate-45"></i>
        </div>
        <!--<input type="file" id="file-upload">-->
        <p>Drag and drop files here, or 
          <?php
    if (isset($_SESSION['message']) && $_SESSION['message'])
    {
      printf('<b>%s</b>', $_SESSION['message']);
      unset($_SESSION['message']);
    }
  ?>
  <form class="uploadbutton" method="POST" action="upload.php" enctype="multipart/form-data">
    <div>
      <span>Upload a File:</span>
      <input class="btn btn-primary mb-3" type="file" name="uploadedFile" />
    </div>

    <input class="uploadbutton" type="submit" name="uploadBtn" value="Upload" />
  </form>
      </div>
    </div>
  </div>
</div>
<!-- partial -->
  <script src='https://use.fontawesome.com/releases/v5.0.10/js/all.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script><script  src="./script.js"></script>

</body>
</html>
