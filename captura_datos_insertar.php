<?php
include 'conecion.php';
if (isset($_POST['submit_form'])) {
 $id=$_POST['id'];
 $vendedor=$_POST['vendedor'];
 $direccion=$_POST['direccion'];
 $fechaventa=$_POST['fechaventa'];
 
 $sql="insert into vendedor(id,vendedor,direccion,fechaventa)
 values('$id','$vendedor','$direccion','$fechaventa')";
 $con_sql=mysqli_query($coneccion,$sql);
 header('Location:mostrar.php');
}
?>
