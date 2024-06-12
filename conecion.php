<?php
/*Variables de conección*/
$servidor='localhost';
$usuario='root';
$clave='';
$basedatos='ventas';

/*variable conección*/
$coneccion = mysqli_connect($servidor, $usuario, $clave, $basedatos);
 //echo "Conectado";
if($coneccion){
    echo "Bienvenido";
}
else{
 echo "Ud. No es usuario"; 
}
?>