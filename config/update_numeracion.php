<?php
    if ($_GET['actualizado']) {
     
    session_start();
    require '../conexion/conexion.php';
         #consulta para traer datos de plazo por id_plazo
    	$sql_update = "UPDATE numeraciones SET nombre_numeracion='$_POST[nombre]',preferida='$_POST[preferida]',resolucion='$_POST[resolucion]',prefijo='$_POST[prefijo]',siguiente_numero='$_POST[siguiente]' WHERE numeraciones.identificacion_usuario=$_SESSION[ident] and numeraciones.id_numeracion=$_POST[id]";
            $statement_update = $pdo->prepare($sql_update);
            $statement_update->execute(array());
        if($statement_update){
            echo "
                <script>
                    alert('numeracion actualizada');
                    location.href = ('numeracion.php');
                </script>

            ";
        }  
           
    } 
    
?>