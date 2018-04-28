<?php 
	if($_POST){
		session_start();
		require '../conexion/conexion.php';
        $sql_insert = "insert into numeraciones(nombre_numeracion,preferida,estado,resolucion,prefijo,siguiente_numero,tipo,identificacion_usuario) values(?,?,?,?,?,?,?,?)";
            $statement_insert = $pdo->prepare($sql_insert);
            $statement_insert->execute(array($_POST['name'],$_POST['preferida'],'activo',$_POST['resolucion'],$_POST['prefijo'],$_POST['siguiente_numero'],'numeracion factura de venta',$_SESSION['ident']));
            
            if($statement_insert){
                echo "
                    <script>
                        alert('Numeracion de venta agregada');
                        location.href = ('numeracion.php');
                    </script>
                ";
            }
    }
?>