
<?php
$fecha = strftime("%Y-%m-%d");
?>

  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<body>
  <div class="row">
  <div class="col-md-8"></div>
  <div class="col-md-4">
       <div class="container">
    <div class="p-3 mb-2 bg-success text-white">

        <form action="captura_datos_insertar.php" method="post">
          <div class="form-group">
            <label >Código</label>
            <input type="text" class="form-control" name="id" placeholder="Ingrese Código" required>
           <div class="form-group">
            <label >Nombre</label>
            <input type="text" class="form-control" name="vendedor" placeholder="Ingrese Nombre" required>
            </div>
             <div class="form-group">
            <label >Dirección</label>
            <input type="text" class="form-control" name="direccion" placeholder="Ingrese Dirección" required>
            </div>
             <div class="form-group">
            <label >Fecha Venta</label>
            <input type="text" class="form-control" name="fechaventa" value="<?php echo $fecha;?>">
            </div>
          <button type="submit" class="btn btn-primary" name="submit_form">SubmitEnviar</button>
        </form>

    </div>

  </div>
  </div>
</div>
</body>