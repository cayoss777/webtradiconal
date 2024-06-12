<?php
include 'conecion.php';
 if (isset($_GET['edi_id'])) {
  $edi_sql="select * from vendedor where id='$_GET[edi_id]'";
  $con_sql=mysqli_query($coneccion,$edi_sql);
   while ($row=mysqli_fetch_assoc($con_sql)) {
    $id=$row['id'];
    $vendedor=$row['vendedor'];
    $direccion=$row['direccion'];
    $fechaventa=$row['fechaventa'];
   }
 } else{
  $vendedor='';
  $direccion='';
  $fechaventa='';
 }
?>
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">


  <div class="container">
    <div class="p-3 mb-2 bg-success text-white">

        <form action="conexion_editar_procesar.php" method="post">
           <div class="form-group">
             <label >id</label>
             <input type="text" class="form-control" name="vendedor" 
             value="<?php echo $id;?>" placeholder="Ingrese Nombre" required>
            </div>
            <div class="form-group">
             <label >Nombre</label>
             <input type="text" class="form-control" name="vendedor" 
             value="<?php echo $vendedor;?>" placeholder="Ingrese Nombre" required>
            </div>
            <div class="form-group">
             <label >Dirección</label>
             <input type="text" class="form-control" name="direccion"
             value="<?php echo $direccion;?>" placeholder="Ingrese Dirección" required>
            </div>
            <div class="form-group">
             <label >Fecha Venta</label>
             <input type="text" class="form-control" name="fechaventa" 
             value="<?php echo $fechaventa;?>">
            </div>
          <button type="submit" class="btn btn-primary" name="submit_form">Submit</button>
        </form>

    </div>

  </div>