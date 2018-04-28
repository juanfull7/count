<?php 
	if($_POST){
		session_start();
		require '../conexion/conexion.php';
        $sql_insert = "insert into numeraciones_generales(numeracion_resibo_caja, numeracion_comprobante_pago,numeracion_nota_credito,numeracion_remicion,    numeracion_cotizacion,numeracion_orden_compra,estado_registro,identificacion_usuario) values(?,?,?,?,?,?,?,?)";
            $statement_insert = $pdo->prepare($sql_insert);
            $statement_insert->execute(array($_POST['n_resibo_caja'],$_POST['n_comprobante_pago'],$_POST['n_nota_credito'],$_POST['n_remicion'],$_POST['n_cotizacion'],$_POST['n_orden_compra'],'activo',$_SESSION['ident']));
            
            if($statement_insert){
                echo "
                    <script>
                        alert('Numeracion General agregada');
                        location.href = ('numeracion.php');
                    </script>
                ";
            }
    }
?>