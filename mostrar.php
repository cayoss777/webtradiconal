
<?php
include 'conecion.php';
?>
<table class="table table-striped">
   <thead>
    <th> Id</th>
    <th> Vendedor</th>
    <th> Dirección</th>
    <th> Fecha Venta</th>
    <th> Acción</th>
   </thead>
   <tbody>
    <?php
     $sql="select * from vendedor";
     $con_sql=mysqli_query($coneccion,$sql);
      while ($rows=mysqli_fetch_array($con_sql)) {
       echo '
         <tr>
          <td>'.$rows['id'].'</td>
          <td>'.$rows['vendedor'].'</td>
          <td>'.$rows['direccion'].'</td>
          <td>'.$rows['fechaventa'].'</td>
          <td><a class="btn btn-danger btn-xs" href="eliminar.php?eli_id='.$rows['id'].'">Eliminar</td>
          <td><a class="btn btn-info btn-xs"  href="detalle_datos.php?det_id='.$rows['id'].'">Detalle</td>
         </tr>
       ';
      }
    ?>
   </tbody>
  </table>