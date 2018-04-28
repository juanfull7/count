<?php
if (@$_GET['eliminar']) {
    session_start();
    require '../conexion/conexion.php';
         #consulta para traer datos de plazo por id_plazo
    	$sql_update = "DELETE FROM numeraciones WHERE numeraciones.identificacion_usuario in(?) and numeraciones.id_numeracion in(?)";
            $statement_update = $pdo->prepare($sql_update);
           
        if($statement_update){
            $statement_update->execute(array($_SESSION['ident'],$_GET['eliminar']));
            echo "
              
              <script>
                  alert('numeracion eliminada');
                  location.href = ('numeracion.php');
              </script>
              
            ";
        }   
    }
?>