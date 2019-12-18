<?php
include("cabecera.php");
 
$consulta = 'select * from usuarios where nombreUsuario="' . $_POST["nombre"] . '" and clave = "'. $_POST["clave"] . '"';
 
/* Conectamos al servidor */
$conexion = mysqli_connect($servidor, $usuarioBD, $claveBD);
 
if (!$conexion) {
  exit('No se puede conectar:'. mysqli_error());
}
 
if(!mysqli_select_db($conexion, $nombreBD))
  exit("Error al conectar con la base de datos". mysqli_error());
  
/* Hacemos la consulta */
if ($result = mysqli_query($conexion, $consulta)) {				
  /* Miramos cuántos registros ha devuelto la consulta */
  $afectados = mysqli_num_rows($result);		
 
  /* Existe un usuario con este nombre y contraseña */
  if($afectados!=0) {
    /* login correcto */
    echo '<div class="login">Login correcto </div>';
  } else {
    /* Login incorrecto */
    echo '<div class="login">Nombre o password incorrecto</div>';
  }
} else {			
  echo '<div class="login">Error al hacer la consulta </div>';
}
 
/* Cerramos la conexión */
mysqli_close($conexion);
	 
?>