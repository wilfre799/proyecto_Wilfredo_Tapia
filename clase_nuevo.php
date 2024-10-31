<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");
$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <p> &nbsp;</p>
         <h1>INSERTAR CLASE</h1>";

$sql = $db->Prepare("SELECT CONCAT_WS(' ' ,ap, am, nombres)AS profesor, id_profesor
                     FROM profesores
                     WHERE estado = 'A'                        
                        ");
$rs = $db->GetAll($sql);
$sql = $db->Prepare("SELECT nom_cur, nivel, id_curso
                     FROM cursos
                     WHERE estado = 'A'                        
                        ");
$rs = $db->GetAll($sql);
 /*  if ($rs) {*/
        echo"<form action='clase_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Nombres Profesor</th>
                    <td>
                      <select name='id_profesor'>
                        <option value=''>--Seleccione--</option>";
                        foreach ($rs as $k => $fila) {
                        echo"<option value='".$fila['id_profesor']."'>".$fila['profesor']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";
             echo"<tr>
             <th>(*)Nombres Curso</th>
                    <td>
                      <select name='id_curso'>
                        <option value=''>--Seleccione--</option>";
                        foreach ($rs as $k => $fila) {
                        echo"<option value='".$fila['id_curso']."'>".$fila['nom_cur']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";
             echo"<tr>
                    <th><b>(*)Nombre clase</b></th>
                    <td><input type='date' name='nombre' size='10'></td>
                  </tr>
                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR CLASE'><br>
                      (*)Datos Obligatorios
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;     
    /*}*/

echo "</body>
      </html> ";

 ?>