<?php
	session_start();
	require '../conexion/conexion.php';
	
	
	$identificacion_usuario =$_SESSION['ident'];
	
	
	
	// Variables recibidas por POST
	$nombreCont	      	= $_POST['nombreCont'];
	$nit        	        = $_POST['nit'];
	$direccionCont 	        = $_POST['direccionCont'];
	$ciudadCont 	        = $_POST['ciudadCont']; 
 	$celularCont 		= $_POST['celularCont'];
 	$telefCont		= $_POST['telefCont'];
 	$faxCont 		= $_POST['faxCont'];
 	$vendedor		= $_POST['vendedor'];
 	$listPrecios 		= $_POST['listPrecios'];
 	$plazo 			= $_POST['plazo'];
 	$observaciones 		= $_POST['observaciones'];
 	$tipoCliente 		= $_POST['tipoCliente'];
 	$tipoProveedor 		= $_POST['tipoProveedor'];
  	$incluirEstadoCuenta 	= $_POST['incluirEstadoCuenta'];
 	$emailCont		= $_POST['emailCont'];
 	$fechaRegistro		= date('y-m-d');
 	$horaRegistro		= date('H:i:s');
 	
 	#consulta para insertar datos de contacto en la tabla contactos.
    $conSql = "INSERT INTO clientes(
        identificacion_cliente,
        nombre_cliente,
        correo_cliente,
        direccion_cliente,
        telefono_cliente,
        
        identificacion_usuario,
        fax_cliente,
        celular_cliente,
        ciudad_cliente,
        observaciones_cliente
        ) VALUES(?,?,?,?,?,?,?,?,?,?)";
        $cta = $pdo->prepare($conSql);
    $cta->execute(array($nit,$nombreCont,$emailCont,$direccionCont,$telefCont,$identificacion_usuario,$faxCont,$celularCont,$ciudadCont,
        $observaciones));
    $cta->errorCode();
            if($cta){echo "<br>datos enviados a entradas."; 
             echo "
                <script>
                    alert('Factura Guardada Con Exito.');
window.location.href='contactos.php'                </script>";
}
    
    
?>