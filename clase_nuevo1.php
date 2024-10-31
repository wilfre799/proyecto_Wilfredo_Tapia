<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$id_empleado = $_POST["id_empleado"];
$id_cliente = $_POST["id_cliente"];
$fec_venta = $_POST["fec_venta"];
$monto_venta = $_POST["monto_venta"];
//$hash=password_hash($clave, PASSWORD_DEFAULT);

if(($id_empleado!="") and ($id_cliente!="") and  ($fec_venta!="") and ($monto_venta!="")){
   $reg = array();
   $reg["id_restaurante"] = 1;
   $reg["id_empleado"] = $id_empleado;
   $reg["id_cliente"] = $id_cliente;
   $reg["fec_venta"] = $fec_venta;
   $reg["monto_venta"] = $monto_venta;
   $reg["fec_insercion"] = date("Y-m-d H:i:s");
   $reg["estado"] = 'A';
   $reg["usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("platos", $reg, "INSERT"); 
   header("Location: ventas.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DEL PLATO";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='venta_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 