<?php
include 'conecion.php';
if (isset($_GET['eli_id'])) {
 $eli_sql="delete from vendedor where id='$_GET[eli_id]'";
 $con_sql=mysqli_query($coneccion,$eli_sql);
}
include 'mostrar.php';
?>