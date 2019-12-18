<?php
// Conexión con el servidor de base de datos y selección de la base de datos
$conexion = mysqli_connect("localhost", $usuario, $contrasenya);
 
if (!$conexion)
  exit('No se puede conectar:'. mysqli_error());
 
if(!mysqli_select_db($conexion, "practica2"))
  exit("Error al conectar con la base de datos". mysqli_error());
 
// Definimos la consulta que recuperará todos los datos de la tabla libros
$consulta="SELECT * FROM nino ORDER BY nombre_nino ASC ";
 
// Hacemos la consulta al servidor y obtenemos la respuesta
$resultado = mysqli_query($conexion, $consulta);
 
// Si tenemos resultados los mostraremos
if( mysqli_num_rows($resultado) > 0) {
 
  // Creamos una tabla para pasar los resultados
  echo "<table border = '1'>";
  echo "<tr>";
  echo "<td>id</td>";
  echo "<td>nombre</td>";
  echo "<td>apellido</td>";
  echo "<td>fecha de nacimiento</td>";
  echo "<td>fecha de bueno/td>";
  echo "</tr>";
 
  // Mientras haya resultados los agregamos a la tabla
  while($fila = mysqli_fetch_array($resultado)) {
 
  // Agregamos una fila y recuperamos los valores utilizando la matriz asociativa que guardamos en $fila en cada iteración
    echo "<tr>";
    echo "<td>".$fila['Id_nino']."</td>";
    echo "<td>".$fila['nombre_nino']."</td>";
    echo "<td>".$fila['apellido a']."</td>";
    echo "<td>".$fila['fechadeNacimiento_nino ']."</td>";
    echo "<td>".$fila['bueno ']."</td>";
    echo "</tr>";
  }
 
  // fin de la tabla
  echo "</table>";
} else {
  echo "No hay ningún resultado";
}




?>