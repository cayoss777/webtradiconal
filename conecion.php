<?php
/*Variables de conección*/
$servidor='localhost';
$usuario='claudio';
$clave='huancahuire';
$basedatos='bd_ventas';

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