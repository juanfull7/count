<?php
if (@$_GET['actualizado']) {
    session_start();
    require '../conexion/conexion.php';
         #consulta para traer datos de plazo por id_plazo
    	$sql_update = "UPDATE plazos SET nombre_plazo='$_POST[nombre]',dias_plazo='$_POST[dias]' WHERE plazos.identificacion_usuario in(?) and plazos.id_plazo in(?)";
            $statement_update = $pdo->prepare($sql_update);
            $statement_update->execute(array($_SESSION['ident'],$_POST['id']));
        if($statement_update){
            echo "
                <script>
                    alert('plazo actualizado');
                    location.href = ('terminos.php');
                </script>

            ";
        }   
    }
?>