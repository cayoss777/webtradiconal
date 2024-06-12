<?php
include 'conecion.php';
?>
<!DOCTYPE html>
<html>
<head>
 <title></title>
 <script src="js/jquery.js"></script>
 <script src="js/bootstrap.js"></script>
 <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
 <div class="container">

  
    <?php
     if (isset($_GET['det_id'])) {
       $sql="select * from vendedor where id='$_GET[det_id]'";
       $con_sql=mysqli_query($coneccion,$sql);
      while ($rows=mysqli_fetch_assoc($con_sql)) {
       echo '
         <div class="jumbotron">
          <h1> Datos Detallados</h1>
          <p>Los datos enfocados en cada registro</p>
          <a href="editar.php?edi_id='.$rows['id'].'"
          class="btn btn-warning">Editar '.$rows['vendedor'].'</a>
         </div>
         <div class="row">
          <strong class="col-sm-3">Código</strong>
          <div class="col-sm-3">'.$rows['id'].'</div>
         </div>
         <div class="row">
          <strong class="col-sm-3">vendedor</strong>
          <div class="col-sm-3">'.$rows['vendedor'].'</div>
         </div>
         <div class="row">
          <strong class="col-sm-3">Dirección</strong>
          <div class="col-sm-3">'.$rows['direccion'].'</div>
         </div>
         <div class="row">
          <strong class="col-sm-3">Fecha Venta</strong>
          <div class="col-sm-3">'.$rows['fechaventa'].'</div>
         </div>
       ';
         
      } 
     }
    ?>
 </div>
</body>
</html>